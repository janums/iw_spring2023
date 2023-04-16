; ModuleID = 'store-motion.bc'
source_filename = "store-motion.c"
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
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.st_expr = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.st_expr*, i32, i32, %struct.rtx_def* }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"store_motion\00", align 1
@pass_rtl_store_motion = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_rtl_store_motion, i32 ()* @execute_rtl_store_motion, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 133, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_gcse_sm = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@flag_rerun_cse_after_global_opts = external dso_local local_unnamed_addr global i32, align 4
@num_stores = internal unnamed_addr global i32 0, align 4, !dbg !1913
@store_motion_mems_table = internal unnamed_addr global %struct.htab* null, align 8, !dbg !1915
@st_transp = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1917
@st_avloc = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1930
@st_antloc = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1932
@st_kill = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1934
@st_insert_map = internal global %struct.simple_bitmap_def** null, align 8, !dbg !1936
@st_delete_map = internal global %struct.simple_bitmap_def** null, align 8, !dbg !1938
@edge_list = internal unnamed_addr global %struct.edge_list* null, align 8, !dbg !1940
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Can't replace store %d: abnormal edge from %d to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"STORE_MOTION of %s, %d basic blocks, \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d insns deleted, %d insns created\0A\00", align 1
@store_motion_mems = internal unnamed_addr global %struct.st_expr* null, align 8, !dbg !1911
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@.str.4 = private unnamed_addr constant [44 x i8] c"STORE_MOTION list of MEM exprs considered:\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0A\09 ANTIC stores : \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0A\09 AVAIL stores : \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Removing redundant store:\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"st_antloc\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"st_kill\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"st_transp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"st_avloc\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"STORE_MOTION  delete insn in BB %d:\0A      \00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\0ASTORE_MOTION  replaced with insn:\0A      \00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  drop REG_EQUAL note at insn %d:\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"store-motion.c\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"STORE_MOTION  insert insn on edge (%d, %d):\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"STORE_MOTION  insert store at start of BB %d:\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1979 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1992, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1993, metadata !DIExpression()), !dbg !1994
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1995
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1996
  ret i32 %call, !dbg !1997
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1998 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2002
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2003
  ret i32 %call, !dbg !2004
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2060, metadata !DIExpression()), !dbg !2061
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2062
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2062
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2062
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2062
  %cmp = icmp uge i8* %0, %1, !dbg !2062
  %conv1 = zext i1 %cmp to i64, !dbg !2062
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2062
  %tobool = icmp eq i64 %expval, 0, !dbg !2062
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2062

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2062
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2062
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2062
  %2 = load i8, i8* %0, align 1, !dbg !2062
  %conv3 = zext i8 %2 to i32, !dbg !2062
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2062
  ret i32 %cond, !dbg !2063
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2066, metadata !DIExpression()), !dbg !2067
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2068
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2068
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2068
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2068
  %cmp = icmp uge i8* %0, %1, !dbg !2068
  %conv1 = zext i1 %cmp to i64, !dbg !2068
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2068
  %tobool = icmp eq i64 %expval, 0, !dbg !2068
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2068

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2068
  br label %cond.end, !dbg !2068

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2068
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2068
  %2 = load i8, i8* %0, align 1, !dbg !2068
  %conv3 = zext i8 %2 to i32, !dbg !2068
  br label %cond.end, !dbg !2068

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2068
  ret i32 %cond, !dbg !2069
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2070 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2071
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2071
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2071
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2071
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2071
  %cmp = icmp uge i8* %1, %2, !dbg !2071
  %conv1 = zext i1 %cmp to i64, !dbg !2071
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2071
  %tobool = icmp eq i64 %expval, 0, !dbg !2071
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2071

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2071
  br label %cond.end, !dbg !2071

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2071
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2071
  %3 = load i8, i8* %1, align 1, !dbg !2071
  %conv3 = zext i8 %3 to i32, !dbg !2071
  br label %cond.end, !dbg !2071

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2071
  ret i32 %cond, !dbg !2072
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2073 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2077, metadata !DIExpression()), !dbg !2078
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2079
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2080
  ret i32 %call, !dbg !2081
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2087, metadata !DIExpression()), !dbg !2088
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2089
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2089
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2089
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2089
  %cmp = icmp uge i8* %0, %1, !dbg !2089
  %conv1 = zext i1 %cmp to i64, !dbg !2089
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2089
  %tobool = icmp eq i64 %expval, 0, !dbg !2089
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2089

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2089
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2089
  br label %cond.end, !dbg !2089

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2089
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2089
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2089
  store i8 %conv2, i8* %0, align 1, !dbg !2089
  %conv6 = and i32 %__c, 255, !dbg !2089
  br label %cond.end, !dbg !2089

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2089
  ret i32 %cond, !dbg !2090
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2091 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2094, metadata !DIExpression()), !dbg !2095
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2096
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2096
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2096
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2096
  %cmp = icmp uge i8* %0, %1, !dbg !2096
  %conv1 = zext i1 %cmp to i64, !dbg !2096
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2096
  %tobool = icmp eq i64 %expval, 0, !dbg !2096
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2096

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2096
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2096
  br label %cond.end, !dbg !2096

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2096
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2096
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2096
  store i8 %conv2, i8* %0, align 1, !dbg !2096
  %conv6 = and i32 %__c, 255, !dbg !2096
  br label %cond.end, !dbg !2096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2096
  ret i32 %cond, !dbg !2097
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2100, metadata !DIExpression()), !dbg !2101
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2102
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2102
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2102
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2102
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2102
  %cmp = icmp uge i8* %1, %2, !dbg !2102
  %conv1 = zext i1 %cmp to i64, !dbg !2102
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2102
  %tobool = icmp eq i64 %expval, 0, !dbg !2102
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2102

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2102
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2102
  br label %cond.end, !dbg !2102

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2102
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2102
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2102
  store i8 %conv4, i8* %1, align 1, !dbg !2102
  %conv6 = and i32 %__c, 255, !dbg !2102
  br label %cond.end, !dbg !2102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2102
  ret i32 %cond, !dbg !2103
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2112, metadata !DIExpression()), !dbg !2113
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2114
  ret i64 %call, !dbg !2115
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2118, metadata !DIExpression()), !dbg !2119
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2120
  %0 = load i32, i32* %_flags, align 8, !dbg !2120
  %and = lshr i32 %0, 4, !dbg !2120
  %and.lobit = and i32 %and, 1, !dbg !2120
  ret i32 %and.lobit, !dbg !2121
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2124, metadata !DIExpression()), !dbg !2125
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2126
  %0 = load i32, i32* %_flags, align 8, !dbg !2126
  %and = lshr i32 %0, 5, !dbg !2126
  %and.lobit = and i32 %and, 1, !dbg !2126
  ret i32 %and.lobit, !dbg !2127
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2128 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2131, metadata !DIExpression()), !dbg !2132
  %__c.off = add i32 %__c, 128, !dbg !2133
  %0 = icmp ult i32 %__c.off, 384, !dbg !2133
  br i1 %0, label %cond.true, label %cond.end, !dbg !2133

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2134
  %1 = load i32*, i32** %call, align 8, !dbg !2135
  %idxprom = sext i32 %__c to i64, !dbg !2136
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2136
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2136
  br label %cond.end, !dbg !2137

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2137
  ret i32 %cond, !dbg !2138
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2141, metadata !DIExpression()), !dbg !2142
  %__c.off = add i32 %__c, 128, !dbg !2143
  %0 = icmp ult i32 %__c.off, 384, !dbg !2143
  br i1 %0, label %cond.true, label %cond.end, !dbg !2143

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2144
  %1 = load i32*, i32** %call, align 8, !dbg !2145
  %idxprom = sext i32 %__c to i64, !dbg !2146
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2146
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2146
  br label %cond.end, !dbg !2147

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2147
  ret i32 %cond, !dbg !2148
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2149 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2154, metadata !DIExpression()), !dbg !2155
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2156
  %conv = trunc i64 %call to i32, !dbg !2157
  ret i32 %conv, !dbg !2158
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2163, metadata !DIExpression()), !dbg !2164
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2165
  ret i64 %call, !dbg !2166
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2167 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2174
  ret i64 %call, !dbg !2175
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2182, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2183, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2184, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2185, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2186, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2188, metadata !DIExpression()), !dbg !2192
  br label %while.cond, !dbg !2193

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2194
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2188, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2187, metadata !DIExpression()), !dbg !2192
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2195
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2193

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2196
  %div = lshr i64 %add, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %div, metadata !2189, metadata !DIExpression()), !dbg !2192
  %mul = mul i64 %div, %__size, !dbg !2199
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2190, metadata !DIExpression()), !dbg !2192
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %call, metadata !2191, metadata !DIExpression()), !dbg !2192
  %cmp1 = icmp slt i32 %call, 0, !dbg !2202
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2204

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2205
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2207

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2187, metadata !DIExpression()), !dbg !2192
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2192
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2188, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2187, metadata !DIExpression()), !dbg !2192
  br label %while.cond, !dbg !2193, !llvm.loop !2209

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2192
  ret i8* %retval.0, !dbg !2211
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2220
  ret double %call, !dbg !2221
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i32 %base, metadata !2233, metadata !DIExpression()), !dbg !2234
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2235
  ret i64 %call, !dbg !2236
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %base, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2247
  ret i64 %call, !dbg !2248
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2249 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %base, metadata !2262, metadata !DIExpression()), !dbg !2263
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2264
  ret i64 %call, !dbg !2265
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2266 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 %base, metadata !2272, metadata !DIExpression()), !dbg !2273
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2274
  ret i64 %call, !dbg !2275
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2276 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2317, metadata !DIExpression()), !dbg !2318
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2319
  ret i32 %call, !dbg !2320
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2324, metadata !DIExpression()), !dbg !2325
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2326
  ret i32 %call, !dbg !2327
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2328 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2335
  ret i32 %call, !dbg !2336
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2344, metadata !DIExpression()), !dbg !2345
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2346
  ret i32 %call, !dbg !2347
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2348 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2354, metadata !DIExpression()), !dbg !2355
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2354, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2356
  ret i32 %call, !dbg !2357
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2358 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2365, metadata !DIExpression()), !dbg !2366
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2365, metadata !DIExpression(DW_OP_deref)), !dbg !2366
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2367
  ret i32 %call, !dbg !2368
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2369 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2396
  ret i32 %call, !dbg !2397
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2401, metadata !DIExpression()), !dbg !2402
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2410, metadata !DIExpression()), !dbg !2411
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2412
  ret i32 %call, !dbg !2413
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2421, metadata !DIExpression()), !dbg !2422
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2423
  ret i32 %call, !dbg !2424
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_store_motion() #4 !dbg !2425 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2426
  %cmp = icmp sgt i32 %0, 0, !dbg !2427
  %1 = load i32, i32* @flag_gcse_sm, align 4, !dbg !2428
  %tobool = icmp ne i32 %1, 0, !dbg !2428
  %or.cond = and i1 %cmp, %tobool, !dbg !2429
  br i1 %or.cond, label %land.lhs.true1, label %land.end, !dbg !2429

land.lhs.true1:                                   ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2430
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 20, !dbg !2431
  %bf.load = load i32, i32* %calls_setjmp, align 8, !dbg !2431
  %bf.clear = and i32 %bf.load, 262144, !dbg !2431
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !2430
  br i1 %tobool2, label %land.lhs.true3, label %land.end, !dbg !2432

land.lhs.true3:                                   ; preds = %land.lhs.true1
  %call = tail call zeroext i8 @optimize_function_for_speed_p(%struct.function* %2) #6, !dbg !2433
  %tobool5 = icmp eq i8 %call, 0, !dbg !2433
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !2434

land.rhs:                                         ; preds = %land.lhs.true3
  %call6 = tail call zeroext i8 @dbg_cnt(i32 35) #6, !dbg !2435
  %tobool8 = icmp ne i8 %call6, 0, !dbg !2434
  %phitmp = zext i1 %tobool8 to i8
  br label %land.end

land.end:                                         ; preds = %land.lhs.true3, %land.lhs.true1, %land.rhs, %entry
  %3 = phi i8 [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true1 ], [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %3, !dbg !2436
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_rtl_store_motion() #4 !dbg !2437 {
entry:
  %call = tail call zeroext i8 @delete_unreachable_blocks() #6, !dbg !2438
  tail call void @df_analyze() #6, !dbg !2439
  %call1 = tail call fastcc i32 @one_store_motion_pass() #7, !dbg !2440
  %0 = load i32, i32* @flag_rerun_cse_after_global_opts, align 4, !dbg !2441
  %or = or i32 %0, %call1, !dbg !2441
  store i32 %or, i32* @flag_rerun_cse_after_global_opts, align 4, !dbg !2441
  ret i32 0, !dbg !2442
}

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #1

declare dso_local zeroext i8 @dbg_cnt(i32) local_unnamed_addr #1

declare dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #1

declare dso_local void @df_analyze() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @one_store_motion_pass() unnamed_addr #4 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2451
  tail call void @init_alias_analysis() #6, !dbg !2452
  %call = tail call fastcc i32 @compute_store_table() #7, !dbg !2453
  store i32 %call, i32* @num_stores, align 4, !dbg !2454
  %cmp = icmp eq i32 %call, 0, !dbg !2455
  br i1 %cmp, label %if.then, label %if.end, !dbg !2457

if.then:                                          ; preds = %entry
  %0 = load %struct.htab*, %struct.htab** @store_motion_mems_table, align 8, !dbg !2458
  tail call void @htab_delete(%struct.htab* %0) #6, !dbg !2460
  store %struct.htab* null, %struct.htab** @store_motion_mems_table, align 8, !dbg !2461
  tail call void @end_alias_analysis() #6, !dbg !2462
  br label %cleanup, !dbg !2463

if.end:                                           ; preds = %entry
  tail call fastcc void @build_store_vectors() #7, !dbg !2464
  tail call void @add_noreturn_fake_exit_edges() #6, !dbg !2465
  tail call void @connect_infinite_loops_to_exit() #6, !dbg !2466
  %1 = load i32, i32* @num_stores, align 4, !dbg !2467
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !2468
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !2469
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !2470
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !2471
  %call1 = tail call %struct.edge_list* @pre_edge_rev_lcm(i32 %1, %struct.simple_bitmap_def** %2, %struct.simple_bitmap_def** %3, %struct.simple_bitmap_def** %4, %struct.simple_bitmap_def** %5, %struct.simple_bitmap_def*** nonnull @st_insert_map, %struct.simple_bitmap_def*** nonnull @st_delete_map) #6, !dbg !2472
  store %struct.edge_list* %call1, %struct.edge_list** @edge_list, align 8, !dbg !2473
  %call2 = tail call fastcc %struct.st_expr* @first_st_expr() #7, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.st_expr* %call2, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %for.cond, !dbg !2476

for.cond:                                         ; preds = %for.inc83, %if.end
  %n_stores_created.0 = phi i32 [ 0, %if.end ], [ %n_stores_created.3, %for.inc83 ], !dbg !2477
  %n_stores_deleted.0 = phi i32 [ 0, %if.end ], [ %n_stores_deleted.3, %for.inc83 ], !dbg !2478
  %did_edge_inserts.0 = phi i32 [ 0, %if.end ], [ %did_edge_inserts.3, %for.inc83 ], !dbg !2479
  %ptr.0 = phi %struct.st_expr* [ %call2, %if.end ], [ %call84, %for.inc83 ], !dbg !2480
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.0, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.0, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.0, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.0, metadata !2450, metadata !DIExpression()), !dbg !2451
  %cmp3 = icmp eq %struct.st_expr* %ptr.0, null, !dbg !2481
  br i1 %cmp3, label %for.end85, label %for.body, !dbg !2483

for.body:                                         ; preds = %for.cond
  %6 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8, !dbg !2484
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %6, i64 0, i32 1, !dbg !2484
  %7 = load i32, i32* %num_edges, align 4, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %7, metadata !2446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2451
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !2487
  %index = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 5, !dbg !2487
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %6, i64 0, i32 2, !dbg !2487
  %9 = sext i32 %7 to i64, !dbg !2490
  br label %for.cond4, !dbg !2490

for.cond4:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %9, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 undef, metadata !2446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2451
  %cmp5 = icmp sgt i64 %indvars.iv, 0, !dbg !2492
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !2493

for.body6:                                        ; preds = %for.cond4
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %8, i64 %indvars.iv.next, !dbg !2494
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !2494
  %11 = load i32, i32* %index, align 8, !dbg !2494
  %div = lshr i32 %11, 6, !dbg !2494
  %idxprom7 = zext i32 %div to i64, !dbg !2494
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i64 0, i32 3, i64 %idxprom7, !dbg !2494
  %12 = load i64, i64* %arrayidx8, align 8, !dbg !2494
  %rem = and i32 %11, 63, !dbg !2494
  %sh_prom = zext i32 %rem to i64, !dbg !2494
  %13 = shl i64 1, %sh_prom, !dbg !2494
  %14 = and i64 %12, %13, !dbg !2494
  %tobool = icmp eq i64 %14, 0, !dbg !2494
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !2495

land.lhs.true:                                    ; preds = %for.body6
  %15 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2496
  %arrayidx11 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %15, i64 %indvars.iv.next, !dbg !2496
  %16 = load %struct.edge_def*, %struct.edge_def** %arrayidx11, align 8, !dbg !2496
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 7, !dbg !2497
  %17 = load i32, i32* %flags, align 8, !dbg !2497
  %and12 = and i32 %17, 2, !dbg !2498
  %tobool13 = icmp eq i32 %and12, 0, !dbg !2498
  br i1 %tobool13, label %for.inc, label %for.end, !dbg !2499

for.inc:                                          ; preds = %land.lhs.true, %for.body6
  call void @llvm.dbg.value(metadata i32 undef, metadata !2446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2451
  br label %for.cond4, !dbg !2500, !llvm.loop !2501

for.end:                                          ; preds = %land.lhs.true, %for.cond4
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %land.lhs.true ], [ %indvars.iv.next, %for.cond4 ], !dbg !2491
  %cmp5.lcssa = phi i1 [ %cmp5, %land.lhs.true ], [ %cmp5, %for.cond4 ], !dbg !2492
  br i1 %cmp5.lcssa, label %if.then17, label %if.end31, !dbg !2503

if.then17:                                        ; preds = %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2504
  %cmp18 = icmp eq %struct._IO_FILE* %18, null, !dbg !2508
  br i1 %cmp18, label %for.inc83, label %if.then19, !dbg !2509

if.then19:                                        ; preds = %if.then17
  %19 = load i32, i32* %index, align 8, !dbg !2510
  %20 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2511
  %sext = shl i64 %indvars.iv.next.lcssa, 32, !dbg !2511
  %idxprom22 = ashr exact i64 %sext, 32, !dbg !2511
  %arrayidx23 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %20, i64 %idxprom22, !dbg !2511
  %21 = load %struct.edge_def*, %struct.edge_def** %arrayidx23, align 8, !dbg !2511
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 0, !dbg !2512
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2512
  %index24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 9, !dbg !2513
  %23 = load i32, i32* %index24, align 8, !dbg !2513
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 1, !dbg !2514
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2514
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 9, !dbg !2515
  %25 = load i32, i32* %index28, align 8, !dbg !2515
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %23, i32 %25) #6, !dbg !2516
  br label %for.inc83, !dbg !2516

if.end31:                                         ; preds = %for.end
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2517
  %cfg = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 1, !dbg !2517
  %27 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2517
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %27, i64 0, i32 0, !dbg !2517
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2517
  br label %for.cond32, !dbg !2517

for.cond32:                                       ; preds = %for.inc53, %if.end31
  %.pre2 = phi %struct.function* [ %26, %if.end31 ], [ %.pre, %for.inc53 ]
  %29 = phi %struct.control_flow_graph* [ %27, %if.end31 ], [ %.pre1, %for.inc53 ], !dbg !2519
  %n_stores_deleted.1 = phi i32 [ %n_stores_deleted.0, %if.end31 ], [ %n_stores_deleted.2, %for.inc53 ], !dbg !2451
  %.pn = phi %struct.basic_block_def* [ %28, %if.end31 ], [ %bb.0, %for.inc53 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2521
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2445, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.1, metadata !2449, metadata !DIExpression()), !dbg !2451
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 1, !dbg !2519
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2519
  %cmp35 = icmp eq %struct.basic_block_def* %bb.0, %30, !dbg !2519
  br i1 %cmp35, label %for.cond56.preheader, label %for.body36, !dbg !2517

for.cond56.preheader:                             ; preds = %for.cond32
  %n_stores_deleted.1.lcssa = phi i32 [ %n_stores_deleted.1, %for.cond32 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.1.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  br label %for.cond56, !dbg !2522

for.body36:                                       ; preds = %for.cond32
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_delete_map, align 8, !dbg !2524
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2524
  %32 = load i32, i32* %index37, align 8, !dbg !2524
  %idxprom38 = sext i32 %32 to i64, !dbg !2524
  %arrayidx39 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %31, i64 %idxprom38, !dbg !2524
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx39, align 8, !dbg !2524
  %34 = load i32, i32* %index, align 8, !dbg !2524
  %div42 = lshr i32 %34, 6, !dbg !2524
  %idxprom43 = zext i32 %div42 to i64, !dbg !2524
  %arrayidx44 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %33, i64 0, i32 3, i64 %idxprom43, !dbg !2524
  %35 = load i64, i64* %arrayidx44, align 8, !dbg !2524
  %rem46 = and i32 %34, 63, !dbg !2524
  %sh_prom47 = zext i32 %rem46 to i64, !dbg !2524
  %36 = shl i64 1, %sh_prom47, !dbg !2524
  %37 = and i64 %35, %36, !dbg !2524
  %tobool50 = icmp eq i64 %37, 0, !dbg !2524
  br i1 %tobool50, label %for.inc53, label %if.then51, !dbg !2526

if.then51:                                        ; preds = %for.body36
  tail call fastcc void @delete_store(%struct.st_expr* nonnull %ptr.0, %struct.basic_block_def* %bb.0) #7, !dbg !2527
  %inc = add nsw i32 %n_stores_deleted.1, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2449, metadata !DIExpression()), !dbg !2451
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2519
  br label %for.inc53, !dbg !2530

for.inc53:                                        ; preds = %for.body36, %if.then51
  %.pre = phi %struct.function* [ %.pre.pre, %if.then51 ], [ %.pre2, %for.body36 ], !dbg !2519
  %n_stores_deleted.2 = phi i32 [ %inc, %if.then51 ], [ %n_stores_deleted.1, %for.body36 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.2, metadata !2449, metadata !DIExpression()), !dbg !2451
  %cfg34.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2531
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34.phi.trans.insert, align 8, !dbg !2519
  br label %for.cond32, !dbg !2519, !llvm.loop !2532

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc80
  %indvars.iv4 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next5, %for.inc80 ], !dbg !2451
  %n_stores_created.1 = phi i32 [ %n_stores_created.0, %for.cond56.preheader ], [ %n_stores_created.2, %for.inc80 ], !dbg !2451
  %did_edge_inserts.1 = phi i32 [ %did_edge_inserts.0, %for.cond56.preheader ], [ %did_edge_inserts.2, %for.inc80 ], !dbg !2451
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !2446, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.1, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.1, metadata !2450, metadata !DIExpression()), !dbg !2451
  %38 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8, !dbg !2534
  %num_edges57 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %38, i64 0, i32 1, !dbg !2534
  %39 = load i32, i32* %num_edges57, align 4, !dbg !2534
  %40 = sext i32 %39 to i64, !dbg !2536
  %cmp58 = icmp slt i64 %indvars.iv4, %40, !dbg !2536
  br i1 %cmp58, label %for.body59, label %for.inc83.loopexit, !dbg !2522

for.body59:                                       ; preds = %for.cond56
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !2537
  %arrayidx61 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %41, i64 %indvars.iv4, !dbg !2537
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx61, align 8, !dbg !2537
  %43 = load i32, i32* %index, align 8, !dbg !2537
  %div64 = lshr i32 %43, 6, !dbg !2537
  %idxprom65 = zext i32 %div64 to i64, !dbg !2537
  %arrayidx66 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %42, i64 0, i32 3, i64 %idxprom65, !dbg !2537
  %44 = load i64, i64* %arrayidx66, align 8, !dbg !2537
  %rem68 = and i32 %43, 63, !dbg !2537
  %sh_prom69 = zext i32 %rem68 to i64, !dbg !2537
  %45 = shl i64 1, %sh_prom69, !dbg !2537
  %46 = and i64 %44, %45, !dbg !2537
  %tobool72 = icmp eq i64 %46, 0, !dbg !2537
  br i1 %tobool72, label %for.inc80, label %if.then73, !dbg !2539

if.then73:                                        ; preds = %for.body59
  %index_to_edge74 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %38, i64 0, i32 2, !dbg !2540
  %47 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge74, align 8, !dbg !2540
  %arrayidx76 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %47, i64 %indvars.iv4, !dbg !2540
  %48 = load %struct.edge_def*, %struct.edge_def** %arrayidx76, align 8, !dbg !2540
  %call77 = tail call fastcc i32 @insert_store(%struct.st_expr* nonnull %ptr.0, %struct.edge_def* %48) #7, !dbg !2542
  %or = or i32 %did_edge_inserts.1, %call77, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %or, metadata !2448, metadata !DIExpression()), !dbg !2451
  %inc78 = add nsw i32 %n_stores_created.1, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %inc78, metadata !2450, metadata !DIExpression()), !dbg !2451
  br label %for.inc80, !dbg !2545

for.inc80:                                        ; preds = %for.body59, %if.then73
  %n_stores_created.2 = phi i32 [ %inc78, %if.then73 ], [ %n_stores_created.1, %for.body59 ], !dbg !2451
  %did_edge_inserts.2 = phi i32 [ %or, %if.then73 ], [ %did_edge_inserts.1, %for.body59 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.2, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.2, metadata !2450, metadata !DIExpression()), !dbg !2451
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !2546
  call void @llvm.dbg.value(metadata i32 undef, metadata !2446, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2451
  br label %for.cond56, !dbg !2547, !llvm.loop !2548

for.inc83.loopexit:                               ; preds = %for.cond56
  %n_stores_created.1.lcssa = phi i32 [ %n_stores_created.1, %for.cond56 ], !dbg !2451
  %did_edge_inserts.1.lcssa = phi i32 [ %did_edge_inserts.1, %for.cond56 ], !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.1.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.1.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.1.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.1.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.1.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.1.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  br label %for.inc83, !dbg !2550

for.inc83:                                        ; preds = %for.inc83.loopexit, %if.then17, %if.then19
  %n_stores_created.3 = phi i32 [ %n_stores_created.0, %if.then19 ], [ %n_stores_created.0, %if.then17 ], [ %n_stores_created.1.lcssa, %for.inc83.loopexit ], !dbg !2477
  %n_stores_deleted.3 = phi i32 [ %n_stores_deleted.0, %if.then19 ], [ %n_stores_deleted.0, %if.then17 ], [ %n_stores_deleted.1.lcssa, %for.inc83.loopexit ], !dbg !2478
  %did_edge_inserts.3 = phi i32 [ %did_edge_inserts.0, %if.then19 ], [ %did_edge_inserts.0, %if.then17 ], [ %did_edge_inserts.1.lcssa, %for.inc83.loopexit ], !dbg !2479
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.3, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.3, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.3, metadata !2450, metadata !DIExpression()), !dbg !2451
  %call84 = tail call fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* nonnull %ptr.0) #7, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.st_expr* %call84, metadata !2447, metadata !DIExpression()), !dbg !2451
  br label %for.cond, !dbg !2551, !llvm.loop !2552

for.end85:                                        ; preds = %for.cond
  %n_stores_created.0.lcssa = phi i32 [ %n_stores_created.0, %for.cond ], !dbg !2477
  %n_stores_deleted.0.lcssa = phi i32 [ %n_stores_deleted.0, %for.cond ], !dbg !2478
  %did_edge_inserts.0.lcssa = phi i32 [ %did_edge_inserts.0, %for.cond ], !dbg !2479
  call void @llvm.dbg.value(metadata i32 %n_stores_created.0.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.0.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.0.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.0.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_created.0.lcssa, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %n_stores_deleted.0.lcssa, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %did_edge_inserts.0.lcssa, metadata !2448, metadata !DIExpression()), !dbg !2451
  %tobool86 = icmp eq i32 %did_edge_inserts.0.lcssa, 0, !dbg !2554
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !2556

if.then87:                                        ; preds = %for.end85
  tail call void @commit_edge_insertions() #6, !dbg !2557
  br label %if.end88, !dbg !2557

if.end88:                                         ; preds = %for.end85, %if.then87
  tail call fastcc void @free_store_memory() #7, !dbg !2558
  %49 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8, !dbg !2559
  tail call void @free_edge_list(%struct.edge_list* %49) #6, !dbg !2560
  tail call void @remove_fake_exit_edges() #6, !dbg !2561
  tail call void @end_alias_analysis() #6, !dbg !2562
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2563
  %tobool89 = icmp eq %struct._IO_FILE* %50, null, !dbg !2563
  br i1 %tobool89, label %if.end96, label %if.then90, !dbg !2565

if.then90:                                        ; preds = %if.end88
  %call91 = tail call i8* @current_function_name() #6, !dbg !2566
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2568
  %cfg93 = getelementptr inbounds %struct.function, %struct.function* %51, i64 0, i32 1, !dbg !2568
  %52 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg93, align 8, !dbg !2568
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 3, !dbg !2568
  %53 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2568
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %call91, i32 %53) #6, !dbg !2569
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2570
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %n_stores_deleted.0.lcssa, i32 %n_stores_created.0.lcssa) #6, !dbg !2571
  br label %if.end96, !dbg !2572

if.end96:                                         ; preds = %if.end88, %if.then90
  %cmp97 = icmp sgt i32 %n_stores_deleted.0.lcssa, 0, !dbg !2573
  %cmp98 = icmp sgt i32 %n_stores_created.0.lcssa, 0, !dbg !2574
  %spec.select = or i1 %cmp97, %cmp98, !dbg !2575
  %lor.ext = zext i1 %spec.select to i32, !dbg !2575
  br label %cleanup, !dbg !2576

cleanup:                                          ; preds = %if.end96, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %lor.ext, %if.end96 ], !dbg !2451
  ret i32 %retval.0, !dbg !2577
}

declare dso_local void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_store_table() unnamed_addr #4 !dbg !2578 {
entry:
  %call = tail call i32 @max_reg_num() #6, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %call, metadata !2651, metadata !DIExpression()), !dbg !2653
  store %struct.st_expr* null, %struct.st_expr** @store_motion_mems, align 8, !dbg !2654
  %call1 = tail call %struct.htab* @htab_create(i64 13, i32 (i8*)* nonnull @pre_st_expr_hash, i32 (i8*, i8*)* nonnull @pre_st_expr_eq, void (i8*)* null) #6, !dbg !2655
  store %struct.htab* %call1, %struct.htab** @store_motion_mems_table, align 8, !dbg !2656
  %conv = zext i32 %call to i64, !dbg !2657
  %call2 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2657
  %0 = bitcast i8* %call2 to i32*, !dbg !2657
  call void @llvm.dbg.value(metadata i32* %0, metadata !2646, metadata !DIExpression()), !dbg !2653
  %mul = shl nuw nsw i64 %conv, 2, !dbg !2658
  %call4 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2658
  %1 = bitcast i8* %call4 to i32*, !dbg !2658
  call void @llvm.dbg.value(metadata i32* %1, metadata !2647, metadata !DIExpression()), !dbg !2653
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2659
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2659
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2659
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2659
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2659
  br label %for.cond, !dbg !2659

for.cond:                                         ; preds = %for.inc182, %entry
  %5 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc182 ], !dbg !2661
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc182 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2663
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2581, metadata !DIExpression()), !dbg !2653
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2661
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2661
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2661
  br i1 %cmp, label %for.end184, label %for.body, !dbg !2659

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2664
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2664
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2664
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 0, !dbg !2664
  br label %for.cond8, !dbg !2664

for.cond8:                                        ; preds = %for.inc47, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx51, %for.inc47 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2582, metadata !DIExpression()), !dbg !2653
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2668
  br i1 %tobool, label %for.end52, label %land.rhs, !dbg !2668

land.rhs:                                         ; preds = %for.cond8
  %8 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2668
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %8, i64 0, i32 1, !dbg !2668
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2668
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2668
  %rt_rtx = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !2668
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2668
  %cmp11 = icmp eq %struct.rtx_def* %insn.0, %11, !dbg !2668
  br i1 %cmp11, label %for.end52, label %for.body13, !dbg !2664

for.body13:                                       ; preds = %land.rhs
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2670
  %bf.load = load i32, i32* %12, align 8, !dbg !2670
  %bf.clear = and i32 %bf.load, 65535, !dbg !2670
  %cmp14 = icmp eq i32 %bf.clear, 8, !dbg !2670
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false, !dbg !2670

lor.lhs.false:                                    ; preds = %for.body13
  %cmp18 = icmp eq i32 %bf.clear, 7, !dbg !2670
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false20, !dbg !2670

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %cmp23 = icmp eq i32 %bf.clear, 9, !dbg !2670
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false25, !dbg !2670

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %cmp28 = icmp eq i32 %bf.clear, 10, !dbg !2670
  br i1 %cmp28, label %land.lhs.true, label %for.inc47, !dbg !2670

land.lhs.true:                                    ; preds = %lor.lhs.false25, %lor.lhs.false20, %lor.lhs.false, %for.body13
  %cmp32 = icmp eq i32 %bf.clear, 7, !dbg !2670
  br i1 %cmp32, label %for.inc47, label %if.end, !dbg !2673

if.end:                                           ; preds = %land.lhs.true
  %13 = load %struct.df*, %struct.df** @df, align 8, !dbg !2674
  %insns = getelementptr inbounds %struct.df, %struct.df* %13, i64 0, i32 10, !dbg !2674
  %14 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2674
  %arrayidx36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2674
  %rt_int = bitcast %union.rtunion_def* %arrayidx36 to i32*, !dbg !2674
  %15 = load i32, i32* %rt_int, align 8, !dbg !2674
  %idxprom = sext i32 %15 to i64, !dbg !2674
  %arrayidx37 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %14, i64 %idxprom, !dbg !2674
  %16 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx37, align 8, !dbg !2674
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %16, i64 0, i32 1, !dbg !2674
  %17 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata %union.df_ref_d** %17, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond38, !dbg !2676

for.cond38:                                       ; preds = %for.body40, %if.end
  %def_rec.0 = phi %union.df_ref_d** [ %17, %if.end ], [ %incdec.ptr, %for.body40 ], !dbg !2677
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2584, metadata !DIExpression()), !dbg !2653
  %18 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2678
  %tobool39 = icmp eq %union.df_ref_d* %18, null, !dbg !2680
  br i1 %tobool39, label %for.inc47.loopexit, label %for.body40, !dbg !2680

for.body40:                                       ; preds = %for.cond38
  %19 = load i32, i32* %rt_int, align 8, !dbg !2681
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %18, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2682
  %20 = load i32, i32* %regno, align 8, !dbg !2682
  %idxprom45 = zext i32 %20 to i64, !dbg !2683
  %arrayidx46 = getelementptr inbounds i32, i32* %0, i64 %idxprom45, !dbg !2683
  store i32 %19, i32* %arrayidx46, align 4, !dbg !2684
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2685
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond38, !dbg !2686, !llvm.loop !2687

for.inc47.loopexit:                               ; preds = %for.cond38
  br label %for.inc47, !dbg !2668

for.inc47:                                        ; preds = %for.inc47.loopexit, %lor.lhs.false25, %land.lhs.true
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2668
  %rt_rtx51 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !2668
  br label %for.cond8, !dbg !2668, !llvm.loop !2689

for.end52:                                        ; preds = %land.rhs, %for.cond8
  %call55 = tail call i8* @memset(i8* %call4, i32 0, i64 %mul) #6, !dbg !2691
  %22 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2692
  %head_58 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %22, i64 0, i32 0, !dbg !2692
  br label %for.cond59, !dbg !2692

for.cond59:                                       ; preds = %for.inc151, %for.end52
  %insn.1.in = phi %struct.rtx_def** [ %head_58, %for.end52 ], [ %rt_rtx155, %for.inc151 ]
  %insn.1 = load %struct.rtx_def*, %struct.rtx_def** %insn.1.in, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2582, metadata !DIExpression()), !dbg !2653
  %tobool60 = icmp eq %struct.rtx_def* %insn.1, null, !dbg !2695
  br i1 %tobool60, label %for.end156, label %land.rhs61, !dbg !2695

land.rhs61:                                       ; preds = %for.cond59
  %23 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2695
  %end_64 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %23, i64 0, i32 1, !dbg !2695
  %24 = load %struct.rtx_def*, %struct.rtx_def** %end_64, align 8, !dbg !2695
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2695
  %rt_rtx68 = bitcast %union.rtunion_def* %25 to %struct.rtx_def**, !dbg !2695
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx68, align 8, !dbg !2695
  %cmp69 = icmp eq %struct.rtx_def* %insn.1, %26, !dbg !2695
  br i1 %cmp69, label %for.end156, label %for.body72, !dbg !2692

for.body72:                                       ; preds = %land.rhs61
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2697
  %bf.load73 = load i32, i32* %27, align 8, !dbg !2697
  %bf.clear74 = and i32 %bf.load73, 65535, !dbg !2697
  %cmp75 = icmp eq i32 %bf.clear74, 8, !dbg !2697
  br i1 %cmp75, label %land.lhs.true92, label %lor.lhs.false77, !dbg !2697

lor.lhs.false77:                                  ; preds = %for.body72
  %cmp80 = icmp eq i32 %bf.clear74, 7, !dbg !2697
  br i1 %cmp80, label %land.lhs.true92, label %lor.lhs.false82, !dbg !2697

lor.lhs.false82:                                  ; preds = %lor.lhs.false77
  %cmp85 = icmp eq i32 %bf.clear74, 9, !dbg !2697
  br i1 %cmp85, label %land.lhs.true92, label %lor.lhs.false87, !dbg !2697

lor.lhs.false87:                                  ; preds = %lor.lhs.false82
  %cmp90 = icmp eq i32 %bf.clear74, 10, !dbg !2697
  br i1 %cmp90, label %land.lhs.true92, label %for.inc151, !dbg !2697

land.lhs.true92:                                  ; preds = %lor.lhs.false87, %lor.lhs.false82, %lor.lhs.false77, %for.body72
  %cmp95 = icmp eq i32 %bf.clear74, 7, !dbg !2697
  br i1 %cmp95, label %for.inc151, label %if.end98, !dbg !2700

if.end98:                                         ; preds = %land.lhs.true92
  %28 = load %struct.df*, %struct.df** @df, align 8, !dbg !2701
  %insns99 = getelementptr inbounds %struct.df, %struct.df* %28, i64 0, i32 10, !dbg !2701
  %29 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns99, align 8, !dbg !2701
  %arrayidx102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2701
  %rt_int103 = bitcast %union.rtunion_def* %arrayidx102 to i32*, !dbg !2701
  %30 = load i32, i32* %rt_int103, align 8, !dbg !2701
  %idxprom104 = sext i32 %30 to i64, !dbg !2701
  %arrayidx105 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %29, i64 %idxprom104, !dbg !2701
  %31 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx105, align 8, !dbg !2701
  %defs106 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %31, i64 0, i32 1, !dbg !2701
  %32 = load %union.df_ref_d**, %union.df_ref_d*** %defs106, align 8, !dbg !2701
  call void @llvm.dbg.value(metadata %union.df_ref_d** %32, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond107, !dbg !2703

for.cond107:                                      ; preds = %for.body109, %if.end98
  %def_rec.1 = phi %union.df_ref_d** [ %32, %if.end98 ], [ %incdec.ptr119, %for.body109 ], !dbg !2704
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.1, metadata !2584, metadata !DIExpression()), !dbg !2653
  %33 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.1, align 8, !dbg !2705
  %tobool108 = icmp eq %union.df_ref_d* %33, null, !dbg !2707
  br i1 %tobool108, label %for.end120, label %for.body109, !dbg !2707

for.body109:                                      ; preds = %for.cond107
  %34 = load i32, i32* %rt_int103, align 8, !dbg !2708
  %regno115 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %33, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2709
  %35 = load i32, i32* %regno115, align 8, !dbg !2709
  %idxprom116 = zext i32 %35 to i64, !dbg !2710
  %arrayidx117 = getelementptr inbounds i32, i32* %1, i64 %idxprom116, !dbg !2710
  store i32 %34, i32* %arrayidx117, align 4, !dbg !2711
  %incdec.ptr119 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.1, i64 1, !dbg !2712
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr119, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond107, !dbg !2713, !llvm.loop !2714

for.end120:                                       ; preds = %for.cond107
  tail call fastcc void @find_moveable_store(%struct.rtx_def* nonnull %insn.1, i32* %1, i32* %0) #7, !dbg !2716
  %36 = load %struct.df*, %struct.df** @df, align 8, !dbg !2717
  %insns121 = getelementptr inbounds %struct.df, %struct.df* %36, i64 0, i32 10, !dbg !2717
  %37 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns121, align 8, !dbg !2717
  %38 = load i32, i32* %rt_int103, align 8, !dbg !2717
  %idxprom126 = sext i32 %38 to i64, !dbg !2717
  %arrayidx127 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %37, i64 %idxprom126, !dbg !2717
  %39 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx127, align 8, !dbg !2717
  %defs128 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %39, i64 0, i32 1, !dbg !2717
  %40 = load %union.df_ref_d**, %union.df_ref_d*** %defs128, align 8, !dbg !2717
  call void @llvm.dbg.value(metadata %union.df_ref_d** %40, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond129, !dbg !2719

for.cond129:                                      ; preds = %for.inc148, %for.end120
  %def_rec.2 = phi %union.df_ref_d** [ %40, %for.end120 ], [ %incdec.ptr149, %for.inc148 ], !dbg !2720
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.2, metadata !2584, metadata !DIExpression()), !dbg !2653
  %41 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.2, align 8, !dbg !2721
  %tobool130 = icmp eq %union.df_ref_d* %41, null, !dbg !2723
  br i1 %tobool130, label %for.inc151.loopexit, label %for.body131, !dbg !2723

for.body131:                                      ; preds = %for.cond129
  %regno133 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %41, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2724
  %42 = load i32, i32* %regno133, align 8, !dbg !2724
  %idxprom134 = zext i32 %42 to i64, !dbg !2726
  %arrayidx135 = getelementptr inbounds i32, i32* %0, i64 %idxprom134, !dbg !2726
  %43 = load i32, i32* %arrayidx135, align 4, !dbg !2726
  %44 = load i32, i32* %rt_int103, align 8, !dbg !2727
  %cmp140 = icmp eq i32 %43, %44, !dbg !2728
  br i1 %cmp140, label %if.then142, label %for.inc148, !dbg !2729

if.then142:                                       ; preds = %for.body131
  store i32 0, i32* %arrayidx135, align 4, !dbg !2730
  br label %for.inc148, !dbg !2731

for.inc148:                                       ; preds = %for.body131, %if.then142
  %incdec.ptr149 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.2, i64 1, !dbg !2732
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr149, metadata !2584, metadata !DIExpression()), !dbg !2653
  br label %for.cond129, !dbg !2733, !llvm.loop !2734

for.inc151.loopexit:                              ; preds = %for.cond129
  br label %for.inc151, !dbg !2695

for.inc151:                                       ; preds = %for.inc151.loopexit, %lor.lhs.false87, %land.lhs.true92
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2695
  %rt_rtx155 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**, !dbg !2695
  br label %for.cond59, !dbg !2695, !llvm.loop !2736

for.end156:                                       ; preds = %land.rhs61, %for.cond59
  %call157 = tail call fastcc %struct.st_expr* @first_st_expr() #7, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.st_expr* %call157, metadata !2648, metadata !DIExpression()), !dbg !2653
  br label %for.cond158, !dbg !2740

for.cond158:                                      ; preds = %for.inc179, %for.end156
  %ptr.0 = phi %struct.st_expr* [ %call157, %for.end156 ], [ %call180, %for.inc179 ], !dbg !2741
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.0, metadata !2648, metadata !DIExpression()), !dbg !2653
  %cmp159 = icmp eq %struct.st_expr* %ptr.0, null, !dbg !2742
  br i1 %cmp159, label %for.inc182, label %for.body161, !dbg !2744

for.body161:                                      ; preds = %for.cond158
  %reaching_reg = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 7, !dbg !2745
  store %struct.rtx_def* null, %struct.rtx_def** %reaching_reg, align 8, !dbg !2747
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 2, !dbg !2748
  %46 = load %struct.rtx_def*, %struct.rtx_def** %antic_stores, align 8, !dbg !2748
  %tobool162 = icmp eq %struct.rtx_def* %46, null, !dbg !2750
  br i1 %tobool162, label %for.inc179, label %land.lhs.true163, !dbg !2751

land.lhs.true163:                                 ; preds = %for.body161
  %arrayidx167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2752
  %rt_rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**, !dbg !2752
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx168, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.rtx_def* %47, metadata !2583, metadata !DIExpression()), !dbg !2653
  %cmp169 = icmp eq %struct.rtx_def* %47, null, !dbg !2753
  br i1 %cmp169, label %if.then171, label %for.inc179, !dbg !2754

if.then171:                                       ; preds = %land.lhs.true163
  %48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2755
  %49 = bitcast %union.rtunion_def* %48 to i64*, !dbg !2755
  %50 = load i64, i64* %49, align 8, !dbg !2755
  %51 = bitcast %struct.rtx_def** %antic_stores to i64*, !dbg !2756
  store i64 %50, i64* %51, align 8, !dbg !2756
  br label %for.inc179, !dbg !2757

for.inc179:                                       ; preds = %for.body161, %land.lhs.true163, %if.then171
  %call180 = tail call fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* nonnull %ptr.0) #7, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.st_expr* %call180, metadata !2648, metadata !DIExpression()), !dbg !2653
  br label %for.cond158, !dbg !2759, !llvm.loop !2760

for.inc182:                                       ; preds = %for.cond158
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2661
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2762
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2661
  br label %for.cond, !dbg !2661, !llvm.loop !2763

for.end184:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.st_expr** @store_motion_mems, metadata !2649, metadata !DIExpression()), !dbg !2653
  br label %for.cond185, !dbg !2765

for.cond185:                                      ; preds = %for.inc193, %for.end184
  %ptr.1.in = phi %struct.st_expr** [ @store_motion_mems, %for.end184 ], [ %prev_next_ptr_ptr.1, %for.inc193 ]
  %prev_next_ptr_ptr.0 = phi %struct.st_expr** [ @store_motion_mems, %for.end184 ], [ %prev_next_ptr_ptr.1, %for.inc193 ], !dbg !2767
  %ptr.1 = load %struct.st_expr*, %struct.st_expr** %ptr.1.in, align 8, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.st_expr** %prev_next_ptr_ptr.0, metadata !2649, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.1, metadata !2648, metadata !DIExpression()), !dbg !2653
  %cmp186 = icmp eq %struct.st_expr* %ptr.1, null, !dbg !2768
  br i1 %cmp186, label %for.end194, label %for.body188, !dbg !2770

for.body188:                                      ; preds = %for.cond185
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 3, !dbg !2771
  %52 = load %struct.rtx_def*, %struct.rtx_def** %avail_stores, align 8, !dbg !2771
  %tobool189 = icmp eq %struct.rtx_def* %52, null, !dbg !2774
  %next191 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 4, !dbg !2775
  br i1 %tobool189, label %if.then190, label %for.inc193, !dbg !2776

if.then190:                                       ; preds = %for.body188
  %53 = bitcast %struct.st_expr** %next191 to i64*, !dbg !2777
  %54 = load i64, i64* %53, align 8, !dbg !2777
  %55 = bitcast %struct.st_expr** %prev_next_ptr_ptr.0 to i64*, !dbg !2779
  store i64 %54, i64* %55, align 8, !dbg !2779
  %56 = load %struct.htab*, %struct.htab** @store_motion_mems_table, align 8, !dbg !2780
  %57 = bitcast %struct.st_expr* %ptr.1 to i8*, !dbg !2781
  %hash_index = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 6, !dbg !2782
  %58 = load i32, i32* %hash_index, align 4, !dbg !2782
  tail call void @htab_remove_elt_with_hash(%struct.htab* %56, i8* nonnull %57, i32 %58) #6, !dbg !2783
  tail call fastcc void @free_st_expr_entry(%struct.st_expr* nonnull %ptr.1) #7, !dbg !2784
  br label %for.inc193, !dbg !2785

for.inc193:                                       ; preds = %for.body188, %if.then190
  %prev_next_ptr_ptr.1 = phi %struct.st_expr** [ %prev_next_ptr_ptr.0, %if.then190 ], [ %next191, %for.body188 ], !dbg !2767
  call void @llvm.dbg.value(metadata %struct.st_expr** %prev_next_ptr_ptr.1, metadata !2649, metadata !DIExpression()), !dbg !2653
  br label %for.cond185, !dbg !2786, !llvm.loop !2787

for.end194:                                       ; preds = %for.cond185
  %call195 = tail call fastcc i32 @enumerate_store_motion_mems() #7, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %call195, metadata !2580, metadata !DIExpression()), !dbg !2653
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2790
  %tobool196 = icmp eq %struct._IO_FILE* %59, null, !dbg !2790
  br i1 %tobool196, label %if.end198, label %if.then197, !dbg !2792

if.then197:                                       ; preds = %for.end194
  tail call fastcc void @print_store_motion_mems(%struct._IO_FILE* nonnull %59) #7, !dbg !2793
  br label %if.end198, !dbg !2793

if.end198:                                        ; preds = %for.end194, %if.then197
  tail call void @free(i8* %call2) #6, !dbg !2794
  tail call void @free(i8* %call4) #6, !dbg !2795
  ret i32 %call195, !dbg !2796
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

declare dso_local void @end_alias_analysis() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @build_store_vectors() unnamed_addr #4 !dbg !2797 {
entry:
  %call = tail call i32 @max_reg_num() #6, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %call, metadata !2806, metadata !DIExpression()), !dbg !2829
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2830
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2830
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2830
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !2830
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !2830
  %3 = load i32, i32* @num_stores, align 4, !dbg !2831
  %call1 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3) #6, !dbg !2832
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !2833
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2834
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2834
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !2834
  %x_last_basic_block4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2834
  %6 = load i32, i32* %x_last_basic_block4, align 8, !dbg !2834
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call1, i32 %6) #6, !dbg !2835
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2836
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2836
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !2836
  %x_last_basic_block7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 5, !dbg !2836
  %9 = load i32, i32* %x_last_basic_block7, align 8, !dbg !2836
  %10 = load i32, i32* @num_stores, align 4, !dbg !2837
  %call8 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %9, i32 %10) #6, !dbg !2838
  store %struct.simple_bitmap_def** %call8, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !2839
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2840
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !2840
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2840
  %x_last_basic_block11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 5, !dbg !2840
  %13 = load i32, i32* %x_last_basic_block11, align 8, !dbg !2840
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call8, i32 %13) #6, !dbg !2841
  %call12 = tail call fastcc %struct.st_expr* @first_st_expr() #7, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.st_expr* %call12, metadata !2805, metadata !DIExpression()), !dbg !2829
  br label %for.cond, !dbg !2843

for.cond:                                         ; preds = %for.inc62, %entry
  %ptr.0 = phi %struct.st_expr* [ %call12, %entry ], [ %call63, %for.inc62 ], !dbg !2844
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.0, metadata !2805, metadata !DIExpression()), !dbg !2829
  %cmp = icmp eq %struct.st_expr* %ptr.0, null, !dbg !2845
  br i1 %cmp, label %for.end64, label %for.body, !dbg !2846

for.body:                                         ; preds = %for.cond
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 3, !dbg !2847
  %index20 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 5, !dbg !2848
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 0, !dbg !2849
  br label %for.cond13, !dbg !2850

for.cond13:                                       ; preds = %for.inc, %for.body
  %st.0.in = phi %struct.rtx_def** [ %avail_stores, %for.body ], [ %rt_rtx40, %for.inc ]
  %st.0 = load %struct.rtx_def*, %struct.rtx_def** %st.0.in, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.rtx_def* %st.0, metadata !2804, metadata !DIExpression()), !dbg !2829
  %cmp14 = icmp eq %struct.rtx_def* %st.0, null, !dbg !2852
  br i1 %cmp14, label %for.end, label %for.body15, !dbg !2853

for.body15:                                       ; preds = %for.cond13
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %st.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2854
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2854
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !2803, metadata !DIExpression()), !dbg !2829
  %arrayidx18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 1, !dbg !2855
  %rt_bb = bitcast %struct.object_block** %arrayidx18 to %struct.basic_block_def**, !dbg !2855
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %15, metadata !2801, metadata !DIExpression()), !dbg !2829
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !2856
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !2856
  %17 = load i32, i32* %index, align 8, !dbg !2856
  %idxprom = sext i32 %17 to i64, !dbg !2856
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %16, i64 %idxprom, !dbg !2856
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx19, align 8, !dbg !2856
  %19 = load i32, i32* %index20, align 8, !dbg !2856
  %div = lshr i32 %19, 6, !dbg !2856
  %idxprom21 = zext i32 %div to i64, !dbg !2856
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %18, i64 0, i32 3, i64 %idxprom21, !dbg !2856
  %20 = load i64, i64* %arrayidx22, align 8, !dbg !2856
  %rem = and i32 %19, 63, !dbg !2856
  %sh_prom = zext i32 %rem to i64, !dbg !2856
  %21 = shl i64 1, %sh_prom, !dbg !2856
  %22 = and i64 %20, %21, !dbg !2856
  %tobool = icmp eq i64 %22, 0, !dbg !2856
  br i1 %tobool, label %if.end32, label %if.then, !dbg !2857

if.then:                                          ; preds = %for.body15
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !2858
  %call24 = tail call %struct.rtx_def* @gen_reg_rtx_and_attrs(%struct.rtx_def* %23) #6, !dbg !2859
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call24, metadata !2807, metadata !DIExpression()), !dbg !2849
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2860
  %tobool25 = icmp eq %struct._IO_FILE* %24, null, !dbg !2860
  br i1 %tobool25, label %if.end, label %if.then26, !dbg !2862

if.then26:                                        ; preds = %if.then
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2863
  br label %if.end, !dbg !2863

if.end:                                           ; preds = %if.then, %if.then26
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2864
  tail call fastcc void @replace_store_insn(%struct.rtx_def* %call24, %struct.rtx_def* %25, %struct.basic_block_def* %15, %struct.st_expr* nonnull %ptr.0) #7, !dbg !2865
  br label %for.inc

if.end32:                                         ; preds = %for.body15
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %18, i32 %19) #7, !dbg !2866
  br label %for.inc, !dbg !2867

for.inc:                                          ; preds = %if.end32, %if.end
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %st.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2868
  %rt_rtx40 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !2868
  br label %for.cond13, !dbg !2869, !llvm.loop !2870

for.end:                                          ; preds = %for.cond13
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 2, !dbg !2872
  br label %for.cond41, !dbg !2874

for.cond41:                                       ; preds = %for.body43, %for.end
  %st.1.in = phi %struct.rtx_def** [ %antic_stores, %for.end ], [ %rt_rtx60, %for.body43 ]
  %st.1 = load %struct.rtx_def*, %struct.rtx_def** %st.1.in, align 8, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.rtx_def* %st.1, metadata !2804, metadata !DIExpression()), !dbg !2829
  %cmp42 = icmp eq %struct.rtx_def* %st.1, null, !dbg !2876
  br i1 %cmp42, label %for.inc62, label %for.body43, !dbg !2878

for.body43:                                       ; preds = %for.cond41
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %st.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2879
  %rt_rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**, !dbg !2879
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx47, align 8, !dbg !2879
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !2803, metadata !DIExpression()), !dbg !2829
  %arrayidx50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i64 0, i32 1, i32 0, i32 1, !dbg !2881
  %rt_bb51 = bitcast %struct.object_block** %arrayidx50 to %struct.basic_block_def**, !dbg !2881
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb51, align 8, !dbg !2881
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %28, metadata !2801, metadata !DIExpression()), !dbg !2829
  %29 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !2882
  %index52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 9, !dbg !2883
  %30 = load i32, i32* %index52, align 8, !dbg !2883
  %idxprom53 = sext i32 %30 to i64, !dbg !2882
  %arrayidx54 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %29, i64 %idxprom53, !dbg !2882
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx54, align 8, !dbg !2882
  %32 = load i32, i32* %index20, align 8, !dbg !2884
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %31, i32 %32) #7, !dbg !2885
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %st.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2886
  %rt_rtx60 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**, !dbg !2886
  br label %for.cond41, !dbg !2887, !llvm.loop !2888

for.inc62:                                        ; preds = %for.cond41
  %call63 = tail call fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* nonnull %ptr.0) #7, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.st_expr* %call63, metadata !2805, metadata !DIExpression()), !dbg !2829
  br label %for.cond, !dbg !2891, !llvm.loop !2892

for.end64:                                        ; preds = %for.cond
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2894
  %cfg66 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 1, !dbg !2894
  %35 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg66, align 8, !dbg !2894
  %x_last_basic_block67 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 5, !dbg !2894
  %36 = load i32, i32* %x_last_basic_block67, align 8, !dbg !2894
  %37 = load i32, i32* @num_stores, align 4, !dbg !2895
  %call68 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %36, i32 %37) #6, !dbg !2896
  store %struct.simple_bitmap_def** %call68, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !2897
  %38 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2898
  %cfg70 = getelementptr inbounds %struct.function, %struct.function* %38, i64 0, i32 1, !dbg !2898
  %39 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg70, align 8, !dbg !2898
  %x_last_basic_block71 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %39, i64 0, i32 5, !dbg !2898
  %40 = load i32, i32* %x_last_basic_block71, align 8, !dbg !2898
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call68, i32 %40) #6, !dbg !2899
  %41 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2900
  %cfg73 = getelementptr inbounds %struct.function, %struct.function* %41, i64 0, i32 1, !dbg !2900
  %42 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg73, align 8, !dbg !2900
  %x_last_basic_block74 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %42, i64 0, i32 5, !dbg !2900
  %43 = load i32, i32* %x_last_basic_block74, align 8, !dbg !2900
  %44 = load i32, i32* @num_stores, align 4, !dbg !2901
  %call75 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %43, i32 %44) #6, !dbg !2902
  store %struct.simple_bitmap_def** %call75, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !2903
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2904
  %cfg77 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !2904
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg77, align 8, !dbg !2904
  %x_last_basic_block78 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 5, !dbg !2904
  %47 = load i32, i32* %x_last_basic_block78, align 8, !dbg !2904
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call75, i32 %47) #6, !dbg !2905
  %conv = zext i32 %call to i64, !dbg !2906
  %mul = shl nuw nsw i64 %conv, 2, !dbg !2906
  %call79 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2906
  %48 = bitcast i8* %call79 to i32*, !dbg !2906
  call void @llvm.dbg.value(metadata i32* %48, metadata !2802, metadata !DIExpression()), !dbg !2829
  %49 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2907
  %cfg81 = getelementptr inbounds %struct.function, %struct.function* %49, i64 0, i32 1, !dbg !2907
  %50 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg81, align 8, !dbg !2907
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %50, i64 0, i32 0, !dbg !2907
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2907
  br label %for.cond82, !dbg !2907

for.cond82:                                       ; preds = %for.inc203, %for.end64
  %52 = phi %struct.control_flow_graph* [ %50, %for.end64 ], [ %.pre1, %for.inc203 ], !dbg !2908
  %.pn = phi %struct.basic_block_def* [ %51, %for.end64 ], [ %bb.0, %for.inc203 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2909
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2909
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2801, metadata !DIExpression()), !dbg !2829
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !2908
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2908
  %cmp85 = icmp eq %struct.basic_block_def* %bb.0, %53, !dbg !2908
  br i1 %cmp85, label %for.end205, label %for.body87, !dbg !2907

for.body87:                                       ; preds = %for.cond82
  %call90 = tail call i8* @memset(i8* %call79, i32 0, i64 %mul) #6, !dbg !2910
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2911
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2911
  %54 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2911
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %54, i64 0, i32 0, !dbg !2911
  br label %for.cond91, !dbg !2911

for.cond91:                                       ; preds = %for.inc142, %for.body87
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body87 ], [ %rt_rtx146, %for.inc142 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2803, metadata !DIExpression()), !dbg !2829
  %tobool92 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2913
  br i1 %tobool92, label %for.end147, label %land.rhs, !dbg !2913

land.rhs:                                         ; preds = %for.cond91
  %55 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2913
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %55, i64 0, i32 1, !dbg !2913
  %56 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2913
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2913
  %rt_rtx98 = bitcast %union.rtunion_def* %57 to %struct.rtx_def**, !dbg !2913
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx98, align 8, !dbg !2913
  %cmp99 = icmp eq %struct.rtx_def* %insn.0, %58, !dbg !2913
  br i1 %cmp99, label %for.end147, label %for.body101, !dbg !2911

for.body101:                                      ; preds = %land.rhs
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2914
  %bf.load = load i32, i32* %59, align 8, !dbg !2914
  %bf.clear = and i32 %bf.load, 65535, !dbg !2914
  %cmp102 = icmp eq i32 %bf.clear, 8, !dbg !2914
  br i1 %cmp102, label %land.lhs.true, label %lor.lhs.false, !dbg !2914

lor.lhs.false:                                    ; preds = %for.body101
  %cmp106 = icmp eq i32 %bf.clear, 7, !dbg !2914
  br i1 %cmp106, label %land.lhs.true, label %lor.lhs.false108, !dbg !2914

lor.lhs.false108:                                 ; preds = %lor.lhs.false
  %cmp111 = icmp eq i32 %bf.clear, 9, !dbg !2914
  br i1 %cmp111, label %land.lhs.true, label %lor.lhs.false113, !dbg !2914

lor.lhs.false113:                                 ; preds = %lor.lhs.false108
  %cmp116 = icmp eq i32 %bf.clear, 10, !dbg !2914
  br i1 %cmp116, label %land.lhs.true, label %for.inc142, !dbg !2914

land.lhs.true:                                    ; preds = %lor.lhs.false113, %lor.lhs.false108, %lor.lhs.false, %for.body101
  %cmp120 = icmp eq i32 %bf.clear, 7, !dbg !2914
  br i1 %cmp120, label %for.inc142, label %if.then122, !dbg !2915

if.then122:                                       ; preds = %land.lhs.true
  %60 = load %struct.df*, %struct.df** @df, align 8, !dbg !2916
  %insns = getelementptr inbounds %struct.df, %struct.df* %60, i64 0, i32 10, !dbg !2916
  %61 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2916
  %arrayidx125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2916
  %rt_int = bitcast %union.rtunion_def* %arrayidx125 to i32*, !dbg !2916
  %62 = load i32, i32* %rt_int, align 8, !dbg !2916
  %idxprom126 = sext i32 %62 to i64, !dbg !2916
  %arrayidx127 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %61, i64 %idxprom126, !dbg !2916
  %63 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx127, align 8, !dbg !2916
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %63, i64 0, i32 1, !dbg !2916
  %64 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !2916
  call void @llvm.dbg.value(metadata %union.df_ref_d** %64, metadata !2816, metadata !DIExpression()), !dbg !2917
  br label %for.cond128, !dbg !2918

for.cond128:                                      ; preds = %for.inc139, %if.then122
  %def_rec.0 = phi %union.df_ref_d** [ %64, %if.then122 ], [ %incdec.ptr, %for.inc139 ], !dbg !2919
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2816, metadata !DIExpression()), !dbg !2917
  %65 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2920
  %tobool129 = icmp eq %union.df_ref_d* %65, null, !dbg !2921
  br i1 %tobool129, label %for.inc142.loopexit, label %for.body130, !dbg !2921

for.body130:                                      ; preds = %for.cond128
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %65, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2922
  %66 = load i32, i32* %regno, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %66, metadata !2824, metadata !DIExpression()), !dbg !2923
  %cmp131 = icmp ult i32 %66, %call, !dbg !2924
  br i1 %cmp131, label %if.then133, label %for.inc139, !dbg !2926

if.then133:                                       ; preds = %for.body130
  %idxprom136 = zext i32 %66 to i64, !dbg !2927
  %arrayidx137 = getelementptr inbounds i32, i32* %48, i64 %idxprom136, !dbg !2927
  store i32 1, i32* %arrayidx137, align 4, !dbg !2928
  br label %for.inc139, !dbg !2927

for.inc139:                                       ; preds = %for.body130, %if.then133
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2929
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2816, metadata !DIExpression()), !dbg !2917
  br label %for.cond128, !dbg !2930, !llvm.loop !2931

for.inc142.loopexit:                              ; preds = %for.cond128
  br label %for.inc142, !dbg !2913

for.inc142:                                       ; preds = %for.inc142.loopexit, %lor.lhs.false113, %land.lhs.true
  %67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2913
  %rt_rtx146 = bitcast %union.rtunion_def* %67 to %struct.rtx_def**, !dbg !2913
  br label %for.cond91, !dbg !2913, !llvm.loop !2933

for.end147:                                       ; preds = %land.rhs, %for.cond91
  %call148 = tail call fastcc %struct.st_expr* @first_st_expr() #7, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.st_expr* %call148, metadata !2805, metadata !DIExpression()), !dbg !2829
  %index160 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2937
  br label %for.cond149, !dbg !2943

for.cond149:                                      ; preds = %for.inc200, %for.end147
  %ptr.1 = phi %struct.st_expr* [ %call148, %for.end147 ], [ %call201, %for.inc200 ], !dbg !2944
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.1, metadata !2805, metadata !DIExpression()), !dbg !2829
  %cmp150 = icmp eq %struct.st_expr* %ptr.1, null, !dbg !2945
  br i1 %cmp150, label %for.inc203, label %for.body152, !dbg !2946

for.body152:                                      ; preds = %for.cond149
  %pattern153 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 0, !dbg !2947
  %68 = load %struct.rtx_def*, %struct.rtx_def** %pattern153, align 8, !dbg !2947
  %pattern_regs = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 1, !dbg !2948
  %69 = load %struct.rtx_def*, %struct.rtx_def** %pattern_regs, align 8, !dbg !2948
  %70 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2949
  %head_156 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %70, i64 0, i32 0, !dbg !2949
  %71 = load %struct.rtx_def*, %struct.rtx_def** %head_156, align 8, !dbg !2949
  %call157 = tail call fastcc zeroext i8 @store_killed_after(%struct.rtx_def* %68, %struct.rtx_def* %69, %struct.rtx_def* %71, %struct.basic_block_def* %bb.0, i32* %48, %struct.rtx_def** null) #7, !dbg !2950
  %tobool158 = icmp eq i8 %call157, 0, !dbg !2950
  br i1 %tobool158, label %if.else, label %if.then159, !dbg !2951

if.then159:                                       ; preds = %for.body152
  %72 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !2952
  %73 = load i32, i32* %index160, align 8, !dbg !2952
  %idxprom161 = sext i32 %73 to i64, !dbg !2952
  %arrayidx162 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %72, i64 %idxprom161, !dbg !2952
  %74 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx162, align 8, !dbg !2952
  %index164 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 5, !dbg !2952
  %75 = load i32, i32* %index164, align 8, !dbg !2952
  %div165 = lshr i32 %75, 6, !dbg !2952
  %idxprom166 = zext i32 %div165 to i64, !dbg !2952
  %arrayidx167 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %74, i64 0, i32 3, i64 %idxprom166, !dbg !2952
  %76 = load i64, i64* %arrayidx167, align 8, !dbg !2952
  %rem169 = and i32 %75, 63, !dbg !2952
  %sh_prom170 = zext i32 %rem169 to i64, !dbg !2952
  %77 = shl i64 1, %sh_prom170, !dbg !2952
  %78 = and i64 %76, %77, !dbg !2952
  %tobool173 = icmp eq i64 %78, 0, !dbg !2952
  br i1 %tobool173, label %if.then189, label %lor.lhs.false174, !dbg !2953

lor.lhs.false174:                                 ; preds = %if.then159
  %79 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !2954
  %arrayidx177 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %79, i64 %idxprom161, !dbg !2954
  %80 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx177, align 8, !dbg !2954
  %arrayidx182 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %80, i64 0, i32 3, i64 %idxprom166, !dbg !2954
  %81 = load i64, i64* %arrayidx182, align 8, !dbg !2954
  %82 = and i64 %81, %77, !dbg !2954
  %tobool188 = icmp eq i64 %82, 0, !dbg !2954
  br i1 %tobool188, label %if.then189, label %for.inc200, !dbg !2955

if.then189:                                       ; preds = %lor.lhs.false174, %if.then159
  %83 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !2956
  %arrayidx192 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %83, i64 %idxprom161, !dbg !2956
  %84 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx192, align 8, !dbg !2956
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %84, i32 %75) #7, !dbg !2957
  br label %for.inc200, !dbg !2957

if.else:                                          ; preds = %for.body152
  %85 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !2958
  %86 = load i32, i32* %index160, align 8, !dbg !2959
  %idxprom196 = sext i32 %86 to i64, !dbg !2958
  %arrayidx197 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %85, i64 %idxprom196, !dbg !2958
  %87 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx197, align 8, !dbg !2958
  %index198 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.1, i64 0, i32 5, !dbg !2960
  %88 = load i32, i32* %index198, align 8, !dbg !2960
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %87, i32 %88) #7, !dbg !2961
  br label %for.inc200

for.inc200:                                       ; preds = %lor.lhs.false174, %if.else, %if.then189
  %call201 = tail call fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* nonnull %ptr.1) #7, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.st_expr* %call201, metadata !2805, metadata !DIExpression()), !dbg !2829
  br label %for.cond149, !dbg !2963, !llvm.loop !2964

for.inc203:                                       ; preds = %for.cond149
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2908
  %cfg84.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2966
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg84.phi.trans.insert, align 8, !dbg !2908
  br label %for.cond82, !dbg !2908, !llvm.loop !2967

for.end205:                                       ; preds = %for.cond82
  tail call void @free(i8* %call79) #6, !dbg !2969
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2970
  %tobool206 = icmp eq %struct._IO_FILE* %89, null, !dbg !2970
  br i1 %tobool206, label %if.end220, label %if.then207, !dbg !2972

if.then207:                                       ; preds = %for.end205
  %90 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !2973
  %91 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2975
  %cfg209 = getelementptr inbounds %struct.function, %struct.function* %91, i64 0, i32 1, !dbg !2975
  %92 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg209, align 8, !dbg !2975
  %x_last_basic_block210 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %92, i64 0, i32 5, !dbg !2975
  %93 = load i32, i32* %x_last_basic_block210, align 8, !dbg !2975
  tail call void @dump_sbitmap_vector(%struct._IO_FILE* nonnull %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.simple_bitmap_def** %90, i32 %93) #6, !dbg !2976
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2977
  %95 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !2978
  %96 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2979
  %cfg212 = getelementptr inbounds %struct.function, %struct.function* %96, i64 0, i32 1, !dbg !2979
  %97 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg212, align 8, !dbg !2979
  %x_last_basic_block213 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %97, i64 0, i32 5, !dbg !2979
  %98 = load i32, i32* %x_last_basic_block213, align 8, !dbg !2979
  tail call void @dump_sbitmap_vector(%struct._IO_FILE* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.simple_bitmap_def** %95, i32 %98) #6, !dbg !2980
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2981
  %100 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !2982
  %101 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2983
  %cfg215 = getelementptr inbounds %struct.function, %struct.function* %101, i64 0, i32 1, !dbg !2983
  %102 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg215, align 8, !dbg !2983
  %x_last_basic_block216 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %102, i64 0, i32 5, !dbg !2983
  %103 = load i32, i32* %x_last_basic_block216, align 8, !dbg !2983
  tail call void @dump_sbitmap_vector(%struct._IO_FILE* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.simple_bitmap_def** %100, i32 %103) #6, !dbg !2984
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2985
  %105 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !2986
  %106 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2987
  %cfg218 = getelementptr inbounds %struct.function, %struct.function* %106, i64 0, i32 1, !dbg !2987
  %107 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg218, align 8, !dbg !2987
  %x_last_basic_block219 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %107, i64 0, i32 5, !dbg !2987
  %108 = load i32, i32* %x_last_basic_block219, align 8, !dbg !2987
  tail call void @dump_sbitmap_vector(%struct._IO_FILE* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %struct.simple_bitmap_def** %105, i32 %108) #6, !dbg !2988
  br label %if.end220, !dbg !2989

if.end220:                                        ; preds = %for.end205, %if.then207
  ret void, !dbg !2990
}

declare dso_local void @add_noreturn_fake_exit_edges() local_unnamed_addr #1

declare dso_local void @connect_infinite_loops_to_exit() local_unnamed_addr #1

declare dso_local %struct.edge_list* @pre_edge_rev_lcm(i32, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def***, %struct.simple_bitmap_def***) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.st_expr* @first_st_expr() unnamed_addr #0 !dbg !2991 {
entry:
  %0 = load %struct.st_expr*, %struct.st_expr** @store_motion_mems, align 8, !dbg !2994
  ret %struct.st_expr* %0, !dbg !2995
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_store(%struct.st_expr* %expr, %struct.basic_block_def* %bb) unnamed_addr #4 !dbg !2996 {
entry:
  call void @llvm.dbg.value(metadata %struct.st_expr* %expr, metadata !3000, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3001, metadata !DIExpression()), !dbg !3005
  %reaching_reg = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 7, !dbg !3006
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8, !dbg !3006
  %cmp = icmp eq %struct.rtx_def* %0, null, !dbg !3008
  br i1 %cmp, label %if.then, label %if.end, !dbg !3009

if.then:                                          ; preds = %entry
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 0, !dbg !3010
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3010
  %call = tail call %struct.rtx_def* @gen_reg_rtx_and_attrs(%struct.rtx_def* %1) #6, !dbg !3011
  store %struct.rtx_def* %call, %struct.rtx_def** %reaching_reg, align 8, !dbg !3012
  br label %if.end, !dbg !3013

if.end:                                           ; preds = %if.then, %entry
  %2 = phi %struct.rtx_def* [ %call, %if.then ], [ %0, %entry ], !dbg !3014
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3002, metadata !DIExpression()), !dbg !3005
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 3, !dbg !3015
  br label %for.cond, !dbg !3017

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0.in = phi %struct.rtx_def** [ %avail_stores, %if.end ], [ %rt_rtx12, %for.inc ]
  %i.0 = load %struct.rtx_def*, %struct.rtx_def** %i.0.in, align 8, !dbg !3018
  call void @llvm.dbg.value(metadata %struct.rtx_def* %i.0, metadata !3003, metadata !DIExpression()), !dbg !3005
  %tobool = icmp eq %struct.rtx_def* %i.0, null, !dbg !3019
  br i1 %tobool, label %for.end.loopexit, label %for.body, !dbg !3019

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %i.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3020
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3020
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3004, metadata !DIExpression()), !dbg !3005
  %arrayidx5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 1, !dbg !3023
  %rt_bb = bitcast %struct.object_block** %arrayidx5 to %struct.basic_block_def**, !dbg !3023
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3023
  %cmp6 = icmp eq %struct.basic_block_def* %4, %bb, !dbg !3025
  br i1 %cmp6, label %if.then7, label %for.inc, !dbg !3026

if.then7:                                         ; preds = %for.body
  %.lcssa = phi %struct.rtx_def* [ %3, %for.body ], !dbg !3020
  tail call fastcc void @replace_store_insn(%struct.rtx_def* %2, %struct.rtx_def* %.lcssa, %struct.basic_block_def* %bb, %struct.st_expr* %expr) #7, !dbg !3027
  br label %for.end, !dbg !3029

for.inc:                                          ; preds = %for.body
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %i.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3030
  %rt_rtx12 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3030
  br label %for.cond, !dbg !3031, !llvm.loop !3032

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !3034

for.end:                                          ; preds = %for.end.loopexit, %if.then7
  ret void, !dbg !3034
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insert_store(%struct.st_expr* %expr, %struct.edge_def* %e) unnamed_addr #4 !dbg !3035 {
entry:
  %tmp = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp5 = alloca %struct.edge_iterator, align 8
  %tmp29 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.st_expr* %expr, metadata !3039, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3040, metadata !DIExpression()), !dbg !3057
  %0 = bitcast %struct.edge_def** %tmp to i8*, !dbg !3058
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3058
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3059
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3059
  %reaching_reg = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 7, !dbg !3060
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8, !dbg !3060
  %cmp = icmp eq %struct.rtx_def* %2, null, !dbg !3062
  br i1 %cmp, label %cleanup63, label %if.end, !dbg !3063

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3064
  %3 = load i32, i32* %flags, align 8, !dbg !3064
  %and = and i32 %3, 16, !dbg !3066
  %tobool = icmp eq i32 %and, 0, !dbg !3066
  br i1 %tobool, label %if.end2, label %cleanup63, !dbg !3067

if.end2:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3041, metadata !DIExpression()), !dbg !3057
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 0, !dbg !3068
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3068
  %call = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %4) #6, !dbg !3069
  %call4 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %call, %struct.rtx_def* nonnull %2) #6, !dbg !3070
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call4, metadata !3042, metadata !DIExpression()), !dbg !3057
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3071
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3043, metadata !DIExpression()), !dbg !3057
  %6 = bitcast %struct.edge_iterator* %tmp5 to i8*, !dbg !3072
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3072
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 0, !dbg !3072
  %call7 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3072
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp5, i64 0, i32 0, !dbg !3072
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !3072
  store i32 %8, i32* %7, align 8, !dbg !3072
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp5, i64 0, i32 1, !dbg !3072
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !3072
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !3072
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3073
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3073
  %index17 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %expr, i64 0, i32 5, !dbg !3074
  br label %for.cond, !dbg !3072

for.cond:                                         ; preds = %for.inc, %if.end2
  %13 = load i32, i32* %11, align 8, !dbg !3076
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3076
  call void @llvm.dbg.value(metadata %struct.edge_def** %tmp, metadata !3044, metadata !DIExpression(DW_OP_deref)), !dbg !3057
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %tmp) #7, !dbg !3076
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3072
  br i1 %tobool9, label %for.end, label %for.body, !dbg !3072

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8, !dbg !3077
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3044, metadata !DIExpression()), !dbg !3057
  %flags10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 7, !dbg !3078
  %16 = load i32, i32* %flags10, align 8, !dbg !3078
  %and11 = and i32 %16, 16, !dbg !3079
  %tobool12 = icmp eq i32 %and11, 0, !dbg !3079
  br i1 %tobool12, label %if.then13, label %for.inc, !dbg !3080

if.then13:                                        ; preds = %for.body
  %17 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3044, metadata !DIExpression()), !dbg !3057
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 0, !dbg !3081
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3044, metadata !DIExpression()), !dbg !3057
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 1, !dbg !3081
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8, !dbg !3081
  %call15 = call i32 @find_edge_index(%struct.edge_list* %17, %struct.basic_block_def* %18, %struct.basic_block_def* %19) #6, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %call15, metadata !3046, metadata !DIExpression()), !dbg !3082
  %cmp16 = icmp eq i32 %call15, -1, !dbg !3083
  br i1 %cmp16, label %cond.true, label %cond.end, !dbg !3083

cond.true:                                        ; preds = %if.then13
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 807, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3083
  br label %cond.end, !dbg !3083

cond.end:                                         ; preds = %if.then13, %cond.true
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !3084
  %idxprom = sext i32 %call15 to i64, !dbg !3084
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %idxprom, !dbg !3084
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3084
  %22 = load i32, i32* %index17, align 8, !dbg !3084
  %div = lshr i32 %22, 6, !dbg !3084
  %idxprom18 = zext i32 %div to i64, !dbg !3084
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i64 0, i32 3, i64 %idxprom18, !dbg !3084
  %23 = load i64, i64* %arrayidx19, align 8, !dbg !3084
  %rem = and i32 %22, 63, !dbg !3084
  %sh_prom = zext i32 %rem to i64, !dbg !3084
  %24 = shl i64 1, %sh_prom, !dbg !3084
  %25 = and i64 %23, %24, !dbg !3084
  %tobool22 = icmp eq i64 %25, 0, !dbg !3084
  br i1 %tobool22, label %for.end, label %for.inc

for.inc:                                          ; preds = %cond.end, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3045, metadata !DIExpression(DW_OP_deref)), !dbg !3057
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3076
  br label %for.cond, !dbg !3076, !llvm.loop !3085

for.end:                                          ; preds = %cond.end, %for.cond
  %26 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !3044, metadata !DIExpression()), !dbg !3057
  %tobool26 = icmp eq %struct.edge_def* %26, null, !dbg !3087
  br i1 %tobool26, label %land.lhs.true, label %if.end46, !dbg !3088

land.lhs.true:                                    ; preds = %for.end
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3089
  %cfg = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !3089
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3089
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 1, !dbg !3089
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3089
  %cmp27 = icmp eq %struct.basic_block_def* %5, %29, !dbg !3090
  br i1 %cmp27, label %if.end46, label %if.then28, !dbg !3091

if.then28:                                        ; preds = %land.lhs.true
  %30 = bitcast %struct.edge_iterator* %tmp29 to i8*, !dbg !3092
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8, !dbg !3092
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3092
  %preds31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 0, !dbg !3092
  %call32 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds31) #7, !dbg !3092
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp29, i64 0, i32 0, !dbg !3092
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 0, !dbg !3092
  store i32 %33, i32* %32, align 8, !dbg !3092
  %34 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp29, i64 0, i32 1, !dbg !3092
  %35 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 1, !dbg !3092
  store %struct.VEC_edge_gc** %35, %struct.VEC_edge_gc*** %34, align 8, !dbg !3092
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8, !dbg !3092
  br label %for.cond33, !dbg !3092

for.cond33:                                       ; preds = %for.body36, %if.then28
  %36 = load i32, i32* %11, align 8, !dbg !3093
  %37 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3093
  call void @llvm.dbg.value(metadata %struct.edge_def** %tmp, metadata !3044, metadata !DIExpression(DW_OP_deref)), !dbg !3057
  %call34 = call fastcc zeroext i8 @ei_cond(i32 %36, %struct.VEC_edge_gc** %37, %struct.edge_def** nonnull %tmp) #7, !dbg !3093
  %tobool35 = icmp eq i8 %call34, 0, !dbg !3092
  br i1 %tobool35, label %for.end45, label %for.body36, !dbg !3092

for.body36:                                       ; preds = %for.cond33
  %38 = load %struct.edge_list*, %struct.edge_list** @edge_list, align 8, !dbg !3094
  %39 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8, !dbg !3094
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !3044, metadata !DIExpression()), !dbg !3057
  %src38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 0, !dbg !3094
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %src38, align 8, !dbg !3094
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !3044, metadata !DIExpression()), !dbg !3057
  %dest39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 1, !dbg !3094
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest39, align 8, !dbg !3094
  %call40 = call i32 @find_edge_index(%struct.edge_list* %38, %struct.basic_block_def* %40, %struct.basic_block_def* %41) #6, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %call40, metadata !3051, metadata !DIExpression()), !dbg !3095
  %42 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !3096
  %idxprom41 = sext i32 %call40 to i64, !dbg !3096
  %arrayidx42 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %42, i64 %idxprom41, !dbg !3096
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx42, align 8, !dbg !3096
  %44 = load i32, i32* %index17, align 8, !dbg !3097
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %43, i32 %44) #7, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3045, metadata !DIExpression(DW_OP_deref)), !dbg !3057
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3093
  br label %for.cond33, !dbg !3093, !llvm.loop !3099

for.end45:                                        ; preds = %for.cond33
  call fastcc void @insert_insn_start_basic_block(%struct.rtx_def* %call4, %struct.basic_block_def* %5) #7, !dbg !3101
  br label %cleanup63, !dbg !3102

if.end46:                                         ; preds = %land.lhs.true, %for.end
  %45 = load i32, i32* %flags, align 8, !dbg !3103
  %and48 = and i32 %45, 2, !dbg !3103
  %tobool49 = icmp eq i32 %and48, 0, !dbg !3103
  br i1 %tobool49, label %cond.end52, label %cond.true50, !dbg !3103

cond.true50:                                      ; preds = %if.end46
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 827, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3103
  br label %cond.end52, !dbg !3103

cond.end52:                                       ; preds = %if.end46, %cond.true50
  call void @insert_insn_on_edge(%struct.rtx_def* %call4, %struct.edge_def* %e) #6, !dbg !3104
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3105
  %tobool54 = icmp eq %struct._IO_FILE* %46, null, !dbg !3105
  br i1 %tobool54, label %cleanup63, label %if.then55, !dbg !3107

if.then55:                                        ; preds = %cond.end52
  %src56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3108
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %src56, align 8, !dbg !3108
  %index57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i64 0, i32 9, !dbg !3110
  %48 = load i32, i32* %index57, align 8, !dbg !3110
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3111
  %index59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i64 0, i32 9, !dbg !3112
  %50 = load i32, i32* %index59, align 8, !dbg !3112
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 %48, i32 %50) #6, !dbg !3113
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3114
  call void @print_inline_rtx(%struct._IO_FILE* %51, %struct.rtx_def* %call4, i32 6) #6, !dbg !3115
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3116
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3117
  br label %cleanup63, !dbg !3118

cleanup63:                                        ; preds = %cond.end52, %if.end, %if.then55, %entry, %for.end45
  %retval.0 = phi i32 [ 0, %for.end45 ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then55 ], [ 1, %cond.end52 ], !dbg !3057
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3119
  ret i32 %retval.0, !dbg !3119
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* %ptr) unnamed_addr #0 !dbg !3120 {
entry:
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr, metadata !3124, metadata !DIExpression()), !dbg !3125
  %next = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr, i64 0, i32 4, !dbg !3126
  %0 = load %struct.st_expr*, %struct.st_expr** %next, align 8, !dbg !3126
  ret %struct.st_expr* %0, !dbg !3127
}

declare dso_local void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_store_memory() unnamed_addr #4 !dbg !3128 {
entry:
  tail call fastcc void @free_store_motion_mems() #7, !dbg !3129
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !3130
  %tobool = icmp eq %struct.simple_bitmap_def** %0, null, !dbg !3130
  br i1 %tobool, label %if.end, label %if.then, !dbg !3132

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.simple_bitmap_def** %0 to i8*, !dbg !3132
  tail call void @free(i8* nonnull %1) #6, !dbg !3133
  br label %if.end, !dbg !3133

if.end:                                           ; preds = %entry, %if.then
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !3134
  %tobool1 = icmp eq %struct.simple_bitmap_def** %2, null, !dbg !3134
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3136

if.then2:                                         ; preds = %if.end
  %3 = bitcast %struct.simple_bitmap_def** %2 to i8*, !dbg !3136
  tail call void @free(i8* nonnull %3) #6, !dbg !3137
  br label %if.end3, !dbg !3137

if.end3:                                          ; preds = %if.end, %if.then2
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !3138
  %tobool4 = icmp eq %struct.simple_bitmap_def** %4, null, !dbg !3138
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3140

if.then5:                                         ; preds = %if.end3
  %5 = bitcast %struct.simple_bitmap_def** %4 to i8*, !dbg !3140
  tail call void @free(i8* nonnull %5) #6, !dbg !3141
  br label %if.end6, !dbg !3141

if.end6:                                          ; preds = %if.end3, %if.then5
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !3142
  %tobool7 = icmp eq %struct.simple_bitmap_def** %6, null, !dbg !3142
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3144

if.then8:                                         ; preds = %if.end6
  %7 = bitcast %struct.simple_bitmap_def** %6 to i8*, !dbg !3144
  tail call void @free(i8* nonnull %7) #6, !dbg !3145
  br label %if.end9, !dbg !3145

if.end9:                                          ; preds = %if.end6, %if.then8
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !3146
  %tobool10 = icmp eq %struct.simple_bitmap_def** %8, null, !dbg !3146
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3148

if.then11:                                        ; preds = %if.end9
  %9 = bitcast %struct.simple_bitmap_def** %8 to i8*, !dbg !3148
  tail call void @free(i8* nonnull %9) #6, !dbg !3149
  br label %if.end12, !dbg !3149

if.end12:                                         ; preds = %if.end9, %if.then11
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_delete_map, align 8, !dbg !3150
  %tobool13 = icmp eq %struct.simple_bitmap_def** %10, null, !dbg !3150
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !3152

if.then14:                                        ; preds = %if.end12
  %11 = bitcast %struct.simple_bitmap_def** %10 to i8*, !dbg !3152
  tail call void @free(i8* nonnull %11) #6, !dbg !3153
  br label %if.end15, !dbg !3153

if.end15:                                         ; preds = %if.end12, %if.then14
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !3154
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_transp, align 8, !dbg !3155
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_kill, align 8, !dbg !3156
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_avloc, align 8, !dbg !3157
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_delete_map, align 8, !dbg !3158
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @st_insert_map, align 8, !dbg !3159
  ret void, !dbg !3160
}

declare dso_local void @free_edge_list(%struct.edge_list*) local_unnamed_addr #1

declare dso_local void @remove_fake_exit_edges() local_unnamed_addr #1

declare dso_local i8* @current_function_name() local_unnamed_addr #1

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @pre_st_expr_hash(i8* %p) #4 !dbg !3161 {
entry:
  %do_not_record_p = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !3163, metadata !DIExpression()), !dbg !3167
  %0 = bitcast i32* %do_not_record_p to i8*, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3167
  store i32 0, i32* %do_not_record_p, align 4, !dbg !3169
  call void @llvm.dbg.value(metadata i8* %p, metadata !3165, metadata !DIExpression()), !dbg !3167
  %pattern = bitcast i8* %p to %struct.rtx_def**, !dbg !3170
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3170
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3171
  %bf.load = load i32, i32* %.cast, align 8, !dbg !3171
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3171
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3171
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !3164, metadata !DIExpression(DW_OP_deref)), !dbg !3167
  %call = call i32 @hash_rtx(%struct.rtx_def* %1, i32 %bf.clear, i32* nonnull %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3173
  ret i32 %call, !dbg !3174
}

; Function Attrs: nounwind uwtable
define internal i32 @pre_st_expr_eq(i8* %p1, i8* %p2) #4 !dbg !3175 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3180, metadata !DIExpression()), !dbg !3181
  %pattern = bitcast i8* %p1 to %struct.rtx_def**, !dbg !3182
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3182
  %pattern1 = bitcast i8* %p2 to %struct.rtx_def**, !dbg !3183
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pattern1, align 8, !dbg !3183
  %call = tail call i32 @exp_equiv_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 0, i8 zeroext 1) #6, !dbg !3184
  ret i32 %call, !dbg !3185
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @find_moveable_store(%struct.rtx_def* %insn, i32* %regs_set_before, i32* %regs_set_after) unnamed_addr #4 !dbg !3186 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32* %regs_set_before, metadata !3191, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32* %regs_set_after, metadata !3192, metadata !DIExpression()), !dbg !3200
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3201
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3201
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3199, metadata !DIExpression()), !dbg !3200
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3202
  %bf.load = load i32, i32* %1, align 8, !dbg !3202
  %bf.clear = and i32 %bf.load, 65535, !dbg !3202
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3202
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3202

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3202
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !3202

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3202
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !3202

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3202
  br i1 %cmp11, label %cond.true, label %cond.end28, !dbg !3202

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3202
  %2 = getelementptr inbounds %union.u, %union.u* %u12, i64 1, i32 0, i32 0, i64 0, !dbg !3202
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !3202
  %4 = load i32*, i32** %3, align 8, !dbg !3202
  %bf.load15 = load i32, i32* %4, align 8, !dbg !3202
  %bf.clear16 = and i32 %bf.load15, 65535, !dbg !3202
  %cmp17 = icmp eq i32 %bf.clear16, 23, !dbg !3202
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !3202
  br i1 %cmp17, label %cond.end28, label %cond.false, !dbg !3202

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !3202
  br label %cond.end28, !dbg !3202

cond.end28:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond29 = phi %struct.rtx_def* [ %call, %cond.false ], [ %5, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !3202
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond29, metadata !3195, metadata !DIExpression()), !dbg !3200
  %tobool = icmp eq %struct.rtx_def* %cond29, null, !dbg !3203
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3205

if.end:                                           ; preds = %cond.end28
  %arrayidx32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond29, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3206
  %rt_rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**, !dbg !3206
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx33, align 8, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3194, metadata !DIExpression()), !dbg !3200
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3207
  %bf.load34 = load i32, i32* %7, align 8, !dbg !3207
  %bf.clear35 = and i32 %bf.load34, 65535, !dbg !3207
  %cmp36 = icmp eq i32 %bf.clear35, 43, !dbg !3207
  br i1 %cmp36, label %lor.lhs.false37, label %cleanup.cont, !dbg !3209

lor.lhs.false37:                                  ; preds = %if.end
  %bf.clear39 = and i32 %bf.load34, 134217728, !dbg !3210
  %tobool40 = icmp eq i32 %bf.clear39, 0, !dbg !3210
  br i1 %tobool40, label %lor.lhs.false41, label %cleanup.cont, !dbg !3211

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %bf.clear44 = and i32 %bf.load34, 16711680, !dbg !3212
  %cmp45 = icmp eq i32 %bf.clear44, 65536, !dbg !3213
  br i1 %cmp45, label %cleanup.cont, label %if.end47, !dbg !3214

if.end47:                                         ; preds = %lor.lhs.false41
  %call48 = tail call i32 @side_effects_p(%struct.rtx_def* %6) #6, !dbg !3215
  %tobool49 = icmp eq i32 %call48, 0, !dbg !3215
  br i1 %tobool49, label %if.end51, label %cleanup.cont, !dbg !3217

if.end51:                                         ; preds = %if.end47
  %8 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !3218
  %tobool52 = icmp eq i32 %8, 0, !dbg !3218
  br i1 %tobool52, label %if.end56, label %land.lhs.true, !dbg !3220

land.lhs.true:                                    ; preds = %if.end51
  %call53 = tail call i32 @may_trap_p(%struct.rtx_def* %6) #6, !dbg !3221
  %tobool54 = icmp eq i32 %call53, 0, !dbg !3221
  br i1 %tobool54, label %if.end56, label %cleanup.cont, !dbg !3222

if.end56:                                         ; preds = %land.lhs.true, %if.end51
  %call57 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 25, %struct.rtx_def* null) #6, !dbg !3223
  %tobool58 = icmp eq %struct.rtx_def* %call57, null, !dbg !3223
  br i1 %tobool58, label %if.end60, label %cleanup.cont, !dbg !3225

if.end60:                                         ; preds = %if.end56
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond29, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3226
  %rt_rtx64 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3226
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx64, align 8, !dbg !3226
  %call65 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(%struct.rtx_def* %10) #6, !dbg !3228
  %tobool66 = icmp eq i8 %call65, 0, !dbg !3228
  br i1 %tobool66, label %cleanup.cont, label %if.end68, !dbg !3229

if.end68:                                         ; preds = %if.end60
  %call69 = tail call fastcc %struct.st_expr* @st_expr_entry(%struct.rtx_def* %6) #7, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.st_expr* %call69, metadata !3193, metadata !DIExpression()), !dbg !3200
  %pattern_regs = getelementptr inbounds %struct.st_expr, %struct.st_expr* %call69, i64 0, i32 1, !dbg !3231
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pattern_regs, align 8, !dbg !3231
  %tobool70 = icmp eq %struct.rtx_def* %11, null, !dbg !3233
  br i1 %tobool70, label %if.then71, label %if.end74, !dbg !3234

if.then71:                                        ; preds = %if.end68
  %call72 = tail call fastcc %struct.rtx_def* @extract_mentioned_regs(%struct.rtx_def* %6) #7, !dbg !3235
  store %struct.rtx_def* %call72, %struct.rtx_def** %pattern_regs, align 8, !dbg !3236
  br label %if.end74, !dbg !3237

if.end74:                                         ; preds = %if.end68, %if.then71
  %12 = phi %struct.rtx_def* [ %11, %if.end68 ], [ %call72, %if.then71 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !3197, metadata !DIExpression()), !dbg !3200
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %call69, i64 0, i32 2, !dbg !3238
  %13 = load %struct.rtx_def*, %struct.rtx_def** %antic_stores, align 8, !dbg !3238
  %tobool75 = icmp eq %struct.rtx_def* %13, null, !dbg !3240
  br i1 %tobool75, label %if.end91, label %if.else, !dbg !3241

if.else:                                          ; preds = %if.end74
  %arrayidx80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3242
  %rt_rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**, !dbg !3242
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx81, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !3196, metadata !DIExpression()), !dbg !3200
  %cmp82 = icmp eq %struct.rtx_def* %14, null, !dbg !3244
  br i1 %cmp82, label %if.end91, label %land.lhs.true83, !dbg !3246

land.lhs.true83:                                  ; preds = %if.else
  %arrayidx86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 1, !dbg !3247
  %rt_bb87 = bitcast %struct.object_block** %arrayidx86 to %struct.basic_block_def**, !dbg !3247
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb87, align 8, !dbg !3247
  %cmp88 = icmp ne %struct.basic_block_def* %15, %0, !dbg !3248
  br label %if.end91, !dbg !3249

if.end91:                                         ; preds = %if.else, %if.end74, %land.lhs.true83
  %check_anticipatable.1 = phi i1 [ true, %if.end74 ], [ false, %if.else ], [ %cmp88, %land.lhs.true83 ]
  br i1 %check_anticipatable.1, label %if.then93, label %if.end103, !dbg !3250

if.then93:                                        ; preds = %if.end91
  %call95 = tail call fastcc zeroext i8 @store_killed_before(%struct.rtx_def* %6, %struct.rtx_def* %12, %struct.rtx_def* %insn, %struct.basic_block_def* %0, i32* %regs_set_before) #7, !dbg !3251
  %tobool96 = icmp eq i8 %call95, 0, !dbg !3251
  %.insn = select i1 %tobool96, %struct.rtx_def* %insn, %struct.rtx_def* null
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.insn, metadata !3196, metadata !DIExpression()), !dbg !3200
  %16 = load %struct.rtx_def*, %struct.rtx_def** %antic_stores, align 8, !dbg !3255
  %call101 = tail call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %.insn, %struct.rtx_def* %16) #6, !dbg !3256
  store %struct.rtx_def* %call101, %struct.rtx_def** %antic_stores, align 8, !dbg !3257
  br label %if.end103, !dbg !3258

if.end103:                                        ; preds = %if.then93, %if.end91
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()), !dbg !3200
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %call69, i64 0, i32 3, !dbg !3259
  %17 = load %struct.rtx_def*, %struct.rtx_def** %avail_stores, align 8, !dbg !3259
  %tobool104 = icmp eq %struct.rtx_def* %17, null, !dbg !3261
  br i1 %tobool104, label %if.end119, label %if.else106, !dbg !3262

if.else106:                                       ; preds = %if.end103
  %arrayidx110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3263
  %rt_rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**, !dbg !3263
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx111, align 8, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.rtx_def* %18, metadata !3196, metadata !DIExpression()), !dbg !3200
  %arrayidx114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 1, !dbg !3265
  %rt_bb115 = bitcast %struct.object_block** %arrayidx114 to %struct.basic_block_def**, !dbg !3265
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb115, align 8, !dbg !3265
  %cmp116 = icmp ne %struct.basic_block_def* %19, %0, !dbg !3267
  %spec.select1 = zext i1 %cmp116 to i32, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !3198, metadata !DIExpression()), !dbg !3200
  br label %if.end119

if.end119:                                        ; preds = %if.end103, %if.else106
  %check_available.1 = phi i32 [ %spec.select1, %if.else106 ], [ 1, %if.end103 ], !dbg !3269
  call void @llvm.dbg.value(metadata i32 %check_available.1, metadata !3198, metadata !DIExpression()), !dbg !3200
  %tobool120 = icmp eq i32 %check_available.1, 0, !dbg !3270
  br i1 %tobool120, label %if.end139, label %if.then121, !dbg !3272

if.then121:                                       ; preds = %if.end119
  %reaching_reg = getelementptr inbounds %struct.st_expr, %struct.st_expr* %call69, i64 0, i32 7, !dbg !3273
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reaching_reg, align 8, !dbg !3273
  %tobool122 = icmp eq %struct.rtx_def* %20, null, !dbg !3273
  br i1 %tobool122, label %if.else134, label %if.then123, !dbg !3276

if.then123:                                       ; preds = %if.then121
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 7, !dbg !3277
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3277
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3277
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !3277
  br label %for.cond, !dbg !3280

for.cond:                                         ; preds = %for.inc, %if.then123
  %tmp.1.in = phi %struct.rtx_def** [ %end_, %if.then123 ], [ %rt_rtx130, %for.inc ]
  %tmp.1 = load %struct.rtx_def*, %struct.rtx_def** %tmp.1.in, align 8, !dbg !3281
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tmp.1, metadata !3196, metadata !DIExpression()), !dbg !3200
  %cmp124 = icmp eq %struct.rtx_def* %tmp.1, %insn, !dbg !3282
  %cmp126 = icmp eq %struct.rtx_def* %tmp.1, %20, !dbg !3284
  %or.cond = or i1 %cmp124, %cmp126, !dbg !3285
  br i1 %or.cond, label %for.end, label %for.inc, !dbg !3285

for.inc:                                          ; preds = %for.cond
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tmp.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3286
  %rt_rtx130 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !3286
  br label %for.cond, !dbg !3287, !llvm.loop !3288

for.end:                                          ; preds = %for.cond
  %cmp124.lcssa = phi i1 [ %cmp124, %for.cond ], !dbg !3282
  %spec.select2 = select i1 %cmp124.lcssa, i32 0, i32 %check_available.1, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !3198, metadata !DIExpression()), !dbg !3200
  br label %if.end139, !dbg !3292

if.else134:                                       ; preds = %if.then121
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pattern_regs, align 8, !dbg !3293
  %call137 = tail call fastcc zeroext i8 @store_killed_after(%struct.rtx_def* %6, %struct.rtx_def* %23, %struct.rtx_def* %insn, %struct.basic_block_def* %0, i32* %regs_set_after, %struct.rtx_def** nonnull %reaching_reg) #7, !dbg !3294
  %conv = zext i8 %call137 to i32, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3198, metadata !DIExpression()), !dbg !3200
  br label %if.end139

if.end139:                                        ; preds = %if.end119, %for.end, %if.else134
  %check_available.4 = phi i32 [ 0, %if.end119 ], [ %spec.select2, %for.end ], [ %conv, %if.else134 ], !dbg !3200
  call void @llvm.dbg.value(metadata i32 %check_available.4, metadata !3198, metadata !DIExpression()), !dbg !3200
  %tobool140 = icmp eq i32 %check_available.4, 0, !dbg !3295
  br i1 %tobool140, label %if.then141, label %cleanup.cont, !dbg !3297

if.then141:                                       ; preds = %if.end139
  %24 = load %struct.rtx_def*, %struct.rtx_def** %avail_stores, align 8, !dbg !3298
  %call143 = tail call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %insn, %struct.rtx_def* %24) #6, !dbg !3299
  store %struct.rtx_def* %call143, %struct.rtx_def** %avail_stores, align 8, !dbg !3300
  br label %cleanup.cont, !dbg !3301

cleanup.cont:                                     ; preds = %land.lhs.true, %if.end139, %if.end60, %if.end56, %if.end47, %lor.lhs.false37, %cond.end28, %lor.lhs.false41, %if.end, %if.then141
  ret void, !dbg !3302
}

declare dso_local void @htab_remove_elt_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_st_expr_entry(%struct.st_expr* %ptr) unnamed_addr #4 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr, metadata !3307, metadata !DIExpression()), !dbg !3308
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr, i64 0, i32 2, !dbg !3309
  tail call void @free_INSN_LIST_list(%struct.rtx_def** nonnull %antic_stores) #6, !dbg !3310
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr, i64 0, i32 3, !dbg !3311
  tail call void @free_INSN_LIST_list(%struct.rtx_def** nonnull %avail_stores) #6, !dbg !3312
  %0 = bitcast %struct.st_expr* %ptr to i8*, !dbg !3313
  tail call void @free(i8* %0) #6, !dbg !3314
  ret void, !dbg !3315
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @enumerate_store_motion_mems() unnamed_addr #4 !dbg !3316 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3319, metadata !DIExpression()), !dbg !3320
  br label %for.cond, !dbg !3321

for.cond:                                         ; preds = %for.body, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !3320
  %ptr.0.in = phi %struct.st_expr** [ @store_motion_mems, %entry ], [ %next, %for.body ]
  %ptr.0 = load %struct.st_expr*, %struct.st_expr** %ptr.0.in, align 8, !dbg !3323
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.0, metadata !3318, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3319, metadata !DIExpression()), !dbg !3320
  %cmp = icmp eq %struct.st_expr* %ptr.0, null, !dbg !3324
  br i1 %cmp, label %for.end, label %for.body, !dbg !3326

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %n.0, 1, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3319, metadata !DIExpression()), !dbg !3320
  %index = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 5, !dbg !3328
  store i32 %n.0, i32* %index, align 8, !dbg !3329
  %next = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 4, !dbg !3330
  br label %for.cond, !dbg !3331, !llvm.loop !3332

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !3320
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3319, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !3319, metadata !DIExpression()), !dbg !3320
  ret i32 %n.0.lcssa, !dbg !3334
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_store_motion_mems(%struct._IO_FILE* %file) unnamed_addr #4 !dbg !3335 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3339, metadata !DIExpression()), !dbg !3341
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3342
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3343
  %call1 = tail call fastcc %struct.st_expr* @first_st_expr() #7, !dbg !3344
  call void @llvm.dbg.value(metadata %struct.st_expr* %call1, metadata !3340, metadata !DIExpression()), !dbg !3341
  br label %for.cond, !dbg !3346

for.cond:                                         ; preds = %if.end12, %entry
  %ptr.0 = phi %struct.st_expr* [ %call1, %entry ], [ %call14, %if.end12 ], !dbg !3347
  call void @llvm.dbg.value(metadata %struct.st_expr* %ptr.0, metadata !3340, metadata !DIExpression()), !dbg !3341
  %cmp = icmp eq %struct.st_expr* %ptr.0, null, !dbg !3348
  br i1 %cmp, label %for.end, label %for.body, !dbg !3350

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 5, !dbg !3351
  %1 = load i32, i32* %index, align 8, !dbg !3351
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %1) #6, !dbg !3353
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 0, !dbg !3354
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3354
  tail call void @print_rtl(%struct._IO_FILE* %file, %struct.rtx_def* %2) #6, !dbg !3355
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3356
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 2, !dbg !3357
  %3 = load %struct.rtx_def*, %struct.rtx_def** %antic_stores, align 8, !dbg !3357
  %tobool = icmp eq %struct.rtx_def* %3, null, !dbg !3359
  br i1 %tobool, label %if.else, label %if.then, !dbg !3360

if.then:                                          ; preds = %for.body
  tail call void @print_rtl(%struct._IO_FILE* %file, %struct.rtx_def* nonnull %3) #6, !dbg !3361
  br label %if.end, !dbg !3361

if.else:                                          ; preds = %for.body
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3362
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3363
  %avail_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %ptr.0, i64 0, i32 3, !dbg !3364
  %4 = load %struct.rtx_def*, %struct.rtx_def** %avail_stores, align 8, !dbg !3364
  %tobool7 = icmp eq %struct.rtx_def* %4, null, !dbg !3366
  br i1 %tobool7, label %if.else10, label %if.then8, !dbg !3367

if.then8:                                         ; preds = %if.end
  tail call void @print_rtl(%struct._IO_FILE* %file, %struct.rtx_def* nonnull %4) #6, !dbg !3368
  br label %if.end12, !dbg !3368

if.else10:                                        ; preds = %if.end
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3369
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3370
  %call14 = tail call fastcc %struct.st_expr* @next_st_expr(%struct.st_expr* nonnull %ptr.0) #7, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.st_expr* %call14, metadata !3340, metadata !DIExpression()), !dbg !3341
  br label %for.cond, !dbg !3372, !llvm.loop !3373

for.end:                                          ; preds = %for.cond
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3375
  ret void, !dbg !3376
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @hash_rtx(%struct.rtx_def*, i32, i32*, i32*, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @exp_equiv_p(%struct.rtx_def*, %struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @may_trap_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_assign_to_reg_without_clobbers_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.st_expr* @st_expr_entry(%struct.rtx_def* %x) unnamed_addr #4 !dbg !3377 {
entry:
  %do_not_record_p = alloca i32, align 4
  %e = alloca %struct.st_expr, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3381, metadata !DIExpression()), !dbg !3387
  %0 = bitcast i32* %do_not_record_p to i8*, !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3388
  call void @llvm.dbg.value(metadata i32 0, metadata !3382, metadata !DIExpression()), !dbg !3387
  store i32 0, i32* %do_not_record_p, align 4, !dbg !3389
  %1 = bitcast %struct.st_expr* %e to i8*, !dbg !3390
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3390
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3391
  %bf.load = load i32, i32* %2, align 8, !dbg !3391
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3391
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3391
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !3382, metadata !DIExpression(DW_OP_deref)), !dbg !3387
  %call = call i32 @hash_rtx(%struct.rtx_def* %x, i32 %bf.clear, i32* nonnull %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !3392
  call void @llvm.dbg.value(metadata i32 %call, metadata !3384, metadata !DIExpression()), !dbg !3387
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %e, i64 0, i32 0, !dbg !3393
  store %struct.rtx_def* %x, %struct.rtx_def** %pattern, align 8, !dbg !3394
  %3 = load %struct.htab*, %struct.htab** @store_motion_mems_table, align 8, !dbg !3395
  %call1 = call i8** @htab_find_slot_with_hash(%struct.htab* %3, i8* nonnull %1, i32 %call, i32 1) #6, !dbg !3396
  call void @llvm.dbg.value(metadata i8** %call1, metadata !3385, metadata !DIExpression()), !dbg !3387
  %4 = load i8*, i8** %call1, align 8, !dbg !3397
  %tobool = icmp eq i8* %4, null, !dbg !3397
  br i1 %tobool, label %if.end, label %if.then, !dbg !3399

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !3400

if.end:                                           ; preds = %entry
  %call2 = call i8* @xmalloc(i64 56) #6, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3383, metadata !DIExpression()), !dbg !3387
  %5 = load i64, i64* bitcast (%struct.st_expr** @store_motion_mems to i64*), align 8, !dbg !3402
  %next = getelementptr inbounds i8, i8* %call2, i64 32, !dbg !3403
  %6 = bitcast i8* %next to i64*, !dbg !3404
  store i64 %5, i64* %6, align 8, !dbg !3404
  %pattern3 = bitcast i8* %call2 to %struct.rtx_def**, !dbg !3405
  store %struct.rtx_def* %x, %struct.rtx_def** %pattern3, align 8, !dbg !3406
  %pattern_regs = getelementptr inbounds i8, i8* %call2, i64 8, !dbg !3407
  %7 = bitcast i8* %pattern_regs to %struct.rtx_def**, !dbg !3407
  store %struct.rtx_def* null, %struct.rtx_def** %7, align 8, !dbg !3408
  %antic_stores = getelementptr inbounds i8, i8* %call2, i64 16, !dbg !3409
  %8 = bitcast i8* %antic_stores to %struct.rtx_def**, !dbg !3409
  store %struct.rtx_def* null, %struct.rtx_def** %8, align 8, !dbg !3410
  %avail_stores = getelementptr inbounds i8, i8* %call2, i64 24, !dbg !3411
  %9 = bitcast i8* %avail_stores to %struct.rtx_def**, !dbg !3411
  store %struct.rtx_def* null, %struct.rtx_def** %9, align 8, !dbg !3412
  %reaching_reg = getelementptr inbounds i8, i8* %call2, i64 48, !dbg !3413
  %10 = bitcast i8* %reaching_reg to %struct.rtx_def**, !dbg !3413
  store %struct.rtx_def* null, %struct.rtx_def** %10, align 8, !dbg !3414
  %index = getelementptr inbounds i8, i8* %call2, i64 40, !dbg !3415
  %11 = bitcast i8* %index to i32*, !dbg !3415
  store i32 0, i32* %11, align 8, !dbg !3416
  %hash_index = getelementptr inbounds i8, i8* %call2, i64 44, !dbg !3417
  %12 = bitcast i8* %hash_index to i32*, !dbg !3417
  store i32 %call, i32* %12, align 4, !dbg !3418
  store i8* %call2, i8** bitcast (%struct.st_expr** @store_motion_mems to i8**), align 8, !dbg !3419
  store i8* %call2, i8** %call1, align 8, !dbg !3420
  br label %cleanup, !dbg !3421

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi i8* [ %4, %if.then ], [ %call2, %if.end ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.st_expr*, !dbg !3387
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3422
  ret %struct.st_expr* %retval.0, !dbg !3422
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @extract_mentioned_regs(%struct.rtx_def* %x) unnamed_addr #4 !dbg !3423 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %mentioned_regs = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3427, metadata !DIExpression()), !dbg !3429
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = bitcast %struct.rtx_def** %mentioned_regs to i8*, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3428, metadata !DIExpression()), !dbg !3429
  store %struct.rtx_def* null, %struct.rtx_def** %mentioned_regs, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata %struct.rtx_def** %x.addr, metadata !3427, metadata !DIExpression(DW_OP_deref)), !dbg !3429
  %call = call i32 @for_each_rtx(%struct.rtx_def** nonnull %x.addr, i32 (%struct.rtx_def**, i8*)* nonnull @extract_mentioned_regs_1, i8* nonnull %0) #6, !dbg !3432
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mentioned_regs, align 8, !dbg !3433
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3428, metadata !DIExpression()), !dbg !3429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3434
  ret %struct.rtx_def* %1, !dbg !3435
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @store_killed_before(%struct.rtx_def* %x, %struct.rtx_def* %x_regs, %struct.rtx_def* %insn, %struct.basic_block_def* %bb, i32* %regs_set_before) unnamed_addr #4 !dbg !3436 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3446, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x_regs, metadata !3447, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3448, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32* %regs_set_before, metadata !3450, metadata !DIExpression()), !dbg !3452
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3453
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3453
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3453
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !3453
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3451, metadata !DIExpression()), !dbg !3452
  %call = tail call fastcc zeroext i8 @store_ops_ok(%struct.rtx_def* %x_regs, i32* %regs_set_before) #7, !dbg !3454
  %tobool = icmp eq i8 %call, 0, !dbg !3454
  br i1 %tobool, label %cleanup, label %for.cond.preheader, !dbg !3456

for.cond.preheader:                               ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3457
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3457
  br label %for.cond, !dbg !3460

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %insn.addr.0 = phi %struct.rtx_def* [ %5, %for.inc ], [ %insn, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0, metadata !3448, metadata !DIExpression()), !dbg !3452
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3461
  %cmp = icmp eq %struct.rtx_def* %insn.addr.0, %3, !dbg !3462
  br i1 %cmp, label %cleanup.loopexit, label %for.body, !dbg !3460

for.body:                                         ; preds = %for.cond
  %call1 = tail call fastcc zeroext i8 @store_killed_in_insn(%struct.rtx_def* %x, %struct.rtx_def* %x_regs, %struct.rtx_def* %insn.addr.0, i32 1) #7, !dbg !3463
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3463
  br i1 %tobool2, label %for.inc, label %cleanup.loopexit, !dbg !3465

for.inc:                                          ; preds = %for.body
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3466
  %rt_rtx8 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3466
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3448, metadata !DIExpression()), !dbg !3452
  br label %for.cond, !dbg !3467, !llvm.loop !3468

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !3470

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3452
  ret i8 %retval.0, !dbg !3470
}

declare dso_local %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @store_killed_after(%struct.rtx_def* %x, %struct.rtx_def* %x_regs, %struct.rtx_def* %insn, %struct.basic_block_def* %bb, i32* %regs_set_after, %struct.rtx_def** %fail_insn) unnamed_addr #4 !dbg !3471 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3475, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x_regs, metadata !3476, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3477, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32* %regs_set_after, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.rtx_def** %fail_insn, metadata !3480, metadata !DIExpression()), !dbg !3483
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3484
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3484
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3484
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !3484
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3481, metadata !DIExpression()), !dbg !3483
  %call = tail call fastcc zeroext i8 @store_ops_ok(%struct.rtx_def* %x_regs, i32* %regs_set_after) #7, !dbg !3485
  %tobool = icmp eq i8 %call, 0, !dbg !3485
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !3487

for.cond.preheader:                               ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3488
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3488
  br label %for.cond, !dbg !3491

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq %struct.rtx_def** %fail_insn, null, !dbg !3492
  br i1 %tobool1, label %cleanup, label %if.then2, !dbg !3495

if.then2:                                         ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %fail_insn, align 8, !dbg !3496
  br label %cleanup, !dbg !3497

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %act.0 = phi %struct.rtx_def* [ %5, %for.inc ], [ %1, %for.cond.preheader ], !dbg !3498
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act.0, metadata !3482, metadata !DIExpression()), !dbg !3483
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3499
  %cmp = icmp eq %struct.rtx_def* %act.0, %3, !dbg !3500
  br i1 %cmp, label %cleanup.loopexit, label %for.body, !dbg !3491

for.body:                                         ; preds = %for.cond
  %call4 = tail call fastcc zeroext i8 @store_killed_in_insn(%struct.rtx_def* %x, %struct.rtx_def* %x_regs, %struct.rtx_def* %act.0, i32 0) #7, !dbg !3501
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3501
  br i1 %tobool5, label %for.inc, label %if.then6, !dbg !3503

if.then6:                                         ; preds = %for.body
  %act.0.lcssa3 = phi %struct.rtx_def* [ %act.0, %for.body ], !dbg !3498
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act.0.lcssa3, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act.0.lcssa3, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.rtx_def* %act.0.lcssa3, metadata !3482, metadata !DIExpression()), !dbg !3483
  %tobool7 = icmp eq %struct.rtx_def** %fail_insn, null, !dbg !3504
  br i1 %tobool7, label %cleanup, label %if.then8, !dbg !3507

if.then8:                                         ; preds = %if.then6
  store %struct.rtx_def* %act.0.lcssa3, %struct.rtx_def** %fail_insn, align 8, !dbg !3508
  br label %cleanup, !dbg !3509

for.inc:                                          ; preds = %for.body
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %act.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3510
  %rt_rtx14 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3510
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx14, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3482, metadata !DIExpression()), !dbg !3483
  br label %for.cond, !dbg !3511, !llvm.loop !3512

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3514

cleanup:                                          ; preds = %cleanup.loopexit, %if.then6, %if.then, %if.then8, %if.then2
  %retval.0 = phi i8 [ 1, %if.then2 ], [ 1, %if.then ], [ 1, %if.then8 ], [ 1, %if.then6 ], [ 0, %cleanup.loopexit ], !dbg !3483
  ret i8 %retval.0, !dbg !3514
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @extract_mentioned_regs_1(%struct.rtx_def** %loc, i8* %data) #4 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3519, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %data, metadata !3520, metadata !DIExpression()), !dbg !3522
  %0 = bitcast i8* %data to %struct.rtx_def**, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %0, metadata !3521, metadata !DIExpression()), !dbg !3522
  %1 = bitcast %struct.rtx_def** %loc to i32**, !dbg !3524
  %2 = load i32*, i32** %1, align 8, !dbg !3524
  %bf.load = load i32, i32* %2, align 8, !dbg !3524
  %bf.clear = and i32 %bf.load, 65535, !dbg !3524
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3524
  br i1 %cmp, label %if.then, label %if.end, !dbg !3526

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %2 to %struct.rtx_def*, !dbg !3526
  %4 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8, !dbg !3527
  %call = tail call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %3, %struct.rtx_def* %4) #6, !dbg !3528
  store %struct.rtx_def* %call, %struct.rtx_def** %0, align 8, !dbg !3529
  br label %if.end, !dbg !3530

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3531
}

declare dso_local %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @store_ops_ok(%struct.rtx_def* %x, i32* %regs_set) unnamed_addr #4 !dbg !3532 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3536, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32* %regs_set, metadata !3537, metadata !DIExpression()), !dbg !3539
  br label %for.cond, !dbg !3540

for.cond:                                         ; preds = %for.inc, %entry
  %x.addr.0 = phi %struct.rtx_def* [ %x, %entry ], [ %3, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !3536, metadata !DIExpression()), !dbg !3539
  %tobool = icmp eq %struct.rtx_def* %x.addr.0, null, !dbg !3541
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3541

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3543
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3543
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3543
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3538, metadata !DIExpression()), !dbg !3539
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %0) #7, !dbg !3546
  %idxprom = zext i32 %call to i64, !dbg !3548
  %arrayidx1 = getelementptr inbounds i32, i32* %regs_set, i64 %idxprom, !dbg !3548
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !3548
  %tobool2 = icmp eq i32 %1, 0, !dbg !3548
  br i1 %tobool2, label %for.inc, label %cleanup, !dbg !3549

for.inc:                                          ; preds = %for.body
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3550
  %rt_rtx6 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3550
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx6, align 8, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3536, metadata !DIExpression()), !dbg !3539
  br label %for.cond, !dbg !3551, !llvm.loop !3552

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !3539
  ret i8 %retval.0, !dbg !3554
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @store_killed_in_insn(%struct.rtx_def* %x, %struct.rtx_def* %x_regs, %struct.rtx_def* %insn, i32 %after) unnamed_addr #4 !dbg !3555 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3559, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x_regs, metadata !3560, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3561, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 %after, metadata !3562, metadata !DIExpression()), !dbg !3571
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3572
  %bf.load = load i32, i32* %0, align 8, !dbg !3572
  %bf.clear = and i32 %bf.load, 65535, !dbg !3572
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3572
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3572

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3572
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3572

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3572
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3572

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3572
  br i1 %cmp11, label %land.lhs.true, label %cleanup104, !dbg !3572

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %cmp14 = icmp eq i32 %bf.clear, 7, !dbg !3572
  br i1 %cmp14, label %cleanup104, label %if.end, !dbg !3574

if.end:                                           ; preds = %land.lhs.true
  %cmp17 = icmp eq i32 %bf.clear, 10, !dbg !3575
  br i1 %cmp17, label %if.then18, label %if.end46, !dbg !3577

if.then18:                                        ; preds = %if.end
  %bf.clear20 = and i32 %bf.load, 67108864, !dbg !3578
  %tobool = icmp eq i32 %bf.clear20, 0, !dbg !3578
  br i1 %tobool, label %cleanup104, label %for.cond.preheader, !dbg !3581

for.cond.preheader:                               ; preds = %if.then18
  br label %for.cond, !dbg !3582

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %reg.0 = phi %struct.rtx_def* [ %6, %for.inc ], [ %x_regs, %for.cond.preheader ], !dbg !3584
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !3563, metadata !DIExpression()), !dbg !3571
  %tobool23 = icmp eq %struct.rtx_def* %reg.0, null, !dbg !3582
  br i1 %tobool23, label %cleanup104.loopexit, label %for.body, !dbg !3582

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3585
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3585
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3585
  %call = tail call %struct.rtx_def* @find_base_term(%struct.rtx_def* %1) #6, !dbg !3588
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3564, metadata !DIExpression()), !dbg !3571
  %tobool24 = icmp eq %struct.rtx_def* %call, null, !dbg !3589
  br i1 %tobool24, label %cleanup104.loopexit, label %lor.lhs.false25, !dbg !3591

lor.lhs.false25:                                  ; preds = %for.body
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 0, !dbg !3592
  %bf.load26 = load i32, i32* %2, align 8, !dbg !3592
  %bf.clear27 = and i32 %bf.load26, 65535, !dbg !3592
  %cmp28 = icmp eq i32 %bf.clear27, 6, !dbg !3593
  br i1 %cmp28, label %land.lhs.true29, label %for.inc, !dbg !3594

land.lhs.true29:                                  ; preds = %lor.lhs.false25
  %bf.clear32 = and i32 %bf.load26, 16711680, !dbg !3595
  %cmp33 = icmp eq i32 %bf.clear32, 1048576, !dbg !3596
  br i1 %cmp33, label %land.lhs.true34, label %for.inc, !dbg !3597

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %arrayidx37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3598
  %rt_rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**, !dbg !3598
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx38, align 8, !dbg !3598
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !3599
  %cmp39 = icmp eq %struct.rtx_def* %3, %4, !dbg !3600
  br i1 %cmp39, label %cleanup104.loopexit, label %for.inc, !dbg !3601

for.inc:                                          ; preds = %lor.lhs.false25, %land.lhs.true29, %land.lhs.true34
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3602
  %rt_rtx45 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3602
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !3602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3563, metadata !DIExpression()), !dbg !3571
  br label %for.cond, !dbg !3603, !llvm.loop !3604

if.end46:                                         ; preds = %if.end
  %u47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3606
  %7 = getelementptr inbounds %union.u, %union.u* %u47, i64 1, i32 0, i32 0, i64 0, !dbg !3606
  %rt_rtx50 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !3606
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50, align 8, !dbg !3606
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3566, metadata !DIExpression()), !dbg !3571
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !3607
  %bf.load51 = load i32, i32* %9, align 8, !dbg !3607
  %bf.clear52 = and i32 %bf.load51, 65535, !dbg !3607
  %cmp53 = icmp eq i32 %bf.clear52, 23, !dbg !3608
  br i1 %cmp53, label %if.then54, label %if.else, !dbg !3609

if.then54:                                        ; preds = %if.end46
  %call55 = tail call fastcc zeroext i8 @store_killed_in_pat(%struct.rtx_def* %x, %struct.rtx_def* %8, i32 %after) #7, !dbg !3610
  %tobool56 = icmp eq i8 %call55, 0, !dbg !3610
  br i1 %tobool56, label %if.end90, label %cleanup104, !dbg !3613

if.else:                                          ; preds = %if.end46
  %cmp61 = icmp eq i32 %bf.clear52, 15, !dbg !3614
  br i1 %cmp61, label %for.cond63.preheader, label %if.else80, !dbg !3615

for.cond63.preheader:                             ; preds = %if.else
  %arrayidx71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3616
  %rt_rtvec72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**, !dbg !3616
  br label %for.cond63, !dbg !3620

for.cond63:                                       ; preds = %for.cond63.preheader, %for.inc78
  %indvars.iv = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next, %for.inc78 ], !dbg !3621
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3567, metadata !DIExpression()), !dbg !3622
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec72, align 8, !dbg !3623
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i64 0, i32 0, !dbg !3623
  %11 = load i32, i32* %num_elem, align 8, !dbg !3623
  %12 = sext i32 %11 to i64, !dbg !3624
  %cmp67 = icmp slt i64 %indvars.iv, %12, !dbg !3624
  br i1 %cmp67, label %for.body68, label %cleanup, !dbg !3620

for.body68:                                       ; preds = %for.cond63
  %arrayidx73 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i64 0, i32 1, i64 %indvars.iv, !dbg !3616
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx73, align 8, !dbg !3616
  %call74 = tail call fastcc zeroext i8 @store_killed_in_pat(%struct.rtx_def* %x, %struct.rtx_def* %13, i32 %after) #7, !dbg !3625
  %tobool75 = icmp eq i8 %call74, 0, !dbg !3625
  br i1 %tobool75, label %for.inc78, label %cleanup, !dbg !3626

for.inc78:                                        ; preds = %for.body68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3567, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3622
  br label %for.cond63, !dbg !3628, !llvm.loop !3629

cleanup:                                          ; preds = %for.body68, %for.cond63
  %cleanup.dest.slot.0 = phi i1 [ false, %for.body68 ], [ true, %for.cond63 ]
  br i1 %cleanup.dest.slot.0, label %if.end90, label %cleanup104

if.else80:                                        ; preds = %if.else
  %call85 = tail call fastcc zeroext i8 @find_loads(%struct.rtx_def* %8, %struct.rtx_def* %x, i32 %after) #7, !dbg !3631
  %tobool86 = icmp eq i8 %call85, 0, !dbg !3631
  br i1 %tobool86, label %if.end90, label %cleanup104, !dbg !3633

if.end90:                                         ; preds = %if.then54, %if.else80, %cleanup
  %call91 = tail call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn) #6, !dbg !3634
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call91, metadata !3565, metadata !DIExpression()), !dbg !3571
  %tobool92 = icmp eq %struct.rtx_def* %call91, null, !dbg !3635
  br i1 %tobool92, label %cleanup104, label %if.end94, !dbg !3637

if.end94:                                         ; preds = %if.end90
  %arrayidx97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call91, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3638
  %rt_rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**, !dbg !3638
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx98, align 8, !dbg !3638
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !3565, metadata !DIExpression()), !dbg !3571
  %call99 = tail call i32 @exp_equiv_p(%struct.rtx_def* %14, %struct.rtx_def* %x, i32 0, i8 zeroext 1) #6, !dbg !3639
  %tobool100 = icmp eq i32 %call99, 0, !dbg !3639
  br i1 %tobool100, label %if.end102, label %cleanup104, !dbg !3641

if.end102:                                        ; preds = %if.end94
  %call103 = tail call fastcc zeroext i8 @find_loads(%struct.rtx_def* %14, %struct.rtx_def* %x, i32 %after) #7, !dbg !3642
  br label %cleanup104, !dbg !3643

cleanup104.loopexit:                              ; preds = %land.lhs.true34, %for.cond, %for.body
  %retval.1.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ], [ 1, %land.lhs.true34 ]
  br label %cleanup104, !dbg !3644

cleanup104:                                       ; preds = %cleanup104.loopexit, %if.then18, %if.then54, %if.end94, %if.end90, %if.else80, %lor.lhs.false8, %land.lhs.true, %cleanup, %if.end102
  %retval.1 = phi i8 [ %call103, %if.end102 ], [ 1, %cleanup ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false8 ], [ 1, %if.then18 ], [ 1, %if.then54 ], [ 1, %if.else80 ], [ 0, %if.end90 ], [ 0, %if.end94 ], [ %retval.1.ph, %cleanup104.loopexit ], !dbg !3571
  ret i8 %retval.1, !dbg !3644
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3645 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3649, metadata !DIExpression()), !dbg !3650
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3651
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3651
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3651
  ret i32 %0, !dbg !3652
}

declare dso_local %struct.rtx_def* @find_base_term(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @store_killed_in_pat(%struct.rtx_def* %x, %struct.rtx_def* %pat, i32 %after) unnamed_addr #0 !dbg !3653 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3657, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !3658, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i32 %after, metadata !3659, metadata !DIExpression()), !dbg !3663
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pat, i64 0, i32 0, !dbg !3664
  %bf.load = load i32, i32* %0, align 8, !dbg !3664
  %bf.clear = and i32 %bf.load, 65535, !dbg !3664
  %cmp = icmp eq i32 %bf.clear, 23, !dbg !3665
  br i1 %cmp, label %if.then, label %if.end25, !dbg !3666

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pat, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3667
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3667
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3667
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3660, metadata !DIExpression()), !dbg !3668
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3669
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3669
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3669
  %cmp3 = icmp eq i32 %bf.clear2, 120, !dbg !3671
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !3672

if.then4:                                         ; preds = %if.then
  %arrayidx7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3673
  %rt_rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**, !dbg !3673
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !3673
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3660, metadata !DIExpression()), !dbg !3668
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3674
  %bf.load9.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3676
  br label %if.end, !dbg !3677

if.end:                                           ; preds = %if.then4, %if.then
  %bf.load9 = phi i32 [ %bf.load9.pre, %if.then4 ], [ %bf.load1, %if.then ], !dbg !3676
  %dest.0 = phi %struct.rtx_def* [ %3, %if.then4 ], [ %1, %if.then ], !dbg !3668
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.0, metadata !3660, metadata !DIExpression()), !dbg !3668
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !3676
  %cmp11 = icmp eq i32 %bf.clear10, 43, !dbg !3676
  br i1 %cmp11, label %land.lhs.true, label %if.end24, !dbg !3678

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @exp_equiv_p(%struct.rtx_def* %dest.0, %struct.rtx_def* %x, i32 0, i8 zeroext 1) #6, !dbg !3679
  %tobool = icmp eq i32 %call, 0, !dbg !3679
  br i1 %tobool, label %if.then12, label %if.end24, !dbg !3680

if.then12:                                        ; preds = %land.lhs.true
  %tobool13 = icmp eq i32 %after, 0, !dbg !3681
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !3684

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i32 @output_dependence(%struct.rtx_def* %dest.0, %struct.rtx_def* %x) #6, !dbg !3685
  %tobool16 = icmp eq i32 %call15, 0, !dbg !3685
  br i1 %tobool16, label %if.end24, label %cleanup, !dbg !3688

if.else:                                          ; preds = %if.then12
  %call19 = tail call i32 @output_dependence(%struct.rtx_def* %x, %struct.rtx_def* %dest.0) #6, !dbg !3689
  %tobool20 = icmp eq i32 %call19, 0, !dbg !3689
  br i1 %tobool20, label %if.end24, label %cleanup, !dbg !3692

if.end24:                                         ; preds = %if.then14, %if.else, %land.lhs.true, %if.end
  br label %cleanup, !dbg !3693

cleanup:                                          ; preds = %if.then14, %if.else, %if.end24
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end24 ], [ false, %if.then14 ], [ false, %if.else ]
  br i1 %cleanup.dest.slot.0, label %if.end25, label %return

if.end25:                                         ; preds = %cleanup, %entry
  %call26 = tail call fastcc zeroext i8 @find_loads(%struct.rtx_def* %pat, %struct.rtx_def* %x, i32 %after) #7, !dbg !3694
  %tobool27 = icmp ne i8 %call26, 0, !dbg !3694
  %. = zext i1 %tobool27 to i8, !dbg !3663
  br label %return, !dbg !3663

return:                                           ; preds = %if.end25, %cleanup
  %retval.1 = phi i8 [ 1, %cleanup ], [ %., %if.end25 ]
  ret i8 %retval.1, !dbg !3696
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @find_loads(%struct.rtx_def* %x, %struct.rtx_def* %store_pattern, i32 %after) unnamed_addr #4 !dbg !3697 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3699, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata %struct.rtx_def* %store_pattern, metadata !3700, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %after, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3706
  %tobool = icmp eq %struct.rtx_def* %x, null, !dbg !3707
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3709

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3710
  %bf.load = load i32, i32* %0, align 8, !dbg !3710
  %bf.clear = and i32 %bf.load, 65535, !dbg !3710
  %cmp = icmp eq i32 %bf.clear, 23, !dbg !3712
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3713

if.then1:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3714
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3714
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3699, metadata !DIExpression()), !dbg !3706
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3715
  %bf.load3.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3717
  br label %if.end2, !dbg !3718

if.end2:                                          ; preds = %if.then1, %if.end
  %bf.load3 = phi i32 [ %bf.load3.pre, %if.then1 ], [ %bf.load, %if.end ], !dbg !3717
  %x.addr.0 = phi %struct.rtx_def* [ %2, %if.then1 ], [ %x, %if.end ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !3699, metadata !DIExpression()), !dbg !3706
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 0, !dbg !3717
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !3717
  %cmp5 = icmp eq i32 %bf.clear4, 43, !dbg !3717
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !3719

if.then6:                                         ; preds = %if.end2
  %call = tail call fastcc zeroext i8 @load_kills_store(%struct.rtx_def* %x.addr.0, %struct.rtx_def* %store_pattern, i32 %after) #7, !dbg !3720
  %tobool7 = icmp eq i8 %call, 0, !dbg !3720
  br i1 %tobool7, label %if.then6.if.end10_crit_edge, label %cleanup, !dbg !3723

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  %bf.load11.pre = load i32, i32* %3, align 8, !dbg !3724
  %.pre = and i32 %bf.load11.pre, 65535, !dbg !3724
  br label %if.end10, !dbg !3723

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end2
  %bf.clear12.pre-phi = phi i32 [ %.pre, %if.then6.if.end10_crit_edge ], [ %bf.clear4, %if.end2 ], !dbg !3724
  %idxprom = zext i32 %bf.clear12.pre-phi to i64, !dbg !3724
  %arrayidx13 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3724
  %4 = load i8*, i8** %arrayidx13, align 8, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %4, metadata !3702, metadata !DIExpression()), !dbg !3706
  %arrayidx17 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3725
  %5 = load i8, i8* %arrayidx17, align 1, !dbg !3725
  call void @llvm.dbg.value(metadata i8 %5, metadata !3703, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  %u40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, !dbg !3727
  %fld41 = bitcast %union.u* %u40 to [1 x %union.rtunion_def]*, !dbg !3727
  %6 = zext i8 %5 to i64, !dbg !3733
  br label %for.cond, !dbg !3733

for.cond:                                         ; preds = %for.inc61, %if.end10
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc61 ], [ %6, %if.end10 ]
  %ret.0 = phi i32 [ %ret.3, %for.inc61 ], [ 0, %if.end10 ], !dbg !3706
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 undef, metadata !3703, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  %cmp18 = icmp sgt i64 %indvars.iv3, 0, !dbg !3735
  %tobool20 = icmp eq i32 %ret.0, 0, !dbg !3736
  %or.cond = and i1 %cmp18, %tobool20, !dbg !3737
  br i1 %or.cond, label %for.body, label %for.end63, !dbg !3737

for.body:                                         ; preds = %for.cond
  %arrayidx22 = getelementptr inbounds i8, i8* %4, i64 %indvars.iv.next4, !dbg !3738
  %7 = load i8, i8* %arrayidx22, align 1, !dbg !3738
  %cmp24 = icmp eq i8 %7, 101, !dbg !3739
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !3740

if.then26:                                        ; preds = %for.body
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i64 0, i64 %indvars.iv.next4, !dbg !3741
  %rt_rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**, !dbg !3741
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx31, align 8, !dbg !3741
  %call32 = tail call fastcc zeroext i8 @find_loads(%struct.rtx_def* %8, %struct.rtx_def* %store_pattern, i32 %after) #7, !dbg !3742
  %conv33 = zext i8 %call32 to i32, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !3705, metadata !DIExpression()), !dbg !3706
  br label %for.inc61, !dbg !3743

if.else:                                          ; preds = %for.body
  %cmp37 = icmp eq i8 %7, 69, !dbg !3744
  br i1 %cmp37, label %if.then39, label %for.inc61, !dbg !3745

if.then39:                                        ; preds = %if.else
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i64 0, i64 %indvars.iv.next4, !dbg !3746
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtvec_def**, !dbg !3746
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3746
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i64 0, i32 0, !dbg !3746
  %10 = load i32, i32* %num_elem, align 8, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %10, metadata !3704, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  %11 = sext i32 %10 to i64, !dbg !3747
  br label %for.cond45, !dbg !3747

for.cond45:                                       ; preds = %for.body48, %if.then39
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body48 ], [ %11, %if.then39 ]
  %ret.1 = phi i32 [ %or58, %for.body48 ], [ 0, %if.then39 ], !dbg !3706
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %ret.1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 undef, metadata !3704, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  %cmp46 = icmp sgt i64 %indvars.iv, 0, !dbg !3748
  br i1 %cmp46, label %for.body48, label %for.inc61.loopexit, !dbg !3750

for.body48:                                       ; preds = %for.cond45
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3751
  %arrayidx55 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3751
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx55, align 8, !dbg !3751
  %call56 = tail call fastcc zeroext i8 @find_loads(%struct.rtx_def* %13, %struct.rtx_def* %store_pattern, i32 %after) #7, !dbg !3752
  %conv57 = zext i8 %call56 to i32, !dbg !3752
  %or58 = or i32 %ret.1, %conv57, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %or58, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 undef, metadata !3704, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  br label %for.cond45, !dbg !3754, !llvm.loop !3755

for.inc61.loopexit:                               ; preds = %for.cond45
  %ret.1.lcssa = phi i32 [ %ret.1, %for.cond45 ], !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  br label %for.inc61, !dbg !3757

for.inc61:                                        ; preds = %for.inc61.loopexit, %if.then26, %if.else
  %ret.3 = phi i32 [ %conv33, %if.then26 ], [ 0, %if.else ], [ %ret.1.lcssa, %for.inc61.loopexit ], !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.3, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 undef, metadata !3703, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3706
  br label %for.cond, !dbg !3757, !llvm.loop !3758

for.end63:                                        ; preds = %for.cond
  %ret.0.lcssa = phi i32 [ %ret.0, %for.cond ], !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %ret.0.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3706
  %conv64 = trunc i32 %ret.0.lcssa to i8, !dbg !3761
  br label %cleanup, !dbg !3762

cleanup:                                          ; preds = %if.then6, %entry, %for.end63
  %retval.0 = phi i8 [ %conv64, %for.end63 ], [ 0, %entry ], [ 1, %if.then6 ], !dbg !3706
  ret i8 %retval.0, !dbg !3763
}

declare dso_local %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @output_dependence(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @load_kills_store(%struct.rtx_def* %x, %struct.rtx_def* %store_pattern, i32 %after) unnamed_addr #4 !dbg !3764 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3766, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata %struct.rtx_def* %store_pattern, metadata !3767, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 %after, metadata !3768, metadata !DIExpression()), !dbg !3769
  %tobool = icmp eq i32 %after, 0, !dbg !3770
  br i1 %tobool, label %if.else, label %if.then, !dbg !3772

if.then:                                          ; preds = %entry
  %call = tail call i32 @anti_dependence(%struct.rtx_def* %x, %struct.rtx_def* %store_pattern) #6, !dbg !3773
  br label %return, !dbg !3774

if.else:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %store_pattern, i64 0, i32 0, !dbg !3775
  %bf.load = load i32, i32* %0, align 8, !dbg !3775
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3775
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3775
  %call1 = tail call i32 @true_dependence(%struct.rtx_def* %store_pattern, i32 %bf.clear, %struct.rtx_def* %x, i8 (%struct.rtx_def*, i8)* nonnull @rtx_addr_varies_p) #6, !dbg !3776
  br label %return, !dbg !3777

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  %retval.0 = trunc i32 %retval.0.in to i8, !dbg !3778
  ret i8 %retval.0, !dbg !3779
}

declare dso_local i32 @anti_dependence(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, i8 (%struct.rtx_def*, i8)*) local_unnamed_addr #1

declare dso_local zeroext i8 @rtx_addr_varies_p(%struct.rtx_def*, i8 zeroext) #1

declare dso_local void @free_INSN_LIST_list(%struct.rtx_def**) local_unnamed_addr #1

declare dso_local void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) local_unnamed_addr #1

declare dso_local void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_reg_rtx_and_attrs(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_store_insn(%struct.rtx_def* %reg, %struct.rtx_def* %del, %struct.basic_block_def* %bb, %struct.st_expr* %smexpr) unnamed_addr #4 !dbg !3780 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3784, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata %struct.rtx_def* %del, metadata !3785, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3786, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata %struct.st_expr* %smexpr, metadata !3787, metadata !DIExpression()), !dbg !3793
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %smexpr, i64 0, i32 0, !dbg !3794
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3794
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3789, metadata !DIExpression()), !dbg !3793
  br label %cond.true, !dbg !3795

lor.lhs.false:                                    ; No predecessors!
  br label %cond.true, !dbg !3795

lor.lhs.false4:                                   ; No predecessors!
  br label %cond.true, !dbg !3795

lor.lhs.false8:                                   ; No predecessors!
  br label %cond.true, !dbg !3795

cond.true:                                        ; preds = %lor.lhs.false4, %lor.lhs.false, %entry, %lor.lhs.false8
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %del, i64 0, i32 1, !dbg !3795
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3795
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3795
  %3 = load i32*, i32** %2, align 8, !dbg !3795
  %bf.load12 = load i32, i32* %3, align 8, !dbg !3795
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3795
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !3795
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !3795
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !3795

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %del, %struct.rtx_def* %4) #6, !dbg !3795
  br label %cond.end25, !dbg !3795

cond.end25:                                       ; preds = %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], !dbg !3795
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3795
  %rt_rtx30 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3795
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !3795
  %call31 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %reg, %struct.rtx_def* %6) #6, !dbg !3796
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call31, metadata !3788, metadata !DIExpression()), !dbg !3793
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %smexpr, i64 0, i32 2, !dbg !3797
  br label %for.cond, !dbg !3799

for.cond:                                         ; preds = %for.inc, %cond.end25
  %ptr.0.in = phi %struct.rtx_def** [ %antic_stores, %cond.end25 ], [ %rt_rtx44, %for.inc ]
  %ptr.0 = load %struct.rtx_def*, %struct.rtx_def** %ptr.0.in, align 8, !dbg !3800
  call void @llvm.dbg.value(metadata %struct.rtx_def* %ptr.0, metadata !3792, metadata !DIExpression()), !dbg !3793
  %tobool = icmp eq %struct.rtx_def* %ptr.0, null, !dbg !3801
  br i1 %tobool, label %for.end.loopexit, label %for.body, !dbg !3801

for.body:                                         ; preds = %for.cond
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ptr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3802
  %rt_rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**, !dbg !3802
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx35, align 8, !dbg !3802
  %cmp36 = icmp eq %struct.rtx_def* %7, %del, !dbg !3805
  br i1 %cmp36, label %if.then, label %for.inc, !dbg !3806

if.then:                                          ; preds = %for.body
  %rt_rtx35.lcssa = phi %struct.rtx_def** [ %rt_rtx35, %for.body ], !dbg !3802
  store %struct.rtx_def* %call31, %struct.rtx_def** %rt_rtx35.lcssa, align 8, !dbg !3807
  br label %for.end, !dbg !3809

for.inc:                                          ; preds = %for.body
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %ptr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3810
  %rt_rtx44 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3810
  br label %for.cond, !dbg !3811, !llvm.loop !3812

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !3814

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %9 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 2, !dbg !3814
  %10 = bitcast %union.rtunion_def* %9 to i64*, !dbg !3814
  %11 = load i64, i64* %10, align 8, !dbg !3814
  %u49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call31, i64 0, i32 1, !dbg !3815
  %12 = getelementptr inbounds %union.u, %union.u* %u49, i64 1, i32 0, i32 0, i64 2, !dbg !3815
  %13 = bitcast %union.rtunion_def* %12 to i64*, !dbg !3816
  store i64 %11, i64* %13, align 8, !dbg !3816
  %call53 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call31, %struct.rtx_def* %del) #6, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call53, metadata !3788, metadata !DIExpression()), !dbg !3793
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3818
  %tobool54 = icmp eq %struct._IO_FILE* %14, null, !dbg !3818
  br i1 %tobool54, label %if.end59, label %if.then55, !dbg !3820

if.then55:                                        ; preds = %for.end
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3821
  %15 = load i32, i32* %index, align 8, !dbg !3821
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %15) #6, !dbg !3823
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3824
  tail call void @print_inline_rtx(%struct._IO_FILE* %16, %struct.rtx_def* %del, i32 6) #6, !dbg !3825
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3826
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3827
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3828
  tail call void @print_inline_rtx(%struct._IO_FILE* %18, %struct.rtx_def* %call53, i32 6) #6, !dbg !3829
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3830
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3831
  br label %if.end59, !dbg !3832

if.end59:                                         ; preds = %for.end, %if.then55
  %call60 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %del) #6, !dbg !3833
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3834
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3834
  br label %for.cond61, !dbg !3837

for.cond61:                                       ; preds = %for.inc156, %if.end59
  %insn.0 = phi %struct.rtx_def* [ %call53, %if.end59 ], [ %34, %for.inc156 ], !dbg !3793
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3788, metadata !DIExpression()), !dbg !3793
  %20 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3838
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %20, i64 0, i32 1, !dbg !3838
  %21 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3838
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3838
  %rt_rtx65 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !3838
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx65, align 8, !dbg !3838
  %cmp66 = icmp eq %struct.rtx_def* %insn.0, %23, !dbg !3839
  br i1 %cmp66, label %for.end161, label %for.body67, !dbg !3840

for.body67:                                       ; preds = %for.cond61
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3841
  %bf.load68 = load i32, i32* %24, align 8, !dbg !3841
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !3841
  %cmp70 = icmp eq i32 %bf.clear69, 8, !dbg !3841
  br i1 %cmp70, label %land.lhs.true, label %lor.lhs.false71, !dbg !3841

lor.lhs.false71:                                  ; preds = %for.body67
  %cmp74 = icmp eq i32 %bf.clear69, 7, !dbg !3841
  br i1 %cmp74, label %land.lhs.true, label %lor.lhs.false75, !dbg !3841

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %cmp78 = icmp eq i32 %bf.clear69, 9, !dbg !3841
  br i1 %cmp78, label %land.lhs.true, label %lor.lhs.false79, !dbg !3841

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %cmp82 = icmp eq i32 %bf.clear69, 10, !dbg !3841
  br i1 %cmp82, label %land.lhs.true, label %for.inc156, !dbg !3841

land.lhs.true:                                    ; preds = %lor.lhs.false79, %lor.lhs.false75, %lor.lhs.false71, %for.body67
  %cmp85 = icmp eq i32 %bf.clear69, 7, !dbg !3841
  br i1 %cmp85, label %for.inc156, label %if.then86, !dbg !3843

if.then86:                                        ; preds = %land.lhs.true
  br i1 %cmp70, label %cond.true102, label %lor.lhs.false90, !dbg !3844

lor.lhs.false90:                                  ; preds = %if.then86
  br i1 false, label %lor.lhs.false90.cond.true102_crit_edge, label %lor.lhs.false94, !dbg !3844

lor.lhs.false90.cond.true102_crit_edge:           ; preds = %lor.lhs.false90
  br label %cond.true102, !dbg !3844

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %cmp97 = icmp eq i32 %bf.clear69, 9, !dbg !3844
  br i1 %cmp97, label %cond.true102, label %lor.lhs.false98, !dbg !3844

lor.lhs.false98:                                  ; preds = %lor.lhs.false94
  %cmp101 = icmp eq i32 %bf.clear69, 10, !dbg !3844
  br i1 %cmp101, label %cond.true102, label %cond.end124, !dbg !3844

cond.true102:                                     ; preds = %lor.lhs.false90.cond.true102_crit_edge, %lor.lhs.false98, %lor.lhs.false94, %if.then86
  %u103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3844
  %25 = getelementptr inbounds %union.u, %union.u* %u103, i64 1, i32 0, i32 0, i64 0, !dbg !3844
  %26 = bitcast %union.rtunion_def* %25 to i32**, !dbg !3844
  %27 = load i32*, i32** %26, align 8, !dbg !3844
  %bf.load107 = load i32, i32* %27, align 8, !dbg !3844
  %bf.clear108 = and i32 %bf.load107, 65535, !dbg !3844
  %cmp109 = icmp eq i32 %bf.clear108, 23, !dbg !3844
  %28 = bitcast i32* %27 to %struct.rtx_def*, !dbg !3844
  br i1 %cmp109, label %cond.end124, label %cond.false115, !dbg !3844

cond.false115:                                    ; preds = %cond.true102
  %call120 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn.0, %struct.rtx_def* %28) #6, !dbg !3844
  br label %cond.end124, !dbg !3844

cond.end124:                                      ; preds = %lor.lhs.false98, %cond.false115, %cond.true102
  %cond125 = phi %struct.rtx_def* [ %call120, %cond.false115 ], [ %28, %cond.true102 ], [ null, %lor.lhs.false98 ], !dbg !3844
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond125, metadata !3791, metadata !DIExpression()), !dbg !3793
  %tobool126 = icmp eq %struct.rtx_def* %cond125, null, !dbg !3846
  br i1 %tobool126, label %for.inc156, label %if.end128, !dbg !3848

if.end128:                                        ; preds = %cond.end124
  %arrayidx131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond125, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3849
  %rt_rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**, !dbg !3849
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx132, align 8, !dbg !3849
  %call133 = tail call i32 @exp_equiv_p(%struct.rtx_def* %29, %struct.rtx_def* %0, i32 0, i8 zeroext 1) #6, !dbg !3851
  %tobool134 = icmp eq i32 %call133, 0, !dbg !3851
  br i1 %tobool134, label %if.end136, label %cleanup.cont.loopexit, !dbg !3852

if.end136:                                        ; preds = %if.end128
  %call137 = tail call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn.0) #6, !dbg !3853
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call137, metadata !3790, metadata !DIExpression()), !dbg !3793
  %tobool138 = icmp eq %struct.rtx_def* %call137, null, !dbg !3854
  br i1 %tobool138, label %for.inc156, label %lor.lhs.false139, !dbg !3856

lor.lhs.false139:                                 ; preds = %if.end136
  %arrayidx142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call137, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3857
  %rt_rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**, !dbg !3857
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx143, align 8, !dbg !3857
  %call144 = tail call i32 @exp_equiv_p(%struct.rtx_def* %30, %struct.rtx_def* %0, i32 0, i8 zeroext 1) #6, !dbg !3858
  %tobool145 = icmp eq i32 %call144, 0, !dbg !3858
  br i1 %tobool145, label %for.inc156, label %if.end147, !dbg !3859

if.end147:                                        ; preds = %lor.lhs.false139
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3860
  %tobool148 = icmp eq %struct._IO_FILE* %31, null, !dbg !3860
  br i1 %tobool148, label %if.end154, label %if.then149, !dbg !3862

if.then149:                                       ; preds = %if.end147
  %arrayidx152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3863
  %rt_int = bitcast %union.rtunion_def* %arrayidx152 to i32*, !dbg !3863
  %32 = load i32, i32* %rt_int, align 8, !dbg !3863
  %call153 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %32) #6, !dbg !3864
  br label %if.end154, !dbg !3864

if.end154:                                        ; preds = %if.end147, %if.then149
  tail call void @remove_note(%struct.rtx_def* %insn.0, %struct.rtx_def* nonnull %call137) #6, !dbg !3865
  br label %for.inc156, !dbg !3866

for.inc156:                                       ; preds = %lor.lhs.false139, %if.end136, %cond.end124, %lor.lhs.false79, %land.lhs.true, %if.end154
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3867
  %rt_rtx160 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**, !dbg !3867
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx160, align 8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.rtx_def* %34, metadata !3788, metadata !DIExpression()), !dbg !3793
  br label %for.cond61, !dbg !3868, !llvm.loop !3869

for.end161:                                       ; preds = %for.cond61
  tail call fastcc void @remove_reachable_equiv_notes(%struct.basic_block_def* %bb, %struct.st_expr* %smexpr) #7, !dbg !3871
  br label %cleanup.cont, !dbg !3872

cleanup.cont.loopexit:                            ; preds = %if.end128
  br label %cleanup.cont, !dbg !3872

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %for.end161
  ret void, !dbg !3872
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3873 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3877, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3878, metadata !DIExpression()), !dbg !3882
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3883
  %0 = load i8*, i8** %popcount, align 8, !dbg !3883
  %tobool = icmp eq i8* %0, null, !dbg !3884
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3885

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3886
  %.pre2 = zext i32 %.pre to i64, !dbg !3887
  %.pre3 = shl i64 1, %.pre2, !dbg !3887
  %.pre4 = lshr i32 %bitno, 6, !dbg !3888
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3889
  br label %if.end7, !dbg !3885

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3890
  %idxprom = zext i32 %div to i64, !dbg !3890
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3890
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3890
  %rem = and i32 %bitno, 63, !dbg !3890
  %sh_prom = zext i32 %rem to i64, !dbg !3890
  %2 = shl i64 1, %sh_prom, !dbg !3891
  %3 = and i64 %1, %2, !dbg !3891
  %tobool1 = icmp eq i64 %3, 0, !dbg !3891
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3893

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3894
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3895
  %inc = add i8 %4, 1, !dbg !3895
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3895
  br label %if.end7, !dbg !3894

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3889
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3887
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3889
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3896
  %or = or i64 %5, %shl.pre-phi, !dbg !3896
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3896
  ret void, !dbg !3897
}

declare dso_local void @dump_sbitmap_vector(%struct._IO_FILE*, i8*, i8*, %struct.simple_bitmap_def**, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @print_inline_rtx(%struct._IO_FILE*, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_reachable_equiv_notes(%struct.basic_block_def* %bb, %struct.st_expr* %smexpr) unnamed_addr #4 !dbg !3898 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp164 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3902, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata %struct.st_expr* %smexpr, metadata !3903, metadata !DIExpression()), !dbg !3913
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3914
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3914
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3915
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3915
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3915
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !3915
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !3915
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3) #6, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3908, metadata !DIExpression()), !dbg !3913
  %pattern = getelementptr inbounds %struct.st_expr, %struct.st_expr* %smexpr, i64 0, i32 0, !dbg !3917
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8, !dbg !3917
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3912, metadata !DIExpression()), !dbg !3913
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3918
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3918
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3918
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 3, !dbg !3918
  %7 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3918
  %conv = sext i32 %7 to i64, !dbg !3918
  %mul = shl nsw i64 %conv, 4, !dbg !3918
  %call3 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3918
  %8 = bitcast i8* %call3 to %struct.edge_iterator*, !dbg !3918
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %8, metadata !3904, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 0, metadata !3906, metadata !DIExpression()), !dbg !3913
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3919
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3919
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3919
  %call4 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3919
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3919
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 0, !dbg !3919
  store i32 %11, i32* %10, align 8, !dbg !3919
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3919
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 1, !dbg !3919
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %12, align 8, !dbg !3919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3919
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3919
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3920
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3921
  %15 = load i32, i32* %14, align 8, !dbg !3921
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3921
  %17 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3921
  %call5 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %15, %struct.VEC_edge_gc** %17) #7, !dbg !3921
  %tobool = icmp eq %struct.VEC_edge_gc* %call5, null, !dbg !3921
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3921

cond.true:                                        ; preds = %entry
  %call6 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %15, %struct.VEC_edge_gc** %17) #7, !dbg !3921
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call6, i64 0, i32 0, !dbg !3921
  br label %cond.end, !dbg !3921

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3921
  %call7 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3921
  %cmp = icmp eq i32 %call7, 0, !dbg !3922
  br i1 %cmp, label %cond.end20, label %cond.true9, !dbg !3921

cond.true9:                                       ; preds = %cond.end
  %call10 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %15, %struct.VEC_edge_gc** %17) #7, !dbg !3923
  %tobool11 = icmp eq %struct.VEC_edge_gc* %call10, null, !dbg !3923
  br i1 %tobool11, label %cond.end16, label %cond.true12, !dbg !3923

cond.true12:                                      ; preds = %cond.true9
  %call13 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %15, %struct.VEC_edge_gc** %17) #7, !dbg !3923
  %base14 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call13, i64 0, i32 0, !dbg !3923
  br label %cond.end16, !dbg !3923

cond.end16:                                       ; preds = %cond.true9, %cond.true12
  %cond17 = phi %struct.VEC_edge_base* [ %base14, %cond.true12 ], [ null, %cond.true9 ], !dbg !3923
  %call18 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond17, i32 0) #7, !dbg !3923
  br label %cond.end20, !dbg !3921

cond.end20:                                       ; preds = %cond.end, %cond.end16
  %cond21 = phi %struct.edge_def* [ %call18, %cond.end16 ], [ null, %cond.end ], !dbg !3921
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond21, metadata !3907, metadata !DIExpression()), !dbg !3913
  %index53 = getelementptr inbounds %struct.st_expr, %struct.st_expr* %smexpr, i64 0, i32 5, !dbg !3924
  %antic_stores = getelementptr inbounds %struct.st_expr, %struct.st_expr* %smexpr, i64 0, i32 2, !dbg !3927
  %18 = bitcast %struct.edge_iterator* %tmp164 to i8*, !dbg !3930
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp164, i64 0, i32 0, !dbg !3930
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp164, i64 0, i32 1, !dbg !3930
  br label %while.cond, !dbg !3933

while.cond:                                       ; preds = %while.cond.backedge, %cond.end20
  %act.0 = phi %struct.edge_def* [ %cond21, %cond.end20 ], [ %act.0.be, %while.cond.backedge ], !dbg !3913
  %sp.0 = phi i32 [ 0, %cond.end20 ], [ %sp.0.be, %while.cond.backedge ], !dbg !3913
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !3906, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata %struct.edge_def* %act.0, metadata !3907, metadata !DIExpression()), !dbg !3913
  %tobool22 = icmp eq %struct.edge_def* %act.0, null, !dbg !3934
  br i1 %tobool22, label %if.then, label %if.end26, !dbg !3936

if.then:                                          ; preds = %while.cond
  %tobool23 = icmp eq i32 %sp.0, 0, !dbg !3937
  br i1 %tobool23, label %if.then24, label %if.end, !dbg !3940

if.then24:                                        ; preds = %if.then
  call void @free(i8* %call3) #6, !dbg !3941
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3943
  %21 = load i8*, i8** %popcount, align 8, !dbg !3943
  call void @free(i8* %21) #6, !dbg !3943
  %22 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3943
  call void @free(i8* %22) #6, !dbg !3943
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3944
  ret void, !dbg !3944

if.end:                                           ; preds = %if.then
  %dec = add nsw i32 %sp.0, -1, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3906, metadata !DIExpression()), !dbg !3913
  %idxprom = sext i32 %dec to i64, !dbg !3946
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %8, i64 %idxprom, i32 0, !dbg !3947
  %24 = load i32, i32* %23, align 8, !dbg !3947
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %8, i64 %idxprom, i32 1, !dbg !3947
  %26 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !3947
  %call25 = call fastcc %struct.edge_def* @ei_edge(i32 %24, %struct.VEC_edge_gc** %26) #7, !dbg !3947
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !3907, metadata !DIExpression()), !dbg !3913
  br label %if.end26, !dbg !3948

if.end26:                                         ; preds = %while.cond, %if.end
  %act.1 = phi %struct.edge_def* [ %act.0, %while.cond ], [ %call25, %if.end ], !dbg !3913
  %sp.1 = phi i32 [ %sp.0, %while.cond ], [ %dec, %if.end ], !dbg !3913
  call void @llvm.dbg.value(metadata i32 %sp.1, metadata !3906, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata %struct.edge_def* %act.1, metadata !3907, metadata !DIExpression()), !dbg !3913
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %act.1, i64 0, i32 1, !dbg !3949
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3949
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %27, metadata !3902, metadata !DIExpression()), !dbg !3913
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3950
  %cfg28 = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 1, !dbg !3950
  %29 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28, align 8, !dbg !3950
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 1, !dbg !3950
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3950
  %cmp29 = icmp eq %struct.basic_block_def* %27, %30, !dbg !3952
  br i1 %cmp29, label %if.then35, label %lor.lhs.false, !dbg !3953

lor.lhs.false:                                    ; preds = %if.end26
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 9, !dbg !3954
  %31 = load i32, i32* %index, align 8, !dbg !3954
  %div = lshr i32 %31, 6, !dbg !3954
  %idxprom31 = zext i32 %div to i64, !dbg !3954
  %arrayidx32 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 3, i64 %idxprom31, !dbg !3954
  %32 = load i64, i64* %arrayidx32, align 8, !dbg !3954
  %rem = and i32 %31, 63, !dbg !3954
  %sh_prom = zext i32 %rem to i64, !dbg !3954
  %33 = shl i64 1, %sh_prom, !dbg !3954
  %34 = and i64 %32, %33, !dbg !3954
  %tobool34 = icmp eq i64 %34, 0, !dbg !3954
  br i1 %tobool34, label %if.end47, label %if.then35, !dbg !3955

if.then35:                                        ; preds = %lor.lhs.false, %if.end26
  %35 = load i32, i32* %14, align 8, !dbg !3956
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3956
  %call36 = call fastcc zeroext i8 @ei_end_p(i32 %35, %struct.VEC_edge_gc** %36) #7, !dbg !3956
  %tobool37 = icmp eq i8 %call36, 0, !dbg !3956
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !3959

if.then38:                                        ; preds = %if.then35
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3905, metadata !DIExpression(DW_OP_deref)), !dbg !3913
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3960
  br label %if.end39, !dbg !3960

if.end39:                                         ; preds = %if.then35, %if.then38
  %37 = load i32, i32* %14, align 8, !dbg !3961
  %38 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3961
  %call40 = call fastcc zeroext i8 @ei_end_p(i32 %37, %struct.VEC_edge_gc** %38) #7, !dbg !3961
  %tobool41 = icmp eq i8 %call40, 0, !dbg !3961
  br i1 %tobool41, label %cond.true42, label %cond.end45, !dbg !3962

cond.true42:                                      ; preds = %if.end39
  %39 = load i32, i32* %14, align 8, !dbg !3963
  %40 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3963
  %call43 = call fastcc %struct.edge_def* @ei_edge(i32 %39, %struct.VEC_edge_gc** %40) #7, !dbg !3963
  br label %cond.end45, !dbg !3962

cond.end45:                                       ; preds = %if.end39, %cond.true42
  %cond46 = phi %struct.edge_def* [ %call43, %cond.true42 ], [ null, %if.end39 ], !dbg !3962
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond46, metadata !3907, metadata !DIExpression()), !dbg !3913
  br label %while.cond.backedge, !dbg !3964

while.cond.backedge:                              ; preds = %cond.end45, %if.end191
  %act.0.be = phi %struct.edge_def* [ %cond46, %cond.end45 ], [ %act.2, %if.end191 ]
  %sp.0.be = phi i32 [ %sp.1, %cond.end45 ], [ %sp.3, %if.end191 ]
  br label %while.cond, !dbg !3913, !llvm.loop !3965

if.end47:                                         ; preds = %lor.lhs.false
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %31) #7, !dbg !3967
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @st_antloc, align 8, !dbg !3968
  %42 = load i32, i32* %index, align 8, !dbg !3968
  %idxprom50 = sext i32 %42 to i64, !dbg !3968
  %arrayidx51 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %41, i64 %idxprom50, !dbg !3968
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx51, align 8, !dbg !3968
  %44 = load i32, i32* %index53, align 8, !dbg !3968
  %div54 = lshr i32 %44, 6, !dbg !3968
  %idxprom55 = zext i32 %div54 to i64, !dbg !3968
  %arrayidx56 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %43, i64 0, i32 3, i64 %idxprom55, !dbg !3968
  %45 = load i64, i64* %arrayidx56, align 8, !dbg !3968
  %rem58 = and i32 %44, 63, !dbg !3968
  %sh_prom59 = zext i32 %rem58 to i64, !dbg !3968
  %46 = shl i64 1, %sh_prom59, !dbg !3968
  %47 = and i64 %45, %46, !dbg !3968
  %tobool62 = icmp eq i64 %47, 0, !dbg !3968
  br i1 %tobool62, label %if.else, label %if.then63, !dbg !3969

if.then63:                                        ; preds = %if.end47
  br label %for.cond, !dbg !3970

for.cond:                                         ; preds = %for.inc, %if.then63
  %last.0.in = phi %struct.rtx_def** [ %antic_stores, %if.then63 ], [ %rt_rtx73, %for.inc ]
  %last.0 = load %struct.rtx_def*, %struct.rtx_def** %last.0.in, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last.0, metadata !3909, metadata !DIExpression()), !dbg !3913
  %arrayidx64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %last.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3971
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**, !dbg !3971
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3971
  %arrayidx67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i64 0, i32 1, i32 0, i32 1, !dbg !3971
  %rt_bb = bitcast %struct.object_block** %arrayidx67 to %struct.basic_block_def**, !dbg !3971
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3971
  %cmp68 = icmp eq %struct.basic_block_def* %49, %27, !dbg !3973
  br i1 %cmp68, label %for.end, label %for.inc, !dbg !3974

for.inc:                                          ; preds = %for.cond
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %last.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3975
  %rt_rtx73 = bitcast %union.rtunion_def* %50 to %struct.rtx_def**, !dbg !3975
  br label %for.cond, !dbg !3976, !llvm.loop !3977

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.rtx_def* [ %48, %for.cond ], !dbg !3971
  %il83.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 7, !dbg !3979
  %rtl84.phi.trans.insert = bitcast %union.basic_block_il_dependent* %il83.phi.trans.insert to %struct.rtl_bb_info**, !dbg !3979
  %.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl84.phi.trans.insert, align 8, !dbg !3981
  br label %if.end82, !dbg !3982

if.else:                                          ; preds = %if.end47
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 7, !dbg !3983
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3983
  %51 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3983
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %51, i64 0, i32 1, !dbg !3983
  %52 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3983
  %53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3983
  %rt_rtx81 = bitcast %union.rtunion_def* %53 to %struct.rtx_def**, !dbg !3983
  %last.1.pre = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx81, align 8, !dbg !3924
  br label %if.end82

if.end82:                                         ; preds = %if.else, %for.end
  %54 = phi %struct.rtl_bb_info* [ %.pre, %for.end ], [ %51, %if.else ], !dbg !3981
  %last.1 = phi %struct.rtx_def* [ %.lcssa, %for.end ], [ %last.1.pre, %if.else ], !dbg !3924
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last.1, metadata !3909, metadata !DIExpression()), !dbg !3913
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %54, i64 0, i32 0, !dbg !3981
  br label %for.cond85, !dbg !3984

for.cond85:                                       ; preds = %for.inc130, %if.end82
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end82 ], [ %rt_rtx134, %for.inc130 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3979
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3910, metadata !DIExpression()), !dbg !3913
  %cmp86 = icmp eq %struct.rtx_def* %insn.0, %last.1, !dbg !3985
  br i1 %cmp86, label %for.end135, label %for.body88, !dbg !3987

for.body88:                                       ; preds = %for.cond85
  %55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3988
  %bf.load = load i32, i32* %55, align 8, !dbg !3988
  %bf.clear = and i32 %bf.load, 65535, !dbg !3988
  %cmp89 = icmp eq i32 %bf.clear, 8, !dbg !3988
  br i1 %cmp89, label %land.lhs.true, label %lor.lhs.false91, !dbg !3988

lor.lhs.false91:                                  ; preds = %for.body88
  %cmp94 = icmp eq i32 %bf.clear, 7, !dbg !3988
  br i1 %cmp94, label %land.lhs.true, label %lor.lhs.false96, !dbg !3988

lor.lhs.false96:                                  ; preds = %lor.lhs.false91
  %cmp99 = icmp eq i32 %bf.clear, 9, !dbg !3988
  br i1 %cmp99, label %land.lhs.true, label %lor.lhs.false101, !dbg !3988

lor.lhs.false101:                                 ; preds = %lor.lhs.false96
  %cmp104 = icmp eq i32 %bf.clear, 10, !dbg !3988
  br i1 %cmp104, label %land.lhs.true, label %for.inc130, !dbg !3988

land.lhs.true:                                    ; preds = %lor.lhs.false101, %lor.lhs.false96, %lor.lhs.false91, %for.body88
  %cmp108 = icmp eq i32 %bf.clear, 7, !dbg !3988
  br i1 %cmp108, label %for.inc130, label %if.then110, !dbg !3990

if.then110:                                       ; preds = %land.lhs.true
  %call111 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn.0) #6, !dbg !3991
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call111, metadata !3911, metadata !DIExpression()), !dbg !3913
  %tobool112 = icmp eq %struct.rtx_def* %call111, null, !dbg !3993
  br i1 %tobool112, label %for.inc130, label %lor.lhs.false113, !dbg !3995

lor.lhs.false113:                                 ; preds = %if.then110
  %arrayidx116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call111, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3996
  %rt_rtx117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.rtx_def**, !dbg !3996
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx117, align 8, !dbg !3996
  %call118 = call i32 @exp_equiv_p(%struct.rtx_def* %56, %struct.rtx_def* %4, i32 0, i8 zeroext 1) #6, !dbg !3997
  %tobool119 = icmp eq i32 %call118, 0, !dbg !3997
  br i1 %tobool119, label %for.inc130, label %if.end121, !dbg !3998

if.end121:                                        ; preds = %lor.lhs.false113
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3999
  %tobool122 = icmp eq %struct._IO_FILE* %57, null, !dbg !3999
  br i1 %tobool122, label %if.end128, label %if.then123, !dbg !4001

if.then123:                                       ; preds = %if.end121
  %arrayidx126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4002
  %rt_int = bitcast %union.rtunion_def* %arrayidx126 to i32*, !dbg !4002
  %58 = load i32, i32* %rt_int, align 8, !dbg !4002
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %58) #6, !dbg !4003
  br label %if.end128, !dbg !4003

if.end128:                                        ; preds = %if.end121, %if.then123
  call void @remove_note(%struct.rtx_def* %insn.0, %struct.rtx_def* nonnull %call111) #6, !dbg !4004
  br label %for.inc130, !dbg !4005

for.inc130:                                       ; preds = %lor.lhs.false113, %if.then110, %lor.lhs.false101, %land.lhs.true, %if.end128
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4006
  %rt_rtx134 = bitcast %union.rtunion_def* %59 to %struct.rtx_def**, !dbg !4006
  br label %for.cond85, !dbg !4007, !llvm.loop !4008

for.end135:                                       ; preds = %for.cond85
  %60 = load i32, i32* %14, align 8, !dbg !4010
  %61 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4010
  %call136 = call fastcc zeroext i8 @ei_end_p(i32 %60, %struct.VEC_edge_gc** %61) #7, !dbg !4010
  %tobool137 = icmp eq i8 %call136, 0, !dbg !4010
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !4012

if.then138:                                       ; preds = %for.end135
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3905, metadata !DIExpression(DW_OP_deref)), !dbg !3913
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4013
  br label %if.end139, !dbg !4013

if.end139:                                        ; preds = %for.end135, %if.then138
  %62 = load i32, i32* %14, align 8, !dbg !4014
  %63 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4014
  %call140 = call fastcc zeroext i8 @ei_end_p(i32 %62, %struct.VEC_edge_gc** %63) #7, !dbg !4014
  %tobool141 = icmp eq i8 %call140, 0, !dbg !4014
  br i1 %tobool141, label %cond.true142, label %cond.end145, !dbg !4015

cond.true142:                                     ; preds = %if.end139
  %64 = load i32, i32* %14, align 8, !dbg !4016
  %65 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4016
  %call143 = call fastcc %struct.edge_def* @ei_edge(i32 %64, %struct.VEC_edge_gc** %65) #7, !dbg !4016
  br label %cond.end145, !dbg !4015

cond.end145:                                      ; preds = %if.end139, %cond.true142
  %cond146 = phi %struct.edge_def* [ %call143, %cond.true142 ], [ null, %if.end139 ], !dbg !4015
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond146, metadata !3907, metadata !DIExpression()), !dbg !3913
  %succs147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 1, !dbg !4017
  %66 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs147, align 8, !dbg !4017
  %tobool148 = icmp eq %struct.VEC_edge_gc* %66, null, !dbg !4017
  br i1 %tobool148, label %cond.end153, label %cond.true149, !dbg !4017

cond.true149:                                     ; preds = %cond.end145
  %base151 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %66, i64 0, i32 0, !dbg !4017
  br label %cond.end153, !dbg !4017

cond.end153:                                      ; preds = %cond.end145, %cond.true149
  %cond154 = phi %struct.VEC_edge_base* [ %base151, %cond.true149 ], [ null, %cond.end145 ], !dbg !4017
  %call155 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond154) #7, !dbg !4017
  %cmp156 = icmp eq i32 %call155, 0, !dbg !4018
  br i1 %cmp156, label %if.end191, label %if.then158, !dbg !4019

if.then158:                                       ; preds = %cond.end153
  %tobool159 = icmp eq %struct.edge_def* %cond146, null, !dbg !4020
  br i1 %tobool159, label %if.end163, label %if.then160, !dbg !4022

if.then160:                                       ; preds = %if.then158
  %inc = add nsw i32 %sp.1, 1, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3906, metadata !DIExpression()), !dbg !3913
  %idxprom161 = sext i32 %sp.1 to i64, !dbg !4024
  %arrayidx162 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %8, i64 %idxprom161, !dbg !4024
  %67 = bitcast %struct.edge_iterator* %arrayidx162 to i8*, !dbg !4025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !4025
  br label %if.end163, !dbg !4024

if.end163:                                        ; preds = %if.then158, %if.then160
  %sp.2 = phi i32 [ %inc, %if.then160 ], [ %sp.1, %if.then158 ], !dbg !3913
  call void @llvm.dbg.value(metadata i32 %sp.2, metadata !3906, metadata !DIExpression()), !dbg !3913
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4026
  %call166 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs147) #7, !dbg !4026
  %68 = extractvalue { i32, %struct.VEC_edge_gc** } %call166, 0, !dbg !4026
  store i32 %68, i32* %19, align 8, !dbg !4026
  %69 = extractvalue { i32, %struct.VEC_edge_gc** } %call166, 1, !dbg !4026
  store %struct.VEC_edge_gc** %69, %struct.VEC_edge_gc*** %20, align 8, !dbg !4026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !4026
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !4026
  %70 = load i32, i32* %14, align 8, !dbg !4027
  %71 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4027
  %call167 = call fastcc %struct.VEC_edge_gc* @ei_container(i32 %70, %struct.VEC_edge_gc** %71) #7, !dbg !4027
  %tobool168 = icmp eq %struct.VEC_edge_gc* %call167, null, !dbg !4027
  br i1 %tobool168, label %cond.end173, label %cond.true169, !dbg !4027

cond.true169:                                     ; preds = %if.end163
  %72 = load i32, i32* %14, align 8, !dbg !4027
  %73 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4027
  %call170 = call fastcc %struct.VEC_edge_gc* @ei_container(i32 %72, %struct.VEC_edge_gc** %73) #7, !dbg !4027
  %base171 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call170, i64 0, i32 0, !dbg !4027
  br label %cond.end173, !dbg !4027

cond.end173:                                      ; preds = %if.end163, %cond.true169
  %cond174 = phi %struct.VEC_edge_base* [ %base171, %cond.true169 ], [ null, %if.end163 ], !dbg !4027
  %call175 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond174) #7, !dbg !4027
  %cmp176 = icmp eq i32 %call175, 0, !dbg !4028
  br i1 %cmp176, label %if.end191, label %cond.true178, !dbg !4027

cond.true178:                                     ; preds = %cond.end173
  %74 = load i32, i32* %14, align 8, !dbg !4029
  %75 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4029
  %call179 = call fastcc %struct.VEC_edge_gc* @ei_container(i32 %74, %struct.VEC_edge_gc** %75) #7, !dbg !4029
  %tobool180 = icmp eq %struct.VEC_edge_gc* %call179, null, !dbg !4029
  br i1 %tobool180, label %cond.end185, label %cond.true181, !dbg !4029

cond.true181:                                     ; preds = %cond.true178
  %76 = load i32, i32* %14, align 8, !dbg !4029
  %77 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !4029
  %call182 = call fastcc %struct.VEC_edge_gc* @ei_container(i32 %76, %struct.VEC_edge_gc** %77) #7, !dbg !4029
  %base183 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call182, i64 0, i32 0, !dbg !4029
  br label %cond.end185, !dbg !4029

cond.end185:                                      ; preds = %cond.true178, %cond.true181
  %cond186 = phi %struct.VEC_edge_base* [ %base183, %cond.true181 ], [ null, %cond.true178 ], !dbg !4029
  %call187 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond186, i32 0) #7, !dbg !4029
  br label %if.end191, !dbg !4027

if.end191:                                        ; preds = %cond.end173, %cond.end153, %cond.end185
  %act.2 = phi %struct.edge_def* [ %cond146, %cond.end153 ], [ %call187, %cond.end185 ], [ null, %cond.end173 ], !dbg !4030
  %sp.3 = phi i32 [ %sp.1, %cond.end153 ], [ %sp.2, %cond.end185 ], [ %sp.2, %cond.end173 ], !dbg !3913
  call void @llvm.dbg.value(metadata i32 %sp.3, metadata !3906, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata %struct.edge_def* %act.2, metadata !3907, metadata !DIExpression()), !dbg !3913
  br label %while.cond.backedge, !dbg !3933
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !4031 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4035, metadata !DIExpression()), !dbg !4037
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4038
  store i32 0, i32* %index, align 8, !dbg !4039
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4040
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4041
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4042
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4042
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4042
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4043 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4049, metadata !DIExpression()), !dbg !4050
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4051
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4051

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4051
  %0 = load i32, i32* %num, align 8, !dbg !4051
  br label %cond.end, !dbg !4051

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4051
  ret i32 %cond, !dbg !4051
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4052 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4057
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4057

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4057
  br label %cond.end, !dbg !4057

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4058
  ret %struct.VEC_edge_gc* %0, !dbg !4059
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4060 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4065, metadata !DIExpression()), !dbg !4066
  br label %land.end, !dbg !4067

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4067
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4067
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4067
  ret %struct.edge_def* %0, !dbg !4067
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4068 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4073
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4073
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4073

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4073
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4073
  br label %cond.end, !dbg !4073

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4073
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4073
  ret %struct.edge_def* %call2, !dbg !4074
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4075 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4080
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4080
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4080

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4080
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4080
  br label %cond.end, !dbg !4080

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4080
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4080
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4081
  %conv3 = zext i1 %cmp to i8, !dbg !4082
  ret i8 %conv3, !dbg !4083
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4084 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4088, metadata !DIExpression()), !dbg !4089
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4090
  %0 = load i32, i32* %index, align 8, !dbg !4090
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4090
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4090
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !4090
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4090
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4090

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4090
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4090
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !4090
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4090
  br label %cond.end, !dbg !4090

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4090
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4090
  %cmp = icmp ult i32 %0, %call2, !dbg !4090
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4090

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4090
  br label %cond.end5, !dbg !4090

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4091
  %inc = add i32 %5, 1, !dbg !4091
  store i32 %inc, i32* %index, align 8, !dbg !4091
  ret void, !dbg !4092
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4093 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4098, metadata !DIExpression()), !dbg !4099
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4100
  %tobool = icmp eq i8 %call, 0, !dbg !4100
  br i1 %tobool, label %if.then, label %if.else, !dbg !4102

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4103
  br label %return, !dbg !4105

if.else:                                          ; preds = %entry
  br label %return, !dbg !4106

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4108
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4108
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4108
  ret i8 %retval.0, !dbg !4109
}

declare dso_local i32 @find_edge_index(%struct.edge_list*, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4110 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4112, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4113, metadata !DIExpression()), !dbg !4117
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4118
  %0 = load i8*, i8** %popcount, align 8, !dbg !4118
  %tobool = icmp eq i8* %0, null, !dbg !4119
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4120

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4121
  %.pre2 = zext i32 %.pre to i64, !dbg !4122
  %.pre3 = shl i64 1, %.pre2, !dbg !4122
  %.pre4 = lshr i32 %bitno, 6, !dbg !4123
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4124
  br label %if.end7, !dbg !4120

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4125
  %idxprom = zext i32 %div to i64, !dbg !4125
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4125
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4125
  %rem = and i32 %bitno, 63, !dbg !4125
  %sh_prom = zext i32 %rem to i64, !dbg !4125
  %2 = shl i64 1, %sh_prom, !dbg !4126
  %3 = and i64 %1, %2, !dbg !4126
  %tobool1 = icmp eq i64 %3, 0, !dbg !4126
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !4128

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4129
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4130
  %dec = add i8 %4, -1, !dbg !4130
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !4130
  br label %if.end7, !dbg !4129

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4124
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4122
  %neg = xor i64 %shl.pre-phi, -1, !dbg !4131
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4124
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4132
  %and14 = and i64 %5, %neg, !dbg !4132
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !4132
  ret void, !dbg !4133
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_insn_start_basic_block(%struct.rtx_def* %insn, %struct.basic_block_def* %bb) unnamed_addr #4 !dbg !4134 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4138, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4139, metadata !DIExpression()), !dbg !4142
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4143
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4143
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4143
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4143
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4143
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4143
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !4143
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4143
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !4140, metadata !DIExpression()), !dbg !4142
  br label %while.cond, !dbg !4144

while.cond:                                       ; preds = %if.end17, %entry
  %before.0 = phi %struct.rtx_def* [ %1, %entry ], [ %before.0.pre, %if.end17 ], !dbg !4142
  %prev.0 = phi %struct.rtx_def* [ %3, %entry ], [ %before.0, %if.end17 ], !dbg !4142
  call void @llvm.dbg.value(metadata %struct.rtx_def* %before.0, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.0, metadata !4140, metadata !DIExpression()), !dbg !4142
  %cmp = icmp eq %struct.rtx_def* %before.0, null, !dbg !4145
  br i1 %cmp, label %while.end, label %while.body, !dbg !4144

while.body:                                       ; preds = %while.cond
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %before.0, i64 0, i32 0, !dbg !4146
  %bf.load = load i32, i32* %4, align 8, !dbg !4146
  %bf.clear = and i32 %bf.load, 65535, !dbg !4146
  %cmp4 = icmp eq i32 %bf.clear, 12, !dbg !4146
  br i1 %cmp4, label %if.end, label %land.lhs.true, !dbg !4149

land.lhs.true:                                    ; preds = %while.body
  %cmp7 = icmp eq i32 %bf.clear, 13, !dbg !4150
  br i1 %cmp7, label %land.lhs.true8, label %while.end, !dbg !4150

land.lhs.true8:                                   ; preds = %land.lhs.true
  %u9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %before.0, i64 0, i32 1, !dbg !4150
  %5 = getelementptr inbounds %union.u, %union.u* %u9, i64 1, i32 0, i32 0, i64 0, !dbg !4150
  %rt_int = bitcast %union.rtunion_def* %5 to i32*, !dbg !4150
  %6 = load i32, i32* %rt_int, align 8, !dbg !4150
  %cmp12 = icmp eq i32 %6, 10, !dbg !4150
  br i1 %cmp12, label %if.end, label %while.end, !dbg !4151

if.end:                                           ; preds = %land.lhs.true8, %while.body
  call void @llvm.dbg.value(metadata %struct.rtx_def* %before.0, metadata !4140, metadata !DIExpression()), !dbg !4142
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !4152
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4152
  %cmp15 = icmp eq %struct.rtx_def* %before.0, %7, !dbg !4154
  br i1 %cmp15, label %while.end, label %if.end17, !dbg !4155

if.end17:                                         ; preds = %if.end
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %before.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4156
  %rt_rtx21 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !4156
  %before.0.pre = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx21, align 8, !dbg !4142
  br label %while.cond, !dbg !4144, !llvm.loop !4157

while.end:                                        ; preds = %while.cond, %if.end, %land.lhs.true, %land.lhs.true8
  %prev.1 = phi %struct.rtx_def* [ %prev.0, %while.cond ], [ %prev.0, %land.lhs.true8 ], [ %prev.0, %land.lhs.true ], [ %before.0, %if.end ], !dbg !4142
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.1, metadata !4140, metadata !DIExpression()), !dbg !4142
  %call = tail call %struct.rtx_def* @emit_insn_after_noloc(%struct.rtx_def* %insn, %struct.rtx_def* %prev.1, %struct.basic_block_def* %bb) #6, !dbg !4159
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !4138, metadata !DIExpression()), !dbg !4142
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4160
  %tobool = icmp eq %struct._IO_FILE* %9, null, !dbg !4160
  br i1 %tobool, label %if.end25, label %if.then22, !dbg !4162

if.then22:                                        ; preds = %while.end
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4163
  %10 = load i32, i32* %index, align 8, !dbg !4163
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i32 %10) #6, !dbg !4165
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4166
  tail call void @print_inline_rtx(%struct._IO_FILE* %11, %struct.rtx_def* %call, i32 6) #6, !dbg !4167
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4168
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4169
  br label %if.end25, !dbg !4170

if.end25:                                         ; preds = %while.end, %if.then22
  ret void, !dbg !4171
}

declare dso_local void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after_noloc(%struct.rtx_def*, %struct.rtx_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_store_motion_mems() unnamed_addr #4 !dbg !4172 {
entry:
  %0 = load %struct.htab*, %struct.htab** @store_motion_mems_table, align 8, !dbg !4176
  %tobool = icmp eq %struct.htab* %0, null, !dbg !4176
  br i1 %tobool, label %if.end, label %if.then, !dbg !4178

if.then:                                          ; preds = %entry
  tail call void @htab_delete(%struct.htab* nonnull %0) #6, !dbg !4179
  br label %if.end, !dbg !4179

if.end:                                           ; preds = %entry, %if.then
  store %struct.htab* null, %struct.htab** @store_motion_mems_table, align 8, !dbg !4180
  br label %while.cond, !dbg !4181

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.st_expr*, %struct.st_expr** @store_motion_mems, align 8, !dbg !4182
  %tobool1 = icmp eq %struct.st_expr* %1, null, !dbg !4181
  br i1 %tobool1, label %while.end, label %while.body, !dbg !4181

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.st_expr* %1, metadata !4174, metadata !DIExpression()), !dbg !4183
  %next = getelementptr inbounds %struct.st_expr, %struct.st_expr* %1, i64 0, i32 4, !dbg !4184
  %2 = bitcast %struct.st_expr** %next to i64*, !dbg !4184
  %3 = load i64, i64* %2, align 8, !dbg !4184
  store i64 %3, i64* bitcast (%struct.st_expr** @store_motion_mems to i64*), align 8, !dbg !4185
  tail call fastcc void @free_st_expr_entry(%struct.st_expr* nonnull %1) #7, !dbg !4186
  br label %while.cond, !dbg !4181, !llvm.loop !4187

while.end:                                        ; preds = %while.cond
  store %struct.st_expr* null, %struct.st_expr** @store_motion_mems, align 8, !dbg !4189
  ret void, !dbg !4190
}

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
!llvm.module.flags = !{!1975, !1976, !1977}
!llvm.ident = !{!1978}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_rtl_store_motion", scope: !2, file: !3, line: 1245, type: !1949, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710, globals: !1910, nameTableKind: None)
!3 = !DIFile(filename: "store-motion.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!710 = !{!711, !712, !713, !714, !717, !718, !7, !720, !567, !721, !1889, !189, !1898, !1902, !1903, !791}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!713 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !722, line: 50, baseType: !723)
!722 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !724, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !724, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !724, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !724, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !724, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !724, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !724, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !724, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !724, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !724, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !724, file: !568, line: 321, baseType: !737, size: 320, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !738)
!738 = !{!739, !1824, !1826, !1887, !1888}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !737, file: !568, line: 316, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 64, elements: !756)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !758, !759, !771, !774, !836, !1802, !1803, !1814, !1821}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !742, file: !568, line: 168, baseType: !713, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !742, file: !568, line: 169, baseType: !7, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !742, file: !568, line: 170, baseType: !718, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !742, file: !568, line: 171, baseType: !721, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !742, file: !568, line: 172, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !722, line: 53, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !751, file: !568, line: 360, baseType: !713, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !751, file: !568, line: 361, baseType: !755, size: 64, offset: 64)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 64, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 1)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !742, file: !568, line: 173, baseType: !189, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !742, file: !568, line: 174, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !761, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !761, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !761, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !761, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !761, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !761, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !761, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !761, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !742, file: !568, line: 175, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !568, line: 175, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !742, file: !568, line: 176, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !777, line: 75, size: 256, elements: !778)
!777 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!778 = !{!779, !794, !795, !796}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !776, file: !777, line: 76, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !777, line: 68, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !777, line: 63, size: 320, elements: !783)
!783 = !{!784, !786, !787, !788}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !777, line: 64, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !782, file: !777, line: 65, baseType: !785, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !782, file: !777, line: 66, baseType: !7, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !782, file: !777, line: 67, baseType: !789, size: 128, offset: 192)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 128, elements: !792)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !777, line: 29, baseType: !791)
!791 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!792 = !{!793}
!793 = !DISubrange(count: 2)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !776, file: !777, line: 77, baseType: !780, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !776, file: !777, line: 78, baseType: !7, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !776, file: !777, line: 79, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !777, line: 49, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !777, line: 45, size: 832, elements: !800)
!800 = !{!801, !802, !803}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !799, file: !777, line: 46, baseType: !785, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !799, file: !777, line: 47, baseType: !775, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !799, file: !777, line: 48, baseType: !804, size: 704, offset: 128)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !805, line: 164, size: 704, elements: !806)
!805 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!806 = !{!807, !809, !819, !820, !821, !822, !823, !824, !828, !832, !833, !834, !835}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !804, file: !805, line: 166, baseType: !808, size: 64)
!808 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !804, file: !805, line: 167, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !805, line: 157, size: 192, elements: !812)
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !811, file: !805, line: 159, baseType: !715, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !811, file: !805, line: 160, baseType: !810, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !811, file: !805, line: 161, baseType: !816, size: 32, offset: 128)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 32, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 4)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !804, file: !805, line: 168, baseType: !715, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !804, file: !805, line: 169, baseType: !715, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !804, file: !805, line: 170, baseType: !715, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !804, file: !805, line: 171, baseType: !808, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !804, file: !805, line: 172, baseType: !713, size: 32, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !804, file: !805, line: 176, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!810, !717, !808}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !804, file: !805, line: 177, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !717, !810}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !804, file: !805, line: 178, baseType: !717, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !804, file: !805, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !804, file: !805, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !804, file: !805, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !742, file: !568, line: 177, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !722, line: 56, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !840)
!840 = !{!841, !874, !880, !891, !910, !921, !926, !933, !939, !952, !964, !1002, !1007, !1035, !1043, !1044, !1049, !1058, !1064, !1069, !1073, !1077, !1438, !1487, !1493, !1499, !1506, !1532, !1546, !1563, !1575, !1597, !1612, !1784}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !839, file: !341, line: 3372, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !842, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !842, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !842, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !842, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !842, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !842, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !842, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !842, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !842, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !842, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !842, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !842, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !842, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !842, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !842, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !842, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !842, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !842, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !842, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !842, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !842, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !842, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !842, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !842, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !842, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !842, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !842, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !842, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !842, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !842, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !839, file: !341, line: 3373, baseType: !875, size: 192)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !875, file: !341, line: 403, baseType: !842, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !875, file: !341, line: 404, baseType: !837, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !341, line: 405, baseType: !837, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !839, file: !341, line: 3374, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !881, file: !341, line: 1385, baseType: !875, size: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !881, file: !341, line: 1386, baseType: !885, size: 128, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !886, line: 58, baseType: !887)
!886 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !886, line: 54, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !887, file: !886, line: 56, baseType: !791, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !887, file: !886, line: 57, baseType: !808, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !839, file: !341, line: 3375, baseType: !892, size: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !341, line: 1398, baseType: !875, size: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !892, file: !341, line: 1399, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !898, line: 52, size: 256, elements: !899)
!898 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!899 = !{!900, !901, !902, !903, !904, !905, !906}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !897, file: !898, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !897, file: !898, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !897, file: !898, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !897, file: !898, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !897, file: !898, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !897, file: !898, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !897, file: !898, line: 62, baseType: !907, size: 192, offset: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 192, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 3)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !839, file: !341, line: 3376, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !911, file: !341, line: 1409, baseType: !875, size: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !911, file: !341, line: 1410, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !917, line: 27, size: 192, elements: !918)
!917 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !916, file: !917, line: 29, baseType: !885, size: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !916, file: !917, line: 30, baseType: !189, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !839, file: !341, line: 3377, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !922, file: !341, line: 1438, baseType: !875, size: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !922, file: !341, line: 1439, baseType: !837, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !839, file: !341, line: 3378, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !341, line: 1419, baseType: !875, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !927, file: !341, line: 1420, baseType: !713, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !927, file: !341, line: 1421, baseType: !932, size: 8, offset: 224)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 8, elements: !756)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !839, file: !341, line: 3379, baseType: !934, size: 320)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !934, file: !341, line: 1429, baseType: !875, size: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !934, file: !341, line: 1430, baseType: !837, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !934, file: !341, line: 1431, baseType: !837, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !839, file: !341, line: 3380, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !940, file: !341, line: 1461, baseType: !875, size: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !940, file: !341, line: 1462, baseType: !944, size: 128, offset: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !945, line: 31, size: 128, elements: !946)
!945 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!946 = !{!947, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !944, file: !945, line: 32, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !944, file: !945, line: 33, baseType: !7, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !944, file: !945, line: 34, baseType: !7, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !839, file: !341, line: 3381, baseType: !953, size: 384)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !954)
!954 = !{!955, !956, !961, !962, !963}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !953, file: !341, line: 2508, baseType: !875, size: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !953, file: !341, line: 2509, baseType: !957, size: 32, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !958, line: 58, baseType: !959)
!958 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !960, line: 44, baseType: !7)
!960 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!961 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !953, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !953, file: !341, line: 2511, baseType: !837, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !953, file: !341, line: 2512, baseType: !837, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !839, file: !341, line: 3382, baseType: !965, size: 896)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !965, file: !341, line: 2653, baseType: !953, size: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !341, line: 2654, baseType: !837, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !965, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !965, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !965, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !965, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !965, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !965, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !965, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !965, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !965, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !965, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !965, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !965, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !965, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !965, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !965, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !965, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !965, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !965, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !965, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !965, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !965, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !965, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !965, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !965, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !965, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !965, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !965, file: !341, line: 2705, baseType: !837, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !965, file: !341, line: 2706, baseType: !837, size: 64, offset: 640)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !965, file: !341, line: 2707, baseType: !837, size: 64, offset: 704)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !965, file: !341, line: 2708, baseType: !837, size: 64, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !965, file: !341, line: 2711, baseType: !1000, size: 64, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !839, file: !341, line: 3383, baseType: !1003, size: 960)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1003, file: !341, line: 2757, baseType: !965, size: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1003, file: !341, line: 2758, baseType: !721, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !839, file: !341, line: 3384, baseType: !1008, size: 1472)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1009)
!1009 = !{!1010, !1031, !1032, !1033, !1034}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1008, file: !341, line: 3115, baseType: !1011, size: 1216)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1011, file: !341, line: 2985, baseType: !1003, size: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1011, file: !341, line: 2986, baseType: !837, size: 64, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1011, file: !341, line: 2987, baseType: !837, size: 64, offset: 1024)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1011, file: !341, line: 2988, baseType: !837, size: 64, offset: 1088)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1011, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1011, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1011, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1011, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1011, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1011, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1011, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1011, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1011, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1011, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1011, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1011, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1011, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1011, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1008, file: !341, line: 3117, baseType: !837, size: 64, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1008, file: !341, line: 3119, baseType: !837, size: 64, offset: 1280)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1008, file: !341, line: 3121, baseType: !837, size: 64, offset: 1344)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1008, file: !341, line: 3123, baseType: !837, size: 64, offset: 1408)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !839, file: !341, line: 3385, baseType: !1036, size: 1088)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1036, file: !341, line: 2875, baseType: !1003, size: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1036, file: !341, line: 2876, baseType: !721, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1036, file: !341, line: 2877, baseType: !1041, size: 64, offset: 1024)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !839, file: !341, line: 3386, baseType: !1011, size: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !839, file: !341, line: 3387, baseType: !1045, size: 1280)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1045, file: !341, line: 3094, baseType: !1011, size: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1045, file: !341, line: 3095, baseType: !1041, size: 64, offset: 1216)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !839, file: !341, line: 3388, baseType: !1050, size: 1216)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1050, file: !341, line: 2825, baseType: !965, size: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1050, file: !341, line: 2827, baseType: !837, size: 64, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1050, file: !341, line: 2828, baseType: !837, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1050, file: !341, line: 2829, baseType: !837, size: 64, offset: 1024)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1050, file: !341, line: 2830, baseType: !837, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1050, file: !341, line: 2831, baseType: !837, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !839, file: !341, line: 3389, baseType: !1059, size: 1024)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1059, file: !341, line: 2851, baseType: !1003, size: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1059, file: !341, line: 2852, baseType: !713, size: 32, offset: 960)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1059, file: !341, line: 2853, baseType: !713, size: 32, offset: 992)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !839, file: !341, line: 3390, baseType: !1065, size: 1024)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1065, file: !341, line: 2858, baseType: !1003, size: 960)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1065, file: !341, line: 2859, baseType: !1041, size: 64, offset: 960)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !839, file: !341, line: 3391, baseType: !1070, size: 960)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1070, file: !341, line: 2863, baseType: !1003, size: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !839, file: !341, line: 3392, baseType: !1074, size: 1472)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1074, file: !341, line: 3305, baseType: !1008, size: 1472)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !839, file: !341, line: 3393, baseType: !1078, size: 1792)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1079)
!1079 = !{!1080, !1081, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1078, file: !341, line: 3249, baseType: !1008, size: 1472)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1078, file: !341, line: 3251, baseType: !1082, size: 64, offset: 1472)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1084, line: 463, size: 1152, elements: !1085)
!1084 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1085 = !{!1086, !1250, !1354, !1355, !1358, !1361, !1362, !1363, !1364, !1365, !1366, !1390, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1083, file: !1084, line: 464, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1089)
!1089 = !{!1090, !1139, !1152, !1166, !1218, !1231}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1088, file: !318, line: 197, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1127, !1136, !1137, !1138}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1093, file: !318, line: 119, baseType: !1092, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1093, file: !318, line: 122, baseType: !1092, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1093, file: !318, line: 123, baseType: !1092, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1093, file: !318, line: 126, baseType: !713, size: 32, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1093, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1093, file: !318, line: 165, baseType: !1101, size: 192, offset: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1102)
!1102 = !{!1103, !1116, !1122}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1101, file: !318, line: 137, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1105)
!1105 = !{!1106, !1115}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1104, file: !318, line: 135, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1108, file: !318, line: 96, baseType: !1107, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1108, file: !318, line: 97, baseType: !1107, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1108, file: !318, line: 101, baseType: !837, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1108, file: !318, line: 106, baseType: !837, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1108, file: !318, line: 111, baseType: !837, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1104, file: !318, line: 136, baseType: !1107, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1101, file: !318, line: 151, baseType: !1117, size: 192)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1117, file: !318, line: 141, baseType: !837, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1117, file: !318, line: 145, baseType: !837, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1117, file: !318, line: 150, baseType: !713, size: 32, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1101, file: !318, line: 164, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1123, file: !318, line: 161, baseType: !837, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1123, file: !318, line: 163, baseType: !957, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1093, file: !318, line: 168, baseType: !1128, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1135}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1129, file: !318, line: 70, baseType: !1128, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1129, file: !318, line: 73, baseType: !1092, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1129, file: !318, line: 78, baseType: !837, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1129, file: !318, line: 85, baseType: !721, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1129, file: !318, line: 88, baseType: !713, size: 32, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1093, file: !318, line: 173, baseType: !721, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1093, file: !318, line: 173, baseType: !721, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1093, file: !318, line: 177, baseType: !712, size: 8, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1088, file: !318, line: 200, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1142, file: !318, line: 185, baseType: !1145, size: 128)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1146, file: !318, line: 184, baseType: !7, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1146, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1146, file: !318, line: 184, baseType: !1151, size: 64, offset: 64)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 64, elements: !756)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1088, file: !318, line: 203, baseType: !1153, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1155, file: !318, line: 189, baseType: !1158, size: 128)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1159, file: !318, line: 188, baseType: !7, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1159, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1159, file: !318, line: 188, baseType: !1164, size: 64, offset: 64)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 64, elements: !756)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1088, file: !318, line: 207, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1168, line: 144, baseType: !1169)
!1168 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1168, line: 100, size: 896, elements: !1171)
!1171 = !{!1172, !1180, !1185, !1190, !1192, !1195, !1196, !1197, !1198, !1199, !1204, !1206, !1207, !1212, !1217}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1170, file: !1168, line: 102, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1168, line: 52, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1168, line: 47, baseType: !7)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1170, file: !1168, line: 105, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1168, line: 59, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!713, !1178, !1178}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1170, file: !1168, line: 108, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1168, line: 63, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !717}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1170, file: !1168, line: 111, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1170, file: !1168, line: 114, baseType: !1193, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1194, line: 46, baseType: !791)
!1194 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1170, file: !1168, line: 117, baseType: !1193, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1170, file: !1168, line: 120, baseType: !1193, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1170, file: !1168, line: 124, baseType: !7, size: 32, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1170, file: !1168, line: 128, baseType: !7, size: 32, offset: 480)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1170, file: !1168, line: 131, baseType: !1200, size: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1168, line: 75, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!717, !1193, !1193}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1170, file: !1168, line: 132, baseType: !1205, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1168, line: 78, baseType: !1187)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1170, file: !1168, line: 135, baseType: !717, size: 64, offset: 640)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1170, file: !1168, line: 136, baseType: !1208, size: 64, offset: 704)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1168, line: 82, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!717, !717, !1193, !1193}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1170, file: !1168, line: 137, baseType: !1213, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1168, line: 83, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !717, !717}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1170, file: !1168, line: 141, baseType: !7, size: 32, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1088, file: !318, line: 211, baseType: !1219, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1221, file: !341, line: 183, baseType: !1224, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1225, file: !341, line: 182, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1225, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1225, file: !341, line: 182, baseType: !1230, size: 64, offset: 64)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 64, elements: !756)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1088, file: !318, line: 220, baseType: !1232, size: 64, offset: 320)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1232, file: !318, line: 218, baseType: !1219, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1232, file: !318, line: 219, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1238, line: 29, baseType: !1239)
!1238 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1238, line: 29, size: 96, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1239, file: !1238, line: 29, baseType: !1242, size: 96)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1238, line: 27, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1238, line: 27, size: 96, elements: !1244)
!1244 = !{!1245, !1246, !1247}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1243, file: !1238, line: 27, baseType: !7, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1243, file: !1238, line: 27, baseType: !7, size: 32, offset: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1243, file: !1238, line: 27, baseType: !1248, size: 8, offset: 64)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, size: 8, elements: !756)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1238, line: 26, baseType: !712)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1083, file: !1084, line: 467, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1253)
!1253 = !{!1254, !1329, !1330, !1343, !1344, !1345, !1346, !1347, !1348, !1350, !1352, !1353}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1252, file: !325, line: 377, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !722, line: 111, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1258)
!1258 = !{!1259, !1294, !1295, !1296, !1299, !1303, !1304, !1305, !1323, !1324, !1325, !1326, !1327, !1328}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1257, file: !325, line: 219, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1262, file: !325, line: 151, baseType: !1265, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1266, file: !325, line: 150, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1266, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1266, file: !325, line: 150, baseType: !1271, size: 64, offset: 64)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 64, elements: !756)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !722, line: 108, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1274, file: !325, line: 124, baseType: !1256, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1274, file: !325, line: 125, baseType: !1256, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1274, file: !325, line: 131, baseType: !1279, size: 64, offset: 128)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1280)
!1280 = !{!1281, !1285}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1279, file: !325, line: 129, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !722, line: 66, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !722, line: 65, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1279, file: !325, line: 130, baseType: !721, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1274, file: !325, line: 134, baseType: !717, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1274, file: !325, line: 137, baseType: !837, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1274, file: !325, line: 138, baseType: !957, size: 32, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1274, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !325, line: 144, baseType: !713, size: 32, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1274, file: !325, line: 145, baseType: !713, size: 32, offset: 416)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1274, file: !325, line: 146, baseType: !1293, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !808)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1257, file: !325, line: 220, baseType: !1260, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1257, file: !325, line: 223, baseType: !717, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1257, file: !325, line: 226, baseType: !1297, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1257, file: !325, line: 229, baseType: !1300, size: 128, offset: 256)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1301, size: 128, elements: !792)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1257, file: !325, line: 232, baseType: !1256, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1257, file: !325, line: 233, baseType: !1256, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1257, file: !325, line: 238, baseType: !1306, size: 64, offset: 512)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1307)
!1307 = !{!1308, !1314}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1306, file: !325, line: 236, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1310, file: !325, line: 275, baseType: !1282, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1310, file: !325, line: 278, baseType: !1282, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1306, file: !325, line: 237, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1322}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1316, file: !325, line: 261, baseType: !721, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1316, file: !325, line: 262, baseType: !721, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1316, file: !325, line: 266, baseType: !721, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1316, file: !325, line: 267, baseType: !721, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1316, file: !325, line: 270, baseType: !713, size: 32, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1257, file: !325, line: 241, baseType: !1293, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1257, file: !325, line: 244, baseType: !713, size: 32, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1257, file: !325, line: 247, baseType: !713, size: 32, offset: 672)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1257, file: !325, line: 250, baseType: !713, size: 32, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1257, file: !325, line: 253, baseType: !713, size: 32, offset: 736)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !325, line: 256, baseType: !713, size: 32, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1252, file: !325, line: 378, baseType: !1255, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1252, file: !325, line: 381, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1333)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1333, file: !325, line: 282, baseType: !1336, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1337, file: !325, line: 281, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1337, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1337, file: !325, line: 281, baseType: !1342, size: 64, offset: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1255, size: 64, elements: !756)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1252, file: !325, line: 384, baseType: !713, size: 32, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1252, file: !325, line: 387, baseType: !713, size: 32, offset: 224)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1252, file: !325, line: 390, baseType: !713, size: 32, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1252, file: !325, line: 394, baseType: !1331, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1252, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1252, file: !325, line: 399, baseType: !1349, size: 64, offset: 416)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !792)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1252, file: !325, line: 402, baseType: !1351, size: 64, offset: 480)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !792)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1252, file: !325, line: 406, baseType: !713, size: 32, offset: 544)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1252, file: !325, line: 409, baseType: !713, size: 32, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1083, file: !1084, line: 470, baseType: !1283, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1083, file: !1084, line: 473, baseType: !1356, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1084, line: 166, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1083, file: !1084, line: 476, baseType: !1359, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1084, line: 476, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1083, file: !1084, line: 479, baseType: !1167, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1083, file: !1084, line: 484, baseType: !837, size: 64, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1083, file: !1084, line: 488, baseType: !837, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1083, file: !1084, line: 493, baseType: !837, size: 64, offset: 512)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1083, file: !1084, line: 496, baseType: !837, size: 64, offset: 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1083, file: !1084, line: 501, baseType: !1367, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1369)
!1369 = !{!1370, !1373, !1374, !1375, !1376, !1378, !1379, !1384, !1385, !1386, !1387, !1388, !1389}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1368, file: !336, line: 2356, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1368, file: !336, line: 2357, baseType: !718, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1368, file: !336, line: 2358, baseType: !713, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1368, file: !336, line: 2359, baseType: !713, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1368, file: !336, line: 2360, baseType: !1377, size: 128, offset: 192)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !817)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1368, file: !336, line: 2364, baseType: !713, size: 32, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1368, file: !336, line: 2367, baseType: !1380, size: 128, offset: 384)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1380, file: !336, line: 2351, baseType: !721, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1380, file: !336, line: 2352, baseType: !808, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1368, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1368, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1368, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1368, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1368, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1368, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1083, file: !1084, line: 504, baseType: !1391, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1084, line: 504, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1083, file: !1084, line: 507, baseType: !1167, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1083, file: !1084, line: 510, baseType: !713, size: 32, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1083, file: !1084, line: 513, baseType: !713, size: 32, offset: 864)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1083, file: !1084, line: 516, baseType: !957, size: 32, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1083, file: !1084, line: 519, baseType: !957, size: 32, offset: 928)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1083, file: !1084, line: 522, baseType: !7, size: 32, offset: 960)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1083, file: !1084, line: 523, baseType: !7, size: 32, offset: 992)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1083, file: !1084, line: 528, baseType: !718, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1083, file: !1084, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1083, file: !1084, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1083, file: !1084, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1083, file: !1084, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1083, file: !1084, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1083, file: !1084, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1083, file: !1084, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1083, file: !1084, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1083, file: !1084, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1083, file: !1084, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1083, file: !1084, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1083, file: !1084, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1083, file: !1084, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1083, file: !1084, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1083, file: !1084, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1083, file: !1084, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1078, file: !341, line: 3254, baseType: !837, size: 64, offset: 1536)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1078, file: !341, line: 3257, baseType: !837, size: 64, offset: 1600)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1078, file: !341, line: 3258, baseType: !837, size: 64, offset: 1664)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1078, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1078, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1078, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1078, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1078, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1078, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1078, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1078, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1078, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1078, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1078, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1078, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1078, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1078, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1078, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1078, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1078, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1078, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !839, file: !341, line: 3394, baseType: !1439, size: 1344)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1466, !1467, !1468, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1439, file: !341, line: 2280, baseType: !875, size: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1439, file: !341, line: 2281, baseType: !837, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1439, file: !341, line: 2282, baseType: !837, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1439, file: !341, line: 2283, baseType: !837, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1439, file: !341, line: 2284, baseType: !837, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1439, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1439, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1439, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1439, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1439, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1439, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1439, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1439, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1439, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1439, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1439, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1439, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1439, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1439, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1439, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1439, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1439, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1439, file: !341, line: 2306, baseType: !1464, size: 32, offset: 544)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1465, line: 31, baseType: !713)
!1465 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1439, file: !341, line: 2307, baseType: !837, size: 64, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1439, file: !341, line: 2308, baseType: !837, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1439, file: !341, line: 2314, baseType: !1469, size: 64, offset: 704)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1469, file: !341, line: 2310, baseType: !713, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1469, file: !341, line: 2311, baseType: !718, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1469, file: !341, line: 2312, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1439, file: !341, line: 2315, baseType: !837, size: 64, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1439, file: !341, line: 2316, baseType: !837, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1439, file: !341, line: 2317, baseType: !837, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1439, file: !341, line: 2318, baseType: !837, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1439, file: !341, line: 2319, baseType: !837, size: 64, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1439, file: !341, line: 2320, baseType: !837, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1439, file: !341, line: 2321, baseType: !837, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1439, file: !341, line: 2322, baseType: !837, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1439, file: !341, line: 2324, baseType: !1485, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !839, file: !341, line: 3395, baseType: !1488, size: 320)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1488, file: !341, line: 1470, baseType: !875, size: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1488, file: !341, line: 1471, baseType: !837, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1488, file: !341, line: 1472, baseType: !837, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !839, file: !341, line: 3396, baseType: !1494, size: 320)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1494, file: !341, line: 1483, baseType: !875, size: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1494, file: !341, line: 1484, baseType: !713, size: 32, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1494, file: !341, line: 1485, baseType: !1230, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !839, file: !341, line: 3397, baseType: !1500, size: 384)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !341, line: 1830, baseType: !875, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1500, file: !341, line: 1831, baseType: !957, size: 32, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1500, file: !341, line: 1832, baseType: !837, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1500, file: !341, line: 1835, baseType: !1230, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !839, file: !341, line: 3398, baseType: !1507, size: 704)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1515, !1516, !1519}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1507, file: !341, line: 1899, baseType: !875, size: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1507, file: !341, line: 1902, baseType: !837, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1507, file: !341, line: 1905, baseType: !1512, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !722, line: 58, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !722, line: 57, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1507, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1507, file: !341, line: 1911, baseType: !1517, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1507, file: !341, line: 1914, baseType: !1520, size: 256, offset: 448)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1521)
!1521 = !{!1522, !1524, !1525, !1530}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1520, file: !341, line: 1884, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1520, file: !341, line: 1885, baseType: !1523, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1520, file: !341, line: 1891, baseType: !1526, size: 64, offset: 128)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !341, line: 1891, size: 64, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1526, file: !341, line: 1891, baseType: !1512, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1526, file: !341, line: 1891, baseType: !837, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1520, file: !341, line: 1892, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !839, file: !341, line: 3399, baseType: !1533, size: 704)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1533, file: !341, line: 2009, baseType: !875, size: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1533, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1533, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1533, file: !341, line: 2014, baseType: !957, size: 32, offset: 224)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1533, file: !341, line: 2016, baseType: !837, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1533, file: !341, line: 2017, baseType: !1219, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1533, file: !341, line: 2019, baseType: !837, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1533, file: !341, line: 2020, baseType: !837, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1533, file: !341, line: 2021, baseType: !837, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1533, file: !341, line: 2022, baseType: !837, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1533, file: !341, line: 2023, baseType: !837, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !839, file: !341, line: 3400, baseType: !1547, size: 832)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1547, file: !341, line: 2431, baseType: !875, size: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1547, file: !341, line: 2433, baseType: !837, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1547, file: !341, line: 2434, baseType: !837, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1547, file: !341, line: 2435, baseType: !837, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1547, file: !341, line: 2436, baseType: !837, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1547, file: !341, line: 2437, baseType: !1219, size: 64, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1547, file: !341, line: 2438, baseType: !837, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1547, file: !341, line: 2440, baseType: !837, size: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1547, file: !341, line: 2441, baseType: !837, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1547, file: !341, line: 2443, baseType: !1559, size: 128, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1560, file: !341, line: 182, baseType: !1224, size: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !839, file: !341, line: 3401, baseType: !1564, size: 320)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1565)
!1565 = !{!1566, !1567, !1574}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1564, file: !341, line: 3329, baseType: !875, size: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1564, file: !341, line: 3330, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1569, file: !341, line: 3322, baseType: !1568, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1569, file: !341, line: 3323, baseType: !1568, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1569, file: !341, line: 3324, baseType: !837, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1564, file: !341, line: 3331, baseType: !1568, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !839, file: !341, line: 3402, baseType: !1576, size: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !341, line: 1541, baseType: !875, size: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1576, file: !341, line: 1542, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1582, file: !341, line: 1538, baseType: !1585, size: 192)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1586, file: !341, line: 1537, baseType: !7, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1586, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1586, file: !341, line: 1537, baseType: !1591, size: 128, offset: 64)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 128, elements: !756)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1593, file: !341, line: 1533, baseType: !837, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1593, file: !341, line: 1534, baseType: !837, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !839, file: !341, line: 3403, baseType: !1598, size: 512)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1609, !1610, !1611}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1598, file: !341, line: 1939, baseType: !875, size: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1598, file: !341, line: 1940, baseType: !957, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1598, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1598, file: !341, line: 1946, baseType: !1604, size: 32, offset: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1604, file: !341, line: 1943, baseType: !359, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1604, file: !341, line: 1944, baseType: !366, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1604, file: !341, line: 1945, baseType: !373, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1598, file: !341, line: 1950, baseType: !1282, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1598, file: !341, line: 1951, baseType: !1282, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1598, file: !341, line: 1953, baseType: !1230, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !839, file: !341, line: 3404, baseType: !1613, size: 1664)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1613, file: !341, line: 3338, baseType: !875, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1613, file: !341, line: 3341, baseType: !1617, size: 1472, offset: 192)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1618, line: 410, size: 1472, elements: !1619)
!1618 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1617, file: !1618, line: 412, baseType: !713, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1617, file: !1618, line: 413, baseType: !713, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1617, file: !1618, line: 414, baseType: !713, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1617, file: !1618, line: 415, baseType: !713, size: 32, offset: 96)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1617, file: !1618, line: 416, baseType: !713, size: 32, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1617, file: !1618, line: 417, baseType: !713, size: 32, offset: 160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1617, file: !1618, line: 418, baseType: !712, size: 8, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1617, file: !1618, line: 419, baseType: !712, size: 8, offset: 200)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1617, file: !1618, line: 420, baseType: !1629, size: 8, offset: 208)
!1629 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1617, file: !1618, line: 421, baseType: !1629, size: 8, offset: 216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1617, file: !1618, line: 422, baseType: !1629, size: 8, offset: 224)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1617, file: !1618, line: 423, baseType: !1629, size: 8, offset: 232)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1617, file: !1618, line: 424, baseType: !1629, size: 8, offset: 240)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1617, file: !1618, line: 425, baseType: !1629, size: 8, offset: 248)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1617, file: !1618, line: 426, baseType: !1629, size: 8, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1617, file: !1618, line: 427, baseType: !1629, size: 8, offset: 264)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1617, file: !1618, line: 428, baseType: !1629, size: 8, offset: 272)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1617, file: !1618, line: 429, baseType: !1629, size: 8, offset: 280)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1617, file: !1618, line: 430, baseType: !1629, size: 8, offset: 288)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1617, file: !1618, line: 431, baseType: !1629, size: 8, offset: 296)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1617, file: !1618, line: 432, baseType: !1629, size: 8, offset: 304)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1617, file: !1618, line: 433, baseType: !1629, size: 8, offset: 312)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1617, file: !1618, line: 434, baseType: !1629, size: 8, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1617, file: !1618, line: 435, baseType: !1629, size: 8, offset: 328)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1617, file: !1618, line: 436, baseType: !1629, size: 8, offset: 336)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1617, file: !1618, line: 437, baseType: !1629, size: 8, offset: 344)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1617, file: !1618, line: 438, baseType: !1629, size: 8, offset: 352)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1617, file: !1618, line: 439, baseType: !1629, size: 8, offset: 360)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1617, file: !1618, line: 440, baseType: !1629, size: 8, offset: 368)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1617, file: !1618, line: 441, baseType: !1629, size: 8, offset: 376)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1617, file: !1618, line: 442, baseType: !1629, size: 8, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1617, file: !1618, line: 443, baseType: !1629, size: 8, offset: 392)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1617, file: !1618, line: 444, baseType: !1629, size: 8, offset: 400)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1617, file: !1618, line: 445, baseType: !1629, size: 8, offset: 408)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1617, file: !1618, line: 446, baseType: !1629, size: 8, offset: 416)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1617, file: !1618, line: 447, baseType: !1629, size: 8, offset: 424)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1617, file: !1618, line: 448, baseType: !1629, size: 8, offset: 432)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1617, file: !1618, line: 449, baseType: !1629, size: 8, offset: 440)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1617, file: !1618, line: 450, baseType: !1629, size: 8, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1617, file: !1618, line: 451, baseType: !1629, size: 8, offset: 456)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1617, file: !1618, line: 452, baseType: !1629, size: 8, offset: 464)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1617, file: !1618, line: 453, baseType: !1629, size: 8, offset: 472)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1617, file: !1618, line: 454, baseType: !1629, size: 8, offset: 480)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1617, file: !1618, line: 455, baseType: !1629, size: 8, offset: 488)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1617, file: !1618, line: 456, baseType: !1629, size: 8, offset: 496)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1617, file: !1618, line: 457, baseType: !1629, size: 8, offset: 504)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1617, file: !1618, line: 458, baseType: !1629, size: 8, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1617, file: !1618, line: 459, baseType: !1629, size: 8, offset: 520)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1617, file: !1618, line: 460, baseType: !1629, size: 8, offset: 528)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1617, file: !1618, line: 461, baseType: !1629, size: 8, offset: 536)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1617, file: !1618, line: 462, baseType: !1629, size: 8, offset: 544)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1617, file: !1618, line: 463, baseType: !1629, size: 8, offset: 552)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1617, file: !1618, line: 464, baseType: !1629, size: 8, offset: 560)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1617, file: !1618, line: 465, baseType: !1629, size: 8, offset: 568)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1617, file: !1618, line: 466, baseType: !1629, size: 8, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1617, file: !1618, line: 467, baseType: !1629, size: 8, offset: 584)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1617, file: !1618, line: 468, baseType: !1629, size: 8, offset: 592)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1617, file: !1618, line: 469, baseType: !1629, size: 8, offset: 600)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1617, file: !1618, line: 470, baseType: !1629, size: 8, offset: 608)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1617, file: !1618, line: 471, baseType: !1629, size: 8, offset: 616)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1617, file: !1618, line: 472, baseType: !1629, size: 8, offset: 624)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1617, file: !1618, line: 473, baseType: !1629, size: 8, offset: 632)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1617, file: !1618, line: 474, baseType: !1629, size: 8, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1617, file: !1618, line: 475, baseType: !1629, size: 8, offset: 648)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1617, file: !1618, line: 476, baseType: !1629, size: 8, offset: 656)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1617, file: !1618, line: 477, baseType: !1629, size: 8, offset: 664)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1617, file: !1618, line: 478, baseType: !1629, size: 8, offset: 672)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1617, file: !1618, line: 479, baseType: !1629, size: 8, offset: 680)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1617, file: !1618, line: 480, baseType: !1629, size: 8, offset: 688)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1617, file: !1618, line: 481, baseType: !1629, size: 8, offset: 696)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1617, file: !1618, line: 482, baseType: !1629, size: 8, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1617, file: !1618, line: 483, baseType: !1629, size: 8, offset: 712)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1617, file: !1618, line: 484, baseType: !1629, size: 8, offset: 720)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1617, file: !1618, line: 485, baseType: !1629, size: 8, offset: 728)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1617, file: !1618, line: 486, baseType: !1629, size: 8, offset: 736)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1617, file: !1618, line: 487, baseType: !1629, size: 8, offset: 744)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1617, file: !1618, line: 488, baseType: !1629, size: 8, offset: 752)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1617, file: !1618, line: 489, baseType: !1629, size: 8, offset: 760)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1617, file: !1618, line: 490, baseType: !1629, size: 8, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1617, file: !1618, line: 491, baseType: !1629, size: 8, offset: 776)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1617, file: !1618, line: 492, baseType: !1629, size: 8, offset: 784)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1617, file: !1618, line: 493, baseType: !1629, size: 8, offset: 792)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1617, file: !1618, line: 494, baseType: !1629, size: 8, offset: 800)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1617, file: !1618, line: 495, baseType: !1629, size: 8, offset: 808)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1617, file: !1618, line: 496, baseType: !1629, size: 8, offset: 816)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1617, file: !1618, line: 497, baseType: !1629, size: 8, offset: 824)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1617, file: !1618, line: 498, baseType: !1629, size: 8, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1617, file: !1618, line: 499, baseType: !1629, size: 8, offset: 840)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1617, file: !1618, line: 500, baseType: !1629, size: 8, offset: 848)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1617, file: !1618, line: 501, baseType: !1629, size: 8, offset: 856)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1617, file: !1618, line: 502, baseType: !1629, size: 8, offset: 864)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1617, file: !1618, line: 503, baseType: !1629, size: 8, offset: 872)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1617, file: !1618, line: 504, baseType: !1629, size: 8, offset: 880)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1617, file: !1618, line: 505, baseType: !1629, size: 8, offset: 888)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1617, file: !1618, line: 506, baseType: !1629, size: 8, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1617, file: !1618, line: 507, baseType: !1629, size: 8, offset: 904)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1617, file: !1618, line: 508, baseType: !1629, size: 8, offset: 912)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1617, file: !1618, line: 509, baseType: !1629, size: 8, offset: 920)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1617, file: !1618, line: 510, baseType: !1629, size: 8, offset: 928)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1617, file: !1618, line: 511, baseType: !1629, size: 8, offset: 936)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1617, file: !1618, line: 512, baseType: !1629, size: 8, offset: 944)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1617, file: !1618, line: 513, baseType: !1629, size: 8, offset: 952)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1617, file: !1618, line: 514, baseType: !1629, size: 8, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1617, file: !1618, line: 515, baseType: !1629, size: 8, offset: 968)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1617, file: !1618, line: 516, baseType: !1629, size: 8, offset: 976)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1617, file: !1618, line: 517, baseType: !1629, size: 8, offset: 984)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1617, file: !1618, line: 518, baseType: !1629, size: 8, offset: 992)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1617, file: !1618, line: 519, baseType: !1629, size: 8, offset: 1000)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1617, file: !1618, line: 520, baseType: !1629, size: 8, offset: 1008)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1617, file: !1618, line: 521, baseType: !1629, size: 8, offset: 1016)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1617, file: !1618, line: 522, baseType: !1629, size: 8, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1617, file: !1618, line: 523, baseType: !1629, size: 8, offset: 1032)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1617, file: !1618, line: 524, baseType: !1629, size: 8, offset: 1040)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1617, file: !1618, line: 525, baseType: !1629, size: 8, offset: 1048)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1617, file: !1618, line: 526, baseType: !1629, size: 8, offset: 1056)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1617, file: !1618, line: 527, baseType: !1629, size: 8, offset: 1064)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1617, file: !1618, line: 528, baseType: !1629, size: 8, offset: 1072)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1617, file: !1618, line: 529, baseType: !1629, size: 8, offset: 1080)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1617, file: !1618, line: 530, baseType: !1629, size: 8, offset: 1088)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1617, file: !1618, line: 531, baseType: !1629, size: 8, offset: 1096)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1617, file: !1618, line: 532, baseType: !1629, size: 8, offset: 1104)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1617, file: !1618, line: 533, baseType: !1629, size: 8, offset: 1112)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1617, file: !1618, line: 534, baseType: !1629, size: 8, offset: 1120)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1617, file: !1618, line: 535, baseType: !1629, size: 8, offset: 1128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1617, file: !1618, line: 536, baseType: !1629, size: 8, offset: 1136)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1617, file: !1618, line: 537, baseType: !1629, size: 8, offset: 1144)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1617, file: !1618, line: 538, baseType: !1629, size: 8, offset: 1152)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1617, file: !1618, line: 539, baseType: !1629, size: 8, offset: 1160)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1617, file: !1618, line: 540, baseType: !1629, size: 8, offset: 1168)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1617, file: !1618, line: 541, baseType: !1629, size: 8, offset: 1176)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1617, file: !1618, line: 542, baseType: !1629, size: 8, offset: 1184)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1617, file: !1618, line: 543, baseType: !1629, size: 8, offset: 1192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1617, file: !1618, line: 544, baseType: !1629, size: 8, offset: 1200)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1617, file: !1618, line: 545, baseType: !1629, size: 8, offset: 1208)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1617, file: !1618, line: 546, baseType: !1629, size: 8, offset: 1216)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1617, file: !1618, line: 547, baseType: !1629, size: 8, offset: 1224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1617, file: !1618, line: 548, baseType: !1629, size: 8, offset: 1232)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1617, file: !1618, line: 549, baseType: !1629, size: 8, offset: 1240)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1617, file: !1618, line: 550, baseType: !1629, size: 8, offset: 1248)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1617, file: !1618, line: 551, baseType: !1629, size: 8, offset: 1256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1617, file: !1618, line: 552, baseType: !1629, size: 8, offset: 1264)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1617, file: !1618, line: 553, baseType: !1629, size: 8, offset: 1272)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1617, file: !1618, line: 554, baseType: !1629, size: 8, offset: 1280)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1617, file: !1618, line: 555, baseType: !1629, size: 8, offset: 1288)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1617, file: !1618, line: 556, baseType: !1629, size: 8, offset: 1296)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1617, file: !1618, line: 557, baseType: !1629, size: 8, offset: 1304)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1617, file: !1618, line: 558, baseType: !1629, size: 8, offset: 1312)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1617, file: !1618, line: 559, baseType: !1629, size: 8, offset: 1320)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1617, file: !1618, line: 560, baseType: !1629, size: 8, offset: 1328)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1617, file: !1618, line: 561, baseType: !1629, size: 8, offset: 1336)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1617, file: !1618, line: 562, baseType: !1629, size: 8, offset: 1344)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1617, file: !1618, line: 563, baseType: !1629, size: 8, offset: 1352)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1617, file: !1618, line: 564, baseType: !1629, size: 8, offset: 1360)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1617, file: !1618, line: 565, baseType: !1629, size: 8, offset: 1368)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1617, file: !1618, line: 566, baseType: !1629, size: 8, offset: 1376)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1617, file: !1618, line: 567, baseType: !1629, size: 8, offset: 1384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1617, file: !1618, line: 568, baseType: !1629, size: 8, offset: 1392)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1617, file: !1618, line: 569, baseType: !1629, size: 8, offset: 1400)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1617, file: !1618, line: 570, baseType: !1629, size: 8, offset: 1408)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1617, file: !1618, line: 571, baseType: !1629, size: 8, offset: 1416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1617, file: !1618, line: 572, baseType: !1629, size: 8, offset: 1424)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1617, file: !1618, line: 573, baseType: !1629, size: 8, offset: 1432)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1617, file: !1618, line: 574, baseType: !1629, size: 8, offset: 1440)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !839, file: !341, line: 3405, baseType: !1785, size: 384)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1785, file: !341, line: 3353, baseType: !875, size: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1785, file: !341, line: 3356, baseType: !1789, size: 192, offset: 192)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1618, line: 578, size: 192, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1789, file: !1618, line: 580, baseType: !713, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1789, file: !1618, line: 581, baseType: !713, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1789, file: !1618, line: 582, baseType: !713, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1789, file: !1618, line: 583, baseType: !713, size: 32, offset: 96)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1789, file: !1618, line: 584, baseType: !712, size: 8, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1789, file: !1618, line: 585, baseType: !712, size: 8, offset: 136)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1789, file: !1618, line: 586, baseType: !712, size: 8, offset: 144)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1789, file: !1618, line: 587, baseType: !712, size: 8, offset: 152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1789, file: !1618, line: 588, baseType: !712, size: 8, offset: 160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1789, file: !1618, line: 589, baseType: !712, size: 8, offset: 168)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1789, file: !1618, line: 590, baseType: !712, size: 8, offset: 176)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !742, file: !568, line: 178, baseType: !1256, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !742, file: !568, line: 179, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1806, file: !568, line: 144, baseType: !837, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1806, file: !568, line: 145, baseType: !721, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1806, file: !568, line: 146, baseType: !721, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1806, file: !568, line: 147, baseType: !1464, size: 32, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1806, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1806, file: !568, line: 149, baseType: !712, size: 8, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !742, file: !568, line: 180, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1817, file: !568, line: 160, baseType: !837, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1817, file: !568, line: 161, baseType: !808, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !742, file: !568, line: 181, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !737, file: !568, line: 317, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 64, elements: !756)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !737, file: !568, line: 318, baseType: !1827, size: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1828)
!1828 = !{!1829, !1831, !1886}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1827, file: !568, line: 190, baseType: !1830, size: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 192, elements: !908)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1827, file: !568, line: 193, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1834)
!1834 = !{!1835, !1871, !1872, !1873, !1885}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1833, file: !568, line: 208, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !722, line: 62, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1839, line: 538, size: 256, elements: !1840)
!1839 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1840 = !{!1841, !1845, !1851, !1862}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1838, file: !1839, line: 539, baseType: !1842, size: 32)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1839, line: 482, size: 32, elements: !1843)
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1839, line: 484, baseType: !7, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1838, file: !1839, line: 540, baseType: !1846, size: 192)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1839, line: 488, size: 192, elements: !1847)
!1847 = !{!1848, !1849, !1850}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1846, file: !1839, line: 489, baseType: !1842, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1846, file: !1839, line: 492, baseType: !718, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1846, file: !1839, line: 496, baseType: !837, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1838, file: !1839, line: 541, baseType: !1852, size: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1839, line: 504, size: 256, elements: !1853)
!1853 = !{!1854, !1855, !1860, !1861}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1852, file: !1839, line: 505, baseType: !1842, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1852, file: !1839, line: 509, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1839, line: 501, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1178}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1852, file: !1839, line: 510, baseType: !1178, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1852, file: !1839, line: 513, baseType: !1836, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1838, file: !1839, line: 542, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1839, line: 530, size: 128, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1863, file: !1839, line: 531, baseType: !1842, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1863, file: !1839, line: 534, baseType: !1867, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1839, line: 525, baseType: !1868)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!712, !837, !718, !791, !791}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1833, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1833, file: !568, line: 214, baseType: !808, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1833, file: !568, line: 224, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1876, file: !568, line: 202, baseType: !1879, size: 128)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1880, file: !568, line: 200, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1880, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1880, file: !568, line: 200, baseType: !755, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1833, file: !568, line: 234, baseType: !1874, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1827, file: !568, line: 197, baseType: !808, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !737, file: !568, line: 319, baseType: !897, size: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !737, file: !568, line: 320, baseType: !916, size: 192)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "st_expr", file: !3, line: 71, size: 448, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1899, !1900, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !1891, file: !3, line: 74, baseType: !721, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_regs", scope: !1891, file: !3, line: 76, baseType: !721, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "antic_stores", scope: !1891, file: !3, line: 78, baseType: !721, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "avail_stores", scope: !1891, file: !3, line: 80, baseType: !721, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1891, file: !3, line: 82, baseType: !1898, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1891, file: !3, line: 84, baseType: !713, size: 32, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "hash_index", scope: !1891, file: !3, line: 86, baseType: !7, size: 32, offset: 352)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "reaching_reg", scope: !1891, file: !3, line: 90, baseType: !721, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1905, file: !325, line: 680, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1905, file: !325, line: 681, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1910 = !{!0, !1911, !1913, !1915, !1917, !1930, !1932, !1934, !1936, !1938, !1940}
!1911 = !DIGlobalVariableExpression(var: !1912, expr: !DIExpression())
!1912 = distinct !DIGlobalVariable(name: "store_motion_mems", scope: !2, file: !3, line: 94, type: !1898, isLocal: true, isDefinition: true)
!1913 = !DIGlobalVariableExpression(var: !1914, expr: !DIExpression())
!1914 = distinct !DIGlobalVariable(name: "num_stores", scope: !2, file: !3, line: 109, type: !713, isLocal: true, isDefinition: true)
!1915 = !DIGlobalVariableExpression(var: !1916, expr: !DIExpression())
!1916 = distinct !DIGlobalVariable(name: "store_motion_mems_table", scope: !2, file: !3, line: 97, type: !1167, isLocal: true, isDefinition: true)
!1917 = !DIGlobalVariableExpression(var: !1918, expr: !DIExpression())
!1918 = distinct !DIGlobalVariable(name: "st_transp", scope: !2, file: !3, line: 100, type: !1919, isLocal: true, isDefinition: true)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1921, line: 45, baseType: !1922)
!1921 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1921, line: 39, size: 192, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1923, file: !1921, line: 41, baseType: !711, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1923, file: !1921, line: 42, baseType: !7, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1923, file: !1921, line: 43, baseType: !7, size: 32, offset: 96)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1923, file: !1921, line: 44, baseType: !1929, size: 64, offset: 128)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 64, elements: !756)
!1930 = !DIGlobalVariableExpression(var: !1931, expr: !DIExpression())
!1931 = distinct !DIGlobalVariable(name: "st_avloc", scope: !2, file: !3, line: 100, type: !1919, isLocal: true, isDefinition: true)
!1932 = !DIGlobalVariableExpression(var: !1933, expr: !DIExpression())
!1933 = distinct !DIGlobalVariable(name: "st_antloc", scope: !2, file: !3, line: 100, type: !1919, isLocal: true, isDefinition: true)
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(name: "st_kill", scope: !2, file: !3, line: 100, type: !1919, isLocal: true, isDefinition: true)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(name: "st_insert_map", scope: !2, file: !3, line: 103, type: !1919, isLocal: true, isDefinition: true)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(name: "st_delete_map", scope: !2, file: !3, line: 106, type: !1919, isLocal: true, isDefinition: true)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(name: "edge_list", scope: !2, file: !3, line: 112, type: !1942, isLocal: true, isDefinition: true)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !325, line: 572, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1943, file: !325, line: 574, baseType: !713, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !1943, file: !325, line: 575, baseType: !713, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !1943, file: !325, line: 576, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1950)
!1950 = !{!1951}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1949, file: !6, line: 164, baseType: !1952, size: 640)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1953)
!1953 = !{!1954, !1955, !1956, !1960, !1964, !1966, !1967, !1968, !1970, !1971, !1972, !1973, !1974}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1952, file: !6, line: 117, baseType: !5, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1952, file: !6, line: 121, baseType: !718, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1952, file: !6, line: 125, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!712}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1952, file: !6, line: 130, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!7}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1952, file: !6, line: 133, baseType: !1965, size: 64, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1952, file: !6, line: 136, baseType: !1965, size: 64, offset: 320)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1952, file: !6, line: 139, baseType: !713, size: 32, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1952, file: !6, line: 143, baseType: !1969, size: 32, offset: 416)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1952, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1952, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1952, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1952, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1952, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1975 = !{i32 2, !"Dwarf Version", i32 4}
!1976 = !{i32 2, !"Debug Info Version", i32 3}
!1977 = !{i32 1, !"wchar_size", i32 4}
!1978 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1979 = distinct !DISubprogram(name: "vprintf", scope: !1980, file: !1980, line: 39, type: !1981, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1991)
!1980 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!713, !1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !718)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1985, file: !3, baseType: !7, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1985, file: !3, baseType: !7, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1985, file: !3, baseType: !717, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1985, file: !3, baseType: !717, size: 64, offset: 128)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1979, file: !1980, line: 39, type: !1983)
!1993 = !DILocalVariable(name: "__arg", arg: 2, scope: !1979, file: !1980, line: 39, type: !1984)
!1994 = !DILocation(line: 0, scope: !1979)
!1995 = !DILocation(line: 41, column: 20, scope: !1979)
!1996 = !DILocation(line: 41, column: 10, scope: !1979)
!1997 = !DILocation(line: 41, column: 3, scope: !1979)
!1998 = distinct !DISubprogram(name: "getchar", scope: !1980, file: !1980, line: 47, type: !1999, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!713}
!2001 = !{}
!2002 = !DILocation(line: 49, column: 16, scope: !1998)
!2003 = !DILocation(line: 49, column: 10, scope: !1998)
!2004 = !DILocation(line: 49, column: 3, scope: !1998)
!2005 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1980, file: !1980, line: 56, type: !2006, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!713, !2008}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2010, line: 7, baseType: !2011)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2012, line: 49, size: 1728, elements: !2013)
!2012 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2029, !2031, !2032, !2033, !2036, !2038, !2039, !2040, !2043, !2045, !2048, !2051, !2052, !2053, !2054, !2055}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2011, file: !2012, line: 51, baseType: !713, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2011, file: !2012, line: 54, baseType: !715, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2011, file: !2012, line: 55, baseType: !715, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2011, file: !2012, line: 56, baseType: !715, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2011, file: !2012, line: 57, baseType: !715, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2011, file: !2012, line: 58, baseType: !715, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2011, file: !2012, line: 59, baseType: !715, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2011, file: !2012, line: 60, baseType: !715, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2011, file: !2012, line: 61, baseType: !715, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2011, file: !2012, line: 64, baseType: !715, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2011, file: !2012, line: 65, baseType: !715, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2011, file: !2012, line: 66, baseType: !715, size: 64, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2011, file: !2012, line: 68, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2012, line: 36, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2011, file: !2012, line: 70, baseType: !2030, size: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2011, file: !2012, line: 72, baseType: !713, size: 32, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2011, file: !2012, line: 73, baseType: !713, size: 32, offset: 928)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2011, file: !2012, line: 74, baseType: !2034, size: 64, offset: 960)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2035, line: 152, baseType: !808)
!2035 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2011, file: !2012, line: 77, baseType: !2037, size: 16, offset: 1024)
!2037 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2011, file: !2012, line: 78, baseType: !1629, size: 8, offset: 1040)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2011, file: !2012, line: 79, baseType: !932, size: 8, offset: 1048)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2011, file: !2012, line: 81, baseType: !2041, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2012, line: 43, baseType: null)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2011, file: !2012, line: 89, baseType: !2044, size: 64, offset: 1152)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2035, line: 153, baseType: !808)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2011, file: !2012, line: 91, baseType: !2046, size: 64, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2012, line: 37, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2011, file: !2012, line: 92, baseType: !2049, size: 64, offset: 1280)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2012, line: 38, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2011, file: !2012, line: 93, baseType: !2030, size: 64, offset: 1344)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2011, file: !2012, line: 94, baseType: !717, size: 64, offset: 1408)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2011, file: !2012, line: 95, baseType: !1193, size: 64, offset: 1472)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2011, file: !2012, line: 96, baseType: !713, size: 32, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2011, file: !2012, line: 98, baseType: !2056, size: 160, offset: 1568)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 160, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 20)
!2059 = !{!2060}
!2060 = !DILocalVariable(name: "__fp", arg: 1, scope: !2005, file: !1980, line: 56, type: !2008)
!2061 = !DILocation(line: 0, scope: !2005)
!2062 = !DILocation(line: 58, column: 10, scope: !2005)
!2063 = !DILocation(line: 58, column: 3, scope: !2005)
!2064 = distinct !DISubprogram(name: "getc_unlocked", scope: !1980, file: !1980, line: 66, type: !2006, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2065 = !{!2066}
!2066 = !DILocalVariable(name: "__fp", arg: 1, scope: !2064, file: !1980, line: 66, type: !2008)
!2067 = !DILocation(line: 0, scope: !2064)
!2068 = !DILocation(line: 68, column: 10, scope: !2064)
!2069 = !DILocation(line: 68, column: 3, scope: !2064)
!2070 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1980, file: !1980, line: 73, type: !1999, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!2071 = !DILocation(line: 75, column: 10, scope: !2070)
!2072 = !DILocation(line: 75, column: 3, scope: !2070)
!2073 = distinct !DISubprogram(name: "putchar", scope: !1980, file: !1980, line: 82, type: !2074, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!713, !713}
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "__c", arg: 1, scope: !2073, file: !1980, line: 82, type: !713)
!2078 = !DILocation(line: 0, scope: !2073)
!2079 = !DILocation(line: 84, column: 21, scope: !2073)
!2080 = !DILocation(line: 84, column: 10, scope: !2073)
!2081 = !DILocation(line: 84, column: 3, scope: !2073)
!2082 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1980, file: !1980, line: 91, type: !2083, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!713, !713, !2008}
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "__c", arg: 1, scope: !2082, file: !1980, line: 91, type: !713)
!2087 = !DILocalVariable(name: "__stream", arg: 2, scope: !2082, file: !1980, line: 91, type: !2008)
!2088 = !DILocation(line: 0, scope: !2082)
!2089 = !DILocation(line: 93, column: 10, scope: !2082)
!2090 = !DILocation(line: 93, column: 3, scope: !2082)
!2091 = distinct !DISubprogram(name: "putc_unlocked", scope: !1980, file: !1980, line: 101, type: !2083, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "__c", arg: 1, scope: !2091, file: !1980, line: 101, type: !713)
!2094 = !DILocalVariable(name: "__stream", arg: 2, scope: !2091, file: !1980, line: 101, type: !2008)
!2095 = !DILocation(line: 0, scope: !2091)
!2096 = !DILocation(line: 103, column: 10, scope: !2091)
!2097 = !DILocation(line: 103, column: 3, scope: !2091)
!2098 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1980, file: !1980, line: 108, type: !2074, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100}
!2100 = !DILocalVariable(name: "__c", arg: 1, scope: !2098, file: !1980, line: 108, type: !713)
!2101 = !DILocation(line: 0, scope: !2098)
!2102 = !DILocation(line: 110, column: 10, scope: !2098)
!2103 = !DILocation(line: 110, column: 3, scope: !2098)
!2104 = distinct !DISubprogram(name: "getline", scope: !1980, file: !1980, line: 118, type: !2105, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2107, !714, !2108, !2008}
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2035, line: 193, baseType: !808)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2104, file: !1980, line: 118, type: !714)
!2111 = !DILocalVariable(name: "__n", arg: 2, scope: !2104, file: !1980, line: 118, type: !2108)
!2112 = !DILocalVariable(name: "__stream", arg: 3, scope: !2104, file: !1980, line: 118, type: !2008)
!2113 = !DILocation(line: 0, scope: !2104)
!2114 = !DILocation(line: 120, column: 10, scope: !2104)
!2115 = !DILocation(line: 120, column: 3, scope: !2104)
!2116 = distinct !DISubprogram(name: "feof_unlocked", scope: !1980, file: !1980, line: 128, type: !2006, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "__stream", arg: 1, scope: !2116, file: !1980, line: 128, type: !2008)
!2119 = !DILocation(line: 0, scope: !2116)
!2120 = !DILocation(line: 130, column: 10, scope: !2116)
!2121 = !DILocation(line: 130, column: 3, scope: !2116)
!2122 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1980, file: !1980, line: 135, type: !2006, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "__stream", arg: 1, scope: !2122, file: !1980, line: 135, type: !2008)
!2125 = !DILocation(line: 0, scope: !2122)
!2126 = !DILocation(line: 137, column: 10, scope: !2122)
!2127 = !DILocation(line: 137, column: 3, scope: !2122)
!2128 = distinct !DISubprogram(name: "tolower", scope: !2129, file: !2129, line: 207, type: !2074, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2130)
!2129 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__c", arg: 1, scope: !2128, file: !2129, line: 207, type: !713)
!2132 = !DILocation(line: 0, scope: !2128)
!2133 = !DILocation(line: 209, column: 22, scope: !2128)
!2134 = !DILocation(line: 209, column: 39, scope: !2128)
!2135 = !DILocation(line: 209, column: 38, scope: !2128)
!2136 = !DILocation(line: 209, column: 37, scope: !2128)
!2137 = !DILocation(line: 209, column: 10, scope: !2128)
!2138 = !DILocation(line: 209, column: 3, scope: !2128)
!2139 = distinct !DISubprogram(name: "toupper", scope: !2129, file: !2129, line: 213, type: !2074, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "__c", arg: 1, scope: !2139, file: !2129, line: 213, type: !713)
!2142 = !DILocation(line: 0, scope: !2139)
!2143 = !DILocation(line: 215, column: 22, scope: !2139)
!2144 = !DILocation(line: 215, column: 39, scope: !2139)
!2145 = !DILocation(line: 215, column: 38, scope: !2139)
!2146 = !DILocation(line: 215, column: 37, scope: !2139)
!2147 = !DILocation(line: 215, column: 10, scope: !2139)
!2148 = !DILocation(line: 215, column: 3, scope: !2139)
!2149 = distinct !DISubprogram(name: "atoi", scope: !2150, file: !2150, line: 361, type: !2151, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2150 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!713, !718}
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2149, file: !2150, line: 361, type: !718)
!2155 = !DILocation(line: 0, scope: !2149)
!2156 = !DILocation(line: 363, column: 16, scope: !2149)
!2157 = !DILocation(line: 363, column: 10, scope: !2149)
!2158 = !DILocation(line: 363, column: 3, scope: !2149)
!2159 = distinct !DISubprogram(name: "atol", scope: !2150, file: !2150, line: 366, type: !2160, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!808, !718}
!2162 = !{!2163}
!2163 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2159, file: !2150, line: 366, type: !718)
!2164 = !DILocation(line: 0, scope: !2159)
!2165 = !DILocation(line: 368, column: 10, scope: !2159)
!2166 = !DILocation(line: 368, column: 3, scope: !2159)
!2167 = distinct !DISubprogram(name: "atoll", scope: !2150, file: !2150, line: 373, type: !2168, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2170, !718}
!2170 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2171 = !{!2172}
!2172 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2167, file: !2150, line: 373, type: !718)
!2173 = !DILocation(line: 0, scope: !2167)
!2174 = !DILocation(line: 375, column: 10, scope: !2167)
!2175 = !DILocation(line: 375, column: 3, scope: !2167)
!2176 = distinct !DISubprogram(name: "bsearch", scope: !2177, file: !2177, line: 20, type: !2178, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!717, !1178, !1178, !1193, !1193, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2150, line: 808, baseType: !1182)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2182 = !DILocalVariable(name: "__key", arg: 1, scope: !2176, file: !2177, line: 20, type: !1178)
!2183 = !DILocalVariable(name: "__base", arg: 2, scope: !2176, file: !2177, line: 20, type: !1178)
!2184 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2176, file: !2177, line: 20, type: !1193)
!2185 = !DILocalVariable(name: "__size", arg: 4, scope: !2176, file: !2177, line: 20, type: !1193)
!2186 = !DILocalVariable(name: "__compar", arg: 5, scope: !2176, file: !2177, line: 21, type: !2180)
!2187 = !DILocalVariable(name: "__l", scope: !2176, file: !2177, line: 23, type: !1193)
!2188 = !DILocalVariable(name: "__u", scope: !2176, file: !2177, line: 23, type: !1193)
!2189 = !DILocalVariable(name: "__idx", scope: !2176, file: !2177, line: 23, type: !1193)
!2190 = !DILocalVariable(name: "__p", scope: !2176, file: !2177, line: 24, type: !1178)
!2191 = !DILocalVariable(name: "__comparison", scope: !2176, file: !2177, line: 25, type: !713)
!2192 = !DILocation(line: 0, scope: !2176)
!2193 = !DILocation(line: 29, column: 3, scope: !2176)
!2194 = !DILocation(line: 27, column: 7, scope: !2176)
!2195 = !DILocation(line: 29, column: 14, scope: !2176)
!2196 = !DILocation(line: 31, column: 20, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2176, file: !2177, line: 30, column: 5)
!2198 = !DILocation(line: 31, column: 27, scope: !2197)
!2199 = !DILocation(line: 32, column: 56, scope: !2197)
!2200 = !DILocation(line: 32, column: 47, scope: !2197)
!2201 = !DILocation(line: 33, column: 22, scope: !2197)
!2202 = !DILocation(line: 34, column: 24, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2197, file: !2177, line: 34, column: 11)
!2204 = !DILocation(line: 34, column: 11, scope: !2197)
!2205 = !DILocation(line: 36, column: 29, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !2177, line: 36, column: 16)
!2207 = !DILocation(line: 36, column: 16, scope: !2203)
!2208 = !DILocation(line: 37, column: 14, scope: !2206)
!2209 = distinct !{!2209, !2193, !2210}
!2210 = !DILocation(line: 40, column: 5, scope: !2176)
!2211 = !DILocation(line: 43, column: 1, scope: !2176)
!2212 = distinct !DISubprogram(name: "atof", scope: !2213, file: !2213, line: 25, type: !2214, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2217)
!2213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2216, !718}
!2216 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2217 = !{!2218}
!2218 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2212, file: !2213, line: 25, type: !718)
!2219 = !DILocation(line: 0, scope: !2212)
!2220 = !DILocation(line: 27, column: 10, scope: !2212)
!2221 = !DILocation(line: 27, column: 3, scope: !2212)
!2222 = distinct !DISubprogram(name: "strtoimax", scope: !2223, file: !2223, line: 324, type: !2224, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2223 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!2226, !1983, !2229, !713}
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2227, line: 101, baseType: !2228)
!2227 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2035, line: 72, baseType: !808)
!2229 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!2230 = !{!2231, !2232, !2233}
!2231 = !DILocalVariable(name: "nptr", arg: 1, scope: !2222, file: !2223, line: 324, type: !1983)
!2232 = !DILocalVariable(name: "endptr", arg: 2, scope: !2222, file: !2223, line: 324, type: !2229)
!2233 = !DILocalVariable(name: "base", arg: 3, scope: !2222, file: !2223, line: 324, type: !713)
!2234 = !DILocation(line: 0, scope: !2222)
!2235 = !DILocation(line: 327, column: 10, scope: !2222)
!2236 = !DILocation(line: 327, column: 3, scope: !2222)
!2237 = distinct !DISubprogram(name: "strtoumax", scope: !2223, file: !2223, line: 336, type: !2238, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!2240, !1983, !2229, !713}
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2227, line: 102, baseType: !2241)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2035, line: 73, baseType: !791)
!2242 = !{!2243, !2244, !2245}
!2243 = !DILocalVariable(name: "nptr", arg: 1, scope: !2237, file: !2223, line: 336, type: !1983)
!2244 = !DILocalVariable(name: "endptr", arg: 2, scope: !2237, file: !2223, line: 336, type: !2229)
!2245 = !DILocalVariable(name: "base", arg: 3, scope: !2237, file: !2223, line: 336, type: !713)
!2246 = !DILocation(line: 0, scope: !2237)
!2247 = !DILocation(line: 339, column: 10, scope: !2237)
!2248 = !DILocation(line: 339, column: 3, scope: !2237)
!2249 = distinct !DISubprogram(name: "wcstoimax", scope: !2223, file: !2223, line: 348, type: !2250, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2259)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2226, !2252, !2256, !713}
!2252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2223, line: 34, baseType: !713)
!2256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2257)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "nptr", arg: 1, scope: !2249, file: !2223, line: 348, type: !2252)
!2261 = !DILocalVariable(name: "endptr", arg: 2, scope: !2249, file: !2223, line: 348, type: !2256)
!2262 = !DILocalVariable(name: "base", arg: 3, scope: !2249, file: !2223, line: 348, type: !713)
!2263 = !DILocation(line: 0, scope: !2249)
!2264 = !DILocation(line: 351, column: 10, scope: !2249)
!2265 = !DILocation(line: 351, column: 3, scope: !2249)
!2266 = distinct !DISubprogram(name: "wcstoumax", scope: !2223, file: !2223, line: 362, type: !2267, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!2240, !2252, !2256, !713}
!2269 = !{!2270, !2271, !2272}
!2270 = !DILocalVariable(name: "nptr", arg: 1, scope: !2266, file: !2223, line: 362, type: !2252)
!2271 = !DILocalVariable(name: "endptr", arg: 2, scope: !2266, file: !2223, line: 362, type: !2256)
!2272 = !DILocalVariable(name: "base", arg: 3, scope: !2266, file: !2223, line: 362, type: !713)
!2273 = !DILocation(line: 0, scope: !2266)
!2274 = !DILocation(line: 365, column: 10, scope: !2266)
!2275 = !DILocation(line: 365, column: 3, scope: !2266)
!2276 = distinct !DISubprogram(name: "stat", scope: !2277, file: !2277, line: 453, type: !2278, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2315)
!2277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!713, !718, !2280}
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2282, line: 46, size: 1152, elements: !2283)
!2282 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2283 = !{!2284, !2286, !2288, !2290, !2292, !2294, !2296, !2297, !2298, !2299, !2301, !2303, !2311, !2312, !2313}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2281, file: !2282, line: 48, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2035, line: 145, baseType: !791)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2281, file: !2282, line: 53, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2035, line: 148, baseType: !791)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2281, file: !2282, line: 61, baseType: !2289, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2035, line: 151, baseType: !791)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2281, file: !2282, line: 62, baseType: !2291, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2035, line: 150, baseType: !7)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2281, file: !2282, line: 64, baseType: !2293, size: 32, offset: 224)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2035, line: 146, baseType: !7)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2281, file: !2282, line: 65, baseType: !2295, size: 32, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2035, line: 147, baseType: !7)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2281, file: !2282, line: 67, baseType: !713, size: 32, offset: 288)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2281, file: !2282, line: 69, baseType: !2285, size: 64, offset: 320)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2281, file: !2282, line: 74, baseType: !2034, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2281, file: !2282, line: 78, baseType: !2300, size: 64, offset: 448)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2035, line: 174, baseType: !808)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2281, file: !2282, line: 80, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2035, line: 179, baseType: !808)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2281, file: !2282, line: 91, baseType: !2304, size: 128, offset: 576)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2305, line: 10, size: 128, elements: !2306)
!2305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2306 = !{!2307, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2304, file: !2305, line: 12, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2035, line: 160, baseType: !808)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2304, file: !2305, line: 16, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2035, line: 196, baseType: !808)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2281, file: !2282, line: 92, baseType: !2304, size: 128, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2281, file: !2282, line: 93, baseType: !2304, size: 128, offset: 832)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2281, file: !2282, line: 106, baseType: !2314, size: 192, offset: 960)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2310, size: 192, elements: !908)
!2315 = !{!2316, !2317}
!2316 = !DILocalVariable(name: "__path", arg: 1, scope: !2276, file: !2277, line: 453, type: !718)
!2317 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2276, file: !2277, line: 453, type: !2280)
!2318 = !DILocation(line: 0, scope: !2276)
!2319 = !DILocation(line: 455, column: 10, scope: !2276)
!2320 = !DILocation(line: 455, column: 3, scope: !2276)
!2321 = distinct !DISubprogram(name: "lstat", scope: !2277, file: !2277, line: 460, type: !2278, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2322 = !{!2323, !2324}
!2323 = !DILocalVariable(name: "__path", arg: 1, scope: !2321, file: !2277, line: 460, type: !718)
!2324 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2321, file: !2277, line: 460, type: !2280)
!2325 = !DILocation(line: 0, scope: !2321)
!2326 = !DILocation(line: 462, column: 10, scope: !2321)
!2327 = !DILocation(line: 462, column: 3, scope: !2321)
!2328 = distinct !DISubprogram(name: "fstat", scope: !2277, file: !2277, line: 467, type: !2329, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!713, !713, !2280}
!2331 = !{!2332, !2333}
!2332 = !DILocalVariable(name: "__fd", arg: 1, scope: !2328, file: !2277, line: 467, type: !713)
!2333 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2328, file: !2277, line: 467, type: !2280)
!2334 = !DILocation(line: 0, scope: !2328)
!2335 = !DILocation(line: 469, column: 10, scope: !2328)
!2336 = !DILocation(line: 469, column: 3, scope: !2328)
!2337 = distinct !DISubprogram(name: "fstatat", scope: !2277, file: !2277, line: 474, type: !2338, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!713, !713, !718, !2280, !713}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "__fd", arg: 1, scope: !2337, file: !2277, line: 474, type: !713)
!2342 = !DILocalVariable(name: "__filename", arg: 2, scope: !2337, file: !2277, line: 474, type: !718)
!2343 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2337, file: !2277, line: 474, type: !2280)
!2344 = !DILocalVariable(name: "__flag", arg: 4, scope: !2337, file: !2277, line: 474, type: !713)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 477, column: 10, scope: !2337)
!2347 = !DILocation(line: 477, column: 3, scope: !2337)
!2348 = distinct !DISubprogram(name: "mknod", scope: !2277, file: !2277, line: 483, type: !2349, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!713, !718, !2291, !2285}
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "__path", arg: 1, scope: !2348, file: !2277, line: 483, type: !718)
!2353 = !DILocalVariable(name: "__mode", arg: 2, scope: !2348, file: !2277, line: 483, type: !2291)
!2354 = !DILocalVariable(name: "__dev", arg: 3, scope: !2348, file: !2277, line: 483, type: !2285)
!2355 = !DILocation(line: 0, scope: !2348)
!2356 = !DILocation(line: 485, column: 10, scope: !2348)
!2357 = !DILocation(line: 485, column: 3, scope: !2348)
!2358 = distinct !DISubprogram(name: "mknodat", scope: !2277, file: !2277, line: 491, type: !2359, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!713, !713, !718, !2291, !2285}
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "__fd", arg: 1, scope: !2358, file: !2277, line: 491, type: !713)
!2363 = !DILocalVariable(name: "__path", arg: 2, scope: !2358, file: !2277, line: 491, type: !718)
!2364 = !DILocalVariable(name: "__mode", arg: 3, scope: !2358, file: !2277, line: 491, type: !2291)
!2365 = !DILocalVariable(name: "__dev", arg: 4, scope: !2358, file: !2277, line: 491, type: !2285)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 494, column: 10, scope: !2358)
!2368 = !DILocation(line: 494, column: 3, scope: !2358)
!2369 = distinct !DISubprogram(name: "stat64", scope: !2277, file: !2277, line: 502, type: !2370, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!713, !718, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2282, line: 119, size: 1152, elements: !2374)
!2374 = !{!2375, !2376, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2388, !2389, !2390, !2391}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2373, file: !2282, line: 121, baseType: !2285, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2373, file: !2282, line: 123, baseType: !2377, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2035, line: 149, baseType: !791)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2373, file: !2282, line: 124, baseType: !2289, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2373, file: !2282, line: 125, baseType: !2291, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2373, file: !2282, line: 132, baseType: !2293, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2373, file: !2282, line: 133, baseType: !2295, size: 32, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2373, file: !2282, line: 135, baseType: !713, size: 32, offset: 288)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2373, file: !2282, line: 136, baseType: !2285, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2373, file: !2282, line: 137, baseType: !2034, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2373, file: !2282, line: 143, baseType: !2300, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2373, file: !2282, line: 144, baseType: !2387, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2035, line: 180, baseType: !808)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2373, file: !2282, line: 152, baseType: !2304, size: 128, offset: 576)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2373, file: !2282, line: 153, baseType: !2304, size: 128, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2373, file: !2282, line: 154, baseType: !2304, size: 128, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2373, file: !2282, line: 164, baseType: !2314, size: 192, offset: 960)
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "__path", arg: 1, scope: !2369, file: !2277, line: 502, type: !718)
!2394 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2369, file: !2277, line: 502, type: !2372)
!2395 = !DILocation(line: 0, scope: !2369)
!2396 = !DILocation(line: 504, column: 10, scope: !2369)
!2397 = !DILocation(line: 504, column: 3, scope: !2369)
!2398 = distinct !DISubprogram(name: "lstat64", scope: !2277, file: !2277, line: 509, type: !2370, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "__path", arg: 1, scope: !2398, file: !2277, line: 509, type: !718)
!2401 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2398, file: !2277, line: 509, type: !2372)
!2402 = !DILocation(line: 0, scope: !2398)
!2403 = !DILocation(line: 511, column: 10, scope: !2398)
!2404 = !DILocation(line: 511, column: 3, scope: !2398)
!2405 = distinct !DISubprogram(name: "fstat64", scope: !2277, file: !2277, line: 516, type: !2406, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!713, !713, !2372}
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "__fd", arg: 1, scope: !2405, file: !2277, line: 516, type: !713)
!2410 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2405, file: !2277, line: 516, type: !2372)
!2411 = !DILocation(line: 0, scope: !2405)
!2412 = !DILocation(line: 518, column: 10, scope: !2405)
!2413 = !DILocation(line: 518, column: 3, scope: !2405)
!2414 = distinct !DISubprogram(name: "fstatat64", scope: !2277, file: !2277, line: 523, type: !2415, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!713, !713, !718, !2372, !713}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "__fd", arg: 1, scope: !2414, file: !2277, line: 523, type: !713)
!2419 = !DILocalVariable(name: "__filename", arg: 2, scope: !2414, file: !2277, line: 523, type: !718)
!2420 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2414, file: !2277, line: 523, type: !2372)
!2421 = !DILocalVariable(name: "__flag", arg: 4, scope: !2414, file: !2277, line: 523, type: !713)
!2422 = !DILocation(line: 0, scope: !2414)
!2423 = !DILocation(line: 526, column: 10, scope: !2414)
!2424 = !DILocation(line: 526, column: 3, scope: !2414)
!2425 = distinct !DISubprogram(name: "gate_rtl_store_motion", scope: !3, file: !3, line: 1228, type: !1958, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!2426 = !DILocation(line: 1230, column: 10, scope: !2425)
!2427 = !DILocation(line: 1230, column: 19, scope: !2425)
!2428 = !DILocation(line: 1230, column: 26, scope: !2425)
!2429 = !DILocation(line: 1230, column: 23, scope: !2425)
!2430 = !DILocation(line: 1231, column: 9, scope: !2425)
!2431 = !DILocation(line: 1231, column: 15, scope: !2425)
!2432 = !DILocation(line: 1232, column: 5, scope: !2425)
!2433 = !DILocation(line: 1232, column: 8, scope: !2425)
!2434 = !DILocation(line: 1233, column: 5, scope: !2425)
!2435 = !DILocation(line: 1233, column: 8, scope: !2425)
!2436 = !DILocation(line: 1230, column: 3, scope: !2425)
!2437 = distinct !DISubprogram(name: "execute_rtl_store_motion", scope: !3, file: !3, line: 1237, type: !1962, scopeLine: 1238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!2438 = !DILocation(line: 1239, column: 3, scope: !2437)
!2439 = !DILocation(line: 1240, column: 3, scope: !2437)
!2440 = !DILocation(line: 1241, column: 39, scope: !2437)
!2441 = !DILocation(line: 1241, column: 36, scope: !2437)
!2442 = !DILocation(line: 1242, column: 3, scope: !2437)
!2443 = distinct !DISubprogram(name: "one_store_motion_pass", scope: !3, file: !3, line: 1140, type: !1999, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450}
!2445 = !DILocalVariable(name: "bb", scope: !2443, file: !3, line: 1142, type: !1255)
!2446 = !DILocalVariable(name: "x", scope: !2443, file: !3, line: 1143, type: !713)
!2447 = !DILocalVariable(name: "ptr", scope: !2443, file: !3, line: 1144, type: !1898)
!2448 = !DILocalVariable(name: "did_edge_inserts", scope: !2443, file: !3, line: 1145, type: !713)
!2449 = !DILocalVariable(name: "n_stores_deleted", scope: !2443, file: !3, line: 1146, type: !713)
!2450 = !DILocalVariable(name: "n_stores_created", scope: !2443, file: !3, line: 1147, type: !713)
!2451 = !DILocation(line: 0, scope: !2443)
!2452 = !DILocation(line: 1149, column: 3, scope: !2443)
!2453 = !DILocation(line: 1152, column: 16, scope: !2443)
!2454 = !DILocation(line: 1152, column: 14, scope: !2443)
!2455 = !DILocation(line: 1153, column: 18, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1153, column: 7)
!2457 = !DILocation(line: 1153, column: 7, scope: !2443)
!2458 = !DILocation(line: 1155, column: 20, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1154, column: 5)
!2460 = !DILocation(line: 1155, column: 7, scope: !2459)
!2461 = !DILocation(line: 1156, column: 31, scope: !2459)
!2462 = !DILocation(line: 1157, column: 7, scope: !2459)
!2463 = !DILocation(line: 1158, column: 7, scope: !2459)
!2464 = !DILocation(line: 1162, column: 3, scope: !2443)
!2465 = !DILocation(line: 1163, column: 3, scope: !2443)
!2466 = !DILocation(line: 1164, column: 3, scope: !2443)
!2467 = !DILocation(line: 1166, column: 33, scope: !2443)
!2468 = !DILocation(line: 1166, column: 45, scope: !2443)
!2469 = !DILocation(line: 1166, column: 56, scope: !2443)
!2470 = !DILocation(line: 1167, column: 5, scope: !2443)
!2471 = !DILocation(line: 1167, column: 16, scope: !2443)
!2472 = !DILocation(line: 1166, column: 15, scope: !2443)
!2473 = !DILocation(line: 1166, column: 13, scope: !2443)
!2474 = !DILocation(line: 1171, column: 14, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1171, column: 3)
!2476 = !DILocation(line: 1171, column: 8, scope: !2475)
!2477 = !DILocation(line: 1147, column: 7, scope: !2443)
!2478 = !DILocation(line: 1146, column: 7, scope: !2443)
!2479 = !DILocation(line: 1145, column: 7, scope: !2443)
!2480 = !DILocation(line: 0, scope: !2475)
!2481 = !DILocation(line: 1171, column: 36, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1171, column: 3)
!2483 = !DILocation(line: 1171, column: 3, scope: !2475)
!2484 = !DILocation(line: 1175, column: 16, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1175, column: 7)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1172, column: 5)
!2487 = !DILocation(line: 0, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1176, column: 6)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1175, column: 7)
!2490 = !DILocation(line: 1175, column: 12, scope: !2485)
!2491 = !DILocation(line: 0, scope: !2485)
!2492 = !DILocation(line: 1175, column: 45, scope: !2489)
!2493 = !DILocation(line: 1175, column: 7, scope: !2485)
!2494 = !DILocation(line: 1176, column: 6, scope: !2488)
!2495 = !DILocation(line: 1177, column: 6, scope: !2488)
!2496 = !DILocation(line: 1177, column: 10, scope: !2488)
!2497 = !DILocation(line: 1177, column: 37, scope: !2488)
!2498 = !DILocation(line: 1177, column: 43, scope: !2488)
!2499 = !DILocation(line: 1176, column: 6, scope: !2489)
!2500 = !DILocation(line: 1175, column: 7, scope: !2489)
!2501 = distinct !{!2501, !2493, !2502}
!2502 = !DILocation(line: 1178, column: 4, scope: !2485)
!2503 = !DILocation(line: 1180, column: 11, scope: !2486)
!2504 = !DILocation(line: 1182, column: 8, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1182, column: 8)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1181, column: 2)
!2507 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1180, column: 11)
!2508 = !DILocation(line: 1182, column: 18, scope: !2505)
!2509 = !DILocation(line: 1182, column: 8, scope: !2506)
!2510 = !DILocation(line: 1185, column: 13, scope: !2505)
!2511 = !DILocation(line: 1185, column: 20, scope: !2505)
!2512 = !DILocation(line: 1185, column: 47, scope: !2505)
!2513 = !DILocation(line: 1185, column: 52, scope: !2505)
!2514 = !DILocation(line: 1186, column: 35, scope: !2505)
!2515 = !DILocation(line: 1186, column: 41, scope: !2505)
!2516 = !DILocation(line: 1183, column: 6, scope: !2505)
!2517 = !DILocation(line: 1192, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1192, column: 7)
!2519 = !DILocation(line: 1192, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1192, column: 7)
!2521 = !DILocation(line: 0, scope: !2518)
!2522 = !DILocation(line: 1199, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1199, column: 7)
!2524 = !DILocation(line: 1193, column: 6, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1193, column: 6)
!2526 = !DILocation(line: 1193, column: 6, scope: !2520)
!2527 = !DILocation(line: 1195, column: 6, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1194, column: 4)
!2529 = !DILocation(line: 1196, column: 22, scope: !2528)
!2530 = !DILocation(line: 1197, column: 4, scope: !2528)
!2531 = !DILocation(line: 0, scope: !2520)
!2532 = distinct !{!2532, !2517, !2533}
!2533 = !DILocation(line: 1197, column: 4, scope: !2518)
!2534 = !DILocation(line: 1199, column: 23, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1199, column: 7)
!2536 = !DILocation(line: 1199, column: 21, scope: !2535)
!2537 = !DILocation(line: 1200, column: 6, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1200, column: 6)
!2539 = !DILocation(line: 1200, column: 6, scope: !2535)
!2540 = !DILocation(line: 1202, column: 45, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1201, column: 4)
!2542 = !DILocation(line: 1202, column: 26, scope: !2541)
!2543 = !DILocation(line: 1202, column: 23, scope: !2541)
!2544 = !DILocation(line: 1203, column: 22, scope: !2541)
!2545 = !DILocation(line: 1204, column: 4, scope: !2541)
!2546 = !DILocation(line: 1199, column: 47, scope: !2535)
!2547 = !DILocation(line: 1199, column: 7, scope: !2535)
!2548 = distinct !{!2548, !2522, !2549}
!2549 = !DILocation(line: 1204, column: 4, scope: !2523)
!2550 = !DILocation(line: 1171, column: 51, scope: !2482)
!2551 = !DILocation(line: 1171, column: 3, scope: !2482)
!2552 = distinct !{!2552, !2483, !2553}
!2553 = !DILocation(line: 1205, column: 5, scope: !2475)
!2554 = !DILocation(line: 1207, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1207, column: 7)
!2556 = !DILocation(line: 1207, column: 7, scope: !2443)
!2557 = !DILocation(line: 1208, column: 5, scope: !2555)
!2558 = !DILocation(line: 1210, column: 3, scope: !2443)
!2559 = !DILocation(line: 1211, column: 19, scope: !2443)
!2560 = !DILocation(line: 1211, column: 3, scope: !2443)
!2561 = !DILocation(line: 1212, column: 3, scope: !2443)
!2562 = !DILocation(line: 1213, column: 3, scope: !2443)
!2563 = !DILocation(line: 1215, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1215, column: 7)
!2565 = !DILocation(line: 1215, column: 7, scope: !2443)
!2566 = !DILocation(line: 1218, column: 9, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1216, column: 5)
!2568 = !DILocation(line: 1218, column: 35, scope: !2567)
!2569 = !DILocation(line: 1217, column: 7, scope: !2567)
!2570 = !DILocation(line: 1219, column: 16, scope: !2567)
!2571 = !DILocation(line: 1219, column: 7, scope: !2567)
!2572 = !DILocation(line: 1221, column: 5, scope: !2567)
!2573 = !DILocation(line: 1223, column: 28, scope: !2443)
!2574 = !DILocation(line: 1223, column: 52, scope: !2443)
!2575 = !DILocation(line: 1223, column: 32, scope: !2443)
!2576 = !DILocation(line: 1223, column: 3, scope: !2443)
!2577 = !DILocation(line: 1224, column: 1, scope: !2443)
!2578 = distinct !DISubprogram(name: "compute_store_table", scope: !3, file: !3, line: 644, type: !1999, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2646, !2647, !2648, !2649, !2651}
!2580 = !DILocalVariable(name: "ret", scope: !2578, file: !3, line: 646, type: !713)
!2581 = !DILocalVariable(name: "bb", scope: !2578, file: !3, line: 647, type: !1255)
!2582 = !DILocalVariable(name: "insn", scope: !2578, file: !3, line: 651, type: !721)
!2583 = !DILocalVariable(name: "tmp", scope: !2578, file: !3, line: 651, type: !721)
!2584 = !DILocalVariable(name: "def_rec", scope: !2578, file: !3, line: 652, type: !2585)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !2587, line: 429, baseType: !2588)
!2587 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !2587, line: 422, size: 704, elements: !2590)
!2590 = !{!2591, !2629, !2634, !2639}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2589, file: !2587, line: 424, baseType: !2592, size: 512)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !2587, line: 356, size: 512, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2604, !2624, !2625, !2626, !2627, !2628}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !2592, file: !2587, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2592, file: !2587, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !2587, line: 364, baseType: !713, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2592, file: !2587, line: 365, baseType: !721, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !2592, file: !2587, line: 366, baseType: !2599, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !2587, line: 449, size: 128, elements: !2601)
!2601 = !{!2602, !2603}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2600, file: !2587, line: 451, baseType: !2586, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2600, file: !2587, line: 452, baseType: !2599, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !2592, file: !2587, line: 370, baseType: !2605, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !2587, line: 433, size: 384, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2623}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2606, file: !2587, line: 435, baseType: !721, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2606, file: !2587, line: 436, baseType: !2585, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2606, file: !2587, line: 437, baseType: !2585, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !2606, file: !2587, line: 439, baseType: !2585, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !2606, file: !2587, line: 440, baseType: !2613, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !2587, line: 339, size: 192, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !2615, file: !2587, line: 341, baseType: !721, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2615, file: !2587, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2615, file: !2587, line: 346, baseType: !713, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !2615, file: !2587, line: 347, baseType: !7, size: 32, offset: 96)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !2615, file: !2587, line: 348, baseType: !7, size: 32, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !2615, file: !2587, line: 349, baseType: !7, size: 32, offset: 160)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !2606, file: !2587, line: 444, baseType: !713, size: 32, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !2592, file: !2587, line: 374, baseType: !2588, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !2592, file: !2587, line: 375, baseType: !2588, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !2592, file: !2587, line: 376, baseType: !7, size: 32, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2592, file: !2587, line: 379, baseType: !713, size: 32, offset: 416)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !2592, file: !2587, line: 382, baseType: !7, size: 32, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !2589, file: !2587, line: 425, baseType: !2630, size: 576)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !2587, line: 398, size: 576, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2630, file: !2587, line: 400, baseType: !2592, size: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2630, file: !2587, line: 405, baseType: !1902, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !2589, file: !2587, line: 426, baseType: !2635, size: 576)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !2587, line: 388, size: 576, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2635, file: !2587, line: 390, baseType: !2592, size: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2635, file: !2587, line: 394, baseType: !1255, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !2589, file: !2587, line: 427, baseType: !2640, size: 704)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !2587, line: 413, size: 704, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2640, file: !2587, line: 415, baseType: !2630, size: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2640, file: !2587, line: 416, baseType: !713, size: 32, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2640, file: !2587, line: 417, baseType: !713, size: 32, offset: 608)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2640, file: !2587, line: 418, baseType: !189, size: 32, offset: 640)
!2646 = !DILocalVariable(name: "last_set_in", scope: !2578, file: !3, line: 653, type: !720)
!2647 = !DILocalVariable(name: "already_set", scope: !2578, file: !3, line: 653, type: !720)
!2648 = !DILocalVariable(name: "ptr", scope: !2578, file: !3, line: 654, type: !1898)
!2649 = !DILocalVariable(name: "prev_next_ptr_ptr", scope: !2578, file: !3, line: 654, type: !2650)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!2651 = !DILocalVariable(name: "max_gcse_regno", scope: !2578, file: !3, line: 655, type: !7)
!2652 = !DILocation(line: 655, column: 33, scope: !2578)
!2653 = !DILocation(line: 0, scope: !2578)
!2654 = !DILocation(line: 657, column: 21, scope: !2578)
!2655 = !DILocation(line: 658, column: 29, scope: !2578)
!2656 = !DILocation(line: 658, column: 27, scope: !2578)
!2657 = !DILocation(line: 660, column: 17, scope: !2578)
!2658 = !DILocation(line: 661, column: 17, scope: !2578)
!2659 = !DILocation(line: 664, column: 3, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 664, column: 3)
!2661 = !DILocation(line: 664, column: 3, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 664, column: 3)
!2663 = !DILocation(line: 0, scope: !2660)
!2664 = !DILocation(line: 667, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 667, column: 7)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 665, column: 5)
!2667 = !DILocation(line: 0, scope: !2665)
!2668 = !DILocation(line: 667, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 667, column: 7)
!2670 = !DILocation(line: 670, column: 10, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 670, column: 8)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 668, column: 2)
!2673 = !DILocation(line: 670, column: 8, scope: !2672)
!2674 = !DILocation(line: 673, column: 19, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 673, column: 4)
!2676 = !DILocation(line: 673, column: 9, scope: !2675)
!2677 = !DILocation(line: 0, scope: !2675)
!2678 = !DILocation(line: 673, column: 40, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 673, column: 4)
!2680 = !DILocation(line: 673, column: 4, scope: !2675)
!2681 = !DILocation(line: 674, column: 45, scope: !2679)
!2682 = !DILocation(line: 674, column: 18, scope: !2679)
!2683 = !DILocation(line: 674, column: 6, scope: !2679)
!2684 = !DILocation(line: 674, column: 43, scope: !2679)
!2685 = !DILocation(line: 673, column: 57, scope: !2679)
!2686 = !DILocation(line: 673, column: 4, scope: !2679)
!2687 = distinct !{!2687, !2680, !2688}
!2688 = !DILocation(line: 674, column: 45, scope: !2675)
!2689 = distinct !{!2689, !2664, !2690}
!2690 = !DILocation(line: 675, column: 2, scope: !2665)
!2691 = !DILocation(line: 678, column: 7, scope: !2666)
!2692 = !DILocation(line: 679, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 679, column: 7)
!2694 = !DILocation(line: 0, scope: !2693)
!2695 = !DILocation(line: 679, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 679, column: 7)
!2697 = !DILocation(line: 681, column: 10, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 681, column: 8)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 680, column: 2)
!2700 = !DILocation(line: 681, column: 8, scope: !2699)
!2701 = !DILocation(line: 684, column: 19, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 684, column: 4)
!2703 = !DILocation(line: 684, column: 9, scope: !2702)
!2704 = !DILocation(line: 0, scope: !2702)
!2705 = !DILocation(line: 684, column: 40, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 684, column: 4)
!2707 = !DILocation(line: 684, column: 4, scope: !2702)
!2708 = !DILocation(line: 685, column: 45, scope: !2706)
!2709 = !DILocation(line: 685, column: 18, scope: !2706)
!2710 = !DILocation(line: 685, column: 6, scope: !2706)
!2711 = !DILocation(line: 685, column: 43, scope: !2706)
!2712 = !DILocation(line: 684, column: 57, scope: !2706)
!2713 = !DILocation(line: 684, column: 4, scope: !2706)
!2714 = distinct !{!2714, !2707, !2715}
!2715 = !DILocation(line: 685, column: 45, scope: !2702)
!2716 = !DILocation(line: 688, column: 4, scope: !2699)
!2717 = !DILocation(line: 691, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 691, column: 4)
!2719 = !DILocation(line: 691, column: 9, scope: !2718)
!2720 = !DILocation(line: 0, scope: !2718)
!2721 = !DILocation(line: 691, column: 40, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 691, column: 4)
!2723 = !DILocation(line: 691, column: 4, scope: !2718)
!2724 = !DILocation(line: 692, column: 22, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 692, column: 10)
!2726 = !DILocation(line: 692, column: 10, scope: !2725)
!2727 = !DILocation(line: 692, column: 50, scope: !2725)
!2728 = !DILocation(line: 692, column: 47, scope: !2725)
!2729 = !DILocation(line: 692, column: 10, scope: !2722)
!2730 = !DILocation(line: 693, column: 45, scope: !2725)
!2731 = !DILocation(line: 693, column: 8, scope: !2725)
!2732 = !DILocation(line: 691, column: 57, scope: !2722)
!2733 = !DILocation(line: 691, column: 4, scope: !2722)
!2734 = distinct !{!2734, !2723, !2735}
!2735 = !DILocation(line: 693, column: 47, scope: !2718)
!2736 = distinct !{!2736, !2692, !2737}
!2737 = !DILocation(line: 694, column: 2, scope: !2693)
!2738 = !DILocation(line: 703, column: 18, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 703, column: 7)
!2740 = !DILocation(line: 703, column: 12, scope: !2739)
!2741 = !DILocation(line: 0, scope: !2739)
!2742 = !DILocation(line: 703, column: 40, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 703, column: 7)
!2744 = !DILocation(line: 703, column: 7, scope: !2739)
!2745 = !DILocation(line: 705, column: 4, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 704, column: 2)
!2747 = !DILocation(line: 705, column: 35, scope: !2746)
!2748 = !DILocation(line: 706, column: 13, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 706, column: 8)
!2750 = !DILocation(line: 706, column: 8, scope: !2749)
!2751 = !DILocation(line: 707, column: 8, scope: !2749)
!2752 = !DILocation(line: 707, column: 18, scope: !2749)
!2753 = !DILocation(line: 707, column: 47, scope: !2749)
!2754 = !DILocation(line: 706, column: 8, scope: !2746)
!2755 = !DILocation(line: 708, column: 26, scope: !2749)
!2756 = !DILocation(line: 708, column: 24, scope: !2749)
!2757 = !DILocation(line: 708, column: 6, scope: !2749)
!2758 = !DILocation(line: 703, column: 55, scope: !2743)
!2759 = !DILocation(line: 703, column: 7, scope: !2743)
!2760 = distinct !{!2760, !2744, !2761}
!2761 = !DILocation(line: 709, column: 2, scope: !2739)
!2762 = !DILocation(line: 0, scope: !2662)
!2763 = distinct !{!2763, !2659, !2764}
!2764 = !DILocation(line: 710, column: 5, scope: !2660)
!2765 = !DILocation(line: 714, column: 8, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 714, column: 3)
!2767 = !DILocation(line: 0, scope: !2766)
!2768 = !DILocation(line: 715, column: 12, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 714, column: 3)
!2770 = !DILocation(line: 714, column: 3, scope: !2766)
!2771 = !DILocation(line: 718, column: 18, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 718, column: 11)
!2773 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 717, column: 5)
!2774 = !DILocation(line: 718, column: 13, scope: !2772)
!2775 = !DILocation(line: 0, scope: !2772)
!2776 = !DILocation(line: 718, column: 11, scope: !2773)
!2777 = !DILocation(line: 720, column: 30, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 719, column: 2)
!2779 = !DILocation(line: 720, column: 23, scope: !2778)
!2780 = !DILocation(line: 721, column: 31, scope: !2778)
!2781 = !DILocation(line: 722, column: 10, scope: !2778)
!2782 = !DILocation(line: 722, column: 20, scope: !2778)
!2783 = !DILocation(line: 721, column: 4, scope: !2778)
!2784 = !DILocation(line: 723, column: 4, scope: !2778)
!2785 = !DILocation(line: 724, column: 2, scope: !2778)
!2786 = !DILocation(line: 714, column: 3, scope: !2769)
!2787 = distinct !{!2787, !2770, !2788}
!2788 = !DILocation(line: 727, column: 5, scope: !2766)
!2789 = !DILocation(line: 729, column: 9, scope: !2578)
!2790 = !DILocation(line: 731, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 731, column: 7)
!2792 = !DILocation(line: 731, column: 7, scope: !2578)
!2793 = !DILocation(line: 732, column: 5, scope: !2791)
!2794 = !DILocation(line: 734, column: 3, scope: !2578)
!2795 = !DILocation(line: 735, column: 3, scope: !2578)
!2796 = !DILocation(line: 736, column: 3, scope: !2578)
!2797 = distinct !DISubprogram(name: "build_store_vectors", scope: !3, file: !3, line: 1015, type: !2798, scopeLine: 1016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null}
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2807, !2816, !2824}
!2801 = !DILocalVariable(name: "bb", scope: !2797, file: !3, line: 1017, type: !1255)
!2802 = !DILocalVariable(name: "regs_set_in_block", scope: !2797, file: !3, line: 1018, type: !720)
!2803 = !DILocalVariable(name: "insn", scope: !2797, file: !3, line: 1019, type: !721)
!2804 = !DILocalVariable(name: "st", scope: !2797, file: !3, line: 1019, type: !721)
!2805 = !DILocalVariable(name: "ptr", scope: !2797, file: !3, line: 1020, type: !1898)
!2806 = !DILocalVariable(name: "max_gcse_regno", scope: !2797, file: !3, line: 1021, type: !7)
!2807 = !DILocalVariable(name: "r", scope: !2808, file: !3, line: 1044, type: !721)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1043, column: 6)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 1042, column: 8)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 1034, column: 2)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1033, column: 7)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1033, column: 7)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1032, column: 5)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 1031, column: 3)
!2815 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1031, column: 3)
!2816 = !DILocalVariable(name: "def_rec", scope: !2817, file: !3, line: 1075, type: !2585)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1074, column: 4)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1073, column: 6)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1072, column: 7)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1072, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1069, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1068, column: 3)
!2823 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1068, column: 3)
!2824 = !DILocalVariable(name: "ref_regno", scope: !2825, file: !3, line: 1078, type: !7)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1077, column: 8)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1076, column: 6)
!2827 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 1076, column: 6)
!2828 = !DILocation(line: 1021, column: 33, scope: !2797)
!2829 = !DILocation(line: 0, scope: !2797)
!2830 = !DILocation(line: 1025, column: 36, scope: !2797)
!2831 = !DILocation(line: 1025, column: 54, scope: !2797)
!2832 = !DILocation(line: 1025, column: 14, scope: !2797)
!2833 = !DILocation(line: 1025, column: 12, scope: !2797)
!2834 = !DILocation(line: 1026, column: 34, scope: !2797)
!2835 = !DILocation(line: 1026, column: 3, scope: !2797)
!2836 = !DILocation(line: 1028, column: 37, scope: !2797)
!2837 = !DILocation(line: 1028, column: 55, scope: !2797)
!2838 = !DILocation(line: 1028, column: 15, scope: !2797)
!2839 = !DILocation(line: 1028, column: 13, scope: !2797)
!2840 = !DILocation(line: 1029, column: 35, scope: !2797)
!2841 = !DILocation(line: 1029, column: 3, scope: !2797)
!2842 = !DILocation(line: 1031, column: 14, scope: !2815)
!2843 = !DILocation(line: 1031, column: 8, scope: !2815)
!2844 = !DILocation(line: 0, scope: !2815)
!2845 = !DILocation(line: 1031, column: 36, scope: !2814)
!2846 = !DILocation(line: 1031, column: 3, scope: !2815)
!2847 = !DILocation(line: 1033, column: 22, scope: !2812)
!2848 = !DILocation(line: 0, scope: !2809)
!2849 = !DILocation(line: 0, scope: !2808)
!2850 = !DILocation(line: 1033, column: 12, scope: !2812)
!2851 = !DILocation(line: 0, scope: !2812)
!2852 = !DILocation(line: 1033, column: 39, scope: !2811)
!2853 = !DILocation(line: 1033, column: 7, scope: !2812)
!2854 = !DILocation(line: 1035, column: 11, scope: !2810)
!2855 = !DILocation(line: 1036, column: 9, scope: !2810)
!2856 = !DILocation(line: 1042, column: 8, scope: !2809)
!2857 = !DILocation(line: 1042, column: 8, scope: !2810)
!2858 = !DILocation(line: 1044, column: 44, scope: !2808)
!2859 = !DILocation(line: 1044, column: 16, scope: !2808)
!2860 = !DILocation(line: 1045, column: 12, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1045, column: 12)
!2862 = !DILocation(line: 1045, column: 12, scope: !2808)
!2863 = !DILocation(line: 1046, column: 3, scope: !2861)
!2864 = !DILocation(line: 1047, column: 31, scope: !2808)
!2865 = !DILocation(line: 1047, column: 8, scope: !2808)
!2866 = !DILocation(line: 1050, column: 4, scope: !2810)
!2867 = !DILocation(line: 1051, column: 2, scope: !2810)
!2868 = !DILocation(line: 1033, column: 53, scope: !2811)
!2869 = !DILocation(line: 1033, column: 7, scope: !2811)
!2870 = distinct !{!2870, !2853, !2871}
!2871 = !DILocation(line: 1051, column: 2, scope: !2812)
!2872 = !DILocation(line: 1053, column: 22, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1053, column: 7)
!2874 = !DILocation(line: 1053, column: 12, scope: !2873)
!2875 = !DILocation(line: 0, scope: !2873)
!2876 = !DILocation(line: 1053, column: 39, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1053, column: 7)
!2878 = !DILocation(line: 1053, column: 7, scope: !2873)
!2879 = !DILocation(line: 1055, column: 11, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 1054, column: 2)
!2881 = !DILocation(line: 1056, column: 9, scope: !2880)
!2882 = !DILocation(line: 1057, column: 13, scope: !2880)
!2883 = !DILocation(line: 1057, column: 27, scope: !2880)
!2884 = !DILocation(line: 1057, column: 40, scope: !2880)
!2885 = !DILocation(line: 1057, column: 4, scope: !2880)
!2886 = !DILocation(line: 1053, column: 53, scope: !2877)
!2887 = !DILocation(line: 1053, column: 7, scope: !2877)
!2888 = distinct !{!2888, !2878, !2889}
!2889 = !DILocation(line: 1058, column: 2, scope: !2873)
!2890 = !DILocation(line: 1031, column: 51, scope: !2814)
!2891 = !DILocation(line: 1031, column: 3, scope: !2814)
!2892 = distinct !{!2892, !2846, !2893}
!2893 = !DILocation(line: 1059, column: 5, scope: !2815)
!2894 = !DILocation(line: 1061, column: 35, scope: !2797)
!2895 = !DILocation(line: 1061, column: 53, scope: !2797)
!2896 = !DILocation(line: 1061, column: 13, scope: !2797)
!2897 = !DILocation(line: 1061, column: 11, scope: !2797)
!2898 = !DILocation(line: 1062, column: 33, scope: !2797)
!2899 = !DILocation(line: 1062, column: 3, scope: !2797)
!2900 = !DILocation(line: 1064, column: 37, scope: !2797)
!2901 = !DILocation(line: 1064, column: 55, scope: !2797)
!2902 = !DILocation(line: 1064, column: 15, scope: !2797)
!2903 = !DILocation(line: 1064, column: 13, scope: !2797)
!2904 = !DILocation(line: 1065, column: 35, scope: !2797)
!2905 = !DILocation(line: 1065, column: 3, scope: !2797)
!2906 = !DILocation(line: 1066, column: 23, scope: !2797)
!2907 = !DILocation(line: 1068, column: 3, scope: !2823)
!2908 = !DILocation(line: 1068, column: 3, scope: !2822)
!2909 = !DILocation(line: 0, scope: !2823)
!2910 = !DILocation(line: 1070, column: 7, scope: !2821)
!2911 = !DILocation(line: 1072, column: 7, scope: !2820)
!2912 = !DILocation(line: 0, scope: !2820)
!2913 = !DILocation(line: 1072, column: 7, scope: !2819)
!2914 = !DILocation(line: 1073, column: 6, scope: !2818)
!2915 = !DILocation(line: 1073, column: 6, scope: !2819)
!2916 = !DILocation(line: 1076, column: 21, scope: !2827)
!2917 = !DILocation(line: 0, scope: !2817)
!2918 = !DILocation(line: 1076, column: 11, scope: !2827)
!2919 = !DILocation(line: 0, scope: !2827)
!2920 = !DILocation(line: 1076, column: 42, scope: !2826)
!2921 = !DILocation(line: 1076, column: 6, scope: !2827)
!2922 = !DILocation(line: 1078, column: 28, scope: !2825)
!2923 = !DILocation(line: 0, scope: !2825)
!2924 = !DILocation(line: 1079, column: 17, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1079, column: 7)
!2926 = !DILocation(line: 1079, column: 7, scope: !2825)
!2927 = !DILocation(line: 1080, column: 5, scope: !2925)
!2928 = !DILocation(line: 1080, column: 48, scope: !2925)
!2929 = !DILocation(line: 1076, column: 59, scope: !2826)
!2930 = !DILocation(line: 1076, column: 6, scope: !2826)
!2931 = distinct !{!2931, !2921, !2932}
!2932 = !DILocation(line: 1081, column: 8, scope: !2827)
!2933 = distinct !{!2933, !2911, !2934}
!2934 = !DILocation(line: 1082, column: 4, scope: !2820)
!2935 = !DILocation(line: 1084, column: 18, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1084, column: 7)
!2937 = !DILocation(line: 0, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1091, column: 12)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1088, column: 6)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1086, column: 8)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1085, column: 2)
!2942 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1084, column: 7)
!2943 = !DILocation(line: 1084, column: 12, scope: !2936)
!2944 = !DILocation(line: 0, scope: !2936)
!2945 = !DILocation(line: 1084, column: 40, scope: !2942)
!2946 = !DILocation(line: 1084, column: 7, scope: !2936)
!2947 = !DILocation(line: 1086, column: 33, scope: !2940)
!2948 = !DILocation(line: 1086, column: 47, scope: !2940)
!2949 = !DILocation(line: 1086, column: 61, scope: !2940)
!2950 = !DILocation(line: 1086, column: 8, scope: !2940)
!2951 = !DILocation(line: 1086, column: 8, scope: !2941)
!2952 = !DILocation(line: 1091, column: 13, scope: !2938)
!2953 = !DILocation(line: 1092, column: 5, scope: !2938)
!2954 = !DILocation(line: 1092, column: 9, scope: !2938)
!2955 = !DILocation(line: 1091, column: 12, scope: !2939)
!2956 = !DILocation(line: 1093, column: 12, scope: !2938)
!2957 = !DILocation(line: 1093, column: 3, scope: !2938)
!2958 = !DILocation(line: 1096, column: 15, scope: !2940)
!2959 = !DILocation(line: 1096, column: 29, scope: !2940)
!2960 = !DILocation(line: 1096, column: 42, scope: !2940)
!2961 = !DILocation(line: 1096, column: 6, scope: !2940)
!2962 = !DILocation(line: 1084, column: 55, scope: !2942)
!2963 = !DILocation(line: 1084, column: 7, scope: !2942)
!2964 = distinct !{!2964, !2946, !2965}
!2965 = !DILocation(line: 1097, column: 2, scope: !2936)
!2966 = !DILocation(line: 0, scope: !2822)
!2967 = distinct !{!2967, !2907, !2968}
!2968 = !DILocation(line: 1098, column: 5, scope: !2823)
!2969 = !DILocation(line: 1100, column: 3, scope: !2797)
!2970 = !DILocation(line: 1102, column: 7, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1102, column: 7)
!2972 = !DILocation(line: 1102, column: 7, scope: !2797)
!2973 = !DILocation(line: 1104, column: 56, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1103, column: 5)
!2975 = !DILocation(line: 1104, column: 67, scope: !2974)
!2976 = !DILocation(line: 1104, column: 7, scope: !2974)
!2977 = !DILocation(line: 1105, column: 28, scope: !2974)
!2978 = !DILocation(line: 1105, column: 54, scope: !2974)
!2979 = !DILocation(line: 1105, column: 63, scope: !2974)
!2980 = !DILocation(line: 1105, column: 7, scope: !2974)
!2981 = !DILocation(line: 1106, column: 28, scope: !2974)
!2982 = !DILocation(line: 1106, column: 56, scope: !2974)
!2983 = !DILocation(line: 1106, column: 67, scope: !2974)
!2984 = !DILocation(line: 1106, column: 7, scope: !2974)
!2985 = !DILocation(line: 1107, column: 28, scope: !2974)
!2986 = !DILocation(line: 1107, column: 55, scope: !2974)
!2987 = !DILocation(line: 1107, column: 65, scope: !2974)
!2988 = !DILocation(line: 1107, column: 7, scope: !2974)
!2989 = !DILocation(line: 1108, column: 5, scope: !2974)
!2990 = !DILocation(line: 1109, column: 1, scope: !2797)
!2991 = distinct !DISubprogram(name: "first_st_expr", scope: !3, file: !3, line: 212, type: !2992, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!1898}
!2994 = !DILocation(line: 214, column: 10, scope: !2991)
!2995 = !DILocation(line: 214, column: 3, scope: !2991)
!2996 = distinct !DISubprogram(name: "delete_store", scope: !3, file: !3, line: 990, type: !2997, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !1898, !1255}
!2999 = !{!3000, !3001, !3002, !3003, !3004}
!3000 = !DILocalVariable(name: "expr", arg: 1, scope: !2996, file: !3, line: 990, type: !1898)
!3001 = !DILocalVariable(name: "bb", arg: 2, scope: !2996, file: !3, line: 990, type: !1255)
!3002 = !DILocalVariable(name: "reg", scope: !2996, file: !3, line: 992, type: !721)
!3003 = !DILocalVariable(name: "i", scope: !2996, file: !3, line: 992, type: !721)
!3004 = !DILocalVariable(name: "del", scope: !2996, file: !3, line: 992, type: !721)
!3005 = !DILocation(line: 0, scope: !2996)
!3006 = !DILocation(line: 994, column: 13, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 994, column: 7)
!3008 = !DILocation(line: 994, column: 26, scope: !3007)
!3009 = !DILocation(line: 994, column: 7, scope: !2996)
!3010 = !DILocation(line: 995, column: 55, scope: !3007)
!3011 = !DILocation(line: 995, column: 26, scope: !3007)
!3012 = !DILocation(line: 995, column: 24, scope: !3007)
!3013 = !DILocation(line: 995, column: 5, scope: !3007)
!3014 = !DILocation(line: 997, column: 15, scope: !2996)
!3015 = !DILocation(line: 999, column: 18, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 999, column: 3)
!3017 = !DILocation(line: 999, column: 8, scope: !3016)
!3018 = !DILocation(line: 0, scope: !3016)
!3019 = !DILocation(line: 999, column: 3, scope: !3016)
!3020 = !DILocation(line: 1001, column: 13, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1000, column: 5)
!3022 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 999, column: 3)
!3023 = !DILocation(line: 1002, column: 11, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1002, column: 11)
!3025 = !DILocation(line: 1002, column: 32, scope: !3024)
!3026 = !DILocation(line: 1002, column: 11, scope: !3021)
!3027 = !DILocation(line: 1006, column: 4, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1003, column: 2)
!3029 = !DILocation(line: 1007, column: 4, scope: !3028)
!3030 = !DILocation(line: 999, column: 39, scope: !3022)
!3031 = !DILocation(line: 999, column: 3, scope: !3022)
!3032 = distinct !{!3032, !3019, !3033}
!3033 = !DILocation(line: 1009, column: 5, scope: !3016)
!3034 = !DILocation(line: 1010, column: 1, scope: !2996)
!3035 = distinct !DISubprogram(name: "insert_store", scope: !3, file: !3, line: 780, type: !3036, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!713, !1898, !1272}
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3051}
!3039 = !DILocalVariable(name: "expr", arg: 1, scope: !3035, file: !3, line: 780, type: !1898)
!3040 = !DILocalVariable(name: "e", arg: 2, scope: !3035, file: !3, line: 780, type: !1272)
!3041 = !DILocalVariable(name: "reg", scope: !3035, file: !3, line: 782, type: !721)
!3042 = !DILocalVariable(name: "insn", scope: !3035, file: !3, line: 782, type: !721)
!3043 = !DILocalVariable(name: "bb", scope: !3035, file: !3, line: 783, type: !1255)
!3044 = !DILocalVariable(name: "tmp", scope: !3035, file: !3, line: 784, type: !1272)
!3045 = !DILocalVariable(name: "ei", scope: !3035, file: !3, line: 785, type: !1904)
!3046 = !DILocalVariable(name: "index", scope: !3047, file: !3, line: 805, type: !713)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 804, column: 7)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 803, column: 9)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 802, column: 3)
!3050 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 802, column: 3)
!3051 = !DILocalVariable(name: "index", scope: !3052, file: !3, line: 818, type: !713)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 817, column: 2)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 816, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 816, column: 7)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 815, column: 5)
!3056 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 814, column: 7)
!3057 = !DILocation(line: 0, scope: !3035)
!3058 = !DILocation(line: 784, column: 3, scope: !3035)
!3059 = !DILocation(line: 785, column: 3, scope: !3035)
!3060 = !DILocation(line: 789, column: 13, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 789, column: 7)
!3062 = !DILocation(line: 789, column: 26, scope: !3061)
!3063 = !DILocation(line: 789, column: 7, scope: !3035)
!3064 = !DILocation(line: 792, column: 10, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 792, column: 7)
!3066 = !DILocation(line: 792, column: 16, scope: !3065)
!3067 = !DILocation(line: 792, column: 7, scope: !3035)
!3068 = !DILocation(line: 796, column: 41, scope: !3035)
!3069 = !DILocation(line: 796, column: 25, scope: !3035)
!3070 = !DILocation(line: 796, column: 10, scope: !3035)
!3071 = !DILocation(line: 801, column: 11, scope: !3035)
!3072 = !DILocation(line: 802, column: 3, scope: !3050)
!3073 = !DILocation(line: 0, scope: !3049)
!3074 = !DILocation(line: 0, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 808, column: 6)
!3076 = !DILocation(line: 802, column: 3, scope: !3049)
!3077 = !DILocation(line: 803, column: 11, scope: !3048)
!3078 = !DILocation(line: 803, column: 16, scope: !3048)
!3079 = !DILocation(line: 803, column: 22, scope: !3048)
!3080 = !DILocation(line: 803, column: 9, scope: !3049)
!3081 = !DILocation(line: 805, column: 14, scope: !3047)
!3082 = !DILocation(line: 0, scope: !3047)
!3083 = !DILocation(line: 807, column: 2, scope: !3047)
!3084 = !DILocation(line: 808, column: 8, scope: !3075)
!3085 = distinct !{!3085, !3072, !3086}
!3086 = !DILocation(line: 810, column: 7, scope: !3050)
!3087 = !DILocation(line: 814, column: 8, scope: !3056)
!3088 = !DILocation(line: 814, column: 12, scope: !3056)
!3089 = !DILocation(line: 814, column: 21, scope: !3056)
!3090 = !DILocation(line: 814, column: 18, scope: !3056)
!3091 = !DILocation(line: 814, column: 7, scope: !3035)
!3092 = !DILocation(line: 816, column: 7, scope: !3054)
!3093 = !DILocation(line: 816, column: 7, scope: !3053)
!3094 = !DILocation(line: 818, column: 16, scope: !3052)
!3095 = !DILocation(line: 0, scope: !3052)
!3096 = !DILocation(line: 819, column: 15, scope: !3052)
!3097 = !DILocation(line: 819, column: 43, scope: !3052)
!3098 = !DILocation(line: 819, column: 4, scope: !3052)
!3099 = distinct !{!3099, !3092, !3100}
!3100 = !DILocation(line: 820, column: 2, scope: !3054)
!3101 = !DILocation(line: 821, column: 7, scope: !3055)
!3102 = !DILocation(line: 822, column: 7, scope: !3055)
!3103 = !DILocation(line: 827, column: 3, scope: !3035)
!3104 = !DILocation(line: 829, column: 3, scope: !3035)
!3105 = !DILocation(line: 831, column: 7, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 831, column: 7)
!3107 = !DILocation(line: 831, column: 7, scope: !3035)
!3108 = !DILocation(line: 834, column: 12, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 832, column: 5)
!3110 = !DILocation(line: 834, column: 17, scope: !3109)
!3111 = !DILocation(line: 834, column: 27, scope: !3109)
!3112 = !DILocation(line: 834, column: 33, scope: !3109)
!3113 = !DILocation(line: 833, column: 7, scope: !3109)
!3114 = !DILocation(line: 835, column: 25, scope: !3109)
!3115 = !DILocation(line: 835, column: 7, scope: !3109)
!3116 = !DILocation(line: 836, column: 16, scope: !3109)
!3117 = !DILocation(line: 836, column: 7, scope: !3109)
!3118 = !DILocation(line: 837, column: 5, scope: !3109)
!3119 = !DILocation(line: 840, column: 1, scope: !3035)
!3120 = distinct !DISubprogram(name: "next_st_expr", scope: !3, file: !3, line: 220, type: !3121, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!1898, !1898}
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "ptr", arg: 1, scope: !3120, file: !3, line: 220, type: !1898)
!3125 = !DILocation(line: 0, scope: !3120)
!3126 = !DILocation(line: 222, column: 15, scope: !3120)
!3127 = !DILocation(line: 222, column: 3, scope: !3120)
!3128 = distinct !DISubprogram(name: "free_store_memory", scope: !3, file: !3, line: 1114, type: !2798, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!3129 = !DILocation(line: 1116, column: 3, scope: !3128)
!3130 = !DILocation(line: 1118, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1118, column: 7)
!3132 = !DILocation(line: 1118, column: 7, scope: !3128)
!3133 = !DILocation(line: 1119, column: 5, scope: !3131)
!3134 = !DILocation(line: 1120, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1120, column: 7)
!3136 = !DILocation(line: 1120, column: 7, scope: !3128)
!3137 = !DILocation(line: 1121, column: 5, scope: !3135)
!3138 = !DILocation(line: 1122, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1122, column: 7)
!3140 = !DILocation(line: 1122, column: 7, scope: !3128)
!3141 = !DILocation(line: 1123, column: 5, scope: !3139)
!3142 = !DILocation(line: 1124, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1124, column: 7)
!3144 = !DILocation(line: 1124, column: 7, scope: !3128)
!3145 = !DILocation(line: 1125, column: 5, scope: !3143)
!3146 = !DILocation(line: 1126, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1126, column: 7)
!3148 = !DILocation(line: 1126, column: 7, scope: !3128)
!3149 = !DILocation(line: 1127, column: 5, scope: !3147)
!3150 = !DILocation(line: 1128, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1128, column: 7)
!3152 = !DILocation(line: 1128, column: 7, scope: !3128)
!3153 = !DILocation(line: 1129, column: 5, scope: !3151)
!3154 = !DILocation(line: 1131, column: 46, scope: !3128)
!3155 = !DILocation(line: 1131, column: 34, scope: !3128)
!3156 = !DILocation(line: 1131, column: 22, scope: !3128)
!3157 = !DILocation(line: 1131, column: 12, scope: !3128)
!3158 = !DILocation(line: 1132, column: 33, scope: !3128)
!3159 = !DILocation(line: 1132, column: 17, scope: !3128)
!3160 = !DILocation(line: 1133, column: 1, scope: !3128)
!3161 = distinct !DISubprogram(name: "pre_st_expr_hash", scope: !3, file: !3, line: 115, type: !1175, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "p", arg: 1, scope: !3161, file: !3, line: 115, type: !1178)
!3164 = !DILocalVariable(name: "do_not_record_p", scope: !3161, file: !3, line: 117, type: !713)
!3165 = !DILocalVariable(name: "x", scope: !3161, file: !3, line: 118, type: !3166)
!3166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!3167 = !DILocation(line: 0, scope: !3161)
!3168 = !DILocation(line: 117, column: 3, scope: !3161)
!3169 = !DILocation(line: 117, column: 7, scope: !3161)
!3170 = !DILocation(line: 119, column: 23, scope: !3161)
!3171 = !DILocation(line: 119, column: 32, scope: !3161)
!3172 = !DILocation(line: 119, column: 10, scope: !3161)
!3173 = !DILocation(line: 120, column: 1, scope: !3161)
!3174 = !DILocation(line: 119, column: 3, scope: !3161)
!3175 = distinct !DISubprogram(name: "pre_st_expr_eq", scope: !3, file: !3, line: 123, type: !1183, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DILocalVariable(name: "p1", arg: 1, scope: !3175, file: !3, line: 123, type: !1178)
!3178 = !DILocalVariable(name: "p2", arg: 2, scope: !3175, file: !3, line: 123, type: !1178)
!3179 = !DILocalVariable(name: "ptr1", scope: !3175, file: !3, line: 125, type: !3166)
!3180 = !DILocalVariable(name: "ptr2", scope: !3175, file: !3, line: 126, type: !3166)
!3181 = !DILocation(line: 0, scope: !3175)
!3182 = !DILocation(line: 127, column: 29, scope: !3175)
!3183 = !DILocation(line: 127, column: 44, scope: !3175)
!3184 = !DILocation(line: 127, column: 10, scope: !3175)
!3185 = !DILocation(line: 127, column: 3, scope: !3175)
!3186 = distinct !DISubprogram(name: "find_moveable_store", scope: !3, file: !3, line: 543, type: !3187, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !721, !720, !720}
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199}
!3190 = !DILocalVariable(name: "insn", arg: 1, scope: !3186, file: !3, line: 543, type: !721)
!3191 = !DILocalVariable(name: "regs_set_before", arg: 2, scope: !3186, file: !3, line: 543, type: !720)
!3192 = !DILocalVariable(name: "regs_set_after", arg: 3, scope: !3186, file: !3, line: 543, type: !720)
!3193 = !DILocalVariable(name: "ptr", scope: !3186, file: !3, line: 545, type: !1898)
!3194 = !DILocalVariable(name: "dest", scope: !3186, file: !3, line: 546, type: !721)
!3195 = !DILocalVariable(name: "set", scope: !3186, file: !3, line: 546, type: !721)
!3196 = !DILocalVariable(name: "tmp", scope: !3186, file: !3, line: 546, type: !721)
!3197 = !DILocalVariable(name: "check_anticipatable", scope: !3186, file: !3, line: 547, type: !713)
!3198 = !DILocalVariable(name: "check_available", scope: !3186, file: !3, line: 547, type: !713)
!3199 = !DILocalVariable(name: "bb", scope: !3186, file: !3, line: 548, type: !1255)
!3200 = !DILocation(line: 0, scope: !3186)
!3201 = !DILocation(line: 548, column: 20, scope: !3186)
!3202 = !DILocation(line: 550, column: 9, scope: !3186)
!3203 = !DILocation(line: 551, column: 8, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 551, column: 7)
!3205 = !DILocation(line: 551, column: 7, scope: !3186)
!3206 = !DILocation(line: 554, column: 10, scope: !3186)
!3207 = !DILocation(line: 556, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 556, column: 7)
!3209 = !DILocation(line: 556, column: 22, scope: !3208)
!3210 = !DILocation(line: 556, column: 25, scope: !3208)
!3211 = !DILocation(line: 557, column: 7, scope: !3208)
!3212 = !DILocation(line: 557, column: 10, scope: !3208)
!3213 = !DILocation(line: 557, column: 26, scope: !3208)
!3214 = !DILocation(line: 556, column: 7, scope: !3186)
!3215 = !DILocation(line: 560, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 560, column: 7)
!3217 = !DILocation(line: 560, column: 7, scope: !3186)
!3218 = !DILocation(line: 566, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 566, column: 7)
!3220 = !DILocation(line: 566, column: 32, scope: !3219)
!3221 = !DILocation(line: 566, column: 35, scope: !3219)
!3222 = !DILocation(line: 566, column: 7, scope: !3186)
!3223 = !DILocation(line: 571, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 571, column: 7)
!3225 = !DILocation(line: 571, column: 7, scope: !3186)
!3226 = !DILocation(line: 579, column: 46, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 579, column: 7)
!3228 = !DILocation(line: 579, column: 8, scope: !3227)
!3229 = !DILocation(line: 579, column: 7, scope: !3186)
!3230 = !DILocation(line: 582, column: 9, scope: !3186)
!3231 = !DILocation(line: 583, column: 13, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 583, column: 7)
!3233 = !DILocation(line: 583, column: 8, scope: !3232)
!3234 = !DILocation(line: 583, column: 7, scope: !3186)
!3235 = !DILocation(line: 584, column: 25, scope: !3232)
!3236 = !DILocation(line: 584, column: 23, scope: !3232)
!3237 = !DILocation(line: 584, column: 5, scope: !3232)
!3238 = !DILocation(line: 589, column: 13, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 589, column: 7)
!3240 = !DILocation(line: 589, column: 8, scope: !3239)
!3241 = !DILocation(line: 589, column: 7, scope: !3186)
!3242 = !DILocation(line: 593, column: 13, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 592, column: 5)
!3244 = !DILocation(line: 594, column: 15, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 594, column: 11)
!3246 = !DILocation(line: 595, column: 4, scope: !3245)
!3247 = !DILocation(line: 595, column: 7, scope: !3245)
!3248 = !DILocation(line: 595, column: 28, scope: !3245)
!3249 = !DILocation(line: 594, column: 11, scope: !3243)
!3250 = !DILocation(line: 598, column: 7, scope: !3186)
!3251 = !DILocation(line: 600, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 600, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 599, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 598, column: 7)
!3255 = !DILocation(line: 604, column: 54, scope: !3253)
!3256 = !DILocation(line: 604, column: 27, scope: !3253)
!3257 = !DILocation(line: 604, column: 25, scope: !3253)
!3258 = !DILocation(line: 605, column: 5, scope: !3253)
!3259 = !DILocation(line: 611, column: 13, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 611, column: 7)
!3261 = !DILocation(line: 611, column: 8, scope: !3260)
!3262 = !DILocation(line: 611, column: 7, scope: !3186)
!3263 = !DILocation(line: 615, column: 13, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 614, column: 5)
!3265 = !DILocation(line: 616, column: 11, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 616, column: 11)
!3267 = !DILocation(line: 616, column: 32, scope: !3266)
!3268 = !DILocation(line: 616, column: 11, scope: !3264)
!3269 = !DILocation(line: 0, scope: !3260)
!3270 = !DILocation(line: 619, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 619, column: 7)
!3272 = !DILocation(line: 619, column: 7, scope: !3186)
!3273 = !DILocation(line: 623, column: 11, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 623, column: 11)
!3275 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 620, column: 5)
!3276 = !DILocation(line: 623, column: 11, scope: !3275)
!3277 = !DILocation(line: 625, column: 15, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 625, column: 4)
!3279 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 624, column: 2)
!3280 = !DILocation(line: 625, column: 9, scope: !3278)
!3281 = !DILocation(line: 0, scope: !3278)
!3282 = !DILocation(line: 626, column: 13, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 625, column: 4)
!3284 = !DILocation(line: 626, column: 28, scope: !3283)
!3285 = !DILocation(line: 626, column: 21, scope: !3283)
!3286 = !DILocation(line: 627, column: 15, scope: !3283)
!3287 = !DILocation(line: 625, column: 4, scope: !3283)
!3288 = distinct !{!3288, !3289, !3290}
!3289 = !DILocation(line: 625, column: 4, scope: !3278)
!3290 = !DILocation(line: 628, column: 6, scope: !3278)
!3291 = !DILocation(line: 629, column: 8, scope: !3279)
!3292 = !DILocation(line: 631, column: 2, scope: !3279)
!3293 = !DILocation(line: 633, column: 51, scope: !3274)
!3294 = !DILocation(line: 633, column: 20, scope: !3274)
!3295 = !DILocation(line: 637, column: 8, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 637, column: 7)
!3297 = !DILocation(line: 637, column: 7, scope: !3186)
!3298 = !DILocation(line: 638, column: 53, scope: !3296)
!3299 = !DILocation(line: 638, column: 25, scope: !3296)
!3300 = !DILocation(line: 638, column: 23, scope: !3296)
!3301 = !DILocation(line: 638, column: 5, scope: !3296)
!3302 = !DILocation(line: 639, column: 1, scope: !3186)
!3303 = distinct !DISubprogram(name: "free_st_expr_entry", scope: !3, file: !3, line: 169, type: !3304, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !1898}
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "ptr", arg: 1, scope: !3303, file: !3, line: 169, type: !1898)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 171, column: 31, scope: !3303)
!3310 = !DILocation(line: 171, column: 3, scope: !3303)
!3311 = !DILocation(line: 172, column: 31, scope: !3303)
!3312 = !DILocation(line: 172, column: 3, scope: !3303)
!3313 = !DILocation(line: 174, column: 9, scope: !3303)
!3314 = !DILocation(line: 174, column: 3, scope: !3303)
!3315 = !DILocation(line: 175, column: 1, scope: !3303)
!3316 = distinct !DISubprogram(name: "enumerate_store_motion_mems", scope: !3, file: !3, line: 198, type: !1999, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3317)
!3317 = !{!3318, !3319}
!3318 = !DILocalVariable(name: "ptr", scope: !3316, file: !3, line: 200, type: !1898)
!3319 = !DILocalVariable(name: "n", scope: !3316, file: !3, line: 201, type: !713)
!3320 = !DILocation(line: 0, scope: !3316)
!3321 = !DILocation(line: 203, column: 8, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 203, column: 3)
!3323 = !DILocation(line: 0, scope: !3322)
!3324 = !DILocation(line: 203, column: 37, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 203, column: 3)
!3326 = !DILocation(line: 203, column: 3, scope: !3322)
!3327 = !DILocation(line: 204, column: 19, scope: !3325)
!3328 = !DILocation(line: 204, column: 10, scope: !3325)
!3329 = !DILocation(line: 204, column: 16, scope: !3325)
!3330 = !DILocation(line: 203, column: 57, scope: !3325)
!3331 = !DILocation(line: 203, column: 3, scope: !3325)
!3332 = distinct !{!3332, !3326, !3333}
!3333 = !DILocation(line: 204, column: 19, scope: !3322)
!3334 = !DILocation(line: 206, column: 3, scope: !3316)
!3335 = distinct !DISubprogram(name: "print_store_motion_mems", scope: !3, file: !3, line: 228, type: !3336, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !2008}
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "file", arg: 1, scope: !3335, file: !3, line: 228, type: !2008)
!3340 = !DILocalVariable(name: "ptr", scope: !3335, file: !3, line: 230, type: !1898)
!3341 = !DILocation(line: 0, scope: !3335)
!3342 = !DILocation(line: 232, column: 12, scope: !3335)
!3343 = !DILocation(line: 232, column: 3, scope: !3335)
!3344 = !DILocation(line: 234, column: 14, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 234, column: 3)
!3346 = !DILocation(line: 234, column: 8, scope: !3345)
!3347 = !DILocation(line: 0, scope: !3345)
!3348 = !DILocation(line: 234, column: 36, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 234, column: 3)
!3350 = !DILocation(line: 234, column: 3, scope: !3345)
!3351 = !DILocation(line: 236, column: 48, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 235, column: 5)
!3353 = !DILocation(line: 236, column: 7, scope: !3352)
!3354 = !DILocation(line: 238, column: 29, scope: !3352)
!3355 = !DILocation(line: 238, column: 7, scope: !3352)
!3356 = !DILocation(line: 240, column: 7, scope: !3352)
!3357 = !DILocation(line: 242, column: 16, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 242, column: 11)
!3359 = !DILocation(line: 242, column: 11, scope: !3358)
!3360 = !DILocation(line: 242, column: 11, scope: !3352)
!3361 = !DILocation(line: 243, column: 2, scope: !3358)
!3362 = !DILocation(line: 245, column: 2, scope: !3358)
!3363 = !DILocation(line: 247, column: 7, scope: !3352)
!3364 = !DILocation(line: 249, column: 16, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 249, column: 11)
!3366 = !DILocation(line: 249, column: 11, scope: !3365)
!3367 = !DILocation(line: 249, column: 11, scope: !3352)
!3368 = !DILocation(line: 250, column: 2, scope: !3365)
!3369 = !DILocation(line: 252, column: 2, scope: !3365)
!3370 = !DILocation(line: 254, column: 7, scope: !3352)
!3371 = !DILocation(line: 234, column: 51, scope: !3349)
!3372 = !DILocation(line: 234, column: 3, scope: !3349)
!3373 = distinct !{!3373, !3350, !3374}
!3374 = !DILocation(line: 255, column: 5, scope: !3345)
!3375 = !DILocation(line: 257, column: 3, scope: !3335)
!3376 = !DILocation(line: 258, column: 1, scope: !3335)
!3377 = distinct !DISubprogram(name: "st_expr_entry", scope: !3, file: !3, line: 134, type: !3378, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!1898, !721}
!3380 = !{!3381, !3382, !3383, !3384, !3385, !3386}
!3381 = !DILocalVariable(name: "x", arg: 1, scope: !3377, file: !3, line: 134, type: !721)
!3382 = !DILocalVariable(name: "do_not_record_p", scope: !3377, file: !3, line: 136, type: !713)
!3383 = !DILocalVariable(name: "ptr", scope: !3377, file: !3, line: 137, type: !1898)
!3384 = !DILocalVariable(name: "hash", scope: !3377, file: !3, line: 138, type: !7)
!3385 = !DILocalVariable(name: "slot", scope: !3377, file: !3, line: 139, type: !1191)
!3386 = !DILocalVariable(name: "e", scope: !3377, file: !3, line: 140, type: !1891)
!3387 = !DILocation(line: 0, scope: !3377)
!3388 = !DILocation(line: 136, column: 3, scope: !3377)
!3389 = !DILocation(line: 136, column: 7, scope: !3377)
!3390 = !DILocation(line: 140, column: 3, scope: !3377)
!3391 = !DILocation(line: 142, column: 23, scope: !3377)
!3392 = !DILocation(line: 142, column: 10, scope: !3377)
!3393 = !DILocation(line: 145, column: 5, scope: !3377)
!3394 = !DILocation(line: 145, column: 13, scope: !3377)
!3395 = !DILocation(line: 146, column: 36, scope: !3377)
!3396 = !DILocation(line: 146, column: 10, scope: !3377)
!3397 = !DILocation(line: 147, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 147, column: 7)
!3399 = !DILocation(line: 147, column: 7, scope: !3377)
!3400 = !DILocation(line: 148, column: 5, scope: !3398)
!3401 = !DILocation(line: 150, column: 9, scope: !3377)
!3402 = !DILocation(line: 152, column: 23, scope: !3377)
!3403 = !DILocation(line: 152, column: 8, scope: !3377)
!3404 = !DILocation(line: 152, column: 21, scope: !3377)
!3405 = !DILocation(line: 153, column: 8, scope: !3377)
!3406 = !DILocation(line: 153, column: 21, scope: !3377)
!3407 = !DILocation(line: 154, column: 8, scope: !3377)
!3408 = !DILocation(line: 154, column: 21, scope: !3377)
!3409 = !DILocation(line: 155, column: 8, scope: !3377)
!3410 = !DILocation(line: 155, column: 21, scope: !3377)
!3411 = !DILocation(line: 156, column: 8, scope: !3377)
!3412 = !DILocation(line: 156, column: 21, scope: !3377)
!3413 = !DILocation(line: 157, column: 8, scope: !3377)
!3414 = !DILocation(line: 157, column: 21, scope: !3377)
!3415 = !DILocation(line: 158, column: 8, scope: !3377)
!3416 = !DILocation(line: 158, column: 21, scope: !3377)
!3417 = !DILocation(line: 159, column: 8, scope: !3377)
!3418 = !DILocation(line: 159, column: 21, scope: !3377)
!3419 = !DILocation(line: 160, column: 21, scope: !3377)
!3420 = !DILocation(line: 161, column: 9, scope: !3377)
!3421 = !DILocation(line: 163, column: 3, scope: !3377)
!3422 = !DILocation(line: 164, column: 1, scope: !3377)
!3423 = distinct !DISubprogram(name: "extract_mentioned_regs", scope: !3, file: !3, line: 295, type: !3424, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!721, !721}
!3426 = !{!3427, !3428}
!3427 = !DILocalVariable(name: "x", arg: 1, scope: !3423, file: !3, line: 295, type: !721)
!3428 = !DILocalVariable(name: "mentioned_regs", scope: !3423, file: !3, line: 297, type: !721)
!3429 = !DILocation(line: 0, scope: !3423)
!3430 = !DILocation(line: 297, column: 3, scope: !3423)
!3431 = !DILocation(line: 297, column: 7, scope: !3423)
!3432 = !DILocation(line: 298, column: 3, scope: !3423)
!3433 = !DILocation(line: 299, column: 10, scope: !3423)
!3434 = !DILocation(line: 300, column: 1, scope: !3423)
!3435 = !DILocation(line: 299, column: 3, scope: !3423)
!3436 = distinct !DISubprogram(name: "store_killed_before", scope: !3, file: !3, line: 494, type: !3437, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3445)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!712, !3439, !3439, !3439, !3442, !720}
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !722, line: 51, baseType: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !722, line: 112, baseType: !3443)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451}
!3446 = !DILocalVariable(name: "x", arg: 1, scope: !3436, file: !3, line: 494, type: !3439)
!3447 = !DILocalVariable(name: "x_regs", arg: 2, scope: !3436, file: !3, line: 494, type: !3439)
!3448 = !DILocalVariable(name: "insn", arg: 3, scope: !3436, file: !3, line: 494, type: !3439)
!3449 = !DILocalVariable(name: "bb", arg: 4, scope: !3436, file: !3, line: 494, type: !3442)
!3450 = !DILocalVariable(name: "regs_set_before", arg: 5, scope: !3436, file: !3, line: 495, type: !720)
!3451 = !DILocalVariable(name: "first", scope: !3436, file: !3, line: 497, type: !721)
!3452 = !DILocation(line: 0, scope: !3436)
!3453 = !DILocation(line: 497, column: 15, scope: !3436)
!3454 = !DILocation(line: 499, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 499, column: 7)
!3456 = !DILocation(line: 499, column: 7, scope: !3436)
!3457 = !DILocation(line: 0, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 502, column: 3)
!3459 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 502, column: 3)
!3460 = !DILocation(line: 502, column: 3, scope: !3459)
!3461 = !DILocation(line: 502, column: 19, scope: !3458)
!3462 = !DILocation(line: 502, column: 16, scope: !3458)
!3463 = !DILocation(line: 503, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 503, column: 9)
!3465 = !DILocation(line: 503, column: 9, scope: !3458)
!3466 = !DILocation(line: 502, column: 45, scope: !3458)
!3467 = !DILocation(line: 502, column: 3, scope: !3458)
!3468 = distinct !{!3468, !3460, !3469}
!3469 = !DILocation(line: 504, column: 14, scope: !3459)
!3470 = !DILocation(line: 507, column: 1, scope: !3436)
!3471 = distinct !DISubprogram(name: "store_killed_after", scope: !3, file: !3, line: 465, type: !3472, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!712, !3439, !3439, !3439, !3442, !720, !1902}
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3475 = !DILocalVariable(name: "x", arg: 1, scope: !3471, file: !3, line: 465, type: !3439)
!3476 = !DILocalVariable(name: "x_regs", arg: 2, scope: !3471, file: !3, line: 465, type: !3439)
!3477 = !DILocalVariable(name: "insn", arg: 3, scope: !3471, file: !3, line: 465, type: !3439)
!3478 = !DILocalVariable(name: "bb", arg: 4, scope: !3471, file: !3, line: 465, type: !3442)
!3479 = !DILocalVariable(name: "regs_set_after", arg: 5, scope: !3471, file: !3, line: 466, type: !720)
!3480 = !DILocalVariable(name: "fail_insn", arg: 6, scope: !3471, file: !3, line: 466, type: !1902)
!3481 = !DILocalVariable(name: "last", scope: !3471, file: !3, line: 468, type: !721)
!3482 = !DILocalVariable(name: "act", scope: !3471, file: !3, line: 468, type: !721)
!3483 = !DILocation(line: 0, scope: !3471)
!3484 = !DILocation(line: 468, column: 14, scope: !3471)
!3485 = !DILocation(line: 470, column: 8, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 470, column: 7)
!3487 = !DILocation(line: 470, column: 7, scope: !3471)
!3488 = !DILocation(line: 0, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 479, column: 3)
!3490 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 479, column: 3)
!3491 = !DILocation(line: 479, column: 3, scope: !3490)
!3492 = !DILocation(line: 473, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 473, column: 11)
!3494 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 471, column: 5)
!3495 = !DILocation(line: 473, column: 11, scope: !3494)
!3496 = !DILocation(line: 474, column: 13, scope: !3493)
!3497 = !DILocation(line: 474, column: 2, scope: !3493)
!3498 = !DILocation(line: 0, scope: !3490)
!3499 = !DILocation(line: 479, column: 27, scope: !3489)
!3500 = !DILocation(line: 479, column: 24, scope: !3489)
!3501 = !DILocation(line: 480, column: 9, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 480, column: 9)
!3503 = !DILocation(line: 480, column: 9, scope: !3489)
!3504 = !DILocation(line: 482, column: 6, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 482, column: 6)
!3506 = distinct !DILexicalBlock(scope: !3502, file: !3, line: 481, column: 7)
!3507 = !DILocation(line: 482, column: 6, scope: !3506)
!3508 = !DILocation(line: 483, column: 15, scope: !3505)
!3509 = !DILocation(line: 483, column: 4, scope: !3505)
!3510 = !DILocation(line: 479, column: 51, scope: !3489)
!3511 = !DILocation(line: 479, column: 3, scope: !3489)
!3512 = distinct !{!3512, !3491, !3513}
!3513 = !DILocation(line: 485, column: 7, scope: !3490)
!3514 = !DILocation(line: 488, column: 1, scope: !3471)
!3515 = distinct !DISubprogram(name: "extract_mentioned_regs_1", scope: !3, file: !3, line: 281, type: !3516, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!713, !1902, !717}
!3518 = !{!3519, !3520, !3521}
!3519 = !DILocalVariable(name: "loc", arg: 1, scope: !3515, file: !3, line: 281, type: !1902)
!3520 = !DILocalVariable(name: "data", arg: 2, scope: !3515, file: !3, line: 281, type: !717)
!3521 = !DILocalVariable(name: "mentioned_regs_p", scope: !3515, file: !3, line: 283, type: !1902)
!3522 = !DILocation(line: 0, scope: !3515)
!3523 = !DILocation(line: 283, column: 27, scope: !3515)
!3524 = !DILocation(line: 285, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 285, column: 7)
!3526 = !DILocation(line: 285, column: 7, scope: !3515)
!3527 = !DILocation(line: 286, column: 51, scope: !3525)
!3528 = !DILocation(line: 286, column: 25, scope: !3525)
!3529 = !DILocation(line: 286, column: 23, scope: !3525)
!3530 = !DILocation(line: 286, column: 5, scope: !3525)
!3531 = !DILocation(line: 288, column: 3, scope: !3515)
!3532 = distinct !DISubprogram(name: "store_ops_ok", scope: !3, file: !3, line: 264, type: !3533, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3535)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!712, !3439, !720}
!3535 = !{!3536, !3537, !3538}
!3536 = !DILocalVariable(name: "x", arg: 1, scope: !3532, file: !3, line: 264, type: !3439)
!3537 = !DILocalVariable(name: "regs_set", arg: 2, scope: !3532, file: !3, line: 264, type: !720)
!3538 = !DILocalVariable(name: "reg", scope: !3532, file: !3, line: 266, type: !3439)
!3539 = !DILocation(line: 0, scope: !3532)
!3540 = !DILocation(line: 268, column: 3, scope: !3532)
!3541 = !DILocation(line: 268, column: 3, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 268, column: 3)
!3543 = !DILocation(line: 270, column: 13, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 269, column: 5)
!3545 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 268, column: 3)
!3546 = !DILocation(line: 271, column: 20, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 271, column: 11)
!3548 = !DILocation(line: 271, column: 11, scope: !3547)
!3549 = !DILocation(line: 271, column: 11, scope: !3544)
!3550 = !DILocation(line: 268, column: 17, scope: !3545)
!3551 = !DILocation(line: 268, column: 3, scope: !3545)
!3552 = distinct !{!3552, !3541, !3553}
!3553 = !DILocation(line: 273, column: 5, scope: !3542)
!3554 = !DILocation(line: 276, column: 1, scope: !3532)
!3555 = distinct !DISubprogram(name: "store_killed_in_insn", scope: !3, file: !3, line: 397, type: !3556, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!712, !3439, !3439, !3439, !713}
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3559 = !DILocalVariable(name: "x", arg: 1, scope: !3555, file: !3, line: 397, type: !3439)
!3560 = !DILocalVariable(name: "x_regs", arg: 2, scope: !3555, file: !3, line: 397, type: !3439)
!3561 = !DILocalVariable(name: "insn", arg: 3, scope: !3555, file: !3, line: 397, type: !3439)
!3562 = !DILocalVariable(name: "after", arg: 4, scope: !3555, file: !3, line: 397, type: !713)
!3563 = !DILocalVariable(name: "reg", scope: !3555, file: !3, line: 399, type: !3439)
!3564 = !DILocalVariable(name: "base", scope: !3555, file: !3, line: 399, type: !3439)
!3565 = !DILocalVariable(name: "note", scope: !3555, file: !3, line: 399, type: !3439)
!3566 = !DILocalVariable(name: "pat", scope: !3555, file: !3, line: 399, type: !3439)
!3567 = !DILocalVariable(name: "i", scope: !3568, file: !3, line: 434, type: !713)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 433, column: 5)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 432, column: 12)
!3570 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 427, column: 7)
!3571 = !DILocation(line: 0, scope: !3555)
!3572 = !DILocation(line: 401, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 401, column: 7)
!3574 = !DILocation(line: 401, column: 7, scope: !3555)
!3575 = !DILocation(line: 404, column: 7, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 404, column: 7)
!3577 = !DILocation(line: 404, column: 7, scope: !3555)
!3578 = !DILocation(line: 408, column: 12, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 408, column: 11)
!3580 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 405, column: 5)
!3581 = !DILocation(line: 408, column: 11, scope: !3580)
!3582 = !DILocation(line: 413, column: 7, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 413, column: 7)
!3584 = !DILocation(line: 0, scope: !3583)
!3585 = !DILocation(line: 415, column: 27, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 414, column: 2)
!3587 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 413, column: 7)
!3588 = !DILocation(line: 415, column: 11, scope: !3586)
!3589 = !DILocation(line: 416, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 416, column: 8)
!3591 = !DILocation(line: 417, column: 8, scope: !3590)
!3592 = !DILocation(line: 417, column: 12, scope: !3590)
!3593 = !DILocation(line: 417, column: 28, scope: !3590)
!3594 = !DILocation(line: 418, column: 5, scope: !3590)
!3595 = !DILocation(line: 418, column: 8, scope: !3590)
!3596 = !DILocation(line: 418, column: 24, scope: !3590)
!3597 = !DILocation(line: 419, column: 5, scope: !3590)
!3598 = !DILocation(line: 419, column: 8, scope: !3590)
!3599 = !DILocation(line: 419, column: 26, scope: !3590)
!3600 = !DILocation(line: 419, column: 23, scope: !3590)
!3601 = !DILocation(line: 416, column: 8, scope: !3586)
!3602 = !DILocation(line: 413, column: 37, scope: !3587)
!3603 = !DILocation(line: 413, column: 7, scope: !3587)
!3604 = distinct !{!3604, !3582, !3605}
!3605 = !DILocation(line: 421, column: 2, scope: !3583)
!3606 = !DILocation(line: 426, column: 9, scope: !3555)
!3607 = !DILocation(line: 427, column: 7, scope: !3570)
!3608 = !DILocation(line: 427, column: 22, scope: !3570)
!3609 = !DILocation(line: 427, column: 7, scope: !3555)
!3610 = !DILocation(line: 429, column: 11, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 429, column: 11)
!3612 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 428, column: 5)
!3613 = !DILocation(line: 429, column: 11, scope: !3612)
!3614 = !DILocation(line: 432, column: 27, scope: !3569)
!3615 = !DILocation(line: 432, column: 12, scope: !3570)
!3616 = !DILocation(line: 437, column: 30, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 437, column: 6)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 436, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 436, column: 7)
!3620 = !DILocation(line: 436, column: 7, scope: !3619)
!3621 = !DILocation(line: 0, scope: !3619)
!3622 = !DILocation(line: 0, scope: !3568)
!3623 = !DILocation(line: 436, column: 23, scope: !3618)
!3624 = !DILocation(line: 436, column: 21, scope: !3618)
!3625 = !DILocation(line: 437, column: 6, scope: !3617)
!3626 = !DILocation(line: 437, column: 6, scope: !3618)
!3627 = !DILocation(line: 436, column: 42, scope: !3618)
!3628 = !DILocation(line: 436, column: 7, scope: !3618)
!3629 = distinct !{!3629, !3620, !3630}
!3630 = !DILocation(line: 438, column: 11, scope: !3619)
!3631 = !DILocation(line: 440, column: 12, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 440, column: 12)
!3633 = !DILocation(line: 440, column: 12, scope: !3569)
!3634 = !DILocation(line: 445, column: 10, scope: !3555)
!3635 = !DILocation(line: 446, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 446, column: 7)
!3637 = !DILocation(line: 446, column: 7, scope: !3555)
!3638 = !DILocation(line: 448, column: 10, scope: !3555)
!3639 = !DILocation(line: 452, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 452, column: 7)
!3641 = !DILocation(line: 452, column: 7, scope: !3555)
!3642 = !DILocation(line: 456, column: 10, scope: !3555)
!3643 = !DILocation(line: 456, column: 3, scope: !3555)
!3644 = !DILocation(line: 457, column: 1, scope: !3555)
!3645 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !3646, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!7, !3439}
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "x", arg: 1, scope: !3645, file: !568, line: 1051, type: !3439)
!3650 = !DILocation(line: 0, scope: !3645)
!3651 = !DILocation(line: 1053, column: 10, scope: !3645)
!3652 = !DILocation(line: 1053, column: 3, scope: !3645)
!3653 = distinct !DISubprogram(name: "store_killed_in_pat", scope: !3, file: !3, line: 360, type: !3654, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!712, !3439, !3439, !713}
!3656 = !{!3657, !3658, !3659, !3660}
!3657 = !DILocalVariable(name: "x", arg: 1, scope: !3653, file: !3, line: 360, type: !3439)
!3658 = !DILocalVariable(name: "pat", arg: 2, scope: !3653, file: !3, line: 360, type: !3439)
!3659 = !DILocalVariable(name: "after", arg: 3, scope: !3653, file: !3, line: 360, type: !713)
!3660 = !DILocalVariable(name: "dest", scope: !3661, file: !3, line: 364, type: !721)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 363, column: 5)
!3662 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 362, column: 7)
!3663 = !DILocation(line: 0, scope: !3653)
!3664 = !DILocation(line: 362, column: 7, scope: !3662)
!3665 = !DILocation(line: 362, column: 22, scope: !3662)
!3666 = !DILocation(line: 362, column: 7, scope: !3653)
!3667 = !DILocation(line: 364, column: 18, scope: !3661)
!3668 = !DILocation(line: 0, scope: !3661)
!3669 = !DILocation(line: 366, column: 11, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 366, column: 11)
!3671 = !DILocation(line: 366, column: 27, scope: !3670)
!3672 = !DILocation(line: 366, column: 11, scope: !3661)
!3673 = !DILocation(line: 367, column: 9, scope: !3670)
!3674 = !DILocation(line: 0, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 370, column: 11)
!3676 = !DILocation(line: 370, column: 11, scope: !3675)
!3677 = !DILocation(line: 367, column: 2, scope: !3670)
!3678 = !DILocation(line: 371, column: 4, scope: !3675)
!3679 = !DILocation(line: 371, column: 8, scope: !3675)
!3680 = !DILocation(line: 370, column: 11, scope: !3661)
!3681 = !DILocation(line: 373, column: 8, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 373, column: 8)
!3683 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 372, column: 2)
!3684 = !DILocation(line: 373, column: 8, scope: !3683)
!3685 = !DILocation(line: 375, column: 12, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 375, column: 12)
!3687 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 374, column: 6)
!3688 = !DILocation(line: 375, column: 12, scope: !3687)
!3689 = !DILocation(line: 380, column: 12, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 380, column: 12)
!3691 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 379, column: 6)
!3692 = !DILocation(line: 380, column: 12, scope: !3691)
!3693 = !DILocation(line: 384, column: 5, scope: !3662)
!3694 = !DILocation(line: 386, column: 7, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 386, column: 7)
!3696 = !DILocation(line: 390, column: 1, scope: !3653)
!3697 = distinct !DISubprogram(name: "find_loads", scope: !3, file: !3, line: 322, type: !3654, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705}
!3699 = !DILocalVariable(name: "x", arg: 1, scope: !3697, file: !3, line: 322, type: !3439)
!3700 = !DILocalVariable(name: "store_pattern", arg: 2, scope: !3697, file: !3, line: 322, type: !3439)
!3701 = !DILocalVariable(name: "after", arg: 3, scope: !3697, file: !3, line: 322, type: !713)
!3702 = !DILocalVariable(name: "fmt", scope: !3697, file: !3, line: 324, type: !718)
!3703 = !DILocalVariable(name: "i", scope: !3697, file: !3, line: 325, type: !713)
!3704 = !DILocalVariable(name: "j", scope: !3697, file: !3, line: 325, type: !713)
!3705 = !DILocalVariable(name: "ret", scope: !3697, file: !3, line: 326, type: !713)
!3706 = !DILocation(line: 0, scope: !3697)
!3707 = !DILocation(line: 328, column: 8, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 328, column: 7)
!3709 = !DILocation(line: 328, column: 7, scope: !3697)
!3710 = !DILocation(line: 331, column: 7, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 331, column: 7)
!3712 = !DILocation(line: 331, column: 20, scope: !3711)
!3713 = !DILocation(line: 331, column: 7, scope: !3697)
!3714 = !DILocation(line: 332, column: 9, scope: !3711)
!3715 = !DILocation(line: 0, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 334, column: 7)
!3717 = !DILocation(line: 334, column: 7, scope: !3716)
!3718 = !DILocation(line: 332, column: 5, scope: !3711)
!3719 = !DILocation(line: 334, column: 7, scope: !3697)
!3720 = !DILocation(line: 336, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 336, column: 11)
!3722 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 335, column: 5)
!3723 = !DILocation(line: 336, column: 11, scope: !3722)
!3724 = !DILocation(line: 341, column: 9, scope: !3697)
!3725 = !DILocation(line: 343, column: 12, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 343, column: 3)
!3727 = !DILocation(line: 0, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 348, column: 2)
!3729 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 347, column: 16)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 345, column: 11)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 344, column: 5)
!3732 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 343, column: 3)
!3733 = !DILocation(line: 343, column: 8, scope: !3726)
!3734 = !DILocation(line: 0, scope: !3726)
!3735 = !DILocation(line: 343, column: 49, scope: !3732)
!3736 = !DILocation(line: 343, column: 57, scope: !3732)
!3737 = !DILocation(line: 343, column: 54, scope: !3732)
!3738 = !DILocation(line: 345, column: 11, scope: !3730)
!3739 = !DILocation(line: 345, column: 18, scope: !3730)
!3740 = !DILocation(line: 345, column: 11, scope: !3731)
!3741 = !DILocation(line: 346, column: 21, scope: !3730)
!3742 = !DILocation(line: 346, column: 9, scope: !3730)
!3743 = !DILocation(line: 346, column: 2, scope: !3730)
!3744 = !DILocation(line: 347, column: 23, scope: !3729)
!3745 = !DILocation(line: 347, column: 16, scope: !3730)
!3746 = !DILocation(line: 348, column: 11, scope: !3728)
!3747 = !DILocation(line: 348, column: 7, scope: !3728)
!3748 = !DILocation(line: 348, column: 33, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 348, column: 2)
!3750 = !DILocation(line: 348, column: 2, scope: !3728)
!3751 = !DILocation(line: 349, column: 23, scope: !3749)
!3752 = !DILocation(line: 349, column: 11, scope: !3749)
!3753 = !DILocation(line: 349, column: 8, scope: !3749)
!3754 = !DILocation(line: 348, column: 2, scope: !3749)
!3755 = distinct !{!3755, !3750, !3756}
!3756 = !DILocation(line: 349, column: 62, scope: !3728)
!3757 = !DILocation(line: 343, column: 3, scope: !3732)
!3758 = distinct !{!3758, !3759, !3760}
!3759 = !DILocation(line: 343, column: 3, scope: !3726)
!3760 = !DILocation(line: 350, column: 5, scope: !3726)
!3761 = !DILocation(line: 351, column: 10, scope: !3697)
!3762 = !DILocation(line: 351, column: 3, scope: !3697)
!3763 = !DILocation(line: 352, column: 1, scope: !3697)
!3764 = distinct !DISubprogram(name: "load_kills_store", scope: !3, file: !3, line: 307, type: !3654, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3765)
!3765 = !{!3766, !3767, !3768}
!3766 = !DILocalVariable(name: "x", arg: 1, scope: !3764, file: !3, line: 307, type: !3439)
!3767 = !DILocalVariable(name: "store_pattern", arg: 2, scope: !3764, file: !3, line: 307, type: !3439)
!3768 = !DILocalVariable(name: "after", arg: 3, scope: !3764, file: !3, line: 307, type: !713)
!3769 = !DILocation(line: 0, scope: !3764)
!3770 = !DILocation(line: 309, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 309, column: 7)
!3772 = !DILocation(line: 309, column: 7, scope: !3764)
!3773 = !DILocation(line: 310, column: 12, scope: !3771)
!3774 = !DILocation(line: 310, column: 5, scope: !3771)
!3775 = !DILocation(line: 312, column: 44, scope: !3771)
!3776 = !DILocation(line: 312, column: 12, scope: !3771)
!3777 = !DILocation(line: 312, column: 5, scope: !3771)
!3778 = !DILocation(line: 0, scope: !3771)
!3779 = !DILocation(line: 314, column: 1, scope: !3764)
!3780 = distinct !DISubprogram(name: "replace_store_insn", scope: !3, file: !3, line: 929, type: !3781, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !721, !721, !1255, !1898}
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792}
!3784 = !DILocalVariable(name: "reg", arg: 1, scope: !3780, file: !3, line: 929, type: !721)
!3785 = !DILocalVariable(name: "del", arg: 2, scope: !3780, file: !3, line: 929, type: !721)
!3786 = !DILocalVariable(name: "bb", arg: 3, scope: !3780, file: !3, line: 929, type: !1255)
!3787 = !DILocalVariable(name: "smexpr", arg: 4, scope: !3780, file: !3, line: 929, type: !1898)
!3788 = !DILocalVariable(name: "insn", scope: !3780, file: !3, line: 931, type: !721)
!3789 = !DILocalVariable(name: "mem", scope: !3780, file: !3, line: 931, type: !721)
!3790 = !DILocalVariable(name: "note", scope: !3780, file: !3, line: 931, type: !721)
!3791 = !DILocalVariable(name: "set", scope: !3780, file: !3, line: 931, type: !721)
!3792 = !DILocalVariable(name: "ptr", scope: !3780, file: !3, line: 931, type: !721)
!3793 = !DILocation(line: 0, scope: !3780)
!3794 = !DILocation(line: 933, column: 17, scope: !3780)
!3795 = !DILocation(line: 934, column: 30, scope: !3780)
!3796 = !DILocation(line: 934, column: 10, scope: !3780)
!3797 = !DILocation(line: 936, column: 22, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 936, column: 3)
!3799 = !DILocation(line: 936, column: 8, scope: !3798)
!3800 = !DILocation(line: 0, scope: !3798)
!3801 = !DILocation(line: 936, column: 3, scope: !3798)
!3802 = !DILocation(line: 937, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 937, column: 9)
!3804 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 936, column: 3)
!3805 = !DILocation(line: 937, column: 23, scope: !3803)
!3806 = !DILocation(line: 937, column: 9, scope: !3804)
!3807 = !DILocation(line: 939, column: 16, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 938, column: 7)
!3809 = !DILocation(line: 940, column: 2, scope: !3808)
!3810 = !DILocation(line: 936, column: 47, scope: !3804)
!3811 = !DILocation(line: 936, column: 3, scope: !3804)
!3812 = distinct !{!3812, !3801, !3813}
!3813 = !DILocation(line: 941, column: 7, scope: !3798)
!3814 = !DILocation(line: 944, column: 22, scope: !3780)
!3815 = !DILocation(line: 944, column: 3, scope: !3780)
!3816 = !DILocation(line: 944, column: 20, scope: !3780)
!3817 = !DILocation(line: 948, column: 10, scope: !3780)
!3818 = !DILocation(line: 950, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 950, column: 7)
!3820 = !DILocation(line: 950, column: 7, scope: !3780)
!3821 = !DILocation(line: 953, column: 60, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 951, column: 5)
!3823 = !DILocation(line: 952, column: 7, scope: !3822)
!3824 = !DILocation(line: 954, column: 25, scope: !3822)
!3825 = !DILocation(line: 954, column: 7, scope: !3822)
!3826 = !DILocation(line: 955, column: 16, scope: !3822)
!3827 = !DILocation(line: 955, column: 7, scope: !3822)
!3828 = !DILocation(line: 956, column: 25, scope: !3822)
!3829 = !DILocation(line: 956, column: 7, scope: !3822)
!3830 = !DILocation(line: 957, column: 16, scope: !3822)
!3831 = !DILocation(line: 957, column: 7, scope: !3822)
!3832 = !DILocation(line: 958, column: 5, scope: !3822)
!3833 = !DILocation(line: 960, column: 3, scope: !3780)
!3834 = !DILocation(line: 0, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 965, column: 3)
!3836 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 965, column: 3)
!3837 = !DILocation(line: 965, column: 3, scope: !3780)
!3838 = !DILocation(line: 965, column: 18, scope: !3835)
!3839 = !DILocation(line: 965, column: 15, scope: !3835)
!3840 = !DILocation(line: 965, column: 3, scope: !3836)
!3841 = !DILocation(line: 966, column: 9, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 966, column: 9)
!3843 = !DILocation(line: 966, column: 9, scope: !3835)
!3844 = !DILocation(line: 968, column: 8, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 967, column: 7)
!3846 = !DILocation(line: 969, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 969, column: 6)
!3848 = !DILocation(line: 969, column: 6, scope: !3845)
!3849 = !DILocation(line: 971, column: 19, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 971, column: 6)
!3851 = !DILocation(line: 971, column: 6, scope: !3850)
!3852 = !DILocation(line: 971, column: 6, scope: !3845)
!3853 = !DILocation(line: 973, column: 9, scope: !3845)
!3854 = !DILocation(line: 974, column: 7, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 974, column: 6)
!3856 = !DILocation(line: 974, column: 12, scope: !3855)
!3857 = !DILocation(line: 974, column: 29, scope: !3855)
!3858 = !DILocation(line: 974, column: 16, scope: !3855)
!3859 = !DILocation(line: 974, column: 6, scope: !3845)
!3860 = !DILocation(line: 977, column: 6, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 977, column: 6)
!3862 = !DILocation(line: 977, column: 6, scope: !3845)
!3863 = !DILocation(line: 979, column: 6, scope: !3861)
!3864 = !DILocation(line: 978, column: 4, scope: !3861)
!3865 = !DILocation(line: 980, column: 2, scope: !3845)
!3866 = !DILocation(line: 981, column: 7, scope: !3845)
!3867 = !DILocation(line: 965, column: 50, scope: !3835)
!3868 = !DILocation(line: 965, column: 3, scope: !3835)
!3869 = distinct !{!3869, !3840, !3870}
!3870 = !DILocation(line: 981, column: 7, scope: !3836)
!3871 = !DILocation(line: 982, column: 3, scope: !3780)
!3872 = !DILocation(line: 983, column: 1, scope: !3780)
!3873 = distinct !DISubprogram(name: "SET_BIT", scope: !1921, file: !1921, line: 63, type: !3874, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !1920, !7}
!3876 = !{!3877, !3878, !3879}
!3877 = !DILocalVariable(name: "map", arg: 1, scope: !3873, file: !1921, line: 63, type: !1920)
!3878 = !DILocalVariable(name: "bitno", arg: 2, scope: !3873, file: !1921, line: 63, type: !7)
!3879 = !DILocalVariable(name: "oldbit", scope: !3880, file: !1921, line: 67, type: !712)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !1921, line: 66, column: 5)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !1921, line: 65, column: 7)
!3882 = !DILocation(line: 0, scope: !3873)
!3883 = !DILocation(line: 65, column: 12, scope: !3881)
!3884 = !DILocation(line: 65, column: 7, scope: !3881)
!3885 = !DILocation(line: 65, column: 7, scope: !3873)
!3886 = !DILocation(line: 73, column: 40, scope: !3873)
!3887 = !DILocation(line: 73, column: 29, scope: !3873)
!3888 = !DILocation(line: 72, column: 19, scope: !3873)
!3889 = !DILocation(line: 72, column: 3, scope: !3873)
!3890 = !DILocation(line: 68, column: 16, scope: !3880)
!3891 = !DILocation(line: 69, column: 12, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3880, file: !1921, line: 69, column: 11)
!3893 = !DILocation(line: 69, column: 11, scope: !3880)
!3894 = !DILocation(line: 70, column: 2, scope: !3892)
!3895 = !DILocation(line: 70, column: 41, scope: !3892)
!3896 = !DILocation(line: 73, column: 5, scope: !3873)
!3897 = !DILocation(line: 74, column: 1, scope: !3873)
!3898 = distinct !DISubprogram(name: "remove_reachable_equiv_notes", scope: !3, file: !3, line: 848, type: !3899, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !1255, !1898}
!3901 = !{!3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912}
!3902 = !DILocalVariable(name: "bb", arg: 1, scope: !3898, file: !3, line: 848, type: !1255)
!3903 = !DILocalVariable(name: "smexpr", arg: 2, scope: !3898, file: !3, line: 848, type: !1898)
!3904 = !DILocalVariable(name: "stack", scope: !3898, file: !3, line: 850, type: !1903)
!3905 = !DILocalVariable(name: "ei", scope: !3898, file: !3, line: 850, type: !1904)
!3906 = !DILocalVariable(name: "sp", scope: !3898, file: !3, line: 851, type: !713)
!3907 = !DILocalVariable(name: "act", scope: !3898, file: !3, line: 852, type: !1272)
!3908 = !DILocalVariable(name: "visited", scope: !3898, file: !3, line: 853, type: !1920)
!3909 = !DILocalVariable(name: "last", scope: !3898, file: !3, line: 854, type: !721)
!3910 = !DILocalVariable(name: "insn", scope: !3898, file: !3, line: 854, type: !721)
!3911 = !DILocalVariable(name: "note", scope: !3898, file: !3, line: 854, type: !721)
!3912 = !DILocalVariable(name: "mem", scope: !3898, file: !3, line: 855, type: !721)
!3913 = !DILocation(line: 0, scope: !3898)
!3914 = !DILocation(line: 850, column: 3, scope: !3898)
!3915 = !DILocation(line: 853, column: 36, scope: !3898)
!3916 = !DILocation(line: 853, column: 21, scope: !3898)
!3917 = !DILocation(line: 855, column: 21, scope: !3898)
!3918 = !DILocation(line: 857, column: 11, scope: !3898)
!3919 = !DILocation(line: 859, column: 8, scope: !3898)
!3920 = !DILocation(line: 861, column: 3, scope: !3898)
!3921 = !DILocation(line: 863, column: 10, scope: !3898)
!3922 = !DILocation(line: 863, column: 41, scope: !3898)
!3923 = !DILocation(line: 863, column: 47, scope: !3898)
!3924 = !DILocation(line: 0, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 888, column: 11)
!3926 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 865, column: 5)
!3927 = !DILocation(line: 0, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 890, column: 4)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 889, column: 2)
!3930 = !DILocation(line: 0, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 917, column: 2)
!3932 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 916, column: 11)
!3933 = !DILocation(line: 864, column: 3, scope: !3898)
!3934 = !DILocation(line: 866, column: 12, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 866, column: 11)
!3936 = !DILocation(line: 866, column: 11, scope: !3926)
!3937 = !DILocation(line: 868, column: 9, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 868, column: 8)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 867, column: 2)
!3940 = !DILocation(line: 868, column: 8, scope: !3939)
!3941 = !DILocation(line: 870, column: 8, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 869, column: 6)
!3943 = !DILocation(line: 871, column: 8, scope: !3942)
!3944 = !DILocation(line: 924, column: 1, scope: !3898)
!3945 = !DILocation(line: 874, column: 25, scope: !3939)
!3946 = !DILocation(line: 874, column: 19, scope: !3939)
!3947 = !DILocation(line: 874, column: 10, scope: !3939)
!3948 = !DILocation(line: 875, column: 2, scope: !3939)
!3949 = !DILocation(line: 876, column: 17, scope: !3926)
!3950 = !DILocation(line: 878, column: 17, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 878, column: 11)
!3952 = !DILocation(line: 878, column: 14, scope: !3951)
!3953 = !DILocation(line: 879, column: 4, scope: !3951)
!3954 = !DILocation(line: 879, column: 7, scope: !3951)
!3955 = !DILocation(line: 878, column: 11, scope: !3926)
!3956 = !DILocation(line: 881, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 881, column: 8)
!3958 = distinct !DILexicalBlock(scope: !3951, file: !3, line: 880, column: 2)
!3959 = !DILocation(line: 881, column: 8, scope: !3958)
!3960 = !DILocation(line: 882, column: 8, scope: !3957)
!3961 = !DILocation(line: 883, column: 13, scope: !3958)
!3962 = !DILocation(line: 883, column: 10, scope: !3958)
!3963 = !DILocation(line: 883, column: 30, scope: !3958)
!3964 = !DILocation(line: 884, column: 4, scope: !3958)
!3965 = distinct !{!3965, !3933, !3966}
!3966 = !DILocation(line: 923, column: 5, scope: !3898)
!3967 = !DILocation(line: 886, column: 7, scope: !3926)
!3968 = !DILocation(line: 888, column: 11, scope: !3925)
!3969 = !DILocation(line: 888, column: 11, scope: !3926)
!3970 = !DILocation(line: 890, column: 9, scope: !3928)
!3971 = !DILocation(line: 891, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 890, column: 4)
!3973 = !DILocation(line: 891, column: 41, scope: !3972)
!3974 = !DILocation(line: 890, column: 4, scope: !3928)
!3975 = !DILocation(line: 892, column: 16, scope: !3972)
!3976 = !DILocation(line: 890, column: 4, scope: !3972)
!3977 = distinct !{!3977, !3974, !3978}
!3978 = !DILocation(line: 893, column: 6, scope: !3928)
!3979 = !DILocation(line: 0, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 899, column: 7)
!3981 = !DILocation(line: 899, column: 19, scope: !3980)
!3982 = !DILocation(line: 895, column: 2, scope: !3929)
!3983 = !DILocation(line: 897, column: 9, scope: !3925)
!3984 = !DILocation(line: 899, column: 12, scope: !3980)
!3985 = !DILocation(line: 899, column: 38, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 899, column: 7)
!3987 = !DILocation(line: 899, column: 7, scope: !3980)
!3988 = !DILocation(line: 900, column: 6, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 900, column: 6)
!3990 = !DILocation(line: 900, column: 6, scope: !3986)
!3991 = !DILocation(line: 902, column: 13, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 901, column: 4)
!3993 = !DILocation(line: 903, column: 11, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 903, column: 10)
!3995 = !DILocation(line: 903, column: 16, scope: !3994)
!3996 = !DILocation(line: 903, column: 33, scope: !3994)
!3997 = !DILocation(line: 903, column: 20, scope: !3994)
!3998 = !DILocation(line: 903, column: 10, scope: !3992)
!3999 = !DILocation(line: 906, column: 10, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 906, column: 10)
!4001 = !DILocation(line: 906, column: 10, scope: !3992)
!4002 = !DILocation(line: 908, column: 10, scope: !4000)
!4003 = !DILocation(line: 907, column: 8, scope: !4000)
!4004 = !DILocation(line: 909, column: 6, scope: !3992)
!4005 = !DILocation(line: 910, column: 4, scope: !3992)
!4006 = !DILocation(line: 899, column: 54, scope: !3986)
!4007 = !DILocation(line: 899, column: 7, scope: !3986)
!4008 = distinct !{!4008, !3987, !4009}
!4009 = !DILocation(line: 910, column: 4, scope: !3980)
!4010 = !DILocation(line: 912, column: 12, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 912, column: 11)
!4012 = !DILocation(line: 912, column: 11, scope: !3926)
!4013 = !DILocation(line: 913, column: 2, scope: !4011)
!4014 = !DILocation(line: 914, column: 16, scope: !3926)
!4015 = !DILocation(line: 914, column: 13, scope: !3926)
!4016 = !DILocation(line: 914, column: 33, scope: !3926)
!4017 = !DILocation(line: 916, column: 11, scope: !3932)
!4018 = !DILocation(line: 916, column: 34, scope: !3932)
!4019 = !DILocation(line: 916, column: 11, scope: !3926)
!4020 = !DILocation(line: 918, column: 8, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 918, column: 8)
!4022 = !DILocation(line: 918, column: 8, scope: !3931)
!4023 = !DILocation(line: 919, column: 14, scope: !4021)
!4024 = !DILocation(line: 919, column: 6, scope: !4021)
!4025 = !DILocation(line: 919, column: 20, scope: !4021)
!4026 = !DILocation(line: 920, column: 9, scope: !3931)
!4027 = !DILocation(line: 921, column: 11, scope: !3931)
!4028 = !DILocation(line: 921, column: 42, scope: !3931)
!4029 = !DILocation(line: 921, column: 48, scope: !3931)
!4030 = !DILocation(line: 0, scope: !3926)
!4031 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !4032, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4034)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!1904, !1909}
!4034 = !{!4035, !4036}
!4035 = !DILocalVariable(name: "ev", arg: 1, scope: !4031, file: !325, line: 696, type: !1909)
!4036 = !DILocalVariable(name: "i", scope: !4031, file: !325, line: 698, type: !1904)
!4037 = !DILocation(line: 0, scope: !4031)
!4038 = !DILocation(line: 700, column: 5, scope: !4031)
!4039 = !DILocation(line: 700, column: 11, scope: !4031)
!4040 = !DILocation(line: 701, column: 5, scope: !4031)
!4041 = !DILocation(line: 701, column: 15, scope: !4031)
!4042 = !DILocation(line: 703, column: 3, scope: !4031)
!4043 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !4044, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!7, !4046}
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1265)
!4048 = !{!4049}
!4049 = !DILocalVariable(name: "vec_", arg: 1, scope: !4043, file: !325, line: 150, type: !4046)
!4050 = !DILocation(line: 0, scope: !4043)
!4051 = !DILocation(line: 150, column: 1, scope: !4043)
!4052 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !4053, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!1260, !1904}
!4055 = !{!4056}
!4056 = !DILocalVariable(name: "i", arg: 1, scope: !4052, file: !325, line: 685, type: !1904)
!4057 = !DILocation(line: 687, column: 3, scope: !4052)
!4058 = !DILocation(line: 688, column: 10, scope: !4052)
!4059 = !DILocation(line: 688, column: 3, scope: !4052)
!4060 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !4061, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!1272, !4046, !7}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "vec_", arg: 1, scope: !4060, file: !325, line: 150, type: !4046)
!4065 = !DILocalVariable(name: "ix_", arg: 2, scope: !4060, file: !325, line: 150, type: !7)
!4066 = !DILocation(line: 0, scope: !4060)
!4067 = !DILocation(line: 150, column: 1, scope: !4060)
!4068 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !4069, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!1272, !1904}
!4071 = !{!4072}
!4072 = !DILocalVariable(name: "i", arg: 1, scope: !4068, file: !325, line: 752, type: !1904)
!4073 = !DILocation(line: 754, column: 10, scope: !4068)
!4074 = !DILocation(line: 754, column: 3, scope: !4068)
!4075 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !4076, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!712, !1904}
!4078 = !{!4079}
!4079 = !DILocalVariable(name: "i", arg: 1, scope: !4075, file: !325, line: 721, type: !1904)
!4080 = !DILocation(line: 723, column: 22, scope: !4075)
!4081 = !DILocation(line: 723, column: 19, scope: !4075)
!4082 = !DILocation(line: 723, column: 10, scope: !4075)
!4083 = !DILocation(line: 723, column: 3, scope: !4075)
!4084 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !4085, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !1903}
!4087 = !{!4088}
!4088 = !DILocalVariable(name: "i", arg: 1, scope: !4084, file: !325, line: 736, type: !1903)
!4089 = !DILocation(line: 0, scope: !4084)
!4090 = !DILocation(line: 738, column: 3, scope: !4084)
!4091 = !DILocation(line: 739, column: 11, scope: !4084)
!4092 = !DILocation(line: 740, column: 1, scope: !4084)
!4093 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !4094, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!712, !1904, !1948}
!4096 = !{!4097, !4098}
!4097 = !DILocalVariable(name: "ei", arg: 1, scope: !4093, file: !325, line: 771, type: !1904)
!4098 = !DILocalVariable(name: "p", arg: 2, scope: !4093, file: !325, line: 771, type: !1948)
!4099 = !DILocation(line: 0, scope: !4093)
!4100 = !DILocation(line: 773, column: 8, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4093, file: !325, line: 773, column: 7)
!4102 = !DILocation(line: 773, column: 7, scope: !4093)
!4103 = !DILocation(line: 775, column: 12, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !325, line: 774, column: 5)
!4105 = !DILocation(line: 776, column: 7, scope: !4104)
!4106 = !DILocation(line: 781, column: 7, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4101, file: !325, line: 779, column: 5)
!4108 = !DILocation(line: 0, scope: !4101)
!4109 = !DILocation(line: 783, column: 1, scope: !4093)
!4110 = distinct !DISubprogram(name: "RESET_BIT", scope: !1921, file: !1921, line: 82, type: !3874, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DILocalVariable(name: "map", arg: 1, scope: !4110, file: !1921, line: 82, type: !1920)
!4113 = !DILocalVariable(name: "bitno", arg: 2, scope: !4110, file: !1921, line: 82, type: !7)
!4114 = !DILocalVariable(name: "oldbit", scope: !4115, file: !1921, line: 86, type: !712)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !1921, line: 85, column: 5)
!4116 = distinct !DILexicalBlock(scope: !4110, file: !1921, line: 84, column: 7)
!4117 = !DILocation(line: 0, scope: !4110)
!4118 = !DILocation(line: 84, column: 12, scope: !4116)
!4119 = !DILocation(line: 84, column: 7, scope: !4116)
!4120 = !DILocation(line: 84, column: 7, scope: !4110)
!4121 = !DILocation(line: 92, column: 42, scope: !4110)
!4122 = !DILocation(line: 92, column: 31, scope: !4110)
!4123 = !DILocation(line: 91, column: 19, scope: !4110)
!4124 = !DILocation(line: 91, column: 3, scope: !4110)
!4125 = !DILocation(line: 87, column: 16, scope: !4115)
!4126 = !DILocation(line: 88, column: 11, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4115, file: !1921, line: 88, column: 11)
!4128 = !DILocation(line: 88, column: 11, scope: !4115)
!4129 = !DILocation(line: 89, column: 2, scope: !4127)
!4130 = !DILocation(line: 89, column: 41, scope: !4127)
!4131 = !DILocation(line: 92, column: 8, scope: !4110)
!4132 = !DILocation(line: 92, column: 5, scope: !4110)
!4133 = !DILocation(line: 93, column: 1, scope: !4110)
!4134 = distinct !DISubprogram(name: "insert_insn_start_basic_block", scope: !3, file: !3, line: 748, type: !4135, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !721, !1255}
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DILocalVariable(name: "insn", arg: 1, scope: !4134, file: !3, line: 748, type: !721)
!4139 = !DILocalVariable(name: "bb", arg: 2, scope: !4134, file: !3, line: 748, type: !1255)
!4140 = !DILocalVariable(name: "prev", scope: !4134, file: !3, line: 751, type: !721)
!4141 = !DILocalVariable(name: "before", scope: !4134, file: !3, line: 752, type: !721)
!4142 = !DILocation(line: 0, scope: !4134)
!4143 = !DILocation(line: 751, column: 14, scope: !4134)
!4144 = !DILocation(line: 753, column: 3, scope: !4134)
!4145 = !DILocation(line: 753, column: 17, scope: !4134)
!4146 = !DILocation(line: 755, column: 13, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 755, column: 11)
!4148 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 754, column: 5)
!4149 = !DILocation(line: 756, column: 4, scope: !4147)
!4150 = !DILocation(line: 756, column: 8, scope: !4147)
!4151 = !DILocation(line: 755, column: 11, scope: !4148)
!4152 = !DILocation(line: 759, column: 19, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 759, column: 11)
!4154 = !DILocation(line: 759, column: 16, scope: !4153)
!4155 = !DILocation(line: 759, column: 11, scope: !4148)
!4156 = !DILocation(line: 761, column: 16, scope: !4148)
!4157 = distinct !{!4157, !4144, !4158}
!4158 = !DILocation(line: 762, column: 5, scope: !4134)
!4159 = !DILocation(line: 764, column: 10, scope: !4134)
!4160 = !DILocation(line: 766, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 766, column: 7)
!4162 = !DILocation(line: 766, column: 7, scope: !4134)
!4163 = !DILocation(line: 769, column: 13, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 767, column: 5)
!4165 = !DILocation(line: 768, column: 7, scope: !4164)
!4166 = !DILocation(line: 770, column: 25, scope: !4164)
!4167 = !DILocation(line: 770, column: 7, scope: !4164)
!4168 = !DILocation(line: 771, column: 16, scope: !4164)
!4169 = !DILocation(line: 771, column: 7, scope: !4164)
!4170 = !DILocation(line: 772, column: 5, scope: !4164)
!4171 = !DILocation(line: 773, column: 1, scope: !4134)
!4172 = distinct !DISubprogram(name: "free_store_motion_mems", scope: !3, file: !3, line: 180, type: !2798, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4173)
!4173 = !{!4174}
!4174 = !DILocalVariable(name: "tmp", scope: !4175, file: !3, line: 188, type: !1898)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 187, column: 5)
!4176 = !DILocation(line: 182, column: 7, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 182, column: 7)
!4178 = !DILocation(line: 182, column: 7, scope: !4172)
!4179 = !DILocation(line: 183, column: 5, scope: !4177)
!4180 = !DILocation(line: 184, column: 27, scope: !4172)
!4181 = !DILocation(line: 186, column: 3, scope: !4172)
!4182 = !DILocation(line: 186, column: 10, scope: !4172)
!4183 = !DILocation(line: 0, scope: !4175)
!4184 = !DILocation(line: 189, column: 46, scope: !4175)
!4185 = !DILocation(line: 189, column: 25, scope: !4175)
!4186 = !DILocation(line: 190, column: 7, scope: !4175)
!4187 = distinct !{!4187, !4181, !4188}
!4188 = !DILocation(line: 191, column: 5, scope: !4172)
!4189 = !DILocation(line: 192, column: 21, scope: !4172)
!4190 = !DILocation(line: 193, column: 1, scope: !4172)
