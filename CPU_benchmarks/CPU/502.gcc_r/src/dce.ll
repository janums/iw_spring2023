; ModuleID = 'dce.bc'
source_filename = "dce.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.VEC_rtx_heap = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type opaque
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
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
%struct.VEC_eh_region_gc = type { %struct.VEC_eh_region_base }
%struct.VEC_eh_region_base = type { i32, i32, [1 x %struct.eh_region_d*] }
%struct.VEC_eh_landing_pad_gc = type { %struct.VEC_eh_landing_pad_base }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x %struct.eh_landing_pad_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%union.eh_status_u = type { %struct.VEC_tree_gc* }
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.df_ref_info = type { %union.df_ref_d**, i32*, i32*, i32, i32, i32, i32 }
%union.df_ref_d = type { %struct.df_extract_ref }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, %struct.rtx_def** }
%struct.df_base_ref = type { i32, %struct.rtx_def*, %struct.df_link*, %struct.df_insn_info*, %union.df_ref_d*, %union.df_ref_d*, i32, i32, i32 }
%struct.df_link = type { %union.df_ref_d*, %struct.df_link* }
%struct.df_insn_info = type { %struct.rtx_def*, %union.df_ref_d**, %union.df_ref_d**, %union.df_ref_d**, %struct.df_mw_hardreg**, i32 }
%struct.df_mw_hardreg = type { %struct.rtx_def*, i32, i32, i32, i32 }
%struct.df_reg_info = type { %union.df_ref_d*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.df_scan_bb_info = type { %union.df_ref_d**, %union.df_ref_d** }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.df_byte_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"ud dce\00", align 1
@pass_ud_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_ud_dce, i32 ()* @rest_of_handle_ud_dce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8, !dbg !0
@flag_dce = external dso_local local_unnamed_addr global i32, align 4
@df_in_progress = internal unnamed_addr global i1 false, align 1, !dbg !2016
@.str.1 = private unnamed_addr constant [8 x i8] c"rtl dce\00", align 1
@pass_fast_rtl_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_fast_dce, i32 ()* @rest_of_handle_fast_dce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8, !dbg !1966
@.str.2 = private unnamed_addr constant [9 x i8] c"byte-dce\00", align 1
@pass_fast_rtl_byte_dce = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_fast_dce, i32 ()* @rest_of_handle_fast_byte_dce, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 122, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8, !dbg !1994
@optimize = external dso_local local_unnamed_addr global i32, align 4
@worklist = internal global %struct.VEC_rtx_heap* null, align 8, !dbg !2012
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dce_blocks_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !1996
@dce_tmp_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !1998
@marked = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !2000
@.str.3 = private unnamed_addr constant [30 x i8] c"Finding needed instructions:\0A\00", align 1
@target_flags = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Finished finding needed instructions:\0A\00", align 1
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dce.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@.str.7 = private unnamed_addr constant [30 x i8] c"  Adding insn %d to worklist\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Processing use of \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" in insn %d:\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"DCE: Deleting insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"processing block %d live out = \00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"finished processing insn %d live out = \00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"processing block %d lr out = \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2035, metadata !DIExpression()), !dbg !2036
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2037
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2038
  ret i32 %call, !dbg !2039
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2040 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2044
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2045
  ret i32 %call, !dbg !2046
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2101, metadata !DIExpression()), !dbg !2102
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2103
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2103
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2103
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2103
  %cmp = icmp uge i8* %0, %1, !dbg !2103
  %conv1 = zext i1 %cmp to i64, !dbg !2103
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2103
  %tobool = icmp eq i64 %expval, 0, !dbg !2103
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2103

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2103
  br label %cond.end, !dbg !2103

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2103
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2103
  %2 = load i8, i8* %0, align 1, !dbg !2103
  %conv3 = zext i8 %2 to i32, !dbg !2103
  br label %cond.end, !dbg !2103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2103
  ret i32 %cond, !dbg !2104
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2107, metadata !DIExpression()), !dbg !2108
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2109
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2109
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2109
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2109
  %cmp = icmp uge i8* %0, %1, !dbg !2109
  %conv1 = zext i1 %cmp to i64, !dbg !2109
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2109
  %tobool = icmp eq i64 %expval, 0, !dbg !2109
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2109

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2109
  br label %cond.end, !dbg !2109

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2109
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2109
  %2 = load i8, i8* %0, align 1, !dbg !2109
  %conv3 = zext i8 %2 to i32, !dbg !2109
  br label %cond.end, !dbg !2109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2109
  ret i32 %cond, !dbg !2110
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2111 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2112
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2112
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2112
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2112
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2112
  %cmp = icmp uge i8* %1, %2, !dbg !2112
  %conv1 = zext i1 %cmp to i64, !dbg !2112
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2112
  %tobool = icmp eq i64 %expval, 0, !dbg !2112
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2112

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2112
  br label %cond.end, !dbg !2112

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2112
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2112
  %3 = load i8, i8* %1, align 1, !dbg !2112
  %conv3 = zext i8 %3 to i32, !dbg !2112
  br label %cond.end, !dbg !2112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2112
  ret i32 %cond, !dbg !2113
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2114 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2118, metadata !DIExpression()), !dbg !2119
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2120
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2121
  ret i32 %call, !dbg !2122
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2128, metadata !DIExpression()), !dbg !2129
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2130
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2130
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2130
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2130
  %cmp = icmp uge i8* %0, %1, !dbg !2130
  %conv1 = zext i1 %cmp to i64, !dbg !2130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2130
  %tobool = icmp eq i64 %expval, 0, !dbg !2130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2130

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2130
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2130
  br label %cond.end, !dbg !2130

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2130
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2130
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2130
  store i8 %conv2, i8* %0, align 1, !dbg !2130
  %conv6 = and i32 %__c, 255, !dbg !2130
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2135, metadata !DIExpression()), !dbg !2136
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2137
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2137
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2137
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2137
  %cmp = icmp uge i8* %0, %1, !dbg !2137
  %conv1 = zext i1 %cmp to i64, !dbg !2137
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2137
  %tobool = icmp eq i64 %expval, 0, !dbg !2137
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2137

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2137
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2137
  br label %cond.end, !dbg !2137

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2137
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2137
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2137
  store i8 %conv2, i8* %0, align 1, !dbg !2137
  %conv6 = and i32 %__c, 255, !dbg !2137
  br label %cond.end, !dbg !2137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2137
  ret i32 %cond, !dbg !2138
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2141, metadata !DIExpression()), !dbg !2142
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2143
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2143
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2143
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2143
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2143
  %cmp = icmp uge i8* %1, %2, !dbg !2143
  %conv1 = zext i1 %cmp to i64, !dbg !2143
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2143
  %tobool = icmp eq i64 %expval, 0, !dbg !2143
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2143

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2143
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2143
  br label %cond.end, !dbg !2143

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2143
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2143
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2143
  store i8 %conv4, i8* %1, align 1, !dbg !2143
  %conv6 = and i32 %__c, 255, !dbg !2143
  br label %cond.end, !dbg !2143

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2143
  ret i32 %cond, !dbg !2144
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2145 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2153, metadata !DIExpression()), !dbg !2154
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2155
  ret i64 %call, !dbg !2156
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2159, metadata !DIExpression()), !dbg !2160
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2161
  %0 = load i32, i32* %_flags, align 8, !dbg !2161
  %and = lshr i32 %0, 4, !dbg !2161
  %and.lobit = and i32 %and, 1, !dbg !2161
  ret i32 %and.lobit, !dbg !2162
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2163 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2165, metadata !DIExpression()), !dbg !2166
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2167
  %0 = load i32, i32* %_flags, align 8, !dbg !2167
  %and = lshr i32 %0, 5, !dbg !2167
  %and.lobit = and i32 %and, 1, !dbg !2167
  ret i32 %and.lobit, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2172, metadata !DIExpression()), !dbg !2173
  %__c.off = add i32 %__c, 128, !dbg !2174
  %0 = icmp ult i32 %__c.off, 384, !dbg !2174
  br i1 %0, label %cond.true, label %cond.end, !dbg !2174

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2175
  %1 = load i32*, i32** %call, align 8, !dbg !2176
  %idxprom = sext i32 %__c to i64, !dbg !2177
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2177
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2177
  br label %cond.end, !dbg !2178

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2178
  ret i32 %cond, !dbg !2179
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2182, metadata !DIExpression()), !dbg !2183
  %__c.off = add i32 %__c, 128, !dbg !2184
  %0 = icmp ult i32 %__c.off, 384, !dbg !2184
  br i1 %0, label %cond.true, label %cond.end, !dbg !2184

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2185
  %1 = load i32*, i32** %call, align 8, !dbg !2186
  %idxprom = sext i32 %__c to i64, !dbg !2187
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2187
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2187
  br label %cond.end, !dbg !2188

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2188
  ret i32 %cond, !dbg !2189
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2195, metadata !DIExpression()), !dbg !2196
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2197
  %conv = trunc i64 %call to i32, !dbg !2198
  ret i32 %conv, !dbg !2199
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2204, metadata !DIExpression()), !dbg !2205
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2206
  ret i64 %call, !dbg !2207
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2213, metadata !DIExpression()), !dbg !2214
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2215
  ret i64 %call, !dbg !2216
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2217 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2223, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2224, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2225, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2226, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2227, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 0, metadata !2228, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2229, metadata !DIExpression()), !dbg !2233
  br label %while.cond, !dbg !2234

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2235
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2229, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2228, metadata !DIExpression()), !dbg !2233
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2236
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2234

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2237
  %div = lshr i64 %add, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %div, metadata !2230, metadata !DIExpression()), !dbg !2233
  %mul = mul i64 %div, %__size, !dbg !2240
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2231, metadata !DIExpression()), !dbg !2233
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %call, metadata !2232, metadata !DIExpression()), !dbg !2233
  %cmp1 = icmp slt i32 %call, 0, !dbg !2243
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2245

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2246
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2248

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2228, metadata !DIExpression()), !dbg !2233
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2233
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2229, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2228, metadata !DIExpression()), !dbg !2233
  br label %while.cond, !dbg !2234, !llvm.loop !2250

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2233
  ret i8* %retval.0, !dbg !2252
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2261
  ret double %call, !dbg !2262
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 %base, metadata !2274, metadata !DIExpression()), !dbg !2275
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2276
  ret i64 %call, !dbg !2277
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2284, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2285, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %base, metadata !2286, metadata !DIExpression()), !dbg !2287
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2288
  ret i64 %call, !dbg !2289
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2290 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2302, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %base, metadata !2303, metadata !DIExpression()), !dbg !2304
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2305
  ret i64 %call, !dbg !2306
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %base, metadata !2313, metadata !DIExpression()), !dbg !2314
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2315
  ret i64 %call, !dbg !2316
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2317 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2358, metadata !DIExpression()), !dbg !2359
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2360
  ret i32 %call, !dbg !2361
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2362 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2365, metadata !DIExpression()), !dbg !2366
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2367
  ret i32 %call, !dbg !2368
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2369 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2376
  ret i32 %call, !dbg !2377
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2378 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2382, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2385, metadata !DIExpression()), !dbg !2386
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2387
  ret i32 %call, !dbg !2388
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2389 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2393, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2395, metadata !DIExpression(DW_OP_deref)), !dbg !2396
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2397
  ret i32 %call, !dbg !2398
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2399 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2407
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2408
  ret i32 %call, !dbg !2409
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2410 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2435, metadata !DIExpression()), !dbg !2436
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2437
  ret i32 %call, !dbg !2438
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2439 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2442, metadata !DIExpression()), !dbg !2443
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2444
  ret i32 %call, !dbg !2445
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2446 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2451, metadata !DIExpression()), !dbg !2452
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2453
  ret i32 %call, !dbg !2454
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2455 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2459, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2462, metadata !DIExpression()), !dbg !2463
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2464
  ret i32 %call, !dbg !2465
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_ud_dce() #4 !dbg !2466 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2467
  %cmp = icmp sgt i32 %0, 1, !dbg !2468
  %1 = load i32, i32* @flag_dce, align 4, !dbg !2469
  %tobool = icmp ne i32 %1, 0, !dbg !2469
  %or.cond = and i1 %cmp, %tobool, !dbg !2470
  br i1 %or.cond, label %land.rhs, label %land.end, !dbg !2470

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i8 @dbg_cnt(i32 7) #6, !dbg !2471
  %tobool1 = icmp ne i8 %call, 0, !dbg !2472
  %phitmp = zext i1 %tobool1 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !2473
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_ud_dce() #4 !dbg !2474 {
entry:
  tail call fastcc void @init_dce(i8 zeroext 0) #7, !dbg !2477
  tail call fastcc void @prescan_insns_for_dce(i8 zeroext 0) #7, !dbg !2478
  tail call fastcc void @mark_artificial_uses() #7, !dbg !2479
  br label %while.cond, !dbg !2480

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !2481
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %0, i64 0, i32 0, !dbg !2481
  %call = tail call fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %base) #7, !dbg !2481
  %cmp = icmp eq i32 %call, 0, !dbg !2482
  br i1 %cmp, label %while.end, label %while.body, !dbg !2480

while.body:                                       ; preds = %while.cond
  %1 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !2483
  %base3 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %1, i64 0, i32 0, !dbg !2483
  %call7 = tail call fastcc %struct.rtx_def* @VEC_rtx_base_pop(%struct.VEC_rtx_base* %base3) #7, !dbg !2483
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call7, metadata !2476, metadata !DIExpression()), !dbg !2485
  tail call fastcc void @mark_reg_dependencies(%struct.rtx_def* %call7) #7, !dbg !2486
  br label %while.cond, !dbg !2480, !llvm.loop !2487

while.end:                                        ; preds = %while.cond
  tail call fastcc void @VEC_rtx_heap_free(%struct.VEC_rtx_heap** nonnull @worklist) #7, !dbg !2489
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !2490
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 1, i64 4, !dbg !2490
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2490
  tail call void @df_remove_problem(%struct.dataflow* %3) #6, !dbg !2491
  tail call fastcc void @delete_unmarked_insns() #7, !dbg !2492
  tail call fastcc void @fini_dce(i8 zeroext 0) #7, !dbg !2493
  ret i32 0, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local void @run_fast_df_dce() local_unnamed_addr #4 !dbg !2495 {
entry:
  %0 = load i32, i32* @flag_dce, align 4, !dbg !2502
  %tobool = icmp eq i32 %0, 0, !dbg !2502
  br i1 %tobool, label %if.end, label %if.then, !dbg !2503

if.then:                                          ; preds = %entry
  %call = tail call i32 @df_clear_flags(i32 48) #6, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %call, metadata !2499, metadata !DIExpression()), !dbg !2505
  store i1 true, i1* @df_in_progress, align 1, !dbg !2506
  %call1 = tail call i32 @rest_of_handle_fast_dce() #7, !dbg !2507
  store i1 false, i1* @df_in_progress, align 1, !dbg !2508
  %call2 = tail call i32 @df_set_flags(i32 %call) #6, !dbg !2509
  br label %if.end, !dbg !2510

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2511
}

declare dso_local i32 @df_clear_flags(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_fast_dce() #4 !dbg !2512 {
entry:
  tail call fastcc void @init_dce(i8 zeroext 1) #7, !dbg !2513
  tail call fastcc void @fast_dce(i8 zeroext 0) #7, !dbg !2514
  tail call fastcc void @fini_dce(i8 zeroext 1) #7, !dbg !2515
  ret i32 0, !dbg !2516
}

declare dso_local i32 @df_set_flags(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @run_fast_dce() local_unnamed_addr #4 !dbg !2517 {
entry:
  %0 = load i32, i32* @flag_dce, align 4, !dbg !2518
  %tobool = icmp eq i32 %0, 0, !dbg !2518
  br i1 %tobool, label %if.end, label %if.then, !dbg !2520

if.then:                                          ; preds = %entry
  %call = tail call i32 @rest_of_handle_fast_dce() #7, !dbg !2521
  br label %if.end, !dbg !2521

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2522
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_fast_dce() #4 !dbg !2523 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2524
  %cmp = icmp sgt i32 %0, 0, !dbg !2525
  %1 = load i32, i32* @flag_dce, align 4, !dbg !2526
  %tobool = icmp ne i32 %1, 0, !dbg !2526
  %or.cond = and i1 %cmp, %tobool, !dbg !2527
  br i1 %or.cond, label %land.rhs, label %land.end, !dbg !2527

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i8 @dbg_cnt(i32 6) #6, !dbg !2528
  %tobool1 = icmp ne i8 %call, 0, !dbg !2529
  %phitmp = zext i1 %tobool1 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !2530
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_fast_byte_dce() #4 !dbg !2531 {
entry:
  tail call void @df_byte_lr_add_problem() #6, !dbg !2532
  tail call fastcc void @init_dce(i8 zeroext 1) #7, !dbg !2533
  tail call fastcc void @fast_dce(i8 zeroext 1) #7, !dbg !2534
  tail call fastcc void @fini_dce(i8 zeroext 1) #7, !dbg !2535
  ret i32 0, !dbg !2536
}

declare dso_local zeroext i8 @dbg_cnt(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_dce(i8 zeroext %fast) unnamed_addr #4 !dbg !2537 {
entry:
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2541, metadata !DIExpression()), !dbg !2542
  %.b = load i1, i1* @df_in_progress, align 1, !dbg !2543
  br i1 %.b, label %if.end3, label %if.then, !dbg !2545

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8 %fast, 0, !dbg !2546
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2549

if.then2:                                         ; preds = %if.then
  tail call void @df_chain_add_problem(i32 2) #6, !dbg !2550
  br label %if.end, !dbg !2550

if.end:                                           ; preds = %if.then, %if.then2
  tail call void @df_analyze() #6, !dbg !2551
  br label %if.end3, !dbg !2552

if.end3:                                          ; preds = %entry, %if.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2553
  %tobool4 = icmp eq %struct._IO_FILE* %0, null, !dbg !2553
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2555

if.then5:                                         ; preds = %if.end3
  tail call void @df_dump(%struct._IO_FILE* nonnull %0) #6, !dbg !2556
  br label %if.end6, !dbg !2556

if.end6:                                          ; preds = %if.end3, %if.then5
  %tobool7 = icmp eq i8 %fast, 0, !dbg !2557
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2559

if.then8:                                         ; preds = %if.end6
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @dce_blocks_bitmap_obstack) #6, !dbg !2560
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @dce_tmp_bitmap_obstack) #6, !dbg !2562
  br label %if.end9, !dbg !2563

if.end9:                                          ; preds = %if.end6, %if.then8
  %call = tail call i32 @get_max_uid() #6, !dbg !2564
  %add = add nsw i32 %call, 1, !dbg !2565
  %call10 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !2566
  store %struct.simple_bitmap_def* %call10, %struct.simple_bitmap_def** @marked, align 8, !dbg !2567
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call10) #6, !dbg !2568
  ret void, !dbg !2569
}

; Function Attrs: nounwind uwtable
define internal fastcc void @prescan_insns_for_dce(i8 zeroext %fast) unnamed_addr #4 !dbg !2570 {
entry:
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2572, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2576, metadata !DIExpression()), !dbg !2577
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2578
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2578
  br i1 %tobool, label %if.end, label %if.then, !dbg !2580

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2581
  br label %if.end, !dbg !2581

if.end:                                           ; preds = %entry, %if.then
  %.b = load i1, i1* @df_in_progress, align 1, !dbg !2582
  br i1 %.b, label %if.end6, label %land.lhs.true, !dbg !2584

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, i32* @target_flags, align 4, !dbg !2585
  %and = and i32 %1, 4, !dbg !2585
  %cmp = icmp eq i32 %and, 0, !dbg !2585
  br i1 %cmp, label %lor.lhs.false, label %if.then4, !dbg !2585

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @ix86_cfun_abi() #6, !dbg !2585
  %cmp3 = icmp eq i32 %call2, 1, !dbg !2585
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2586

if.then4:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call5 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call5, metadata !2576, metadata !DIExpression()), !dbg !2577
  br label %if.end6, !dbg !2588

if.end6:                                          ; preds = %if.end, %if.then4, %lor.lhs.false
  %arg_stores.0 = phi %struct.bitmap_head_def* [ null, %if.end ], [ %call5, %if.then4 ], [ null, %lor.lhs.false ], !dbg !2577
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %arg_stores.0, metadata !2576, metadata !DIExpression()), !dbg !2577
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2589
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2589
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2589
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2589
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2589
  %tobool35 = icmp eq %struct.bitmap_head_def* %arg_stores.0, null, !dbg !2591
  br label %for.cond, !dbg !2589

for.cond:                                         ; preds = %for.inc65, %if.end6
  %5 = phi %struct.control_flow_graph* [ %3, %if.end6 ], [ %.pre1, %for.inc65 ], !dbg !2599
  %.pn = phi %struct.basic_block_def* [ %4, %if.end6 ], [ %bb.0, %for.inc65 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2600
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2600
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2573, metadata !DIExpression()), !dbg !2577
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2599
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2599
  %cmp9 = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2599
  br i1 %cmp9, label %for.end67, label %for.body, !dbg !2589

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2601
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2601
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2601
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !2601
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !2574, metadata !DIExpression()), !dbg !2577
  %tobool10 = icmp eq %struct.rtx_def* %8, null, !dbg !2601
  br i1 %tobool10, label %cond.end, label %cond.true, !dbg !2601

cond.true:                                        ; preds = %for.body
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2601
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2601
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2601
  br label %cond.end, !dbg !2601

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.rtx_def* [ %10, %cond.true ], [ null, %for.body ], !dbg !2601
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2575, metadata !DIExpression()), !dbg !2577
  br i1 %tobool35, label %cond.end.split.us, label %cond.end.cond.end.split_crit_edge, !dbg !2601

cond.end.cond.end.split_crit_edge:                ; preds = %cond.end
  br label %for.cond11, !dbg !2601

cond.end.split.us:                                ; preds = %cond.end
  br label %for.cond11.us, !dbg !2601

for.cond11.us:                                    ; preds = %cond.end60.us, %cond.end.split.us
  %prev.0.us = phi %struct.rtx_def* [ %cond, %cond.end.split.us ], [ %cond61.us, %cond.end60.us ], !dbg !2602
  %insn.0.us = phi %struct.rtx_def* [ %8, %cond.end.split.us ], [ %prev.0.us, %cond.end60.us ], !dbg !2602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0.us, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0.us, metadata !2575, metadata !DIExpression()), !dbg !2577
  %tobool12.us = icmp eq %struct.rtx_def* %insn.0.us, null, !dbg !2603
  br i1 %tobool12.us, label %for.end.us-lcssa.us, label %land.rhs.us, !dbg !2603

land.rhs.us:                                      ; preds = %for.cond11.us
  %11 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2603
  %head_.us = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 0, !dbg !2603
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head_.us, align 8, !dbg !2603
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2603
  %rt_rtx18.us = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !2603
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx18.us, align 8, !dbg !2603
  %cmp19.us = icmp eq %struct.rtx_def* %insn.0.us, %14, !dbg !2603
  br i1 %cmp19.us, label %for.end.us-lcssa.us, label %for.body20.us, !dbg !2601

for.body20.us:                                    ; preds = %land.rhs.us
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0.us, i64 0, i32 0, !dbg !2604
  %bf.load.us = load i32, i32* %15, align 8, !dbg !2604
  %bf.clear.us = and i32 %bf.load.us, 65535, !dbg !2604
  %cmp21.us = icmp eq i32 %bf.clear.us, 8, !dbg !2604
  br i1 %cmp21.us, label %if.then34.us, label %lor.lhs.false22.us, !dbg !2604

lor.lhs.false22.us:                               ; preds = %for.body20.us
  %cmp25.us = icmp eq i32 %bf.clear.us, 7, !dbg !2604
  br i1 %cmp25.us, label %if.then34.us, label %lor.lhs.false26.us, !dbg !2604

lor.lhs.false26.us:                               ; preds = %lor.lhs.false22.us
  %cmp29.us = icmp eq i32 %bf.clear.us, 9, !dbg !2604
  br i1 %cmp29.us, label %if.then34.us, label %lor.lhs.false30.us, !dbg !2604

lor.lhs.false30.us:                               ; preds = %lor.lhs.false26.us
  %cmp33.us = icmp eq i32 %bf.clear.us, 10, !dbg !2604
  br i1 %cmp33.us, label %if.then34.us, label %for.inc.us, !dbg !2605

if.then34.us:                                     ; preds = %lor.lhs.false30.us, %lor.lhs.false26.us, %lor.lhs.false22.us, %for.body20.us
  %call44.us = tail call fastcc zeroext i8 @deletable_insn_p(%struct.rtx_def* nonnull %insn.0.us, i8 zeroext %fast, %struct.bitmap_head_def* null) #7, !dbg !2606
  %tobool45.us = icmp eq i8 %call44.us, 0, !dbg !2606
  br i1 %tobool45.us, label %if.else.us, label %if.then46.us, !dbg !2608

if.then46.us:                                     ; preds = %if.then34.us
  %u47.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0.us, i64 0, i32 1, !dbg !2609
  %16 = getelementptr inbounds %union.u, %union.u* %u47.us, i64 1, i32 0, i32 0, i64 0, !dbg !2609
  %rt_rtx50.us = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !2609
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50.us, align 8, !dbg !2609
  tail call fastcc void @mark_nonreg_stores(%struct.rtx_def* %17, %struct.rtx_def* nonnull %insn.0.us, i8 zeroext %fast) #7, !dbg !2610
  br label %for.inc.us, !dbg !2610

if.else.us:                                       ; preds = %if.then34.us
  tail call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0.us, i8 zeroext %fast) #7, !dbg !2611
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.else.us, %if.then46.us, %lor.lhs.false30.us
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0.us, metadata !2574, metadata !DIExpression()), !dbg !2577
  %tobool53.us = icmp eq %struct.rtx_def* %prev.0.us, null, !dbg !2603
  br i1 %tobool53.us, label %cond.end60.us, label %cond.true54.us, !dbg !2603

cond.true54.us:                                   ; preds = %for.inc.us
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %prev.0.us, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2603
  %rt_rtx58.us = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !2603
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx58.us, align 8, !dbg !2603
  br label %cond.end60.us, !dbg !2603

cond.end60.us:                                    ; preds = %cond.true54.us, %for.inc.us
  %cond61.us = phi %struct.rtx_def* [ %19, %cond.true54.us ], [ null, %for.inc.us ], !dbg !2603
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond61.us, metadata !2575, metadata !DIExpression()), !dbg !2577
  br label %for.cond11.us, !dbg !2603, !llvm.loop !2612

for.end.us-lcssa.us:                              ; preds = %land.rhs.us, %for.cond11.us
  br label %for.end, !dbg !2614

for.cond11:                                       ; preds = %cond.end60, %cond.end.cond.end.split_crit_edge
  %prev.0 = phi %struct.rtx_def* [ %cond, %cond.end.cond.end.split_crit_edge ], [ %cond61, %cond.end60 ], !dbg !2602
  %insn.0 = phi %struct.rtx_def* [ %8, %cond.end.cond.end.split_crit_edge ], [ %prev.0, %cond.end60 ], !dbg !2602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0, metadata !2575, metadata !DIExpression()), !dbg !2577
  %tobool12 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2603
  br i1 %tobool12, label %for.end.us-lcssa, label %land.rhs, !dbg !2603

land.rhs:                                         ; preds = %for.cond11
  %20 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2603
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %20, i64 0, i32 0, !dbg !2603
  %21 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2603
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2603
  %rt_rtx18 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !2603
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx18, align 8, !dbg !2603
  %cmp19 = icmp eq %struct.rtx_def* %insn.0, %23, !dbg !2603
  br i1 %cmp19, label %for.end.us-lcssa, label %for.body20, !dbg !2601

for.body20:                                       ; preds = %land.rhs
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2604
  %bf.load = load i32, i32* %24, align 8, !dbg !2604
  %bf.clear = and i32 %bf.load, 65535, !dbg !2604
  %cmp21 = icmp eq i32 %bf.clear, 8, !dbg !2604
  br i1 %cmp21, label %if.then34, label %lor.lhs.false22, !dbg !2604

lor.lhs.false22:                                  ; preds = %for.body20
  %cmp25 = icmp eq i32 %bf.clear, 7, !dbg !2604
  br i1 %cmp25, label %if.then34, label %lor.lhs.false26, !dbg !2604

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %cmp29 = icmp eq i32 %bf.clear, 9, !dbg !2604
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30, !dbg !2604

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %cmp33 = icmp eq i32 %bf.clear, 10, !dbg !2604
  br i1 %cmp33, label %if.then34, label %for.inc, !dbg !2605

if.then34:                                        ; preds = %lor.lhs.false30, %lor.lhs.false26, %lor.lhs.false22, %for.body20
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2616
  %rt_int = bitcast %union.rtunion_def* %arrayidx39 to i32*, !dbg !2616
  %25 = load i32, i32* %rt_int, align 8, !dbg !2616
  %call40 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %arg_stores.0, i32 %25) #6, !dbg !2617
  %tobool41 = icmp eq i32 %call40, 0, !dbg !2617
  br i1 %tobool41, label %if.end43, label %for.inc, !dbg !2618

if.end43:                                         ; preds = %if.then34
  %call44 = tail call fastcc zeroext i8 @deletable_insn_p(%struct.rtx_def* nonnull %insn.0, i8 zeroext %fast, %struct.bitmap_head_def* nonnull %arg_stores.0) #7, !dbg !2606
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2606
  br i1 %tobool45, label %if.else, label %if.then46, !dbg !2608

if.then46:                                        ; preds = %if.end43
  %u47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2609
  %26 = getelementptr inbounds %union.u, %union.u* %u47, i64 1, i32 0, i32 0, i64 0, !dbg !2609
  %rt_rtx50 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !2609
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50, align 8, !dbg !2609
  tail call fastcc void @mark_nonreg_stores(%struct.rtx_def* %27, %struct.rtx_def* nonnull %insn.0, i8 zeroext %fast) #7, !dbg !2610
  br label %for.inc, !dbg !2610

if.else:                                          ; preds = %if.end43
  tail call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext %fast) #7, !dbg !2611
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %lor.lhs.false30, %if.else, %if.then46
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0, metadata !2574, metadata !DIExpression()), !dbg !2577
  %tobool53 = icmp eq %struct.rtx_def* %prev.0, null, !dbg !2603
  br i1 %tobool53, label %cond.end60, label %cond.true54, !dbg !2603

cond.true54:                                      ; preds = %for.inc
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %prev.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2603
  %rt_rtx58 = bitcast %union.rtunion_def* %28 to %struct.rtx_def**, !dbg !2603
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx58, align 8, !dbg !2603
  br label %cond.end60, !dbg !2603

cond.end60:                                       ; preds = %for.inc, %cond.true54
  %cond61 = phi %struct.rtx_def* [ %29, %cond.true54 ], [ null, %for.inc ], !dbg !2603
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond61, metadata !2575, metadata !DIExpression()), !dbg !2577
  br label %for.cond11, !dbg !2603, !llvm.loop !2612

for.end.us-lcssa:                                 ; preds = %for.cond11, %land.rhs
  br label %for.end, !dbg !2614

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  br i1 %tobool35, label %for.inc65, label %if.then63, !dbg !2619

if.then63:                                        ; preds = %for.end
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %arg_stores.0) #6, !dbg !2620
  br label %for.inc65, !dbg !2620

for.inc65:                                        ; preds = %for.end, %if.then63
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2599
  %cfg8.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2621
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8.phi.trans.insert, align 8, !dbg !2599
  br label %for.cond, !dbg !2599, !llvm.loop !2622

for.end67:                                        ; preds = %for.cond
  br i1 %tobool35, label %if.end70, label %if.then69, !dbg !2624

if.then69:                                        ; preds = %for.end67
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %arg_stores.0) #6, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2576, metadata !DIExpression()), !dbg !2577
  br label %if.end70, !dbg !2625

if.end70:                                         ; preds = %for.end67, %if.then69
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2627
  %tobool71 = icmp eq %struct._IO_FILE* %30, null, !dbg !2627
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !2629

if.then72:                                        ; preds = %if.end70
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2630
  br label %if.end74, !dbg !2630

if.end74:                                         ; preds = %if.end70, %if.then72
  ret void, !dbg !2631
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_artificial_uses() unnamed_addr #4 !dbg !2632 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2637
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2637
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2637
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2637
  br label %for.cond, !dbg !2637

for.cond:                                         ; preds = %for.inc12, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.inc12 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2634, metadata !DIExpression()), !dbg !2640
  %tobool = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2637
  br i1 %tobool, label %for.end13, label %for.body, !dbg !2637

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2641
  %2 = load i32, i32* %index, align 8, !dbg !2641
  %call = tail call fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %2) #7, !dbg !2645
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call, metadata !2636, metadata !DIExpression()), !dbg !2640
  br label %for.cond1, !dbg !2646

for.cond1:                                        ; preds = %for.inc10, %for.body
  %use_rec.0 = phi %union.df_ref_d** [ %call, %for.body ], [ %incdec.ptr, %for.inc10 ], !dbg !2647
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2636, metadata !DIExpression()), !dbg !2640
  %3 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !2648
  %tobool2 = icmp eq %union.df_ref_d* %3, null, !dbg !2650
  br i1 %tobool2, label %for.inc12, label %for.body3, !dbg !2650

for.body3:                                        ; preds = %for.cond1
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2651
  br label %for.cond4, !dbg !2653

for.cond4:                                        ; preds = %for.inc, %for.body3
  %defs.0.in = phi %struct.df_link** [ %chain, %for.body3 ], [ %next, %for.inc ]
  %defs.0 = load %struct.df_link*, %struct.df_link** %defs.0.in, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.df_link* %defs.0, metadata !2635, metadata !DIExpression()), !dbg !2640
  %tobool5 = icmp eq %struct.df_link* %defs.0, null, !dbg !2655
  br i1 %tobool5, label %for.inc10, label %for.body6, !dbg !2655

for.body6:                                        ; preds = %for.cond4
  %4 = bitcast %struct.df_link* %defs.0 to i32**, !dbg !2656
  %5 = load i32*, i32** %4, align 8, !dbg !2656
  %bf.load = load i32, i32* %5, align 8, !dbg !2656
  %bf.clear = and i32 %bf.load, 255, !dbg !2656
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !2656
  br i1 %cmp, label %for.inc, label %if.then, !dbg !2659

if.then:                                          ; preds = %for.body6
  %insn_info = getelementptr inbounds i32, i32* %5, i64 6, !dbg !2660
  %6 = bitcast i32* %insn_info to %struct.df_insn_info**, !dbg !2660
  %7 = load %struct.df_insn_info*, %struct.df_insn_info** %6, align 8, !dbg !2660
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %7, i64 0, i32 0, !dbg !2660
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2660
  tail call fastcc void @mark_insn(%struct.rtx_def* %8, i8 zeroext 0) #7, !dbg !2661
  br label %for.inc, !dbg !2661

for.inc:                                          ; preds = %for.body6, %if.then
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %defs.0, i64 0, i32 1, !dbg !2662
  br label %for.cond4, !dbg !2663, !llvm.loop !2664

for.inc10:                                        ; preds = %for.cond4
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !2666
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2636, metadata !DIExpression()), !dbg !2640
  br label %for.cond1, !dbg !2667, !llvm.loop !2668

for.inc12:                                        ; preds = %for.cond1
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2670
  br label %for.cond, !dbg !2670, !llvm.loop !2671

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !2673
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %vec_) unnamed_addr #0 !dbg !2674 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !2680, metadata !DIExpression()), !dbg !2681
  %tobool = icmp eq %struct.VEC_rtx_base* %vec_, null, !dbg !2682
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2682

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !2682
  %0 = load i32, i32* %num, align 8, !dbg !2682
  br label %cond.end, !dbg !2682

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2682
  ret i32 %cond, !dbg !2682
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @VEC_rtx_base_pop(%struct.VEC_rtx_base* %vec_) unnamed_addr #0 !dbg !2683 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !2688, metadata !DIExpression()), !dbg !2690
  %num1 = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !2691
  %0 = load i32, i32* %num1, align 8, !dbg !2691
  %dec = add i32 %0, -1, !dbg !2691
  store i32 %dec, i32* %num1, align 8, !dbg !2691
  %idxprom = zext i32 %dec to i64, !dbg !2691
  %arrayidx = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2691
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2689, metadata !DIExpression()), !dbg !2690
  ret %struct.rtx_def* %1, !dbg !2691
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_reg_dependencies(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2692 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2696, metadata !DIExpression()), !dbg !2703
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2704
  %bf.load = load i32, i32* %0, align 8, !dbg !2704
  %bf.clear = and i32 %bf.load, 65535, !dbg !2704
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !2704
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2706

if.end:                                           ; preds = %entry
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !2707
  %insns = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 10, !dbg !2707
  %2 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2707
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2707
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2707
  %3 = load i32, i32* %rt_int, align 8, !dbg !2707
  %idxprom = sext i32 %3 to i64, !dbg !2707
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %2, i64 %idxprom, !dbg !2707
  %4 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !2707
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %4, i64 0, i32 2, !dbg !2707
  %5 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata %union.df_ref_d** %5, metadata !2698, metadata !DIExpression()), !dbg !2703
  br label %for.cond, !dbg !2708

for.cond:                                         ; preds = %for.inc23, %if.end
  %use_rec.0 = phi %union.df_ref_d** [ %5, %if.end ], [ %incdec.ptr, %for.inc23 ], !dbg !2709
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2698, metadata !DIExpression()), !dbg !2703
  %6 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !2710
  %tobool = icmp eq %union.df_ref_d* %6, null, !dbg !2711
  br i1 %tobool, label %cleanup.cont.loopexit, label %for.body, !dbg !2711

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %6, metadata !2699, metadata !DIExpression()), !dbg !2712
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2713
  %tobool2 = icmp eq %struct._IO_FILE* %7, null, !dbg !2713
  br i1 %tobool2, label %if.end9, label %if.then3, !dbg !2715

if.then3:                                         ; preds = %for.body
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2716
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2718
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2719
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !2719
  tail call void @print_simple_rtl(%struct._IO_FILE* %8, %struct.rtx_def* %9) #6, !dbg !2720
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2721
  %11 = load i32, i32* %rt_int, align 8, !dbg !2722
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %11) #6, !dbg !2723
  br label %if.end9, !dbg !2724

if.end9:                                          ; preds = %for.body, %if.then3
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2725
  br label %for.cond11, !dbg !2727

for.cond11:                                       ; preds = %for.inc, %if.end9
  %defs.0.in = phi %struct.df_link** [ %chain, %if.end9 ], [ %next, %for.inc ]
  %defs.0 = load %struct.df_link*, %struct.df_link** %defs.0.in, align 8, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.df_link* %defs.0, metadata !2697, metadata !DIExpression()), !dbg !2703
  %tobool12 = icmp eq %struct.df_link* %defs.0, null, !dbg !2729
  br i1 %tobool12, label %for.inc23, label %for.body13, !dbg !2729

for.body13:                                       ; preds = %for.cond11
  %12 = bitcast %struct.df_link* %defs.0 to i32**, !dbg !2730
  %13 = load i32*, i32** %12, align 8, !dbg !2730
  %bf.load15 = load i32, i32* %13, align 8, !dbg !2730
  %bf.clear16 = and i32 %bf.load15, 255, !dbg !2730
  %cmp17 = icmp eq i32 %bf.clear16, 1, !dbg !2730
  br i1 %cmp17, label %for.inc, label %if.then18, !dbg !2733

if.then18:                                        ; preds = %for.body13
  %insn_info = getelementptr inbounds i32, i32* %13, i64 6, !dbg !2734
  %14 = bitcast i32* %insn_info to %struct.df_insn_info**, !dbg !2734
  %15 = load %struct.df_insn_info*, %struct.df_insn_info** %14, align 8, !dbg !2734
  %insn21 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %15, i64 0, i32 0, !dbg !2734
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn21, align 8, !dbg !2734
  tail call fastcc void @mark_insn(%struct.rtx_def* %16, i8 zeroext 0) #7, !dbg !2735
  br label %for.inc, !dbg !2735

for.inc:                                          ; preds = %for.body13, %if.then18
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %defs.0, i64 0, i32 1, !dbg !2736
  br label %for.cond11, !dbg !2737, !llvm.loop !2738

for.inc23:                                        ; preds = %for.cond11
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !2740
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2698, metadata !DIExpression()), !dbg !2703
  br label %for.cond, !dbg !2741, !llvm.loop !2742

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2744

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2744
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_rtx_heap_free(%struct.VEC_rtx_heap** %vec_) unnamed_addr #0 !dbg !2745 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** @worklist, metadata !2750, metadata !DIExpression()), !dbg !2751
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !2752
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !2752
  br i1 %tobool, label %if.end, label %if.then, !dbg !2754

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_rtx_heap* %0 to i8*, !dbg !2754
  tail call void @free(i8* nonnull %1) #6, !dbg !2752
  br label %if.end, !dbg !2752

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_rtx_heap* null, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !2754
  ret void, !dbg !2754
}

declare dso_local void @df_remove_problem(%struct.dataflow*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_unmarked_insns() unnamed_addr #4 !dbg !2755 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2762
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2762
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2762
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2762
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2762
  br label %for.cond, !dbg !2762

for.cond:                                         ; preds = %for.inc58, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc58 ], !dbg !2764
  %must_clean.0 = phi i8 [ 0, %entry ], [ %must_clean.1.lcssa, %for.inc58 ], !dbg !2766
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc58 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2767
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2757, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.0, metadata !2760, metadata !DIExpression()), !dbg !2761
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2764
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2764
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2764
  br i1 %cmp, label %for.end60, label %for.body, !dbg !2762

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2768
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2768
  %5 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2768
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 1, !dbg !2768
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2768
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2758, metadata !DIExpression()), !dbg !2761
  %tobool = icmp eq %struct.rtx_def* %6, null, !dbg !2768
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2768

cond.true:                                        ; preds = %for.body
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2768
  %rt_rtx = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !2768
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2768
  br label %cond.end, !dbg !2768

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.rtx_def* [ %8, %cond.true ], [ null, %for.body ], !dbg !2768
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !2759, metadata !DIExpression()), !dbg !2761
  br label %for.cond3, !dbg !2768

for.cond3:                                        ; preds = %cond.end56, %cond.end
  %must_clean.1 = phi i8 [ %must_clean.0, %cond.end ], [ %must_clean.4, %cond.end56 ], !dbg !2761
  %next.0 = phi %struct.rtx_def* [ %cond, %cond.end ], [ %cond57, %cond.end56 ], !dbg !2770
  %insn.0 = phi %struct.rtx_def* [ %6, %cond.end ], [ %next.0, %cond.end56 ], !dbg !2770
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2758, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.0, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1, metadata !2760, metadata !DIExpression()), !dbg !2761
  %tobool4 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2771
  br i1 %tobool4, label %for.inc58, label %land.rhs, !dbg !2771

land.rhs:                                         ; preds = %for.cond3
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2771
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 0, !dbg !2771
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2771
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2771
  %rt_rtx10 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !2771
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx10, align 8, !dbg !2771
  %cmp11 = icmp eq %struct.rtx_def* %insn.0, %12, !dbg !2771
  br i1 %cmp11, label %for.inc58, label %for.body12, !dbg !2768

for.body12:                                       ; preds = %land.rhs
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2773
  %bf.load = load i32, i32* %13, align 8, !dbg !2773
  %bf.clear = and i32 %bf.load, 65535, !dbg !2773
  %cmp13 = icmp eq i32 %bf.clear, 8, !dbg !2773
  br i1 %cmp13, label %if.then, label %lor.lhs.false, !dbg !2773

lor.lhs.false:                                    ; preds = %for.body12
  %cmp16 = icmp eq i32 %bf.clear, 7, !dbg !2773
  br i1 %cmp16, label %if.then, label %lor.lhs.false17, !dbg !2773

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %bf.clear, 9, !dbg !2773
  br i1 %cmp20, label %if.then, label %lor.lhs.false21, !dbg !2773

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %cmp24 = icmp eq i32 %bf.clear, 10, !dbg !2773
  br i1 %cmp24, label %if.then, label %for.inc, !dbg !2775

if.then:                                          ; preds = %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false, %for.body12
  %call = tail call i32 @noop_move_p(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2776
  %tobool25 = icmp eq i32 %call, 0, !dbg !2776
  br i1 %tobool25, label %if.else, label %if.end30, !dbg !2779

if.else:                                          ; preds = %if.then
  %call27 = tail call fastcc i32 @marked_insn_p(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2780
  %tobool28 = icmp eq i32 %call27, 0, !dbg !2780
  br i1 %tobool28, label %if.end30, label %for.inc, !dbg !2782

if.end30:                                         ; preds = %if.else, %if.then
  %call31 = tail call zeroext i8 @dbg_cnt(i32 5) #6, !dbg !2783
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2783
  br i1 %tobool32, label %for.inc, label %if.end34, !dbg !2785

if.end34:                                         ; preds = %if.end30
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2786
  %tobool35 = icmp eq %struct._IO_FILE* %14, null, !dbg !2786
  br i1 %tobool35, label %if.end41, label %if.then36, !dbg !2788

if.then36:                                        ; preds = %if.end34
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2789
  %rt_int = bitcast %union.rtunion_def* %arrayidx39 to i32*, !dbg !2789
  %15 = load i32, i32* %rt_int, align 8, !dbg !2789
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %15) #6, !dbg !2790
  br label %if.end41, !dbg !2790

if.end41:                                         ; preds = %if.end34, %if.then36
  tail call fastcc void @delete_corresponding_reg_eq_notes(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2791
  %bf.load42 = load i32, i32* %13, align 8, !dbg !2792
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !2792
  %cmp44 = icmp eq i32 %bf.clear43, 10, !dbg !2792
  %spec.select = select i1 %cmp44, i8 1, i8 %must_clean.1, !dbg !2794
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2760, metadata !DIExpression()), !dbg !2761
  %call47 = tail call %struct.rtx_def* @delete_insn_and_edges(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2795
  br label %for.inc, !dbg !2796

for.inc:                                          ; preds = %if.end30, %if.else, %lor.lhs.false21, %if.end41
  %must_clean.4 = phi i8 [ %must_clean.1, %if.else ], [ %must_clean.1, %if.end30 ], [ %spec.select, %if.end41 ], [ %must_clean.1, %lor.lhs.false21 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.4, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.0, metadata !2758, metadata !DIExpression()), !dbg !2761
  %tobool49 = icmp eq %struct.rtx_def* %next.0, null, !dbg !2771
  br i1 %tobool49, label %cond.end56, label %cond.true50, !dbg !2771

cond.true50:                                      ; preds = %for.inc
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %next.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2771
  %rt_rtx54 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !2771
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx54, align 8, !dbg !2771
  br label %cond.end56, !dbg !2771

cond.end56:                                       ; preds = %for.inc, %cond.true50
  %cond57 = phi %struct.rtx_def* [ %17, %cond.true50 ], [ null, %for.inc ], !dbg !2771
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond57, metadata !2759, metadata !DIExpression()), !dbg !2761
  br label %for.cond3, !dbg !2771, !llvm.loop !2797

for.inc58:                                        ; preds = %land.rhs, %for.cond3
  %must_clean.1.lcssa = phi i8 [ %must_clean.1, %land.rhs ], [ %must_clean.1, %for.cond3 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.1.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2764
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2799
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2764
  br label %for.cond, !dbg !2764, !llvm.loop !2800

for.end60:                                        ; preds = %for.cond
  %must_clean.0.lcssa = phi i8 [ %must_clean.0, %for.cond ], !dbg !2766
  call void @llvm.dbg.value(metadata i8 %must_clean.0.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.0.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %must_clean.0.lcssa, metadata !2760, metadata !DIExpression()), !dbg !2761
  %tobool61 = icmp eq i8 %must_clean.0.lcssa, 0, !dbg !2802
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !2804

if.then62:                                        ; preds = %for.end60
  %call63 = tail call zeroext i8 @delete_unreachable_blocks() #6, !dbg !2805
  br label %if.end64, !dbg !2805

if.end64:                                         ; preds = %for.end60, %if.then62
  ret void, !dbg !2806
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fini_dce(i8 zeroext %fast) unnamed_addr #4 !dbg !2807 {
entry:
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2809, metadata !DIExpression()), !dbg !2810
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @marked, align 8, !dbg !2811
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 0, !dbg !2811
  %1 = load i8*, i8** %popcount, align 8, !dbg !2811
  tail call void @free(i8* %1) #6, !dbg !2811
  %2 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @marked to i8**), align 8, !dbg !2811
  tail call void @free(i8* %2) #6, !dbg !2811
  %tobool = icmp eq i8 %fast, 0, !dbg !2812
  br i1 %tobool, label %if.end, label %if.then, !dbg !2814

if.then:                                          ; preds = %entry
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @dce_blocks_bitmap_obstack) #6, !dbg !2815
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @dce_tmp_bitmap_obstack) #6, !dbg !2817
  br label %if.end, !dbg !2818

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2819
}

declare dso_local void @df_chain_add_problem(i32) local_unnamed_addr #1

declare dso_local void @df_analyze() local_unnamed_addr #1

declare dso_local void @df_dump(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local i32 @get_max_uid() local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i32 @ix86_cfun_abi() local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @deletable_insn_p(%struct.rtx_def* %insn, i8 zeroext %fast, %struct.bitmap_head_def* %arg_stores) unnamed_addr #4 !dbg !2820 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2824, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2825, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %arg_stores, metadata !2826, metadata !DIExpression()), !dbg !2830
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2831
  %bf.load = load i32, i32* %0, align 8, !dbg !2831
  %bf.clear = and i32 %bf.load, 65535, !dbg !2831
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2831
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2833

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @insn_nothrow_p(%struct.rtx_def* %insn) #6, !dbg !2834
  %tobool = icmp eq i8 %call, 0, !dbg !2834
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !2836

if.end2:                                          ; preds = %if.end
  %bf.load3 = load i32, i32* %0, align 8, !dbg !2837
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !2837
  %cmp5 = icmp ne i32 %bf.clear4, 10, !dbg !2837
  %.b = load i1, i1* @df_in_progress, align 1, !dbg !2839
  %or.cond = or i1 %cmp5, %.b, !dbg !2840
  br i1 %or.cond, label %if.end26, label %land.lhs.true7, !dbg !2840

land.lhs.true7:                                   ; preds = %if.end2
  %bf.clear9 = and i32 %bf.load3, 16777216, !dbg !2841
  %tobool10 = icmp eq i32 %bf.clear9, 0, !dbg !2841
  br i1 %tobool10, label %land.lhs.true11, label %if.end26, !dbg !2842

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %bf.clear14 = and i32 %bf.load3, 67108864, !dbg !2843
  %tobool15 = icmp eq i32 %bf.clear14, 0, !dbg !2843
  br i1 %tobool15, label %lor.lhs.false, label %land.lhs.true19, !dbg !2843

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %tobool18 = icmp slt i32 %bf.load3, 0, !dbg !2843
  br i1 %tobool18, label %land.lhs.true19, label %if.end26, !dbg !2844

land.lhs.true19:                                  ; preds = %land.lhs.true11, %lor.lhs.false
  %bf.clear22 = and i32 %bf.load3, 33554432, !dbg !2845
  %tobool23 = icmp eq i32 %bf.clear22, 0, !dbg !2845
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !2846

if.then24:                                        ; preds = %land.lhs.true19
  %call25 = tail call fastcc zeroext i8 @find_call_stack_args(%struct.rtx_def* %insn, i8 zeroext 0, i8 zeroext %fast, %struct.bitmap_head_def* %arg_stores) #7, !dbg !2847
  br label %cleanup, !dbg !2848

if.end26:                                         ; preds = %land.lhs.true19, %land.lhs.true7, %if.end2, %lor.lhs.false
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2849
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2849
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !2849
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2827, metadata !DIExpression()), !dbg !2830
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2850
  %bf.load27 = load i32, i32* %3, align 8, !dbg !2850
  %trunc = trunc i32 %bf.load27 to i16, !dbg !2851
  switch i16 %trunc, label %sw.default [
    i16 24, label %cleanup
    i16 138, label %cleanup
    i16 25, label %sw.bb29
    i16 15, label %sw.bb42
  ], !dbg !2851

sw.bb29:                                          ; preds = %if.end26
  %tobool30 = icmp eq i8 %fast, 0, !dbg !2852
  br i1 %tobool30, label %cleanup, label %if.then31, !dbg !2855

if.then31:                                        ; preds = %sw.bb29
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2856
  %rt_rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**, !dbg !2856
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx35, align 8, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !2828, metadata !DIExpression()), !dbg !2830
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !2858
  %bf.load36 = load i32, i32* %5, align 8, !dbg !2858
  %bf.clear37 = and i32 %bf.load36, 65535, !dbg !2858
  %cmp38 = icmp eq i32 %bf.clear37, 37, !dbg !2858
  br i1 %cmp38, label %land.rhs, label %land.end, !dbg !2859

land.rhs:                                         ; preds = %if.then31
  %call39 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !2860
  %cmp40 = icmp ugt i32 %call39, 52, !dbg !2860
  %6 = load i32, i32* @reload_completed, align 4, !dbg !2861
  %tobool41 = icmp ne i32 %6, 0, !dbg !2861
  %7 = or i1 %tobool41, %cmp40, !dbg !2861
  %phitmp = zext i1 %7 to i8, !dbg !2861
  br label %land.end, !dbg !2861

land.end:                                         ; preds = %land.rhs, %if.then31
  %8 = phi i8 [ 0, %if.then31 ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !2862

sw.bb42:                                          ; preds = %if.end26
  %arrayidx45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2863
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**, !dbg !2863
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2863
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 0, !dbg !2863
  %10 = load i32, i32* %num_elem, align 8, !dbg !2863
  call void @llvm.dbg.value(metadata i32 %10, metadata !2829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2830
  %11 = sext i32 %10 to i64, !dbg !2865
  br label %for.cond, !dbg !2865

for.cond:                                         ; preds = %for.inc, %sw.bb42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %11, %sw.bb42 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2866
  call void @llvm.dbg.value(metadata i32 undef, metadata !2829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2830
  %cmp46 = icmp sgt i64 %indvars.iv, 0, !dbg !2867
  br i1 %cmp46, label %for.body, label %cleanup.loopexit, !dbg !2869

for.body:                                         ; preds = %for.cond
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2870
  %arrayidx52 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 1, i64 %indvars.iv.next, !dbg !2870
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx52, align 8, !dbg !2870
  %call53 = tail call fastcc zeroext i8 @deletable_insn_p_1(%struct.rtx_def* %13) #7, !dbg !2872
  %tobool54 = icmp eq i8 %call53, 0, !dbg !2872
  br i1 %tobool54, label %cleanup.loopexit, label %for.inc, !dbg !2873

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !2829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2830
  br label %for.cond, !dbg !2874, !llvm.loop !2875

sw.default:                                       ; preds = %if.end26
  %call57 = tail call fastcc zeroext i8 @deletable_insn_p_1(%struct.rtx_def* %2) #7, !dbg !2877
  br label %cleanup, !dbg !2878

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup, !dbg !2879

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb29, %if.end, %if.end26, %if.end26, %entry, %sw.default, %land.end, %if.then24
  %retval.0 = phi i8 [ %call57, %sw.default ], [ %8, %land.end ], [ %call25, %if.then24 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end26 ], [ 0, %if.end26 ], [ 0, %sw.bb29 ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2830
  ret i8 %retval.0, !dbg !2879
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_nonreg_stores(%struct.rtx_def* %body, %struct.rtx_def* %insn, i8 zeroext %fast) unnamed_addr #4 !dbg !2880 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %body, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2886, metadata !DIExpression()), !dbg !2887
  %tobool = icmp eq i8 %fast, 0, !dbg !2888
  %0 = bitcast %struct.rtx_def* %insn to i8*, !dbg !2890
  br i1 %tobool, label %if.else, label %if.then, !dbg !2891

if.then:                                          ; preds = %entry
  tail call void @note_stores(%struct.rtx_def* %body, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_nonreg_stores_1, i8* %0) #6, !dbg !2892
  br label %if.end, !dbg !2892

if.else:                                          ; preds = %entry
  tail call void @note_stores(%struct.rtx_def* %body, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_nonreg_stores_2, i8* %0) #6, !dbg !2893
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2894
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_insn(%struct.rtx_def* %insn, i8 zeroext %fast) unnamed_addr #4 !dbg !2895 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2899, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2900, metadata !DIExpression()), !dbg !2901
  %call = tail call fastcc i32 @marked_insn_p(%struct.rtx_def* %insn) #7, !dbg !2902
  %tobool = icmp eq i32 %call, 0, !dbg !2902
  br i1 %tobool, label %if.then, label %if.end33, !dbg !2904

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8 %fast, 0, !dbg !2905
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2908

if.then2:                                         ; preds = %if.then
  %call3 = tail call fastcc %struct.rtx_def** @VEC_rtx_heap_safe_push(%struct.VEC_rtx_heap** nonnull @worklist, %struct.rtx_def* %insn) #7, !dbg !2909
  br label %if.end, !dbg !2909

if.end:                                           ; preds = %if.then, %if.then2
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @marked, align 8, !dbg !2910
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2911
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2911
  %1 = load i32, i32* %rt_int, align 8, !dbg !2911
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %0, i32 %1) #7, !dbg !2912
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2913
  %tobool4 = icmp eq %struct._IO_FILE* %2, null, !dbg !2913
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !2915

if.then5:                                         ; preds = %if.end
  %3 = load i32, i32* %rt_int, align 8, !dbg !2916
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %3) #6, !dbg !2917
  br label %if.end11, !dbg !2917

if.end11:                                         ; preds = %if.end, %if.then5
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2918
  %bf.load = load i32, i32* %4, align 8, !dbg !2918
  %bf.clear = and i32 %bf.load, 65535, !dbg !2918
  %cmp = icmp ne i32 %bf.clear, 10, !dbg !2918
  %.b = load i1, i1* @df_in_progress, align 1, !dbg !2920
  %or.cond = or i1 %cmp, %.b, !dbg !2921
  br i1 %or.cond, label %if.end33, label %land.lhs.true13, !dbg !2921

land.lhs.true13:                                  ; preds = %if.end11
  %bf.clear15 = and i32 %bf.load, 16777216, !dbg !2922
  %tobool16 = icmp eq i32 %bf.clear15, 0, !dbg !2922
  br i1 %tobool16, label %land.lhs.true17, label %if.end33, !dbg !2923

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %bf.clear20 = and i32 %bf.load, 67108864, !dbg !2924
  %tobool21 = icmp eq i32 %bf.clear20, 0, !dbg !2924
  br i1 %tobool21, label %lor.lhs.false, label %land.lhs.true25, !dbg !2924

lor.lhs.false:                                    ; preds = %land.lhs.true17
  %tobool24 = icmp slt i32 %bf.load, 0, !dbg !2924
  br i1 %tobool24, label %land.lhs.true25, label %if.end33, !dbg !2925

land.lhs.true25:                                  ; preds = %land.lhs.true17, %lor.lhs.false
  %bf.clear28 = and i32 %bf.load, 33554432, !dbg !2926
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !2926
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !2927

if.then30:                                        ; preds = %land.lhs.true25
  %call31 = tail call fastcc zeroext i8 @find_call_stack_args(%struct.rtx_def* %insn, i8 zeroext 1, i8 zeroext %fast, %struct.bitmap_head_def* null) #7, !dbg !2928
  br label %if.end33, !dbg !2928

if.end33:                                         ; preds = %land.lhs.true25, %land.lhs.true13, %entry, %lor.lhs.false, %if.then30, %if.end11
  ret void, !dbg !2929
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @insn_nothrow_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @find_call_stack_args(%struct.rtx_def* %call_insn, i8 zeroext %do_mark, i8 zeroext %fast, %struct.bitmap_head_def* %arg_stores) unnamed_addr #4 !dbg !2930 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call_insn, metadata !2934, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 %do_mark, metadata !2935, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 %fast, metadata !2936, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %arg_stores, metadata !2937, metadata !DIExpression()), !dbg !2988
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call_insn, i64 0, i32 0, !dbg !2989
  %bf.load = load i32, i32* %0, align 8, !dbg !2989
  %bf.clear = and i32 %bf.load, 65535, !dbg !2989
  %cmp = icmp eq i32 %bf.clear, 10, !dbg !2989
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2989

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2989
  br label %cond.end, !dbg !2989

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i32, i32* @target_flags, align 4, !dbg !2990
  %and = and i32 %1, 4, !dbg !2990
  %cmp1 = icmp eq i32 %and, 0, !dbg !2990
  br i1 %cmp1, label %lor.lhs.false, label %if.end, !dbg !2990

lor.lhs.false:                                    ; preds = %cond.end
  %call = tail call i32 @ix86_cfun_abi() #6, !dbg !2990
  %cmp2 = icmp eq i32 %call, 1, !dbg !2990
  br i1 %cmp2, label %if.end, label %cleanup996, !dbg !2992

if.end:                                           ; preds = %cond.end, %lor.lhs.false
  %tobool = icmp eq i8 %do_mark, 0, !dbg !2993
  br i1 %tobool, label %if.then3, label %if.end9, !dbg !2995

if.then3:                                         ; preds = %if.end
  %tobool4 = icmp eq %struct.bitmap_head_def* %arg_stores, null, !dbg !2996
  br i1 %tobool4, label %cond.true5, label %cond.end7, !dbg !2996

cond.true5:                                       ; preds = %if.then3
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 243, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2996
  br label %cond.end7, !dbg !2996

cond.end7:                                        ; preds = %if.then3, %cond.true5
  tail call void @bitmap_clear(%struct.bitmap_head_def* %arg_stores) #6, !dbg !2998
  br label %if.end9, !dbg !2999

if.end9:                                          ; preds = %if.end, %cond.end7
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 0, metadata !2943, metadata !DIExpression()), !dbg !2988
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call_insn, i64 0, i32 1, !dbg !3000
  %arrayidx = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 1, !dbg !3000
  %rt_rtx = bitcast %struct.object_block** %arrayidx to %struct.rtx_def**, !dbg !3000
  %tobool115 = icmp ne i8 %fast, 0, !dbg !3001
  %arrayidx119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3002
  %rt_int = bitcast %union.rtunion_def* %arrayidx119 to i32*, !dbg !3002
  br label %for.cond, !dbg !3004

for.cond:                                         ; preds = %for.inc304, %if.end9
  %max_sp_off.0 = phi i64 [ 0, %if.end9 ], [ %max_sp_off.2, %for.inc304 ], !dbg !3005
  %min_sp_off.0 = phi i64 [ 9223372036854775807, %if.end9 ], [ %min_sp_off.2, %for.inc304 ], !dbg !3006
  %p.0.in = phi %struct.rtx_def** [ %rt_rtx, %if.end9 ], [ %rt_rtx308, %for.inc304 ]
  %p.0 = load %struct.rtx_def*, %struct.rtx_def** %p.0.in, align 8, !dbg !3007
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.0, metadata !2938, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %min_sp_off.0, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %max_sp_off.0, metadata !2943, metadata !DIExpression()), !dbg !2988
  %tobool10 = icmp eq %struct.rtx_def* %p.0, null, !dbg !3008
  br i1 %tobool10, label %for.end309, label %for.body, !dbg !3008

for.body:                                         ; preds = %for.cond
  %arrayidx13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3009
  %2 = bitcast %union.rtunion_def* %arrayidx13 to i32**, !dbg !3009
  %3 = load i32*, i32** %2, align 8, !dbg !3009
  %bf.load15 = load i32, i32* %3, align 8, !dbg !3009
  %bf.clear16 = and i32 %bf.load15, 65535, !dbg !3009
  %cmp17 = icmp eq i32 %bf.clear16, 24, !dbg !3010
  br i1 %cmp17, label %land.lhs.true, label %for.inc304, !dbg !3011

land.lhs.true:                                    ; preds = %for.body
  %arrayidx24 = getelementptr inbounds i32, i32* %3, i64 2, !dbg !3012
  %4 = bitcast i32* %arrayidx24 to i32**, !dbg !3012
  %5 = load i32*, i32** %4, align 8, !dbg !3012
  %bf.load26 = load i32, i32* %5, align 8, !dbg !3012
  %bf.clear27 = and i32 %bf.load26, 65535, !dbg !3012
  %cmp28 = icmp eq i32 %bf.clear27, 43, !dbg !3012
  br i1 %cmp28, label %if.then29, label %for.inc304, !dbg !3013

if.then29:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32* %5, metadata !2945, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 0, metadata !2952, metadata !DIExpression()), !dbg !3014
  %6 = getelementptr inbounds i32, i32* %5, i64 4, !dbg !3015
  %rt_mem = bitcast i32* %6 to %struct.mem_attrs**, !dbg !3015
  %7 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !3015
  %cmp41 = icmp eq %struct.mem_attrs* %7, null, !dbg !3015
  br i1 %cmp41, label %cond.false48, label %cond.true42, !dbg !3015

cond.true42:                                      ; preds = %if.then29
  %size47 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %7, i64 0, i32 2, !dbg !3015
  %8 = load %struct.rtx_def*, %struct.rtx_def** %size47, align 8, !dbg !3015
  br label %cond.end62, !dbg !3015

cond.false48:                                     ; preds = %if.then29
  %bf.clear50 = and i32 %bf.load26, 16711680, !dbg !3015
  %cmp51 = icmp eq i32 %bf.clear50, 65536, !dbg !3015
  br i1 %cmp51, label %cond.end62, label %cond.true52, !dbg !3015

cond.true52:                                      ; preds = %cond.false48
  %bf.lshr54 = lshr i32 %bf.load26, 16, !dbg !3015
  %bf.clear55 = and i32 %bf.lshr54, 255, !dbg !3015
  %idxprom = zext i32 %bf.clear55 to i64, !dbg !3015
  %arrayidx56 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3015
  %9 = load i8, i8* %arrayidx56, align 1, !dbg !3015
  %conv57 = zext i8 %9 to i64, !dbg !3015
  %call58 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv57) #6, !dbg !3015
  br label %cond.end62, !dbg !3015

cond.end62:                                       ; preds = %cond.false48, %cond.true52, %cond.true42
  %cond63 = phi %struct.rtx_def* [ %8, %cond.true42 ], [ %call58, %cond.true52 ], [ null, %cond.false48 ], !dbg !3015
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond63, metadata !2951, metadata !DIExpression()), !dbg !3014
  %cmp64 = icmp eq %struct.rtx_def* %cond63, null, !dbg !3016
  br i1 %cmp64, label %cleanup297, label %if.end67, !dbg !3018

if.end67:                                         ; preds = %cond.end62
  %arrayidx70 = getelementptr inbounds i32, i32* %5, i64 2, !dbg !3019
  %rt_rtx71 = bitcast i32* %arrayidx70 to %struct.rtx_def**, !dbg !3019
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx71, align 8, !dbg !3019
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2950, metadata !DIExpression()), !dbg !3014
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !3020
  %bf.load72 = load i32, i32* %11, align 8, !dbg !3020
  %bf.clear73 = and i32 %bf.load72, 65535, !dbg !3020
  %cmp74 = icmp eq i32 %bf.clear73, 49, !dbg !3022
  br i1 %cmp74, label %land.lhs.true76, label %if.end105, !dbg !3023

land.lhs.true76:                                  ; preds = %if.end67
  %arrayidx79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3024
  %12 = bitcast %union.rtunion_def* %arrayidx79 to i32**, !dbg !3024
  %13 = load i32*, i32** %12, align 8, !dbg !3024
  %bf.load81 = load i32, i32* %13, align 8, !dbg !3024
  %bf.clear82 = and i32 %bf.load81, 65535, !dbg !3024
  %cmp83 = icmp eq i32 %bf.clear82, 37, !dbg !3024
  %14 = bitcast i32* %13 to %struct.rtx_def*, !dbg !3025
  br i1 %cmp83, label %land.lhs.true85, label %if.end105, !dbg !3025

land.lhs.true85:                                  ; preds = %land.lhs.true76
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3026
  %16 = bitcast %union.rtunion_def* %15 to i32**, !dbg !3026
  %17 = load i32*, i32** %16, align 8, !dbg !3026
  %bf.load90 = load i32, i32* %17, align 8, !dbg !3026
  %bf.clear91 = and i32 %bf.load90, 65535, !dbg !3026
  %cmp92 = icmp eq i32 %bf.clear91, 30, !dbg !3026
  br i1 %cmp92, label %if.then94, label %if.end105, !dbg !3027

if.then94:                                        ; preds = %land.lhs.true85
  %u99 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !3028
  %arrayidx100 = bitcast i32* %u99 to i64*, !dbg !3028
  %18 = load i64, i64* %arrayidx100, align 8, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %18, metadata !2952, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !2950, metadata !DIExpression()), !dbg !3014
  br label %if.end105, !dbg !3030

if.end105:                                        ; preds = %if.then94, %land.lhs.true85, %land.lhs.true76, %if.end67
  %off.0 = phi i64 [ %18, %if.then94 ], [ 0, %land.lhs.true85 ], [ 0, %land.lhs.true76 ], [ 0, %if.end67 ], !dbg !3014
  %addr.0 = phi %struct.rtx_def* [ %14, %if.then94 ], [ %10, %land.lhs.true85 ], [ %10, %land.lhs.true76 ], [ %10, %if.end67 ], !dbg !3014
  call void @llvm.dbg.value(metadata %struct.rtx_def* %addr.0, metadata !2950, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %off.0, metadata !2952, metadata !DIExpression()), !dbg !3014
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3031
  %cmp106 = icmp eq %struct.rtx_def* %addr.0, %19, !dbg !3032
  br i1 %cmp106, label %if.end276, label %if.then108, !dbg !3033

if.then108:                                       ; preds = %if.end105
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %addr.0, i64 0, i32 0, !dbg !3034
  %bf.load109 = load i32, i32* %20, align 8, !dbg !3034
  %bf.clear110 = and i32 %bf.load109, 65535, !dbg !3034
  %cmp111 = icmp ne i32 %bf.clear110, 37, !dbg !3034
  %or.cond6 = or i1 %cmp111, %tobool115, !dbg !3036
  br i1 %or.cond6, label %cleanup297, label %if.then116, !dbg !3036

if.then116:                                       ; preds = %if.then108
  %21 = load %struct.df*, %struct.df** @df, align 8, !dbg !3037
  %insns = getelementptr inbounds %struct.df, %struct.df* %21, i64 0, i32 10, !dbg !3037
  %22 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3037
  %23 = load i32, i32* %rt_int, align 8, !dbg !3037
  %idxprom120 = sext i32 %23 to i64, !dbg !3037
  %arrayidx121 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %22, i64 %idxprom120, !dbg !3037
  %24 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx121, align 8, !dbg !3037
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %24, i64 0, i32 2, !dbg !3037
  %25 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !3037
  call void @llvm.dbg.value(metadata %union.df_ref_d** %25, metadata !2953, metadata !DIExpression()), !dbg !3038
  br label %for.cond122, !dbg !3039

for.cond122:                                      ; preds = %for.inc, %if.then116
  %use_rec.0 = phi %union.df_ref_d** [ %25, %if.then116 ], [ %incdec.ptr, %for.inc ], !dbg !3002
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2953, metadata !DIExpression()), !dbg !3038
  %26 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !3040
  %tobool123 = icmp eq %union.df_ref_d* %26, null, !dbg !3042
  br i1 %tobool123, label %for.end.loopexit, label %for.body124, !dbg !3042

for.body124:                                      ; preds = %for.cond122
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %26, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3043
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3043
  %call125 = tail call i32 @rtx_equal_p(%struct.rtx_def* %addr.0, %struct.rtx_def* %27) #6, !dbg !3045
  %tobool126 = icmp eq i32 %call125, 0, !dbg !3045
  br i1 %tobool126, label %for.inc, label %for.body124.for.end_crit_edge, !dbg !3046

for.body124.for.end_crit_edge:                    ; preds = %for.body124
  %use_rec.0.lcssa43 = phi %union.df_ref_d** [ %use_rec.0, %for.body124 ], !dbg !3002
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0.lcssa43, metadata !2953, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0.lcssa43, metadata !2953, metadata !DIExpression()), !dbg !3038
  %.pre = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0.lcssa43, align 8, !dbg !3047
  br label %for.end, !dbg !3046

for.inc:                                          ; preds = %for.body124
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !3049
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2953, metadata !DIExpression()), !dbg !3038
  br label %for.cond122, !dbg !3050, !llvm.loop !3051

for.end.loopexit:                                 ; preds = %for.cond122
  %.lcssa41 = phi %union.df_ref_d* [ %26, %for.cond122 ], !dbg !3040
  br label %for.end, !dbg !3053

for.end:                                          ; preds = %for.end.loopexit, %for.body124.for.end_crit_edge
  %.pre.pn = phi %union.df_ref_d* [ %.pre, %for.body124.for.end_crit_edge ], [ %.lcssa41, %for.end.loopexit ]
  %28 = phi %union.df_ref_d* [ %.pre, %for.body124.for.end_crit_edge ], [ null, %for.end.loopexit ], !dbg !3047
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2953, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2953, metadata !DIExpression()), !dbg !3038
  %cmp129 = icmp eq %union.df_ref_d* %28, null, !dbg !3053
  br i1 %cmp129, label %cleanup, label %if.end132, !dbg !3054

if.end132:                                        ; preds = %for.end
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %.pre.pn, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3055
  br label %for.cond134, !dbg !3057

for.cond134:                                      ; preds = %for.inc144, %if.end132
  %defs.0.in = phi %struct.df_link** [ %chain, %if.end132 ], [ %next, %for.inc144 ]
  %defs.0 = load %struct.df_link*, %struct.df_link** %defs.0.in, align 8, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.df_link* %defs.0, metadata !2958, metadata !DIExpression()), !dbg !3038
  %cond = icmp eq %struct.df_link* %defs.0, null, !dbg !3059
  br i1 %cond, label %cleanup.loopexit, label %for.body136, !dbg !3059

for.body136:                                      ; preds = %for.cond134
  %29 = bitcast %struct.df_link* %defs.0 to i32**, !dbg !3060
  %30 = load i32*, i32** %29, align 8, !dbg !3060
  %bf.load138 = load i32, i32* %30, align 8, !dbg !3060
  %bf.clear139 = and i32 %bf.load138, 255, !dbg !3060
  %cmp140 = icmp eq i32 %bf.clear139, 1, !dbg !3060
  br i1 %cmp140, label %for.inc144, label %for.end145, !dbg !3063

for.inc144:                                       ; preds = %for.body136
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %defs.0, i64 0, i32 1, !dbg !3064
  br label %for.cond134, !dbg !3065, !llvm.loop !3066

for.end145:                                       ; preds = %for.body136
  %.lcssa44 = phi i32* [ %30, %for.body136 ], !dbg !3060
  %insn_info = getelementptr inbounds i32, i32* %.lcssa44, i64 6, !dbg !3068
  %31 = bitcast i32* %insn_info to i32***, !dbg !3068
  %32 = load i32**, i32*** %31, align 8, !dbg !3068
  %33 = load i32*, i32** %32, align 8, !dbg !3068
  %bf.load153 = load i32, i32* %33, align 8, !dbg !3068
  %bf.clear154 = and i32 %bf.load153, 65535, !dbg !3068
  %cmp155 = icmp eq i32 %bf.clear154, 8, !dbg !3068
  %34 = bitcast i32* %33 to %struct.rtx_def*, !dbg !3068
  br i1 %cmp155, label %cond.true184, label %lor.lhs.false157, !dbg !3068

lor.lhs.false157:                                 ; preds = %for.end145
  %cmp164 = icmp eq i32 %bf.clear154, 7, !dbg !3068
  br i1 %cmp164, label %cond.true184, label %lor.lhs.false166, !dbg !3068

lor.lhs.false166:                                 ; preds = %lor.lhs.false157
  %cmp173 = icmp eq i32 %bf.clear154, 9, !dbg !3068
  br i1 %cmp173, label %cond.true184, label %lor.lhs.false175, !dbg !3068

lor.lhs.false175:                                 ; preds = %lor.lhs.false166
  %cmp182 = icmp eq i32 %bf.clear154, 10, !dbg !3068
  br i1 %cmp182, label %cond.true184, label %cond.end223, !dbg !3068

cond.true184:                                     ; preds = %lor.lhs.false175, %lor.lhs.false166, %lor.lhs.false157, %for.end145
  %35 = getelementptr inbounds i32, i32* %33, i64 12, !dbg !3068
  %36 = bitcast i32* %35 to i32**, !dbg !3068
  %37 = load i32*, i32** %36, align 8, !dbg !3068
  %bf.load193 = load i32, i32* %37, align 8, !dbg !3068
  %bf.clear194 = and i32 %bf.load193, 65535, !dbg !3068
  %cmp195 = icmp eq i32 %bf.clear194, 23, !dbg !3068
  %38 = bitcast i32* %37 to %struct.rtx_def*, !dbg !3068
  br i1 %cmp195, label %cond.true197, label %cond.false206, !dbg !3068

cond.true197:                                     ; preds = %cond.true184
  br label %cond.end223, !dbg !3068

cond.false206:                                    ; preds = %cond.true184
  %call219 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %34, %struct.rtx_def* %38) #6, !dbg !3068
  br label %cond.end223, !dbg !3068

cond.end223:                                      ; preds = %lor.lhs.false175, %cond.true197, %cond.false206
  %cond224 = phi %struct.rtx_def* [ %38, %cond.true197 ], [ %call219, %cond.false206 ], [ null, %lor.lhs.false175 ], !dbg !3068
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond224, metadata !2959, metadata !DIExpression()), !dbg !3038
  %tobool225 = icmp eq %struct.rtx_def* %cond224, null, !dbg !3069
  br i1 %tobool225, label %cleanup, label %if.end227, !dbg !3071

if.end227:                                        ; preds = %cond.end223
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond224, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3072
  %40 = bitcast %union.rtunion_def* %39 to i32**, !dbg !3072
  %41 = load i32*, i32** %40, align 8, !dbg !3072
  %bf.load232 = load i32, i32* %41, align 8, !dbg !3072
  %bf.clear233 = and i32 %bf.load232, 65535, !dbg !3072
  %cmp234 = icmp eq i32 %bf.clear233, 49, !dbg !3074
  br i1 %cmp234, label %lor.lhs.false236, label %cleanup, !dbg !3075

lor.lhs.false236:                                 ; preds = %if.end227
  %arrayidx243 = getelementptr inbounds i32, i32* %41, i64 2, !dbg !3076
  %rt_rtx244 = bitcast i32* %arrayidx243 to %struct.rtx_def**, !dbg !3076
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx244, align 8, !dbg !3076
  %43 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3077
  %cmp245 = icmp eq %struct.rtx_def* %42, %43, !dbg !3078
  br i1 %cmp245, label %lor.lhs.false247, label %cleanup, !dbg !3079

lor.lhs.false247:                                 ; preds = %lor.lhs.false236
  %44 = getelementptr inbounds i32, i32* %41, i64 4, !dbg !3080
  %45 = bitcast i32* %44 to i32**, !dbg !3080
  %46 = load i32*, i32** %45, align 8, !dbg !3080
  %bf.load256 = load i32, i32* %46, align 8, !dbg !3080
  %bf.clear257 = and i32 %bf.load256, 65535, !dbg !3080
  %cmp258 = icmp eq i32 %bf.clear257, 30, !dbg !3080
  br i1 %cmp258, label %if.end261, label %cleanup, !dbg !3081

if.end261:                                        ; preds = %lor.lhs.false247
  %u270 = getelementptr inbounds i32, i32* %46, i64 2, !dbg !3082
  %arrayidx272 = bitcast i32* %u270 to i64*, !dbg !3082
  %47 = load i64, i64* %arrayidx272, align 8, !dbg !3082
  %add = add nsw i64 %off.0, %47, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %add, metadata !2952, metadata !DIExpression()), !dbg !3014
  br label %cleanup, !dbg !3084

cleanup.loopexit:                                 ; preds = %for.cond134
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false236, %if.end227, %cond.end223, %lor.lhs.false247, %for.end, %if.end261
  %off.1 = phi i64 [ %add, %if.end261 ], [ %off.0, %for.end ], [ %off.0, %cond.end223 ], [ %off.0, %lor.lhs.false247 ], [ %off.0, %lor.lhs.false236 ], [ %off.0, %if.end227 ], [ %off.0, %cleanup.loopexit ], !dbg !3014
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end261 ], [ 1, %for.end ], [ 1, %cond.end223 ], [ 1, %lor.lhs.false247 ], [ 1, %lor.lhs.false236 ], [ 1, %if.end227 ], [ 1, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i64 %off.1, metadata !2952, metadata !DIExpression()), !dbg !3014
  %cond3 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond3, label %if.end276, label %cleanup297

if.end276:                                        ; preds = %if.end105, %cleanup
  %off.2 = phi i64 [ %off.0, %if.end105 ], [ %off.1, %cleanup ], !dbg !3085
  call void @llvm.dbg.value(metadata i64 %off.2, metadata !2952, metadata !DIExpression()), !dbg !3014
  %cmp277 = icmp slt i64 %min_sp_off.0, %off.2, !dbg !3086
  %min_sp_off.0.off.2 = select i1 %cmp277, i64 %min_sp_off.0, i64 %off.2, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %min_sp_off.0.off.2, metadata !2942, metadata !DIExpression()), !dbg !2988
  %u283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond63, i64 0, i32 1, !dbg !3087
  %arrayidx285 = bitcast %union.u* %u283 to i64*, !dbg !3087
  %48 = load i64, i64* %arrayidx285, align 8, !dbg !3087
  %add286 = add nsw i64 %off.2, %48, !dbg !3087
  %cmp287 = icmp sgt i64 %max_sp_off.0, %add286, !dbg !3087
  br i1 %cmp287, label %cleanup297, label %cond.false290, !dbg !3087

cond.false290:                                    ; preds = %if.end276
  br label %cleanup297, !dbg !3087

cleanup297:                                       ; preds = %if.then108, %cond.false290, %if.end276, %cond.end62, %cleanup
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 1, %cond.end62 ], [ 1, %if.then108 ], [ 0, %if.end276 ], [ 0, %cond.false290 ]
  %max_sp_off.1 = phi i64 [ %max_sp_off.0, %cleanup ], [ %max_sp_off.0, %cond.end62 ], [ %max_sp_off.0, %if.then108 ], [ %max_sp_off.0, %if.end276 ], [ %add286, %cond.false290 ], !dbg !2988
  %min_sp_off.1 = phi i64 [ %min_sp_off.0, %cleanup ], [ %min_sp_off.0, %cond.end62 ], [ %min_sp_off.0, %if.then108 ], [ %min_sp_off.0.off.2, %if.end276 ], [ %min_sp_off.0.off.2, %cond.false290 ], !dbg !2988
  call void @llvm.dbg.value(metadata i64 %min_sp_off.1, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %max_sp_off.1, metadata !2943, metadata !DIExpression()), !dbg !2988
  %cond2 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond2, label %for.inc304, label %cleanup996.loopexit

for.inc304:                                       ; preds = %for.body, %land.lhs.true, %cleanup297
  %max_sp_off.2 = phi i64 [ %max_sp_off.0, %land.lhs.true ], [ %max_sp_off.0, %for.body ], [ %max_sp_off.1, %cleanup297 ], !dbg !3005
  %min_sp_off.2 = phi i64 [ %min_sp_off.0, %land.lhs.true ], [ %min_sp_off.0, %for.body ], [ %min_sp_off.1, %cleanup297 ], !dbg !3006
  call void @llvm.dbg.value(metadata i64 %min_sp_off.2, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %max_sp_off.2, metadata !2943, metadata !DIExpression()), !dbg !2988
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3088
  %rt_rtx308 = bitcast %union.rtunion_def* %49 to %struct.rtx_def**, !dbg !3088
  br label %for.cond, !dbg !3089, !llvm.loop !3090

for.end309:                                       ; preds = %for.cond
  %max_sp_off.0.lcssa = phi i64 [ %max_sp_off.0, %for.cond ], !dbg !3005
  %min_sp_off.0.lcssa = phi i64 [ %min_sp_off.0, %for.cond ], !dbg !3006
  call void @llvm.dbg.value(metadata i64 %max_sp_off.0.lcssa, metadata !2943, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %min_sp_off.0.lcssa, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %max_sp_off.0.lcssa, metadata !2943, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %min_sp_off.0.lcssa, metadata !2942, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %max_sp_off.0.lcssa, metadata !2943, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %min_sp_off.0.lcssa, metadata !2942, metadata !DIExpression()), !dbg !2988
  %cmp310 = icmp slt i64 %min_sp_off.0.lcssa, %max_sp_off.0.lcssa, !dbg !3092
  br i1 %cmp310, label %if.end313, label %cleanup996, !dbg !3094

if.end313:                                        ; preds = %for.end309
  %call314 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3095
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call314, metadata !2944, metadata !DIExpression()), !dbg !2988
  br label %for.cond319, !dbg !3096

for.cond319:                                      ; preds = %for.inc573, %if.end313
  %p.1.in = phi %struct.rtx_def** [ %rt_rtx, %if.end313 ], [ %rt_rtx577, %for.inc573 ]
  %p.1 = load %struct.rtx_def*, %struct.rtx_def** %p.1.in, align 8, !dbg !3097
  call void @llvm.dbg.value(metadata %struct.rtx_def* %p.1, metadata !2938, metadata !DIExpression()), !dbg !2988
  %tobool320 = icmp eq %struct.rtx_def* %p.1, null, !dbg !3098
  br i1 %tobool320, label %for.end578, label %for.body321, !dbg !3098

for.body321:                                      ; preds = %for.cond319
  %arrayidx324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3099
  %50 = bitcast %union.rtunion_def* %arrayidx324 to i32**, !dbg !3099
  %51 = load i32*, i32** %50, align 8, !dbg !3099
  %bf.load326 = load i32, i32* %51, align 8, !dbg !3099
  %bf.clear327 = and i32 %bf.load326, 65535, !dbg !3099
  %cmp328 = icmp eq i32 %bf.clear327, 24, !dbg !3100
  br i1 %cmp328, label %land.lhs.true330, label %for.inc573, !dbg !3101

land.lhs.true330:                                 ; preds = %for.body321
  %arrayidx337 = getelementptr inbounds i32, i32* %51, i64 2, !dbg !3102
  %52 = bitcast i32* %arrayidx337 to i32**, !dbg !3102
  %53 = load i32*, i32** %52, align 8, !dbg !3102
  %bf.load339 = load i32, i32* %53, align 8, !dbg !3102
  %bf.clear340 = and i32 %bf.load339, 65535, !dbg !3102
  %cmp341 = icmp eq i32 %bf.clear340, 43, !dbg !3102
  br i1 %cmp341, label %if.then343, label %for.inc573, !dbg !3103

if.then343:                                       ; preds = %land.lhs.true330
  call void @llvm.dbg.value(metadata i32* %53, metadata !2960, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 0, metadata !2966, metadata !DIExpression()), !dbg !3104
  %arrayidx357 = getelementptr inbounds i32, i32* %53, i64 2, !dbg !3105
  %rt_rtx358 = bitcast i32* %arrayidx357 to %struct.rtx_def**, !dbg !3105
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx358, align 8, !dbg !3105
  call void @llvm.dbg.value(metadata %struct.rtx_def* %54, metadata !2965, metadata !DIExpression()), !dbg !3104
  %55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 0, !dbg !3106
  %bf.load359 = load i32, i32* %55, align 8, !dbg !3106
  %bf.clear360 = and i32 %bf.load359, 65535, !dbg !3106
  %cmp361 = icmp eq i32 %bf.clear360, 49, !dbg !3108
  br i1 %cmp361, label %land.lhs.true363, label %if.end393, !dbg !3109

land.lhs.true363:                                 ; preds = %if.then343
  %arrayidx366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3110
  %56 = bitcast %union.rtunion_def* %arrayidx366 to i32**, !dbg !3110
  %57 = load i32*, i32** %56, align 8, !dbg !3110
  %bf.load368 = load i32, i32* %57, align 8, !dbg !3110
  %bf.clear369 = and i32 %bf.load368, 65535, !dbg !3110
  %cmp370 = icmp eq i32 %bf.clear369, 37, !dbg !3110
  %58 = bitcast i32* %57 to %struct.rtx_def*, !dbg !3111
  br i1 %cmp370, label %land.lhs.true372, label %if.end393, !dbg !3111

land.lhs.true372:                                 ; preds = %land.lhs.true363
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3112
  %60 = bitcast %union.rtunion_def* %59 to i32**, !dbg !3112
  %61 = load i32*, i32** %60, align 8, !dbg !3112
  %bf.load377 = load i32, i32* %61, align 8, !dbg !3112
  %bf.clear378 = and i32 %bf.load377, 65535, !dbg !3112
  %cmp379 = icmp eq i32 %bf.clear378, 30, !dbg !3112
  br i1 %cmp379, label %if.then381, label %if.end393, !dbg !3113

if.then381:                                       ; preds = %land.lhs.true372
  %u386 = getelementptr inbounds i32, i32* %61, i64 2, !dbg !3114
  %arrayidx388 = bitcast i32* %u386 to i64*, !dbg !3114
  %62 = load i64, i64* %arrayidx388, align 8, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %62, metadata !2966, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata %struct.rtx_def* %58, metadata !2965, metadata !DIExpression()), !dbg !3104
  br label %if.end393, !dbg !3116

if.end393:                                        ; preds = %if.then381, %land.lhs.true372, %land.lhs.true363, %if.then343
  %off354.0 = phi i64 [ %62, %if.then381 ], [ 0, %land.lhs.true372 ], [ 0, %land.lhs.true363 ], [ 0, %if.then343 ], !dbg !3104
  %addr353.0 = phi %struct.rtx_def* [ %58, %if.then381 ], [ %54, %land.lhs.true372 ], [ %54, %land.lhs.true363 ], [ %54, %if.then343 ], !dbg !3104
  call void @llvm.dbg.value(metadata %struct.rtx_def* %addr353.0, metadata !2965, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %off354.0, metadata !2966, metadata !DIExpression()), !dbg !3104
  %63 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3117
  %cmp394 = icmp eq %struct.rtx_def* %addr353.0, %63, !dbg !3118
  br i1 %cmp394, label %if.end524, label %if.then396, !dbg !3119

if.then396:                                       ; preds = %if.end393
  %64 = load %struct.df*, %struct.df** @df, align 8, !dbg !3120
  %insns400 = getelementptr inbounds %struct.df, %struct.df* %64, i64 0, i32 10, !dbg !3120
  %65 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns400, align 8, !dbg !3120
  %66 = load i32, i32* %rt_int, align 8, !dbg !3120
  %idxprom405 = sext i32 %66 to i64, !dbg !3120
  %arrayidx406 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %65, i64 %idxprom405, !dbg !3120
  %67 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx406, align 8, !dbg !3120
  %uses407 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %67, i64 0, i32 2, !dbg !3120
  %68 = load %union.df_ref_d**, %union.df_ref_d*** %uses407, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata %union.df_ref_d** %68, metadata !2968, metadata !DIExpression()), !dbg !3122
  br label %for.cond408, !dbg !3123

for.cond408:                                      ; preds = %for.inc417, %if.then396
  %use_rec397.0 = phi %union.df_ref_d** [ %68, %if.then396 ], [ %incdec.ptr418, %for.inc417 ], !dbg !3124
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec397.0, metadata !2968, metadata !DIExpression()), !dbg !3122
  %69 = load %union.df_ref_d*, %union.df_ref_d** %use_rec397.0, align 8, !dbg !3125
  %tobool409 = icmp eq %union.df_ref_d* %69, null, !dbg !3127
  br i1 %tobool409, label %for.cond408.for.end419_crit_edge, label %for.body410, !dbg !3127

for.cond408.for.end419_crit_edge:                 ; preds = %for.cond408
  %.lcssa37 = phi %union.df_ref_d* [ %69, %for.cond408 ], !dbg !3125
  %70 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %.lcssa37, i64 0, i32 0, i32 0, i32 0, !dbg !3127
  br label %for.end419, !dbg !3127

for.body410:                                      ; preds = %for.cond408
  %reg412 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %69, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3128
  %71 = load %struct.rtx_def*, %struct.rtx_def** %reg412, align 8, !dbg !3128
  %call413 = tail call i32 @rtx_equal_p(%struct.rtx_def* %addr353.0, %struct.rtx_def* %71) #6, !dbg !3130
  %tobool414 = icmp eq i32 %call413, 0, !dbg !3130
  br i1 %tobool414, label %for.inc417, label %for.body410.for.end419_crit_edge, !dbg !3131

for.body410.for.end419_crit_edge:                 ; preds = %for.body410
  %use_rec397.0.lcssa39 = phi %union.df_ref_d** [ %use_rec397.0, %for.body410 ], !dbg !3124
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec397.0.lcssa39, metadata !2968, metadata !DIExpression()), !dbg !3122
  %72 = bitcast %union.df_ref_d** %use_rec397.0.lcssa39 to %struct.df_base_ref**, !dbg !3128
  %.pre13 = load %struct.df_base_ref*, %struct.df_base_ref** %72, align 8, !dbg !3132
  br label %for.end419, !dbg !3131

for.inc417:                                       ; preds = %for.body410
  %incdec.ptr418 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec397.0, i64 1, !dbg !3134
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr418, metadata !2968, metadata !DIExpression()), !dbg !3122
  br label %for.cond408, !dbg !3135, !llvm.loop !3136

for.end419:                                       ; preds = %for.cond408.for.end419_crit_edge, %for.body410.for.end419_crit_edge
  %73 = phi %struct.df_base_ref* [ %.pre13, %for.body410.for.end419_crit_edge ], [ %70, %for.cond408.for.end419_crit_edge ], !dbg !3132
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec397.0, metadata !2968, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec397.0, metadata !2968, metadata !DIExpression()), !dbg !3122
  %chain421 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %73, i64 0, i32 2, !dbg !3132
  br label %for.cond422, !dbg !3138

for.cond422:                                      ; preds = %for.inc433, %for.end419
  %defs398.0.in = phi %struct.df_link** [ %chain421, %for.end419 ], [ %next434, %for.inc433 ]
  %defs398.0 = load %struct.df_link*, %struct.df_link** %defs398.0.in, align 8, !dbg !3139
  call void @llvm.dbg.value(metadata %struct.df_link* %defs398.0, metadata !2971, metadata !DIExpression()), !dbg !3122
  %tobool423 = icmp eq %struct.df_link* %defs398.0, null, !dbg !3140
  br i1 %tobool423, label %for.cond422.for.end435_crit_edge, label %for.body424, !dbg !3140

for.cond422.for.end435_crit_edge:                 ; preds = %for.cond422
  store %struct.df_base_ref* undef, %struct.df_base_ref** null, align 536870912, !dbg !3141
  br label %for.end435, !dbg !3140

for.body424:                                      ; preds = %for.cond422
  %74 = bitcast %struct.df_link* %defs398.0 to i32**, !dbg !3142
  %75 = load i32*, i32** %74, align 8, !dbg !3142
  %bf.load427 = load i32, i32* %75, align 8, !dbg !3142
  %bf.clear428 = and i32 %bf.load427, 255, !dbg !3142
  %cmp429 = icmp eq i32 %bf.clear428, 1, !dbg !3142
  %76 = bitcast i32* %75 to %struct.df_base_ref*, !dbg !3145
  br i1 %cmp429, label %for.inc433, label %for.end435.loopexit, !dbg !3145

for.inc433:                                       ; preds = %for.body424
  %next434 = getelementptr inbounds %struct.df_link, %struct.df_link* %defs398.0, i64 0, i32 1, !dbg !3146
  br label %for.cond422, !dbg !3147, !llvm.loop !3148

for.end435.loopexit:                              ; preds = %for.body424
  %.lcssa40 = phi %struct.df_base_ref* [ %76, %for.body424 ], !dbg !3145
  br label %for.end435, !dbg !3141

for.end435:                                       ; preds = %for.end435.loopexit, %for.cond422.for.end435_crit_edge
  %77 = phi %struct.df_base_ref* [ undef, %for.cond422.for.end435_crit_edge ], [ %.lcssa40, %for.end435.loopexit ]
  %78 = phi %struct.df_base_ref* [ undef, %for.cond422.for.end435_crit_edge ], [ %.lcssa40, %for.end435.loopexit ]
  %79 = phi %struct.df_base_ref* [ undef, %for.cond422.for.end435_crit_edge ], [ %.lcssa40, %for.end435.loopexit ]
  br label %cond.true471, !dbg !3141

lor.lhs.false444:                                 ; No predecessors!
  unreachable, !dbg !3141

lor.lhs.false453:                                 ; No predecessors!
  unreachable, !dbg !3141

lor.lhs.false462:                                 ; No predecessors!
  unreachable, !dbg !3141

cond.true471:                                     ; preds = %for.end435
  %insn_info474 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %79, i64 0, i32 3, !dbg !3141
  %80 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info474, align 8, !dbg !3141
  %insn475 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %80, i64 0, i32 0, !dbg !3141
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn475, align 8, !dbg !3141
  %u476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i64 0, i32 1, !dbg !3141
  %82 = getelementptr inbounds %union.u, %union.u* %u476, i64 1, i32 0, i32 0, i64 0, !dbg !3141
  %83 = bitcast %union.rtunion_def* %82 to i32**, !dbg !3141
  %84 = load i32*, i32** %83, align 8, !dbg !3141
  %bf.load480 = load i32, i32* %84, align 8, !dbg !3141
  %bf.clear481 = and i32 %bf.load480, 65535, !dbg !3141
  %cmp482 = icmp eq i32 %bf.clear481, 23, !dbg !3141
  %insn_info487 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %78, i64 0, i32 3, !dbg !3141
  %85 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info487, align 8, !dbg !3141
  %insn488 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %85, i64 0, i32 0, !dbg !3141
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn488, align 8, !dbg !3141
  br i1 %cmp482, label %cond.true484, label %cond.false493, !dbg !3141

cond.true484:                                     ; preds = %cond.true471
  %u489 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i64 0, i32 1, !dbg !3141
  %87 = getelementptr inbounds %union.u, %union.u* %u489, i64 1, i32 0, i32 0, i64 0, !dbg !3141
  %rt_rtx492 = bitcast %union.rtunion_def* %87 to %struct.rtx_def**, !dbg !3141
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx492, align 8, !dbg !3141
  br label %cond.end510, !dbg !3141

cond.false493:                                    ; preds = %cond.true471
  %insn_info500 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %77, i64 0, i32 3, !dbg !3141
  %89 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info500, align 8, !dbg !3141
  %insn501 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %89, i64 0, i32 0, !dbg !3141
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn501, align 8, !dbg !3141
  %u502 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i64 0, i32 1, !dbg !3141
  %91 = getelementptr inbounds %union.u, %union.u* %u502, i64 1, i32 0, i32 0, i64 0, !dbg !3141
  %rt_rtx505 = bitcast %union.rtunion_def* %91 to %struct.rtx_def**, !dbg !3141
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx505, align 8, !dbg !3141
  %call506 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %86, %struct.rtx_def* %92) #6, !dbg !3141
  br label %cond.end510, !dbg !3141

cond.end510:                                      ; preds = %cond.true484, %cond.false493
  %cond511 = phi %struct.rtx_def* [ %88, %cond.true484 ], [ %call506, %cond.false493 ], !dbg !3141
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond511, metadata !2972, metadata !DIExpression()), !dbg !3122
  %93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond511, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3150
  %rt_rtx515 = bitcast %union.rtunion_def* %93 to %struct.rtx_def**, !dbg !3150
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx515, align 8, !dbg !3150
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3150
  %rt_rtx519 = bitcast %union.rtunion_def* %95 to %struct.rtx_def**, !dbg !3150
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx519, align 8, !dbg !3150
  %u520 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i64 0, i32 1, !dbg !3150
  %arrayidx522 = bitcast %union.u* %u520 to i64*, !dbg !3150
  %97 = load i64, i64* %arrayidx522, align 8, !dbg !3150
  %add523 = add nsw i64 %off354.0, %97, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %add523, metadata !2966, metadata !DIExpression()), !dbg !3104
  br label %if.end524, !dbg !3152

if.end524:                                        ; preds = %if.end393, %cond.end510
  %off354.1 = phi i64 [ %add523, %cond.end510 ], [ %off354.0, %if.end393 ], !dbg !3104
  call void @llvm.dbg.value(metadata i64 %off354.1, metadata !2966, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 %off354.1, metadata !2967, metadata !DIExpression()), !dbg !3104
  %98 = getelementptr inbounds i32, i32* %53, i64 4, !dbg !3153
  %rt_mem529 = bitcast i32* %98 to %struct.mem_attrs**, !dbg !3153
  br label %for.cond525, !dbg !3156

for.cond525:                                      ; preds = %for.inc570, %if.end524
  %byte.0 = phi i64 [ %off354.1, %if.end524 ], [ %inc, %for.inc570 ], !dbg !3157
  call void @llvm.dbg.value(metadata i64 %byte.0, metadata !2967, metadata !DIExpression()), !dbg !3104
  %99 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem529, align 8, !dbg !3158
  %cmp530 = icmp eq %struct.mem_attrs* %99, null, !dbg !3158
  br i1 %cmp530, label %cond.false538, label %cond.true532, !dbg !3158

cond.true532:                                     ; preds = %for.cond525
  %size537 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %99, i64 0, i32 2, !dbg !3158
  %100 = load %struct.rtx_def*, %struct.rtx_def** %size537, align 8, !dbg !3158
  br label %cond.end556, !dbg !3158

cond.false538:                                    ; preds = %for.cond525
  %bf.load545 = load i32, i32* %53, align 8, !dbg !3158
  %bf.lshr546 = lshr i32 %bf.load545, 16, !dbg !3158
  %bf.clear547 = and i32 %bf.lshr546, 255, !dbg !3158
  %idxprom548 = zext i32 %bf.clear547 to i64, !dbg !3158
  %arrayidx549 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom548, !dbg !3158
  %101 = load i8, i8* %arrayidx549, align 1, !dbg !3158
  %conv551 = zext i8 %101 to i64, !dbg !3158
  %call552 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv551) #6, !dbg !3158
  br label %cond.end556, !dbg !3158

cond.end556:                                      ; preds = %cond.false538, %cond.true532
  %cond557 = phi %struct.rtx_def* [ %100, %cond.true532 ], [ %call552, %cond.false538 ], !dbg !3158
  %u558 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond557, i64 0, i32 1, !dbg !3158
  %arrayidx560 = bitcast %union.u* %u558 to i64*, !dbg !3158
  %102 = load i64, i64* %arrayidx560, align 8, !dbg !3158
  %add561 = add nsw i64 %off354.1, %102, !dbg !3159
  %cmp562 = icmp slt i64 %byte.0, %add561, !dbg !3160
  br i1 %cmp562, label %for.body564, label %for.inc573.loopexit, !dbg !3161

for.body564:                                      ; preds = %cond.end556
  %sub = sub nsw i64 %byte.0, %min_sp_off.0.lcssa, !dbg !3162
  %conv565 = trunc i64 %sub to i32, !dbg !3165
  %call566 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call314, i32 %conv565) #6, !dbg !3166
  %tobool567 = icmp eq i8 %call566, 0, !dbg !3166
  br i1 %tobool567, label %if.then568, label %for.inc570, !dbg !3167

if.then568:                                       ; preds = %for.body564
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3168
  br label %for.inc570, !dbg !3168

for.inc570:                                       ; preds = %for.body564, %if.then568
  %inc = add nsw i64 %byte.0, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2967, metadata !DIExpression()), !dbg !3104
  br label %for.cond525, !dbg !3170, !llvm.loop !3171

for.inc573.loopexit:                              ; preds = %cond.end556
  br label %for.inc573, !dbg !3173

for.inc573:                                       ; preds = %for.inc573.loopexit, %for.body321, %land.lhs.true330
  %103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %p.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3173
  %rt_rtx577 = bitcast %union.rtunion_def* %103 to %struct.rtx_def**, !dbg !3173
  br label %for.cond319, !dbg !3174, !llvm.loop !3175

for.end578:                                       ; preds = %for.cond319
  call void @llvm.dbg.value(metadata i8 0, metadata !2941, metadata !DIExpression()), !dbg !2988
  %104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call_insn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3177
  %rt_rtx582 = bitcast %union.rtunion_def* %104 to %struct.rtx_def**, !dbg !3177
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx582, align 8, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.rtx_def* %105, metadata !2939, metadata !DIExpression()), !dbg !2988
  %arrayidx593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call_insn, i64 0, i32 1, i32 0, i32 1, !dbg !3178
  %rt_bb = bitcast %struct.object_block** %arrayidx593 to %struct.basic_block_def**, !dbg !3178
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %call314, i64 0, i32 0, !dbg !3180
  br label %for.cond583, !dbg !3182

for.cond583:                                      ; preds = %cleanup982, %for.end578
  %ret.0 = phi i8 [ 0, %for.end578 ], [ %ret.1, %cleanup982 ], !dbg !3183
  %insn.0 = phi %struct.rtx_def* [ %105, %for.end578 ], [ %prev_insn.0, %cleanup982 ], !dbg !3184
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2939, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 %ret.0, metadata !2941, metadata !DIExpression()), !dbg !2988
  %tobool584 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3185
  br i1 %tobool584, label %for.end990, label %for.body585, !dbg !3185

for.body585:                                      ; preds = %for.cond583
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3186
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i64 0, i32 7, !dbg !3186
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3186
  %107 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3186
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %107, i64 0, i32 0, !dbg !3186
  %108 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3186
  %cmp594 = icmp eq %struct.rtx_def* %insn.0, %108, !dbg !3187
  br i1 %cmp594, label %if.end602, label %if.else597, !dbg !3188

if.else597:                                       ; preds = %for.body585
  %109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3189
  %rt_rtx601 = bitcast %union.rtunion_def* %109 to %struct.rtx_def**, !dbg !3189
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx601, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.rtx_def* %110, metadata !2940, metadata !DIExpression()), !dbg !2988
  br label %if.end602

if.end602:                                        ; preds = %for.body585, %if.else597
  %prev_insn.0 = phi %struct.rtx_def* [ %110, %if.else597 ], [ null, %for.body585 ], !dbg !3178
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev_insn.0, metadata !2940, metadata !DIExpression()), !dbg !2988
  %111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3190
  %bf.load603 = load i32, i32* %111, align 8, !dbg !3190
  %bf.clear604 = and i32 %bf.load603, 65535, !dbg !3190
  %cmp605 = icmp eq i32 %bf.clear604, 10, !dbg !3190
  br i1 %cmp605, label %cleanup982, label %if.end608, !dbg !3192

if.end608:                                        ; preds = %if.end602
  %cmp611 = icmp eq i32 %bf.clear604, 8, !dbg !3193
  br i1 %cmp611, label %if.end629, label %lor.lhs.false613, !dbg !3193

lor.lhs.false613:                                 ; preds = %if.end608
  %cmp616 = icmp eq i32 %bf.clear604, 7, !dbg !3193
  br i1 %cmp616, label %if.end629, label %lor.lhs.false618, !dbg !3193

lor.lhs.false618:                                 ; preds = %lor.lhs.false613
  %cmp621 = icmp eq i32 %bf.clear604, 9, !dbg !3193
  br i1 %cmp621, label %if.end629, label %lor.lhs.false623, !dbg !3193

lor.lhs.false623:                                 ; preds = %lor.lhs.false618
  br i1 false, label %lor.lhs.false623.if.end629_crit_edge, label %cleanup982, !dbg !3195

lor.lhs.false623.if.end629_crit_edge:             ; preds = %lor.lhs.false623
  br label %if.end629, !dbg !3195

if.end629:                                        ; preds = %lor.lhs.false623.if.end629_crit_edge, %lor.lhs.false618, %lor.lhs.false613, %if.end608
  br i1 %cmp611, label %cond.true649, label %lor.lhs.false634, !dbg !3196

lor.lhs.false634:                                 ; preds = %if.end629
  %cmp637 = icmp eq i32 %bf.clear604, 7, !dbg !3196
  br i1 %cmp637, label %cond.true649, label %lor.lhs.false639, !dbg !3196

lor.lhs.false639:                                 ; preds = %lor.lhs.false634
  %cmp642 = icmp eq i32 %bf.clear604, 9, !dbg !3196
  br i1 %cmp642, label %cond.true649, label %lor.lhs.false644, !dbg !3196

lor.lhs.false644:                                 ; preds = %lor.lhs.false639
  br i1 false, label %lor.lhs.false644.cond.true649_crit_edge, label %cond.end672, !dbg !3196

lor.lhs.false644.cond.true649_crit_edge:          ; preds = %lor.lhs.false644
  br label %cond.true649, !dbg !3196

cond.true649:                                     ; preds = %lor.lhs.false644.cond.true649_crit_edge, %lor.lhs.false639, %lor.lhs.false634, %if.end629
  %u650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3196
  %112 = getelementptr inbounds %union.u, %union.u* %u650, i64 1, i32 0, i32 0, i64 0, !dbg !3196
  %113 = bitcast %union.rtunion_def* %112 to i32**, !dbg !3196
  %114 = load i32*, i32** %113, align 8, !dbg !3196
  %bf.load654 = load i32, i32* %114, align 8, !dbg !3196
  %bf.clear655 = and i32 %bf.load654, 65535, !dbg !3196
  %cmp656 = icmp eq i32 %bf.clear655, 23, !dbg !3196
  %115 = bitcast i32* %114 to %struct.rtx_def*, !dbg !3196
  br i1 %cmp656, label %cond.end672, label %cond.false663, !dbg !3196

cond.false663:                                    ; preds = %cond.true649
  %call668 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %115) #6, !dbg !3196
  br label %cond.end672, !dbg !3196

cond.end672:                                      ; preds = %lor.lhs.false644, %cond.false663, %cond.true649
  %cond673 = phi %struct.rtx_def* [ %call668, %cond.false663 ], [ %115, %cond.true649 ], [ null, %lor.lhs.false644 ], !dbg !3196
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond673, metadata !2973, metadata !DIExpression()), !dbg !3197
  %tobool674 = icmp eq %struct.rtx_def* %cond673, null, !dbg !3198
  br i1 %tobool674, label %cleanup982, label %lor.lhs.false675, !dbg !3200

lor.lhs.false675:                                 ; preds = %cond.end672
  %arrayidx678 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond673, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3201
  %rt_rtx679 = bitcast %union.rtunion_def* %arrayidx678 to %struct.rtx_def**, !dbg !3201
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx679, align 8, !dbg !3201
  %117 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3202
  %cmp680 = icmp eq %struct.rtx_def* %116, %117, !dbg !3203
  br i1 %cmp680, label %cleanup982, label %if.end683, !dbg !3204

if.end683:                                        ; preds = %lor.lhs.false675
  %118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i64 0, i32 0, !dbg !3204
  %bf.load688 = load i32, i32* %118, align 8, !dbg !3205
  %bf.clear689 = and i32 %bf.load688, 65535, !dbg !3205
  %cmp690 = icmp eq i32 %bf.clear689, 43, !dbg !3205
  br i1 %cmp690, label %if.end693, label %cleanup982, !dbg !3207

if.end693:                                        ; preds = %if.end683
  call void @llvm.dbg.value(metadata %struct.rtx_def* %116, metadata !2977, metadata !DIExpression()), !dbg !3197
  %arrayidx700 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3208
  %rt_rtx701 = bitcast %union.rtunion_def* %arrayidx700 to %struct.rtx_def**, !dbg !3208
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx701, align 8, !dbg !3208
  call void @llvm.dbg.value(metadata %struct.rtx_def* %119, metadata !2978, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 0, metadata !2979, metadata !DIExpression()), !dbg !3197
  %120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i64 0, i32 0, !dbg !3209
  %bf.load702 = load i32, i32* %120, align 8, !dbg !3209
  %bf.clear703 = and i32 %bf.load702, 65535, !dbg !3209
  %cmp704 = icmp eq i32 %bf.clear703, 49, !dbg !3211
  br i1 %cmp704, label %land.lhs.true706, label %if.end736, !dbg !3212

land.lhs.true706:                                 ; preds = %if.end693
  %arrayidx709 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3213
  %121 = bitcast %union.rtunion_def* %arrayidx709 to i32**, !dbg !3213
  %122 = load i32*, i32** %121, align 8, !dbg !3213
  %bf.load711 = load i32, i32* %122, align 8, !dbg !3213
  %bf.clear712 = and i32 %bf.load711, 65535, !dbg !3213
  %cmp713 = icmp eq i32 %bf.clear712, 37, !dbg !3213
  %123 = bitcast i32* %122 to %struct.rtx_def*, !dbg !3214
  br i1 %cmp713, label %land.lhs.true715, label %if.end736, !dbg !3214

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3215
  %125 = bitcast %union.rtunion_def* %124 to i32**, !dbg !3215
  %126 = load i32*, i32** %125, align 8, !dbg !3215
  %bf.load720 = load i32, i32* %126, align 8, !dbg !3215
  %bf.clear721 = and i32 %bf.load720, 65535, !dbg !3215
  %cmp722 = icmp eq i32 %bf.clear721, 30, !dbg !3215
  br i1 %cmp722, label %if.then724, label %if.end736, !dbg !3216

if.then724:                                       ; preds = %land.lhs.true715
  %u729 = getelementptr inbounds i32, i32* %126, i64 2, !dbg !3217
  %arrayidx731 = bitcast i32* %u729 to i64*, !dbg !3217
  %127 = load i64, i64* %arrayidx731, align 8, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %127, metadata !2979, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata %struct.rtx_def* %123, metadata !2978, metadata !DIExpression()), !dbg !3197
  br label %if.end736, !dbg !3219

if.end736:                                        ; preds = %if.then724, %land.lhs.true715, %land.lhs.true706, %if.end693
  %addr588.0 = phi %struct.rtx_def* [ %123, %if.then724 ], [ %119, %land.lhs.true715 ], [ %119, %land.lhs.true706 ], [ %119, %if.end693 ], !dbg !3197
  %off589.0 = phi i64 [ %127, %if.then724 ], [ 0, %land.lhs.true715 ], [ 0, %land.lhs.true706 ], [ 0, %if.end693 ], !dbg !3197
  call void @llvm.dbg.value(metadata i64 %off589.0, metadata !2979, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata %struct.rtx_def* %addr588.0, metadata !2978, metadata !DIExpression()), !dbg !3197
  %cmp737 = icmp eq %struct.rtx_def* %addr588.0, %117, !dbg !3220
  br i1 %cmp737, label %if.end927, label %if.then739, !dbg !3221

if.then739:                                       ; preds = %if.end736
  %128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %addr588.0, i64 0, i32 0, !dbg !3222
  %bf.load740 = load i32, i32* %128, align 8, !dbg !3222
  %bf.clear741 = and i32 %bf.load740, 65535, !dbg !3222
  %cmp742 = icmp ne i32 %bf.clear741, 37, !dbg !3222
  %or.cond7 = or i1 %cmp742, %tobool115, !dbg !3224
  br i1 %or.cond7, label %cleanup982, label %if.then747, !dbg !3224

if.then747:                                       ; preds = %if.then739
  %129 = load %struct.df*, %struct.df** @df, align 8, !dbg !3225
  %insns751 = getelementptr inbounds %struct.df, %struct.df* %129, i64 0, i32 10, !dbg !3225
  %130 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns751, align 8, !dbg !3225
  %arrayidx754 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3225
  %rt_int755 = bitcast %union.rtunion_def* %arrayidx754 to i32*, !dbg !3225
  %131 = load i32, i32* %rt_int755, align 8, !dbg !3225
  %idxprom756 = sext i32 %131 to i64, !dbg !3225
  %arrayidx757 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %130, i64 %idxprom756, !dbg !3225
  %132 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx757, align 8, !dbg !3225
  %uses758 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %132, i64 0, i32 2, !dbg !3225
  %133 = load %union.df_ref_d**, %union.df_ref_d*** %uses758, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %union.df_ref_d** %133, metadata !2981, metadata !DIExpression()), !dbg !3227
  br label %for.cond759, !dbg !3228

for.cond759:                                      ; preds = %for.inc768, %if.then747
  %use_rec748.0 = phi %union.df_ref_d** [ %133, %if.then747 ], [ %incdec.ptr769, %for.inc768 ], !dbg !3229
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec748.0, metadata !2981, metadata !DIExpression()), !dbg !3227
  %134 = load %union.df_ref_d*, %union.df_ref_d** %use_rec748.0, align 8, !dbg !3230
  %tobool760 = icmp eq %union.df_ref_d* %134, null, !dbg !3232
  br i1 %tobool760, label %for.end770.loopexit, label %for.body761, !dbg !3232

for.body761:                                      ; preds = %for.cond759
  %reg763 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %134, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3233
  %135 = load %struct.rtx_def*, %struct.rtx_def** %reg763, align 8, !dbg !3233
  %call764 = tail call i32 @rtx_equal_p(%struct.rtx_def* %addr588.0, %struct.rtx_def* %135) #6, !dbg !3235
  %tobool765 = icmp eq i32 %call764, 0, !dbg !3235
  br i1 %tobool765, label %for.inc768, label %for.body761.for.end770_crit_edge, !dbg !3236

for.body761.for.end770_crit_edge:                 ; preds = %for.body761
  %use_rec748.0.lcssa35 = phi %union.df_ref_d** [ %use_rec748.0, %for.body761 ], !dbg !3229
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec748.0.lcssa35, metadata !2981, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec748.0.lcssa35, metadata !2981, metadata !DIExpression()), !dbg !3227
  %.pre16 = load %union.df_ref_d*, %union.df_ref_d** %use_rec748.0.lcssa35, align 8, !dbg !3237
  br label %for.end770, !dbg !3236

for.inc768:                                       ; preds = %for.body761
  %incdec.ptr769 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec748.0, i64 1, !dbg !3239
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr769, metadata !2981, metadata !DIExpression()), !dbg !3227
  br label %for.cond759, !dbg !3240, !llvm.loop !3241

for.end770.loopexit:                              ; preds = %for.cond759
  %.lcssa = phi %union.df_ref_d* [ %134, %for.cond759 ], !dbg !3230
  br label %for.end770, !dbg !3243

for.end770:                                       ; preds = %for.end770.loopexit, %for.body761.for.end770_crit_edge
  %.pre16.pn = phi %union.df_ref_d* [ %.pre16, %for.body761.for.end770_crit_edge ], [ %.lcssa, %for.end770.loopexit ]
  %136 = phi %union.df_ref_d* [ %.pre16, %for.body761.for.end770_crit_edge ], [ null, %for.end770.loopexit ], !dbg !3237
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec748.0, metadata !2981, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec748.0, metadata !2981, metadata !DIExpression()), !dbg !3227
  %cmp771 = icmp eq %union.df_ref_d* %136, null, !dbg !3243
  br i1 %cmp771, label %cleanup920, label %if.end774, !dbg !3244

if.end774:                                        ; preds = %for.end770
  %chain776 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %.pre16.pn, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3245
  br label %for.cond777, !dbg !3247

for.cond777:                                      ; preds = %for.inc788, %if.end774
  %defs749.0.in = phi %struct.df_link** [ %chain776, %if.end774 ], [ %next789, %for.inc788 ]
  %defs749.0 = load %struct.df_link*, %struct.df_link** %defs749.0.in, align 8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.df_link* %defs749.0, metadata !2986, metadata !DIExpression()), !dbg !3227
  %cond8 = icmp eq %struct.df_link* %defs749.0, null, !dbg !3249
  br i1 %cond8, label %cleanup920.loopexit, label %for.body779, !dbg !3249

for.body779:                                      ; preds = %for.cond777
  %137 = bitcast %struct.df_link* %defs749.0 to i32**, !dbg !3250
  %138 = load i32*, i32** %137, align 8, !dbg !3250
  %bf.load782 = load i32, i32* %138, align 8, !dbg !3250
  %bf.clear783 = and i32 %bf.load782, 255, !dbg !3250
  %cmp784 = icmp eq i32 %bf.clear783, 1, !dbg !3250
  br i1 %cmp784, label %for.inc788, label %for.end790, !dbg !3253

for.inc788:                                       ; preds = %for.body779
  %next789 = getelementptr inbounds %struct.df_link, %struct.df_link* %defs749.0, i64 0, i32 1, !dbg !3254
  br label %for.cond777, !dbg !3255, !llvm.loop !3256

for.end790:                                       ; preds = %for.body779
  %.lcssa36 = phi i32* [ %138, %for.body779 ], !dbg !3250
  %insn_info797 = getelementptr inbounds i32, i32* %.lcssa36, i64 6, !dbg !3258
  %139 = bitcast i32* %insn_info797 to i32***, !dbg !3258
  %140 = load i32**, i32*** %139, align 8, !dbg !3258
  %141 = load i32*, i32** %140, align 8, !dbg !3258
  %bf.load799 = load i32, i32* %141, align 8, !dbg !3258
  %bf.clear800 = and i32 %bf.load799, 65535, !dbg !3258
  %cmp801 = icmp eq i32 %bf.clear800, 8, !dbg !3258
  %142 = bitcast i32* %141 to %struct.rtx_def*, !dbg !3258
  br i1 %cmp801, label %cond.true830, label %lor.lhs.false803, !dbg !3258

lor.lhs.false803:                                 ; preds = %for.end790
  %cmp810 = icmp eq i32 %bf.clear800, 7, !dbg !3258
  br i1 %cmp810, label %cond.true830, label %lor.lhs.false812, !dbg !3258

lor.lhs.false812:                                 ; preds = %lor.lhs.false803
  %cmp819 = icmp eq i32 %bf.clear800, 9, !dbg !3258
  br i1 %cmp819, label %cond.true830, label %lor.lhs.false821, !dbg !3258

lor.lhs.false821:                                 ; preds = %lor.lhs.false812
  %cmp828 = icmp eq i32 %bf.clear800, 10, !dbg !3258
  br i1 %cmp828, label %cond.true830, label %cond.end869, !dbg !3258

cond.true830:                                     ; preds = %lor.lhs.false821, %lor.lhs.false812, %lor.lhs.false803, %for.end790
  %143 = getelementptr inbounds i32, i32* %141, i64 12, !dbg !3258
  %144 = bitcast i32* %143 to i32**, !dbg !3258
  %145 = load i32*, i32** %144, align 8, !dbg !3258
  %bf.load839 = load i32, i32* %145, align 8, !dbg !3258
  %bf.clear840 = and i32 %bf.load839, 65535, !dbg !3258
  %cmp841 = icmp eq i32 %bf.clear840, 23, !dbg !3258
  %146 = bitcast i32* %145 to %struct.rtx_def*, !dbg !3258
  br i1 %cmp841, label %cond.true843, label %cond.false852, !dbg !3258

cond.true843:                                     ; preds = %cond.true830
  br label %cond.end869, !dbg !3258

cond.false852:                                    ; preds = %cond.true830
  %call865 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %142, %struct.rtx_def* %146) #6, !dbg !3258
  br label %cond.end869, !dbg !3258

cond.end869:                                      ; preds = %lor.lhs.false821, %cond.true843, %cond.false852
  %cond870 = phi %struct.rtx_def* [ %146, %cond.true843 ], [ %call865, %cond.false852 ], [ null, %lor.lhs.false821 ], !dbg !3258
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond870, metadata !2987, metadata !DIExpression()), !dbg !3227
  %tobool871 = icmp eq %struct.rtx_def* %cond870, null, !dbg !3259
  br i1 %tobool871, label %cleanup920, label %if.end873, !dbg !3261

if.end873:                                        ; preds = %cond.end869
  %147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond870, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3262
  %148 = bitcast %union.rtunion_def* %147 to i32**, !dbg !3262
  %149 = load i32*, i32** %148, align 8, !dbg !3262
  %bf.load878 = load i32, i32* %149, align 8, !dbg !3262
  %bf.clear879 = and i32 %bf.load878, 65535, !dbg !3262
  %cmp880 = icmp eq i32 %bf.clear879, 49, !dbg !3264
  br i1 %cmp880, label %lor.lhs.false882, label %cleanup920, !dbg !3265

lor.lhs.false882:                                 ; preds = %if.end873
  %arrayidx889 = getelementptr inbounds i32, i32* %149, i64 2, !dbg !3266
  %rt_rtx890 = bitcast i32* %arrayidx889 to %struct.rtx_def**, !dbg !3266
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx890, align 8, !dbg !3266
  %151 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3267
  %cmp891 = icmp eq %struct.rtx_def* %150, %151, !dbg !3268
  br i1 %cmp891, label %lor.lhs.false893, label %cleanup920, !dbg !3269

lor.lhs.false893:                                 ; preds = %lor.lhs.false882
  %152 = getelementptr inbounds i32, i32* %149, i64 4, !dbg !3270
  %153 = bitcast i32* %152 to i32**, !dbg !3270
  %154 = load i32*, i32** %153, align 8, !dbg !3270
  %bf.load902 = load i32, i32* %154, align 8, !dbg !3270
  %bf.clear903 = and i32 %bf.load902, 65535, !dbg !3270
  %cmp904 = icmp eq i32 %bf.clear903, 30, !dbg !3270
  br i1 %cmp904, label %if.end907, label %cleanup920, !dbg !3271

if.end907:                                        ; preds = %lor.lhs.false893
  %u916 = getelementptr inbounds i32, i32* %154, i64 2, !dbg !3272
  %arrayidx918 = bitcast i32* %u916 to i64*, !dbg !3272
  %155 = load i64, i64* %arrayidx918, align 8, !dbg !3272
  %add919 = add nsw i64 %off589.0, %155, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %add919, metadata !2979, metadata !DIExpression()), !dbg !3197
  br label %cleanup920, !dbg !3274

cleanup920.loopexit:                              ; preds = %for.cond777
  br label %cleanup920

cleanup920:                                       ; preds = %cleanup920.loopexit, %lor.lhs.false882, %if.end873, %cond.end869, %lor.lhs.false893, %for.end770, %if.end907
  %cleanup.dest.slot.2 = phi i32 [ 0, %if.end907 ], [ 23, %for.end770 ], [ 23, %cond.end869 ], [ 23, %lor.lhs.false893 ], [ 23, %lor.lhs.false882 ], [ 23, %if.end873 ], [ 23, %cleanup920.loopexit ]
  %off589.1 = phi i64 [ %add919, %if.end907 ], [ %off589.0, %for.end770 ], [ %off589.0, %cond.end869 ], [ %off589.0, %lor.lhs.false893 ], [ %off589.0, %lor.lhs.false882 ], [ %off589.0, %if.end873 ], [ %off589.0, %cleanup920.loopexit ], !dbg !3197
  call void @llvm.dbg.value(metadata i64 %off589.1, metadata !2979, metadata !DIExpression()), !dbg !3197
  %cond1 = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond1, label %cleanup920.if.end927_crit_edge, label %cleanup982

cleanup920.if.end927_crit_edge:                   ; preds = %cleanup920
  %.phi.trans.insert17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i64 0, i32 0, !dbg !3275
  %bf.load928.pre = load i32, i32* %.phi.trans.insert17, align 8, !dbg !3277
  br label %if.end927

if.end927:                                        ; preds = %cleanup920.if.end927_crit_edge, %if.end736
  %bf.load928 = phi i32 [ %bf.load688, %if.end736 ], [ %bf.load928.pre, %cleanup920.if.end927_crit_edge ], !dbg !3277
  %off589.2 = phi i64 [ %off589.0, %if.end736 ], [ %off589.1, %cleanup920.if.end927_crit_edge ], !dbg !3278
  call void @llvm.dbg.value(metadata i64 %off589.2, metadata !2979, metadata !DIExpression()), !dbg !3197
  %156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i64 0, i32 0, !dbg !3277
  %bf.lshr929 = lshr i32 %bf.load928, 16, !dbg !3277
  %bf.clear930 = and i32 %bf.lshr929, 255, !dbg !3277
  %idxprom931 = zext i32 %bf.clear930 to i64, !dbg !3277
  %arrayidx932 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom931, !dbg !3277
  %157 = load i8, i8* %arrayidx932, align 1, !dbg !3277
  %cmp935 = icmp eq i8 %157, 0, !dbg !3279
  br i1 %cmp935, label %cleanup982, label %for.cond939.preheader, !dbg !3280

for.cond939.preheader:                            ; preds = %if.end927
  br label %for.cond939, !dbg !3281

for.cond939:                                      ; preds = %for.cond939.preheader, %for.inc963
  %bf.load940 = phi i32 [ %bf.load940.pre, %for.inc963 ], [ %bf.load928, %for.cond939.preheader ], !dbg !3283
  %byte590.0 = phi i64 [ %inc964, %for.inc963 ], [ %off589.2, %for.cond939.preheader ], !dbg !3285
  call void @llvm.dbg.value(metadata i64 %byte590.0, metadata !2980, metadata !DIExpression()), !dbg !3197
  %bf.lshr941 = lshr i32 %bf.load940, 16, !dbg !3283
  %bf.clear942 = and i32 %bf.lshr941, 255, !dbg !3283
  %idxprom943 = zext i32 %bf.clear942 to i64, !dbg !3283
  %arrayidx944 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom943, !dbg !3283
  %158 = load i8, i8* %arrayidx944, align 1, !dbg !3283
  %conv946 = zext i8 %158 to i64, !dbg !3283
  %add947 = add nsw i64 %off589.2, %conv946, !dbg !3286
  %cmp948 = icmp slt i64 %byte590.0, %add947, !dbg !3287
  br i1 %cmp948, label %for.body950, label %for.end965, !dbg !3281

for.body950:                                      ; preds = %for.cond939
  %cmp951 = icmp slt i64 %off589.2, %min_sp_off.0.lcssa, !dbg !3288
  %cmp954 = icmp sge i64 %byte590.0, %max_sp_off.0.lcssa, !dbg !3291
  %or.cond = or i1 %cmp951, %cmp954, !dbg !3292
  br i1 %or.cond, label %for.end965, label %lor.lhs.false956, !dbg !3292

lor.lhs.false956:                                 ; preds = %for.body950
  %sub957 = sub nsw i64 %byte590.0, %min_sp_off.0.lcssa, !dbg !3293
  %conv958 = trunc i64 %sub957 to i32, !dbg !3294
  %call959 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %call314, i32 %conv958) #6, !dbg !3295
  %tobool960 = icmp eq i8 %call959, 0, !dbg !3295
  br i1 %tobool960, label %for.end965, label %for.inc963, !dbg !3296

for.inc963:                                       ; preds = %lor.lhs.false956
  %inc964 = add nsw i64 %byte590.0, 1, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %inc964, metadata !2980, metadata !DIExpression()), !dbg !3197
  %bf.load940.pre = load i32, i32* %156, align 8, !dbg !3283
  br label %for.cond939, !dbg !3298, !llvm.loop !3299

for.end965:                                       ; preds = %lor.lhs.false956, %for.body950, %for.cond939
  %call966 = tail call fastcc zeroext i8 @deletable_insn_p(%struct.rtx_def* nonnull %insn.0, i8 zeroext %fast, %struct.bitmap_head_def* null) #7, !dbg !3301
  %tobool967 = icmp eq i8 %call966, 0, !dbg !3301
  br i1 %tobool967, label %cleanup982, label %if.end969, !dbg !3303

if.end969:                                        ; preds = %for.end965
  br i1 %tobool, label %if.else972, label %if.then971, !dbg !3304

if.then971:                                       ; preds = %if.end969
  tail call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext %fast) #7, !dbg !3305
  br label %if.end978, !dbg !3305

if.else972:                                       ; preds = %if.end969
  %arrayidx975 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3307
  %rt_int976 = bitcast %union.rtunion_def* %arrayidx975 to i32*, !dbg !3307
  %159 = load i32, i32* %rt_int976, align 8, !dbg !3307
  %call977 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %arg_stores, i32 %159) #6, !dbg !3308
  br label %if.end978

if.end978:                                        ; preds = %if.else972, %if.then971
  %160 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3309
  %tobool979 = icmp ne %struct.bitmap_element_def* %160, null, !dbg !3309
  %. = select i1 %tobool979, i32 0, i32 23, !dbg !3310
  %ret.0. = select i1 %tobool979, i8 %ret.0, i8 1, !dbg !3310
  br label %cleanup982, !dbg !3310

cleanup982:                                       ; preds = %for.end965, %cond.end672, %if.then739, %if.end978, %if.end927, %if.end683, %lor.lhs.false675, %lor.lhs.false623, %if.end602, %cleanup920
  %cleanup.dest.slot.3 = phi i32 [ %cleanup.dest.slot.2, %cleanup920 ], [ 23, %if.end602 ], [ 25, %lor.lhs.false623 ], [ 23, %lor.lhs.false675 ], [ 23, %cond.end672 ], [ 25, %if.end683 ], [ 23, %if.then739 ], [ 23, %if.end927 ], [ 23, %for.end965 ], [ %., %if.end978 ]
  %ret.1 = phi i8 [ %ret.0, %cleanup920 ], [ %ret.0, %if.end602 ], [ %ret.0, %lor.lhs.false623 ], [ %ret.0, %lor.lhs.false675 ], [ %ret.0, %cond.end672 ], [ %ret.0, %if.end683 ], [ %ret.0, %if.then739 ], [ %ret.0, %if.end927 ], [ %ret.0, %for.end965 ], [ %ret.0., %if.end978 ], !dbg !2988
  call void @llvm.dbg.value(metadata i8 %ret.1, metadata !2941, metadata !DIExpression()), !dbg !2988
  %switch = icmp eq i32 %cleanup.dest.slot.3, 23
  br i1 %switch, label %for.end990, label %for.cond583, !llvm.loop !3311

for.end990:                                       ; preds = %for.cond583, %cleanup982
  %ret.2 = phi i8 [ %ret.1, %cleanup982 ], [ %ret.0, %for.cond583 ], !dbg !3183
  call void @llvm.dbg.value(metadata i8 %ret.2, metadata !2941, metadata !DIExpression()), !dbg !2988
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call314) #6, !dbg !3313
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2944, metadata !DIExpression()), !dbg !2988
  %tobool991 = icmp eq i8 %ret.2, 0, !dbg !3314
  %tobool993 = icmp ne %struct.bitmap_head_def* %arg_stores, null, !dbg !3316
  %or.cond5 = and i1 %tobool991, %tobool993, !dbg !3317
  br i1 %or.cond5, label %if.then994, label %cleanup996, !dbg !3317

if.then994:                                       ; preds = %for.end990
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %arg_stores) #6, !dbg !3318
  br label %cleanup996, !dbg !3318

cleanup996.loopexit:                              ; preds = %cleanup297
  br label %cleanup996, !dbg !3319

cleanup996:                                       ; preds = %cleanup996.loopexit, %for.end309, %if.then994, %for.end990, %lor.lhs.false
  %retval.5 = phi i8 [ 1, %lor.lhs.false ], [ 1, %for.end309 ], [ %ret.2, %for.end990 ], [ 0, %if.then994 ], [ 0, %cleanup996.loopexit ], !dbg !2988
  ret i8 %retval.5, !dbg !3319
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3320 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3327, metadata !DIExpression()), !dbg !3328
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3329
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3329
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3329
  ret i32 %0, !dbg !3330
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @deletable_insn_p_1(%struct.rtx_def* %body) unnamed_addr #4 !dbg !3331 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %body, metadata !3335, metadata !DIExpression()), !dbg !3336
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %body, i64 0, i32 0, !dbg !3337
  %bf.load = load i32, i32* %0, align 8, !dbg !3337
  %trunc = trunc i32 %bf.load to i16, !dbg !3338
  switch i16 %trunc, label %sw.default [
    i16 22, label %return
    i16 29, label %return
    i16 18, label %return
  ], !dbg !3338

sw.default:                                       ; preds = %entry
  %call = tail call i32 @volatile_refs_p(%struct.rtx_def* %body) #6, !dbg !3339
  %tobool = icmp eq i32 %call, 0, !dbg !3341
  %conv = zext i1 %tobool to i8, !dbg !3341
  br label %return, !dbg !3342

return:                                           ; preds = %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ %conv, %sw.default ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ], !dbg !3343
  ret i8 %retval.0, !dbg !3344
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #1

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i32 @volatile_refs_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @mark_nonreg_stores_1(%struct.rtx_def* %dest, %struct.rtx_def* %pattern, i8* %data) #4 !dbg !3345 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pattern, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %data, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pattern, i64 0, i32 0, !dbg !3353
  %bf.load = load i32, i32* %0, align 8, !dbg !3353
  %bf.clear = and i32 %bf.load, 65535, !dbg !3353
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !3355
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3356

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3357
  %bf.load1 = load i32, i32* %1, align 8, !dbg !3357
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3357
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3357
  br i1 %cmp3, label %if.end, label %if.then, !dbg !3358

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i8* %data to %struct.rtx_def*, !dbg !3359
  tail call fastcc void @mark_insn(%struct.rtx_def* %2, i8 zeroext 1) #7, !dbg !3360
  br label %if.end, !dbg !3360

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3361
}

; Function Attrs: nounwind uwtable
define internal void @mark_nonreg_stores_2(%struct.rtx_def* %dest, %struct.rtx_def* %pattern, i8* %data) #4 !dbg !3362 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pattern, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* %data, metadata !3366, metadata !DIExpression()), !dbg !3367
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pattern, i64 0, i32 0, !dbg !3368
  %bf.load = load i32, i32* %0, align 8, !dbg !3368
  %bf.clear = and i32 %bf.load, 65535, !dbg !3368
  %cmp = icmp eq i32 %bf.clear, 25, !dbg !3370
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3371

land.lhs.true:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3372
  %bf.load1 = load i32, i32* %1, align 8, !dbg !3372
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3372
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !3372
  br i1 %cmp3, label %if.end, label %if.then, !dbg !3373

if.then:                                          ; preds = %land.lhs.true
  %2 = bitcast i8* %data to %struct.rtx_def*, !dbg !3374
  tail call fastcc void @mark_insn(%struct.rtx_def* %2, i8 zeroext 0) #7, !dbg !3375
  br label %if.end, !dbg !3375

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3376
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @marked_insn_p(%struct.rtx_def* %insn) unnamed_addr #0 !dbg !3377 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3381, metadata !DIExpression()), !dbg !3382
  %tobool = icmp eq %struct.rtx_def* %insn, null, !dbg !3383
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3383

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3383
  br label %cond.end, !dbg !3383

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @marked, align 8, !dbg !3384
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3384
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3384
  %1 = load i32, i32* %rt_int, align 8, !dbg !3384
  %div = lshr i32 %1, 6, !dbg !3384
  %idxprom = zext i32 %div to i64, !dbg !3384
  %arrayidx1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 3, i64 %idxprom, !dbg !3384
  %2 = load i64, i64* %arrayidx1, align 8, !dbg !3384
  %rem = and i32 %1, 63, !dbg !3384
  %sh_prom = zext i32 %rem to i64, !dbg !3384
  %shr = lshr i64 %2, %sh_prom, !dbg !3384
  %3 = trunc i64 %shr to i32, !dbg !3384
  %conv = and i32 %3, 1, !dbg !3384
  ret i32 %conv, !dbg !3385
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def** @VEC_rtx_heap_safe_push(%struct.VEC_rtx_heap** %vec_, %struct.rtx_def* %obj_) unnamed_addr #0 !dbg !3386 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** @worklist, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %obj_, metadata !3391, metadata !DIExpression()), !dbg !3392
  %call = tail call fastcc i32 @VEC_rtx_heap_reserve(%struct.VEC_rtx_heap** nonnull @worklist, i32 1) #7, !dbg !3393
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !3393
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !3393
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3393

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %0, i64 0, i32 0, !dbg !3393
  br label %cond.end, !dbg !3393

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3393
  %call1 = tail call fastcc %struct.rtx_def** @VEC_rtx_base_quick_push(%struct.VEC_rtx_base* %cond, %struct.rtx_def* %obj_) #7, !dbg !3393
  ret %struct.rtx_def** %call1, !dbg !3393
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3394 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3398, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3399, metadata !DIExpression()), !dbg !3403
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3404
  %0 = load i8*, i8** %popcount, align 8, !dbg !3404
  %tobool = icmp eq i8* %0, null, !dbg !3405
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3406

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3407
  %.pre2 = zext i32 %.pre to i64, !dbg !3408
  %.pre3 = shl i64 1, %.pre2, !dbg !3408
  %.pre4 = lshr i32 %bitno, 6, !dbg !3409
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3410
  br label %if.end7, !dbg !3406

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3411
  %idxprom = zext i32 %div to i64, !dbg !3411
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3411
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3411
  %rem = and i32 %bitno, 63, !dbg !3411
  %sh_prom = zext i32 %rem to i64, !dbg !3411
  %2 = shl i64 1, %sh_prom, !dbg !3412
  %3 = and i64 %1, %2, !dbg !3412
  %tobool1 = icmp eq i64 %3, 0, !dbg !3412
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3414

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3415
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3416
  %inc = add i8 %4, 1, !dbg !3416
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3416
  br label %if.end7, !dbg !3415

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3410
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3408
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3410
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3417
  %or = or i64 %5, %shl.pre-phi, !dbg !3417
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3417
  ret void, !dbg !3418
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_heap_reserve(%struct.VEC_rtx_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3419 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** @worklist, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 1, metadata !3424, metadata !DIExpression()), !dbg !3426
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** @worklist, align 8, !dbg !3427
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !3427
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3427

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %0, i64 0, i32 0, !dbg !3427
  br label %cond.end, !dbg !3427

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3427
  %call = tail call fastcc i32 @VEC_rtx_base_space(%struct.VEC_rtx_base* %cond, i32 1) #7, !dbg !3427
  %tobool1 = icmp eq i32 %call, 0, !dbg !3427
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3425, metadata !DIExpression()), !dbg !3426
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3427

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_rtx_heap** @worklist to i8**), align 8, !dbg !3428
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !3428
  store i8* %call3, i8** bitcast (%struct.VEC_rtx_heap** @worklist to i8**), align 8, !dbg !3428
  br label %if.end, !dbg !3428

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3427
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def** @VEC_rtx_base_quick_push(%struct.VEC_rtx_base* %vec_, %struct.rtx_def* %obj_) unnamed_addr #0 !dbg !3430 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !3434, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata %struct.rtx_def* %obj_, metadata !3435, metadata !DIExpression()), !dbg !3437
  %num1 = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !3438
  %0 = load i32, i32* %num1, align 8, !dbg !3438
  %inc = add i32 %0, 1, !dbg !3438
  store i32 %inc, i32* %num1, align 8, !dbg !3438
  %idxprom = zext i32 %0 to i64, !dbg !3438
  %arrayidx = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.rtx_def** %arrayidx, metadata !3436, metadata !DIExpression()), !dbg !3437
  store %struct.rtx_def* %obj_, %struct.rtx_def** %arrayidx, align 8, !dbg !3438
  ret %struct.rtx_def** %arrayidx, !dbg !3438
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_base_space(%struct.VEC_rtx_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3439 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i32 1, metadata !3444, metadata !DIExpression()), !dbg !3445
  %tobool = icmp eq %struct.VEC_rtx_base* %vec_, null, !dbg !3446
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3446

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 1, !dbg !3446
  %0 = load i32, i32* %alloc, align 4, !dbg !3446
  %num = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !3446
  %1 = load i32, i32* %num, align 8, !dbg !3446
  %cmp1 = icmp ne i32 %0, %1, !dbg !3446
  %phitmp = zext i1 %cmp1 to i32, !dbg !3446
  br label %cond.end, !dbg !3446

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3446

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3446
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %bb_index) unnamed_addr #0 !dbg !3447 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !3451, metadata !DIExpression()), !dbg !3452
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #7, !dbg !3453
  %artificial_uses = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 1, !dbg !3454
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_uses, align 8, !dbg !3454
  ret %union.df_ref_d** %0, !dbg !3455
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3456 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3460, metadata !DIExpression()), !dbg !3461
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3462
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 0, !dbg !3462
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3462
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3464
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3464
  %cmp = icmp ugt i32 %2, %index, !dbg !3465
  br i1 %cmp, label %if.then, label %return, !dbg !3466

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3467
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3467
  %idxprom = zext i32 %index to i64, !dbg !3468
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3468
  %4 = bitcast i8** %arrayidx3 to %struct.df_scan_bb_info**, !dbg !3468
  %5 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %4, align 8, !dbg !3468
  br label %return, !dbg !3469

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_scan_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3470
  ret %struct.df_scan_bb_info* %retval.0, !dbg !3471
}

declare dso_local void @print_simple_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @noop_move_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_corresponding_reg_eq_notes(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3472 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3474, metadata !DIExpression()), !dbg !3485
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3486
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !3486
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3486
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3486
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3486
  %2 = load i32, i32* %rt_int, align 8, !dbg !3486
  %idxprom = sext i32 %2 to i64, !dbg !3486
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !3486
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !3486
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 1, !dbg !3486
  %4 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3486
  call void @llvm.dbg.value(metadata %union.df_ref_d** %4, metadata !3475, metadata !DIExpression()), !dbg !3485
  br label %for.cond, !dbg !3487

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi %struct.df* [ %0, %entry ], [ %.lcssa, %for.inc ]
  %def_rec.0 = phi %union.df_ref_d** [ %4, %entry ], [ %incdec.ptr, %for.inc ], !dbg !3488
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !3475, metadata !DIExpression()), !dbg !3485
  %6 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3489
  %tobool = icmp eq %union.df_ref_d* %6, null, !dbg !3490
  br i1 %tobool, label %for.end, label %for.body, !dbg !3490

for.body:                                         ; preds = %for.cond
  %regno2 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3491
  %7 = load i32, i32* %regno2, align 8, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %7, metadata !3480, metadata !DIExpression()), !dbg !3492
  %idxprom3 = zext i32 %7 to i64, !dbg !3492
  br label %while.cond, !dbg !3493

while.cond:                                       ; preds = %cond.end, %for.body
  %8 = phi %struct.df* [ %.pre, %cond.end ], [ %5, %for.body ], !dbg !3494
  %eq_use_regs = getelementptr inbounds %struct.df, %struct.df* %8, i64 0, i32 7, !dbg !3494
  %9 = load %struct.df_reg_info**, %struct.df_reg_info*** %eq_use_regs, align 8, !dbg !3494
  %arrayidx4 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %9, i64 %idxprom3, !dbg !3494
  %10 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx4, align 8, !dbg !3494
  %reg_chain = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %10, i64 0, i32 0, !dbg !3494
  %11 = load %union.df_ref_d*, %union.df_ref_d** %reg_chain, align 8, !dbg !3494
  %tobool5 = icmp eq %union.df_ref_d* %11, null, !dbg !3493
  br i1 %tobool5, label %for.inc, label %while.body, !dbg !3493

while.body:                                       ; preds = %while.cond
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %11, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3495
  %12 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3495
  %insn11 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %12, i64 0, i32 0, !dbg !3495
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn11, align 8, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !3483, metadata !DIExpression()), !dbg !3496
  %call = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 4, %struct.rtx_def* null) #6, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3484, metadata !DIExpression()), !dbg !3496
  %tobool12 = icmp eq %struct.rtx_def* %call, null, !dbg !3498
  br i1 %tobool12, label %if.then, label %if.end, !dbg !3500

if.then:                                          ; preds = %while.body
  %call13 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 3, %struct.rtx_def* null) #6, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call13, metadata !3484, metadata !DIExpression()), !dbg !3496
  br label %if.end, !dbg !3502

if.end:                                           ; preds = %while.body, %if.then
  %note.0 = phi %struct.rtx_def* [ %call, %while.body ], [ %call13, %if.then ], !dbg !3496
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !3484, metadata !DIExpression()), !dbg !3496
  %tobool14 = icmp eq %struct.rtx_def* %note.0, null, !dbg !3503
  br i1 %tobool14, label %cond.true, label %cond.end, !dbg !3503

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 494, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3503
  br label %cond.end, !dbg !3503

cond.end:                                         ; preds = %if.end, %cond.true
  tail call void @remove_note(%struct.rtx_def* %13, %struct.rtx_def* %note.0) #6, !dbg !3504
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3494
  br label %while.cond, !dbg !3493, !llvm.loop !3505

for.inc:                                          ; preds = %while.cond
  %.lcssa = phi %struct.df* [ %8, %while.cond ], !dbg !3494
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !3507
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3475, metadata !DIExpression()), !dbg !3485
  br label %for.cond, !dbg !3508, !llvm.loop !3509

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3511
}

declare dso_local %struct.rtx_def* @delete_insn_and_edges(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fast_dce(i8 zeroext %byte_level) unnamed_addr #4 !dbg !3512 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i8 %byte_level, metadata !3514, metadata !DIExpression()), !dbg !3545
  %call = tail call i32* @df_get_postorder(i32 2) #6, !dbg !3546
  call void @llvm.dbg.value(metadata i32* %call, metadata !3515, metadata !DIExpression()), !dbg !3545
  %call1 = tail call i32 @df_get_n_blocks(i32 2) #6, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3517, metadata !DIExpression()), !dbg !3545
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @dce_blocks_bitmap_obstack) #6, !dbg !3548
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call2, metadata !3518, metadata !DIExpression()), !dbg !3545
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @dce_blocks_bitmap_obstack) #6, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !3519, metadata !DIExpression()), !dbg !3545
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @dce_blocks_bitmap_obstack) #6, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !3520, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 1, metadata !3521, metadata !DIExpression()), !dbg !3545
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3551
  %regular_block_artificial_uses = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 14, !dbg !3552
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regular_block_artificial_uses, align 8, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !3522, metadata !DIExpression()), !dbg !3545
  %eh_block_artificial_uses = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 15, !dbg !3553
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %eh_block_artificial_uses, align 8, !dbg !3553
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %2, metadata !3523, metadata !DIExpression()), !dbg !3545
  tail call fastcc void @prescan_insns_for_dce(i8 zeroext 1) #7, !dbg !3554
  call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3545
  %3 = sext i32 %call1 to i64, !dbg !3555
  br label %for.cond, !dbg !3555

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body ], [ 0, %entry ], !dbg !3557
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3524, metadata !DIExpression()), !dbg !3545
  %cmp = icmp slt i64 %indvars.iv7, %3, !dbg !3558
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !3560

while.cond.preheader:                             ; preds = %for.cond
  %tobool18 = icmp eq i8 %byte_level, 0, !dbg !3561
  %4 = bitcast %struct.edge_def** %e to i8*, !dbg !3563
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3563
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3564
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3564
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3564
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3566
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3566
  %11 = sext i32 %call1 to i64, !dbg !3568
  %12 = sext i32 %call1 to i64, !dbg !3568
  br label %while.cond, !dbg !3568

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %call, i64 %indvars.iv7, !dbg !3569
  %13 = load i32, i32* %arrayidx, align 4, !dbg !3569
  %call5 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call4, i32 %13) #6, !dbg !3570
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !3571
  call void @llvm.dbg.value(metadata i32 undef, metadata !3524, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3545
  br label %for.cond, !dbg !3572, !llvm.loop !3573

while.cond:                                       ; preds = %while.cond.preheader, %if.end79
  %global_changed.0 = phi i8 [ %global_changed.1.lcssa, %if.end79 ], [ 1, %while.cond.preheader ], !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.0, metadata !3521, metadata !DIExpression()), !dbg !3545
  %tobool = icmp eq i8 %global_changed.0, 0, !dbg !3568
  br i1 %tobool, label %while.end, label %for.cond6.preheader, !dbg !3568

for.cond6.preheader:                              ; preds = %while.cond
  br i1 %tobool18, label %for.cond6.preheader.split.us, label %for.cond6.preheader.for.cond6.preheader.split_crit_edge, !dbg !3575

for.cond6.preheader.for.cond6.preheader.split_crit_edge: ; preds = %for.cond6.preheader
  br label %for.cond6, !dbg !3575

for.cond6.preheader.split.us:                     ; preds = %for.cond6.preheader
  br label %for.cond6.us, !dbg !3575

for.cond6.us:                                     ; preds = %cleanup.us, %for.cond6.preheader.split.us
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %cleanup.us ], [ 0, %for.cond6.preheader.split.us ], !dbg !3576
  %global_changed.1.us = phi i8 [ %global_changed.5.us, %cleanup.us ], [ 0, %for.cond6.preheader.split.us ], !dbg !3576
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3524, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.1.us, metadata !3521, metadata !DIExpression()), !dbg !3545
  %cmp7.us = icmp slt i64 %indvars.iv5, %12, !dbg !3577
  br i1 %cmp7.us, label %for.body8.us, label %for.end64.us-lcssa.us, !dbg !3575

for.body8.us:                                     ; preds = %for.cond6.us
  %arrayidx10.us = getelementptr inbounds i32, i32* %call, i64 %indvars.iv5, !dbg !3578
  %14 = load i32, i32* %arrayidx10.us, align 4, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %14, metadata !3525, metadata !DIExpression()), !dbg !3579
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3580
  %cfg.us = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 1, !dbg !3580
  %16 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg.us, align 8, !dbg !3580
  %x_basic_block_info.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 2, !dbg !3580
  %17 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info.us, align 8, !dbg !3580
  %tobool11.us = icmp eq %struct.VEC_basic_block_gc* %17, null, !dbg !3580
  br i1 %tobool11.us, label %cond.end.us, label %cond.true.us, !dbg !3580

cond.true.us:                                     ; preds = %for.body8.us
  %base.us = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %17, i64 0, i32 0, !dbg !3580
  br label %cond.end.us, !dbg !3580

cond.end.us:                                      ; preds = %cond.true.us, %for.body8.us
  %cond.us = phi %struct.VEC_basic_block_base* [ %base.us, %cond.true.us ], [ null, %for.body8.us ], !dbg !3580
  %call15.us = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond.us, i32 %14) #7, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15.us, metadata !3530, metadata !DIExpression()), !dbg !3579
  %cmp16.us = icmp slt i32 %14, 2, !dbg !3581
  br i1 %cmp16.us, label %if.then.us, label %if.end.us, !dbg !3583

if.end.us:                                        ; preds = %cond.end.us
  %call20.us = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call3, i32 %14) #6, !dbg !3561
  %call21.us = call fastcc zeroext i8 @bb_has_eh_pred(%struct.basic_block_def* %call15.us) #7, !dbg !3561
  %tobool23.us = icmp eq i8 %call21.us, 0, !dbg !3561
  %..us = select i1 %tobool23.us, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, !dbg !3561
  %conv.us = trunc i32 %call20.us to i8, !dbg !3561
  %call38.us = call fastcc zeroext i8 @dce_process_block(%struct.basic_block_def* %call15.us, i8 zeroext %conv.us, %struct.bitmap_head_def* %..us) #7, !dbg !3584
  call void @llvm.dbg.value(metadata i8 %call38.us, metadata !3531, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8 %call38.us, metadata !3531, metadata !DIExpression()), !dbg !3579
  %call40.us = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call2, i32 %14) #6, !dbg !3585
  %tobool41.us = icmp eq i8 %call38.us, 0, !dbg !3586
  br i1 %tobool41.us, label %cleanup.us, label %if.then42.us, !dbg !3587

if.then42.us:                                     ; preds = %if.end.us
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3590
  %preds.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call15.us, i64 0, i32 0, !dbg !3590
  %call43.us = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds.us) #7, !dbg !3590
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call43.us, 0, !dbg !3590
  store i32 %18, i32* %7, align 8, !dbg !3590
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call43.us, 1, !dbg !3590
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %8, align 8, !dbg !3590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3590
  br label %for.cond44.us, !dbg !3590

for.cond44.us:                                    ; preds = %for.inc57.us, %if.then42.us
  %global_changed.2.us = phi i8 [ %global_changed.1.us, %if.then42.us ], [ %global_changed.3.us, %for.inc57.us ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.2.us, metadata !3521, metadata !DIExpression()), !dbg !3545
  %20 = load i32, i32* %9, align 8, !dbg !3592
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3532, metadata !DIExpression(DW_OP_deref)), !dbg !3563
  %call45.us = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #7, !dbg !3592
  %tobool46.us = icmp eq i8 %call45.us, 0, !dbg !3590
  br i1 %tobool46.us, label %for.end58.us, label %for.body47.us, !dbg !3590

for.body47.us:                                    ; preds = %for.cond44.us
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3593
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !3532, metadata !DIExpression()), !dbg !3563
  %src.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 0, !dbg !3595
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src.us, align 8, !dbg !3595
  %index48.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 9, !dbg !3596
  %24 = load i32, i32* %index48.us, align 8, !dbg !3596
  %call49.us = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call2, i32 %24) #6, !dbg !3597
  %tobool50.us = icmp eq i32 %call49.us, 0, !dbg !3597
  br i1 %tobool50.us, label %if.else52.us, label %for.inc57.us, !dbg !3598

if.else52.us:                                     ; preds = %for.body47.us
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3599
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !3532, metadata !DIExpression()), !dbg !3563
  %src53.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 0, !dbg !3600
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src53.us, align 8, !dbg !3600
  %index54.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i64 0, i32 9, !dbg !3601
  %27 = load i32, i32* %index54.us, align 8, !dbg !3601
  %call55.us = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call3, i32 %27) #6, !dbg !3602
  br label %for.inc57.us

for.inc57.us:                                     ; preds = %if.else52.us, %for.body47.us
  %global_changed.3.us = phi i8 [ %global_changed.2.us, %if.else52.us ], [ 1, %for.body47.us ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.3.us, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3535, metadata !DIExpression(DW_OP_deref)), !dbg !3563
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3592
  br label %for.cond44.us, !dbg !3592, !llvm.loop !3603

for.end58.us:                                     ; preds = %for.cond44.us
  %global_changed.2.us.lcssa = phi i8 [ %global_changed.2.us, %for.cond44.us ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.2.us.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.2.us.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.2.us.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3605
  br label %cleanup.us, !dbg !3606

if.then.us:                                       ; preds = %cond.end.us
  %call17.us = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call2, i32 %14) #6, !dbg !3607
  br label %cleanup.us, !dbg !3609

cleanup.us:                                       ; preds = %if.then.us, %for.end58.us, %if.end.us
  %global_changed.5.us = phi i8 [ %global_changed.1.us, %if.then.us ], [ %global_changed.2.us.lcssa, %for.end58.us ], [ %global_changed.1.us, %if.end.us ], !dbg !3576
  call void @llvm.dbg.value(metadata i8 %global_changed.5.us, metadata !3521, metadata !DIExpression()), !dbg !3545
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3610
  call void @llvm.dbg.value(metadata i32 undef, metadata !3524, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3545
  br label %for.cond6.us, !dbg !3611, !llvm.loop !3612

for.end64.us-lcssa.us:                            ; preds = %for.cond6.us
  %global_changed.1.us.lcssa = phi i8 [ %global_changed.1.us, %for.cond6.us ], !dbg !3576
  call void @llvm.dbg.value(metadata i8 %global_changed.1.us.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.1.us.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  br label %for.end64, !dbg !3614

for.cond6:                                        ; preds = %for.cond6.preheader.for.cond6.preheader.split_crit_edge, %cleanup
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader.for.cond6.preheader.split_crit_edge ], [ %indvars.iv.next, %cleanup ], !dbg !3576
  %global_changed.1 = phi i8 [ 0, %for.cond6.preheader.for.cond6.preheader.split_crit_edge ], [ %global_changed.5, %cleanup ], !dbg !3576
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3524, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.1, metadata !3521, metadata !DIExpression()), !dbg !3545
  %cmp7 = icmp slt i64 %indvars.iv, %11, !dbg !3577
  br i1 %cmp7, label %for.body8, label %for.end64.us-lcssa, !dbg !3575

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds i32, i32* %call, i64 %indvars.iv, !dbg !3578
  %28 = load i32, i32* %arrayidx10, align 4, !dbg !3578
  call void @llvm.dbg.value(metadata i32 %28, metadata !3525, metadata !DIExpression()), !dbg !3579
  %29 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3580
  %cfg = getelementptr inbounds %struct.function, %struct.function* %29, i64 0, i32 1, !dbg !3580
  %30 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3580
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %30, i64 0, i32 2, !dbg !3580
  %31 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3580
  %tobool11 = icmp eq %struct.VEC_basic_block_gc* %31, null, !dbg !3580
  br i1 %tobool11, label %cond.end, label %cond.true, !dbg !3580

cond.true:                                        ; preds = %for.body8
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %31, i64 0, i32 0, !dbg !3580
  br label %cond.end, !dbg !3580

cond.end:                                         ; preds = %for.body8, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body8 ], !dbg !3580
  %call15 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %28) #7, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15, metadata !3530, metadata !DIExpression()), !dbg !3579
  %cmp16 = icmp slt i32 %28, 2, !dbg !3581
  br i1 %cmp16, label %if.then, label %if.end, !dbg !3583

if.then:                                          ; preds = %cond.end
  %call17 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call2, i32 %28) #6, !dbg !3607
  br label %cleanup, !dbg !3609

if.end:                                           ; preds = %cond.end
  %call20 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call3, i32 %28) #6, !dbg !3561
  %call21 = call fastcc zeroext i8 @bb_has_eh_pred(%struct.basic_block_def* %call15) #7, !dbg !3561
  %tobool23 = icmp eq i8 %call21, 0, !dbg !3561
  %. = select i1 %tobool23, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, !dbg !3561
  %conv = trunc i32 %call20 to i8, !dbg !3561
  %call28 = call fastcc zeroext i8 @byte_dce_process_block(%struct.basic_block_def* %call15, i8 zeroext %conv, %struct.bitmap_head_def* %.) #7, !dbg !3615
  call void @llvm.dbg.value(metadata i8 %call28, metadata !3531, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i8 %call28, metadata !3531, metadata !DIExpression()), !dbg !3579
  %call40 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call2, i32 %28) #6, !dbg !3585
  %tobool41 = icmp eq i8 %call28, 0, !dbg !3586
  br i1 %tobool41, label %cleanup, label %if.then42, !dbg !3587

if.then42:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3588
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3590
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call15, i64 0, i32 0, !dbg !3590
  %call43 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3590
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 0, !dbg !3590
  store i32 %32, i32* %7, align 8, !dbg !3590
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 1, !dbg !3590
  store %struct.VEC_edge_gc** %33, %struct.VEC_edge_gc*** %8, align 8, !dbg !3590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3590
  br label %for.cond44, !dbg !3590

for.cond44:                                       ; preds = %for.inc57, %if.then42
  %global_changed.2 = phi i8 [ %global_changed.1, %if.then42 ], [ %global_changed.3, %for.inc57 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.2, metadata !3521, metadata !DIExpression()), !dbg !3545
  %34 = load i32, i32* %9, align 8, !dbg !3592
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !3592
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3532, metadata !DIExpression(DW_OP_deref)), !dbg !3563
  %call45 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #7, !dbg !3592
  %tobool46 = icmp eq i8 %call45, 0, !dbg !3590
  br i1 %tobool46, label %for.end58, label %for.body47, !dbg !3590

for.body47:                                       ; preds = %for.cond44
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3593
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !3532, metadata !DIExpression()), !dbg !3563
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 0, !dbg !3595
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3595
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !3596
  %38 = load i32, i32* %index48, align 8, !dbg !3596
  %call49 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call2, i32 %38) #6, !dbg !3597
  %tobool50 = icmp eq i32 %call49, 0, !dbg !3597
  br i1 %tobool50, label %if.else52, label %for.inc57, !dbg !3598

if.else52:                                        ; preds = %for.body47
  %39 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3599
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !3532, metadata !DIExpression()), !dbg !3563
  %src53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 0, !dbg !3600
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %src53, align 8, !dbg !3600
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i64 0, i32 9, !dbg !3601
  %41 = load i32, i32* %index54, align 8, !dbg !3601
  %call55 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call3, i32 %41) #6, !dbg !3602
  br label %for.inc57

for.inc57:                                        ; preds = %for.body47, %if.else52
  %global_changed.3 = phi i8 [ %global_changed.2, %if.else52 ], [ 1, %for.body47 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.3, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3535, metadata !DIExpression(DW_OP_deref)), !dbg !3563
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3592
  br label %for.cond44, !dbg !3592, !llvm.loop !3603

for.end58:                                        ; preds = %for.cond44
  %global_changed.2.lcssa = phi i8 [ %global_changed.2, %for.cond44 ], !dbg !3591
  call void @llvm.dbg.value(metadata i8 %global_changed.2.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.2.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.2.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !3605
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3605
  br label %cleanup, !dbg !3606

cleanup:                                          ; preds = %if.end, %for.end58, %if.then
  %global_changed.5 = phi i8 [ %global_changed.1, %if.then ], [ %global_changed.2.lcssa, %for.end58 ], [ %global_changed.1, %if.end ], !dbg !3576
  call void @llvm.dbg.value(metadata i8 %global_changed.5, metadata !3521, metadata !DIExpression()), !dbg !3545
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3610
  call void @llvm.dbg.value(metadata i32 undef, metadata !3524, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3545
  br label %for.cond6, !dbg !3611, !llvm.loop !3612

for.end64.us-lcssa:                               ; preds = %for.cond6
  %global_changed.1.lcssa9 = phi i8 [ %global_changed.1, %for.cond6 ], !dbg !3576
  call void @llvm.dbg.value(metadata i8 %global_changed.1.lcssa9, metadata !3521, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8 %global_changed.1.lcssa9, metadata !3521, metadata !DIExpression()), !dbg !3545
  br label %for.end64, !dbg !3614

for.end64:                                        ; preds = %for.end64.us-lcssa.us, %for.end64.us-lcssa
  %global_changed.1.lcssa = phi i8 [ %global_changed.1.lcssa9, %for.end64.us-lcssa ], [ %global_changed.1.us.lcssa, %for.end64.us-lcssa.us ], !dbg !3576
  call void @llvm.dbg.value(metadata i8 %global_changed.1.lcssa, metadata !3521, metadata !DIExpression()), !dbg !3545
  %tobool65 = icmp eq i8 %global_changed.1.lcssa, 0, !dbg !3614
  br i1 %tobool65, label %if.end79, label %if.then66, !dbg !3616

if.then66:                                        ; preds = %for.end64
  %call67 = call i32 @df_clear_flags(i32 1) #6, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %call67, metadata !3542, metadata !DIExpression()), !dbg !3618
  call fastcc void @delete_unmarked_insns() #7, !dbg !3619
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @marked, align 8, !dbg !3620
  call void @sbitmap_zero(%struct.simple_bitmap_def* %42) #6, !dbg !3621
  call void @bitmap_clear(%struct.bitmap_head_def* %call2) #6, !dbg !3622
  call void @bitmap_clear(%struct.bitmap_head_def* %call3) #6, !dbg !3623
  %43 = load %struct.df*, %struct.df** @df, align 8, !dbg !3624
  br i1 %tobool18, label %if.else71, label %if.then69, !dbg !3626

if.then69:                                        ; preds = %if.then66
  %arrayidx70 = getelementptr inbounds %struct.df, %struct.df* %43, i64 0, i32 1, i64 5, !dbg !3627
  %44 = load %struct.dataflow*, %struct.dataflow** %arrayidx70, align 8, !dbg !3627
  call void @df_analyze_problem(%struct.dataflow* %44, %struct.bitmap_head_def* %call4, i32* %call, i32 %call1) #6, !dbg !3628
  br label %if.end74, !dbg !3628

if.else71:                                        ; preds = %if.then66
  %arrayidx73 = getelementptr inbounds %struct.df, %struct.df* %43, i64 0, i32 1, i64 1, !dbg !3629
  %45 = load %struct.dataflow*, %struct.dataflow** %arrayidx73, align 8, !dbg !3629
  call void @df_analyze_problem(%struct.dataflow* %45, %struct.bitmap_head_def* %call4, i32* %call, i32 %call1) #6, !dbg !3630
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.then69
  %and = and i32 %call67, 1, !dbg !3631
  %tobool75 = icmp eq i32 %and, 0, !dbg !3631
  br i1 %tobool75, label %if.end78, label %if.then76, !dbg !3633

if.then76:                                        ; preds = %if.end74
  %call77 = call i32 @df_set_flags(i32 1) #6, !dbg !3634
  br label %if.end78, !dbg !3634

if.end78:                                         ; preds = %if.end74, %if.then76
  call fastcc void @prescan_insns_for_dce(i8 zeroext 1) #7, !dbg !3635
  br label %if.end79, !dbg !3636

if.end79:                                         ; preds = %for.end64, %if.end78
  br label %while.cond, !dbg !3568, !llvm.loop !3637

while.end:                                        ; preds = %while.cond
  call fastcc void @delete_unmarked_insns() #7, !dbg !3639
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call2) #6, !dbg !3640
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3518, metadata !DIExpression()), !dbg !3545
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call3) #6, !dbg !3641
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3519, metadata !DIExpression()), !dbg !3545
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call4) #6, !dbg !3642
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3520, metadata !DIExpression()), !dbg !3545
  ret void, !dbg !3643
}

declare dso_local i32* @df_get_postorder(i32) local_unnamed_addr #1

declare dso_local i32 @df_get_n_blocks(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3644 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3650, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3651, metadata !DIExpression()), !dbg !3652
  br label %land.end, !dbg !3653

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3653
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3653
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3653
  ret %struct.basic_block_def* %0, !dbg !3653
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @byte_dce_process_block(%struct.basic_block_def* %bb, i8 zeroext %redo_out, %struct.bitmap_head_def* %au) unnamed_addr #4 !dbg !3654 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %sb = alloca i32, align 4
  %lb = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3658, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8 %redo_out, metadata !3659, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %au, metadata !3660, metadata !DIExpression()), !dbg !3689
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @dce_tmp_bitmap_obstack) #6, !dbg !3690
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3661, metadata !DIExpression()), !dbg !3689
  %tobool = icmp eq i8 %redo_out, 0, !dbg !3691
  br i1 %tobool, label %if.end, label %if.then, !dbg !3692

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3693
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3693
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3694
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3694
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !3695
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 1, i64 5, !dbg !3695
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3695
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %3, i64 0, i32 0, !dbg !3696
  %4 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3696
  %con_fun_n1 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %4, i64 0, i32 9, !dbg !3697
  %5 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %con_fun_n1, align 8, !dbg !3697
  call void @llvm.dbg.value(metadata void (%struct.edge_def*)* %5, metadata !3669, metadata !DIExpression()), !dbg !3698
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3699
  %6 = load i32, i32* %index, align 8, !dbg !3699
  %call2 = tail call fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %6) #7, !dbg !3699
  %out = getelementptr inbounds %struct.df_byte_lr_bb_info, %struct.df_byte_lr_bb_info* %call2, i64 0, i32 3, !dbg !3699
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out, align 8, !dbg !3699
  tail call void @bitmap_clear(%struct.bitmap_head_def* %7) #6, !dbg !3700
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3701
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3701
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3701
  %call3 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3701
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3701
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !3701
  store i32 %10, i32* %9, align 8, !dbg !3701
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3701
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !3701
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !3701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !3701
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3701
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3703
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3703
  br label %for.cond, !dbg !3701

for.cond:                                         ; preds = %for.body, %if.then
  %15 = load i32, i32* %13, align 8, !dbg !3705
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3705
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3665, metadata !DIExpression(DW_OP_deref)), !dbg !3698
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #7, !dbg !3705
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3701
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3701

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3706
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3665, metadata !DIExpression()), !dbg !3698
  call void %5(%struct.edge_def* %17) #6, !dbg !3707
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3668, metadata !DIExpression(DW_OP_deref)), !dbg !3698
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3705
  br label %for.cond, !dbg !3705, !llvm.loop !3708

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3710
  br label %if.end, !dbg !3711

if.end:                                           ; preds = %entry, %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3712
  %tobool6 = icmp eq %struct._IO_FILE* %18, null, !dbg !3712
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !3714

if.then7:                                         ; preds = %if.end
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3715
  %19 = load i32, i32* %index8, align 8, !dbg !3715
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %19) #6, !dbg !3717
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3718
  %21 = load i32, i32* %index8, align 8, !dbg !3719
  %call11 = call fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %21) #7, !dbg !3719
  %out12 = getelementptr inbounds %struct.df_byte_lr_bb_info, %struct.df_byte_lr_bb_info* %call11, i64 0, i32 3, !dbg !3719
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out12, align 8, !dbg !3719
  call void @df_print_byte_regset(%struct._IO_FILE* %20, %struct.bitmap_head_def* %22) #6, !dbg !3720
  br label %if.end13, !dbg !3721

if.end13:                                         ; preds = %if.end, %if.then7
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3722
  %23 = load i32, i32* %index14, align 8, !dbg !3722
  %call15 = call fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %23) #7, !dbg !3722
  %out16 = getelementptr inbounds %struct.df_byte_lr_bb_info, %struct.df_byte_lr_bb_info* %call15, i64 0, i32 3, !dbg !3722
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out16, align 8, !dbg !3722
  call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %24) #6, !dbg !3723
  call void @df_byte_lr_simulate_artificial_refs_at_end(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %call) #6, !dbg !3724
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3725
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3725
  %25 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3725
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %25, i64 0, i32 1, !dbg !3725
  %26 = bitcast i32* %sb to i8*, !dbg !3726
  %27 = bitcast i32* %lb to i8*, !dbg !3726
  br label %for.cond17, !dbg !3725

for.cond17:                                       ; preds = %for.inc80, %if.end13
  %insn.0.in = phi %struct.rtx_def** [ %end_, %if.end13 ], [ %rt_rtx84, %for.inc80 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3727
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3662, metadata !DIExpression()), !dbg !3689
  %tobool18 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3728
  br i1 %tobool18, label %for.end85, label %land.rhs, !dbg !3728

land.rhs:                                         ; preds = %for.cond17
  %28 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3728
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %28, i64 0, i32 0, !dbg !3728
  %29 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3728
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3728
  %rt_rtx = bitcast %union.rtunion_def* %30 to %struct.rtx_def**, !dbg !3728
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3728
  %cmp = icmp eq %struct.rtx_def* %insn.0, %31, !dbg !3728
  br i1 %cmp, label %for.end85, label %for.body22, !dbg !3725

for.body22:                                       ; preds = %land.rhs
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3729
  %bf.load = load i32, i32* %32, align 8, !dbg !3729
  %bf.clear = and i32 %bf.load, 65535, !dbg !3729
  %cmp23 = icmp eq i32 %bf.clear, 8, !dbg !3729
  br i1 %cmp23, label %if.then35, label %lor.lhs.false, !dbg !3729

lor.lhs.false:                                    ; preds = %for.body22
  %cmp26 = icmp eq i32 %bf.clear, 7, !dbg !3729
  br i1 %cmp26, label %if.then35, label %lor.lhs.false27, !dbg !3729

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %cmp30 = icmp eq i32 %bf.clear, 9, !dbg !3729
  br i1 %cmp30, label %if.then35, label %lor.lhs.false31, !dbg !3729

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %cmp34 = icmp eq i32 %bf.clear, 10, !dbg !3729
  br i1 %cmp34, label %if.then35, label %for.inc80, !dbg !3730

if.then35:                                        ; preds = %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false, %for.body22
  %33 = load %struct.df*, %struct.df** @df, align 8, !dbg !3731
  %insns = getelementptr inbounds %struct.df, %struct.df* %33, i64 0, i32 10, !dbg !3731
  %34 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3731
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3731
  %rt_int = bitcast %union.rtunion_def* %arrayidx38 to i32*, !dbg !3731
  %35 = load i32, i32* %rt_int, align 8, !dbg !3731
  %idxprom = sext i32 %35 to i64, !dbg !3731
  %arrayidx39 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %34, i64 %idxprom, !dbg !3731
  %36 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx39, align 8, !dbg !3731
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %36, i64 0, i32 1, !dbg !3731
  %37 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3731
  call void @llvm.dbg.value(metadata %union.df_ref_d** %37, metadata !3664, metadata !DIExpression()), !dbg !3689
  br label %for.cond40, !dbg !3732

for.cond40:                                       ; preds = %for.inc65, %if.then35
  %def_rec.0 = phi %union.df_ref_d** [ %37, %if.then35 ], [ %incdec.ptr, %for.inc65 ], !dbg !3733
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !3664, metadata !DIExpression()), !dbg !3689
  %38 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3734
  %tobool41 = icmp eq %union.df_ref_d* %38, null, !dbg !3735
  br i1 %tobool41, label %quickexit, label %for.body42, !dbg !3735

for.body42:                                       ; preds = %for.cond40
  call void @llvm.dbg.value(metadata %union.df_ref_d* %38, metadata !3674, metadata !DIExpression()), !dbg !3726
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %38, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3736
  %39 = load i32, i32* %regno, align 8, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %39, metadata !3683, metadata !DIExpression()), !dbg !3726
  %call43 = call i32 @df_byte_lr_get_regno_start(i32 %39) #6, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %call43, metadata !3684, metadata !DIExpression()), !dbg !3726
  %call44 = call i32 @df_byte_lr_get_regno_len(i32 %39) #6, !dbg !3738
  call void @llvm.dbg.value(metadata i32 %call44, metadata !3685, metadata !DIExpression()), !dbg !3726
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #8, !dbg !3740
  call void @llvm.dbg.value(metadata i32* %sb, metadata !3686, metadata !DIExpression(DW_OP_deref)), !dbg !3726
  call void @llvm.dbg.value(metadata i32* %lb, metadata !3687, metadata !DIExpression(DW_OP_deref)), !dbg !3726
  %call45 = call zeroext i8 @df_compute_accessed_bytes(%union.df_ref_d* nonnull %38, i32 0, i32* nonnull %sb, i32* nonnull %lb) #6, !dbg !3741
  %tobool46 = icmp eq i8 %call45, 0, !dbg !3741
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !3743

if.then47:                                        ; preds = %for.body42
  %40 = load i32, i32* %sb, align 4, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %40, metadata !3686, metadata !DIExpression()), !dbg !3726
  %add = add i32 %call43, %40, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %add, metadata !3684, metadata !DIExpression()), !dbg !3726
  %41 = load i32, i32* %lb, align 4, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %41, metadata !3687, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %40, metadata !3686, metadata !DIExpression()), !dbg !3726
  %sub = sub i32 %41, %40, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3685, metadata !DIExpression()), !dbg !3726
  br label %if.end48, !dbg !3749

if.end48:                                         ; preds = %for.body42, %if.then47
  %start.0 = phi i32 [ %call43, %for.body42 ], [ %add, %if.then47 ], !dbg !3726
  %len.0 = phi i32 [ %call44, %for.body42 ], [ %sub, %if.then47 ], !dbg !3726
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !3685, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32 %start.0, metadata !3684, metadata !DIExpression()), !dbg !3726
  %call49 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %au, i32 %39) #6, !dbg !3750
  %tobool50 = icmp eq i32 %call49, 0, !dbg !3750
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !3752

if.then51:                                        ; preds = %if.end48
  call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext 1) #7, !dbg !3753
  br label %cleanup, !dbg !3755

if.end52:                                         ; preds = %if.end48
  %add53 = add i32 %start.0, %len.0, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %add53, metadata !3682, metadata !DIExpression()), !dbg !3726
  br label %while.cond, !dbg !3757

while.cond:                                       ; preds = %while.body, %if.end52
  %start.1 = phi i32 [ %start.0, %if.end52 ], [ %inc, %while.body ], !dbg !3726
  call void @llvm.dbg.value(metadata i32 %start.1, metadata !3684, metadata !DIExpression()), !dbg !3726
  %cmp54 = icmp ult i32 %start.1, %add53, !dbg !3758
  br i1 %cmp54, label %while.body, label %cleanup.loopexit, !dbg !3757

while.body:                                       ; preds = %while.cond
  %inc = add i32 %start.1, 1, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3684, metadata !DIExpression()), !dbg !3726
  %call55 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %start.1) #6, !dbg !3761
  %tobool56 = icmp eq i32 %call55, 0, !dbg !3761
  br i1 %tobool56, label %while.cond, label %if.then57, !dbg !3762, !llvm.loop !3763

if.then57:                                        ; preds = %while.body
  call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext 1) #7, !dbg !3765
  br label %cleanup, !dbg !3767

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !3768

cleanup:                                          ; preds = %cleanup.loopexit, %if.then57, %if.then51
  %cleanup.dest.slot.0 = phi i32 [ 11, %if.then51 ], [ 11, %if.then57 ], [ 0, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #8, !dbg !3768
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !3768
  switch i32 %cleanup.dest.slot.0, label %cleanup96.loopexit [
    i32 0, label %for.inc65
    i32 11, label %quickexit
  ]

for.inc65:                                        ; preds = %cleanup
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !3769
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3664, metadata !DIExpression()), !dbg !3689
  br label %for.cond40, !dbg !3770, !llvm.loop !3771

quickexit:                                        ; preds = %for.cond40, %cleanup
  call void @llvm.dbg.label(metadata !3688), !dbg !3773
  call void @df_byte_lr_simulate_defs(%struct.rtx_def* nonnull %insn.0, %struct.bitmap_head_def* %call) #6, !dbg !3774
  %call67 = call fastcc i32 @marked_insn_p(%struct.rtx_def* nonnull %insn.0) #7, !dbg !3775
  %tobool68 = icmp eq i32 %call67, 0, !dbg !3775
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !3777

if.then69:                                        ; preds = %quickexit
  call void @df_byte_lr_simulate_uses(%struct.rtx_def* nonnull %insn.0, %struct.bitmap_head_def* %call) #6, !dbg !3778
  br label %if.end70, !dbg !3778

if.end70:                                         ; preds = %quickexit, %if.then69
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3779
  %tobool71 = icmp eq %struct._IO_FILE* %42, null, !dbg !3779
  br i1 %tobool71, label %for.inc80, label %if.then72, !dbg !3781

if.then72:                                        ; preds = %if.end70
  %43 = load i32, i32* %rt_int, align 8, !dbg !3782
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %43) #6, !dbg !3784
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3785
  call void @df_print_byte_regset(%struct._IO_FILE* %44, %struct.bitmap_head_def* %call) #6, !dbg !3786
  br label %for.inc80, !dbg !3787

for.inc80:                                        ; preds = %if.end70, %lor.lhs.false31, %if.then72
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3728
  %rt_rtx84 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**, !dbg !3728
  br label %for.cond17, !dbg !3728, !llvm.loop !3788

for.end85:                                        ; preds = %land.rhs, %for.cond17
  call void @df_byte_lr_simulate_artificial_refs_at_top(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %call) #6, !dbg !3790
  %46 = load i32, i32* %index14, align 8, !dbg !3791
  %call87 = call fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %46) #7, !dbg !3791
  %in = getelementptr inbounds %struct.df_byte_lr_bb_info, %struct.df_byte_lr_bb_info* %call87, i64 0, i32 2, !dbg !3791
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !3791
  %call88 = call zeroext i8 @bitmap_equal_p(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %47) #6, !dbg !3792
  %tobool89 = icmp eq i8 %call88, 0, !dbg !3793
  %conv = zext i1 %tobool89 to i8, !dbg !3793
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3663, metadata !DIExpression()), !dbg !3689
  br i1 %tobool89, label %if.then91, label %if.end95, !dbg !3794

if.then91:                                        ; preds = %for.end85
  %48 = load i32, i32* %index14, align 8, !dbg !3795
  %call93 = call fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %48) #7, !dbg !3795
  %in94 = getelementptr inbounds %struct.df_byte_lr_bb_info, %struct.df_byte_lr_bb_info* %call93, i64 0, i32 2, !dbg !3795
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in94, align 8, !dbg !3795
  call void @bitmap_copy(%struct.bitmap_head_def* %49, %struct.bitmap_head_def* %call) #6, !dbg !3797
  br label %if.end95, !dbg !3797

if.end95:                                         ; preds = %if.then91, %for.end85
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3798
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3661, metadata !DIExpression()), !dbg !3689
  br label %cleanup96, !dbg !3799

cleanup96.loopexit:                               ; preds = %cleanup
  br label %cleanup96, !dbg !3800

cleanup96:                                        ; preds = %cleanup96.loopexit, %if.end95
  %retval.0 = phi i8 [ %conv, %if.end95 ], [ undef, %cleanup96.loopexit ]
  ret i8 %retval.0, !dbg !3800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bb_has_eh_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3801 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3805, metadata !DIExpression()), !dbg !3808
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3809
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3810
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3810
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3811
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3811
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3811
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3811
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3811
  store i32 %4, i32* %3, align 8, !dbg !3811
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3811
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3811
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3811
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3811
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3811
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3813
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3813
  br label %for.cond, !dbg !3811

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3815
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3806, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #7, !dbg !3815
  %tobool = icmp eq i8 %call1, 0, !dbg !3811
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3811

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3816
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3806, metadata !DIExpression()), !dbg !3808
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 7, !dbg !3819
  %12 = load i32, i32* %flags, align 8, !dbg !3819
  %and = and i32 %12, 8, !dbg !3820
  %tobool2 = icmp eq i32 %and, 0, !dbg !3820
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3821

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3807, metadata !DIExpression(DW_OP_deref)), !dbg !3808
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3815
  br label %for.cond, !dbg !3815, !llvm.loop !3822

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !3808
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3824
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3824
  ret i8 %retval.0, !dbg !3824
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @dce_process_block(%struct.basic_block_def* %bb, i8 zeroext %redo_out, %struct.bitmap_head_def* %au) unnamed_addr #4 !dbg !3825 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3827, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 %redo_out, metadata !3828, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %au, metadata !3829, metadata !DIExpression()), !dbg !3844
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @dce_tmp_bitmap_obstack) #6, !dbg !3845
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3830, metadata !DIExpression()), !dbg !3844
  %tobool = icmp eq i8 %redo_out, 0, !dbg !3846
  br i1 %tobool, label %if.end, label %if.then, !dbg !3847

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3848
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3849
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3849
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !3850
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 1, i64 1, !dbg !3850
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3850
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %3, i64 0, i32 0, !dbg !3851
  %4 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3851
  %con_fun_n1 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %4, i64 0, i32 9, !dbg !3852
  %5 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %con_fun_n1, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata void (%struct.edge_def*)* %5, metadata !3838, metadata !DIExpression()), !dbg !3853
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3854
  %6 = load i32, i32* %index, align 8, !dbg !3854
  %call2 = tail call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %6) #7, !dbg !3854
  %out = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call2, i64 0, i32 3, !dbg !3854
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out, align 8, !dbg !3854
  tail call void @bitmap_clear(%struct.bitmap_head_def* %7) #6, !dbg !3855
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3856
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3856
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3856
  %call3 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3856
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3856
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !3856
  store i32 %10, i32* %9, align 8, !dbg !3856
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3856
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !3856
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !3856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !3856
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #8, !dbg !3856
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3858
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3858
  br label %for.cond, !dbg !3856

for.cond:                                         ; preds = %for.body, %if.then
  %15 = load i32, i32* %13, align 8, !dbg !3860
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3860
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3834, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #7, !dbg !3860
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3856
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3856

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !3834, metadata !DIExpression()), !dbg !3853
  call void %5(%struct.edge_def* %17) #6, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3837, metadata !DIExpression(DW_OP_deref)), !dbg !3853
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3860
  br label %for.cond, !dbg !3860, !llvm.loop !3863

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3865
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3865
  br label %if.end, !dbg !3866

if.end:                                           ; preds = %entry, %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3867
  %tobool6 = icmp eq %struct._IO_FILE* %18, null, !dbg !3867
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !3869

if.then7:                                         ; preds = %if.end
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3870
  %19 = load i32, i32* %index8, align 8, !dbg !3870
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %19) #6, !dbg !3872
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3873
  %21 = load i32, i32* %index8, align 8, !dbg !3874
  %call11 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %21) #7, !dbg !3874
  %out12 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call11, i64 0, i32 3, !dbg !3874
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out12, align 8, !dbg !3874
  call void @df_print_regset(%struct._IO_FILE* %20, %struct.bitmap_head_def* %22) #6, !dbg !3875
  br label %if.end13, !dbg !3876

if.end13:                                         ; preds = %if.end, %if.then7
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3877
  %23 = load i32, i32* %index14, align 8, !dbg !3877
  %call15 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %23) #7, !dbg !3877
  %out16 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call15, i64 0, i32 3, !dbg !3877
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out16, align 8, !dbg !3877
  call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %24) #6, !dbg !3878
  call void @df_simulate_initialize_backwards(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %call) #6, !dbg !3879
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3880
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3880
  %25 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3880
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %25, i64 0, i32 1, !dbg !3880
  br label %for.cond17, !dbg !3880

for.cond17:                                       ; preds = %for.inc62, %if.end13
  %insn.0.in = phi %struct.rtx_def** [ %end_, %if.end13 ], [ %rt_rtx66, %for.inc62 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3881
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3831, metadata !DIExpression()), !dbg !3844
  %tobool18 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3882
  br i1 %tobool18, label %for.end67, label %land.rhs, !dbg !3882

land.rhs:                                         ; preds = %for.cond17
  %26 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3882
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %26, i64 0, i32 0, !dbg !3882
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3882
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3882
  %rt_rtx = bitcast %union.rtunion_def* %28 to %struct.rtx_def**, !dbg !3882
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3882
  %cmp = icmp eq %struct.rtx_def* %insn.0, %29, !dbg !3882
  br i1 %cmp, label %for.end67, label %for.body22, !dbg !3880

for.body22:                                       ; preds = %land.rhs
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3883
  %bf.load = load i32, i32* %30, align 8, !dbg !3883
  %bf.clear = and i32 %bf.load, 65535, !dbg !3883
  %cmp23 = icmp eq i32 %bf.clear, 8, !dbg !3883
  br i1 %cmp23, label %if.then35, label %lor.lhs.false, !dbg !3883

lor.lhs.false:                                    ; preds = %for.body22
  %cmp26 = icmp eq i32 %bf.clear, 7, !dbg !3883
  br i1 %cmp26, label %if.then35, label %lor.lhs.false27, !dbg !3883

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %cmp30 = icmp eq i32 %bf.clear, 9, !dbg !3883
  br i1 %cmp30, label %if.then35, label %lor.lhs.false31, !dbg !3883

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %cmp34 = icmp eq i32 %bf.clear, 10, !dbg !3883
  br i1 %cmp34, label %if.then35, label %for.inc62, !dbg !3884

if.then35:                                        ; preds = %lor.lhs.false31, %lor.lhs.false27, %lor.lhs.false, %for.body22
  call void @llvm.dbg.value(metadata i8 0, metadata !3839, metadata !DIExpression()), !dbg !3885
  %31 = load %struct.df*, %struct.df** @df, align 8, !dbg !3886
  %insns = getelementptr inbounds %struct.df, %struct.df* %31, i64 0, i32 10, !dbg !3886
  %32 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3886
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3886
  %rt_int = bitcast %union.rtunion_def* %arrayidx38 to i32*, !dbg !3886
  %33 = load i32, i32* %rt_int, align 8, !dbg !3886
  %idxprom = sext i32 %33 to i64, !dbg !3886
  %arrayidx39 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %32, i64 %idxprom, !dbg !3886
  %34 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx39, align 8, !dbg !3886
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %34, i64 0, i32 1, !dbg !3886
  %35 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3886
  call void @llvm.dbg.value(metadata %union.df_ref_d** %35, metadata !3833, metadata !DIExpression()), !dbg !3844
  br label %for.cond40, !dbg !3888

for.cond40:                                       ; preds = %for.inc52, %if.then35
  %def_rec.0 = phi %union.df_ref_d** [ %35, %if.then35 ], [ %incdec.ptr, %for.inc52 ], !dbg !3889
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !3833, metadata !DIExpression()), !dbg !3844
  %36 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3890
  %tobool41 = icmp eq %union.df_ref_d* %36, null, !dbg !3892
  br i1 %tobool41, label %for.end53, label %for.body42, !dbg !3892

for.body42:                                       ; preds = %for.cond40
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %36, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3893
  %37 = load i32, i32* %regno, align 8, !dbg !3893
  %call43 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %37) #6, !dbg !3895
  %tobool44 = icmp eq i32 %call43, 0, !dbg !3895
  br i1 %tobool44, label %lor.lhs.false45, label %for.end53, !dbg !3896

lor.lhs.false45:                                  ; preds = %for.body42
  %38 = bitcast %union.df_ref_d** %def_rec.0 to %struct.df_base_ref**, !dbg !3893
  %39 = load %struct.df_base_ref*, %struct.df_base_ref** %38, align 8, !dbg !3897
  %regno47 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %39, i64 0, i32 6, !dbg !3897
  %40 = load i32, i32* %regno47, align 8, !dbg !3897
  %call48 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %au, i32 %40) #6, !dbg !3898
  %tobool49 = icmp eq i32 %call48, 0, !dbg !3898
  br i1 %tobool49, label %for.inc52, label %for.end53, !dbg !3899

for.inc52:                                        ; preds = %lor.lhs.false45
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !3900
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3833, metadata !DIExpression()), !dbg !3844
  br label %for.cond40, !dbg !3901, !llvm.loop !3902

for.end53:                                        ; preds = %lor.lhs.false45, %for.body42, %for.cond40
  %needed.0 = phi i1 [ false, %for.cond40 ], [ true, %lor.lhs.false45 ], [ true, %for.body42 ]
  br i1 %needed.0, label %if.then55, label %if.end56, !dbg !3904

if.then55:                                        ; preds = %for.end53
  call fastcc void @mark_insn(%struct.rtx_def* nonnull %insn.0, i8 zeroext 1) #7, !dbg !3905
  br label %if.end56, !dbg !3905

if.end56:                                         ; preds = %if.then55, %for.end53
  call void @df_simulate_defs(%struct.rtx_def* nonnull %insn.0, %struct.bitmap_head_def* %call) #6, !dbg !3907
  %call57 = call fastcc i32 @marked_insn_p(%struct.rtx_def* nonnull %insn.0) #7, !dbg !3908
  %tobool58 = icmp eq i32 %call57, 0, !dbg !3908
  br i1 %tobool58, label %for.inc62, label %if.then59, !dbg !3910

if.then59:                                        ; preds = %if.end56
  call void @df_simulate_uses(%struct.rtx_def* nonnull %insn.0, %struct.bitmap_head_def* %call) #6, !dbg !3911
  br label %for.inc62, !dbg !3911

for.inc62:                                        ; preds = %if.end56, %lor.lhs.false31, %if.then59
  %41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3882
  %rt_rtx66 = bitcast %union.rtunion_def* %41 to %struct.rtx_def**, !dbg !3882
  br label %for.cond17, !dbg !3882, !llvm.loop !3912

for.end67:                                        ; preds = %land.rhs, %for.cond17
  call void @df_simulate_finalize_backwards(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %call) #6, !dbg !3914
  %42 = load i32, i32* %index14, align 8, !dbg !3915
  %call69 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %42) #7, !dbg !3915
  %in = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call69, i64 0, i32 2, !dbg !3915
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !3915
  %call70 = call zeroext i8 @bitmap_equal_p(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %43) #6, !dbg !3916
  %tobool71 = icmp eq i8 %call70, 0, !dbg !3917
  %conv = zext i1 %tobool71 to i8, !dbg !3917
  call void @llvm.dbg.value(metadata i8 %conv, metadata !3832, metadata !DIExpression()), !dbg !3844
  br i1 %tobool71, label %if.then73, label %if.end77, !dbg !3918

if.then73:                                        ; preds = %for.end67
  %44 = load i32, i32* %index14, align 8, !dbg !3919
  %call75 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %44) #7, !dbg !3919
  %in76 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call75, i64 0, i32 2, !dbg !3919
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in76, align 8, !dbg !3919
  call void @bitmap_copy(%struct.bitmap_head_def* %45, %struct.bitmap_head_def* %call) #6, !dbg !3921
  br label %if.end77, !dbg !3921

if.end77:                                         ; preds = %if.then73, %for.end67
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3922
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3830, metadata !DIExpression()), !dbg !3844
  ret i8 %conv, !dbg !3923
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3924 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3928, metadata !DIExpression()), !dbg !3930
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3931
  store i32 0, i32* %index, align 8, !dbg !3932
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3933
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3934
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3935
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3935
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3935
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3936 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3942, metadata !DIExpression()), !dbg !3943
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3944
  %tobool = icmp eq i8 %call, 0, !dbg !3944
  br i1 %tobool, label %if.then, label %if.else, !dbg !3946

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3947
  br label %return, !dbg !3949

if.else:                                          ; preds = %entry
  br label %return, !dbg !3950

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3952
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3952
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3952
  ret i8 %retval.0, !dbg !3953
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3954 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3959, metadata !DIExpression()), !dbg !3960
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3961
  %0 = load i32, i32* %index, align 8, !dbg !3961
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3961
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3961
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3961
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3961
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3961

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3961
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3961
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3961
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3961
  br label %cond.end, !dbg !3961

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3961
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3961
  %cmp = icmp ult i32 %0, %call2, !dbg !3961
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3961

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3961
  br label %cond.end5, !dbg !3961

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3962
  %inc = add i32 %5, 1, !dbg !3962
  store i32 %inc, i32* %index, align 8, !dbg !3962
  ret void, !dbg !3963
}

declare dso_local void @df_analyze_problem(%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_byte_lr_bb_info* @df_byte_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3964 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3968, metadata !DIExpression()), !dbg !3969
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3970
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 5, !dbg !3970
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3970
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3972
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3972
  %cmp = icmp ugt i32 %2, %index, !dbg !3973
  br i1 %cmp, label %if.then, label %return, !dbg !3974

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3975
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3975
  %idxprom = zext i32 %index to i64, !dbg !3976
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3976
  %4 = bitcast i8** %arrayidx3 to %struct.df_byte_lr_bb_info**, !dbg !3976
  %5 = load %struct.df_byte_lr_bb_info*, %struct.df_byte_lr_bb_info** %4, align 8, !dbg !3976
  br label %return, !dbg !3977

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_byte_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3978
  ret %struct.df_byte_lr_bb_info* %retval.0, !dbg !3979
}

declare dso_local void @df_print_byte_regset(%struct._IO_FILE*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_byte_lr_simulate_artificial_refs_at_end(%struct.basic_block_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local i32 @df_byte_lr_get_regno_start(i32) local_unnamed_addr #1

declare dso_local i32 @df_byte_lr_get_regno_len(i32) local_unnamed_addr #1

declare dso_local zeroext i8 @df_compute_accessed_bytes(%union.df_ref_d*, i32, i32*, i32*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local void @df_byte_lr_simulate_defs(%struct.rtx_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_byte_lr_simulate_uses(%struct.rtx_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_byte_lr_simulate_artificial_refs_at_top(%struct.basic_block_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_equal_p(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3980 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3984, metadata !DIExpression()), !dbg !3985
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3986
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !3986
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3986
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3988
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3988
  %cmp = icmp ugt i32 %2, %index, !dbg !3989
  br i1 %cmp, label %if.then, label %return, !dbg !3990

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3991
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3991
  %idxprom = zext i32 %index to i64, !dbg !3992
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3992
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !3992
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !3992
  br label %return, !dbg !3993

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3994
  ret %struct.df_lr_bb_info* %retval.0, !dbg !3995
}

declare dso_local void @df_print_regset(%struct._IO_FILE*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_simulate_initialize_backwards(%struct.basic_block_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_simulate_defs(%struct.rtx_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_simulate_uses(%struct.rtx_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_simulate_finalize_backwards(%struct.basic_block_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3996 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4001
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4001
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4001

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4001
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4001
  br label %cond.end, !dbg !4001

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4001
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4001
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4002
  %conv3 = zext i1 %cmp to i8, !dbg !4003
  ret i8 %conv3, !dbg !4004
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4005 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4010
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4010
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4010

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4010
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4010
  br label %cond.end, !dbg !4010

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4010
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4010
  ret %struct.edge_def* %call2, !dbg !4011
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4012 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4018, metadata !DIExpression()), !dbg !4019
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4020
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4020

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4020
  %0 = load i32, i32* %num, align 8, !dbg !4020
  br label %cond.end, !dbg !4020

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4020
  ret i32 %cond, !dbg !4020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4021 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4026
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4026

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4026
  br label %cond.end, !dbg !4026

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4027
  ret %struct.VEC_edge_gc* %0, !dbg !4028
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4029 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4033, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4034, metadata !DIExpression()), !dbg !4035
  br label %land.end, !dbg !4036

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4036
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4036
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4036
  ret %struct.edge_def* %0, !dbg !4036
}

declare dso_local void @df_byte_lr_add_problem() local_unnamed_addr #1

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
!llvm.module.flags = !{!2017, !2018, !2019}
!llvm.ident = !{!2020}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ud_rtl_dce", scope: !2, file: !3, line: 737, type: !1968, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710, globals: !1965, nameTableKind: None)
!3 = !DIFile(filename: "dce.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!710 = !{!711, !712, !713, !714, !717, !718, !567, !720, !755, !189, !783, !784, !7, !1879, !738, !1884, !1951, !1958}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!713 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !721, line: 47, baseType: !722)
!721 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !724, line: 75, size: 256, elements: !725)
!724 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!725 = !{!726, !741, !742, !743}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !723, file: !724, line: 76, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !724, line: 68, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !724, line: 63, size: 320, elements: !730)
!730 = !{!731, !733, !734, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !729, file: !724, line: 64, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !729, file: !724, line: 65, baseType: !732, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !729, file: !724, line: 66, baseType: !7, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !729, file: !724, line: 67, baseType: !736, size: 128, offset: 192)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 128, elements: !739)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !724, line: 29, baseType: !738)
!738 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!739 = !{!740}
!740 = !DISubrange(count: 2)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !723, file: !724, line: 77, baseType: !727, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !723, file: !724, line: 78, baseType: !7, size: 32, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !723, file: !724, line: 79, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !724, line: 49, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !724, line: 45, size: 832, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !746, file: !724, line: 46, baseType: !732, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !746, file: !724, line: 47, baseType: !722, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !746, file: !724, line: 48, baseType: !751, size: 704, offset: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !752, line: 164, size: 704, elements: !753)
!752 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!753 = !{!754, !756, !766, !767, !768, !769, !770, !771, !775, !779, !780, !781, !782}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !751, file: !752, line: 166, baseType: !755, size: 64)
!755 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !751, file: !752, line: 167, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !752, line: 157, size: 192, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !758, file: !752, line: 159, baseType: !715, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !758, file: !752, line: 160, baseType: !757, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !758, file: !752, line: 161, baseType: !763, size: 32, offset: 128)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 32, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 4)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !751, file: !752, line: 168, baseType: !715, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !751, file: !752, line: 169, baseType: !715, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !751, file: !752, line: 170, baseType: !715, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !751, file: !752, line: 171, baseType: !755, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !751, file: !752, line: 172, baseType: !713, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !751, file: !752, line: 176, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!757, !717, !755}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !751, file: !752, line: 177, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !717, !757}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !751, file: !752, line: 178, baseType: !717, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !751, file: !752, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !751, file: !752, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !751, file: !752, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!783 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !721, line: 50, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !786, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !786, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !786, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !786, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !786, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !786, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !786, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !786, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !786, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !786, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !786, file: !568, line: 321, baseType: !799, size: 320, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !800)
!800 = !{!801, !1846, !1848, !1877, !1878}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !799, file: !568, line: 316, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 64, elements: !818)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !820, !821, !833, !857, !858, !1824, !1825, !1836, !1843}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !804, file: !568, line: 168, baseType: !713, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !804, file: !568, line: 169, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !804, file: !568, line: 170, baseType: !718, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !804, file: !568, line: 171, baseType: !784, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !804, file: !568, line: 172, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !721, line: 53, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !813, file: !568, line: 360, baseType: !713, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !813, file: !568, line: 361, baseType: !817, size: 64, offset: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 64, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 1)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !804, file: !568, line: 173, baseType: !189, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !804, file: !568, line: 174, baseType: !822, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !823, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !823, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !823, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !823, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !823, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !823, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !823, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !823, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !804, file: !568, line: 175, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !836, line: 23, size: 320, elements: !837)
!836 = !DIFile(filename: "./cselib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!837 = !{!838, !839, !840, !841, !848, !856}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !835, file: !836, line: 25, baseType: !7, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !835, file: !836, line: 28, baseType: !713, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val_rtx", scope: !835, file: !836, line: 31, baseType: !784, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "locs", scope: !835, file: !836, line: 35, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_loc_list", file: !836, line: 45, size: 192, elements: !844)
!844 = !{!845, !846, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !836, line: 47, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !843, file: !836, line: 49, baseType: !784, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "setting_insn", scope: !843, file: !836, line: 51, baseType: !784, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list", scope: !835, file: !836, line: 39, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elt_list", file: !836, line: 55, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !836, line: 56, baseType: !849, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "elt", scope: !850, file: !836, line: 57, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "cselib_val", file: !836, line: 42, baseType: !835)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next_containing_mem", scope: !835, file: !836, line: 41, baseType: !834, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !804, file: !568, line: 176, baseType: !722, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !804, file: !568, line: 177, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !721, line: 56, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !862)
!862 = !{!863, !896, !902, !913, !932, !943, !948, !955, !961, !974, !986, !1024, !1029, !1057, !1065, !1066, !1071, !1080, !1086, !1091, !1095, !1099, !1460, !1509, !1515, !1521, !1528, !1554, !1568, !1585, !1597, !1619, !1634, !1806}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !861, file: !341, line: 3372, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !864, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !864, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !864, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !864, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !864, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !864, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !864, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !864, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !864, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !864, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !864, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !864, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !864, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !864, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !864, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !864, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !864, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !864, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !864, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !864, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !864, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !864, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !864, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !864, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !864, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !864, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !864, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !864, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !864, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !864, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !861, file: !341, line: 3373, baseType: !897, size: 192)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !897, file: !341, line: 403, baseType: !864, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !897, file: !341, line: 404, baseType: !859, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !897, file: !341, line: 405, baseType: !859, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !861, file: !341, line: 3374, baseType: !903, size: 320)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !341, line: 1385, baseType: !897, size: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !903, file: !341, line: 1386, baseType: !907, size: 128, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !908, line: 58, baseType: !909)
!908 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !908, line: 54, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !909, file: !908, line: 56, baseType: !738, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !909, file: !908, line: 57, baseType: !755, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !861, file: !341, line: 3375, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !914, file: !341, line: 1398, baseType: !897, size: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !914, file: !341, line: 1399, baseType: !918, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !920, line: 52, size: 256, elements: !921)
!920 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !919, file: !920, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !919, file: !920, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !919, file: !920, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !919, file: !920, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !919, file: !920, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !919, file: !920, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !919, file: !920, line: 62, baseType: !929, size: 192, offset: 64)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 192, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 3)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !861, file: !341, line: 3376, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !341, line: 1409, baseType: !897, size: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !933, file: !341, line: 1410, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !939, line: 27, size: 192, elements: !940)
!939 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !938, file: !939, line: 29, baseType: !907, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !938, file: !939, line: 30, baseType: !189, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !861, file: !341, line: 3377, baseType: !944, size: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !944, file: !341, line: 1438, baseType: !897, size: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !944, file: !341, line: 1439, baseType: !859, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !861, file: !341, line: 3378, baseType: !949, size: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !949, file: !341, line: 1419, baseType: !897, size: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !949, file: !341, line: 1420, baseType: !713, size: 32, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !949, file: !341, line: 1421, baseType: !954, size: 8, offset: 224)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 8, elements: !818)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !861, file: !341, line: 3379, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !956, file: !341, line: 1429, baseType: !897, size: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !956, file: !341, line: 1430, baseType: !859, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !956, file: !341, line: 1431, baseType: !859, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !861, file: !341, line: 3380, baseType: !962, size: 320)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !341, line: 1461, baseType: !897, size: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !962, file: !341, line: 1462, baseType: !966, size: 128, offset: 192)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !967, line: 31, size: 128, elements: !968)
!967 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!968 = !{!969, !972, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !966, file: !967, line: 32, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !966, file: !967, line: 33, baseType: !7, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !966, file: !967, line: 34, baseType: !7, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !861, file: !341, line: 3381, baseType: !975, size: 384)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !976)
!976 = !{!977, !978, !983, !984, !985}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !975, file: !341, line: 2508, baseType: !897, size: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !975, file: !341, line: 2509, baseType: !979, size: 32, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !980, line: 58, baseType: !981)
!980 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !982, line: 44, baseType: !7)
!982 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !975, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !975, file: !341, line: 2511, baseType: !859, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !975, file: !341, line: 2512, baseType: !859, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !861, file: !341, line: 3382, baseType: !987, size: 896)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !341, line: 2653, baseType: !975, size: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !987, file: !341, line: 2654, baseType: !859, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !987, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !987, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !987, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !987, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !987, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !987, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !987, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !987, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !987, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !987, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !987, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !987, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !987, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !987, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !987, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !987, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !987, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !987, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !987, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !987, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !987, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !987, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !987, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !987, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !987, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !987, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !987, file: !341, line: 2705, baseType: !859, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !987, file: !341, line: 2706, baseType: !859, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !987, file: !341, line: 2707, baseType: !859, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !987, file: !341, line: 2708, baseType: !859, size: 64, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !987, file: !341, line: 2711, baseType: !1022, size: 64, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !861, file: !341, line: 3383, baseType: !1025, size: 960)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1025, file: !341, line: 2757, baseType: !987, size: 896)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1025, file: !341, line: 2758, baseType: !784, size: 64, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !861, file: !341, line: 3384, baseType: !1030, size: 1472)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1031)
!1031 = !{!1032, !1053, !1054, !1055, !1056}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1030, file: !341, line: 3115, baseType: !1033, size: 1216)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1033, file: !341, line: 2985, baseType: !1025, size: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1033, file: !341, line: 2986, baseType: !859, size: 64, offset: 960)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1033, file: !341, line: 2987, baseType: !859, size: 64, offset: 1024)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1033, file: !341, line: 2988, baseType: !859, size: 64, offset: 1088)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1033, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1033, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1033, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1033, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1033, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1033, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1033, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1033, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1033, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1033, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1033, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1033, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1033, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1033, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1030, file: !341, line: 3117, baseType: !859, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1030, file: !341, line: 3119, baseType: !859, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1030, file: !341, line: 3121, baseType: !859, size: 64, offset: 1344)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1030, file: !341, line: 3123, baseType: !859, size: 64, offset: 1408)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !861, file: !341, line: 3385, baseType: !1058, size: 1088)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1058, file: !341, line: 2875, baseType: !1025, size: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1058, file: !341, line: 2876, baseType: !784, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1058, file: !341, line: 2877, baseType: !1063, size: 64, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !861, file: !341, line: 3386, baseType: !1033, size: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !861, file: !341, line: 3387, baseType: !1067, size: 1280)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1067, file: !341, line: 3094, baseType: !1033, size: 1216)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1067, file: !341, line: 3095, baseType: !1063, size: 64, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !861, file: !341, line: 3388, baseType: !1072, size: 1216)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !341, line: 2825, baseType: !987, size: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1072, file: !341, line: 2827, baseType: !859, size: 64, offset: 896)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1072, file: !341, line: 2828, baseType: !859, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1072, file: !341, line: 2829, baseType: !859, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1072, file: !341, line: 2830, baseType: !859, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1072, file: !341, line: 2831, baseType: !859, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !861, file: !341, line: 3389, baseType: !1081, size: 1024)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1081, file: !341, line: 2851, baseType: !1025, size: 960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1081, file: !341, line: 2852, baseType: !713, size: 32, offset: 960)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1081, file: !341, line: 2853, baseType: !713, size: 32, offset: 992)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !861, file: !341, line: 3390, baseType: !1087, size: 1024)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1087, file: !341, line: 2858, baseType: !1025, size: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1087, file: !341, line: 2859, baseType: !1063, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !861, file: !341, line: 3391, baseType: !1092, size: 960)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1093)
!1093 = !{!1094}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !341, line: 2863, baseType: !1025, size: 960)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !861, file: !341, line: 3392, baseType: !1096, size: 1472)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !341, line: 3305, baseType: !1030, size: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !861, file: !341, line: 3393, baseType: !1100, size: 1792)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1101)
!1101 = !{!1102, !1103, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1100, file: !341, line: 3249, baseType: !1030, size: 1472)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1100, file: !341, line: 3251, baseType: !1104, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1106, line: 463, size: 1152, elements: !1107)
!1106 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1107 = !{!1108, !1272, !1376, !1377, !1380, !1383, !1384, !1385, !1386, !1387, !1388, !1412, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1105, file: !1106, line: 464, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1111)
!1111 = !{!1112, !1161, !1174, !1188, !1240, !1253}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1110, file: !318, line: 197, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1149, !1158, !1159, !1160}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1115, file: !318, line: 119, baseType: !1114, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1115, file: !318, line: 122, baseType: !1114, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1115, file: !318, line: 123, baseType: !1114, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1115, file: !318, line: 126, baseType: !713, size: 32, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1115, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1115, file: !318, line: 165, baseType: !1123, size: 192, offset: 256)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1124)
!1124 = !{!1125, !1138, !1144}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1123, file: !318, line: 137, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1127)
!1127 = !{!1128, !1137}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1126, file: !318, line: 135, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1130, file: !318, line: 96, baseType: !1129, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1130, file: !318, line: 97, baseType: !1129, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1130, file: !318, line: 101, baseType: !859, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1130, file: !318, line: 106, baseType: !859, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1130, file: !318, line: 111, baseType: !859, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1126, file: !318, line: 136, baseType: !1129, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1123, file: !318, line: 151, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1139, file: !318, line: 141, baseType: !859, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1139, file: !318, line: 145, baseType: !859, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1139, file: !318, line: 150, baseType: !713, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1123, file: !318, line: 164, baseType: !1145, size: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1146)
!1146 = !{!1147, !1148}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1145, file: !318, line: 161, baseType: !859, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1145, file: !318, line: 163, baseType: !979, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1115, file: !318, line: 168, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1151, file: !318, line: 70, baseType: !1150, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1151, file: !318, line: 73, baseType: !1114, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1151, file: !318, line: 78, baseType: !859, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1151, file: !318, line: 85, baseType: !784, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1151, file: !318, line: 88, baseType: !713, size: 32, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1115, file: !318, line: 173, baseType: !784, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1115, file: !318, line: 173, baseType: !784, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1115, file: !318, line: 177, baseType: !712, size: 8, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1110, file: !318, line: 200, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1164, file: !318, line: 185, baseType: !1167, size: 128)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1169)
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1168, file: !318, line: 184, baseType: !7, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1168, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1168, file: !318, line: 184, baseType: !1173, size: 64, offset: 64)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 64, elements: !818)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1110, file: !318, line: 203, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1177, file: !318, line: 189, baseType: !1180, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1181, file: !318, line: 188, baseType: !7, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1181, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1181, file: !318, line: 188, baseType: !1186, size: 64, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 64, elements: !818)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1150)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1110, file: !318, line: 207, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1190, line: 144, baseType: !1191)
!1190 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1190, line: 100, size: 896, elements: !1193)
!1193 = !{!1194, !1202, !1207, !1212, !1214, !1217, !1218, !1219, !1220, !1221, !1226, !1228, !1229, !1234, !1239}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1192, file: !1190, line: 102, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1190, line: 52, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1190, line: 47, baseType: !7)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1192, file: !1190, line: 105, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1190, line: 59, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!713, !1200, !1200}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1192, file: !1190, line: 108, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1190, line: 63, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !717}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1192, file: !1190, line: 111, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1192, file: !1190, line: 114, baseType: !1215, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1216, line: 46, baseType: !738)
!1216 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1192, file: !1190, line: 117, baseType: !1215, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1192, file: !1190, line: 120, baseType: !1215, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1192, file: !1190, line: 124, baseType: !7, size: 32, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1192, file: !1190, line: 128, baseType: !7, size: 32, offset: 480)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1192, file: !1190, line: 131, baseType: !1222, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1190, line: 75, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!717, !1215, !1215}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1192, file: !1190, line: 132, baseType: !1227, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1190, line: 78, baseType: !1209)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1192, file: !1190, line: 135, baseType: !717, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1192, file: !1190, line: 136, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1190, line: 82, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!717, !717, !1215, !1215}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1192, file: !1190, line: 137, baseType: !1235, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1190, line: 83, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !717, !717}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1192, file: !1190, line: 141, baseType: !7, size: 32, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1110, file: !318, line: 211, baseType: !1241, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1243, file: !341, line: 183, baseType: !1246, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1247, file: !341, line: 182, baseType: !7, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1247, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1247, file: !341, line: 182, baseType: !1252, size: 64, offset: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 64, elements: !818)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1110, file: !318, line: 220, baseType: !1254, size: 64, offset: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1254, file: !318, line: 218, baseType: !1241, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1254, file: !318, line: 219, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1260, line: 29, baseType: !1261)
!1260 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1260, line: 29, size: 96, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !1260, line: 29, baseType: !1264, size: 96)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1260, line: 27, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1260, line: 27, size: 96, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1265, file: !1260, line: 27, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1265, file: !1260, line: 27, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1265, file: !1260, line: 27, baseType: !1270, size: 8, offset: 64)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 8, elements: !818)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1260, line: 26, baseType: !712)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1105, file: !1106, line: 467, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1275)
!1275 = !{!1276, !1351, !1352, !1365, !1366, !1367, !1368, !1369, !1370, !1372, !1374, !1375}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1274, file: !325, line: 377, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !721, line: 111, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1280)
!1280 = !{!1281, !1316, !1317, !1318, !1321, !1325, !1326, !1327, !1345, !1346, !1347, !1348, !1349, !1350}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1279, file: !325, line: 219, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1284, file: !325, line: 151, baseType: !1287, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1288, file: !325, line: 150, baseType: !7, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1288, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1288, file: !325, line: 150, baseType: !1293, size: 64, offset: 64)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 64, elements: !818)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !721, line: 108, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1296, file: !325, line: 124, baseType: !1278, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1296, file: !325, line: 125, baseType: !1278, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1296, file: !325, line: 131, baseType: !1301, size: 64, offset: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1302)
!1302 = !{!1303, !1307}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1301, file: !325, line: 129, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !721, line: 66, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !721, line: 65, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1301, file: !325, line: 130, baseType: !784, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1296, file: !325, line: 134, baseType: !717, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1296, file: !325, line: 137, baseType: !859, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1296, file: !325, line: 138, baseType: !979, size: 32, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1296, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1296, file: !325, line: 144, baseType: !713, size: 32, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1296, file: !325, line: 145, baseType: !713, size: 32, offset: 416)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1296, file: !325, line: 146, baseType: !1315, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !755)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1279, file: !325, line: 220, baseType: !1282, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1279, file: !325, line: 223, baseType: !717, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1279, file: !325, line: 226, baseType: !1319, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1279, file: !325, line: 229, baseType: !1322, size: 128, offset: 256)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 128, elements: !739)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1279, file: !325, line: 232, baseType: !1278, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1279, file: !325, line: 233, baseType: !1278, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1279, file: !325, line: 238, baseType: !1328, size: 64, offset: 512)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1329)
!1329 = !{!1330, !1336}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1328, file: !325, line: 236, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1332, file: !325, line: 275, baseType: !1304, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1332, file: !325, line: 278, baseType: !1304, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1328, file: !325, line: 237, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1338, file: !325, line: 261, baseType: !784, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1338, file: !325, line: 262, baseType: !784, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1338, file: !325, line: 266, baseType: !784, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1338, file: !325, line: 267, baseType: !784, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1338, file: !325, line: 270, baseType: !713, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1279, file: !325, line: 241, baseType: !1315, size: 64, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1279, file: !325, line: 244, baseType: !713, size: 32, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1279, file: !325, line: 247, baseType: !713, size: 32, offset: 672)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1279, file: !325, line: 250, baseType: !713, size: 32, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1279, file: !325, line: 253, baseType: !713, size: 32, offset: 736)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !325, line: 256, baseType: !713, size: 32, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1274, file: !325, line: 378, baseType: !1277, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1274, file: !325, line: 381, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1355, file: !325, line: 282, baseType: !1358, size: 128)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1360)
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1359, file: !325, line: 281, baseType: !7, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1359, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1359, file: !325, line: 281, baseType: !1364, size: 64, offset: 64)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1277, size: 64, elements: !818)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1274, file: !325, line: 384, baseType: !713, size: 32, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1274, file: !325, line: 387, baseType: !713, size: 32, offset: 224)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1274, file: !325, line: 390, baseType: !713, size: 32, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1274, file: !325, line: 394, baseType: !1353, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1274, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1274, file: !325, line: 399, baseType: !1371, size: 64, offset: 416)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !739)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1274, file: !325, line: 402, baseType: !1373, size: 64, offset: 480)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !739)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1274, file: !325, line: 406, baseType: !713, size: 32, offset: 544)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1274, file: !325, line: 409, baseType: !713, size: 32, offset: 576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1105, file: !1106, line: 470, baseType: !1305, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1105, file: !1106, line: 473, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1106, line: 166, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1105, file: !1106, line: 476, baseType: !1381, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1106, line: 476, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1105, file: !1106, line: 479, baseType: !1189, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1105, file: !1106, line: 484, baseType: !859, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1105, file: !1106, line: 488, baseType: !859, size: 64, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1105, file: !1106, line: 493, baseType: !859, size: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1105, file: !1106, line: 496, baseType: !859, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1105, file: !1106, line: 501, baseType: !1389, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1391)
!1391 = !{!1392, !1395, !1396, !1397, !1398, !1400, !1401, !1406, !1407, !1408, !1409, !1410, !1411}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1390, file: !336, line: 2356, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1390, file: !336, line: 2357, baseType: !718, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1390, file: !336, line: 2358, baseType: !713, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1390, file: !336, line: 2359, baseType: !713, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1390, file: !336, line: 2360, baseType: !1399, size: 128, offset: 192)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !764)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1390, file: !336, line: 2364, baseType: !713, size: 32, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1390, file: !336, line: 2367, baseType: !1402, size: 128, offset: 384)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1402, file: !336, line: 2351, baseType: !784, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1402, file: !336, line: 2352, baseType: !755, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1390, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1390, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1390, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1390, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1390, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1390, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1105, file: !1106, line: 504, baseType: !1413, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1106, line: 504, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1105, file: !1106, line: 507, baseType: !1189, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1105, file: !1106, line: 510, baseType: !713, size: 32, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1105, file: !1106, line: 513, baseType: !713, size: 32, offset: 864)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1105, file: !1106, line: 516, baseType: !979, size: 32, offset: 896)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1105, file: !1106, line: 519, baseType: !979, size: 32, offset: 928)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1105, file: !1106, line: 522, baseType: !7, size: 32, offset: 960)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1105, file: !1106, line: 523, baseType: !7, size: 32, offset: 992)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1105, file: !1106, line: 528, baseType: !718, size: 64, offset: 1024)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1105, file: !1106, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1105, file: !1106, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1105, file: !1106, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1105, file: !1106, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1105, file: !1106, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1105, file: !1106, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1105, file: !1106, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1105, file: !1106, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1105, file: !1106, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1105, file: !1106, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1105, file: !1106, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1105, file: !1106, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1105, file: !1106, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1105, file: !1106, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1105, file: !1106, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1105, file: !1106, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1100, file: !341, line: 3254, baseType: !859, size: 64, offset: 1536)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1100, file: !341, line: 3257, baseType: !859, size: 64, offset: 1600)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1100, file: !341, line: 3258, baseType: !859, size: 64, offset: 1664)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1100, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1100, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1100, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1100, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1100, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1100, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1100, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1100, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1100, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1100, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1100, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1100, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1100, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1100, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1100, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1100, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1100, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1100, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !861, file: !341, line: 3394, baseType: !1461, size: 1344)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1488, !1489, !1490, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !341, line: 2280, baseType: !897, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1461, file: !341, line: 2281, baseType: !859, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1461, file: !341, line: 2282, baseType: !859, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1461, file: !341, line: 2283, baseType: !859, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1461, file: !341, line: 2284, baseType: !859, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1461, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1461, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1461, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1461, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1461, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1461, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1461, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1461, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1461, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1461, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1461, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1461, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1461, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1461, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1461, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1461, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1461, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1461, file: !341, line: 2306, baseType: !1486, size: 32, offset: 544)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1487, line: 31, baseType: !713)
!1487 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1461, file: !341, line: 2307, baseType: !859, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1461, file: !341, line: 2308, baseType: !859, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1461, file: !341, line: 2314, baseType: !1491, size: 64, offset: 704)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1491, file: !341, line: 2310, baseType: !713, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1491, file: !341, line: 2311, baseType: !718, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1491, file: !341, line: 2312, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1461, file: !341, line: 2315, baseType: !859, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1461, file: !341, line: 2316, baseType: !859, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1461, file: !341, line: 2317, baseType: !859, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1461, file: !341, line: 2318, baseType: !859, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1461, file: !341, line: 2319, baseType: !859, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1461, file: !341, line: 2320, baseType: !859, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1461, file: !341, line: 2321, baseType: !859, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1461, file: !341, line: 2322, baseType: !859, size: 64, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1461, file: !341, line: 2324, baseType: !1507, size: 64, offset: 1280)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !861, file: !341, line: 3395, baseType: !1510, size: 320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1511)
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !341, line: 1470, baseType: !897, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1510, file: !341, line: 1471, baseType: !859, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1510, file: !341, line: 1472, baseType: !859, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !861, file: !341, line: 3396, baseType: !1516, size: 320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1517)
!1517 = !{!1518, !1519, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1516, file: !341, line: 1483, baseType: !897, size: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1516, file: !341, line: 1484, baseType: !713, size: 32, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1516, file: !341, line: 1485, baseType: !1252, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !861, file: !341, line: 3397, baseType: !1522, size: 384)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1522, file: !341, line: 1830, baseType: !897, size: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1522, file: !341, line: 1831, baseType: !979, size: 32, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1522, file: !341, line: 1832, baseType: !859, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1522, file: !341, line: 1835, baseType: !1252, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !861, file: !341, line: 3398, baseType: !1529, size: 704)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1537, !1538, !1541}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !341, line: 1899, baseType: !897, size: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1529, file: !341, line: 1902, baseType: !859, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1529, file: !341, line: 1905, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !721, line: 58, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !721, line: 57, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1529, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1529, file: !341, line: 1911, baseType: !1539, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1529, file: !341, line: 1914, baseType: !1542, size: 256, offset: 448)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1543)
!1543 = !{!1544, !1546, !1547, !1552}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1542, file: !341, line: 1884, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1542, file: !341, line: 1885, baseType: !1545, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1542, file: !341, line: 1891, baseType: !1548, size: 64, offset: 128)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !341, line: 1891, size: 64, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1548, file: !341, line: 1891, baseType: !1534, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1548, file: !341, line: 1891, baseType: !859, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1542, file: !341, line: 1892, baseType: !1553, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !861, file: !341, line: 3399, baseType: !1555, size: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1555, file: !341, line: 2009, baseType: !897, size: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1555, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1555, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1555, file: !341, line: 2014, baseType: !979, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1555, file: !341, line: 2016, baseType: !859, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1555, file: !341, line: 2017, baseType: !1241, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1555, file: !341, line: 2019, baseType: !859, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1555, file: !341, line: 2020, baseType: !859, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1555, file: !341, line: 2021, baseType: !859, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1555, file: !341, line: 2022, baseType: !859, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1555, file: !341, line: 2023, baseType: !859, size: 64, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !861, file: !341, line: 3400, baseType: !1569, size: 832)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1569, file: !341, line: 2431, baseType: !897, size: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1569, file: !341, line: 2433, baseType: !859, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1569, file: !341, line: 2434, baseType: !859, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1569, file: !341, line: 2435, baseType: !859, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1569, file: !341, line: 2436, baseType: !859, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1569, file: !341, line: 2437, baseType: !1241, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1569, file: !341, line: 2438, baseType: !859, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1569, file: !341, line: 2440, baseType: !859, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1569, file: !341, line: 2441, baseType: !859, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1569, file: !341, line: 2443, baseType: !1581, size: 128, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1582, file: !341, line: 182, baseType: !1246, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !861, file: !341, line: 3401, baseType: !1586, size: 320)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1587)
!1587 = !{!1588, !1589, !1596}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1586, file: !341, line: 3329, baseType: !897, size: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1586, file: !341, line: 3330, baseType: !1590, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1591, file: !341, line: 3322, baseType: !1590, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1591, file: !341, line: 3323, baseType: !1590, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1591, file: !341, line: 3324, baseType: !859, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1586, file: !341, line: 3331, baseType: !1590, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !861, file: !341, line: 3402, baseType: !1598, size: 256)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1598, file: !341, line: 1541, baseType: !897, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1598, file: !341, line: 1542, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1604)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1604, file: !341, line: 1538, baseType: !1607, size: 192)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1608, file: !341, line: 1537, baseType: !7, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1608, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1608, file: !341, line: 1537, baseType: !1613, size: 128, offset: 64)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1614, size: 128, elements: !818)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1615)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1615, file: !341, line: 1533, baseType: !859, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1615, file: !341, line: 1534, baseType: !859, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !861, file: !341, line: 3403, baseType: !1620, size: 512)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1631, !1632, !1633}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1620, file: !341, line: 1939, baseType: !897, size: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1620, file: !341, line: 1940, baseType: !979, size: 32, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1620, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1620, file: !341, line: 1946, baseType: !1626, size: 32, offset: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1627)
!1627 = !{!1628, !1629, !1630}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1626, file: !341, line: 1943, baseType: !359, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1626, file: !341, line: 1944, baseType: !366, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1626, file: !341, line: 1945, baseType: !373, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1620, file: !341, line: 1950, baseType: !1304, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1620, file: !341, line: 1951, baseType: !1304, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1620, file: !341, line: 1953, baseType: !1252, size: 64, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !861, file: !341, line: 3404, baseType: !1635, size: 1664)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1635, file: !341, line: 3338, baseType: !897, size: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1635, file: !341, line: 3341, baseType: !1639, size: 1472, offset: 192)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1640, line: 410, size: 1472, elements: !1641)
!1640 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1639, file: !1640, line: 412, baseType: !713, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1639, file: !1640, line: 413, baseType: !713, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1639, file: !1640, line: 414, baseType: !713, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1639, file: !1640, line: 415, baseType: !713, size: 32, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1639, file: !1640, line: 416, baseType: !713, size: 32, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1639, file: !1640, line: 417, baseType: !713, size: 32, offset: 160)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1639, file: !1640, line: 418, baseType: !712, size: 8, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1639, file: !1640, line: 419, baseType: !712, size: 8, offset: 200)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1639, file: !1640, line: 420, baseType: !1651, size: 8, offset: 208)
!1651 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1639, file: !1640, line: 421, baseType: !1651, size: 8, offset: 216)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1639, file: !1640, line: 422, baseType: !1651, size: 8, offset: 224)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1639, file: !1640, line: 423, baseType: !1651, size: 8, offset: 232)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1639, file: !1640, line: 424, baseType: !1651, size: 8, offset: 240)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1639, file: !1640, line: 425, baseType: !1651, size: 8, offset: 248)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1639, file: !1640, line: 426, baseType: !1651, size: 8, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1639, file: !1640, line: 427, baseType: !1651, size: 8, offset: 264)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1639, file: !1640, line: 428, baseType: !1651, size: 8, offset: 272)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1639, file: !1640, line: 429, baseType: !1651, size: 8, offset: 280)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1639, file: !1640, line: 430, baseType: !1651, size: 8, offset: 288)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1639, file: !1640, line: 431, baseType: !1651, size: 8, offset: 296)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1639, file: !1640, line: 432, baseType: !1651, size: 8, offset: 304)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1639, file: !1640, line: 433, baseType: !1651, size: 8, offset: 312)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1639, file: !1640, line: 434, baseType: !1651, size: 8, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1639, file: !1640, line: 435, baseType: !1651, size: 8, offset: 328)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1639, file: !1640, line: 436, baseType: !1651, size: 8, offset: 336)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1639, file: !1640, line: 437, baseType: !1651, size: 8, offset: 344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1639, file: !1640, line: 438, baseType: !1651, size: 8, offset: 352)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1639, file: !1640, line: 439, baseType: !1651, size: 8, offset: 360)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1639, file: !1640, line: 440, baseType: !1651, size: 8, offset: 368)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1639, file: !1640, line: 441, baseType: !1651, size: 8, offset: 376)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1639, file: !1640, line: 442, baseType: !1651, size: 8, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1639, file: !1640, line: 443, baseType: !1651, size: 8, offset: 392)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1639, file: !1640, line: 444, baseType: !1651, size: 8, offset: 400)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1639, file: !1640, line: 445, baseType: !1651, size: 8, offset: 408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1639, file: !1640, line: 446, baseType: !1651, size: 8, offset: 416)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1639, file: !1640, line: 447, baseType: !1651, size: 8, offset: 424)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1639, file: !1640, line: 448, baseType: !1651, size: 8, offset: 432)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1639, file: !1640, line: 449, baseType: !1651, size: 8, offset: 440)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1639, file: !1640, line: 450, baseType: !1651, size: 8, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1639, file: !1640, line: 451, baseType: !1651, size: 8, offset: 456)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1639, file: !1640, line: 452, baseType: !1651, size: 8, offset: 464)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1639, file: !1640, line: 453, baseType: !1651, size: 8, offset: 472)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1639, file: !1640, line: 454, baseType: !1651, size: 8, offset: 480)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1639, file: !1640, line: 455, baseType: !1651, size: 8, offset: 488)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1639, file: !1640, line: 456, baseType: !1651, size: 8, offset: 496)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1639, file: !1640, line: 457, baseType: !1651, size: 8, offset: 504)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1639, file: !1640, line: 458, baseType: !1651, size: 8, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1639, file: !1640, line: 459, baseType: !1651, size: 8, offset: 520)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1639, file: !1640, line: 460, baseType: !1651, size: 8, offset: 528)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1639, file: !1640, line: 461, baseType: !1651, size: 8, offset: 536)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1639, file: !1640, line: 462, baseType: !1651, size: 8, offset: 544)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1639, file: !1640, line: 463, baseType: !1651, size: 8, offset: 552)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1639, file: !1640, line: 464, baseType: !1651, size: 8, offset: 560)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1639, file: !1640, line: 465, baseType: !1651, size: 8, offset: 568)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1639, file: !1640, line: 466, baseType: !1651, size: 8, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1639, file: !1640, line: 467, baseType: !1651, size: 8, offset: 584)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1639, file: !1640, line: 468, baseType: !1651, size: 8, offset: 592)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1639, file: !1640, line: 469, baseType: !1651, size: 8, offset: 600)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1639, file: !1640, line: 470, baseType: !1651, size: 8, offset: 608)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1639, file: !1640, line: 471, baseType: !1651, size: 8, offset: 616)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1639, file: !1640, line: 472, baseType: !1651, size: 8, offset: 624)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1639, file: !1640, line: 473, baseType: !1651, size: 8, offset: 632)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1639, file: !1640, line: 474, baseType: !1651, size: 8, offset: 640)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1639, file: !1640, line: 475, baseType: !1651, size: 8, offset: 648)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1639, file: !1640, line: 476, baseType: !1651, size: 8, offset: 656)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1639, file: !1640, line: 477, baseType: !1651, size: 8, offset: 664)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1639, file: !1640, line: 478, baseType: !1651, size: 8, offset: 672)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1639, file: !1640, line: 479, baseType: !1651, size: 8, offset: 680)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1639, file: !1640, line: 480, baseType: !1651, size: 8, offset: 688)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1639, file: !1640, line: 481, baseType: !1651, size: 8, offset: 696)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1639, file: !1640, line: 482, baseType: !1651, size: 8, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1639, file: !1640, line: 483, baseType: !1651, size: 8, offset: 712)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1639, file: !1640, line: 484, baseType: !1651, size: 8, offset: 720)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1639, file: !1640, line: 485, baseType: !1651, size: 8, offset: 728)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1639, file: !1640, line: 486, baseType: !1651, size: 8, offset: 736)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1639, file: !1640, line: 487, baseType: !1651, size: 8, offset: 744)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1639, file: !1640, line: 488, baseType: !1651, size: 8, offset: 752)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1639, file: !1640, line: 489, baseType: !1651, size: 8, offset: 760)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1639, file: !1640, line: 490, baseType: !1651, size: 8, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1639, file: !1640, line: 491, baseType: !1651, size: 8, offset: 776)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1639, file: !1640, line: 492, baseType: !1651, size: 8, offset: 784)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1639, file: !1640, line: 493, baseType: !1651, size: 8, offset: 792)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1639, file: !1640, line: 494, baseType: !1651, size: 8, offset: 800)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1639, file: !1640, line: 495, baseType: !1651, size: 8, offset: 808)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1639, file: !1640, line: 496, baseType: !1651, size: 8, offset: 816)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1639, file: !1640, line: 497, baseType: !1651, size: 8, offset: 824)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1639, file: !1640, line: 498, baseType: !1651, size: 8, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1639, file: !1640, line: 499, baseType: !1651, size: 8, offset: 840)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1639, file: !1640, line: 500, baseType: !1651, size: 8, offset: 848)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1639, file: !1640, line: 501, baseType: !1651, size: 8, offset: 856)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1639, file: !1640, line: 502, baseType: !1651, size: 8, offset: 864)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1639, file: !1640, line: 503, baseType: !1651, size: 8, offset: 872)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1639, file: !1640, line: 504, baseType: !1651, size: 8, offset: 880)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1639, file: !1640, line: 505, baseType: !1651, size: 8, offset: 888)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1639, file: !1640, line: 506, baseType: !1651, size: 8, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1639, file: !1640, line: 507, baseType: !1651, size: 8, offset: 904)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1639, file: !1640, line: 508, baseType: !1651, size: 8, offset: 912)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1639, file: !1640, line: 509, baseType: !1651, size: 8, offset: 920)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1639, file: !1640, line: 510, baseType: !1651, size: 8, offset: 928)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1639, file: !1640, line: 511, baseType: !1651, size: 8, offset: 936)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1639, file: !1640, line: 512, baseType: !1651, size: 8, offset: 944)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1639, file: !1640, line: 513, baseType: !1651, size: 8, offset: 952)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1639, file: !1640, line: 514, baseType: !1651, size: 8, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1639, file: !1640, line: 515, baseType: !1651, size: 8, offset: 968)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1639, file: !1640, line: 516, baseType: !1651, size: 8, offset: 976)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1639, file: !1640, line: 517, baseType: !1651, size: 8, offset: 984)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1639, file: !1640, line: 518, baseType: !1651, size: 8, offset: 992)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1639, file: !1640, line: 519, baseType: !1651, size: 8, offset: 1000)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1639, file: !1640, line: 520, baseType: !1651, size: 8, offset: 1008)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1639, file: !1640, line: 521, baseType: !1651, size: 8, offset: 1016)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1639, file: !1640, line: 522, baseType: !1651, size: 8, offset: 1024)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1639, file: !1640, line: 523, baseType: !1651, size: 8, offset: 1032)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1639, file: !1640, line: 524, baseType: !1651, size: 8, offset: 1040)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1639, file: !1640, line: 525, baseType: !1651, size: 8, offset: 1048)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1639, file: !1640, line: 526, baseType: !1651, size: 8, offset: 1056)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1639, file: !1640, line: 527, baseType: !1651, size: 8, offset: 1064)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1639, file: !1640, line: 528, baseType: !1651, size: 8, offset: 1072)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1639, file: !1640, line: 529, baseType: !1651, size: 8, offset: 1080)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1639, file: !1640, line: 530, baseType: !1651, size: 8, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1639, file: !1640, line: 531, baseType: !1651, size: 8, offset: 1096)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1639, file: !1640, line: 532, baseType: !1651, size: 8, offset: 1104)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1639, file: !1640, line: 533, baseType: !1651, size: 8, offset: 1112)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1639, file: !1640, line: 534, baseType: !1651, size: 8, offset: 1120)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1639, file: !1640, line: 535, baseType: !1651, size: 8, offset: 1128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1639, file: !1640, line: 536, baseType: !1651, size: 8, offset: 1136)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1639, file: !1640, line: 537, baseType: !1651, size: 8, offset: 1144)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1639, file: !1640, line: 538, baseType: !1651, size: 8, offset: 1152)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1639, file: !1640, line: 539, baseType: !1651, size: 8, offset: 1160)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1639, file: !1640, line: 540, baseType: !1651, size: 8, offset: 1168)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1639, file: !1640, line: 541, baseType: !1651, size: 8, offset: 1176)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1639, file: !1640, line: 542, baseType: !1651, size: 8, offset: 1184)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1639, file: !1640, line: 543, baseType: !1651, size: 8, offset: 1192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1639, file: !1640, line: 544, baseType: !1651, size: 8, offset: 1200)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1639, file: !1640, line: 545, baseType: !1651, size: 8, offset: 1208)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1639, file: !1640, line: 546, baseType: !1651, size: 8, offset: 1216)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1639, file: !1640, line: 547, baseType: !1651, size: 8, offset: 1224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1639, file: !1640, line: 548, baseType: !1651, size: 8, offset: 1232)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1639, file: !1640, line: 549, baseType: !1651, size: 8, offset: 1240)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1639, file: !1640, line: 550, baseType: !1651, size: 8, offset: 1248)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1639, file: !1640, line: 551, baseType: !1651, size: 8, offset: 1256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1639, file: !1640, line: 552, baseType: !1651, size: 8, offset: 1264)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1639, file: !1640, line: 553, baseType: !1651, size: 8, offset: 1272)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1639, file: !1640, line: 554, baseType: !1651, size: 8, offset: 1280)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1639, file: !1640, line: 555, baseType: !1651, size: 8, offset: 1288)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1639, file: !1640, line: 556, baseType: !1651, size: 8, offset: 1296)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1639, file: !1640, line: 557, baseType: !1651, size: 8, offset: 1304)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1639, file: !1640, line: 558, baseType: !1651, size: 8, offset: 1312)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1639, file: !1640, line: 559, baseType: !1651, size: 8, offset: 1320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1639, file: !1640, line: 560, baseType: !1651, size: 8, offset: 1328)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1639, file: !1640, line: 561, baseType: !1651, size: 8, offset: 1336)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1639, file: !1640, line: 562, baseType: !1651, size: 8, offset: 1344)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1639, file: !1640, line: 563, baseType: !1651, size: 8, offset: 1352)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1639, file: !1640, line: 564, baseType: !1651, size: 8, offset: 1360)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1639, file: !1640, line: 565, baseType: !1651, size: 8, offset: 1368)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1639, file: !1640, line: 566, baseType: !1651, size: 8, offset: 1376)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1639, file: !1640, line: 567, baseType: !1651, size: 8, offset: 1384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1639, file: !1640, line: 568, baseType: !1651, size: 8, offset: 1392)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1639, file: !1640, line: 569, baseType: !1651, size: 8, offset: 1400)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1639, file: !1640, line: 570, baseType: !1651, size: 8, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1639, file: !1640, line: 571, baseType: !1651, size: 8, offset: 1416)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1639, file: !1640, line: 572, baseType: !1651, size: 8, offset: 1424)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1639, file: !1640, line: 573, baseType: !1651, size: 8, offset: 1432)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1639, file: !1640, line: 574, baseType: !1651, size: 8, offset: 1440)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !861, file: !341, line: 3405, baseType: !1807, size: 384)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1807, file: !341, line: 3353, baseType: !897, size: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1807, file: !341, line: 3356, baseType: !1811, size: 192, offset: 192)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1640, line: 578, size: 192, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1811, file: !1640, line: 580, baseType: !713, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1811, file: !1640, line: 581, baseType: !713, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1811, file: !1640, line: 582, baseType: !713, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1811, file: !1640, line: 583, baseType: !713, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1811, file: !1640, line: 584, baseType: !712, size: 8, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1811, file: !1640, line: 585, baseType: !712, size: 8, offset: 136)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1811, file: !1640, line: 586, baseType: !712, size: 8, offset: 144)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1811, file: !1640, line: 587, baseType: !712, size: 8, offset: 152)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1811, file: !1640, line: 588, baseType: !712, size: 8, offset: 160)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1811, file: !1640, line: 589, baseType: !712, size: 8, offset: 168)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1811, file: !1640, line: 590, baseType: !712, size: 8, offset: 176)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !804, file: !568, line: 178, baseType: !1278, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !804, file: !568, line: 179, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1828, file: !568, line: 144, baseType: !859, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1828, file: !568, line: 145, baseType: !784, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1828, file: !568, line: 146, baseType: !784, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1828, file: !568, line: 147, baseType: !1486, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1828, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1828, file: !568, line: 149, baseType: !712, size: 8, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !804, file: !568, line: 180, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1839)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1840)
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1839, file: !568, line: 160, baseType: !859, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1839, file: !568, line: 161, baseType: !755, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !804, file: !568, line: 181, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !799, file: !568, line: 317, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 64, elements: !818)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !799, file: !568, line: 318, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1850)
!1850 = !{!1851, !1853, !1876}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1849, file: !568, line: 190, baseType: !1852, size: 192)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 192, elements: !930)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1849, file: !568, line: 193, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1856)
!1856 = !{!1857, !1861, !1862, !1863, !1875}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1855, file: !568, line: 208, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !721, line: 62, baseType: !1860)
!1860 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !721, line: 61, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1855, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1855, file: !568, line: 214, baseType: !755, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1855, file: !568, line: 224, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1866, file: !568, line: 202, baseType: !1869, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1870, file: !568, line: 200, baseType: !7, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1870, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1870, file: !568, line: 200, baseType: !817, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1855, file: !568, line: 234, baseType: !1864, size: 64, offset: 256)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1849, file: !568, line: 197, baseType: !755, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !799, file: !568, line: 319, baseType: !919, size: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !799, file: !568, line: 320, baseType: !938, size: 192)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_heap", file: !568, line: 201, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_heap", file: !568, line: 201, size: 128, elements: !1882)
!1882 = !{!1883}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1881, file: !568, line: 201, baseType: !1869, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_scan_bb_info", file: !1886, line: 771, size: 128, elements: !1887)
!1886 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1887 = !{!1888, !1950}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_defs", scope: !1885, file: !1886, line: 782, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !1886, line: 429, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !1886, line: 422, size: 704, elements: !1893)
!1893 = !{!1894, !1932, !1938, !1943}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1892, file: !1886, line: 424, baseType: !1895, size: 512)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !1886, line: 356, size: 512, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1907, !1927, !1928, !1929, !1930, !1931}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1895, file: !1886, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1895, file: !1886, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1886, line: 364, baseType: !713, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1895, file: !1886, line: 365, baseType: !784, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1895, file: !1886, line: 366, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !1886, line: 449, size: 128, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1903, file: !1886, line: 451, baseType: !1890, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1903, file: !1886, line: 452, baseType: !1902, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !1895, file: !1886, line: 370, baseType: !1908, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !1886, line: 433, size: 384, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1926}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1909, file: !1886, line: 435, baseType: !784, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !1909, file: !1886, line: 436, baseType: !1889, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1909, file: !1886, line: 437, baseType: !1889, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !1909, file: !1886, line: 439, baseType: !1889, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !1909, file: !1886, line: 440, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !1886, line: 339, size: 192, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !1918, file: !1886, line: 341, baseType: !784, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1918, file: !1886, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1886, line: 346, baseType: !713, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !1918, file: !1886, line: 347, baseType: !7, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !1918, file: !1886, line: 348, baseType: !7, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !1918, file: !1886, line: 349, baseType: !7, size: 32, offset: 160)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1909, file: !1886, line: 444, baseType: !713, size: 32, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !1895, file: !1886, line: 374, baseType: !1891, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !1895, file: !1886, line: 375, baseType: !1891, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !1895, file: !1886, line: 376, baseType: !7, size: 32, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !1886, line: 379, baseType: !713, size: 32, offset: 416)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !1895, file: !1886, line: 382, baseType: !7, size: 32, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !1892, file: !1886, line: 425, baseType: !1933, size: 576)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !1886, line: 398, size: 576, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1933, file: !1886, line: 400, baseType: !1895, size: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1933, file: !1886, line: 405, baseType: !1937, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !1892, file: !1886, line: 426, baseType: !1939, size: 576)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !1886, line: 388, size: 576, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1939, file: !1886, line: 390, baseType: !1895, size: 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1939, file: !1886, line: 394, baseType: !1277, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !1892, file: !1886, line: 427, baseType: !1944, size: 704)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !1886, line: 413, size: 704, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1944, file: !1886, line: 415, baseType: !1933, size: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1944, file: !1886, line: 416, baseType: !713, size: 32, offset: 576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1944, file: !1886, line: 417, baseType: !713, size: 32, offset: 608)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1944, file: !1886, line: 418, baseType: !189, size: 32, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_uses", scope: !1885, file: !1886, line: 788, baseType: !1889, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_byte_lr_bb_info", file: !1886, line: 859, size: 256, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1952, file: !1886, line: 862, baseType: !720, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1952, file: !1886, line: 864, baseType: !720, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1952, file: !1886, line: 867, baseType: !720, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1952, file: !1886, line: 868, baseType: !720, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !1886, line: 826, size: 256, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1959, file: !1886, line: 829, baseType: !720, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1959, file: !1886, line: 831, baseType: !720, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1959, file: !1886, line: 834, baseType: !720, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1959, file: !1886, line: 835, baseType: !720, size: 64, offset: 192)
!1965 = !{!0, !1966, !1994, !1996, !1998, !2000, !2012, !2014}
!1966 = !DIGlobalVariableExpression(var: !1967, expr: !DIExpression())
!1967 = distinct !DIGlobalVariable(name: "pass_fast_rtl_dce", scope: !2, file: !3, line: 1122, type: !1968, isLocal: false, isDefinition: true)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1969)
!1969 = !{!1970}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1968, file: !6, line: 164, baseType: !1971, size: 640)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1979, !1983, !1985, !1986, !1987, !1989, !1990, !1991, !1992, !1993}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1971, file: !6, line: 117, baseType: !5, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1971, file: !6, line: 121, baseType: !718, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1971, file: !6, line: 125, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!712}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1971, file: !6, line: 130, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!7}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1971, file: !6, line: 133, baseType: !1984, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1971, file: !6, line: 136, baseType: !1984, size: 64, offset: 320)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1971, file: !6, line: 139, baseType: !713, size: 32, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1971, file: !6, line: 143, baseType: !1988, size: 32, offset: 416)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1971, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1971, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1971, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1971, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1971, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1994 = !DIGlobalVariableExpression(var: !1995, expr: !DIExpression())
!1995 = distinct !DIGlobalVariable(name: "pass_fast_rtl_byte_dce", scope: !2, file: !3, line: 1143, type: !1968, isLocal: false, isDefinition: true)
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "dce_blocks_bitmap_obstack", scope: !2, file: !3, line: 56, type: !745, isLocal: true, isDefinition: true)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "dce_tmp_bitmap_obstack", scope: !2, file: !3, line: 57, type: !745, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(name: "marked", scope: !2, file: !3, line: 53, type: !2002, isLocal: true, isDefinition: true)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2003, line: 45, baseType: !2004)
!2003 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2003, line: 39, size: 192, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2005, file: !2003, line: 41, baseType: !711, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2005, file: !2003, line: 42, baseType: !7, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2005, file: !2003, line: 43, baseType: !7, size: 32, offset: 96)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2005, file: !2003, line: 44, baseType: !2011, size: 64, offset: 128)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 64, elements: !818)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(name: "worklist", scope: !2, file: !3, line: 50, type: !1879, isLocal: true, isDefinition: true)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "df_in_progress", scope: !2, file: !3, line: 46, type: !712, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2017 = !{i32 2, !"Dwarf Version", i32 4}
!2018 = !{i32 2, !"Debug Info Version", i32 3}
!2019 = !{i32 1, !"wchar_size", i32 4}
!2020 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2021 = distinct !DISubprogram(name: "vprintf", scope: !2022, file: !2022, line: 39, type: !2023, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2022 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!713, !2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !718)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2027, file: !3, baseType: !7, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2027, file: !3, baseType: !7, size: 32, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2027, file: !3, baseType: !717, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2027, file: !3, baseType: !717, size: 64, offset: 128)
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2021, file: !2022, line: 39, type: !2025)
!2035 = !DILocalVariable(name: "__arg", arg: 2, scope: !2021, file: !2022, line: 39, type: !2026)
!2036 = !DILocation(line: 0, scope: !2021)
!2037 = !DILocation(line: 41, column: 20, scope: !2021)
!2038 = !DILocation(line: 41, column: 10, scope: !2021)
!2039 = !DILocation(line: 41, column: 3, scope: !2021)
!2040 = distinct !DISubprogram(name: "getchar", scope: !2022, file: !2022, line: 47, type: !2041, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!713}
!2043 = !{}
!2044 = !DILocation(line: 49, column: 16, scope: !2040)
!2045 = !DILocation(line: 49, column: 10, scope: !2040)
!2046 = !DILocation(line: 49, column: 3, scope: !2040)
!2047 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2022, file: !2022, line: 56, type: !2048, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!713, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2052, line: 7, baseType: !2053)
!2052 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2054, line: 49, size: 1728, elements: !2055)
!2054 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2055 = !{!2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2071, !2073, !2074, !2075, !2078, !2079, !2080, !2081, !2084, !2086, !2089, !2092, !2093, !2094, !2095, !2096}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2053, file: !2054, line: 51, baseType: !713, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2053, file: !2054, line: 54, baseType: !715, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2053, file: !2054, line: 55, baseType: !715, size: 64, offset: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2053, file: !2054, line: 56, baseType: !715, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2053, file: !2054, line: 57, baseType: !715, size: 64, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2053, file: !2054, line: 58, baseType: !715, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2053, file: !2054, line: 59, baseType: !715, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2053, file: !2054, line: 60, baseType: !715, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2053, file: !2054, line: 61, baseType: !715, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2053, file: !2054, line: 64, baseType: !715, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2053, file: !2054, line: 65, baseType: !715, size: 64, offset: 640)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2053, file: !2054, line: 66, baseType: !715, size: 64, offset: 704)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2053, file: !2054, line: 68, baseType: !2069, size: 64, offset: 768)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2054, line: 36, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2053, file: !2054, line: 70, baseType: !2072, size: 64, offset: 832)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2053, file: !2054, line: 72, baseType: !713, size: 32, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2053, file: !2054, line: 73, baseType: !713, size: 32, offset: 928)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2053, file: !2054, line: 74, baseType: !2076, size: 64, offset: 960)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2077, line: 152, baseType: !755)
!2077 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2053, file: !2054, line: 77, baseType: !783, size: 16, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2053, file: !2054, line: 78, baseType: !1651, size: 8, offset: 1040)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2053, file: !2054, line: 79, baseType: !954, size: 8, offset: 1048)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2053, file: !2054, line: 81, baseType: !2082, size: 64, offset: 1088)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2054, line: 43, baseType: null)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2053, file: !2054, line: 89, baseType: !2085, size: 64, offset: 1152)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2077, line: 153, baseType: !755)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2053, file: !2054, line: 91, baseType: !2087, size: 64, offset: 1216)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2054, line: 37, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2053, file: !2054, line: 92, baseType: !2090, size: 64, offset: 1280)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2054, line: 38, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2053, file: !2054, line: 93, baseType: !2072, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2053, file: !2054, line: 94, baseType: !717, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2053, file: !2054, line: 95, baseType: !1215, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2053, file: !2054, line: 96, baseType: !713, size: 32, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2053, file: !2054, line: 98, baseType: !2097, size: 160, offset: 1568)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 160, elements: !2098)
!2098 = !{!2099}
!2099 = !DISubrange(count: 20)
!2100 = !{!2101}
!2101 = !DILocalVariable(name: "__fp", arg: 1, scope: !2047, file: !2022, line: 56, type: !2050)
!2102 = !DILocation(line: 0, scope: !2047)
!2103 = !DILocation(line: 58, column: 10, scope: !2047)
!2104 = !DILocation(line: 58, column: 3, scope: !2047)
!2105 = distinct !DISubprogram(name: "getc_unlocked", scope: !2022, file: !2022, line: 66, type: !2048, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__fp", arg: 1, scope: !2105, file: !2022, line: 66, type: !2050)
!2108 = !DILocation(line: 0, scope: !2105)
!2109 = !DILocation(line: 68, column: 10, scope: !2105)
!2110 = !DILocation(line: 68, column: 3, scope: !2105)
!2111 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2022, file: !2022, line: 73, type: !2041, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2112 = !DILocation(line: 75, column: 10, scope: !2111)
!2113 = !DILocation(line: 75, column: 3, scope: !2111)
!2114 = distinct !DISubprogram(name: "putchar", scope: !2022, file: !2022, line: 82, type: !2115, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!713, !713}
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "__c", arg: 1, scope: !2114, file: !2022, line: 82, type: !713)
!2119 = !DILocation(line: 0, scope: !2114)
!2120 = !DILocation(line: 84, column: 21, scope: !2114)
!2121 = !DILocation(line: 84, column: 10, scope: !2114)
!2122 = !DILocation(line: 84, column: 3, scope: !2114)
!2123 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2022, file: !2022, line: 91, type: !2124, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!713, !713, !2050}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "__c", arg: 1, scope: !2123, file: !2022, line: 91, type: !713)
!2128 = !DILocalVariable(name: "__stream", arg: 2, scope: !2123, file: !2022, line: 91, type: !2050)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 93, column: 10, scope: !2123)
!2131 = !DILocation(line: 93, column: 3, scope: !2123)
!2132 = distinct !DISubprogram(name: "putc_unlocked", scope: !2022, file: !2022, line: 101, type: !2124, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "__c", arg: 1, scope: !2132, file: !2022, line: 101, type: !713)
!2135 = !DILocalVariable(name: "__stream", arg: 2, scope: !2132, file: !2022, line: 101, type: !2050)
!2136 = !DILocation(line: 0, scope: !2132)
!2137 = !DILocation(line: 103, column: 10, scope: !2132)
!2138 = !DILocation(line: 103, column: 3, scope: !2132)
!2139 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2022, file: !2022, line: 108, type: !2115, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "__c", arg: 1, scope: !2139, file: !2022, line: 108, type: !713)
!2142 = !DILocation(line: 0, scope: !2139)
!2143 = !DILocation(line: 110, column: 10, scope: !2139)
!2144 = !DILocation(line: 110, column: 3, scope: !2139)
!2145 = distinct !DISubprogram(name: "getline", scope: !2022, file: !2022, line: 118, type: !2146, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!2148, !714, !2149, !2050}
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2077, line: 193, baseType: !755)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!2150 = !{!2151, !2152, !2153}
!2151 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2145, file: !2022, line: 118, type: !714)
!2152 = !DILocalVariable(name: "__n", arg: 2, scope: !2145, file: !2022, line: 118, type: !2149)
!2153 = !DILocalVariable(name: "__stream", arg: 3, scope: !2145, file: !2022, line: 118, type: !2050)
!2154 = !DILocation(line: 0, scope: !2145)
!2155 = !DILocation(line: 120, column: 10, scope: !2145)
!2156 = !DILocation(line: 120, column: 3, scope: !2145)
!2157 = distinct !DISubprogram(name: "feof_unlocked", scope: !2022, file: !2022, line: 128, type: !2048, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159}
!2159 = !DILocalVariable(name: "__stream", arg: 1, scope: !2157, file: !2022, line: 128, type: !2050)
!2160 = !DILocation(line: 0, scope: !2157)
!2161 = !DILocation(line: 130, column: 10, scope: !2157)
!2162 = !DILocation(line: 130, column: 3, scope: !2157)
!2163 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2022, file: !2022, line: 135, type: !2048, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__stream", arg: 1, scope: !2163, file: !2022, line: 135, type: !2050)
!2166 = !DILocation(line: 0, scope: !2163)
!2167 = !DILocation(line: 137, column: 10, scope: !2163)
!2168 = !DILocation(line: 137, column: 3, scope: !2163)
!2169 = distinct !DISubprogram(name: "tolower", scope: !2170, file: !2170, line: 207, type: !2115, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2170 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "__c", arg: 1, scope: !2169, file: !2170, line: 207, type: !713)
!2173 = !DILocation(line: 0, scope: !2169)
!2174 = !DILocation(line: 209, column: 22, scope: !2169)
!2175 = !DILocation(line: 209, column: 39, scope: !2169)
!2176 = !DILocation(line: 209, column: 38, scope: !2169)
!2177 = !DILocation(line: 209, column: 37, scope: !2169)
!2178 = !DILocation(line: 209, column: 10, scope: !2169)
!2179 = !DILocation(line: 209, column: 3, scope: !2169)
!2180 = distinct !DISubprogram(name: "toupper", scope: !2170, file: !2170, line: 213, type: !2115, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2181 = !{!2182}
!2182 = !DILocalVariable(name: "__c", arg: 1, scope: !2180, file: !2170, line: 213, type: !713)
!2183 = !DILocation(line: 0, scope: !2180)
!2184 = !DILocation(line: 215, column: 22, scope: !2180)
!2185 = !DILocation(line: 215, column: 39, scope: !2180)
!2186 = !DILocation(line: 215, column: 38, scope: !2180)
!2187 = !DILocation(line: 215, column: 37, scope: !2180)
!2188 = !DILocation(line: 215, column: 10, scope: !2180)
!2189 = !DILocation(line: 215, column: 3, scope: !2180)
!2190 = distinct !DISubprogram(name: "atoi", scope: !2191, file: !2191, line: 361, type: !2192, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2191 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!713, !718}
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2190, file: !2191, line: 361, type: !718)
!2196 = !DILocation(line: 0, scope: !2190)
!2197 = !DILocation(line: 363, column: 16, scope: !2190)
!2198 = !DILocation(line: 363, column: 10, scope: !2190)
!2199 = !DILocation(line: 363, column: 3, scope: !2190)
!2200 = distinct !DISubprogram(name: "atol", scope: !2191, file: !2191, line: 366, type: !2201, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!755, !718}
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2200, file: !2191, line: 366, type: !718)
!2205 = !DILocation(line: 0, scope: !2200)
!2206 = !DILocation(line: 368, column: 10, scope: !2200)
!2207 = !DILocation(line: 368, column: 3, scope: !2200)
!2208 = distinct !DISubprogram(name: "atoll", scope: !2191, file: !2191, line: 373, type: !2209, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!2211, !718}
!2211 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2208, file: !2191, line: 373, type: !718)
!2214 = !DILocation(line: 0, scope: !2208)
!2215 = !DILocation(line: 375, column: 10, scope: !2208)
!2216 = !DILocation(line: 375, column: 3, scope: !2208)
!2217 = distinct !DISubprogram(name: "bsearch", scope: !2218, file: !2218, line: 20, type: !2219, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!717, !1200, !1200, !1215, !1215, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2191, line: 808, baseType: !1204)
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2223 = !DILocalVariable(name: "__key", arg: 1, scope: !2217, file: !2218, line: 20, type: !1200)
!2224 = !DILocalVariable(name: "__base", arg: 2, scope: !2217, file: !2218, line: 20, type: !1200)
!2225 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2217, file: !2218, line: 20, type: !1215)
!2226 = !DILocalVariable(name: "__size", arg: 4, scope: !2217, file: !2218, line: 20, type: !1215)
!2227 = !DILocalVariable(name: "__compar", arg: 5, scope: !2217, file: !2218, line: 21, type: !2221)
!2228 = !DILocalVariable(name: "__l", scope: !2217, file: !2218, line: 23, type: !1215)
!2229 = !DILocalVariable(name: "__u", scope: !2217, file: !2218, line: 23, type: !1215)
!2230 = !DILocalVariable(name: "__idx", scope: !2217, file: !2218, line: 23, type: !1215)
!2231 = !DILocalVariable(name: "__p", scope: !2217, file: !2218, line: 24, type: !1200)
!2232 = !DILocalVariable(name: "__comparison", scope: !2217, file: !2218, line: 25, type: !713)
!2233 = !DILocation(line: 0, scope: !2217)
!2234 = !DILocation(line: 29, column: 3, scope: !2217)
!2235 = !DILocation(line: 27, column: 7, scope: !2217)
!2236 = !DILocation(line: 29, column: 14, scope: !2217)
!2237 = !DILocation(line: 31, column: 20, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2217, file: !2218, line: 30, column: 5)
!2239 = !DILocation(line: 31, column: 27, scope: !2238)
!2240 = !DILocation(line: 32, column: 56, scope: !2238)
!2241 = !DILocation(line: 32, column: 47, scope: !2238)
!2242 = !DILocation(line: 33, column: 22, scope: !2238)
!2243 = !DILocation(line: 34, column: 24, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !2218, line: 34, column: 11)
!2245 = !DILocation(line: 34, column: 11, scope: !2238)
!2246 = !DILocation(line: 36, column: 29, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !2218, line: 36, column: 16)
!2248 = !DILocation(line: 36, column: 16, scope: !2244)
!2249 = !DILocation(line: 37, column: 14, scope: !2247)
!2250 = distinct !{!2250, !2234, !2251}
!2251 = !DILocation(line: 40, column: 5, scope: !2217)
!2252 = !DILocation(line: 43, column: 1, scope: !2217)
!2253 = distinct !DISubprogram(name: "atof", scope: !2254, file: !2254, line: 25, type: !2255, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!2257, !718}
!2257 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2253, file: !2254, line: 25, type: !718)
!2260 = !DILocation(line: 0, scope: !2253)
!2261 = !DILocation(line: 27, column: 10, scope: !2253)
!2262 = !DILocation(line: 27, column: 3, scope: !2253)
!2263 = distinct !DISubprogram(name: "strtoimax", scope: !2264, file: !2264, line: 324, type: !2265, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2264 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!2267, !2025, !2270, !713}
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2268, line: 101, baseType: !2269)
!2268 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2077, line: 72, baseType: !755)
!2270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "nptr", arg: 1, scope: !2263, file: !2264, line: 324, type: !2025)
!2273 = !DILocalVariable(name: "endptr", arg: 2, scope: !2263, file: !2264, line: 324, type: !2270)
!2274 = !DILocalVariable(name: "base", arg: 3, scope: !2263, file: !2264, line: 324, type: !713)
!2275 = !DILocation(line: 0, scope: !2263)
!2276 = !DILocation(line: 327, column: 10, scope: !2263)
!2277 = !DILocation(line: 327, column: 3, scope: !2263)
!2278 = distinct !DISubprogram(name: "strtoumax", scope: !2264, file: !2264, line: 336, type: !2279, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!2281, !2025, !2270, !713}
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2268, line: 102, baseType: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2077, line: 73, baseType: !738)
!2283 = !{!2284, !2285, !2286}
!2284 = !DILocalVariable(name: "nptr", arg: 1, scope: !2278, file: !2264, line: 336, type: !2025)
!2285 = !DILocalVariable(name: "endptr", arg: 2, scope: !2278, file: !2264, line: 336, type: !2270)
!2286 = !DILocalVariable(name: "base", arg: 3, scope: !2278, file: !2264, line: 336, type: !713)
!2287 = !DILocation(line: 0, scope: !2278)
!2288 = !DILocation(line: 339, column: 10, scope: !2278)
!2289 = !DILocation(line: 339, column: 3, scope: !2278)
!2290 = distinct !DISubprogram(name: "wcstoimax", scope: !2264, file: !2264, line: 348, type: !2291, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2300)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!2267, !2293, !2297, !713}
!2293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2294)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2264, line: 34, baseType: !713)
!2297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2300 = !{!2301, !2302, !2303}
!2301 = !DILocalVariable(name: "nptr", arg: 1, scope: !2290, file: !2264, line: 348, type: !2293)
!2302 = !DILocalVariable(name: "endptr", arg: 2, scope: !2290, file: !2264, line: 348, type: !2297)
!2303 = !DILocalVariable(name: "base", arg: 3, scope: !2290, file: !2264, line: 348, type: !713)
!2304 = !DILocation(line: 0, scope: !2290)
!2305 = !DILocation(line: 351, column: 10, scope: !2290)
!2306 = !DILocation(line: 351, column: 3, scope: !2290)
!2307 = distinct !DISubprogram(name: "wcstoumax", scope: !2264, file: !2264, line: 362, type: !2308, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!2281, !2293, !2297, !713}
!2310 = !{!2311, !2312, !2313}
!2311 = !DILocalVariable(name: "nptr", arg: 1, scope: !2307, file: !2264, line: 362, type: !2293)
!2312 = !DILocalVariable(name: "endptr", arg: 2, scope: !2307, file: !2264, line: 362, type: !2297)
!2313 = !DILocalVariable(name: "base", arg: 3, scope: !2307, file: !2264, line: 362, type: !713)
!2314 = !DILocation(line: 0, scope: !2307)
!2315 = !DILocation(line: 365, column: 10, scope: !2307)
!2316 = !DILocation(line: 365, column: 3, scope: !2307)
!2317 = distinct !DISubprogram(name: "stat", scope: !2318, file: !2318, line: 453, type: !2319, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!713, !718, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2323, line: 46, size: 1152, elements: !2324)
!2323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2324 = !{!2325, !2327, !2329, !2331, !2333, !2335, !2337, !2338, !2339, !2340, !2342, !2344, !2352, !2353, !2354}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2322, file: !2323, line: 48, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2077, line: 145, baseType: !738)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2322, file: !2323, line: 53, baseType: !2328, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2077, line: 148, baseType: !738)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2322, file: !2323, line: 61, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2077, line: 151, baseType: !738)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2322, file: !2323, line: 62, baseType: !2332, size: 32, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2077, line: 150, baseType: !7)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2322, file: !2323, line: 64, baseType: !2334, size: 32, offset: 224)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2077, line: 146, baseType: !7)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2322, file: !2323, line: 65, baseType: !2336, size: 32, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2077, line: 147, baseType: !7)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2322, file: !2323, line: 67, baseType: !713, size: 32, offset: 288)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2322, file: !2323, line: 69, baseType: !2326, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2322, file: !2323, line: 74, baseType: !2076, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2322, file: !2323, line: 78, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2077, line: 174, baseType: !755)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2322, file: !2323, line: 80, baseType: !2343, size: 64, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2077, line: 179, baseType: !755)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2322, file: !2323, line: 91, baseType: !2345, size: 128, offset: 576)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2346, line: 10, size: 128, elements: !2347)
!2346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2347 = !{!2348, !2350}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2345, file: !2346, line: 12, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2077, line: 160, baseType: !755)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2345, file: !2346, line: 16, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2077, line: 196, baseType: !755)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2322, file: !2323, line: 92, baseType: !2345, size: 128, offset: 704)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2322, file: !2323, line: 93, baseType: !2345, size: 128, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2322, file: !2323, line: 106, baseType: !2355, size: 192, offset: 960)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2351, size: 192, elements: !930)
!2356 = !{!2357, !2358}
!2357 = !DILocalVariable(name: "__path", arg: 1, scope: !2317, file: !2318, line: 453, type: !718)
!2358 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2317, file: !2318, line: 453, type: !2321)
!2359 = !DILocation(line: 0, scope: !2317)
!2360 = !DILocation(line: 455, column: 10, scope: !2317)
!2361 = !DILocation(line: 455, column: 3, scope: !2317)
!2362 = distinct !DISubprogram(name: "lstat", scope: !2318, file: !2318, line: 460, type: !2319, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "__path", arg: 1, scope: !2362, file: !2318, line: 460, type: !718)
!2365 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2362, file: !2318, line: 460, type: !2321)
!2366 = !DILocation(line: 0, scope: !2362)
!2367 = !DILocation(line: 462, column: 10, scope: !2362)
!2368 = !DILocation(line: 462, column: 3, scope: !2362)
!2369 = distinct !DISubprogram(name: "fstat", scope: !2318, file: !2318, line: 467, type: !2370, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!713, !713, !2321}
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "__fd", arg: 1, scope: !2369, file: !2318, line: 467, type: !713)
!2374 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2369, file: !2318, line: 467, type: !2321)
!2375 = !DILocation(line: 0, scope: !2369)
!2376 = !DILocation(line: 469, column: 10, scope: !2369)
!2377 = !DILocation(line: 469, column: 3, scope: !2369)
!2378 = distinct !DISubprogram(name: "fstatat", scope: !2318, file: !2318, line: 474, type: !2379, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!713, !713, !718, !2321, !713}
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "__fd", arg: 1, scope: !2378, file: !2318, line: 474, type: !713)
!2383 = !DILocalVariable(name: "__filename", arg: 2, scope: !2378, file: !2318, line: 474, type: !718)
!2384 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2378, file: !2318, line: 474, type: !2321)
!2385 = !DILocalVariable(name: "__flag", arg: 4, scope: !2378, file: !2318, line: 474, type: !713)
!2386 = !DILocation(line: 0, scope: !2378)
!2387 = !DILocation(line: 477, column: 10, scope: !2378)
!2388 = !DILocation(line: 477, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "mknod", scope: !2318, file: !2318, line: 483, type: !2390, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!713, !718, !2332, !2326}
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "__path", arg: 1, scope: !2389, file: !2318, line: 483, type: !718)
!2394 = !DILocalVariable(name: "__mode", arg: 2, scope: !2389, file: !2318, line: 483, type: !2332)
!2395 = !DILocalVariable(name: "__dev", arg: 3, scope: !2389, file: !2318, line: 483, type: !2326)
!2396 = !DILocation(line: 0, scope: !2389)
!2397 = !DILocation(line: 485, column: 10, scope: !2389)
!2398 = !DILocation(line: 485, column: 3, scope: !2389)
!2399 = distinct !DISubprogram(name: "mknodat", scope: !2318, file: !2318, line: 491, type: !2400, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!713, !713, !718, !2332, !2326}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "__fd", arg: 1, scope: !2399, file: !2318, line: 491, type: !713)
!2404 = !DILocalVariable(name: "__path", arg: 2, scope: !2399, file: !2318, line: 491, type: !718)
!2405 = !DILocalVariable(name: "__mode", arg: 3, scope: !2399, file: !2318, line: 491, type: !2332)
!2406 = !DILocalVariable(name: "__dev", arg: 4, scope: !2399, file: !2318, line: 491, type: !2326)
!2407 = !DILocation(line: 0, scope: !2399)
!2408 = !DILocation(line: 494, column: 10, scope: !2399)
!2409 = !DILocation(line: 494, column: 3, scope: !2399)
!2410 = distinct !DISubprogram(name: "stat64", scope: !2318, file: !2318, line: 502, type: !2411, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!713, !718, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2323, line: 119, size: 1152, elements: !2415)
!2415 = !{!2416, !2417, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2429, !2430, !2431, !2432}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2414, file: !2323, line: 121, baseType: !2326, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2414, file: !2323, line: 123, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2077, line: 149, baseType: !738)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2414, file: !2323, line: 124, baseType: !2330, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2414, file: !2323, line: 125, baseType: !2332, size: 32, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2414, file: !2323, line: 132, baseType: !2334, size: 32, offset: 224)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2414, file: !2323, line: 133, baseType: !2336, size: 32, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2414, file: !2323, line: 135, baseType: !713, size: 32, offset: 288)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2414, file: !2323, line: 136, baseType: !2326, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2414, file: !2323, line: 137, baseType: !2076, size: 64, offset: 384)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2414, file: !2323, line: 143, baseType: !2341, size: 64, offset: 448)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2414, file: !2323, line: 144, baseType: !2428, size: 64, offset: 512)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2077, line: 180, baseType: !755)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2414, file: !2323, line: 152, baseType: !2345, size: 128, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2414, file: !2323, line: 153, baseType: !2345, size: 128, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2414, file: !2323, line: 154, baseType: !2345, size: 128, offset: 832)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2414, file: !2323, line: 164, baseType: !2355, size: 192, offset: 960)
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "__path", arg: 1, scope: !2410, file: !2318, line: 502, type: !718)
!2435 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2410, file: !2318, line: 502, type: !2413)
!2436 = !DILocation(line: 0, scope: !2410)
!2437 = !DILocation(line: 504, column: 10, scope: !2410)
!2438 = !DILocation(line: 504, column: 3, scope: !2410)
!2439 = distinct !DISubprogram(name: "lstat64", scope: !2318, file: !2318, line: 509, type: !2411, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2440 = !{!2441, !2442}
!2441 = !DILocalVariable(name: "__path", arg: 1, scope: !2439, file: !2318, line: 509, type: !718)
!2442 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2439, file: !2318, line: 509, type: !2413)
!2443 = !DILocation(line: 0, scope: !2439)
!2444 = !DILocation(line: 511, column: 10, scope: !2439)
!2445 = !DILocation(line: 511, column: 3, scope: !2439)
!2446 = distinct !DISubprogram(name: "fstat64", scope: !2318, file: !2318, line: 516, type: !2447, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!713, !713, !2413}
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "__fd", arg: 1, scope: !2446, file: !2318, line: 516, type: !713)
!2451 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2446, file: !2318, line: 516, type: !2413)
!2452 = !DILocation(line: 0, scope: !2446)
!2453 = !DILocation(line: 518, column: 10, scope: !2446)
!2454 = !DILocation(line: 518, column: 3, scope: !2446)
!2455 = distinct !DISubprogram(name: "fstatat64", scope: !2318, file: !2318, line: 523, type: !2456, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!713, !713, !718, !2413, !713}
!2458 = !{!2459, !2460, !2461, !2462}
!2459 = !DILocalVariable(name: "__fd", arg: 1, scope: !2455, file: !2318, line: 523, type: !713)
!2460 = !DILocalVariable(name: "__filename", arg: 2, scope: !2455, file: !2318, line: 523, type: !718)
!2461 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2455, file: !2318, line: 523, type: !2413)
!2462 = !DILocalVariable(name: "__flag", arg: 4, scope: !2455, file: !2318, line: 523, type: !713)
!2463 = !DILocation(line: 0, scope: !2455)
!2464 = !DILocation(line: 526, column: 10, scope: !2455)
!2465 = !DILocation(line: 526, column: 3, scope: !2455)
!2466 = distinct !DISubprogram(name: "gate_ud_dce", scope: !3, file: !3, line: 731, type: !1977, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2467 = !DILocation(line: 733, column: 10, scope: !2466)
!2468 = !DILocation(line: 733, column: 19, scope: !2466)
!2469 = !DILocation(line: 733, column: 26, scope: !2466)
!2470 = !DILocation(line: 733, column: 23, scope: !2466)
!2471 = !DILocation(line: 734, column: 8, scope: !2466)
!2472 = !DILocation(line: 734, column: 5, scope: !2466)
!2473 = !DILocation(line: 733, column: 3, scope: !2466)
!2474 = distinct !DISubprogram(name: "rest_of_handle_ud_dce", scope: !3, file: !3, line: 705, type: !1981, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2475)
!2475 = !{!2476}
!2476 = !DILocalVariable(name: "insn", scope: !2474, file: !3, line: 707, type: !784)
!2477 = !DILocation(line: 709, column: 3, scope: !2474)
!2478 = !DILocation(line: 711, column: 3, scope: !2474)
!2479 = !DILocation(line: 712, column: 3, scope: !2474)
!2480 = !DILocation(line: 713, column: 3, scope: !2474)
!2481 = !DILocation(line: 713, column: 10, scope: !2474)
!2482 = !DILocation(line: 713, column: 37, scope: !2474)
!2483 = !DILocation(line: 715, column: 14, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 714, column: 5)
!2485 = !DILocation(line: 0, scope: !2474)
!2486 = !DILocation(line: 716, column: 7, scope: !2484)
!2487 = distinct !{!2487, !2480, !2488}
!2488 = !DILocation(line: 717, column: 5, scope: !2474)
!2489 = !DILocation(line: 718, column: 3, scope: !2474)
!2490 = !DILocation(line: 722, column: 22, scope: !2474)
!2491 = !DILocation(line: 722, column: 3, scope: !2474)
!2492 = !DILocation(line: 723, column: 3, scope: !2474)
!2493 = !DILocation(line: 725, column: 3, scope: !2474)
!2494 = !DILocation(line: 726, column: 3, scope: !2474)
!2495 = distinct !DISubprogram(name: "run_fast_df_dce", scope: !3, file: !3, line: 1086, type: !2496, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null}
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "old_flags", scope: !2500, file: !3, line: 1093, type: !713)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1089, column: 5)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1088, column: 7)
!2502 = !DILocation(line: 1088, column: 7, scope: !2501)
!2503 = !DILocation(line: 1088, column: 7, scope: !2495)
!2504 = !DILocation(line: 1094, column: 2, scope: !2500)
!2505 = !DILocation(line: 0, scope: !2500)
!2506 = !DILocation(line: 1096, column: 22, scope: !2500)
!2507 = !DILocation(line: 1097, column: 7, scope: !2500)
!2508 = !DILocation(line: 1098, column: 22, scope: !2500)
!2509 = !DILocation(line: 1100, column: 7, scope: !2500)
!2510 = !DILocation(line: 1101, column: 5, scope: !2500)
!2511 = !DILocation(line: 1102, column: 1, scope: !2495)
!2512 = distinct !DISubprogram(name: "rest_of_handle_fast_dce", scope: !3, file: !3, line: 1054, type: !1981, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2513 = !DILocation(line: 1056, column: 3, scope: !2512)
!2514 = !DILocation(line: 1057, column: 3, scope: !2512)
!2515 = !DILocation(line: 1058, column: 3, scope: !2512)
!2516 = !DILocation(line: 1059, column: 3, scope: !2512)
!2517 = distinct !DISubprogram(name: "run_fast_dce", scope: !3, file: !3, line: 1108, type: !2496, scopeLine: 1109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2518 = !DILocation(line: 1110, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1110, column: 7)
!2520 = !DILocation(line: 1110, column: 7, scope: !2517)
!2521 = !DILocation(line: 1111, column: 5, scope: !2519)
!2522 = !DILocation(line: 1112, column: 1, scope: !2517)
!2523 = distinct !DISubprogram(name: "gate_fast_dce", scope: !3, file: !3, line: 1116, type: !1977, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2524 = !DILocation(line: 1118, column: 10, scope: !2523)
!2525 = !DILocation(line: 1118, column: 19, scope: !2523)
!2526 = !DILocation(line: 1118, column: 26, scope: !2523)
!2527 = !DILocation(line: 1118, column: 23, scope: !2523)
!2528 = !DILocation(line: 1119, column: 8, scope: !2523)
!2529 = !DILocation(line: 1119, column: 5, scope: !2523)
!2530 = !DILocation(line: 1118, column: 3, scope: !2523)
!2531 = distinct !DISubprogram(name: "rest_of_handle_fast_byte_dce", scope: !3, file: !3, line: 1066, type: !1981, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2532 = !DILocation(line: 1068, column: 3, scope: !2531)
!2533 = !DILocation(line: 1069, column: 3, scope: !2531)
!2534 = !DILocation(line: 1070, column: 3, scope: !2531)
!2535 = !DILocation(line: 1071, column: 3, scope: !2531)
!2536 = !DILocation(line: 1072, column: 3, scope: !2531)
!2537 = distinct !DISubprogram(name: "init_dce", scope: !3, file: !3, line: 664, type: !2538, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !712}
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "fast", arg: 1, scope: !2537, file: !3, line: 664, type: !712)
!2542 = !DILocation(line: 0, scope: !2537)
!2543 = !DILocation(line: 666, column: 8, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 666, column: 7)
!2545 = !DILocation(line: 666, column: 7, scope: !2537)
!2546 = !DILocation(line: 668, column: 12, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 668, column: 11)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 667, column: 5)
!2549 = !DILocation(line: 668, column: 11, scope: !2548)
!2550 = !DILocation(line: 669, column: 2, scope: !2547)
!2551 = !DILocation(line: 670, column: 7, scope: !2548)
!2552 = !DILocation(line: 671, column: 5, scope: !2548)
!2553 = !DILocation(line: 673, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 673, column: 7)
!2555 = !DILocation(line: 673, column: 7, scope: !2537)
!2556 = !DILocation(line: 674, column: 5, scope: !2554)
!2557 = !DILocation(line: 676, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 676, column: 7)
!2559 = !DILocation(line: 676, column: 7, scope: !2537)
!2560 = !DILocation(line: 678, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 677, column: 5)
!2562 = !DILocation(line: 679, column: 7, scope: !2561)
!2563 = !DILocation(line: 680, column: 5, scope: !2561)
!2564 = !DILocation(line: 682, column: 27, scope: !2537)
!2565 = !DILocation(line: 682, column: 42, scope: !2537)
!2566 = !DILocation(line: 682, column: 12, scope: !2537)
!2567 = !DILocation(line: 682, column: 10, scope: !2537)
!2568 = !DILocation(line: 683, column: 3, scope: !2537)
!2569 = !DILocation(line: 684, column: 1, scope: !2537)
!2570 = distinct !DISubprogram(name: "prescan_insns_for_dce", scope: !3, file: !3, line: 571, type: !2538, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2571 = !{!2572, !2573, !2574, !2575, !2576}
!2572 = !DILocalVariable(name: "fast", arg: 1, scope: !2570, file: !3, line: 571, type: !712)
!2573 = !DILocalVariable(name: "bb", scope: !2570, file: !3, line: 573, type: !1277)
!2574 = !DILocalVariable(name: "insn", scope: !2570, file: !3, line: 574, type: !784)
!2575 = !DILocalVariable(name: "prev", scope: !2570, file: !3, line: 574, type: !784)
!2576 = !DILocalVariable(name: "arg_stores", scope: !2570, file: !3, line: 575, type: !720)
!2577 = !DILocation(line: 0, scope: !2570)
!2578 = !DILocation(line: 577, column: 7, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 577, column: 7)
!2580 = !DILocation(line: 577, column: 7, scope: !2570)
!2581 = !DILocation(line: 578, column: 5, scope: !2579)
!2582 = !DILocation(line: 580, column: 8, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 580, column: 7)
!2584 = !DILocation(line: 580, column: 23, scope: !2583)
!2585 = !DILocation(line: 580, column: 26, scope: !2583)
!2586 = !DILocation(line: 580, column: 7, scope: !2570)
!2587 = !DILocation(line: 581, column: 18, scope: !2583)
!2588 = !DILocation(line: 581, column: 5, scope: !2583)
!2589 = !DILocation(line: 583, column: 3, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 583, column: 3)
!2591 = !DILocation(line: 0, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 590, column: 10)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 587, column: 4)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 586, column: 6)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 585, column: 7)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 585, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 584, column: 5)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 583, column: 3)
!2599 = !DILocation(line: 583, column: 3, scope: !2598)
!2600 = !DILocation(line: 0, scope: !2590)
!2601 = !DILocation(line: 585, column: 7, scope: !2596)
!2602 = !DILocation(line: 0, scope: !2596)
!2603 = !DILocation(line: 585, column: 7, scope: !2595)
!2604 = !DILocation(line: 586, column: 6, scope: !2594)
!2605 = !DILocation(line: 586, column: 6, scope: !2595)
!2606 = !DILocation(line: 592, column: 10, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 592, column: 10)
!2608 = !DILocation(line: 592, column: 10, scope: !2593)
!2609 = !DILocation(line: 593, column: 28, scope: !2607)
!2610 = !DILocation(line: 593, column: 8, scope: !2607)
!2611 = !DILocation(line: 595, column: 8, scope: !2607)
!2612 = distinct !{!2612, !2601, !2613}
!2613 = !DILocation(line: 596, column: 4, scope: !2596)
!2614 = !DILocation(line: 599, column: 11, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 599, column: 11)
!2616 = !DILocation(line: 590, column: 50, scope: !2592)
!2617 = !DILocation(line: 590, column: 24, scope: !2592)
!2618 = !DILocation(line: 590, column: 10, scope: !2593)
!2619 = !DILocation(line: 599, column: 11, scope: !2597)
!2620 = !DILocation(line: 600, column: 2, scope: !2615)
!2621 = !DILocation(line: 0, scope: !2598)
!2622 = distinct !{!2622, !2589, !2623}
!2623 = !DILocation(line: 601, column: 5, scope: !2590)
!2624 = !DILocation(line: 603, column: 7, scope: !2570)
!2625 = !DILocation(line: 604, column: 5, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 603, column: 7)
!2627 = !DILocation(line: 606, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 606, column: 7)
!2629 = !DILocation(line: 606, column: 7, scope: !2570)
!2630 = !DILocation(line: 607, column: 5, scope: !2628)
!2631 = !DILocation(line: 608, column: 1, scope: !2570)
!2632 = distinct !DISubprogram(name: "mark_artificial_uses", scope: !3, file: !3, line: 617, type: !2496, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2633)
!2633 = !{!2634, !2635, !2636}
!2634 = !DILocalVariable(name: "bb", scope: !2632, file: !3, line: 619, type: !1277)
!2635 = !DILocalVariable(name: "defs", scope: !2632, file: !3, line: 620, type: !1902)
!2636 = !DILocalVariable(name: "use_rec", scope: !2632, file: !3, line: 621, type: !1889)
!2637 = !DILocation(line: 623, column: 3, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 623, column: 3)
!2639 = !DILocation(line: 0, scope: !2638)
!2640 = !DILocation(line: 0, scope: !2632)
!2641 = !DILocation(line: 625, column: 50, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 625, column: 7)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 624, column: 5)
!2644 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 623, column: 3)
!2645 = !DILocation(line: 625, column: 22, scope: !2642)
!2646 = !DILocation(line: 625, column: 12, scope: !2642)
!2647 = !DILocation(line: 0, scope: !2642)
!2648 = !DILocation(line: 626, column: 5, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 625, column: 7)
!2650 = !DILocation(line: 625, column: 7, scope: !2642)
!2651 = !DILocation(line: 627, column: 14, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 627, column: 2)
!2653 = !DILocation(line: 627, column: 7, scope: !2652)
!2654 = !DILocation(line: 0, scope: !2652)
!2655 = !DILocation(line: 627, column: 2, scope: !2652)
!2656 = !DILocation(line: 628, column: 10, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 628, column: 8)
!2658 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 627, column: 2)
!2659 = !DILocation(line: 628, column: 8, scope: !2658)
!2660 = !DILocation(line: 629, column: 17, scope: !2657)
!2661 = !DILocation(line: 629, column: 6, scope: !2657)
!2662 = !DILocation(line: 627, column: 58, scope: !2658)
!2663 = !DILocation(line: 627, column: 2, scope: !2658)
!2664 = distinct !{!2664, !2655, !2665}
!2665 = !DILocation(line: 629, column: 47, scope: !2652)
!2666 = !DILocation(line: 626, column: 22, scope: !2649)
!2667 = !DILocation(line: 625, column: 7, scope: !2649)
!2668 = distinct !{!2668, !2650, !2669}
!2669 = !DILocation(line: 629, column: 47, scope: !2642)
!2670 = !DILocation(line: 623, column: 3, scope: !2644)
!2671 = distinct !{!2671, !2637, !2672}
!2672 = !DILocation(line: 630, column: 5, scope: !2638)
!2673 = !DILocation(line: 631, column: 1, scope: !2632)
!2674 = distinct !DISubprogram(name: "VEC_rtx_base_length", scope: !568, file: !568, line: 200, type: !2675, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!7, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!2679 = !{!2680}
!2680 = !DILocalVariable(name: "vec_", arg: 1, scope: !2674, file: !568, line: 200, type: !2677)
!2681 = !DILocation(line: 0, scope: !2674)
!2682 = !DILocation(line: 200, column: 1, scope: !2674)
!2683 = distinct !DISubprogram(name: "VEC_rtx_base_pop", scope: !568, file: !568, line: 200, type: !2684, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2687)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!784, !2686}
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!2687 = !{!2688, !2689}
!2688 = !DILocalVariable(name: "vec_", arg: 1, scope: !2683, file: !568, line: 200, type: !2686)
!2689 = !DILocalVariable(name: "obj_", scope: !2683, file: !568, line: 200, type: !784)
!2690 = !DILocation(line: 0, scope: !2683)
!2691 = !DILocation(line: 200, column: 1, scope: !2683)
!2692 = distinct !DISubprogram(name: "mark_reg_dependencies", scope: !3, file: !3, line: 637, type: !2693, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !784}
!2695 = !{!2696, !2697, !2698, !2699}
!2696 = !DILocalVariable(name: "insn", arg: 1, scope: !2692, file: !3, line: 637, type: !784)
!2697 = !DILocalVariable(name: "defs", scope: !2692, file: !3, line: 639, type: !1902)
!2698 = !DILocalVariable(name: "use_rec", scope: !2692, file: !3, line: 640, type: !1889)
!2699 = !DILocalVariable(name: "use", scope: !2700, file: !3, line: 647, type: !1890)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 646, column: 5)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 645, column: 3)
!2702 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 645, column: 3)
!2703 = !DILocation(line: 0, scope: !2692)
!2704 = !DILocation(line: 642, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 642, column: 7)
!2706 = !DILocation(line: 642, column: 7, scope: !2692)
!2707 = !DILocation(line: 645, column: 18, scope: !2702)
!2708 = !DILocation(line: 645, column: 8, scope: !2702)
!2709 = !DILocation(line: 0, scope: !2702)
!2710 = !DILocation(line: 645, column: 39, scope: !2701)
!2711 = !DILocation(line: 645, column: 3, scope: !2702)
!2712 = !DILocation(line: 0, scope: !2700)
!2713 = !DILocation(line: 648, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 648, column: 11)
!2715 = !DILocation(line: 648, column: 11, scope: !2700)
!2716 = !DILocation(line: 650, column: 4, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 649, column: 2)
!2718 = !DILocation(line: 651, column: 22, scope: !2717)
!2719 = !DILocation(line: 651, column: 33, scope: !2717)
!2720 = !DILocation(line: 651, column: 4, scope: !2717)
!2721 = !DILocation(line: 652, column: 13, scope: !2717)
!2722 = !DILocation(line: 652, column: 42, scope: !2717)
!2723 = !DILocation(line: 652, column: 4, scope: !2717)
!2724 = !DILocation(line: 653, column: 2, scope: !2717)
!2725 = !DILocation(line: 654, column: 19, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 654, column: 7)
!2727 = !DILocation(line: 654, column: 12, scope: !2726)
!2728 = !DILocation(line: 0, scope: !2726)
!2729 = !DILocation(line: 654, column: 7, scope: !2726)
!2730 = !DILocation(line: 655, column: 8, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 655, column: 6)
!2732 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 654, column: 7)
!2733 = !DILocation(line: 655, column: 6, scope: !2732)
!2734 = !DILocation(line: 656, column: 15, scope: !2731)
!2735 = !DILocation(line: 656, column: 4, scope: !2731)
!2736 = !DILocation(line: 654, column: 58, scope: !2732)
!2737 = !DILocation(line: 654, column: 7, scope: !2732)
!2738 = distinct !{!2738, !2729, !2739}
!2739 = !DILocation(line: 656, column: 45, scope: !2726)
!2740 = !DILocation(line: 645, column: 56, scope: !2701)
!2741 = !DILocation(line: 645, column: 3, scope: !2701)
!2742 = distinct !{!2742, !2711, !2743}
!2743 = !DILocation(line: 657, column: 5, scope: !2702)
!2744 = !DILocation(line: 658, column: 1, scope: !2692)
!2745 = distinct !DISubprogram(name: "VEC_rtx_heap_free", scope: !568, file: !568, line: 201, type: !2746, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2749)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !2748}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "vec_", arg: 1, scope: !2745, file: !568, line: 201, type: !2748)
!2751 = !DILocation(line: 0, scope: !2745)
!2752 = !DILocation(line: 201, column: 1, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2745, file: !568, line: 201, column: 1)
!2754 = !DILocation(line: 201, column: 1, scope: !2745)
!2755 = distinct !DISubprogram(name: "delete_unmarked_insns", scope: !3, file: !3, line: 504, type: !2496, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "bb", scope: !2755, file: !3, line: 506, type: !1277)
!2758 = !DILocalVariable(name: "insn", scope: !2755, file: !3, line: 507, type: !784)
!2759 = !DILocalVariable(name: "next", scope: !2755, file: !3, line: 507, type: !784)
!2760 = !DILocalVariable(name: "must_clean", scope: !2755, file: !3, line: 508, type: !712)
!2761 = !DILocation(line: 0, scope: !2755)
!2762 = !DILocation(line: 510, column: 3, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 510, column: 3)
!2764 = !DILocation(line: 510, column: 3, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 510, column: 3)
!2766 = !DILocation(line: 508, column: 8, scope: !2755)
!2767 = !DILocation(line: 0, scope: !2763)
!2768 = !DILocation(line: 511, column: 5, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 511, column: 5)
!2770 = !DILocation(line: 0, scope: !2769)
!2771 = !DILocation(line: 511, column: 5, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 511, column: 5)
!2773 = !DILocation(line: 512, column: 11, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 512, column: 11)
!2775 = !DILocation(line: 512, column: 11, scope: !2772)
!2776 = !DILocation(line: 515, column: 8, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 515, column: 8)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 513, column: 2)
!2779 = !DILocation(line: 515, column: 8, scope: !2778)
!2780 = !DILocation(line: 519, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 519, column: 13)
!2782 = !DILocation(line: 519, column: 13, scope: !2777)
!2783 = !DILocation(line: 540, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 540, column: 8)
!2785 = !DILocation(line: 540, column: 8, scope: !2778)
!2786 = !DILocation(line: 543, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 543, column: 8)
!2788 = !DILocation(line: 543, column: 8, scope: !2778)
!2789 = !DILocation(line: 544, column: 53, scope: !2787)
!2790 = !DILocation(line: 544, column: 6, scope: !2787)
!2791 = !DILocation(line: 548, column: 4, scope: !2778)
!2792 = !DILocation(line: 553, column: 8, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 553, column: 8)
!2794 = !DILocation(line: 553, column: 8, scope: !2778)
!2795 = !DILocation(line: 557, column: 4, scope: !2778)
!2796 = !DILocation(line: 558, column: 2, scope: !2778)
!2797 = distinct !{!2797, !2768, !2798}
!2798 = !DILocation(line: 558, column: 2, scope: !2769)
!2799 = !DILocation(line: 0, scope: !2765)
!2800 = distinct !{!2800, !2762, !2801}
!2801 = !DILocation(line: 558, column: 2, scope: !2763)
!2802 = !DILocation(line: 561, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 561, column: 7)
!2804 = !DILocation(line: 561, column: 7, scope: !2755)
!2805 = !DILocation(line: 562, column: 5, scope: !2803)
!2806 = !DILocation(line: 563, column: 1, scope: !2755)
!2807 = distinct !DISubprogram(name: "fini_dce", scope: !3, file: !3, line: 690, type: !2538, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2808)
!2808 = !{!2809}
!2809 = !DILocalVariable(name: "fast", arg: 1, scope: !2807, file: !3, line: 690, type: !712)
!2810 = !DILocation(line: 0, scope: !2807)
!2811 = !DILocation(line: 692, column: 3, scope: !2807)
!2812 = !DILocation(line: 694, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 694, column: 7)
!2814 = !DILocation(line: 694, column: 7, scope: !2807)
!2815 = !DILocation(line: 696, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 695, column: 5)
!2817 = !DILocation(line: 697, column: 7, scope: !2816)
!2818 = !DILocation(line: 698, column: 5, scope: !2816)
!2819 = !DILocation(line: 699, column: 1, scope: !2807)
!2820 = distinct !DISubprogram(name: "deletable_insn_p", scope: !3, file: !3, line: 91, type: !2821, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!712, !784, !712, !720}
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829}
!2824 = !DILocalVariable(name: "insn", arg: 1, scope: !2820, file: !3, line: 91, type: !784)
!2825 = !DILocalVariable(name: "fast", arg: 2, scope: !2820, file: !3, line: 91, type: !712)
!2826 = !DILocalVariable(name: "arg_stores", arg: 3, scope: !2820, file: !3, line: 91, type: !720)
!2827 = !DILocalVariable(name: "body", scope: !2820, file: !3, line: 93, type: !784)
!2828 = !DILocalVariable(name: "x", scope: !2820, file: !3, line: 93, type: !784)
!2829 = !DILocalVariable(name: "i", scope: !2820, file: !3, line: 94, type: !713)
!2830 = !DILocation(line: 0, scope: !2820)
!2831 = !DILocation(line: 97, column: 8, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 97, column: 7)
!2833 = !DILocation(line: 97, column: 7, scope: !2820)
!2834 = !DILocation(line: 101, column: 8, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 101, column: 7)
!2836 = !DILocation(line: 101, column: 7, scope: !2820)
!2837 = !DILocation(line: 104, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 104, column: 7)
!2839 = !DILocation(line: 108, column: 12, scope: !2838)
!2840 = !DILocation(line: 108, column: 7, scope: !2838)
!2841 = !DILocation(line: 111, column: 12, scope: !2838)
!2842 = !DILocation(line: 114, column: 7, scope: !2838)
!2843 = !DILocation(line: 114, column: 11, scope: !2838)
!2844 = !DILocation(line: 115, column: 4, scope: !2838)
!2845 = !DILocation(line: 115, column: 8, scope: !2838)
!2846 = !DILocation(line: 104, column: 7, scope: !2820)
!2847 = !DILocation(line: 116, column: 12, scope: !2838)
!2848 = !DILocation(line: 116, column: 5, scope: !2838)
!2849 = !DILocation(line: 118, column: 10, scope: !2820)
!2850 = !DILocation(line: 119, column: 11, scope: !2820)
!2851 = !DILocation(line: 119, column: 3, scope: !2820)
!2852 = !DILocation(line: 126, column: 11, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 126, column: 11)
!2854 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 120, column: 5)
!2855 = !DILocation(line: 126, column: 11, scope: !2854)
!2856 = !DILocation(line: 131, column: 8, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 127, column: 2)
!2858 = !DILocation(line: 132, column: 11, scope: !2857)
!2859 = !DILocation(line: 132, column: 21, scope: !2857)
!2860 = !DILocation(line: 132, column: 26, scope: !2857)
!2861 = !DILocation(line: 132, column: 46, scope: !2857)
!2862 = !DILocation(line: 132, column: 4, scope: !2857)
!2863 = !DILocation(line: 141, column: 16, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 141, column: 7)
!2865 = !DILocation(line: 141, column: 12, scope: !2864)
!2866 = !DILocation(line: 0, scope: !2864)
!2867 = !DILocation(line: 141, column: 41, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 141, column: 7)
!2869 = !DILocation(line: 141, column: 7, scope: !2864)
!2870 = !DILocation(line: 142, column: 27, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 142, column: 6)
!2872 = !DILocation(line: 142, column: 7, scope: !2871)
!2873 = !DILocation(line: 142, column: 6, scope: !2868)
!2874 = !DILocation(line: 141, column: 7, scope: !2868)
!2875 = distinct !{!2875, !2869, !2876}
!2876 = !DILocation(line: 143, column: 11, scope: !2864)
!2877 = !DILocation(line: 147, column: 14, scope: !2854)
!2878 = !DILocation(line: 147, column: 7, scope: !2854)
!2879 = !DILocation(line: 149, column: 1, scope: !2820)
!2880 = distinct !DISubprogram(name: "mark_nonreg_stores", scope: !3, file: !3, line: 212, type: !2881, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{null, !784, !784, !712}
!2883 = !{!2884, !2885, !2886}
!2884 = !DILocalVariable(name: "body", arg: 1, scope: !2880, file: !3, line: 212, type: !784)
!2885 = !DILocalVariable(name: "insn", arg: 2, scope: !2880, file: !3, line: 212, type: !784)
!2886 = !DILocalVariable(name: "fast", arg: 3, scope: !2880, file: !3, line: 212, type: !712)
!2887 = !DILocation(line: 0, scope: !2880)
!2888 = !DILocation(line: 214, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 214, column: 7)
!2890 = !DILocation(line: 0, scope: !2889)
!2891 = !DILocation(line: 214, column: 7, scope: !2880)
!2892 = !DILocation(line: 215, column: 5, scope: !2889)
!2893 = !DILocation(line: 217, column: 5, scope: !2889)
!2894 = !DILocation(line: 218, column: 1, scope: !2880)
!2895 = distinct !DISubprogram(name: "mark_insn", scope: !3, file: !3, line: 168, type: !2896, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !784, !712}
!2898 = !{!2899, !2900}
!2899 = !DILocalVariable(name: "insn", arg: 1, scope: !2895, file: !3, line: 168, type: !784)
!2900 = !DILocalVariable(name: "fast", arg: 2, scope: !2895, file: !3, line: 168, type: !712)
!2901 = !DILocation(line: 0, scope: !2895)
!2902 = !DILocation(line: 170, column: 8, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 170, column: 7)
!2904 = !DILocation(line: 170, column: 7, scope: !2895)
!2905 = !DILocation(line: 172, column: 12, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 172, column: 11)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 171, column: 5)
!2908 = !DILocation(line: 172, column: 11, scope: !2907)
!2909 = !DILocation(line: 173, column: 2, scope: !2906)
!2910 = !DILocation(line: 174, column: 16, scope: !2907)
!2911 = !DILocation(line: 174, column: 24, scope: !2907)
!2912 = !DILocation(line: 174, column: 7, scope: !2907)
!2913 = !DILocation(line: 175, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 175, column: 11)
!2915 = !DILocation(line: 175, column: 11, scope: !2907)
!2916 = !DILocation(line: 176, column: 56, scope: !2914)
!2917 = !DILocation(line: 176, column: 2, scope: !2914)
!2918 = !DILocation(line: 177, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 177, column: 11)
!2920 = !DILocation(line: 178, column: 8, scope: !2919)
!2921 = !DILocation(line: 178, column: 4, scope: !2919)
!2922 = !DILocation(line: 179, column: 8, scope: !2919)
!2923 = !DILocation(line: 180, column: 4, scope: !2919)
!2924 = !DILocation(line: 180, column: 8, scope: !2919)
!2925 = !DILocation(line: 181, column: 8, scope: !2919)
!2926 = !DILocation(line: 181, column: 12, scope: !2919)
!2927 = !DILocation(line: 177, column: 11, scope: !2907)
!2928 = !DILocation(line: 182, column: 2, scope: !2919)
!2929 = !DILocation(line: 184, column: 1, scope: !2895)
!2930 = distinct !DISubprogram(name: "find_call_stack_args", scope: !3, file: !3, line: 229, type: !2931, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!712, !784, !712, !712, !720}
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2950, !2951, !2952, !2953, !2958, !2959, !2960, !2965, !2966, !2967, !2968, !2971, !2972, !2973, !2977, !2978, !2979, !2980, !2981, !2986, !2987}
!2934 = !DILocalVariable(name: "call_insn", arg: 1, scope: !2930, file: !3, line: 229, type: !784)
!2935 = !DILocalVariable(name: "do_mark", arg: 2, scope: !2930, file: !3, line: 229, type: !712)
!2936 = !DILocalVariable(name: "fast", arg: 3, scope: !2930, file: !3, line: 229, type: !712)
!2937 = !DILocalVariable(name: "arg_stores", arg: 4, scope: !2930, file: !3, line: 230, type: !720)
!2938 = !DILocalVariable(name: "p", scope: !2930, file: !3, line: 232, type: !784)
!2939 = !DILocalVariable(name: "insn", scope: !2930, file: !3, line: 232, type: !784)
!2940 = !DILocalVariable(name: "prev_insn", scope: !2930, file: !3, line: 232, type: !784)
!2941 = !DILocalVariable(name: "ret", scope: !2930, file: !3, line: 233, type: !712)
!2942 = !DILocalVariable(name: "min_sp_off", scope: !2930, file: !3, line: 234, type: !755)
!2943 = !DILocalVariable(name: "max_sp_off", scope: !2930, file: !3, line: 234, type: !755)
!2944 = !DILocalVariable(name: "sp_bytes", scope: !2930, file: !3, line: 235, type: !720)
!2945 = !DILocalVariable(name: "mem", scope: !2946, file: !3, line: 256, type: !784)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 255, column: 7)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 253, column: 9)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 252, column: 3)
!2949 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 252, column: 3)
!2950 = !DILocalVariable(name: "addr", scope: !2946, file: !3, line: 256, type: !784)
!2951 = !DILocalVariable(name: "size", scope: !2946, file: !3, line: 256, type: !784)
!2952 = !DILocalVariable(name: "off", scope: !2946, file: !3, line: 257, type: !755)
!2953 = !DILocalVariable(name: "use_rec", scope: !2954, file: !3, line: 277, type: !1889)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 276, column: 8)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 275, column: 10)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 270, column: 4)
!2957 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 269, column: 6)
!2958 = !DILocalVariable(name: "defs", scope: !2954, file: !3, line: 278, type: !1902)
!2959 = !DILocalVariable(name: "set", scope: !2954, file: !3, line: 279, type: !784)
!2960 = !DILocalVariable(name: "mem", scope: !2961, file: !3, line: 324, type: !784)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 323, column: 7)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 321, column: 9)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 320, column: 3)
!2964 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 320, column: 3)
!2965 = !DILocalVariable(name: "addr", scope: !2961, file: !3, line: 324, type: !784)
!2966 = !DILocalVariable(name: "off", scope: !2961, file: !3, line: 325, type: !755)
!2967 = !DILocalVariable(name: "byte", scope: !2961, file: !3, line: 325, type: !755)
!2968 = !DILocalVariable(name: "use_rec", scope: !2969, file: !3, line: 336, type: !1889)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 335, column: 4)
!2970 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 334, column: 6)
!2971 = !DILocalVariable(name: "defs", scope: !2969, file: !3, line: 337, type: !1902)
!2972 = !DILocalVariable(name: "set", scope: !2969, file: !3, line: 338, type: !784)
!2973 = !DILocalVariable(name: "set", scope: !2974, file: !3, line: 364, type: !784)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 363, column: 5)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 362, column: 3)
!2976 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 362, column: 3)
!2977 = !DILocalVariable(name: "mem", scope: !2974, file: !3, line: 364, type: !784)
!2978 = !DILocalVariable(name: "addr", scope: !2974, file: !3, line: 364, type: !784)
!2979 = !DILocalVariable(name: "off", scope: !2974, file: !3, line: 365, type: !755)
!2980 = !DILocalVariable(name: "byte", scope: !2974, file: !3, line: 365, type: !755)
!2981 = !DILocalVariable(name: "use_rec", scope: !2982, file: !3, line: 401, type: !1889)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 400, column: 6)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 399, column: 8)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 396, column: 2)
!2985 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 395, column: 11)
!2986 = !DILocalVariable(name: "defs", scope: !2982, file: !3, line: 402, type: !1902)
!2987 = !DILocalVariable(name: "set", scope: !2982, file: !3, line: 403, type: !784)
!2988 = !DILocation(line: 0, scope: !2930)
!2989 = !DILocation(line: 237, column: 3, scope: !2930)
!2990 = !DILocation(line: 238, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 238, column: 7)
!2992 = !DILocation(line: 238, column: 7, scope: !2930)
!2993 = !DILocation(line: 241, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 241, column: 7)
!2995 = !DILocation(line: 241, column: 7, scope: !2930)
!2996 = !DILocation(line: 243, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 242, column: 5)
!2998 = !DILocation(line: 244, column: 7, scope: !2997)
!2999 = !DILocation(line: 245, column: 5, scope: !2997)
!3000 = !DILocation(line: 252, column: 12, scope: !2949)
!3001 = !DILocation(line: 0, scope: !2955)
!3002 = !DILocation(line: 0, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 281, column: 3)
!3004 = !DILocation(line: 252, column: 8, scope: !2949)
!3005 = !DILocation(line: 248, column: 14, scope: !2930)
!3006 = !DILocation(line: 247, column: 14, scope: !2930)
!3007 = !DILocation(line: 0, scope: !2949)
!3008 = !DILocation(line: 252, column: 3, scope: !2949)
!3009 = !DILocation(line: 253, column: 9, scope: !2947)
!3010 = !DILocation(line: 253, column: 32, scope: !2947)
!3011 = !DILocation(line: 254, column: 2, scope: !2947)
!3012 = !DILocation(line: 254, column: 5, scope: !2947)
!3013 = !DILocation(line: 253, column: 9, scope: !2948)
!3014 = !DILocation(line: 0, scope: !2946)
!3015 = !DILocation(line: 258, column: 9, scope: !2946)
!3016 = !DILocation(line: 259, column: 11, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 259, column: 6)
!3018 = !DILocation(line: 259, column: 6, scope: !2946)
!3019 = !DILocation(line: 261, column: 9, scope: !2946)
!3020 = !DILocation(line: 262, column: 6, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 262, column: 6)
!3022 = !DILocation(line: 262, column: 22, scope: !3021)
!3023 = !DILocation(line: 263, column: 6, scope: !3021)
!3024 = !DILocation(line: 263, column: 9, scope: !3021)
!3025 = !DILocation(line: 264, column: 6, scope: !3021)
!3026 = !DILocation(line: 264, column: 9, scope: !3021)
!3027 = !DILocation(line: 262, column: 6, scope: !2946)
!3028 = !DILocation(line: 266, column: 12, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 265, column: 4)
!3030 = !DILocation(line: 268, column: 4, scope: !3029)
!3031 = !DILocation(line: 269, column: 14, scope: !2957)
!3032 = !DILocation(line: 269, column: 11, scope: !2957)
!3033 = !DILocation(line: 269, column: 6, scope: !2946)
!3034 = !DILocation(line: 271, column: 11, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 271, column: 10)
!3036 = !DILocation(line: 271, column: 10, scope: !2956)
!3037 = !DILocation(line: 281, column: 18, scope: !3003)
!3038 = !DILocation(line: 0, scope: !2954)
!3039 = !DILocation(line: 281, column: 8, scope: !3003)
!3040 = !DILocation(line: 281, column: 44, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 281, column: 3)
!3042 = !DILocation(line: 281, column: 3, scope: !3003)
!3043 = !DILocation(line: 282, column: 28, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 282, column: 9)
!3045 = !DILocation(line: 282, column: 9, scope: !3044)
!3046 = !DILocation(line: 282, column: 9, scope: !3041)
!3047 = !DILocation(line: 285, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 285, column: 7)
!3049 = !DILocation(line: 281, column: 61, scope: !3041)
!3050 = !DILocation(line: 281, column: 3, scope: !3041)
!3051 = distinct !{!3051, !3042, !3052}
!3052 = !DILocation(line: 283, column: 7, scope: !3003)
!3053 = !DILocation(line: 285, column: 16, scope: !3048)
!3054 = !DILocation(line: 285, column: 7, scope: !2954)
!3055 = !DILocation(line: 288, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 288, column: 3)
!3057 = !DILocation(line: 288, column: 8, scope: !3056)
!3058 = !DILocation(line: 0, scope: !3056)
!3059 = !DILocation(line: 288, column: 3, scope: !3056)
!3060 = !DILocation(line: 289, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 289, column: 9)
!3062 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 288, column: 3)
!3063 = !DILocation(line: 289, column: 9, scope: !3062)
!3064 = !DILocation(line: 288, column: 59, scope: !3062)
!3065 = !DILocation(line: 288, column: 3, scope: !3062)
!3066 = distinct !{!3066, !3059, !3067}
!3067 = !DILocation(line: 290, column: 7, scope: !3056)
!3068 = !DILocation(line: 295, column: 9, scope: !2954)
!3069 = !DILocation(line: 296, column: 8, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 296, column: 7)
!3071 = !DILocation(line: 296, column: 7, scope: !2954)
!3072 = !DILocation(line: 299, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 299, column: 7)
!3074 = !DILocation(line: 299, column: 32, scope: !3073)
!3075 = !DILocation(line: 300, column: 7, scope: !3073)
!3076 = !DILocation(line: 300, column: 10, scope: !3073)
!3077 = !DILocation(line: 300, column: 37, scope: !3073)
!3078 = !DILocation(line: 300, column: 34, scope: !3073)
!3079 = !DILocation(line: 301, column: 7, scope: !3073)
!3080 = !DILocation(line: 301, column: 11, scope: !3073)
!3081 = !DILocation(line: 299, column: 7, scope: !2954)
!3082 = !DILocation(line: 304, column: 10, scope: !2954)
!3083 = !DILocation(line: 304, column: 7, scope: !2954)
!3084 = !DILocation(line: 305, column: 8, scope: !2955)
!3085 = !DILocation(line: 266, column: 10, scope: !3029)
!3086 = !DILocation(line: 309, column: 15, scope: !2946)
!3087 = !DILocation(line: 310, column: 15, scope: !2946)
!3088 = !DILocation(line: 252, column: 57, scope: !2948)
!3089 = !DILocation(line: 252, column: 3, scope: !2948)
!3090 = distinct !{!3090, !3008, !3091}
!3091 = !DILocation(line: 311, column: 7, scope: !2949)
!3092 = !DILocation(line: 313, column: 18, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 313, column: 7)
!3094 = !DILocation(line: 313, column: 7, scope: !2930)
!3095 = !DILocation(line: 315, column: 14, scope: !2930)
!3096 = !DILocation(line: 320, column: 8, scope: !2964)
!3097 = !DILocation(line: 0, scope: !2964)
!3098 = !DILocation(line: 320, column: 3, scope: !2964)
!3099 = !DILocation(line: 321, column: 9, scope: !2962)
!3100 = !DILocation(line: 321, column: 32, scope: !2962)
!3101 = !DILocation(line: 322, column: 2, scope: !2962)
!3102 = !DILocation(line: 322, column: 5, scope: !2962)
!3103 = !DILocation(line: 321, column: 9, scope: !2963)
!3104 = !DILocation(line: 0, scope: !2961)
!3105 = !DILocation(line: 326, column: 9, scope: !2961)
!3106 = !DILocation(line: 327, column: 6, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 327, column: 6)
!3108 = !DILocation(line: 327, column: 22, scope: !3107)
!3109 = !DILocation(line: 328, column: 6, scope: !3107)
!3110 = !DILocation(line: 328, column: 9, scope: !3107)
!3111 = !DILocation(line: 329, column: 6, scope: !3107)
!3112 = !DILocation(line: 329, column: 9, scope: !3107)
!3113 = !DILocation(line: 327, column: 6, scope: !2961)
!3114 = !DILocation(line: 331, column: 12, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 330, column: 4)
!3116 = !DILocation(line: 333, column: 4, scope: !3115)
!3117 = !DILocation(line: 334, column: 14, scope: !2970)
!3118 = !DILocation(line: 334, column: 11, scope: !2970)
!3119 = !DILocation(line: 334, column: 6, scope: !2961)
!3120 = !DILocation(line: 340, column: 21, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 340, column: 6)
!3122 = !DILocation(line: 0, scope: !2969)
!3123 = !DILocation(line: 340, column: 11, scope: !3121)
!3124 = !DILocation(line: 0, scope: !3121)
!3125 = !DILocation(line: 340, column: 47, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 340, column: 6)
!3127 = !DILocation(line: 340, column: 6, scope: !3121)
!3128 = !DILocation(line: 341, column: 31, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 341, column: 12)
!3130 = !DILocation(line: 341, column: 12, scope: !3129)
!3131 = !DILocation(line: 341, column: 12, scope: !3126)
!3132 = !DILocation(line: 344, column: 18, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 344, column: 6)
!3134 = !DILocation(line: 340, column: 64, scope: !3126)
!3135 = !DILocation(line: 340, column: 6, scope: !3126)
!3136 = distinct !{!3136, !3127, !3137}
!3137 = !DILocation(line: 342, column: 3, scope: !3121)
!3138 = !DILocation(line: 344, column: 11, scope: !3133)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 344, column: 6, scope: !3133)
!3141 = !DILocation(line: 348, column: 12, scope: !2969)
!3142 = !DILocation(line: 345, column: 14, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 345, column: 12)
!3144 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 344, column: 6)
!3145 = !DILocation(line: 345, column: 12, scope: !3144)
!3146 = !DILocation(line: 344, column: 62, scope: !3144)
!3147 = !DILocation(line: 344, column: 6, scope: !3144)
!3148 = distinct !{!3148, !3140, !3149}
!3149 = !DILocation(line: 346, column: 3, scope: !3133)
!3150 = !DILocation(line: 349, column: 13, scope: !2969)
!3151 = !DILocation(line: 349, column: 10, scope: !2969)
!3152 = !DILocation(line: 350, column: 4, scope: !2969)
!3153 = !DILocation(line: 0, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 351, column: 2)
!3155 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 351, column: 2)
!3156 = !DILocation(line: 351, column: 7, scope: !3155)
!3157 = !DILocation(line: 0, scope: !3155)
!3158 = !DILocation(line: 351, column: 32, scope: !3154)
!3159 = !DILocation(line: 351, column: 30, scope: !3154)
!3160 = !DILocation(line: 351, column: 24, scope: !3154)
!3161 = !DILocation(line: 351, column: 2, scope: !3155)
!3162 = !DILocation(line: 353, column: 42, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 353, column: 10)
!3164 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 352, column: 4)
!3165 = !DILocation(line: 353, column: 37, scope: !3163)
!3166 = !DILocation(line: 353, column: 11, scope: !3163)
!3167 = !DILocation(line: 353, column: 10, scope: !3164)
!3168 = !DILocation(line: 354, column: 8, scope: !3163)
!3169 = !DILocation(line: 351, column: 61, scope: !3154)
!3170 = !DILocation(line: 351, column: 2, scope: !3154)
!3171 = distinct !{!3171, !3161, !3172}
!3172 = !DILocation(line: 355, column: 4, scope: !3155)
!3173 = !DILocation(line: 320, column: 57, scope: !2963)
!3174 = !DILocation(line: 320, column: 3, scope: !2963)
!3175 = distinct !{!3175, !3098, !3176}
!3176 = !DILocation(line: 356, column: 7, scope: !2964)
!3177 = !DILocation(line: 362, column: 15, scope: !2976)
!3178 = !DILocation(line: 0, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 367, column: 11)
!3180 = !DILocation(line: 0, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 453, column: 11)
!3182 = !DILocation(line: 362, column: 8, scope: !2976)
!3183 = !DILocation(line: 361, column: 7, scope: !2930)
!3184 = !DILocation(line: 0, scope: !2976)
!3185 = !DILocation(line: 362, column: 3, scope: !2976)
!3186 = !DILocation(line: 367, column: 19, scope: !3179)
!3187 = !DILocation(line: 367, column: 16, scope: !3179)
!3188 = !DILocation(line: 367, column: 11, scope: !2974)
!3189 = !DILocation(line: 370, column: 14, scope: !3179)
!3190 = !DILocation(line: 372, column: 11, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 372, column: 11)
!3192 = !DILocation(line: 372, column: 11, scope: !2974)
!3193 = !DILocation(line: 375, column: 12, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 375, column: 11)
!3195 = !DILocation(line: 375, column: 11, scope: !2974)
!3196 = !DILocation(line: 378, column: 13, scope: !2974)
!3197 = !DILocation(line: 0, scope: !2974)
!3198 = !DILocation(line: 379, column: 12, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 379, column: 11)
!3200 = !DILocation(line: 379, column: 16, scope: !3199)
!3201 = !DILocation(line: 379, column: 19, scope: !3199)
!3202 = !DILocation(line: 379, column: 37, scope: !3199)
!3203 = !DILocation(line: 379, column: 34, scope: !3199)
!3204 = !DILocation(line: 379, column: 11, scope: !2974)
!3205 = !DILocation(line: 382, column: 12, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 382, column: 11)
!3207 = !DILocation(line: 382, column: 11, scope: !2974)
!3208 = !DILocation(line: 386, column: 14, scope: !2974)
!3209 = !DILocation(line: 388, column: 11, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 388, column: 11)
!3211 = !DILocation(line: 388, column: 27, scope: !3210)
!3212 = !DILocation(line: 389, column: 4, scope: !3210)
!3213 = !DILocation(line: 389, column: 7, scope: !3210)
!3214 = !DILocation(line: 390, column: 4, scope: !3210)
!3215 = !DILocation(line: 390, column: 7, scope: !3210)
!3216 = !DILocation(line: 388, column: 11, scope: !2974)
!3217 = !DILocation(line: 392, column: 10, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 391, column: 2)
!3219 = !DILocation(line: 394, column: 2, scope: !3218)
!3220 = !DILocation(line: 395, column: 16, scope: !2985)
!3221 = !DILocation(line: 395, column: 11, scope: !2974)
!3222 = !DILocation(line: 397, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 397, column: 8)
!3224 = !DILocation(line: 397, column: 8, scope: !2984)
!3225 = !DILocation(line: 405, column: 23, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 405, column: 8)
!3227 = !DILocation(line: 0, scope: !2982)
!3228 = !DILocation(line: 405, column: 13, scope: !3226)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocation(line: 405, column: 44, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 405, column: 8)
!3232 = !DILocation(line: 405, column: 8, scope: !3226)
!3233 = !DILocation(line: 406, column: 26, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 406, column: 7)
!3235 = !DILocation(line: 406, column: 7, scope: !3234)
!3236 = !DILocation(line: 406, column: 7, scope: !3231)
!3237 = !DILocation(line: 409, column: 12, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 409, column: 12)
!3239 = !DILocation(line: 405, column: 61, scope: !3231)
!3240 = !DILocation(line: 405, column: 8, scope: !3231)
!3241 = distinct !{!3241, !3232, !3242}
!3242 = !DILocation(line: 407, column: 5, scope: !3226)
!3243 = !DILocation(line: 409, column: 21, scope: !3238)
!3244 = !DILocation(line: 409, column: 12, scope: !2982)
!3245 = !DILocation(line: 412, column: 20, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 412, column: 8)
!3247 = !DILocation(line: 412, column: 13, scope: !3246)
!3248 = !DILocation(line: 0, scope: !3246)
!3249 = !DILocation(line: 412, column: 8, scope: !3246)
!3250 = !DILocation(line: 413, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 413, column: 7)
!3252 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 412, column: 8)
!3253 = !DILocation(line: 413, column: 7, scope: !3252)
!3254 = !DILocation(line: 412, column: 64, scope: !3252)
!3255 = !DILocation(line: 412, column: 8, scope: !3252)
!3256 = distinct !{!3256, !3249, !3257}
!3257 = !DILocation(line: 414, column: 5, scope: !3246)
!3258 = !DILocation(line: 419, column: 14, scope: !2982)
!3259 = !DILocation(line: 420, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 420, column: 12)
!3261 = !DILocation(line: 420, column: 12, scope: !2982)
!3262 = !DILocation(line: 423, column: 12, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 423, column: 12)
!3264 = !DILocation(line: 423, column: 37, scope: !3263)
!3265 = !DILocation(line: 424, column: 5, scope: !3263)
!3266 = !DILocation(line: 424, column: 8, scope: !3263)
!3267 = !DILocation(line: 424, column: 35, scope: !3263)
!3268 = !DILocation(line: 424, column: 32, scope: !3263)
!3269 = !DILocation(line: 425, column: 5, scope: !3263)
!3270 = !DILocation(line: 425, column: 9, scope: !3263)
!3271 = !DILocation(line: 423, column: 12, scope: !2982)
!3272 = !DILocation(line: 428, column: 15, scope: !2982)
!3273 = !DILocation(line: 428, column: 12, scope: !2982)
!3274 = !DILocation(line: 429, column: 6, scope: !2983)
!3275 = !DILocation(line: 0, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 434, column: 11)
!3277 = !DILocation(line: 434, column: 11, scope: !3276)
!3278 = !DILocation(line: 392, column: 8, scope: !3218)
!3279 = !DILocation(line: 434, column: 42, scope: !3276)
!3280 = !DILocation(line: 434, column: 11, scope: !2974)
!3281 = !DILocation(line: 437, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 437, column: 7)
!3283 = !DILocation(line: 437, column: 37, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 437, column: 7)
!3285 = !DILocation(line: 0, scope: !3282)
!3286 = !DILocation(line: 437, column: 35, scope: !3284)
!3287 = !DILocation(line: 437, column: 29, scope: !3284)
!3288 = !DILocation(line: 439, column: 13, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 439, column: 8)
!3290 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 438, column: 2)
!3291 = !DILocation(line: 440, column: 16, scope: !3289)
!3292 = !DILocation(line: 440, column: 8, scope: !3289)
!3293 = !DILocation(line: 441, column: 45, scope: !3289)
!3294 = !DILocation(line: 441, column: 40, scope: !3289)
!3295 = !DILocation(line: 441, column: 12, scope: !3289)
!3296 = !DILocation(line: 439, column: 8, scope: !3290)
!3297 = !DILocation(line: 437, column: 73, scope: !3284)
!3298 = !DILocation(line: 437, column: 7, scope: !3284)
!3299 = distinct !{!3299, !3281, !3300}
!3300 = !DILocation(line: 443, column: 2, scope: !3282)
!3301 = !DILocation(line: 445, column: 12, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 445, column: 11)
!3303 = !DILocation(line: 445, column: 11, scope: !2974)
!3304 = !DILocation(line: 448, column: 11, scope: !2974)
!3305 = !DILocation(line: 449, column: 2, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 448, column: 11)
!3307 = !DILocation(line: 451, column: 30, scope: !3306)
!3308 = !DILocation(line: 451, column: 2, scope: !3306)
!3309 = !DILocation(line: 453, column: 11, scope: !3181)
!3310 = !DILocation(line: 0, scope: !2975)
!3311 = distinct !{!3311, !3185, !3312}
!3312 = !DILocation(line: 458, column: 5, scope: !2976)
!3313 = !DILocation(line: 460, column: 3, scope: !2930)
!3314 = !DILocation(line: 461, column: 8, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 461, column: 7)
!3316 = !DILocation(line: 461, column: 15, scope: !3315)
!3317 = !DILocation(line: 461, column: 12, scope: !3315)
!3318 = !DILocation(line: 462, column: 5, scope: !3315)
!3319 = !DILocation(line: 465, column: 1, scope: !2930)
!3320 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !3321, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3326)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!7, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !721, line: 51, baseType: !3324)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "x", arg: 1, scope: !3320, file: !568, line: 1051, type: !3323)
!3328 = !DILocation(line: 0, scope: !3320)
!3329 = !DILocation(line: 1053, column: 10, scope: !3320)
!3330 = !DILocation(line: 1053, column: 3, scope: !3320)
!3331 = distinct !DISubprogram(name: "deletable_insn_p_1", scope: !3, file: !3, line: 66, type: !3332, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!712, !784}
!3334 = !{!3335}
!3335 = !DILocalVariable(name: "body", arg: 1, scope: !3331, file: !3, line: 66, type: !784)
!3336 = !DILocation(line: 0, scope: !3331)
!3337 = !DILocation(line: 68, column: 11, scope: !3331)
!3338 = !DILocation(line: 68, column: 3, scope: !3331)
!3339 = !DILocation(line: 82, column: 15, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 69, column: 5)
!3341 = !DILocation(line: 82, column: 14, scope: !3340)
!3342 = !DILocation(line: 82, column: 7, scope: !3340)
!3343 = !DILocation(line: 0, scope: !3340)
!3344 = !DILocation(line: 84, column: 1, scope: !3331)
!3345 = distinct !DISubprogram(name: "mark_nonreg_stores_1", scope: !3, file: !3, line: 191, type: !3346, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !784, !3323, !717}
!3348 = !{!3349, !3350, !3351}
!3349 = !DILocalVariable(name: "dest", arg: 1, scope: !3345, file: !3, line: 191, type: !784)
!3350 = !DILocalVariable(name: "pattern", arg: 2, scope: !3345, file: !3, line: 191, type: !3323)
!3351 = !DILocalVariable(name: "data", arg: 3, scope: !3345, file: !3, line: 191, type: !717)
!3352 = !DILocation(line: 0, scope: !3345)
!3353 = !DILocation(line: 193, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 193, column: 7)
!3355 = !DILocation(line: 193, column: 26, scope: !3354)
!3356 = !DILocation(line: 193, column: 37, scope: !3354)
!3357 = !DILocation(line: 193, column: 41, scope: !3354)
!3358 = !DILocation(line: 193, column: 7, scope: !3345)
!3359 = !DILocation(line: 194, column: 16, scope: !3354)
!3360 = !DILocation(line: 194, column: 5, scope: !3354)
!3361 = !DILocation(line: 195, column: 1, scope: !3345)
!3362 = distinct !DISubprogram(name: "mark_nonreg_stores_2", scope: !3, file: !3, line: 202, type: !3346, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3363 = !{!3364, !3365, !3366}
!3364 = !DILocalVariable(name: "dest", arg: 1, scope: !3362, file: !3, line: 202, type: !784)
!3365 = !DILocalVariable(name: "pattern", arg: 2, scope: !3362, file: !3, line: 202, type: !3323)
!3366 = !DILocalVariable(name: "data", arg: 3, scope: !3362, file: !3, line: 202, type: !717)
!3367 = !DILocation(line: 0, scope: !3362)
!3368 = !DILocation(line: 204, column: 7, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 204, column: 7)
!3370 = !DILocation(line: 204, column: 26, scope: !3369)
!3371 = !DILocation(line: 204, column: 37, scope: !3369)
!3372 = !DILocation(line: 204, column: 41, scope: !3369)
!3373 = !DILocation(line: 204, column: 7, scope: !3362)
!3374 = !DILocation(line: 205, column: 16, scope: !3369)
!3375 = !DILocation(line: 205, column: 5, scope: !3369)
!3376 = !DILocation(line: 206, column: 1, scope: !3362)
!3377 = distinct !DISubprogram(name: "marked_insn_p", scope: !3, file: !3, line: 155, type: !3378, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!713, !784}
!3380 = !{!3381}
!3381 = !DILocalVariable(name: "insn", arg: 1, scope: !3377, file: !3, line: 155, type: !784)
!3382 = !DILocation(line: 0, scope: !3377)
!3383 = !DILocation(line: 159, column: 3, scope: !3377)
!3384 = !DILocation(line: 160, column: 10, scope: !3377)
!3385 = !DILocation(line: 160, column: 3, scope: !3377)
!3386 = distinct !DISubprogram(name: "VEC_rtx_heap_safe_push", scope: !568, file: !568, line: 201, type: !3387, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!1937, !2748, !784}
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "vec_", arg: 1, scope: !3386, file: !568, line: 201, type: !2748)
!3391 = !DILocalVariable(name: "obj_", arg: 2, scope: !3386, file: !568, line: 201, type: !784)
!3392 = !DILocation(line: 0, scope: !3386)
!3393 = !DILocation(line: 201, column: 1, scope: !3386)
!3394 = distinct !DISubprogram(name: "SET_BIT", scope: !2003, file: !2003, line: 63, type: !3395, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !2002, !7}
!3397 = !{!3398, !3399, !3400}
!3398 = !DILocalVariable(name: "map", arg: 1, scope: !3394, file: !2003, line: 63, type: !2002)
!3399 = !DILocalVariable(name: "bitno", arg: 2, scope: !3394, file: !2003, line: 63, type: !7)
!3400 = !DILocalVariable(name: "oldbit", scope: !3401, file: !2003, line: 67, type: !712)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !2003, line: 66, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3394, file: !2003, line: 65, column: 7)
!3403 = !DILocation(line: 0, scope: !3394)
!3404 = !DILocation(line: 65, column: 12, scope: !3402)
!3405 = !DILocation(line: 65, column: 7, scope: !3402)
!3406 = !DILocation(line: 65, column: 7, scope: !3394)
!3407 = !DILocation(line: 73, column: 40, scope: !3394)
!3408 = !DILocation(line: 73, column: 29, scope: !3394)
!3409 = !DILocation(line: 72, column: 19, scope: !3394)
!3410 = !DILocation(line: 72, column: 3, scope: !3394)
!3411 = !DILocation(line: 68, column: 16, scope: !3401)
!3412 = !DILocation(line: 69, column: 12, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3401, file: !2003, line: 69, column: 11)
!3414 = !DILocation(line: 69, column: 11, scope: !3401)
!3415 = !DILocation(line: 70, column: 2, scope: !3413)
!3416 = !DILocation(line: 70, column: 41, scope: !3413)
!3417 = !DILocation(line: 73, column: 5, scope: !3394)
!3418 = !DILocation(line: 74, column: 1, scope: !3394)
!3419 = distinct !DISubprogram(name: "VEC_rtx_heap_reserve", scope: !568, file: !568, line: 201, type: !3420, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!713, !2748, !713}
!3422 = !{!3423, !3424, !3425}
!3423 = !DILocalVariable(name: "vec_", arg: 1, scope: !3419, file: !568, line: 201, type: !2748)
!3424 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3419, file: !568, line: 201, type: !713)
!3425 = !DILocalVariable(name: "extend", scope: !3419, file: !568, line: 201, type: !713)
!3426 = !DILocation(line: 0, scope: !3419)
!3427 = !DILocation(line: 201, column: 1, scope: !3419)
!3428 = !DILocation(line: 201, column: 1, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3419, file: !568, line: 201, column: 1)
!3430 = distinct !DISubprogram(name: "VEC_rtx_base_quick_push", scope: !568, file: !568, line: 200, type: !3431, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!1937, !2686, !784}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "vec_", arg: 1, scope: !3430, file: !568, line: 200, type: !2686)
!3435 = !DILocalVariable(name: "obj_", arg: 2, scope: !3430, file: !568, line: 200, type: !784)
!3436 = !DILocalVariable(name: "slot_", scope: !3430, file: !568, line: 200, type: !1937)
!3437 = !DILocation(line: 0, scope: !3430)
!3438 = !DILocation(line: 200, column: 1, scope: !3430)
!3439 = distinct !DISubprogram(name: "VEC_rtx_base_space", scope: !568, file: !568, line: 200, type: !3440, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!713, !2686, !713}
!3442 = !{!3443, !3444}
!3443 = !DILocalVariable(name: "vec_", arg: 1, scope: !3439, file: !568, line: 200, type: !2686)
!3444 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3439, file: !568, line: 200, type: !713)
!3445 = !DILocation(line: 0, scope: !3439)
!3446 = !DILocation(line: 200, column: 1, scope: !3439)
!3447 = distinct !DISubprogram(name: "df_get_artificial_uses", scope: !1886, file: !1886, line: 1099, type: !3448, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!1889, !7}
!3450 = !{!3451}
!3451 = !DILocalVariable(name: "bb_index", arg: 1, scope: !3447, file: !1886, line: 1099, type: !7)
!3452 = !DILocation(line: 0, scope: !3447)
!3453 = !DILocation(line: 1101, column: 10, scope: !3447)
!3454 = !DILocation(line: 1101, column: 42, scope: !3447)
!3455 = !DILocation(line: 1101, column: 3, scope: !3447)
!3456 = distinct !DISubprogram(name: "df_scan_get_bb_info", scope: !1886, file: !1886, line: 1034, type: !3457, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!1884, !7}
!3459 = !{!3460}
!3460 = !DILocalVariable(name: "index", arg: 1, scope: !3456, file: !1886, line: 1034, type: !7)
!3461 = !DILocation(line: 0, scope: !3456)
!3462 = !DILocation(line: 1036, column: 15, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3456, file: !1886, line: 1036, column: 7)
!3464 = !DILocation(line: 1036, column: 24, scope: !3463)
!3465 = !DILocation(line: 1036, column: 13, scope: !3463)
!3466 = !DILocation(line: 1036, column: 7, scope: !3456)
!3467 = !DILocation(line: 1037, column: 48, scope: !3463)
!3468 = !DILocation(line: 1037, column: 39, scope: !3463)
!3469 = !DILocation(line: 1037, column: 5, scope: !3463)
!3470 = !DILocation(line: 0, scope: !3463)
!3471 = !DILocation(line: 1040, column: 1, scope: !3456)
!3472 = distinct !DISubprogram(name: "delete_corresponding_reg_eq_notes", scope: !3, file: !3, line: 472, type: !2693, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3473)
!3473 = !{!3474, !3475, !3476, !3480, !3481, !3483, !3484}
!3474 = !DILocalVariable(name: "insn", arg: 1, scope: !3472, file: !3, line: 472, type: !784)
!3475 = !DILocalVariable(name: "def_rec", scope: !3472, file: !3, line: 474, type: !1889)
!3476 = !DILocalVariable(name: "def", scope: !3477, file: !3, line: 477, type: !1890)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 476, column: 5)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 475, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 475, column: 3)
!3480 = !DILocalVariable(name: "regno", scope: !3477, file: !3, line: 478, type: !7)
!3481 = !DILocalVariable(name: "eq_use", scope: !3482, file: !3, line: 485, type: !1890)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 484, column: 2)
!3483 = !DILocalVariable(name: "noted_insn", scope: !3482, file: !3, line: 486, type: !784)
!3484 = !DILocalVariable(name: "note", scope: !3482, file: !3, line: 487, type: !784)
!3485 = !DILocation(line: 0, scope: !3472)
!3486 = !DILocation(line: 475, column: 18, scope: !3479)
!3487 = !DILocation(line: 475, column: 8, scope: !3479)
!3488 = !DILocation(line: 0, scope: !3479)
!3489 = !DILocation(line: 475, column: 39, scope: !3478)
!3490 = !DILocation(line: 475, column: 3, scope: !3479)
!3491 = !DILocation(line: 478, column: 28, scope: !3477)
!3492 = !DILocation(line: 0, scope: !3477)
!3493 = !DILocation(line: 483, column: 7, scope: !3477)
!3494 = !DILocation(line: 483, column: 14, scope: !3477)
!3495 = !DILocation(line: 486, column: 21, scope: !3482)
!3496 = !DILocation(line: 0, scope: !3482)
!3497 = !DILocation(line: 487, column: 15, scope: !3482)
!3498 = !DILocation(line: 488, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 488, column: 8)
!3500 = !DILocation(line: 488, column: 8, scope: !3482)
!3501 = !DILocation(line: 489, column: 13, scope: !3499)
!3502 = !DILocation(line: 489, column: 6, scope: !3499)
!3503 = !DILocation(line: 494, column: 4, scope: !3482)
!3504 = !DILocation(line: 495, column: 4, scope: !3482)
!3505 = distinct !{!3505, !3493, !3506}
!3506 = !DILocation(line: 496, column: 2, scope: !3477)
!3507 = !DILocation(line: 475, column: 56, scope: !3478)
!3508 = !DILocation(line: 475, column: 3, scope: !3478)
!3509 = distinct !{!3509, !3490, !3510}
!3510 = !DILocation(line: 497, column: 5, scope: !3479)
!3511 = !DILocation(line: 498, column: 1, scope: !3472)
!3512 = distinct !DISubprogram(name: "fast_dce", scope: !3, file: !3, line: 946, type: !2538, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3513)
!3513 = !{!3514, !3515, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3530, !3531, !3532, !3535, !3542}
!3514 = !DILocalVariable(name: "byte_level", arg: 1, scope: !3512, file: !3, line: 946, type: !712)
!3515 = !DILocalVariable(name: "postorder", scope: !3512, file: !3, line: 948, type: !3516)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!3517 = !DILocalVariable(name: "n_blocks", scope: !3512, file: !3, line: 949, type: !713)
!3518 = !DILocalVariable(name: "processed", scope: !3512, file: !3, line: 951, type: !720)
!3519 = !DILocalVariable(name: "redo_out", scope: !3512, file: !3, line: 954, type: !720)
!3520 = !DILocalVariable(name: "all_blocks", scope: !3512, file: !3, line: 955, type: !720)
!3521 = !DILocalVariable(name: "global_changed", scope: !3512, file: !3, line: 956, type: !712)
!3522 = !DILocalVariable(name: "au", scope: !3512, file: !3, line: 963, type: !720)
!3523 = !DILocalVariable(name: "au_eh", scope: !3512, file: !3, line: 964, type: !720)
!3524 = !DILocalVariable(name: "i", scope: !3512, file: !3, line: 965, type: !713)
!3525 = !DILocalVariable(name: "index", scope: !3526, file: !3, line: 978, type: !713)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 977, column: 2)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 976, column: 7)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 976, column: 7)
!3529 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 973, column: 5)
!3530 = !DILocalVariable(name: "bb", scope: !3526, file: !3, line: 979, type: !1277)
!3531 = !DILocalVariable(name: "local_changed", scope: !3526, file: !3, line: 980, type: !712)
!3532 = !DILocalVariable(name: "e", scope: !3533, file: !3, line: 1000, type: !1294)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 999, column: 6)
!3534 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 998, column: 8)
!3535 = !DILocalVariable(name: "ei", scope: !3533, file: !3, line: 1001, type: !3536)
!3536 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !3537)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !3538)
!3538 = !{!3539, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3537, file: !325, line: 680, baseType: !7, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3537, file: !325, line: 681, baseType: !3541, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!3542 = !DILocalVariable(name: "old_flag", scope: !3543, file: !3, line: 1018, type: !713)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1015, column: 2)
!3544 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 1014, column: 11)
!3545 = !DILocation(line: 0, scope: !3512)
!3546 = !DILocation(line: 948, column: 20, scope: !3512)
!3547 = !DILocation(line: 949, column: 18, scope: !3512)
!3548 = !DILocation(line: 951, column: 22, scope: !3512)
!3549 = !DILocation(line: 954, column: 21, scope: !3512)
!3550 = !DILocation(line: 955, column: 23, scope: !3512)
!3551 = !DILocation(line: 963, column: 15, scope: !3512)
!3552 = !DILocation(line: 963, column: 19, scope: !3512)
!3553 = !DILocation(line: 964, column: 22, scope: !3512)
!3554 = !DILocation(line: 967, column: 3, scope: !3512)
!3555 = !DILocation(line: 969, column: 8, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 969, column: 3)
!3557 = !DILocation(line: 0, scope: !3556)
!3558 = !DILocation(line: 969, column: 17, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 969, column: 3)
!3560 = !DILocation(line: 969, column: 3, scope: !3556)
!3561 = !DILocation(line: 0, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 988, column: 8)
!3563 = !DILocation(line: 0, scope: !3533)
!3564 = !DILocation(line: 0, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1002, column: 8)
!3566 = !DILocation(line: 0, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1002, column: 8)
!3568 = !DILocation(line: 972, column: 3, scope: !3512)
!3569 = !DILocation(line: 970, column: 33, scope: !3559)
!3570 = !DILocation(line: 970, column: 5, scope: !3559)
!3571 = !DILocation(line: 969, column: 30, scope: !3559)
!3572 = !DILocation(line: 969, column: 3, scope: !3559)
!3573 = distinct !{!3573, !3560, !3574}
!3574 = !DILocation(line: 970, column: 45, scope: !3556)
!3575 = !DILocation(line: 976, column: 7, scope: !3528)
!3576 = !DILocation(line: 974, column: 22, scope: !3529)
!3577 = !DILocation(line: 976, column: 21, scope: !3527)
!3578 = !DILocation(line: 978, column: 16, scope: !3526)
!3579 = !DILocation(line: 0, scope: !3526)
!3580 = !DILocation(line: 979, column: 21, scope: !3526)
!3581 = !DILocation(line: 982, column: 14, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 982, column: 8)
!3583 = !DILocation(line: 982, column: 8, scope: !3526)
!3584 = !DILocation(line: 994, column: 10, scope: !3562)
!3585 = !DILocation(line: 996, column: 4, scope: !3526)
!3586 = !DILocation(line: 998, column: 8, scope: !3534)
!3587 = !DILocation(line: 998, column: 8, scope: !3526)
!3588 = !DILocation(line: 1000, column: 8, scope: !3533)
!3589 = !DILocation(line: 1001, column: 8, scope: !3533)
!3590 = !DILocation(line: 1002, column: 8, scope: !3565)
!3591 = !DILocation(line: 0, scope: !3529)
!3592 = !DILocation(line: 1002, column: 8, scope: !3567)
!3593 = !DILocation(line: 1003, column: 32, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1003, column: 7)
!3595 = !DILocation(line: 1003, column: 35, scope: !3594)
!3596 = !DILocation(line: 1003, column: 40, scope: !3594)
!3597 = !DILocation(line: 1003, column: 7, scope: !3594)
!3598 = !DILocation(line: 1003, column: 7, scope: !3567)
!3599 = !DILocation(line: 1010, column: 31, scope: !3594)
!3600 = !DILocation(line: 1010, column: 34, scope: !3594)
!3601 = !DILocation(line: 1010, column: 39, scope: !3594)
!3602 = !DILocation(line: 1010, column: 5, scope: !3594)
!3603 = distinct !{!3603, !3590, !3604}
!3604 = !DILocation(line: 1010, column: 44, scope: !3565)
!3605 = !DILocation(line: 1011, column: 6, scope: !3534)
!3606 = !DILocation(line: 1011, column: 6, scope: !3533)
!3607 = !DILocation(line: 984, column: 8, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 983, column: 6)
!3609 = !DILocation(line: 985, column: 8, scope: !3608)
!3610 = !DILocation(line: 976, column: 34, scope: !3527)
!3611 = !DILocation(line: 976, column: 7, scope: !3527)
!3612 = distinct !{!3612, !3575, !3613}
!3613 = !DILocation(line: 1012, column: 2, scope: !3528)
!3614 = !DILocation(line: 1014, column: 11, scope: !3544)
!3615 = !DILocation(line: 990, column: 10, scope: !3562)
!3616 = !DILocation(line: 1014, column: 11, scope: !3529)
!3617 = !DILocation(line: 1018, column: 19, scope: !3543)
!3618 = !DILocation(line: 0, scope: !3543)
!3619 = !DILocation(line: 1022, column: 4, scope: !3543)
!3620 = !DILocation(line: 1023, column: 18, scope: !3543)
!3621 = !DILocation(line: 1023, column: 4, scope: !3543)
!3622 = !DILocation(line: 1024, column: 4, scope: !3543)
!3623 = !DILocation(line: 1025, column: 4, scope: !3543)
!3624 = !DILocation(line: 0, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1031, column: 8)
!3626 = !DILocation(line: 1031, column: 8, scope: !3543)
!3627 = !DILocation(line: 1032, column: 26, scope: !3625)
!3628 = !DILocation(line: 1032, column: 6, scope: !3625)
!3629 = !DILocation(line: 1034, column: 26, scope: !3625)
!3630 = !DILocation(line: 1034, column: 6, scope: !3625)
!3631 = !DILocation(line: 1036, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 1036, column: 8)
!3633 = !DILocation(line: 1036, column: 8, scope: !3543)
!3634 = !DILocation(line: 1037, column: 6, scope: !3632)
!3635 = !DILocation(line: 1039, column: 4, scope: !3543)
!3636 = !DILocation(line: 1040, column: 2, scope: !3543)
!3637 = distinct !{!3637, !3568, !3638}
!3638 = !DILocation(line: 1041, column: 5, scope: !3512)
!3639 = !DILocation(line: 1043, column: 3, scope: !3512)
!3640 = !DILocation(line: 1045, column: 3, scope: !3512)
!3641 = !DILocation(line: 1046, column: 3, scope: !3512)
!3642 = !DILocation(line: 1047, column: 3, scope: !3512)
!3643 = !DILocation(line: 1048, column: 1, scope: !3512)
!3644 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !325, file: !325, line: 281, type: !3645, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3649)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!1277, !3647, !7}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1358)
!3649 = !{!3650, !3651}
!3650 = !DILocalVariable(name: "vec_", arg: 1, scope: !3644, file: !325, line: 281, type: !3647)
!3651 = !DILocalVariable(name: "ix_", arg: 2, scope: !3644, file: !325, line: 281, type: !7)
!3652 = !DILocation(line: 0, scope: !3644)
!3653 = !DILocation(line: 281, column: 1, scope: !3644)
!3654 = distinct !DISubprogram(name: "byte_dce_process_block", scope: !3, file: !3, line: 769, type: !3655, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3657)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!712, !1277, !712, !720}
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3668, !3669, !3674, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3658 = !DILocalVariable(name: "bb", arg: 1, scope: !3654, file: !3, line: 769, type: !1277)
!3659 = !DILocalVariable(name: "redo_out", arg: 2, scope: !3654, file: !3, line: 769, type: !712)
!3660 = !DILocalVariable(name: "au", arg: 3, scope: !3654, file: !3, line: 769, type: !720)
!3661 = !DILocalVariable(name: "local_live", scope: !3654, file: !3, line: 771, type: !720)
!3662 = !DILocalVariable(name: "insn", scope: !3654, file: !3, line: 772, type: !784)
!3663 = !DILocalVariable(name: "block_changed", scope: !3654, file: !3, line: 773, type: !712)
!3664 = !DILocalVariable(name: "def_rec", scope: !3654, file: !3, line: 774, type: !1889)
!3665 = !DILocalVariable(name: "e", scope: !3666, file: !3, line: 781, type: !1294)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 777, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 776, column: 7)
!3668 = !DILocalVariable(name: "ei", scope: !3666, file: !3, line: 782, type: !3536)
!3669 = !DILocalVariable(name: "con_fun_n", scope: !3666, file: !3, line: 783, type: !3670)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_confluence_function_n", file: !1886, line: 224, baseType: !3671)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{null, !1294}
!3674 = !DILocalVariable(name: "def", scope: !3675, file: !3, line: 805, type: !1890)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 804, column: 4)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 803, column: 2)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 803, column: 2)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 801, column: 7)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 800, column: 9)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 799, column: 3)
!3681 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 799, column: 3)
!3682 = !DILocalVariable(name: "last", scope: !3675, file: !3, line: 806, type: !7)
!3683 = !DILocalVariable(name: "dregno", scope: !3675, file: !3, line: 807, type: !7)
!3684 = !DILocalVariable(name: "start", scope: !3675, file: !3, line: 808, type: !7)
!3685 = !DILocalVariable(name: "len", scope: !3675, file: !3, line: 809, type: !7)
!3686 = !DILocalVariable(name: "sb", scope: !3675, file: !3, line: 811, type: !7)
!3687 = !DILocalVariable(name: "lb", scope: !3675, file: !3, line: 812, type: !7)
!3688 = !DILabel(scope: !3678, name: "quickexit", file: !3, line: 838)
!3689 = !DILocation(line: 0, scope: !3654)
!3690 = !DILocation(line: 771, column: 23, scope: !3654)
!3691 = !DILocation(line: 776, column: 7, scope: !3667)
!3692 = !DILocation(line: 776, column: 7, scope: !3654)
!3693 = !DILocation(line: 781, column: 7, scope: !3666)
!3694 = !DILocation(line: 782, column: 7, scope: !3666)
!3695 = !DILocation(line: 783, column: 44, scope: !3666)
!3696 = !DILocation(line: 783, column: 56, scope: !3666)
!3697 = !DILocation(line: 783, column: 65, scope: !3666)
!3698 = !DILocation(line: 0, scope: !3666)
!3699 = !DILocation(line: 784, column: 21, scope: !3666)
!3700 = !DILocation(line: 784, column: 7, scope: !3666)
!3701 = !DILocation(line: 785, column: 7, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 785, column: 7)
!3703 = !DILocation(line: 0, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 785, column: 7)
!3705 = !DILocation(line: 785, column: 7, scope: !3704)
!3706 = !DILocation(line: 786, column: 16, scope: !3704)
!3707 = !DILocation(line: 786, column: 2, scope: !3704)
!3708 = distinct !{!3708, !3701, !3709}
!3709 = !DILocation(line: 786, column: 17, scope: !3702)
!3710 = !DILocation(line: 787, column: 5, scope: !3667)
!3711 = !DILocation(line: 787, column: 5, scope: !3666)
!3712 = !DILocation(line: 789, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 789, column: 7)
!3714 = !DILocation(line: 789, column: 7, scope: !3654)
!3715 = !DILocation(line: 791, column: 66, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 790, column: 5)
!3717 = !DILocation(line: 791, column: 7, scope: !3716)
!3718 = !DILocation(line: 792, column: 29, scope: !3716)
!3719 = !DILocation(line: 792, column: 40, scope: !3716)
!3720 = !DILocation(line: 792, column: 7, scope: !3716)
!3721 = !DILocation(line: 793, column: 5, scope: !3716)
!3722 = !DILocation(line: 795, column: 28, scope: !3654)
!3723 = !DILocation(line: 795, column: 3, scope: !3654)
!3724 = !DILocation(line: 797, column: 3, scope: !3654)
!3725 = !DILocation(line: 799, column: 3, scope: !3681)
!3726 = !DILocation(line: 0, scope: !3675)
!3727 = !DILocation(line: 0, scope: !3681)
!3728 = !DILocation(line: 799, column: 3, scope: !3680)
!3729 = !DILocation(line: 800, column: 9, scope: !3679)
!3730 = !DILocation(line: 800, column: 9, scope: !3680)
!3731 = !DILocation(line: 803, column: 17, scope: !3677)
!3732 = !DILocation(line: 803, column: 7, scope: !3677)
!3733 = !DILocation(line: 0, scope: !3677)
!3734 = !DILocation(line: 803, column: 38, scope: !3676)
!3735 = !DILocation(line: 803, column: 2, scope: !3677)
!3736 = !DILocation(line: 807, column: 28, scope: !3675)
!3737 = !DILocation(line: 808, column: 27, scope: !3675)
!3738 = !DILocation(line: 809, column: 25, scope: !3675)
!3739 = !DILocation(line: 811, column: 6, scope: !3675)
!3740 = !DILocation(line: 812, column: 6, scope: !3675)
!3741 = !DILocation(line: 817, column: 11, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 817, column: 10)
!3743 = !DILocation(line: 817, column: 10, scope: !3675)
!3744 = !DILocation(line: 819, column: 12, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 818, column: 8)
!3746 = !DILocation(line: 819, column: 9, scope: !3745)
!3747 = !DILocation(line: 820, column: 9, scope: !3745)
!3748 = !DILocation(line: 820, column: 12, scope: !3745)
!3749 = !DILocation(line: 821, column: 8, scope: !3745)
!3750 = !DILocation(line: 823, column: 10, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 823, column: 10)
!3752 = !DILocation(line: 823, column: 10, scope: !3675)
!3753 = !DILocation(line: 825, column: 3, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 824, column: 8)
!3755 = !DILocation(line: 826, column: 3, scope: !3754)
!3756 = !DILocation(line: 829, column: 19, scope: !3675)
!3757 = !DILocation(line: 830, column: 6, scope: !3675)
!3758 = !DILocation(line: 830, column: 19, scope: !3675)
!3759 = !DILocation(line: 831, column: 43, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 831, column: 12)
!3761 = !DILocation(line: 831, column: 12, scope: !3760)
!3762 = !DILocation(line: 831, column: 12, scope: !3675)
!3763 = distinct !{!3763, !3757, !3764}
!3764 = !DILocation(line: 835, column: 3, scope: !3675)
!3765 = !DILocation(line: 833, column: 5, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 832, column: 3)
!3767 = !DILocation(line: 834, column: 5, scope: !3766)
!3768 = !DILocation(line: 836, column: 4, scope: !3676)
!3769 = !DILocation(line: 803, column: 55, scope: !3676)
!3770 = !DILocation(line: 803, column: 2, scope: !3676)
!3771 = distinct !{!3771, !3735, !3772}
!3772 = !DILocation(line: 836, column: 4, scope: !3677)
!3773 = !DILocation(line: 838, column: 7, scope: !3678)
!3774 = !DILocation(line: 842, column: 2, scope: !3678)
!3775 = !DILocation(line: 846, column: 6, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 846, column: 6)
!3777 = !DILocation(line: 846, column: 6, scope: !3678)
!3778 = !DILocation(line: 847, column: 4, scope: !3776)
!3779 = !DILocation(line: 849, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 849, column: 6)
!3781 = !DILocation(line: 849, column: 6, scope: !3678)
!3782 = !DILocation(line: 852, column: 8, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 850, column: 4)
!3784 = !DILocation(line: 851, column: 6, scope: !3783)
!3785 = !DILocation(line: 853, column: 28, scope: !3783)
!3786 = !DILocation(line: 853, column: 6, scope: !3783)
!3787 = !DILocation(line: 854, column: 4, scope: !3783)
!3788 = distinct !{!3788, !3725, !3789}
!3789 = !DILocation(line: 855, column: 7, scope: !3681)
!3790 = !DILocation(line: 857, column: 3, scope: !3654)
!3791 = !DILocation(line: 859, column: 48, scope: !3654)
!3792 = !DILocation(line: 859, column: 20, scope: !3654)
!3793 = !DILocation(line: 859, column: 19, scope: !3654)
!3794 = !DILocation(line: 860, column: 7, scope: !3654)
!3795 = !DILocation(line: 861, column: 18, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 860, column: 7)
!3797 = !DILocation(line: 861, column: 5, scope: !3796)
!3798 = !DILocation(line: 862, column: 3, scope: !3654)
!3799 = !DILocation(line: 863, column: 3, scope: !3654)
!3800 = !DILocation(line: 864, column: 1, scope: !3654)
!3801 = distinct !DISubprogram(name: "bb_has_eh_pred", scope: !325, file: !325, line: 973, type: !3802, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!712, !1277}
!3804 = !{!3805, !3806, !3807}
!3805 = !DILocalVariable(name: "bb", arg: 1, scope: !3801, file: !325, line: 973, type: !1277)
!3806 = !DILocalVariable(name: "e", scope: !3801, file: !325, line: 975, type: !1294)
!3807 = !DILocalVariable(name: "ei", scope: !3801, file: !325, line: 976, type: !3536)
!3808 = !DILocation(line: 0, scope: !3801)
!3809 = !DILocation(line: 975, column: 3, scope: !3801)
!3810 = !DILocation(line: 976, column: 3, scope: !3801)
!3811 = !DILocation(line: 978, column: 3, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3801, file: !325, line: 978, column: 3)
!3813 = !DILocation(line: 0, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3812, file: !325, line: 978, column: 3)
!3815 = !DILocation(line: 978, column: 3, scope: !3814)
!3816 = !DILocation(line: 980, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !325, line: 980, column: 11)
!3818 = distinct !DILexicalBlock(scope: !3814, file: !325, line: 979, column: 5)
!3819 = !DILocation(line: 980, column: 14, scope: !3817)
!3820 = !DILocation(line: 980, column: 20, scope: !3817)
!3821 = !DILocation(line: 980, column: 11, scope: !3818)
!3822 = distinct !{!3822, !3811, !3823}
!3823 = !DILocation(line: 982, column: 5, scope: !3812)
!3824 = !DILocation(line: 984, column: 1, scope: !3801)
!3825 = distinct !DISubprogram(name: "dce_process_block", scope: !3, file: !3, line: 873, type: !3655, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3837, !3838, !3839}
!3827 = !DILocalVariable(name: "bb", arg: 1, scope: !3825, file: !3, line: 873, type: !1277)
!3828 = !DILocalVariable(name: "redo_out", arg: 2, scope: !3825, file: !3, line: 873, type: !712)
!3829 = !DILocalVariable(name: "au", arg: 3, scope: !3825, file: !3, line: 873, type: !720)
!3830 = !DILocalVariable(name: "local_live", scope: !3825, file: !3, line: 875, type: !720)
!3831 = !DILocalVariable(name: "insn", scope: !3825, file: !3, line: 876, type: !784)
!3832 = !DILocalVariable(name: "block_changed", scope: !3825, file: !3, line: 877, type: !712)
!3833 = !DILocalVariable(name: "def_rec", scope: !3825, file: !3, line: 878, type: !1889)
!3834 = !DILocalVariable(name: "e", scope: !3835, file: !3, line: 885, type: !1294)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 881, column: 5)
!3836 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 880, column: 7)
!3837 = !DILocalVariable(name: "ei", scope: !3835, file: !3, line: 886, type: !3536)
!3838 = !DILocalVariable(name: "con_fun_n", scope: !3835, file: !3, line: 887, type: !3670)
!3839 = !DILocalVariable(name: "needed", scope: !3840, file: !3, line: 906, type: !712)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 905, column: 7)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 904, column: 9)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 903, column: 3)
!3843 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 903, column: 3)
!3844 = !DILocation(line: 0, scope: !3825)
!3845 = !DILocation(line: 875, column: 23, scope: !3825)
!3846 = !DILocation(line: 880, column: 7, scope: !3836)
!3847 = !DILocation(line: 880, column: 7, scope: !3825)
!3848 = !DILocation(line: 885, column: 7, scope: !3835)
!3849 = !DILocation(line: 886, column: 7, scope: !3835)
!3850 = !DILocation(line: 887, column: 44, scope: !3835)
!3851 = !DILocation(line: 887, column: 51, scope: !3835)
!3852 = !DILocation(line: 887, column: 60, scope: !3835)
!3853 = !DILocation(line: 0, scope: !3835)
!3854 = !DILocation(line: 888, column: 21, scope: !3835)
!3855 = !DILocation(line: 888, column: 7, scope: !3835)
!3856 = !DILocation(line: 889, column: 7, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 889, column: 7)
!3858 = !DILocation(line: 0, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 889, column: 7)
!3860 = !DILocation(line: 889, column: 7, scope: !3859)
!3861 = !DILocation(line: 890, column: 16, scope: !3859)
!3862 = !DILocation(line: 890, column: 2, scope: !3859)
!3863 = distinct !{!3863, !3856, !3864}
!3864 = !DILocation(line: 890, column: 17, scope: !3857)
!3865 = !DILocation(line: 891, column: 5, scope: !3836)
!3866 = !DILocation(line: 891, column: 5, scope: !3835)
!3867 = !DILocation(line: 893, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 893, column: 7)
!3869 = !DILocation(line: 893, column: 7, scope: !3825)
!3870 = !DILocation(line: 895, column: 64, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 894, column: 5)
!3872 = !DILocation(line: 895, column: 7, scope: !3871)
!3873 = !DILocation(line: 896, column: 24, scope: !3871)
!3874 = !DILocation(line: 896, column: 35, scope: !3871)
!3875 = !DILocation(line: 896, column: 7, scope: !3871)
!3876 = !DILocation(line: 897, column: 5, scope: !3871)
!3877 = !DILocation(line: 899, column: 28, scope: !3825)
!3878 = !DILocation(line: 899, column: 3, scope: !3825)
!3879 = !DILocation(line: 901, column: 3, scope: !3825)
!3880 = !DILocation(line: 903, column: 3, scope: !3843)
!3881 = !DILocation(line: 0, scope: !3843)
!3882 = !DILocation(line: 903, column: 3, scope: !3842)
!3883 = !DILocation(line: 904, column: 9, scope: !3841)
!3884 = !DILocation(line: 904, column: 9, scope: !3842)
!3885 = !DILocation(line: 0, scope: !3840)
!3886 = !DILocation(line: 909, column: 17, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 909, column: 2)
!3888 = !DILocation(line: 909, column: 7, scope: !3887)
!3889 = !DILocation(line: 0, scope: !3887)
!3890 = !DILocation(line: 909, column: 38, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 909, column: 2)
!3892 = !DILocation(line: 909, column: 2, scope: !3887)
!3893 = !DILocation(line: 910, column: 34, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 910, column: 8)
!3895 = !DILocation(line: 910, column: 8, scope: !3894)
!3896 = !DILocation(line: 911, column: 8, scope: !3894)
!3897 = !DILocation(line: 911, column: 29, scope: !3894)
!3898 = !DILocation(line: 911, column: 11, scope: !3894)
!3899 = !DILocation(line: 910, column: 8, scope: !3891)
!3900 = !DILocation(line: 909, column: 55, scope: !3891)
!3901 = !DILocation(line: 909, column: 2, scope: !3891)
!3902 = distinct !{!3902, !3892, !3903}
!3903 = !DILocation(line: 915, column: 6, scope: !3887)
!3904 = !DILocation(line: 917, column: 6, scope: !3840)
!3905 = !DILocation(line: 918, column: 4, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 917, column: 6)
!3907 = !DILocation(line: 922, column: 2, scope: !3840)
!3908 = !DILocation(line: 926, column: 6, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 926, column: 6)
!3910 = !DILocation(line: 926, column: 6, scope: !3840)
!3911 = !DILocation(line: 927, column: 4, scope: !3909)
!3912 = distinct !{!3912, !3880, !3913}
!3913 = !DILocation(line: 928, column: 7, scope: !3843)
!3914 = !DILocation(line: 930, column: 3, scope: !3825)
!3915 = !DILocation(line: 932, column: 48, scope: !3825)
!3916 = !DILocation(line: 932, column: 20, scope: !3825)
!3917 = !DILocation(line: 932, column: 19, scope: !3825)
!3918 = !DILocation(line: 933, column: 7, scope: !3825)
!3919 = !DILocation(line: 934, column: 18, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 933, column: 7)
!3921 = !DILocation(line: 934, column: 5, scope: !3920)
!3922 = !DILocation(line: 936, column: 3, scope: !3825)
!3923 = !DILocation(line: 937, column: 3, scope: !3825)
!3924 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !3925, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!3536, !3541}
!3927 = !{!3928, !3929}
!3928 = !DILocalVariable(name: "ev", arg: 1, scope: !3924, file: !325, line: 696, type: !3541)
!3929 = !DILocalVariable(name: "i", scope: !3924, file: !325, line: 698, type: !3536)
!3930 = !DILocation(line: 0, scope: !3924)
!3931 = !DILocation(line: 700, column: 5, scope: !3924)
!3932 = !DILocation(line: 700, column: 11, scope: !3924)
!3933 = !DILocation(line: 701, column: 5, scope: !3924)
!3934 = !DILocation(line: 701, column: 15, scope: !3924)
!3935 = !DILocation(line: 703, column: 3, scope: !3924)
!3936 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !3937, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3940)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!712, !3536, !3939}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "ei", arg: 1, scope: !3936, file: !325, line: 771, type: !3536)
!3942 = !DILocalVariable(name: "p", arg: 2, scope: !3936, file: !325, line: 771, type: !3939)
!3943 = !DILocation(line: 0, scope: !3936)
!3944 = !DILocation(line: 773, column: 8, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3936, file: !325, line: 773, column: 7)
!3946 = !DILocation(line: 773, column: 7, scope: !3936)
!3947 = !DILocation(line: 775, column: 12, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3945, file: !325, line: 774, column: 5)
!3949 = !DILocation(line: 776, column: 7, scope: !3948)
!3950 = !DILocation(line: 781, column: 7, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3945, file: !325, line: 779, column: 5)
!3952 = !DILocation(line: 0, scope: !3945)
!3953 = !DILocation(line: 783, column: 1, scope: !3936)
!3954 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !3955, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{null, !3957}
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "i", arg: 1, scope: !3954, file: !325, line: 736, type: !3957)
!3960 = !DILocation(line: 0, scope: !3954)
!3961 = !DILocation(line: 738, column: 3, scope: !3954)
!3962 = !DILocation(line: 739, column: 11, scope: !3954)
!3963 = !DILocation(line: 740, column: 1, scope: !3954)
!3964 = distinct !DISubprogram(name: "df_byte_lr_get_bb_info", scope: !1886, file: !1886, line: 1079, type: !3965, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3967)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!1951, !7}
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "index", arg: 1, scope: !3964, file: !1886, line: 1079, type: !7)
!3969 = !DILocation(line: 0, scope: !3964)
!3970 = !DILocation(line: 1081, column: 15, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3964, file: !1886, line: 1081, column: 7)
!3972 = !DILocation(line: 1081, column: 27, scope: !3971)
!3973 = !DILocation(line: 1081, column: 13, scope: !3971)
!3974 = !DILocation(line: 1081, column: 7, scope: !3964)
!3975 = !DILocation(line: 1082, column: 54, scope: !3971)
!3976 = !DILocation(line: 1082, column: 42, scope: !3971)
!3977 = !DILocation(line: 1082, column: 5, scope: !3971)
!3978 = !DILocation(line: 0, scope: !3971)
!3979 = !DILocation(line: 1085, column: 1, scope: !3964)
!3980 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !1886, file: !1886, line: 1052, type: !3981, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!1958, !7}
!3983 = !{!3984}
!3984 = !DILocalVariable(name: "index", arg: 1, scope: !3980, file: !1886, line: 1052, type: !7)
!3985 = !DILocation(line: 0, scope: !3980)
!3986 = !DILocation(line: 1054, column: 15, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3980, file: !1886, line: 1054, column: 7)
!3988 = !DILocation(line: 1054, column: 22, scope: !3987)
!3989 = !DILocation(line: 1054, column: 13, scope: !3987)
!3990 = !DILocation(line: 1054, column: 7, scope: !3980)
!3991 = !DILocation(line: 1055, column: 44, scope: !3987)
!3992 = !DILocation(line: 1055, column: 37, scope: !3987)
!3993 = !DILocation(line: 1055, column: 5, scope: !3987)
!3994 = !DILocation(line: 0, scope: !3987)
!3995 = !DILocation(line: 1058, column: 1, scope: !3980)
!3996 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !3997, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!712, !3536}
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "i", arg: 1, scope: !3996, file: !325, line: 721, type: !3536)
!4001 = !DILocation(line: 723, column: 22, scope: !3996)
!4002 = !DILocation(line: 723, column: 19, scope: !3996)
!4003 = !DILocation(line: 723, column: 10, scope: !3996)
!4004 = !DILocation(line: 723, column: 3, scope: !3996)
!4005 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !4006, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!1294, !3536}
!4008 = !{!4009}
!4009 = !DILocalVariable(name: "i", arg: 1, scope: !4005, file: !325, line: 752, type: !3536)
!4010 = !DILocation(line: 754, column: 10, scope: !4005)
!4011 = !DILocation(line: 754, column: 3, scope: !4005)
!4012 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !4013, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4017)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!7, !4015}
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!4017 = !{!4018}
!4018 = !DILocalVariable(name: "vec_", arg: 1, scope: !4012, file: !325, line: 150, type: !4015)
!4019 = !DILocation(line: 0, scope: !4012)
!4020 = !DILocation(line: 150, column: 1, scope: !4012)
!4021 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !4022, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!1282, !3536}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "i", arg: 1, scope: !4021, file: !325, line: 685, type: !3536)
!4026 = !DILocation(line: 687, column: 3, scope: !4021)
!4027 = !DILocation(line: 688, column: 10, scope: !4021)
!4028 = !DILocation(line: 688, column: 3, scope: !4021)
!4029 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !4030, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!1294, !4015, !7}
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "vec_", arg: 1, scope: !4029, file: !325, line: 150, type: !4015)
!4034 = !DILocalVariable(name: "ix_", arg: 2, scope: !4029, file: !325, line: 150, type: !7)
!4035 = !DILocation(line: 0, scope: !4029)
!4036 = !DILocation(line: 150, column: 1, scope: !4029)
