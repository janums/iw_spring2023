; ModuleID = 'lower-subreg.bc'
source_filename = "lower-subreg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
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
%struct.VEC_bitmap_heap = type { %struct.VEC_bitmap_base }
%struct.VEC_bitmap_base = type { i32, i32, [1 x %struct.bitmap_head_def*] }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"subreg1\00", align 1
@pass_lower_subreg = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_lower_subreg, i32 ()* @rest_of_handle_lower_subreg, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 11 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"subreg2\00", align 1
@pass_lower_subreg2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_handle_lower_subreg, i32 ()* @rest_of_handle_lower_subreg2, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 118, i32 0, i32 0, i32 0, i32 0, i32 132107 } }, align 8, !dbg !1933
@flag_split_wide_types = external dso_local local_unnamed_addr global i32, align 4
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@decomposable_context = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1961
@non_decomposable_context = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1963
@reg_copy_graph = internal global %struct.VEC_bitmap_heap* null, align 8, !dbg !1965
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@recog_data = external dso_local global %struct.recog_data, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"lower-subreg.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@word_mode = external dso_local local_unnamed_addr global i32, align 4
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"; Splitting reg %u ->\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@const_tiny_rtx = external dso_local local_unnamed_addr global [3 x [87 x %struct.rtx_def*]], align 16
@.str.6 = private unnamed_addr constant [34 x i8] c"; Replacing insn: %d with insns: \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1971 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1985, metadata !DIExpression()), !dbg !1986
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1987
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1988
  ret i32 %call, !dbg !1989
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1990 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1994
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1995
  ret i32 %call, !dbg !1996
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2051, metadata !DIExpression()), !dbg !2052
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2053
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2053
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2053
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2053
  %cmp = icmp uge i8* %0, %1, !dbg !2053
  %conv1 = zext i1 %cmp to i64, !dbg !2053
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2053
  %tobool = icmp eq i64 %expval, 0, !dbg !2053
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2053

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2053
  br label %cond.end, !dbg !2053

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2053
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2053
  %2 = load i8, i8* %0, align 1, !dbg !2053
  %conv3 = zext i8 %2 to i32, !dbg !2053
  br label %cond.end, !dbg !2053

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2053
  ret i32 %cond, !dbg !2054
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2055 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2057, metadata !DIExpression()), !dbg !2058
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2059
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2059
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2059
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2059
  %cmp = icmp uge i8* %0, %1, !dbg !2059
  %conv1 = zext i1 %cmp to i64, !dbg !2059
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2059
  %tobool = icmp eq i64 %expval, 0, !dbg !2059
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2059

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2059
  br label %cond.end, !dbg !2059

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2059
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2059
  %2 = load i8, i8* %0, align 1, !dbg !2059
  %conv3 = zext i8 %2 to i32, !dbg !2059
  br label %cond.end, !dbg !2059

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2059
  ret i32 %cond, !dbg !2060
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2061 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2062
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2062
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2062
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2062
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2062
  %cmp = icmp uge i8* %1, %2, !dbg !2062
  %conv1 = zext i1 %cmp to i64, !dbg !2062
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2062
  %tobool = icmp eq i64 %expval, 0, !dbg !2062
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2062

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2062
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2062
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2062
  %3 = load i8, i8* %1, align 1, !dbg !2062
  %conv3 = zext i8 %3 to i32, !dbg !2062
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2062
  ret i32 %cond, !dbg !2063
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2064 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2068, metadata !DIExpression()), !dbg !2069
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2070
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2071
  ret i32 %call, !dbg !2072
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2073 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2077, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2078, metadata !DIExpression()), !dbg !2079
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2080
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2080
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2080
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2080
  %cmp = icmp uge i8* %0, %1, !dbg !2080
  %conv1 = zext i1 %cmp to i64, !dbg !2080
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2080
  %tobool = icmp eq i64 %expval, 0, !dbg !2080
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2080

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2080
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2080
  br label %cond.end, !dbg !2080

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2080
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2080
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2080
  store i8 %conv2, i8* %0, align 1, !dbg !2080
  %conv6 = and i32 %__c, 255, !dbg !2080
  br label %cond.end, !dbg !2080

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2080
  ret i32 %cond, !dbg !2081
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2085, metadata !DIExpression()), !dbg !2086
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2087
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2087
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2087
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2087
  %cmp = icmp uge i8* %0, %1, !dbg !2087
  %conv1 = zext i1 %cmp to i64, !dbg !2087
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2087
  %tobool = icmp eq i64 %expval, 0, !dbg !2087
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2087

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2087
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2087
  br label %cond.end, !dbg !2087

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2087
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2087
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2087
  store i8 %conv2, i8* %0, align 1, !dbg !2087
  %conv6 = and i32 %__c, 255, !dbg !2087
  br label %cond.end, !dbg !2087

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2087
  ret i32 %cond, !dbg !2088
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2091, metadata !DIExpression()), !dbg !2092
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2093
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2093
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2093
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2093
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2093
  %cmp = icmp uge i8* %1, %2, !dbg !2093
  %conv1 = zext i1 %cmp to i64, !dbg !2093
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2093
  %tobool = icmp eq i64 %expval, 0, !dbg !2093
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2093

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2093
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2093
  br label %cond.end, !dbg !2093

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2093
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2093
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2093
  store i8 %conv4, i8* %1, align 1, !dbg !2093
  %conv6 = and i32 %__c, 255, !dbg !2093
  br label %cond.end, !dbg !2093

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2093
  ret i32 %cond, !dbg !2094
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2102, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2103, metadata !DIExpression()), !dbg !2104
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2105
  ret i64 %call, !dbg !2106
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2109, metadata !DIExpression()), !dbg !2110
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2111
  %0 = load i32, i32* %_flags, align 8, !dbg !2111
  %and = lshr i32 %0, 4, !dbg !2111
  %and.lobit = and i32 %and, 1, !dbg !2111
  ret i32 %and.lobit, !dbg !2112
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2115, metadata !DIExpression()), !dbg !2116
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2117
  %0 = load i32, i32* %_flags, align 8, !dbg !2117
  %and = lshr i32 %0, 5, !dbg !2117
  %and.lobit = and i32 %and, 1, !dbg !2117
  ret i32 %and.lobit, !dbg !2118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2122, metadata !DIExpression()), !dbg !2123
  %__c.off = add i32 %__c, 128, !dbg !2124
  %0 = icmp ult i32 %__c.off, 384, !dbg !2124
  br i1 %0, label %cond.true, label %cond.end, !dbg !2124

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2125
  %1 = load i32*, i32** %call, align 8, !dbg !2126
  %idxprom = sext i32 %__c to i64, !dbg !2127
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2127
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2127
  br label %cond.end, !dbg !2128

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2128
  ret i32 %cond, !dbg !2129
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2132, metadata !DIExpression()), !dbg !2133
  %__c.off = add i32 %__c, 128, !dbg !2134
  %0 = icmp ult i32 %__c.off, 384, !dbg !2134
  br i1 %0, label %cond.true, label %cond.end, !dbg !2134

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2135
  %1 = load i32*, i32** %call, align 8, !dbg !2136
  %idxprom = sext i32 %__c to i64, !dbg !2137
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2137
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2137
  br label %cond.end, !dbg !2138

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2138
  ret i32 %cond, !dbg !2139
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2147
  %conv = trunc i64 %call to i32, !dbg !2148
  ret i32 %conv, !dbg !2149
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2154, metadata !DIExpression()), !dbg !2155
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2156
  ret i64 %call, !dbg !2157
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2158 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2163, metadata !DIExpression()), !dbg !2164
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2165
  ret i64 %call, !dbg !2166
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2167 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2173, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2174, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2175, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2176, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2177, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 0, metadata !2178, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2179, metadata !DIExpression()), !dbg !2183
  br label %while.cond, !dbg !2184

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2185
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2179, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2178, metadata !DIExpression()), !dbg !2183
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2186
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2184

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2187
  %div = lshr i64 %add, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %div, metadata !2180, metadata !DIExpression()), !dbg !2183
  %mul = mul i64 %div, %__size, !dbg !2190
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2191
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2181, metadata !DIExpression()), !dbg !2183
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %call, metadata !2182, metadata !DIExpression()), !dbg !2183
  %cmp1 = icmp slt i32 %call, 0, !dbg !2193
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2195

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2196
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2198

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2178, metadata !DIExpression()), !dbg !2183
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2183
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2179, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2178, metadata !DIExpression()), !dbg !2183
  br label %while.cond, !dbg !2184, !llvm.loop !2200

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2183
  ret i8* %retval.0, !dbg !2202
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2203 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2209, metadata !DIExpression()), !dbg !2210
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2211
  ret double %call, !dbg !2212
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %base, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2226
  ret i64 %call, !dbg !2227
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2234, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %base, metadata !2236, metadata !DIExpression()), !dbg !2237
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2238
  ret i64 %call, !dbg !2239
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2240 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2251, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %base, metadata !2253, metadata !DIExpression()), !dbg !2254
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2255
  ret i64 %call, !dbg !2256
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2257 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2261, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2262, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 %base, metadata !2263, metadata !DIExpression()), !dbg !2264
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2265
  ret i64 %call, !dbg !2266
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2267 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2308, metadata !DIExpression()), !dbg !2309
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2310
  ret i32 %call, !dbg !2311
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2314, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2315, metadata !DIExpression()), !dbg !2316
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2317
  ret i32 %call, !dbg !2318
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2319 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2324, metadata !DIExpression()), !dbg !2325
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2326
  ret i32 %call, !dbg !2327
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2328 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2332, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2335, metadata !DIExpression()), !dbg !2336
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2337
  ret i32 %call, !dbg !2338
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2339 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2343, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2344, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2345, metadata !DIExpression()), !dbg !2346
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2345, metadata !DIExpression(DW_OP_deref)), !dbg !2346
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2347
  ret i32 %call, !dbg !2348
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2349 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2353, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2356, metadata !DIExpression(DW_OP_deref)), !dbg !2357
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2358
  ret i32 %call, !dbg !2359
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2360 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2385, metadata !DIExpression()), !dbg !2386
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2387
  ret i32 %call, !dbg !2388
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2392, metadata !DIExpression()), !dbg !2393
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2394
  ret i32 %call, !dbg !2395
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2401, metadata !DIExpression()), !dbg !2402
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_lower_subreg() #4 !dbg !2416 {
entry:
  %0 = load i32, i32* @flag_split_wide_types, align 4, !dbg !2417
  %cmp = icmp ne i32 %0, 0, !dbg !2418
  %conv1 = zext i1 %cmp to i8, !dbg !2417
  ret i8 %conv1, !dbg !2419
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_lower_subreg() #4 !dbg !2420 {
entry:
  tail call fastcc void @decompose_multiword_subregs() #7, !dbg !2421
  ret i32 0, !dbg !2422
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_lower_subreg2() #4 !dbg !2423 {
entry:
  tail call fastcc void @decompose_multiword_subregs() #7, !dbg !2424
  ret i32 0, !dbg !2425
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompose_multiword_subregs() unnamed_addr #4 !dbg !2426 {
entry:
  %cmi = alloca i32, align 4
  %i138 = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  %iter = alloca %struct.bitmap_iterator, align 8
  %regno = alloca i32, align 4
  %b = alloca %struct.bitmap_head_def*, align 8
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2517
  %tobool = icmp eq %struct.df* %0, null, !dbg !2517
  br i1 %tobool, label %if.end, label %if.then, !dbg !2519

if.then:                                          ; preds = %entry
  %call = tail call i32 @df_set_flags(i32 32) #6, !dbg !2520
  br label %if.end, !dbg !2520

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i32 @max_reg_num() #6, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2430, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 53, metadata !2432, metadata !DIExpression()), !dbg !2523
  %1 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2524
  %2 = zext i32 %call1 to i64, !dbg !2529
  br label %for.cond, !dbg !2529

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc ], [ 53, %if.end ], !dbg !2530
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2432, metadata !DIExpression()), !dbg !2523
  %cmp = icmp ult i64 %indvars.iv11, %2, !dbg !2531
  %3 = trunc i64 %indvars.iv11 to i32, !dbg !2532
  br i1 %cmp, label %for.body, label %for.end, !dbg !2532

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1, i64 %indvars.iv11, !dbg !2533
  %4 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !2533
  %cmp2 = icmp eq %struct.rtx_def* %4, null, !dbg !2534
  br i1 %cmp2, label %for.inc, label %land.lhs.true, !dbg !2535

land.lhs.true:                                    ; preds = %for.body
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !2535
  %bf.load = load i32, i32* %5, align 8, !dbg !2536
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2536
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2536
  %idxprom5 = zext i32 %bf.clear to i64, !dbg !2536
  %arrayidx6 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom5, !dbg !2536
  %6 = load i8, i8* %arrayidx6, align 1, !dbg !2536
  %cmp8 = icmp ugt i8 %6, 4, !dbg !2537
  br i1 %cmp8, label %for.end, label %for.inc, !dbg !2538

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !2539
  br label %for.cond, !dbg !2540, !llvm.loop !2541

for.end:                                          ; preds = %land.lhs.true, %for.cond
  %.lcssa = phi i32 [ %3, %land.lhs.true ], [ %3, %for.cond ], !dbg !2532
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2523
  %cmp12 = icmp eq i32 %call1, %.lcssa, !dbg !2543
  br i1 %cmp12, label %cleanup.cont374, label %cleanup.cont

cleanup.cont:                                     ; preds = %for.end
  %call16 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2545
  store %struct.bitmap_head_def* %call16, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2546
  %call17 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2547
  store %struct.bitmap_head_def* %call17, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !2548
  %call18 = tail call fastcc %struct.VEC_bitmap_heap* @VEC_bitmap_heap_alloc(i32 %call1) #7, !dbg !2549
  store %struct.VEC_bitmap_heap* %call18, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2550
  tail call fastcc void @VEC_bitmap_heap_safe_grow(%struct.VEC_bitmap_heap** nonnull @reg_copy_graph, i32 %call1) #7, !dbg !2551
  %7 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2552
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %7, i64 0, i32 0, !dbg !2552
  %call20 = tail call fastcc %struct.bitmap_head_def** @VEC_bitmap_base_address(%struct.VEC_bitmap_base* %base) #7, !dbg !2552
  %8 = bitcast %struct.bitmap_head_def** %call20 to i8*, !dbg !2552
  %conv21 = zext i32 %call1 to i64, !dbg !2553
  %mul = shl nuw nsw i64 %conv21, 3, !dbg !2554
  %call22 = tail call i8* @memset(i8* %8, i32 0, i64 %mul) #6, !dbg !2555
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2556
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2556
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2556
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !2556
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2556
  %12 = bitcast i32* %cmi to i8*, !dbg !2557
  br label %for.cond23, !dbg !2556

for.cond23:                                       ; preds = %for.inc132, %cleanup.cont
  %13 = phi %struct.control_flow_graph* [ %10, %cleanup.cont ], [ %.pre4, %for.inc132 ], !dbg !2558
  %.pn = phi %struct.basic_block_def* [ %11, %cleanup.cont ], [ %bb.0, %for.inc132 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2559
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2431, metadata !DIExpression()), !dbg !2522
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !2558
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2558
  %cmp26 = icmp eq %struct.basic_block_def* %bb.0, %14, !dbg !2558
  br i1 %cmp26, label %for.end134, label %for.body28, !dbg !2556

for.body28:                                       ; preds = %for.cond23
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2560
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2560
  %15 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2560
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %15, i64 0, i32 0, !dbg !2560
  br label %for.cond29, !dbg !2560

for.cond29:                                       ; preds = %cleanup120, %for.body28
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body28 ], [ %rt_rtx130, %cleanup120 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2434, metadata !DIExpression()), !dbg !2562
  %tobool30 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2563
  br i1 %tobool30, label %for.inc132, label %land.rhs, !dbg !2563

land.rhs:                                         ; preds = %for.cond29
  %16 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2563
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %16, i64 0, i32 1, !dbg !2563
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2563
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2563
  %rt_rtx = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !2563
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2563
  %cmp34 = icmp eq %struct.rtx_def* %insn.0, %19, !dbg !2563
  br i1 %cmp34, label %for.inc132, label %for.body36, !dbg !2560

for.body36:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #8, !dbg !2564
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2565
  %bf.load38 = load i32, i32* %20, align 8, !dbg !2565
  %bf.clear39 = and i32 %bf.load38, 65535, !dbg !2565
  %cmp40 = icmp eq i32 %bf.clear39, 8, !dbg !2565
  br i1 %cmp40, label %lor.lhs.false56, label %lor.lhs.false, !dbg !2565

lor.lhs.false:                                    ; preds = %for.body36
  %cmp44 = icmp eq i32 %bf.clear39, 7, !dbg !2565
  br i1 %cmp44, label %lor.lhs.false56, label %lor.lhs.false46, !dbg !2565

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %cmp49 = icmp eq i32 %bf.clear39, 9, !dbg !2565
  br i1 %cmp49, label %lor.lhs.false56, label %lor.lhs.false51, !dbg !2565

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %cmp54 = icmp eq i32 %bf.clear39, 10, !dbg !2565
  br i1 %cmp54, label %lor.lhs.false56, label %cleanup120, !dbg !2567

lor.lhs.false56:                                  ; preds = %lor.lhs.false51, %lor.lhs.false46, %lor.lhs.false, %for.body36
  %u57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2568
  %21 = getelementptr inbounds %union.u, %union.u* %u57, i64 1, i32 0, i32 0, i64 0, !dbg !2568
  %22 = bitcast %union.rtunion_def* %21 to i32**, !dbg !2568
  %23 = load i32*, i32** %22, align 8, !dbg !2568
  %bf.load61 = load i32, i32* %23, align 8, !dbg !2568
  %bf.clear62 = and i32 %bf.load61, 65535, !dbg !2568
  %cmp63 = icmp eq i32 %bf.clear62, 25, !dbg !2569
  br i1 %cmp63, label %cleanup120, label %lor.lhs.false65, !dbg !2570

lor.lhs.false65:                                  ; preds = %lor.lhs.false56
  %cmp72 = icmp eq i32 %bf.clear62, 24, !dbg !2571
  br i1 %cmp72, label %cleanup120, label %if.end75, !dbg !2572

if.end75:                                         ; preds = %lor.lhs.false65
  %call76 = call fastcc i32 @find_decomposable_shift_zext(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2573
  %tobool77 = icmp eq i32 %call76, 0, !dbg !2573
  br i1 %tobool77, label %if.end79, label %cleanup120, !dbg !2575

if.end79:                                         ; preds = %if.end75
  %call80 = call fastcc i32 @recog_memoized(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2576
  call void @extract_insn(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2577
  %call81 = call fastcc %struct.rtx_def* @simple_move(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call81, metadata !2438, metadata !DIExpression()), !dbg !2557
  %tobool82 = icmp eq %struct.rtx_def* %call81, null, !dbg !2579
  br i1 %tobool82, label %if.then83, label %if.else, !dbg !2581

if.then83:                                        ; preds = %if.end79
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2557
  store i32 0, i32* %cmi, align 4, !dbg !2582
  br label %if.end89, !dbg !2583

if.else:                                          ; preds = %if.end79
  %call84 = call fastcc zeroext i8 @find_pseudo_copy(%struct.rtx_def* nonnull %call81) #7, !dbg !2584
  %tobool85 = icmp eq i8 %call84, 0, !dbg !2584
  br i1 %tobool85, label %if.else87, label %if.then86, !dbg !2587

if.then86:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !2442, metadata !DIExpression()), !dbg !2557
  store i32 1, i32* %cmi, align 4, !dbg !2588
  br label %if.end89, !dbg !2589

if.else87:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 2, metadata !2442, metadata !DIExpression()), !dbg !2557
  store i32 2, i32* %cmi, align 4, !dbg !2590
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.else87, %if.then83
  %24 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2557
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call81, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2592
  %26 = bitcast %union.rtunion_def* %25 to i32**, !dbg !2592
  %27 = sext i8 %24 to i64, !dbg !2597
  br label %for.cond91, !dbg !2597

for.cond91:                                       ; preds = %for.inc117, %if.end89
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc117 ], [ 0, %if.end89 ], !dbg !2598
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !2443, metadata !DIExpression()), !dbg !2557
  %cmp92 = icmp slt i64 %indvars.iv9, %27, !dbg !2599
  br i1 %cmp92, label %for.body94, label %cleanup120.loopexit, !dbg !2600

for.body94:                                       ; preds = %for.cond91
  %arrayidx96 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv9, !dbg !2601
  %call97 = call i32 @for_each_rtx(%struct.rtx_def** nonnull %arrayidx96, i32 (%struct.rtx_def**, i8*)* nonnull @find_decomposable_subregs, i8* nonnull %12) #6, !dbg !2602
  %28 = load i32, i32* %cmi, align 4, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %28, metadata !2442, metadata !DIExpression()), !dbg !2557
  %cmp98 = icmp eq i32 %28, 2, !dbg !2604
  br i1 %cmp98, label %land.lhs.true100, label %for.inc117, !dbg !2605

land.lhs.true100:                                 ; preds = %for.body94
  %29 = load i32*, i32** %26, align 8, !dbg !2606
  %bf.load105 = load i32, i32* %29, align 8, !dbg !2606
  %bf.clear106 = and i32 %bf.load105, 65535, !dbg !2606
  %cmp107 = icmp eq i32 %bf.clear106, 17, !dbg !2607
  br i1 %cmp107, label %if.then109, label %for.inc117, !dbg !2608

if.then109:                                       ; preds = %land.lhs.true100
  %cmp110 = icmp eq i64 %indvars.iv9, 0, !dbg !2609
  br i1 %cmp110, label %cond.end114, label %cond.true112, !dbg !2609

cond.true112:                                     ; preds = %if.then109
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2609
  br label %cond.end114, !dbg !2609

cond.end114:                                      ; preds = %if.then109, %cond.true112
  call void @llvm.dbg.value(metadata i32 0, metadata !2442, metadata !DIExpression()), !dbg !2557
  store i32 0, i32* %cmi, align 4, !dbg !2611
  br label %for.inc117, !dbg !2612

for.inc117:                                       ; preds = %for.body94, %land.lhs.true100, %cond.end114
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i32 undef, metadata !2443, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2557
  br label %for.cond91, !dbg !2614, !llvm.loop !2615

cleanup120.loopexit:                              ; preds = %for.cond91
  br label %cleanup120, !dbg !2617

cleanup120:                                       ; preds = %cleanup120.loopexit, %if.end75, %lor.lhs.false51, %lor.lhs.false56, %lor.lhs.false65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #8, !dbg !2617
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2563
  %rt_rtx130 = bitcast %union.rtunion_def* %30 to %struct.rtx_def**, !dbg !2563
  br label %for.cond29, !dbg !2563, !llvm.loop !2618

for.inc132:                                       ; preds = %land.rhs, %for.cond29
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2558
  %cfg25.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2620
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg25.phi.trans.insert, align 8, !dbg !2558
  br label %for.cond23, !dbg !2558, !llvm.loop !2621

for.end134:                                       ; preds = %for.cond23
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2623
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !2624
  %call135 = call zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def* %31, %struct.bitmap_head_def* %32) #6, !dbg !2625
  %33 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2626
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %33, i64 0, i32 0, !dbg !2626
  %34 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2626
  %tobool136 = icmp eq %struct.bitmap_element_def* %34, null, !dbg !2626
  br i1 %tobool136, label %if.end353, label %if.then137, !dbg !2627

if.then137:                                       ; preds = %for.end134
  %35 = bitcast i32* %i138 to i8*, !dbg !2628
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #8, !dbg !2628
  %36 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !2629
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %36) #8, !dbg !2629
  %37 = bitcast %struct.bitmap_iterator* %iter to i8*, !dbg !2630
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #8, !dbg !2630
  %38 = bitcast i32* %regno to i8*, !dbg !2631
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38) #8, !dbg !2631
  call fastcc void @propagate_pseudo_copies() #7, !dbg !2632
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2633
  %cfg140 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 1, !dbg !2633
  %40 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg140, align 8, !dbg !2633
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %40, i64 0, i32 5, !dbg !2633
  %41 = load i32, i32* %x_last_basic_block, align 8, !dbg !2633
  %call141 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %41) #6, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call141, metadata !2445, metadata !DIExpression()), !dbg !2635
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call141) #6, !dbg !2636
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2637
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %iter, %struct.bitmap_head_def* %42, i32 0, i32* nonnull %regno) #7, !dbg !2637
  br label %for.cond142, !dbg !2637

for.cond142:                                      ; preds = %for.body145, %if.then137
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  %call143 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %iter, i32* nonnull %regno) #7, !dbg !2639
  %tobool144 = icmp eq i8 %call143, 0, !dbg !2637
  br i1 %tobool144, label %for.end147, label %for.body145, !dbg !2637

for.body145:                                      ; preds = %for.cond142
  %43 = load i32, i32* %regno, align 4, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %43, metadata !2478, metadata !DIExpression()), !dbg !2635
  call fastcc void @decompose_register(i32 %43) #7, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2478, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %iter, i32* nonnull %regno) #7, !dbg !2639
  br label %for.cond142, !dbg !2639, !llvm.loop !2643

for.end147:                                       ; preds = %for.cond142
  %44 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2645
  %cfg149 = getelementptr inbounds %struct.function, %struct.function* %44, i64 0, i32 1, !dbg !2645
  %45 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg149, align 8, !dbg !2645
  %x_entry_block_ptr150 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %45, i64 0, i32 0, !dbg !2645
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr150, align 8, !dbg !2645
  br label %for.cond152, !dbg !2645

for.cond152:                                      ; preds = %for.inc307, %for.end147
  %47 = phi %struct.control_flow_graph* [ %45, %for.end147 ], [ %.pre6, %for.inc307 ], !dbg !2646
  %.pn3 = phi %struct.basic_block_def* [ %46, %for.end147 ], [ %bb.1, %for.inc307 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !2647
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2431, metadata !DIExpression()), !dbg !2522
  %x_exit_block_ptr155 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %47, i64 0, i32 1, !dbg !2646
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr155, align 8, !dbg !2646
  %cmp156 = icmp eq %struct.basic_block_def* %bb.1, %48, !dbg !2646
  br i1 %cmp156, label %for.end309, label %for.body158, !dbg !2645

for.body158:                                      ; preds = %for.cond152
  %il160 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 7, !dbg !2648
  %rtl161 = bitcast %union.basic_block_il_dependent* %il160 to %struct.rtl_bb_info**, !dbg !2648
  %49 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl161, align 8, !dbg !2648
  %head_162 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %49, i64 0, i32 0, !dbg !2648
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2649
  br label %for.cond163, !dbg !2648

for.cond163:                                      ; preds = %cleanup298, %for.body158
  %insn159.0.in = phi %struct.rtx_def** [ %head_162, %for.body158 ], [ %rt_rtx305, %cleanup298 ]
  %insn159.0 = load %struct.rtx_def*, %struct.rtx_def** %insn159.0.in, align 8, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn159.0, metadata !2479, metadata !DIExpression()), !dbg !2654
  %tobool164 = icmp eq %struct.rtx_def* %insn159.0, null, !dbg !2655
  br i1 %tobool164, label %for.inc307, label %land.rhs165, !dbg !2655

land.rhs165:                                      ; preds = %for.cond163
  %50 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl161, align 8, !dbg !2655
  %end_168 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %50, i64 0, i32 1, !dbg !2655
  %51 = load %struct.rtx_def*, %struct.rtx_def** %end_168, align 8, !dbg !2655
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2655
  %rt_rtx172 = bitcast %union.rtunion_def* %52 to %struct.rtx_def**, !dbg !2655
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx172, align 8, !dbg !2655
  %cmp173 = icmp eq %struct.rtx_def* %insn159.0, %53, !dbg !2655
  br i1 %cmp173, label %for.inc307, label %for.body176, !dbg !2648

for.body176:                                      ; preds = %land.rhs165
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn159.0, i64 0, i32 0, !dbg !2656
  %bf.load177 = load i32, i32* %54, align 8, !dbg !2656
  %bf.clear178 = and i32 %bf.load177, 65535, !dbg !2656
  %cmp179 = icmp eq i32 %bf.clear178, 8, !dbg !2656
  br i1 %cmp179, label %if.end197, label %lor.lhs.false181, !dbg !2656

lor.lhs.false181:                                 ; preds = %for.body176
  %cmp184 = icmp eq i32 %bf.clear178, 7, !dbg !2656
  br i1 %cmp184, label %if.end197, label %lor.lhs.false186, !dbg !2656

lor.lhs.false186:                                 ; preds = %lor.lhs.false181
  %cmp189 = icmp eq i32 %bf.clear178, 9, !dbg !2656
  br i1 %cmp189, label %if.end197, label %lor.lhs.false191, !dbg !2656

lor.lhs.false191:                                 ; preds = %lor.lhs.false186
  %cmp194 = icmp eq i32 %bf.clear178, 10, !dbg !2656
  br i1 %cmp194, label %if.end197, label %cleanup298, !dbg !2658

if.end197:                                        ; preds = %lor.lhs.false191, %lor.lhs.false186, %lor.lhs.false181, %for.body176
  %u198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn159.0, i64 0, i32 1, !dbg !2659
  %55 = getelementptr inbounds %union.u, %union.u* %u198, i64 1, i32 0, i32 0, i64 0, !dbg !2659
  %rt_rtx201 = bitcast %union.rtunion_def* %55 to %struct.rtx_def**, !dbg !2659
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx201, align 8, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.rtx_def* %56, metadata !2483, metadata !DIExpression()), !dbg !2660
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i64 0, i32 0, !dbg !2661
  %bf.load202 = load i32, i32* %57, align 8, !dbg !2661
  %bf.clear203 = and i32 %bf.load202, 65535, !dbg !2661
  %cmp204 = icmp eq i32 %bf.clear203, 25, !dbg !2662
  br i1 %cmp204, label %if.then206, label %if.else208, !dbg !2663

if.then206:                                       ; preds = %if.end197
  %call207 = call fastcc zeroext i8 @resolve_clobber(%struct.rtx_def* %56, %struct.rtx_def* nonnull %insn159.0) #7, !dbg !2664
  br label %cleanup298, !dbg !2664

if.else208:                                       ; preds = %if.end197
  %cmp211 = icmp eq i32 %bf.clear203, 24, !dbg !2665
  br i1 %cmp211, label %if.then213, label %if.else215, !dbg !2666

if.then213:                                       ; preds = %if.else208
  %call214 = call fastcc zeroext i8 @resolve_use(%struct.rtx_def* %56, %struct.rtx_def* nonnull %insn159.0) #7, !dbg !2667
  br label %cleanup298, !dbg !2667

if.else215:                                       ; preds = %if.else208
  %cmp218 = icmp eq i32 %bf.clear178, 7, !dbg !2668
  br i1 %cmp218, label %if.then220, label %if.else221, !dbg !2669

if.then220:                                       ; preds = %if.else215
  call fastcc void @resolve_debug(%struct.rtx_def* nonnull %insn159.0) #7, !dbg !2670
  br label %cleanup298, !dbg !2670

if.else221:                                       ; preds = %if.else215
  %call224 = call fastcc i32 @recog_memoized(%struct.rtx_def* nonnull %insn159.0) #7, !dbg !2671
  call void @extract_insn(%struct.rtx_def* nonnull %insn159.0) #6, !dbg !2672
  %call225 = call fastcc %struct.rtx_def* @simple_move(%struct.rtx_def* nonnull %insn159.0) #7, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call225, metadata !2487, metadata !DIExpression()), !dbg !2674
  %tobool226 = icmp eq %struct.rtx_def* %call225, null, !dbg !2675
  br i1 %tobool226, label %if.else249, label %if.then227, !dbg !2676

if.then227:                                       ; preds = %if.else221
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn159.0, metadata !2493, metadata !DIExpression()), !dbg !2677
  %call228 = call zeroext i8 @control_flow_insn_p(%struct.rtx_def* nonnull %insn159.0) #6, !dbg !2678
  call void @llvm.dbg.value(metadata i8 %call228, metadata !2496, metadata !DIExpression()), !dbg !2677
  %tobool229 = icmp eq i8 %call228, 0, !dbg !2679
  br i1 %tobool229, label %cond.end238, label %lor.lhs.false230, !dbg !2679

lor.lhs.false230:                                 ; preds = %if.then227
  %58 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !2679
  %tobool231 = icmp eq i32 %58, 0, !dbg !2679
  br i1 %tobool231, label %cond.true236, label %land.lhs.true232, !dbg !2679

land.lhs.true232:                                 ; preds = %lor.lhs.false230
  %call233 = call zeroext i8 @can_throw_internal(%struct.rtx_def* nonnull %insn159.0) #6, !dbg !2679
  %tobool235 = icmp eq i8 %call233, 0, !dbg !2679
  br i1 %tobool235, label %cond.true236, label %cond.end238, !dbg !2679

cond.true236:                                     ; preds = %land.lhs.true232, %lor.lhs.false230
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2679
  br label %cond.end238, !dbg !2679

cond.end238:                                      ; preds = %land.lhs.true232, %if.then227, %cond.true236
  %call240 = call fastcc %struct.rtx_def* @resolve_simple_move(%struct.rtx_def* nonnull %call225, %struct.rtx_def* nonnull %insn159.0) #7, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call240, metadata !2479, metadata !DIExpression()), !dbg !2654
  %cmp241 = icmp eq %struct.rtx_def* %call240, %insn159.0, !dbg !2681
  br i1 %cmp241, label %if.end256, label %if.then243, !dbg !2682

if.then243:                                       ; preds = %cond.end238
  %call244 = call fastcc i32 @recog_memoized(%struct.rtx_def* %call240) #7, !dbg !2683
  call void @extract_insn(%struct.rtx_def* %call240) #6, !dbg !2684
  br i1 %tobool229, label %if.end256, label %if.then246, !dbg !2685

if.then246:                                       ; preds = %if.then243
  %59 = load i32, i32* %index, align 8, !dbg !2686
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call141, i32 %59) #7, !dbg !2687
  br label %if.end256, !dbg !2687

if.else249:                                       ; preds = %if.else221
  %call250 = call fastcc %struct.rtx_def* @resolve_shift_zext(%struct.rtx_def* nonnull %insn159.0) #7, !dbg !2688
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call250, metadata !2497, metadata !DIExpression()), !dbg !2689
  %cmp251 = icmp eq %struct.rtx_def* %call250, null, !dbg !2690
  br i1 %cmp251, label %if.end256, label %if.then253, !dbg !2692

if.then253:                                       ; preds = %if.else249
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call250, metadata !2479, metadata !DIExpression()), !dbg !2654
  %call254 = call fastcc i32 @recog_memoized(%struct.rtx_def* nonnull %call250) #7, !dbg !2693
  call void @extract_insn(%struct.rtx_def* nonnull %call250) #6, !dbg !2695
  br label %if.end256, !dbg !2696

if.end256:                                        ; preds = %if.then243, %cond.end238, %if.else249, %if.then253, %if.then246
  %insn159.2 = phi %struct.rtx_def* [ %call240, %if.then243 ], [ %call240, %if.then246 ], [ %insn159.0, %cond.end238 ], [ %call250, %if.then253 ], [ %insn159.0, %if.else249 ], !dbg !2697
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn159.2, metadata !2479, metadata !DIExpression()), !dbg !2654
  %60 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2698
  %61 = bitcast %struct.rtx_def* %insn159.2 to i8*, !dbg !2700
  %62 = sext i8 %60 to i64, !dbg !2702
  br label %for.cond258, !dbg !2702

for.cond258:                                      ; preds = %for.body261, %if.end256
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body261 ], [ %62, %if.end256 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2703
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2674
  %cmp259 = icmp sgt i64 %indvars.iv, 0, !dbg !2704
  br i1 %cmp259, label %for.body261, label %for.end266, !dbg !2705

for.body261:                                      ; preds = %for.cond258
  %arrayidx263 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %indvars.iv.next, !dbg !2706
  %63 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx263, align 8, !dbg !2706
  %call264 = call i32 @for_each_rtx(%struct.rtx_def** %63, i32 (%struct.rtx_def**, i8*)* nonnull @resolve_subreg_use, i8* %61) #6, !dbg !2707
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2674
  br label %for.cond258, !dbg !2708, !llvm.loop !2709

for.end266:                                       ; preds = %for.cond258
  call fastcc void @resolve_reg_notes(%struct.rtx_def* %insn159.2) #7, !dbg !2711
  %call267 = call i32 @num_validated_changes() #6, !dbg !2712
  %cmp268 = icmp sgt i32 %call267, 0, !dbg !2713
  br i1 %cmp268, label %if.then270, label %cleanup298, !dbg !2714

if.then270:                                       ; preds = %for.end266
  %64 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 8), align 1, !dbg !2715
  %65 = sext i8 %64 to i64, !dbg !2716
  br label %for.cond273, !dbg !2716

for.cond273:                                      ; preds = %for.body276, %if.then270
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body276 ], [ %65, %if.then270 ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1, !dbg !2717
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2674
  %cmp274 = icmp sgt i64 %indvars.iv7, 0, !dbg !2718
  br i1 %cmp274, label %for.body276, label %for.end287, !dbg !2719

for.body276:                                      ; preds = %for.cond273
  %arrayidx278 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 5, i64 %indvars.iv.next8, !dbg !2720
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx278, align 8, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.rtx_def** %66, metadata !2499, metadata !DIExpression()), !dbg !2721
  %arrayidx280 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 6, i64 %indvars.iv.next8, !dbg !2722
  %67 = load i8, i8* %arrayidx280, align 1, !dbg !2722
  %idxprom282 = sext i8 %67 to i64, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %idxprom282, metadata !2506, metadata !DIExpression()), !dbg !2721
  %arrayidx283 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 1, i64 %idxprom282, !dbg !2723
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx283, align 8, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.rtx_def** %68, metadata !2507, metadata !DIExpression()), !dbg !2721
  %69 = load %struct.rtx_def*, %struct.rtx_def** %68, align 8, !dbg !2724
  %call284 = call zeroext i8 @validate_unshare_change(%struct.rtx_def* %insn159.2, %struct.rtx_def** %66, %struct.rtx_def* %69, i8 zeroext 1) #6, !dbg !2725
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2674
  br label %for.cond273, !dbg !2726, !llvm.loop !2727

for.end287:                                       ; preds = %for.cond273
  %call288 = call i32 @apply_change_group() #6, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %call288, metadata !2492, metadata !DIExpression()), !dbg !2674
  %tobool289 = icmp eq i32 %call288, 0, !dbg !2730
  br i1 %tobool289, label %cond.true290, label %cleanup298, !dbg !2730

cond.true290:                                     ; preds = %for.end287
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2730
  br label %cleanup298, !dbg !2730

cleanup298:                                       ; preds = %for.end287, %if.then206, %if.then220, %cond.true290, %for.end266, %if.then213, %lor.lhs.false191
  %insn159.6 = phi %struct.rtx_def* [ %insn159.0, %lor.lhs.false191 ], [ %insn159.0, %if.then206 ], [ %insn159.0, %if.then213 ], [ %insn159.0, %if.then220 ], [ %insn159.2, %cond.true290 ], [ %insn159.2, %for.end287 ], [ %insn159.2, %for.end266 ], !dbg !2648
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn159.6, metadata !2479, metadata !DIExpression()), !dbg !2654
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn159.6, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2655
  %rt_rtx305 = bitcast %union.rtunion_def* %70 to %struct.rtx_def**, !dbg !2655
  br label %for.cond163, !dbg !2655, !llvm.loop !2731

for.inc307:                                       ; preds = %land.rhs165, %for.cond163
  %.pre5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2646
  %cfg154.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre5, i64 0, i32 1, !dbg !2733
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg154.phi.trans.insert, align 8, !dbg !2646
  br label %for.cond152, !dbg !2646, !llvm.loop !2734

for.end309:                                       ; preds = %for.cond152
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call141, i32 0) #7, !dbg !2736
  br label %for.cond310, !dbg !2736

for.cond310:                                      ; preds = %for.inc351, %for.end309
  call void @llvm.dbg.value(metadata i32* %i138, metadata !2458, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  %call311 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i138) #7, !dbg !2737
  %tobool312 = icmp eq i8 %call311, 0, !dbg !2736
  br i1 %tobool312, label %for.end352, label %for.body313, !dbg !2736

for.body313:                                      ; preds = %for.cond310
  %71 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2738
  %cfg316 = getelementptr inbounds %struct.function, %struct.function* %71, i64 0, i32 1, !dbg !2738
  %72 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg316, align 8, !dbg !2738
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %72, i64 0, i32 2, !dbg !2738
  %73 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2738
  %tobool317 = icmp eq %struct.VEC_basic_block_gc* %73, null, !dbg !2738
  br i1 %tobool317, label %cond.end324, label %cond.true318, !dbg !2738

cond.true318:                                     ; preds = %for.body313
  %base322 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %73, i64 0, i32 0, !dbg !2738
  br label %cond.end324, !dbg !2738

cond.end324:                                      ; preds = %for.body313, %cond.true318
  %cond325 = phi %struct.VEC_basic_block_base* [ %base322, %cond.true318 ], [ null, %for.body313 ], !dbg !2738
  %74 = load i32, i32* %i138, align 4, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %74, metadata !2458, metadata !DIExpression()), !dbg !2635
  %call326 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond325, i32 %74) #7, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call326, metadata !2431, metadata !DIExpression()), !dbg !2522
  %il327 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call326, i64 0, i32 7, !dbg !2739
  %rtl328 = bitcast %union.basic_block_il_dependent* %il327 to %struct.rtl_bb_info**, !dbg !2739
  %75 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl328, align 8, !dbg !2739
  %head_329 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %75, i64 0, i32 0, !dbg !2739
  %end_332 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %75, i64 0, i32 1, !dbg !2740
  %76 = load %struct.rtx_def*, %struct.rtx_def** %end_332, align 8, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.rtx_def* %76, metadata !2512, metadata !DIExpression()), !dbg !2741
  br label %while.cond, !dbg !2742

while.cond:                                       ; preds = %if.end350, %cond.end324
  %insn314.0.in = phi %struct.rtx_def** [ %head_329, %cond.end324 ], [ %insn314.1.in, %if.end350 ]
  %bb.2 = phi %struct.basic_block_def* [ %call326, %cond.end324 ], [ %bb.3, %if.end350 ], !dbg !2741
  %insn314.0 = load %struct.rtx_def*, %struct.rtx_def** %insn314.0.in, align 8, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2431, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn314.0, metadata !2508, metadata !DIExpression()), !dbg !2741
  %cmp333 = icmp eq %struct.rtx_def* %insn314.0, %76, !dbg !2743
  br i1 %cmp333, label %for.inc351, label %while.body, !dbg !2742

while.body:                                       ; preds = %while.cond
  %call335 = call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %insn314.0) #6, !dbg !2744
  %tobool336 = icmp eq i8 %call335, 0, !dbg !2744
  br i1 %tobool336, label %if.else345, label %if.then337, !dbg !2747

if.then337:                                       ; preds = %while.body
  %77 = bitcast %struct.rtx_def* %insn314.0 to i8*, !dbg !2748
  %call338 = call %struct.edge_def* @split_block(%struct.basic_block_def* %bb.2, i8* %77) #6, !dbg !2750
  call void @llvm.dbg.value(metadata %struct.edge_def* %call338, metadata !2513, metadata !DIExpression()), !dbg !2741
  %il339 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 7, !dbg !2751
  %rtl340 = bitcast %union.basic_block_il_dependent* %il339 to %struct.rtl_bb_info**, !dbg !2751
  %78 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl340, align 8, !dbg !2751
  %end_341 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %78, i64 0, i32 1, !dbg !2751
  %79 = load %struct.rtx_def*, %struct.rtx_def** %end_341, align 8, !dbg !2751
  call void @rtl_make_eh_edge(%struct.simple_bitmap_def* null, %struct.basic_block_def* %bb.2, %struct.rtx_def* %79) #6, !dbg !2752
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call338, i64 0, i32 1, !dbg !2753
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2753
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %80, metadata !2431, metadata !DIExpression()), !dbg !2522
  %il342 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i64 0, i32 7, !dbg !2754
  %rtl343 = bitcast %union.basic_block_il_dependent* %il342 to %struct.rtl_bb_info**, !dbg !2754
  %81 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl343, align 8, !dbg !2754
  %head_344 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %81, i64 0, i32 0, !dbg !2754
  br label %if.end350, !dbg !2755

if.else345:                                       ; preds = %while.body
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn314.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2756
  %rt_rtx349 = bitcast %union.rtunion_def* %82 to %struct.rtx_def**, !dbg !2756
  br label %if.end350

if.end350:                                        ; preds = %if.else345, %if.then337
  %insn314.1.in = phi %struct.rtx_def** [ %head_344, %if.then337 ], [ %rt_rtx349, %if.else345 ]
  %bb.3 = phi %struct.basic_block_def* [ %80, %if.then337 ], [ %bb.2, %if.else345 ], !dbg !2741
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !2431, metadata !DIExpression()), !dbg !2522
  br label %while.cond, !dbg !2742, !llvm.loop !2757

for.inc351:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2635
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !2737
  br label %for.cond310, !dbg !2737, !llvm.loop !2759

for.end352:                                       ; preds = %for.cond310
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call141, i64 0, i32 0, !dbg !2761
  %83 = load i8*, i8** %popcount, align 8, !dbg !2761
  call void @free(i8* %83) #6, !dbg !2761
  %84 = bitcast %struct.simple_bitmap_def* %call141 to i8*, !dbg !2761
  call void @free(i8* %84) #6, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38) #8, !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #8, !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #8, !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #8, !dbg !2762
  br label %if.end353, !dbg !2763

if.end353:                                        ; preds = %for.end134, %for.end352
  %85 = bitcast %struct.bitmap_head_def** %b to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #8, !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2514, metadata !DIExpression()), !dbg !2765
  br label %for.cond355, !dbg !2766

for.cond355:                                      ; preds = %for.inc368, %if.end353
  %i354.0 = phi i32 [ 0, %if.end353 ], [ %inc369, %for.inc368 ], !dbg !2768
  call void @llvm.dbg.value(metadata i32 %i354.0, metadata !2514, metadata !DIExpression()), !dbg !2765
  %86 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2769
  %base358 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %86, i64 0, i32 0, !dbg !2769
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %b, metadata !2516, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  %call362 = call fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %base358, i32 %i354.0, %struct.bitmap_head_def** nonnull %b) #7, !dbg !2769
  %tobool363 = icmp eq i32 %call362, 0, !dbg !2771
  br i1 %tobool363, label %for.end370, label %for.body364, !dbg !2771

for.body364:                                      ; preds = %for.cond355
  %87 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %b, align 8, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %87, metadata !2516, metadata !DIExpression()), !dbg !2765
  %tobool365 = icmp eq %struct.bitmap_head_def* %87, null, !dbg !2772
  br i1 %tobool365, label %for.inc368, label %if.then366, !dbg !2774

if.then366:                                       ; preds = %for.body364
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %87, metadata !2516, metadata !DIExpression()), !dbg !2765
  call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %87) #6, !dbg !2775
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2516, metadata !DIExpression()), !dbg !2765
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %b, align 8, !dbg !2775
  br label %for.inc368, !dbg !2775

for.inc368:                                       ; preds = %for.body364, %if.then366
  %inc369 = add i32 %i354.0, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i32 %inc369, metadata !2514, metadata !DIExpression()), !dbg !2765
  br label %for.cond355, !dbg !2777, !llvm.loop !2778

for.end370:                                       ; preds = %for.cond355
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #8, !dbg !2780
  call fastcc void @VEC_bitmap_heap_free(%struct.VEC_bitmap_heap** nonnull @reg_copy_graph) #7, !dbg !2781
  %88 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2782
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %88) #6, !dbg !2782
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2782
  %89 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !2783
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %89) #6, !dbg !2783
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !2783
  br label %cleanup.cont374, !dbg !2784

cleanup.cont374:                                  ; preds = %for.end, %for.end370
  ret void, !dbg !2784
}

declare dso_local i32 @df_set_flags(i32) local_unnamed_addr #1

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_bitmap_heap* @VEC_bitmap_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2785 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2789, metadata !DIExpression()), !dbg !2790
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2791
  %0 = bitcast i8* %call to %struct.VEC_bitmap_heap*, !dbg !2791
  ret %struct.VEC_bitmap_heap* %0, !dbg !2791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_bitmap_heap_safe_grow(%struct.VEC_bitmap_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** @reg_copy_graph, metadata !2797, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2798, metadata !DIExpression()), !dbg !2799
  %cmp = icmp sgt i32 %size_, -1, !dbg !2800
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2800

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2800
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !2800
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2800

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %0, i64 0, i32 0, !dbg !2800
  br label %cond.end, !dbg !2800

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_bitmap_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !2800
  %call = tail call fastcc i32 @VEC_bitmap_base_length(%struct.VEC_bitmap_base* %cond) #7, !dbg !2800
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2800
  %tobool2 = icmp eq %struct.VEC_bitmap_heap* %1, null, !dbg !2800
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !2800

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %1, i64 0, i32 0, i32 0, !dbg !2800
  %2 = load i32, i32* %num, align 8, !dbg !2800
  br label %cond.end11, !dbg !2800

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !2800
  %sub = sub nsw i32 %size_, %cond12, !dbg !2800
  %call13 = tail call fastcc i32 @VEC_bitmap_heap_reserve_exact(%struct.VEC_bitmap_heap** nonnull @reg_copy_graph, i32 %sub) #7, !dbg !2800
  %3 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2800
  %num20 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %3, i64 0, i32 0, i32 0, !dbg !2800
  store i32 %size_, i32* %num20, align 8, !dbg !2800
  ret void, !dbg !2800
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def** @VEC_bitmap_base_address(%struct.VEC_bitmap_base* %vec_) unnamed_addr #0 !dbg !2801 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !2807, metadata !DIExpression()), !dbg !2808
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !2809
  %arraydecay = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 0, !dbg !2809
  %cond = select i1 %tobool, %struct.bitmap_head_def** null, %struct.bitmap_head_def** %arraydecay, !dbg !2809
  ret %struct.bitmap_head_def** %cond, !dbg !2809
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_decomposable_shift_zext(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2814, metadata !DIExpression()), !dbg !2818
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2819
  %bf.load = load i32, i32* %0, align 8, !dbg !2819
  %bf.clear = and i32 %bf.load, 65535, !dbg !2819
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2819
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2819

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !2819
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !2819

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !2819
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !2819

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !2819
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !2819

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2819
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2819
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !2819
  %3 = load i32*, i32** %2, align 8, !dbg !2819
  %bf.load12 = load i32, i32* %3, align 8, !dbg !2819
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !2819
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !2819
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !2819
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !2819

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !2819
  br label %cond.end25, !dbg !2819

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !2819
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !2815, metadata !DIExpression()), !dbg !2818
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !2820
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2822

if.end:                                           ; preds = %cond.end25
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2823
  %rt_rtx30 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2823
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !2823
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2816, metadata !DIExpression()), !dbg !2818
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !2824
  %bf.load31 = load i32, i32* %7, align 8, !dbg !2824
  %bf.clear32 = and i32 %bf.load31, 65535, !dbg !2824
  %cmp33 = icmp eq i32 %bf.clear32, 65, !dbg !2826
  br i1 %cmp33, label %if.end42, label %land.lhs.true, !dbg !2827

land.lhs.true:                                    ; preds = %if.end
  %cmp36 = icmp eq i32 %bf.clear32, 68, !dbg !2828
  br i1 %cmp36, label %if.end42, label %land.lhs.true37, !dbg !2829

land.lhs.true37:                                  ; preds = %land.lhs.true
  %cmp40 = icmp eq i32 %bf.clear32, 99, !dbg !2830
  br i1 %cmp40, label %if.end42, label %cleanup, !dbg !2831

if.end42:                                         ; preds = %land.lhs.true37, %land.lhs.true, %if.end
  %arrayidx45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2832
  %rt_rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**, !dbg !2832
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx46, align 8, !dbg !2832
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !2817, metadata !DIExpression()), !dbg !2818
  %arrayidx49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2833
  %9 = bitcast %union.rtunion_def* %arrayidx49 to i32**, !dbg !2833
  %10 = load i32*, i32** %9, align 8, !dbg !2833
  %bf.load51 = load i32, i32* %10, align 8, !dbg !2833
  %bf.clear52 = and i32 %bf.load51, 65535, !dbg !2833
  %cmp53 = icmp eq i32 %bf.clear52, 37, !dbg !2833
  %11 = bitcast i32* %10 to %struct.rtx_def*, !dbg !2835
  br i1 %cmp53, label %lor.lhs.false54, label %cleanup, !dbg !2835

lor.lhs.false54:                                  ; preds = %if.end42
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !2836
  %bf.load55 = load i32, i32* %12, align 8, !dbg !2836
  %bf.clear56 = and i32 %bf.load55, 65535, !dbg !2836
  %cmp57 = icmp eq i32 %bf.clear56, 37, !dbg !2836
  br i1 %cmp57, label %lor.lhs.false58, label %cleanup, !dbg !2837

lor.lhs.false58:                                  ; preds = %lor.lhs.false54
  %rt_rtx62 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**, !dbg !2838
  %call63 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %11) #7, !dbg !2838
  %cmp64 = icmp ult i32 %call63, 53, !dbg !2838
  br i1 %cmp64, label %cleanup, label %lor.lhs.false65, !dbg !2839

lor.lhs.false65:                                  ; preds = %lor.lhs.false58
  %call66 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %8) #7, !dbg !2840
  %cmp67 = icmp ult i32 %call66, 53, !dbg !2840
  br i1 %cmp67, label %cleanup, label %lor.lhs.false68, !dbg !2841

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %bf.load69 = load i32, i32* %7, align 8, !dbg !2842
  %bf.lshr = lshr i32 %bf.load69, 16, !dbg !2842
  %bf.clear70 = and i32 %bf.lshr, 255, !dbg !2842
  %idxprom = zext i32 %bf.clear70 to i64, !dbg !2842
  %arrayidx71 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2842
  %13 = load i8, i8* %arrayidx71, align 1, !dbg !2842
  %cmp72 = icmp eq i8 %13, 2, !dbg !2842
  br i1 %cmp72, label %if.end84, label %lor.lhs.false74, !dbg !2842

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %cmp81 = icmp eq i8 %13, 3, !dbg !2842
  br i1 %cmp81, label %if.end84, label %cleanup, !dbg !2843

if.end84:                                         ; preds = %lor.lhs.false74, %lor.lhs.false68
  %bf.clear86 = and i32 %bf.load69, 65535, !dbg !2844
  %cmp87 = icmp eq i32 %bf.clear86, 99, !dbg !2846
  br i1 %cmp87, label %if.then89, label %if.else, !dbg !2847

if.then89:                                        ; preds = %if.end84
  %bf.load90 = load i32, i32* %12, align 8, !dbg !2848
  %bf.lshr91 = lshr i32 %bf.load90, 16, !dbg !2848
  %bf.clear92 = and i32 %bf.lshr91, 255, !dbg !2848
  %14 = load i32, i32* @word_mode, align 4, !dbg !2851
  %cmp93 = icmp eq i32 %bf.clear92, %14, !dbg !2852
  br i1 %cmp93, label %lor.lhs.false95, label %cleanup, !dbg !2853

lor.lhs.false95:                                  ; preds = %if.then89
  %arrayidx100 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2854
  %15 = load i8, i8* %arrayidx100, align 1, !dbg !2854
  %cmp105 = icmp eq i8 %15, 8, !dbg !2855
  br i1 %cmp105, label %if.end141, label %cleanup, !dbg !2856

if.else:                                          ; preds = %if.end84
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2857
  %17 = bitcast %union.rtunion_def* %16 to i32**, !dbg !2857
  %18 = load i32*, i32** %17, align 8, !dbg !2857
  %bf.load113 = load i32, i32* %18, align 8, !dbg !2857
  %bf.clear114 = and i32 %bf.load113, 65535, !dbg !2857
  %cmp115 = icmp eq i32 %bf.clear114, 30, !dbg !2857
  br i1 %cmp115, label %lor.lhs.false117, label %cleanup, !dbg !2860

lor.lhs.false117:                                 ; preds = %if.else
  %u122 = getelementptr inbounds i32, i32* %18, i64 2, !dbg !2861
  %arrayidx123 = bitcast i32* %u122 to i64*, !dbg !2861
  %19 = load i64, i64* %arrayidx123, align 8, !dbg !2861
  %cmp124 = icmp slt i64 %19, 32, !dbg !2862
  br i1 %cmp124, label %cleanup, label %lor.lhs.false126, !dbg !2863

lor.lhs.false126:                                 ; preds = %lor.lhs.false117
  %bf.load127 = load i32, i32* %12, align 8, !dbg !2864
  %bf.lshr128 = lshr i32 %bf.load127, 16, !dbg !2864
  %bf.clear129 = and i32 %bf.lshr128, 255, !dbg !2864
  %idxprom130 = zext i32 %bf.clear129 to i64, !dbg !2864
  %arrayidx131 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom130, !dbg !2864
  %20 = load i8, i8* %arrayidx131, align 1, !dbg !2864
  %cmp137 = icmp eq i8 %20, 8, !dbg !2865
  br i1 %cmp137, label %if.end141, label %cleanup, !dbg !2866

if.end141:                                        ; preds = %lor.lhs.false95, %lor.lhs.false126
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2867
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx62, align 8, !dbg !2868
  %call146 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %22) #7, !dbg !2868
  %call147 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %21, i32 %call146) #6, !dbg !2869
  %bf.load148 = load i32, i32* %7, align 8, !dbg !2870
  %bf.clear149 = and i32 %bf.load148, 65535, !dbg !2870
  %cmp150 = icmp eq i32 %bf.clear149, 99, !dbg !2872
  br i1 %cmp150, label %cleanup, label %if.then152, !dbg !2873

if.then152:                                       ; preds = %if.end141
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !2874
  %call153 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %8) #7, !dbg !2875
  %call154 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %23, i32 %call153) #6, !dbg !2876
  br label %cleanup, !dbg !2876

cleanup:                                          ; preds = %land.lhs.true37, %lor.lhs.false95, %if.then89, %if.end141, %lor.lhs.false126, %cond.end25, %if.then152, %if.else, %lor.lhs.false117, %if.end42, %lor.lhs.false54, %lor.lhs.false58, %lor.lhs.false65, %lor.lhs.false74
  %retval.0 = phi i32 [ 0, %cond.end25 ], [ 0, %land.lhs.true37 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false54 ], [ 0, %if.end42 ], [ 0, %lor.lhs.false95 ], [ 0, %if.then89 ], [ 0, %lor.lhs.false126 ], [ 0, %lor.lhs.false117 ], [ 0, %if.else ], [ 1, %if.then152 ], [ 1, %if.end141 ], !dbg !2818
  ret i32 %retval.0, !dbg !2877
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @recog_memoized(%struct.rtx_def* %insn) unnamed_addr #0 !dbg !2878 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2881, metadata !DIExpression()), !dbg !2882
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2883
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 1, !dbg !2883
  %rt_int = bitcast %union.rtunion_def* %0 to i32*, !dbg !2883
  %1 = load i32, i32* %rt_int, align 8, !dbg !2883
  %cmp = icmp slt i32 %1, 0, !dbg !2885
  br i1 %cmp, label %if.then, label %if.end, !dbg !2886

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2887
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2887
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2887
  %call = tail call i32 @recog(%struct.rtx_def* %3, %struct.rtx_def* %insn, i32* null) #6, !dbg !2888
  store i32 %call, i32* %rt_int, align 8, !dbg !2889
  br label %if.end, !dbg !2890

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %call, %if.then ], [ %1, %entry ], !dbg !2891
  ret i32 %4, !dbg !2892
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @simple_move(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2893 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2897, metadata !DIExpression()), !dbg !2901
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !2902
  %cmp = icmp eq i8 %0, 2, !dbg !2904
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2905

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2906
  %bf.load = load i32, i32* %1, align 8, !dbg !2906
  %bf.clear = and i32 %bf.load, 65535, !dbg !2906
  %cmp2 = icmp eq i32 %bf.clear, 8, !dbg !2906
  br i1 %cmp2, label %cond.true, label %lor.lhs.false, !dbg !2906

lor.lhs.false:                                    ; preds = %if.end
  %cmp6 = icmp eq i32 %bf.clear, 7, !dbg !2906
  br i1 %cmp6, label %cond.true, label %lor.lhs.false8, !dbg !2906

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i32 %bf.clear, 9, !dbg !2906
  br i1 %cmp11, label %cond.true, label %lor.lhs.false13, !dbg !2906

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !2906
  br i1 %cmp16, label %cond.true, label %cond.end32, !dbg !2906

cond.true:                                        ; preds = %lor.lhs.false13, %lor.lhs.false8, %lor.lhs.false, %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2906
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2906
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !2906
  %4 = load i32*, i32** %3, align 8, !dbg !2906
  %bf.load18 = load i32, i32* %4, align 8, !dbg !2906
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !2906
  %cmp20 = icmp eq i32 %bf.clear19, 23, !dbg !2906
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !2906
  br i1 %cmp20, label %cond.end32, label %cond.false, !dbg !2906

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !2906
  br label %cond.end32, !dbg !2906

cond.end32:                                       ; preds = %lor.lhs.false13, %cond.false, %cond.true
  %cond33 = phi %struct.rtx_def* [ %call, %cond.false ], [ %5, %cond.true ], [ null, %lor.lhs.false13 ], !dbg !2906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond33, metadata !2899, metadata !DIExpression()), !dbg !2901
  %tobool = icmp eq %struct.rtx_def* %cond33, null, !dbg !2907
  br i1 %tobool, label %cleanup, label %if.end35, !dbg !2909

if.end35:                                         ; preds = %cond.end32
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond33, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2910
  %rt_rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**, !dbg !2910
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx39, align 8, !dbg !2910
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2898, metadata !DIExpression()), !dbg !2901
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), align 8, !dbg !2911
  %cmp40 = icmp ne %struct.rtx_def* %6, %7, !dbg !2913
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 1), align 8, !dbg !2914
  %cmp42 = icmp ne %struct.rtx_def* %6, %8, !dbg !2915
  %or.cond = and i1 %cmp40, %cmp42, !dbg !2916
  br i1 %or.cond, label %cleanup, label %if.end45, !dbg !2916

if.end45:                                         ; preds = %if.end35
  %call46 = tail call fastcc zeroext i8 @simple_move_operand(%struct.rtx_def* %6) #7, !dbg !2917
  %tobool47 = icmp eq i8 %call46, 0, !dbg !2917
  br i1 %tobool47, label %cleanup, label %if.end49, !dbg !2919

if.end49:                                         ; preds = %if.end45
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond33, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2920
  %rt_rtx53 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2920
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx53, align 8, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2898, metadata !DIExpression()), !dbg !2901
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), align 8, !dbg !2921
  %cmp54 = icmp ne %struct.rtx_def* %10, %11, !dbg !2923
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 1), align 8, !dbg !2924
  %cmp57 = icmp ne %struct.rtx_def* %10, %12, !dbg !2925
  %or.cond1 = and i1 %cmp54, %cmp57, !dbg !2926
  br i1 %or.cond1, label %cleanup, label %if.end60, !dbg !2926

if.end60:                                         ; preds = %if.end49
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !2927
  %bf.load61 = load i32, i32* %13, align 8, !dbg !2927
  %bf.clear62 = and i32 %bf.load61, 65535, !dbg !2927
  %cmp63 = icmp eq i32 %bf.clear62, 17, !dbg !2929
  br i1 %cmp63, label %if.end60.if.end69_crit_edge, label %land.lhs.true65, !dbg !2930

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  br label %if.end69, !dbg !2930

land.lhs.true65:                                  ; preds = %if.end60
  %call66 = tail call fastcc zeroext i8 @simple_move_operand(%struct.rtx_def* %10) #7, !dbg !2931
  %tobool67 = icmp eq i8 %call66, 0, !dbg !2931
  br i1 %tobool67, label %cleanup, label %land.lhs.true65.if.end69_crit_edge, !dbg !2932

land.lhs.true65.if.end69_crit_edge:               ; preds = %land.lhs.true65
  %.phi.trans.insert = bitcast %union.rtunion_def* %9 to i32**, !dbg !2901
  %.pre = load i32*, i32** %.phi.trans.insert, align 8, !dbg !2933
  %bf.load74.pre = load i32, i32* %.pre, align 8, !dbg !2933
  br label %if.end69, !dbg !2932

if.end69:                                         ; preds = %if.end60.if.end69_crit_edge, %land.lhs.true65.if.end69_crit_edge
  %bf.load74 = phi i32 [ %bf.load74.pre, %land.lhs.true65.if.end69_crit_edge ], [ %bf.load61, %if.end60.if.end69_crit_edge ], !dbg !2933
  %bf.lshr = lshr i32 %bf.load74, 16, !dbg !2933
  %bf.clear75 = and i32 %bf.lshr, 255, !dbg !2933
  call void @llvm.dbg.value(metadata i32 %bf.clear75, metadata !2900, metadata !DIExpression()), !dbg !2901
  %idxprom = zext i32 %bf.clear75 to i64, !dbg !2934
  %arrayidx76 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2934
  %14 = load i8, i8* %arrayidx76, align 1, !dbg !2934
  %cmp78 = icmp eq i8 %14, 2, !dbg !2934
  br i1 %cmp78, label %if.end95, label %lor.lhs.false80, !dbg !2934

lor.lhs.false80:                                  ; preds = %if.end69
  %cmp84 = icmp eq i8 %14, 3, !dbg !2934
  br i1 %cmp84, label %if.end95, label %land.lhs.true86, !dbg !2936

land.lhs.true86:                                  ; preds = %lor.lhs.false80
  %arrayidx88 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2937
  %15 = load i8, i8* %arrayidx88, align 1, !dbg !2937
  %conv90 = zext i8 %15 to i32, !dbg !2937
  %mul = shl nuw nsw i32 %conv90, 3, !dbg !2938
  %call91 = tail call i32 @mode_for_size(i32 %mul, i32 2, i32 0) #6, !dbg !2939
  %cmp92 = icmp eq i32 %call91, 1, !dbg !2940
  br i1 %cmp92, label %cleanup, label %if.end95, !dbg !2941

if.end95:                                         ; preds = %land.lhs.true86, %lor.lhs.false80, %if.end69
  %cmp99 = icmp eq i8 %14, 3, !dbg !2942
  %.cond33 = select i1 %cmp99, %struct.rtx_def* null, %struct.rtx_def* %cond33, !dbg !2901
  br label %cleanup, !dbg !2901

cleanup:                                          ; preds = %land.lhs.true65, %if.end45, %cond.end32, %entry, %if.end95, %land.lhs.true86, %if.end49, %if.end35
  %retval.0 = phi %struct.rtx_def* [ null, %entry ], [ null, %cond.end32 ], [ null, %if.end35 ], [ null, %if.end45 ], [ null, %if.end49 ], [ null, %land.lhs.true65 ], [ null, %land.lhs.true86 ], [ %.cond33, %if.end95 ], !dbg !2901
  ret %struct.rtx_def* %retval.0, !dbg !2944
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @find_pseudo_copy(%struct.rtx_def* %set) unnamed_addr #4 !dbg !2945 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !2949, metadata !DIExpression()), !dbg !2955
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2956
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2956
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2950, metadata !DIExpression()), !dbg !2955
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2957
  %rt_rtx4 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !2957
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2951, metadata !DIExpression()), !dbg !2955
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !2958
  %bf.load = load i32, i32* %3, align 8, !dbg !2958
  %bf.clear = and i32 %bf.load, 65535, !dbg !2958
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2958
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !2960

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2961
  %bf.load5 = load i32, i32* %4, align 8, !dbg !2961
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !2961
  %cmp7 = icmp eq i32 %bf.clear6, 37, !dbg !2961
  br i1 %cmp7, label %if.end, label %cleanup, !dbg !2962

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %0) #7, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %call, metadata !2952, metadata !DIExpression()), !dbg !2955
  %call8 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %2) #7, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2953, metadata !DIExpression()), !dbg !2955
  %cmp9 = icmp ult i32 %call, 53, !dbg !2965
  %cmp11 = icmp ult i32 %call8, 53, !dbg !2967
  %or.cond = or i1 %cmp9, %cmp11, !dbg !2968
  br i1 %or.cond, label %cleanup, label %if.end13, !dbg !2968

if.end13:                                         ; preds = %if.end
  %bf.load14 = load i32, i32* %3, align 8, !dbg !2969
  %bf.lshr = lshr i32 %bf.load14, 16, !dbg !2969
  %bf.clear15 = and i32 %bf.lshr, 255, !dbg !2969
  %idxprom = zext i32 %bf.clear15 to i64, !dbg !2969
  %arrayidx16 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2969
  %5 = load i8, i8* %arrayidx16, align 1, !dbg !2969
  %cmp18 = icmp ult i8 %5, 5, !dbg !2971
  br i1 %cmp18, label %cleanup, label %if.end21, !dbg !2972

if.end21:                                         ; preds = %if.end13
  %6 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2973
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %6, i64 0, i32 0, !dbg !2973
  %call22 = tail call fastcc %struct.bitmap_head_def* @VEC_bitmap_base_index(%struct.VEC_bitmap_base* %base, i32 %call8) #7, !dbg !2973
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call22, metadata !2954, metadata !DIExpression()), !dbg !2955
  %cmp23 = icmp eq %struct.bitmap_head_def* %call22, null, !dbg !2974
  br i1 %cmp23, label %if.then25, label %if.end34, !dbg !2976

if.then25:                                        ; preds = %if.end21
  %call26 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call26, metadata !2954, metadata !DIExpression()), !dbg !2955
  %7 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !2979
  %base29 = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %7, i64 0, i32 0, !dbg !2979
  %call33 = tail call fastcc %struct.bitmap_head_def* @VEC_bitmap_base_replace(%struct.VEC_bitmap_base* %base29, i32 %call8, %struct.bitmap_head_def* %call26) #7, !dbg !2979
  br label %if.end34, !dbg !2980

if.end34:                                         ; preds = %if.then25, %if.end21
  %b.0 = phi %struct.bitmap_head_def* [ %call26, %if.then25 ], [ %call22, %if.end21 ], !dbg !2955
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b.0, metadata !2954, metadata !DIExpression()), !dbg !2955
  %call35 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %b.0, i32 %call) #6, !dbg !2981
  br label %cleanup, !dbg !2982

cleanup:                                          ; preds = %if.end13, %if.end, %entry, %lor.lhs.false, %if.end34
  %retval.0 = phi i8 [ 1, %if.end34 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end13 ], !dbg !2955
  ret i8 %retval.0, !dbg !2983
}

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @find_decomposable_subregs(%struct.rtx_def** %px, i8* %data) #4 !dbg !2984 {
entry:
  %cmi_mem = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !2988, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %data, metadata !2989, metadata !DIExpression()), !dbg !3006
  %0 = bitcast i8* %data to i32*, !dbg !3007
  call void @llvm.dbg.value(metadata i32* %0, metadata !2990, metadata !DIExpression()), !dbg !3006
  %1 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2991, metadata !DIExpression()), !dbg !3006
  %cmp = icmp eq %struct.rtx_def* %1, null, !dbg !3009
  br i1 %cmp, label %cleanup99, label %if.end, !dbg !3011

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3012
  %bf.load = load i32, i32* %2, align 8, !dbg !3012
  %bf.clear = and i32 %bf.load, 65535, !dbg !3012
  %cmp1 = icmp eq i32 %bf.clear, 39, !dbg !3013
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !3014

if.then2:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3015
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3015
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !2992, metadata !DIExpression()), !dbg !3016
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3017
  %bf.load3 = load i32, i32* %4, align 8, !dbg !3017
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !3017
  %cmp5 = icmp eq i32 %bf.clear4, 37, !dbg !3017
  br i1 %cmp5, label %if.end7, label %cleanup, !dbg !3019

if.end7:                                          ; preds = %if.then2
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %3) #7, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %call, metadata !2995, metadata !DIExpression()), !dbg !3016
  %cmp8 = icmp ult i32 %call, 53, !dbg !3021
  br i1 %cmp8, label %cleanup, label %if.end10, !dbg !3023

if.end10:                                         ; preds = %if.end7
  %bf.load11 = load i32, i32* %2, align 8, !dbg !3024
  %bf.lshr = lshr i32 %bf.load11, 16, !dbg !3024
  %bf.clear12 = and i32 %bf.lshr, 255, !dbg !3024
  %idxprom = zext i32 %bf.clear12 to i64, !dbg !3024
  %arrayidx13 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3024
  %5 = load i8, i8* %arrayidx13, align 1, !dbg !3024
  %conv14 = zext i8 %5 to i32, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %conv14, metadata !2996, metadata !DIExpression()), !dbg !3016
  %bf.load15 = load i32, i32* %4, align 8, !dbg !3025
  %bf.lshr16 = lshr i32 %bf.load15, 16, !dbg !3025
  %bf.clear17 = and i32 %bf.lshr16, 255, !dbg !3025
  %idxprom18 = zext i32 %bf.clear17 to i64, !dbg !3025
  %arrayidx19 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom18, !dbg !3025
  %6 = load i8, i8* %arrayidx19, align 1, !dbg !3025
  call void @llvm.dbg.value(metadata i8 %6, metadata !2997, metadata !DIExpression()), !dbg !3016
  %sub = add nuw nsw i32 %conv14, 3, !dbg !3026
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2998, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %6, metadata !2999, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !3016
  %div.mask = and i32 %sub, 508, !dbg !3027
  %cmp25 = icmp eq i32 %div.mask, 4, !dbg !3027
  %cmp27 = icmp ugt i8 %6, 4, !dbg !3029
  %or.cond = and i1 %cmp25, %cmp27, !dbg !3030
  br i1 %or.cond, label %if.then29, label %if.end31, !dbg !3030

if.then29:                                        ; preds = %if.end10
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !3031
  %call30 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %7, i32 %call) #6, !dbg !3033
  br label %cleanup, !dbg !3034

if.end31:                                         ; preds = %if.end10
  %cmp32 = icmp ugt i32 %sub, 7, !dbg !3035
  %cmp35 = icmp eq i8 %5, %6, !dbg !3037
  %or.cond1 = and i1 %cmp32, %cmp35, !dbg !3038
  br i1 %or.cond1, label %land.lhs.true37, label %cleanup, !dbg !3038

land.lhs.true37:                                  ; preds = %if.end31
  %call44 = tail call zeroext i8 @ix86_modes_tieable_p(i32 %bf.clear12, i32 %bf.clear17) #6, !dbg !3039
  %tobool = icmp eq i8 %call44, 0, !dbg !3039
  br i1 %tobool, label %if.then45, label %cleanup, !dbg !3040

if.then45:                                        ; preds = %land.lhs.true37
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !3041
  %call46 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %8, i32 %call) #6, !dbg !3043
  br label %cleanup, !dbg !3044

cleanup:                                          ; preds = %land.lhs.true37, %if.end31, %if.end7, %if.then2, %if.then45, %if.then29
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then29 ], [ false, %if.then45 ], [ false, %if.then2 ], [ false, %if.end7 ], [ true, %land.lhs.true37 ], [ true, %if.end31 ]
  %retval.0 = phi i32 [ -1, %if.then29 ], [ -1, %if.then45 ], [ 0, %if.then2 ], [ -1, %if.end7 ], [ undef, %land.lhs.true37 ], [ undef, %if.end31 ]
  br i1 %cleanup.dest.slot.0, label %if.end98, label %cleanup99

if.else:                                          ; preds = %if.end
  %cmp55 = icmp eq i32 %bf.clear, 37, !dbg !3045
  br i1 %cmp55, label %if.then57, label %if.else84, !dbg !3046

if.then57:                                        ; preds = %if.else
  %call59 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %1) #7, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %call59, metadata !3000, metadata !DIExpression()), !dbg !3048
  %cmp60 = icmp ult i32 %call59, 53, !dbg !3049
  br i1 %cmp60, label %if.end98, label %land.lhs.true62, !dbg !3051

land.lhs.true62:                                  ; preds = %if.then57
  %bf.load63 = load i32, i32* %2, align 8, !dbg !3052
  %bf.lshr64 = lshr i32 %bf.load63, 16, !dbg !3052
  %bf.clear65 = and i32 %bf.lshr64, 255, !dbg !3052
  %idxprom66 = zext i32 %bf.clear65 to i64, !dbg !3052
  %arrayidx67 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom66, !dbg !3052
  %9 = load i8, i8* %arrayidx67, align 1, !dbg !3052
  %cmp70 = icmp ugt i8 %9, 4, !dbg !3053
  br i1 %cmp70, label %if.then72, label %if.end98, !dbg !3054

if.then72:                                        ; preds = %land.lhs.true62
  %10 = load i32, i32* %0, align 4, !dbg !3055
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb74
    i32 2, label %if.end98
  ], !dbg !3057

sw.bb:                                            ; preds = %if.then72
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !3058
  %call73 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 %call59) #6, !dbg !3060
  br label %if.end98, !dbg !3061

sw.bb74:                                          ; preds = %if.then72
  %12 = load i32, i32* @word_mode, align 4, !dbg !3062
  %call78 = tail call zeroext i8 @ix86_modes_tieable_p(i32 %bf.clear65, i32 %12) #6, !dbg !3062
  %tobool79 = icmp eq i8 %call78, 0, !dbg !3062
  br i1 %tobool79, label %if.end98, label %if.then80, !dbg !3064

if.then80:                                        ; preds = %sw.bb74
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !3065
  %call81 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %13, i32 %call59) #6, !dbg !3066
  br label %if.end98, !dbg !3066

sw.default:                                       ; preds = %if.then72
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3067
  br label %if.end98, !dbg !3068

if.else84:                                        ; preds = %if.else
  %cmp87 = icmp eq i32 %bf.clear, 43, !dbg !3069
  br i1 %cmp87, label %if.then89, label %if.end98, !dbg !3070

if.then89:                                        ; preds = %if.else84
  %14 = bitcast i32* %cmi_mem to i8*, !dbg !3071
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #8, !dbg !3071
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3072
  store i32 0, i32* %cmi_mem, align 4, !dbg !3073
  %arrayidx92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3074
  %rt_rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**, !dbg !3074
  %call94 = call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx93, i32 (%struct.rtx_def**, i8*)* nonnull @find_decomposable_subregs, i8* nonnull %14) #6, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #8, !dbg !3076
  br label %cleanup99

if.end98:                                         ; preds = %sw.bb74, %sw.bb, %if.then72, %sw.default, %if.then80, %land.lhs.true62, %if.then57, %if.else84, %cleanup
  br label %cleanup99, !dbg !3077

cleanup99:                                        ; preds = %entry, %cleanup, %if.end98, %if.then89
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %if.end98 ], [ -1, %if.then89 ], [ 0, %entry ], !dbg !3006
  ret i32 %retval.1, !dbg !3078
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_pseudo_copies() unnamed_addr #4 !dbg !3079 {
entry:
  %iter = alloca %struct.bitmap_iterator, align 8
  %i = alloca i32, align 4
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3090
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3081, metadata !DIExpression()), !dbg !3091
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3082, metadata !DIExpression()), !dbg !3091
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !3093
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %0) #6, !dbg !3094
  %1 = bitcast %struct.bitmap_iterator* %iter to i8*, !dbg !3095
  %2 = bitcast i32* %i to i8*, !dbg !3095
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %call, i64 0, i32 0, !dbg !3091
  br label %do.body, !dbg !3096

do.body:                                          ; preds = %for.end, %entry
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3098
  call void @bitmap_clear(%struct.bitmap_head_def* %call1) #6, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !3083, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  call void @llvm.dbg.value(metadata i32* %i, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %iter, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %i) #7, !dbg !3100
  br label %for.cond, !dbg !3100

for.cond:                                         ; preds = %for.inc, %do.body
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !3083, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  call void @llvm.dbg.value(metadata i32* %i, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  %call2 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %iter, i32* nonnull %i) #7, !dbg !3101
  %tobool = icmp eq i8 %call2, 0, !dbg !3100
  br i1 %tobool, label %for.end, label %for.body, !dbg !3100

for.body:                                         ; preds = %for.cond
  %3 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !3102
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %3, i64 0, i32 0, !dbg !3102
  %4 = load i32, i32* %i, align 4, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %4, metadata !3085, metadata !DIExpression()), !dbg !3095
  %call4 = call fastcc %struct.bitmap_head_def* @VEC_bitmap_base_index(%struct.VEC_bitmap_base* %base, i32 %4) #7, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !3086, metadata !DIExpression()), !dbg !3103
  %tobool5 = icmp eq %struct.bitmap_head_def* %call4, null, !dbg !3104
  br i1 %tobool5, label %for.inc, label %if.then, !dbg !3106

if.then:                                          ; preds = %for.body
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !3107
  %call6 = call zeroext i8 @bitmap_ior_and_compl_into(%struct.bitmap_head_def* %call1, %struct.bitmap_head_def* nonnull %call4, %struct.bitmap_head_def* %5) #6, !dbg !3108
  br label %for.inc, !dbg !3108

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %iter, metadata !3083, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  call void @llvm.dbg.value(metadata i32* %i, metadata !3085, metadata !DIExpression(DW_OP_deref)), !dbg !3095
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %iter, i32* nonnull %i) #7, !dbg !3101
  br label %for.cond, !dbg !3101, !llvm.loop !3109

for.end:                                          ; preds = %for.cond
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !3111
  %call7 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %6) #6, !dbg !3112
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @decomposable_context, align 8, !dbg !3113
  %call8 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %7, %struct.bitmap_head_def* %call1) #6, !dbg !3114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3115
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3116
  %tobool9 = icmp eq %struct.bitmap_element_def* %8, null, !dbg !3116
  br i1 %tobool9, label %do.end, label %do.body, !dbg !3117, !llvm.loop !3118

do.end:                                           ; preds = %for.end
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3081, metadata !DIExpression()), !dbg !3091
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3082, metadata !DIExpression()), !dbg !3091
  ret void, !dbg !3122
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3123 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3132, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3133, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3135, metadata !DIExpression()), !dbg !3136
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3137
  %1 = load i64, i64* %0, align 8, !dbg !3137
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3138
  store i64 %1, i64* %2, align 8, !dbg !3138
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3139
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3140
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3141
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3144
  br label %while.body, !dbg !3144

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3145
  br i1 %tobool, label %if.then, label %if.end, !dbg !3146

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3147
  br label %while.end, !dbg !3149

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3150

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3144, !llvm.loop !3151

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3153

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3153
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3155
  %7 = load i32, i32* %indx9, align 8, !dbg !3155
  %cmp11 = icmp eq i32 %7, 0, !dbg !3156
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3157

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3158
  %8 = load i32, i32* %indx14, align 8, !dbg !3158
  %mul = shl i32 %8, 7, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3134, metadata !DIExpression()), !dbg !3136
  br label %if.end15, !dbg !3160

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3134, metadata !DIExpression()), !dbg !3136
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3161
  store i32 0, i32* %word_no, align 8, !dbg !3162
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3163
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3163
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3164
  store i64 %9, i64* %bits21, align 8, !dbg !3165
  %tobool23 = icmp eq i64 %9, 0, !dbg !3166
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3166
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %add, metadata !3134, metadata !DIExpression()), !dbg !3136
  store i32 %add, i32* %bit_no, align 4, !dbg !3168
  ret void, !dbg !3169
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3175, metadata !DIExpression()), !dbg !3179
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3180
  %0 = load i64, i64* %bits, align 8, !dbg !3180
  %tobool = icmp eq i64 %0, 0, !dbg !3181
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3182

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3183
  br label %next_bit, !dbg !3186

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3176), !dbg !3187
  br label %while.cond, !dbg !3186

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3188
  %and = and i64 %2, 1, !dbg !3189
  %tobool2 = icmp eq i64 %and, 0, !dbg !3190
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3186

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3191
  store i64 %shr, i64* %bits, align 8, !dbg !3191
  %3 = load i32, i32* %bit_no, align 4, !dbg !3193
  %add = add i32 %3, 1, !dbg !3193
  store i32 %add, i32* %bit_no, align 4, !dbg !3193
  %.pre = load i64, i64* %bits, align 8, !dbg !3188
  br label %while.cond, !dbg !3186, !llvm.loop !3194

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3196
  %sub = add i32 %4, 63, !dbg !3197
  %div = and i32 %sub, -64, !dbg !3198
  store i32 %div, i32* %bit_no, align 4, !dbg !3199
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3200
  %5 = load i32, i32* %word_no, align 8, !dbg !3201
  %inc = add i32 %5, 1, !dbg !3201
  store i32 %inc, i32* %word_no, align 8, !dbg !3201
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3202
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3202
  br label %while.body6, !dbg !3203

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3204

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3205
  %cmp = icmp eq i32 %8, 2, !dbg !3206
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3202
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3204

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3183
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3183
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3183
  store i64 %10, i64* %bits, align 8, !dbg !3207
  %tobool14 = icmp eq i64 %10, 0, !dbg !3208
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3210

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3211
  %add17 = add i32 %11, 64, !dbg !3211
  store i32 %add17, i32* %bit_no, align 4, !dbg !3211
  %12 = load i32, i32* %word_no, align 8, !dbg !3212
  %inc19 = add i32 %12, 1, !dbg !3212
  store i32 %inc19, i32* %word_no, align 8, !dbg !3212
  br label %while.cond7, !dbg !3204, !llvm.loop !3213

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3202
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3215
  %14 = load i64, i64* %13, align 8, !dbg !3215
  store i64 %14, i64* %6, align 8, !dbg !3216
  %tobool24 = icmp eq i64 %14, 0, !dbg !3217
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3219

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3219
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3220
  %16 = load i32, i32* %indx, align 8, !dbg !3220
  %mul28 = shl i32 %16, 7, !dbg !3221
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3222
  store i32 0, i32* %word_no, align 8, !dbg !3223
  br label %while.body6, !dbg !3203, !llvm.loop !3224

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3226

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3226

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3179
  ret i8 %retval.0, !dbg !3226
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompose_register(i32 %regno) unnamed_addr #4 !dbg !3227 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3231, metadata !DIExpression()), !dbg !3236
  %0 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3237
  %idxprom = zext i32 %regno to i64, !dbg !3237
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %0, i64 %idxprom, !dbg !3237
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3232, metadata !DIExpression()), !dbg !3236
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx, align 8, !dbg !3238
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3239
  %bf.load = load i32, i32* %2, align 8, !dbg !3239
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3239
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3239
  %idxprom3 = zext i32 %bf.clear to i64, !dbg !3239
  %arrayidx4 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom3, !dbg !3239
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !3239
  %conv5 = zext i8 %3 to i32, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %conv5, metadata !3233, metadata !DIExpression()), !dbg !3236
  %sub = add nuw nsw i32 %conv5, 3, !dbg !3240
  %div = lshr i32 %sub, 2, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %div, metadata !3233, metadata !DIExpression()), !dbg !3236
  %call = tail call %struct.rtvec_def* @rtvec_alloc(i32 %div) #6, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.rtvec_def* %call, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()), !dbg !3236
  %wide.trip.count4 = zext i32 %div to i64, !dbg !3243
  br label %for.cond, !dbg !3246

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry ], !dbg !3247
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3234, metadata !DIExpression()), !dbg !3236
  %exitcond5 = icmp eq i64 %indvars.iv1, %wide.trip.count4, !dbg !3243
  br i1 %exitcond5, label %for.end, label %for.body, !dbg !3248

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @word_mode, align 4, !dbg !3249
  %indvars.iv1.tr = trunc i64 %indvars.iv1 to i32, !dbg !3250
  %5 = shl i32 %indvars.iv1.tr, 2, !dbg !3250
  %call7 = tail call %struct.rtx_def* @gen_reg_rtx_offset(%struct.rtx_def* %1, i32 %4, i32 %5) #6, !dbg !3250
  %arrayidx9 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %call, i64 0, i32 1, i64 %indvars.iv1, !dbg !3251
  store %struct.rtx_def* %call7, %struct.rtx_def** %arrayidx9, align 8, !dbg !3252
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3253
  call void @llvm.dbg.value(metadata i32 undef, metadata !3234, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3236
  br label %for.cond, !dbg !3254, !llvm.loop !3255

for.end:                                          ; preds = %for.cond
  %bf.load10 = load i32, i32* %2, align 8, !dbg !3257
  %bf.clear11 = and i32 %bf.load10, -65536, !dbg !3257
  %bf.set = or i32 %bf.clear11, 42, !dbg !3257
  store i32 %bf.set, i32* %2, align 8, !dbg !3257
  %arrayidx12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3258
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtvec_def**, !dbg !3258
  store %struct.rtvec_def* %call, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3259
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3260
  %tobool = icmp eq %struct._IO_FILE* %6, null, !dbg !3260
  br i1 %tobool, label %if.end, label %if.then, !dbg !3262

if.then:                                          ; preds = %for.end
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %regno) #6, !dbg !3263
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()), !dbg !3236
  %wide.trip.count = zext i32 %div to i64, !dbg !3265
  br label %for.cond14, !dbg !3268

for.cond14:                                       ; preds = %for.body17, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 0, %if.then ], !dbg !3269
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3234, metadata !DIExpression()), !dbg !3236
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3270
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3265
  br i1 %exitcond, label %for.end29, label %for.body17, !dbg !3271

for.body17:                                       ; preds = %for.cond14
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3272
  %arrayidx24 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i64 0, i32 1, i64 %indvars.iv, !dbg !3272
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx24, align 8, !dbg !3272
  %call25 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %9) #7, !dbg !3272
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %call25) #6, !dbg !3273
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3274
  call void @llvm.dbg.value(metadata i32 undef, metadata !3234, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3236
  br label %for.cond14, !dbg !3275, !llvm.loop !3276

for.end29:                                        ; preds = %for.cond14
  %.lcssa = phi %struct._IO_FILE* [ %7, %for.cond14 ], !dbg !3270
  %call30 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %.lcssa) #6, !dbg !3278
  br label %if.end, !dbg !3279

if.end:                                           ; preds = %for.end, %for.end29
  ret void, !dbg !3280
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3281 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3286, metadata !DIExpression()), !dbg !3287
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3288
  %0 = load i64, i64* %bits, align 8, !dbg !3289
  %shr = lshr i64 %0, 1, !dbg !3289
  store i64 %shr, i64* %bits, align 8, !dbg !3289
  %1 = load i32, i32* %bit_no, align 4, !dbg !3290
  %add = add i32 %1, 1, !dbg !3290
  store i32 %add, i32* %bit_no, align 4, !dbg !3290
  ret void, !dbg !3291
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @resolve_clobber(%struct.rtx_def* %pat, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3292 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !3296, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3297, metadata !DIExpression()), !dbg !3307
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pat, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3308
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3308
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3308
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3298, metadata !DIExpression()), !dbg !3307
  %call = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %0) #7, !dbg !3309
  %tobool = icmp eq i8 %call, 0, !dbg !3309
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3311

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %0) #7, !dbg !3312
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3312
  br i1 %tobool2, label %cleanup, label %if.end, !dbg !3313

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3314
  %bf.load = load i32, i32* %1, align 8, !dbg !3314
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3314
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3299, metadata !DIExpression()), !dbg !3307
  %idxprom = zext i32 %bf.clear to i64, !dbg !3315
  %arrayidx3 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3315
  %2 = load i8, i8* %arrayidx3, align 1, !dbg !3315
  %conv4 = zext i8 %2 to i32, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !3300, metadata !DIExpression()), !dbg !3307
  %sub = add nuw nsw i32 %conv4, 3, !dbg !3316
  %div = lshr i32 %sub, 2, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %div, metadata !3300, metadata !DIExpression()), !dbg !3307
  %3 = load i32, i32* @word_mode, align 4, !dbg !3318
  %call9 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %3, %struct.rtx_def* %0, i32 %bf.clear, i32 0) #7, !dbg !3319
  %call10 = tail call zeroext i8 @validate_change(%struct.rtx_def* null, %struct.rtx_def** nonnull %rt_rtx, %struct.rtx_def* %call9, i8 zeroext 0) #6, !dbg !3320
  call void @llvm.dbg.value(metadata i8 %call10, metadata !3302, metadata !DIExpression()), !dbg !3307
  %call12 = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %insn) #6, !dbg !3321
  %cmp = icmp eq i8 %call10, 0, !dbg !3322
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3322

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 859, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3322
  br label %cond.end, !dbg !3322

cond.end:                                         ; preds = %if.end, %cond.true
  call void @llvm.dbg.value(metadata i32 %div, metadata !3301, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3307
  br label %for.cond, !dbg !3323

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0.in = phi i32 [ %div, %cond.end ], [ %i.0, %for.body ]
  %i.0 = add i32 %i.0.in, -1, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3301, metadata !DIExpression()), !dbg !3307
  %cmp15 = icmp eq i32 %i.0, 0, !dbg !3325
  br i1 %cmp15, label %for.end, label %for.body, !dbg !3326

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @word_mode, align 4, !dbg !3327
  %mul = shl i32 %i.0, 2, !dbg !3328
  %call17 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %4, %struct.rtx_def* %0, i32 %bf.clear, i32 %mul) #7, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call17, metadata !3303, metadata !DIExpression()), !dbg !3330
  %call18 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 25, i32 0, %struct.rtx_def* %call17) #6, !dbg !3331
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call18, metadata !3303, metadata !DIExpression()), !dbg !3330
  %call19 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call18, %struct.rtx_def* %insn) #6, !dbg !3332
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3301, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3307
  br label %for.cond, !dbg !3333, !llvm.loop !3334

for.end:                                          ; preds = %for.cond
  tail call fastcc void @resolve_reg_notes(%struct.rtx_def* %insn) #7, !dbg !3336
  br label %cleanup, !dbg !3337

cleanup:                                          ; preds = %land.lhs.true, %for.end
  %retval.0 = phi i8 [ 1, %for.end ], [ 0, %land.lhs.true ], !dbg !3307
  ret i8 %retval.0, !dbg !3338
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @resolve_use(%struct.rtx_def* %pat, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !3341, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3342, metadata !DIExpression()), !dbg !3343
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %pat, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3344
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3344
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3344
  %call = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %0) #7, !dbg !3346
  %tobool = icmp eq i8 %call, 0, !dbg !3346
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3347

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3348
  %call5 = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %1) #7, !dbg !3349
  %tobool7 = icmp eq i8 %call5, 0, !dbg !3349
  br i1 %tobool7, label %if.end, label %if.then, !dbg !3350

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call8 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #6, !dbg !3351
  br label %return, !dbg !3353

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @resolve_reg_notes(%struct.rtx_def* %insn) #7, !dbg !3354
  br label %return, !dbg !3355

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.end ], !dbg !3343
  ret i8 %retval.0, !dbg !3356
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resolve_debug(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3357 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3361, metadata !DIExpression()), !dbg !3362
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3363
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3363
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3363
  %call = tail call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx, i32 (%struct.rtx_def**, i8*)* nonnull @adjust_decomposed_uses, i8* null) #6, !dbg !3364
  %call1 = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %insn) #6, !dbg !3365
  tail call fastcc void @resolve_reg_notes(%struct.rtx_def* %insn) #7, !dbg !3366
  ret void, !dbg !3367
}

declare dso_local zeroext i8 @control_flow_insn_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @resolve_simple_move(%struct.rtx_def* %set, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3368 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3372, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3373, metadata !DIExpression()), !dbg !3409
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3410
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3410
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3374, metadata !DIExpression()), !dbg !3409
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3411
  %rt_rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**, !dbg !3411
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3375, metadata !DIExpression()), !dbg !3409
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3412
  %bf.load = load i32, i32* %3, align 8, !dbg !3412
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3412
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3378, metadata !DIExpression()), !dbg !3409
  %idxprom = zext i32 %bf.clear to i64, !dbg !3413
  %arrayidx5 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3413
  %4 = load i8, i8* %arrayidx5, align 1, !dbg !3413
  %conv6 = zext i8 %4 to i32, !dbg !3413
  %sub = add nuw nsw i32 %conv6, 3, !dbg !3414
  %div = lshr i32 %sub, 2, !dbg !3415
  call void @llvm.dbg.value(metadata i32 %div, metadata !3380, metadata !DIExpression()), !dbg !3409
  %cmp = icmp ult i32 %sub, 8, !dbg !3416
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3418

if.end:                                           ; preds = %entry
  tail call void @start_sequence() #6, !dbg !3419
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3376, metadata !DIExpression()), !dbg !3409
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3420
  %bf.load8 = load i32, i32* %5, align 8, !dbg !3420
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !3420
  %cmp10 = icmp eq i32 %bf.clear9, 39, !dbg !3422
  br i1 %cmp10, label %land.lhs.true, label %if.end55, !dbg !3423

land.lhs.true:                                    ; preds = %if.end
  %arrayidx14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3424
  %rt_rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**, !dbg !3424
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx15, align 8, !dbg !3424
  %call = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %6) #7, !dbg !3425
  %tobool = icmp eq i8 %call, 0, !dbg !3425
  br i1 %tobool, label %if.end55, label %land.lhs.true17, !dbg !3426

land.lhs.true17:                                  ; preds = %land.lhs.true
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3427
  %rt_uint = bitcast %union.rtunion_def* %7 to i32*, !dbg !3427
  %8 = load i32, i32* %rt_uint, align 8, !dbg !3427
  %cmp21 = icmp eq i32 %8, 0, !dbg !3428
  br i1 %cmp21, label %lor.lhs.false, label %if.then40, !dbg !3429

lor.lhs.false:                                    ; preds = %land.lhs.true17
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !3430
  %10 = bitcast %union.rtunion_def* %arrayidx14 to i32**, !dbg !3431
  %11 = load i32*, i32** %10, align 8, !dbg !3431
  %bf.load31 = load i32, i32* %11, align 8, !dbg !3431
  %bf.lshr32 = lshr i32 %bf.load31, 16, !dbg !3431
  %bf.clear33 = and i32 %bf.lshr32, 255, !dbg !3431
  %idxprom34 = zext i32 %bf.clear33 to i64, !dbg !3431
  %arrayidx35 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom34, !dbg !3431
  %12 = load i8, i8* %arrayidx35, align 1, !dbg !3431
  %cmp38 = icmp eq i8 %9, %12, !dbg !3432
  br i1 %cmp38, label %if.end55, label %if.then40, !dbg !3433

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true17
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3376, metadata !DIExpression()), !dbg !3409
  %call41 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call41, metadata !3375, metadata !DIExpression()), !dbg !3409
  %bf.load42 = load i32, i32* %3, align 8, !dbg !3436
  %bf.clear43 = and i32 %bf.load42, 65535, !dbg !3436
  %cmp44 = icmp eq i32 %bf.clear43, 37, !dbg !3436
  br i1 %cmp44, label %if.then46, label %if.end55, !dbg !3438

if.then46:                                        ; preds = %if.then40
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3439
  %14 = bitcast %union.rtunion_def* %13 to i64*, !dbg !3439
  %15 = load i64, i64* %14, align 8, !dbg !3439
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call41, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3440
  %17 = bitcast %union.rtunion_def* %16 to i64*, !dbg !3441
  store i64 %15, i64* %17, align 8, !dbg !3441
  br label %if.end55, !dbg !3440

if.end55:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.then40, %if.then46, %if.end
  %real_dest.0 = phi %struct.rtx_def* [ null, %lor.lhs.false ], [ null, %land.lhs.true ], [ null, %if.end ], [ %2, %if.then46 ], [ %2, %if.then40 ], !dbg !3409
  %dest.0 = phi %struct.rtx_def* [ %2, %lor.lhs.false ], [ %2, %land.lhs.true ], [ %2, %if.end ], [ %call41, %if.then46 ], [ %call41, %if.then40 ], !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.0, metadata !3375, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %real_dest.0, metadata !3376, metadata !DIExpression()), !dbg !3409
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0, i64 0, i32 0, !dbg !3442
  %bf.load56 = load i32, i32* %18, align 8, !dbg !3442
  %bf.clear57 = and i32 %bf.load56, 65535, !dbg !3442
  %cmp58 = icmp eq i32 %bf.clear57, 39, !dbg !3443
  br i1 %cmp58, label %land.lhs.true60, label %if.end143, !dbg !3444

land.lhs.true60:                                  ; preds = %if.end55
  %arrayidx63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3445
  %rt_rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**, !dbg !3445
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx64, align 8, !dbg !3445
  %call65 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %19) #7, !dbg !3446
  %tobool67 = icmp eq i8 %call65, 0, !dbg !3446
  br i1 %tobool67, label %if.end143, label %land.lhs.true68, !dbg !3447

land.lhs.true68:                                  ; preds = %land.lhs.true60
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3448
  %rt_uint72 = bitcast %union.rtunion_def* %20 to i32*, !dbg !3448
  %21 = load i32, i32* %rt_uint72, align 8, !dbg !3448
  %cmp73 = icmp eq i32 %21, 0, !dbg !3449
  br i1 %cmp73, label %lor.lhs.false75, label %if.then93, !dbg !3450

lor.lhs.false75:                                  ; preds = %land.lhs.true68
  %22 = load i8, i8* %arrayidx5, align 1, !dbg !3451
  %23 = bitcast %union.rtunion_def* %arrayidx63 to i32**, !dbg !3452
  %24 = load i32*, i32** %23, align 8, !dbg !3452
  %bf.load84 = load i32, i32* %24, align 8, !dbg !3452
  %bf.lshr85 = lshr i32 %bf.load84, 16, !dbg !3452
  %bf.clear86 = and i32 %bf.lshr85, 255, !dbg !3452
  %idxprom87 = zext i32 %bf.clear86 to i64, !dbg !3452
  %arrayidx88 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom87, !dbg !3452
  %25 = load i8, i8* %arrayidx88, align 1, !dbg !3452
  %cmp91 = icmp eq i8 %22, %25, !dbg !3453
  br i1 %cmp91, label %if.end143, label %if.then93, !dbg !3454

if.then93:                                        ; preds = %lor.lhs.false75, %land.lhs.true68
  %call94 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call94, metadata !3382, metadata !DIExpression()), !dbg !3456
  %call95 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call94, %struct.rtx_def* %1) #6, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call95, metadata !3385, metadata !DIExpression()), !dbg !3456
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call95, i64 0, i32 0, !dbg !3458
  %bf.load96 = load i32, i32* %26, align 8, !dbg !3458
  %bf.clear97 = and i32 %bf.load96, 65535, !dbg !3458
  %cmp98 = icmp eq i32 %bf.clear97, 8, !dbg !3458
  br i1 %cmp98, label %cond.true, label %lor.lhs.false100, !dbg !3458

lor.lhs.false100:                                 ; preds = %if.then93
  %cmp103 = icmp eq i32 %bf.clear97, 7, !dbg !3458
  br i1 %cmp103, label %cond.true, label %lor.lhs.false105, !dbg !3458

lor.lhs.false105:                                 ; preds = %lor.lhs.false100
  %cmp108 = icmp eq i32 %bf.clear97, 9, !dbg !3458
  br i1 %cmp108, label %cond.true, label %lor.lhs.false110, !dbg !3458

lor.lhs.false110:                                 ; preds = %lor.lhs.false105
  %cmp113 = icmp eq i32 %bf.clear97, 10, !dbg !3458
  br i1 %cmp113, label %cond.true, label %cond.end134, !dbg !3458

cond.true:                                        ; preds = %lor.lhs.false110, %lor.lhs.false105, %lor.lhs.false100, %if.then93
  %u115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call95, i64 0, i32 1, !dbg !3458
  %27 = getelementptr inbounds %union.u, %union.u* %u115, i64 1, i32 0, i32 0, i64 0, !dbg !3458
  %28 = bitcast %union.rtunion_def* %27 to i32**, !dbg !3458
  %29 = load i32*, i32** %28, align 8, !dbg !3458
  %bf.load119 = load i32, i32* %29, align 8, !dbg !3458
  %bf.clear120 = and i32 %bf.load119, 65535, !dbg !3458
  %cmp121 = icmp eq i32 %bf.clear120, 23, !dbg !3458
  %30 = bitcast i32* %29 to %struct.rtx_def*, !dbg !3458
  br i1 %cmp121, label %cond.end134, label %cond.false, !dbg !3458

cond.false:                                       ; preds = %cond.true
  %call132 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %call95, %struct.rtx_def* %30) #6, !dbg !3458
  br label %cond.end134, !dbg !3458

cond.end134:                                      ; preds = %lor.lhs.false110, %cond.false, %cond.true
  %cond135 = phi %struct.rtx_def* [ %call132, %cond.false ], [ %30, %cond.true ], [ null, %lor.lhs.false110 ], !dbg !3458
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond135, metadata !3386, metadata !DIExpression()), !dbg !3456
  %cmp136 = icmp eq %struct.rtx_def* %cond135, null, !dbg !3459
  br i1 %cmp136, label %cond.true138, label %cond.end140, !dbg !3459

cond.true138:                                     ; preds = %cond.end134
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 680, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3459
  br label %cond.end140, !dbg !3459

cond.end140:                                      ; preds = %cond.end134, %cond.true138
  %call142 = tail call fastcc %struct.rtx_def* @resolve_simple_move(%struct.rtx_def* %cond135, %struct.rtx_def* %call95) #7, !dbg !3460
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call94, metadata !3374, metadata !DIExpression()), !dbg !3409
  br label %if.end143, !dbg !3461

if.end143:                                        ; preds = %lor.lhs.false75, %land.lhs.true60, %cond.end140, %if.end55
  %src.0 = phi %struct.rtx_def* [ %call94, %cond.end140 ], [ %1, %lor.lhs.false75 ], [ %1, %land.lhs.true60 ], [ %1, %if.end55 ], !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src.0, metadata !3374, metadata !DIExpression()), !dbg !3409
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3462
  %cmp148 = icmp eq %struct.rtx_def* %src.0, %31, !dbg !3464
  br i1 %cmp148, label %land.lhs.true150, label %if.end170, !dbg !3465

land.lhs.true150:                                 ; preds = %if.end143
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !3466
  %cmp155 = icmp eq %struct.rtx_def* %dest.0, %32, !dbg !3467
  br i1 %cmp155, label %land.lhs.true157, label %if.end170, !dbg !3468

land.lhs.true157:                                 ; preds = %land.lhs.true150
  %call158 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %src.0) #7, !dbg !3469
  %tobool159 = icmp eq i8 %call158, 0, !dbg !3469
  br i1 %tobool159, label %land.lhs.true160, label %if.end170, !dbg !3470

land.lhs.true160:                                 ; preds = %land.lhs.true157
  %call161 = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %src.0) #7, !dbg !3471
  %tobool162 = icmp eq i8 %call161, 0, !dbg !3471
  br i1 %tobool162, label %land.lhs.true163, label %if.end170, !dbg !3472

land.lhs.true163:                                 ; preds = %land.lhs.true160
  %call164 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %dest.0) #7, !dbg !3473
  %tobool165 = icmp eq i8 %call164, 0, !dbg !3473
  br i1 %tobool165, label %land.lhs.true166, label %if.end170, !dbg !3474

land.lhs.true166:                                 ; preds = %land.lhs.true163
  %call167 = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %dest.0) #7, !dbg !3475
  %tobool168 = icmp eq i8 %call167, 0, !dbg !3475
  br i1 %tobool168, label %if.then169, label %if.end170, !dbg !3476

if.then169:                                       ; preds = %land.lhs.true166
  tail call void @end_sequence() #6, !dbg !3477
  br label %cleanup, !dbg !3479

if.end170:                                        ; preds = %land.lhs.true166, %land.lhs.true163, %land.lhs.true160, %land.lhs.true157, %land.lhs.true150, %if.end143
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src.0, i64 0, i32 0, !dbg !3480
  %bf.load171 = load i32, i32* %33, align 8, !dbg !3480
  %bf.clear172 = and i32 %bf.load171, 65535, !dbg !3480
  %cmp173 = icmp eq i32 %bf.clear172, 43, !dbg !3480
  br i1 %cmp173, label %if.then180, label %lor.lhs.false175, !dbg !3481

lor.lhs.false175:                                 ; preds = %if.end170
  %bf.load176 = load i32, i32* %18, align 8, !dbg !3482
  %bf.clear177 = and i32 %bf.load176, 65535, !dbg !3482
  %cmp178 = icmp eq i32 %bf.clear177, 43, !dbg !3482
  br i1 %cmp178, label %if.then180, label %if.end209, !dbg !3483

if.then180:                                       ; preds = %lor.lhs.false175, %if.end170
  br i1 %cmp173, label %if.then185, label %if.end191, !dbg !3484

if.then185:                                       ; preds = %if.then180
  %arrayidx188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %src.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3485
  %rt_rtx189 = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtx_def**, !dbg !3485
  %call190 = tail call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx189, i32 (%struct.rtx_def**, i8*)* nonnull @resolve_subreg_use, i8* null) #6, !dbg !3487
  br label %if.end191, !dbg !3487

if.end191:                                        ; preds = %if.then185, %if.then180
  %bf.load192 = load i32, i32* %18, align 8, !dbg !3488
  %bf.clear193 = and i32 %bf.load192, 65535, !dbg !3488
  %cmp194 = icmp eq i32 %bf.clear193, 43, !dbg !3488
  br i1 %cmp194, label %if.then196, label %if.end202, !dbg !3490

if.then196:                                       ; preds = %if.end191
  %arrayidx199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3491
  %rt_rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**, !dbg !3491
  %call201 = tail call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx200, i32 (%struct.rtx_def**, i8*)* nonnull @resolve_subreg_use, i8* null) #6, !dbg !3492
  br label %if.end202, !dbg !3492

if.end202:                                        ; preds = %if.then196, %if.end191
  %call203 = tail call i32 @apply_change_group() #6, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %call203, metadata !3387, metadata !DIExpression()), !dbg !3494
  %tobool204 = icmp eq i32 %call203, 0, !dbg !3495
  br i1 %tobool204, label %cond.true205, label %if.end209, !dbg !3495

cond.true205:                                     ; preds = %if.end202
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 714, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3495
  br label %if.end209, !dbg !3495

if.end209:                                        ; preds = %if.end202, %cond.true205, %lor.lhs.false175
  %call210 = tail call fastcc zeroext i8 @can_decompose_p(%struct.rtx_def* %src.0) #7, !dbg !3496
  %tobool211 = icmp eq i8 %call210, 0, !dbg !3496
  br i1 %tobool211, label %if.then220, label %lor.lhs.false212, !dbg !3497

lor.lhs.false212:                                 ; preds = %if.end209
  %call213 = tail call i32 @side_effects_p(%struct.rtx_def* %src.0) #6, !dbg !3498
  %tobool214 = icmp eq i32 %call213, 0, !dbg !3498
  br i1 %tobool214, label %lor.lhs.false215, label %if.then220, !dbg !3499

lor.lhs.false215:                                 ; preds = %lor.lhs.false212
  %bf.load216 = load i32, i32* %33, align 8, !dbg !3500
  %bf.clear217 = and i32 %bf.load216, 65535, !dbg !3500
  %cmp218 = icmp eq i32 %bf.clear217, 17, !dbg !3501
  br i1 %cmp218, label %if.then220, label %if.end224, !dbg !3502

if.then220:                                       ; preds = %lor.lhs.false212, %if.end209, %lor.lhs.false215
  %call222 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call222, metadata !3390, metadata !DIExpression()), !dbg !3504
  %call223 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call222, %struct.rtx_def* %src.0) #6, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call222, metadata !3374, metadata !DIExpression()), !dbg !3409
  br label %if.end224, !dbg !3506

if.end224:                                        ; preds = %if.then220, %lor.lhs.false215
  %src.1 = phi %struct.rtx_def* [ %call222, %if.then220 ], [ %src.0, %lor.lhs.false215 ], !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src.1, metadata !3374, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3379, metadata !DIExpression()), !dbg !3409
  %call225 = tail call i32 @push_operand(%struct.rtx_def* %dest.0, i32 %bf.clear) #6, !dbg !3507
  %conv226 = trunc i32 %call225 to i8, !dbg !3507
  call void @llvm.dbg.value(metadata i8 %conv226, metadata !3381, metadata !DIExpression()), !dbg !3409
  %call227 = tail call fastcc zeroext i8 @can_decompose_p(%struct.rtx_def* %dest.0) #7, !dbg !3508
  %tobool228 = icmp eq i8 %call227, 0, !dbg !3508
  br i1 %tobool228, label %if.then252, label %lor.lhs.false229, !dbg !3510

lor.lhs.false229:                                 ; preds = %if.end224
  %call230 = tail call i32 @side_effects_p(%struct.rtx_def* %dest.0) #6, !dbg !3511
  %tobool231 = icmp eq i32 %call230, 0, !dbg !3511
  %tobool233 = icmp ne i8 %conv226, 0, !dbg !3512
  %or.cond = or i1 %tobool231, %tobool233, !dbg !3513
  br i1 %or.cond, label %lor.lhs.false234, label %if.then252, !dbg !3513

lor.lhs.false234:                                 ; preds = %lor.lhs.false229
  %arrayidx236 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3514
  %34 = load i8, i8* %arrayidx236, align 1, !dbg !3514
  %cmp238 = icmp eq i8 %34, 2, !dbg !3514
  br i1 %cmp238, label %if.end296, label %lor.lhs.false240, !dbg !3514

lor.lhs.false240:                                 ; preds = %lor.lhs.false234
  %cmp244 = icmp eq i8 %34, 3, !dbg !3514
  br i1 %cmp244, label %if.end296, label %land.lhs.true246, !dbg !3515

land.lhs.true246:                                 ; preds = %lor.lhs.false240
  %call247 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %dest.0) #7, !dbg !3516
  %tobool248 = icmp eq i8 %call247, 0, !dbg !3516
  br i1 %tobool248, label %land.lhs.true249, label %if.end296, !dbg !3517

land.lhs.true249:                                 ; preds = %land.lhs.true246
  %call250 = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %dest.0) #7, !dbg !3518
  %tobool251 = icmp eq i8 %call250, 0, !dbg !3518
  br i1 %tobool251, label %if.then252, label %if.end296, !dbg !3519

if.then252:                                       ; preds = %land.lhs.true249, %if.end224, %lor.lhs.false229
  %cmp253 = icmp eq %struct.rtx_def* %real_dest.0, null, !dbg !3520
  %spec.select = select i1 %cmp253, %struct.rtx_def* %dest.0, %struct.rtx_def* %real_dest.0, !dbg !3523
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select, metadata !3376, metadata !DIExpression()), !dbg !3409
  %arrayidx258 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !3524
  %35 = load i8, i8* %arrayidx258, align 1, !dbg !3524
  %cmp260 = icmp eq i8 %35, 2, !dbg !3524
  br i1 %cmp260, label %if.end280, label %lor.lhs.false262, !dbg !3524

lor.lhs.false262:                                 ; preds = %if.then252
  %cmp266 = icmp eq i8 %35, 3, !dbg !3524
  br i1 %cmp266, label %if.end280, label %if.then268, !dbg !3526

if.then268:                                       ; preds = %lor.lhs.false262
  %36 = load i8, i8* %arrayidx5, align 1, !dbg !3527
  %conv272 = zext i8 %36 to i32, !dbg !3527
  %mul = shl nuw nsw i32 %conv272, 3, !dbg !3529
  %call273 = tail call i32 @mode_for_size(i32 %mul, i32 2, i32 0) #6, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %call273, metadata !3379, metadata !DIExpression()), !dbg !3409
  %cmp274 = icmp eq i32 %call273, 1, !dbg !3531
  br i1 %cmp274, label %cond.true276, label %if.end280, !dbg !3531

cond.true276:                                     ; preds = %if.then268
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 752, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3531
  br label %if.end280, !dbg !3531

if.end280:                                        ; preds = %if.then268, %cond.true276, %lor.lhs.false262, %if.then252
  %dest_mode.0 = phi i32 [ %bf.clear, %if.then252 ], [ %bf.clear, %lor.lhs.false262 ], [ %call273, %if.then268 ], [ 1, %cond.true276 ], !dbg !3409
  call void @llvm.dbg.value(metadata i32 %dest_mode.0, metadata !3379, metadata !DIExpression()), !dbg !3409
  %call281 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %dest_mode.0) #6, !dbg !3532
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call281, metadata !3375, metadata !DIExpression()), !dbg !3409
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %spec.select, i64 0, i32 0, !dbg !3533
  %bf.load282 = load i32, i32* %37, align 8, !dbg !3533
  %bf.clear283 = and i32 %bf.load282, 65535, !dbg !3533
  %cmp284 = icmp eq i32 %bf.clear283, 37, !dbg !3533
  br i1 %cmp284, label %if.then286, label %if.end296, !dbg !3535

if.then286:                                       ; preds = %if.end280
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %spec.select, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3536
  %39 = bitcast %union.rtunion_def* %38 to i64*, !dbg !3536
  %40 = load i64, i64* %39, align 8, !dbg !3536
  %41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call281, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3537
  %42 = bitcast %union.rtunion_def* %41 to i64*, !dbg !3538
  store i64 %40, i64* %42, align 8, !dbg !3538
  br label %if.end296, !dbg !3537

if.end296:                                        ; preds = %land.lhs.true249, %land.lhs.true246, %if.end280, %if.then286, %lor.lhs.false240, %lor.lhs.false234
  %dest_mode.1 = phi i32 [ %bf.clear, %lor.lhs.false234 ], [ %bf.clear, %lor.lhs.false240 ], [ %bf.clear, %land.lhs.true246 ], [ %bf.clear, %land.lhs.true249 ], [ %dest_mode.0, %if.then286 ], [ %dest_mode.0, %if.end280 ], !dbg !3539
  %real_dest.2 = phi %struct.rtx_def* [ %real_dest.0, %lor.lhs.false234 ], [ %real_dest.0, %lor.lhs.false240 ], [ %real_dest.0, %land.lhs.true246 ], [ %real_dest.0, %land.lhs.true249 ], [ %spec.select, %if.then286 ], [ %spec.select, %if.end280 ], !dbg !3409
  %dest.1 = phi %struct.rtx_def* [ %dest.0, %lor.lhs.false234 ], [ %dest.0, %lor.lhs.false240 ], [ %dest.0, %land.lhs.true246 ], [ %dest.0, %land.lhs.true249 ], [ %call281, %if.then286 ], [ %call281, %if.end280 ], !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.1, metadata !3375, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %real_dest.2, metadata !3376, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %dest_mode.1, metadata !3379, metadata !DIExpression()), !dbg !3409
  %tobool297 = icmp eq i8 %conv226, 0, !dbg !3540
  br i1 %tobool297, label %if.else, label %if.then298, !dbg !3541

if.then298:                                       ; preds = %if.end296
  %43 = load i8, i8* %arrayidx5, align 1, !dbg !3542
  %44 = and i8 %43, 3, !dbg !3542
  %cmp303 = icmp eq i8 %44, 0, !dbg !3542
  br i1 %cmp303, label %cond.end307, label %cond.true305, !dbg !3542

cond.true305:                                     ; preds = %if.then298
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 763, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3542
  br label %cond.end307, !dbg !3542

cond.end307:                                      ; preds = %if.then298, %cond.true305
  %arrayidx311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3543
  %45 = bitcast %union.rtunion_def* %arrayidx311 to i32**, !dbg !3543
  %46 = load i32*, i32** %45, align 8, !dbg !3543
  %bf.load313 = load i32, i32* %46, align 8, !dbg !3543
  %bf.clear314 = and i32 %bf.load313, 65535, !dbg !3543
  %cmp315 = icmp eq i32 %bf.clear314, 78, !dbg !3543
  br i1 %cmp315, label %cond.true317, label %cond.end319, !dbg !3543

cond.true317:                                     ; preds = %cond.end307
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 764, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3543
  %.pre = load i32*, i32** %45, align 8, !dbg !3544
  %bf.load325.pre = load i32, i32* %.pre, align 8, !dbg !3544
  br label %cond.end319, !dbg !3543

cond.end319:                                      ; preds = %cond.end307, %cond.true317
  %bf.load325 = phi i32 [ %bf.load313, %cond.end307 ], [ %bf.load325.pre, %cond.true317 ], !dbg !3544
  %bf.clear326 = and i32 %bf.load325, 65535, !dbg !3544
  %cmp327 = icmp eq i32 %bf.clear326, 79, !dbg !3544
  br i1 %cmp327, label %cond.true329, label %cond.end331, !dbg !3544

cond.true329:                                     ; preds = %cond.end319
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 765, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3544
  br label %cond.end331, !dbg !3544

cond.end331:                                      ; preds = %cond.end319, %cond.true329
  call void @llvm.dbg.value(metadata i32 %div, metadata !3396, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3545
  call void @llvm.dbg.value(metadata i32 -1, metadata !3397, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3545
  %rt_rtx339 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**, !dbg !3546
  br label %for.cond, !dbg !3547

for.cond:                                         ; preds = %for.body, %cond.end331
  %i.0 = phi i32 [ 0, %cond.end331 ], [ %inc, %for.body ], !dbg !3548
  %j.0.in = phi i32 [ %div, %cond.end331 ], [ %j.0, %for.body ]
  %j.0 = add nsw i32 %j.0.in, -1, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3396, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3393, metadata !DIExpression()), !dbg !3545
  %exitcond3 = icmp eq i32 %i.0, %div, !dbg !3549
  br i1 %exitcond3, label %if.end372.loopexit1, label %for.body, !dbg !3550

for.body:                                         ; preds = %for.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx339, align 8, !dbg !3551
  %call340 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %47) #6, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call340, metadata !3398, metadata !DIExpression()), !dbg !3546
  %48 = load i32, i32* @word_mode, align 4, !dbg !3553
  %mul341 = shl i32 %j.0, 2, !dbg !3553
  %conv342 = zext i32 %mul341 to i64, !dbg !3553
  %call343 = tail call %struct.rtx_def* @adjust_automodify_address_1(%struct.rtx_def* %dest.1, i32 %48, %struct.rtx_def* %call340, i64 %conv342, i32 0) #6, !dbg !3553
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call343, metadata !3398, metadata !DIExpression()), !dbg !3546
  %49 = load i32, i32* @word_mode, align 4, !dbg !3554
  %call345 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %49, %struct.rtx_def* %src.1, i32 %bf.clear, i32 %mul341) #7, !dbg !3555
  %call346 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call343, %struct.rtx_def* %call345) #6, !dbg !3556
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3557
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3393, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3396, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3545
  br label %for.cond, !dbg !3558, !llvm.loop !3559

if.else:                                          ; preds = %if.end296
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.1, i64 0, i32 0, !dbg !3561
  %bf.load349 = load i32, i32* %50, align 8, !dbg !3561
  %bf.clear350 = and i32 %bf.load349, 65535, !dbg !3561
  %cmp351 = icmp eq i32 %bf.clear350, 37, !dbg !3561
  br i1 %cmp351, label %land.lhs.true353, label %if.end359, !dbg !3563

land.lhs.true353:                                 ; preds = %if.else
  %call354 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest.1) #7, !dbg !3564
  %cmp355 = icmp ult i32 %call354, 53, !dbg !3564
  br i1 %cmp355, label %if.end359, label %if.then357, !dbg !3565

if.then357:                                       ; preds = %land.lhs.true353
  %call358 = tail call %struct.rtx_def* @emit_clobber(%struct.rtx_def* %dest.1) #6, !dbg !3566
  br label %if.end359, !dbg !3566

if.end359:                                        ; preds = %if.then357, %land.lhs.true353, %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !3402, metadata !DIExpression()), !dbg !3567
  br label %for.cond360, !dbg !3568

for.cond360:                                      ; preds = %for.body363, %if.end359
  %i348.0 = phi i32 [ 0, %if.end359 ], [ %inc370, %for.body363 ], !dbg !3570
  call void @llvm.dbg.value(metadata i32 %i348.0, metadata !3402, metadata !DIExpression()), !dbg !3567
  %exitcond = icmp eq i32 %i348.0, %div, !dbg !3571
  br i1 %exitcond, label %if.end372.loopexit, label %for.body363, !dbg !3573

for.body363:                                      ; preds = %for.cond360
  %51 = load i32, i32* @word_mode, align 4, !dbg !3574
  %mul364 = shl i32 %i348.0, 2, !dbg !3575
  %call365 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %51, %struct.rtx_def* %dest.1, i32 %dest_mode.1, i32 %mul364) #7, !dbg !3576
  %52 = load i32, i32* @word_mode, align 4, !dbg !3577
  %call367 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %52, %struct.rtx_def* %src.1, i32 %bf.clear, i32 %mul364) #7, !dbg !3578
  %call368 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call365, %struct.rtx_def* %call367) #6, !dbg !3579
  %inc370 = add nuw nsw i32 %i348.0, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %inc370, metadata !3402, metadata !DIExpression()), !dbg !3567
  br label %for.cond360, !dbg !3581, !llvm.loop !3582

if.end372.loopexit:                               ; preds = %for.cond360
  br label %if.end372, !dbg !3584

if.end372.loopexit1:                              ; preds = %for.cond
  br label %if.end372, !dbg !3584

if.end372:                                        ; preds = %if.end372.loopexit1, %if.end372.loopexit
  %cmp373 = icmp eq %struct.rtx_def* %real_dest.2, null, !dbg !3584
  br i1 %cmp373, label %if.end439, label %if.then375, !dbg !3585

if.then375:                                       ; preds = %if.end372
  %cmp378 = icmp eq i32 %dest_mode.1, %bf.clear, !dbg !3586
  br i1 %cmp378, label %if.end386, label %if.else381, !dbg !3588

if.else381:                                       ; preds = %if.then375
  %53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.1, i64 0, i32 0, !dbg !3589
  %bf.load382 = load i32, i32* %53, align 8, !dbg !3589
  %bf.lshr383 = lshr i32 %bf.load382, 16, !dbg !3589
  %bf.clear384 = and i32 %bf.lshr383, 255, !dbg !3589
  %call385 = tail call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear, %struct.rtx_def* %dest.1, i32 %bf.clear384, i32 0) #6, !dbg !3590
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call385, metadata !3404, metadata !DIExpression()), !dbg !3591
  br label %if.end386

if.end386:                                        ; preds = %if.then375, %if.else381
  %mdest.0 = phi %struct.rtx_def* [ %call385, %if.else381 ], [ %dest.1, %if.then375 ], !dbg !3592
  call void @llvm.dbg.value(metadata %struct.rtx_def* %mdest.0, metadata !3404, metadata !DIExpression()), !dbg !3591
  %call387 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* nonnull %real_dest.2, %struct.rtx_def* %mdest.0) #6, !dbg !3593
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call387, metadata !3407, metadata !DIExpression()), !dbg !3591
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call387, i64 0, i32 0, !dbg !3594
  %bf.load388 = load i32, i32* %54, align 8, !dbg !3594
  %bf.clear389 = and i32 %bf.load388, 65535, !dbg !3594
  %cmp390 = icmp eq i32 %bf.clear389, 8, !dbg !3594
  br i1 %cmp390, label %cond.true407, label %lor.lhs.false392, !dbg !3594

lor.lhs.false392:                                 ; preds = %if.end386
  %cmp395 = icmp eq i32 %bf.clear389, 7, !dbg !3594
  br i1 %cmp395, label %cond.true407, label %lor.lhs.false397, !dbg !3594

lor.lhs.false397:                                 ; preds = %lor.lhs.false392
  %cmp400 = icmp eq i32 %bf.clear389, 9, !dbg !3594
  br i1 %cmp400, label %cond.true407, label %lor.lhs.false402, !dbg !3594

lor.lhs.false402:                                 ; preds = %lor.lhs.false397
  %cmp405 = icmp eq i32 %bf.clear389, 10, !dbg !3594
  br i1 %cmp405, label %cond.true407, label %cond.end430, !dbg !3594

cond.true407:                                     ; preds = %lor.lhs.false402, %lor.lhs.false397, %lor.lhs.false392, %if.end386
  %u408 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call387, i64 0, i32 1, !dbg !3594
  %55 = getelementptr inbounds %union.u, %union.u* %u408, i64 1, i32 0, i32 0, i64 0, !dbg !3594
  %56 = bitcast %union.rtunion_def* %55 to i32**, !dbg !3594
  %57 = load i32*, i32** %56, align 8, !dbg !3594
  %bf.load412 = load i32, i32* %57, align 8, !dbg !3594
  %bf.clear413 = and i32 %bf.load412, 65535, !dbg !3594
  %cmp414 = icmp eq i32 %bf.clear413, 23, !dbg !3594
  %58 = bitcast i32* %57 to %struct.rtx_def*, !dbg !3594
  br i1 %cmp414, label %cond.end430, label %cond.false421, !dbg !3594

cond.false421:                                    ; preds = %cond.true407
  %call426 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %call387, %struct.rtx_def* %58) #6, !dbg !3594
  br label %cond.end430, !dbg !3594

cond.end430:                                      ; preds = %lor.lhs.false402, %cond.false421, %cond.true407
  %cond431 = phi %struct.rtx_def* [ %call426, %cond.false421 ], [ %58, %cond.true407 ], [ null, %lor.lhs.false402 ], !dbg !3594
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond431, metadata !3408, metadata !DIExpression()), !dbg !3591
  %cmp432 = icmp eq %struct.rtx_def* %cond431, null, !dbg !3595
  br i1 %cmp432, label %cond.true434, label %cond.end436, !dbg !3595

cond.true434:                                     ; preds = %cond.end430
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 818, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3595
  br label %cond.end436, !dbg !3595

cond.end436:                                      ; preds = %cond.end430, %cond.true434
  %call438 = tail call fastcc %struct.rtx_def* @resolve_simple_move(%struct.rtx_def* %cond431, %struct.rtx_def* %call387) #7, !dbg !3596
  br label %if.end439, !dbg !3597

if.end439:                                        ; preds = %if.end372, %cond.end436
  %call440 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3598
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call440, metadata !3377, metadata !DIExpression()), !dbg !3409
  tail call void @end_sequence() #6, !dbg !3599
  tail call void @copy_reg_eh_region_note_forward(%struct.rtx_def* %insn, %struct.rtx_def* %call440, %struct.rtx_def* null) #6, !dbg !3600
  %call441 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call440, %struct.rtx_def* %insn) #6, !dbg !3601
  %call442 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #6, !dbg !3602
  br label %cleanup, !dbg !3603

cleanup:                                          ; preds = %entry, %if.end439, %if.then169
  %retval.0 = phi %struct.rtx_def* [ %call440, %if.end439 ], [ %insn, %if.then169 ], [ %insn, %entry ], !dbg !3409
  ret %struct.rtx_def* %retval.0, !dbg !3604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3605 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3609, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3610, metadata !DIExpression()), !dbg !3614
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3615
  %0 = load i8*, i8** %popcount, align 8, !dbg !3615
  %tobool = icmp eq i8* %0, null, !dbg !3616
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3617

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3618
  %.pre2 = zext i32 %.pre to i64, !dbg !3619
  %.pre3 = shl i64 1, %.pre2, !dbg !3619
  %.pre4 = lshr i32 %bitno, 6, !dbg !3620
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3621
  br label %if.end7, !dbg !3617

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3622
  %idxprom = zext i32 %div to i64, !dbg !3622
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3622
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3622
  %rem = and i32 %bitno, 63, !dbg !3622
  %sh_prom = zext i32 %rem to i64, !dbg !3622
  %2 = shl i64 1, %sh_prom, !dbg !3623
  %3 = and i64 %1, %2, !dbg !3623
  %tobool1 = icmp eq i64 %3, 0, !dbg !3623
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3625

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3626
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3627
  %inc = add i8 %4, 1, !dbg !3627
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3627
  br label %if.end7, !dbg !3626

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3621
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3619
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3621
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3628
  %or = or i64 %5, %shl.pre-phi, !dbg !3628
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3628
  ret void, !dbg !3629
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @resolve_shift_zext(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3630 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3632, metadata !DIExpression()), !dbg !3651
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3652
  %bf.load = load i32, i32* %0, align 8, !dbg !3652
  %bf.clear = and i32 %bf.load, 65535, !dbg !3652
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3652
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3652

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3652
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !3652

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3652
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !3652

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3652
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !3652

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3652
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3652
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3652
  %3 = load i32*, i32** %2, align 8, !dbg !3652
  %bf.load12 = load i32, i32* %3, align 8, !dbg !3652
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3652
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !3652
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !3652
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !3652

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !3652
  br label %cond.end25, !dbg !3652

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !3652
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !3633, metadata !DIExpression()), !dbg !3651
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !3653
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3655

if.end:                                           ; preds = %cond.end25
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3656
  %rt_rtx30 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3656
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3634, metadata !DIExpression()), !dbg !3651
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3657
  %bf.load31 = load i32, i32* %7, align 8, !dbg !3657
  %bf.clear32 = and i32 %bf.load31, 65535, !dbg !3657
  %cmp33 = icmp eq i32 %bf.clear32, 65, !dbg !3659
  br i1 %cmp33, label %if.end42, label %land.lhs.true, !dbg !3660

land.lhs.true:                                    ; preds = %if.end
  %cmp36 = icmp eq i32 %bf.clear32, 68, !dbg !3661
  br i1 %cmp36, label %if.end42, label %land.lhs.true37, !dbg !3662

land.lhs.true37:                                  ; preds = %land.lhs.true
  %cmp40 = icmp eq i32 %bf.clear32, 99, !dbg !3663
  br i1 %cmp40, label %if.end42, label %cleanup, !dbg !3664

if.end42:                                         ; preds = %land.lhs.true37, %land.lhs.true, %if.end
  %arrayidx45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3665
  %rt_rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**, !dbg !3665
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx46, align 8, !dbg !3665
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3635, metadata !DIExpression()), !dbg !3651
  %arrayidx49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3666
  %rt_rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**, !dbg !3666
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50, align 8, !dbg !3666
  %call51 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %9) #7, !dbg !3668
  %tobool52 = icmp eq i8 %call51, 0, !dbg !3668
  br i1 %tobool52, label %land.lhs.true53, label %if.end57, !dbg !3669

land.lhs.true53:                                  ; preds = %if.end42
  %call54 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %8) #7, !dbg !3670
  %tobool55 = icmp eq i8 %call54, 0, !dbg !3670
  br i1 %tobool55, label %cleanup, label %if.end57, !dbg !3671

if.end57:                                         ; preds = %land.lhs.true53, %if.end42
  %bf.load58 = load i32, i32* %7, align 8, !dbg !3672
  %bf.clear59 = and i32 %bf.load58, 65535, !dbg !3672
  %cmp60 = icmp eq i32 %bf.clear59, 68, !dbg !3673
  %cond61 = zext i1 %cmp60 to i32, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %cond61, metadata !3640, metadata !DIExpression()), !dbg !3651
  %cmp64 = icmp ne i32 %bf.clear59, 99, !dbg !3674
  %narrow = xor i1 %cmp60, %cmp64, !dbg !3676
  %dest_reg_num.0 = zext i1 %narrow to i32, !dbg !3676
  call void @llvm.dbg.value(metadata i32 %dest_reg_num.0, metadata !3641, metadata !DIExpression()), !dbg !3651
  %mul = shl nuw nsw i32 %dest_reg_num.0, 2, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3642, metadata !DIExpression()), !dbg !3651
  %notlhs = xor i1 %cmp64, true, !dbg !3678
  %not.narrow = or i1 %cmp60, %notlhs, !dbg !3678
  %sub67 = zext i1 %not.narrow to i32, !dbg !3678
  %mul68 = shl nuw nsw i32 %sub67, 2, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %mul68, metadata !3643, metadata !DIExpression()), !dbg !3651
  %mul69 = shl nuw nsw i32 %cond61, 2, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %mul69, metadata !3644, metadata !DIExpression()), !dbg !3651
  tail call void @start_sequence() #6, !dbg !3681
  %10 = load i32, i32* @word_mode, align 4, !dbg !3682
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50, align 8, !dbg !3683
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 0, !dbg !3684
  %bf.load78 = load i32, i32* %.cast, align 8, !dbg !3684
  %bf.lshr = lshr i32 %bf.load78, 16, !dbg !3684
  %bf.clear79 = and i32 %bf.lshr, 255, !dbg !3684
  %call80 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %10, %struct.rtx_def* %11, i32 %bf.clear79, i32 %mul) #7, !dbg !3685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call80, metadata !3638, metadata !DIExpression()), !dbg !3651
  %12 = load i32, i32* @word_mode, align 4, !dbg !3686
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx50, align 8, !dbg !3687
  %.cast1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !3688
  %bf.load89 = load i32, i32* %.cast1, align 8, !dbg !3688
  %bf.lshr90 = lshr i32 %bf.load89, 16, !dbg !3688
  %bf.clear91 = and i32 %bf.lshr90, 255, !dbg !3688
  %call92 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %12, %struct.rtx_def* %13, i32 %bf.clear91, i32 %mul68) #7, !dbg !3689
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call92, metadata !3639, metadata !DIExpression()), !dbg !3651
  %14 = load i32, i32* @word_mode, align 4, !dbg !3690
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !3691
  %bf.load93 = load i32, i32* %15, align 8, !dbg !3691
  %bf.lshr94 = lshr i32 %bf.load93, 16, !dbg !3691
  %bf.clear95 = and i32 %bf.lshr94, 255, !dbg !3691
  %call96 = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %14, %struct.rtx_def* %8, i32 %bf.clear95, i32 %mul69) #7, !dbg !3692
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call96, metadata !3637, metadata !DIExpression()), !dbg !3651
  %bf.load97 = load i32, i32* %7, align 8, !dbg !3693
  %bf.clear98 = and i32 %bf.load97, 65535, !dbg !3693
  %cmp99 = icmp eq i32 %bf.clear98, 99, !dbg !3694
  br i1 %cmp99, label %if.end120, label %if.then100, !dbg !3695

if.then100:                                       ; preds = %if.end57
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3696
  %rt_rtx104 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !3696
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx104, align 8, !dbg !3696
  %u105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, !dbg !3696
  %arrayidx106 = bitcast %union.u* %u105 to i64*, !dbg !3696
  %18 = load i64, i64* %arrayidx106, align 8, !dbg !3696
  %conv = trunc i64 %18 to i32, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3645, metadata !DIExpression()), !dbg !3697
  %cmp107 = icmp sgt i32 %conv, 32, !dbg !3698
  br i1 %cmp107, label %if.then109, label %if.end120, !dbg !3700

if.then109:                                       ; preds = %if.then100
  %cmp112 = icmp eq i32 %bf.clear98, 65, !dbg !3701
  %cond114 = select i1 %cmp112, i32 83, i32 84, !dbg !3702
  %19 = load i32, i32* @word_mode, align 4, !dbg !3703
  %sub115 = shl i64 %18, 32, !dbg !3704
  %sext = add i64 %sub115, -137438953472, !dbg !3704
  %conv116 = ashr exact i64 %sext, 32, !dbg !3704
  %call117 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv116) #6, !dbg !3705
  %call118 = tail call %struct.rtx_def* @expand_shift(i32 %cond114, i32 %19, %struct.rtx_def* %call96, %union.tree_node* %call117, %struct.rtx_def* %call80, i32 1) #6, !dbg !3706
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call118, metadata !3637, metadata !DIExpression()), !dbg !3651
  br label %if.end120, !dbg !3707

if.end120:                                        ; preds = %if.end57, %if.then100, %if.then109
  %src_reg.1 = phi %struct.rtx_def* [ %call96, %if.end57 ], [ %call118, %if.then109 ], [ %call96, %if.then100 ], !dbg !3651
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src_reg.1, metadata !3637, metadata !DIExpression()), !dbg !3651
  %cmp121 = icmp eq %struct.rtx_def* %call80, %src_reg.1, !dbg !3708
  br i1 %cmp121, label %if.end125, label %if.then123, !dbg !3710

if.then123:                                       ; preds = %if.end120
  %call124 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call80, %struct.rtx_def* %src_reg.1) #6, !dbg !3711
  br label %if.end125, !dbg !3711

if.end125:                                        ; preds = %if.end120, %if.then123
  %20 = load i32, i32* @word_mode, align 4, !dbg !3712
  %idxprom = sext i32 %20 to i64, !dbg !3712
  %arrayidx126 = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 %idxprom, !dbg !3712
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx126, align 8, !dbg !3712
  %call127 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call92, %struct.rtx_def* %21) #6, !dbg !3713
  %call128 = tail call %struct.rtx_def* @get_insns() #6, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call128, metadata !3636, metadata !DIExpression()), !dbg !3651
  tail call void @end_sequence() #6, !dbg !3715
  %call129 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call128, %struct.rtx_def* %insn) #6, !dbg !3716
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3717
  %tobool130 = icmp eq %struct._IO_FILE* %22, null, !dbg !3717
  br i1 %tobool130, label %if.end148, label %if.then131, !dbg !3718

if.then131:                                       ; preds = %if.end125
  %arrayidx134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3719
  %rt_int = bitcast %union.rtunion_def* %arrayidx134 to i32*, !dbg !3719
  %23 = load i32, i32* %rt_int, align 8, !dbg !3719
  %call135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %23) #6, !dbg !3720
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call128, metadata !3648, metadata !DIExpression()), !dbg !3721
  br label %for.cond, !dbg !3722

for.cond:                                         ; preds = %for.body, %if.then131
  %in.0 = phi %struct.rtx_def* [ %call128, %if.then131 ], [ %27, %for.body ], !dbg !3724
  call void @llvm.dbg.value(metadata %struct.rtx_def* %in.0, metadata !3648, metadata !DIExpression()), !dbg !3721
  %cmp136 = icmp eq %struct.rtx_def* %in.0, %insn, !dbg !3725
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3721
  br i1 %cmp136, label %for.end, label %for.body, !dbg !3727

for.body:                                         ; preds = %for.cond
  %arrayidx140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %in.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3728
  %rt_int141 = bitcast %union.rtunion_def* %arrayidx140 to i32*, !dbg !3728
  %25 = load i32, i32* %rt_int141, align 8, !dbg !3728
  %call142 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %25) #6, !dbg !3729
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %in.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3730
  %rt_rtx146 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !3730
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx146, align 8, !dbg !3730
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !3648, metadata !DIExpression()), !dbg !3721
  br label %for.cond, !dbg !3731, !llvm.loop !3732

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct._IO_FILE* [ %24, %for.cond ], !dbg !3721
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3734
  br label %if.end148, !dbg !3735

if.end148:                                        ; preds = %if.end125, %for.end
  %call149 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #6, !dbg !3736
  br label %cleanup, !dbg !3737

cleanup:                                          ; preds = %land.lhs.true37, %land.lhs.true53, %cond.end25, %if.end148
  %retval.0 = phi %struct.rtx_def* [ %call128, %if.end148 ], [ null, %cond.end25 ], [ null, %land.lhs.true37 ], [ null, %land.lhs.true53 ], !dbg !3651
  ret %struct.rtx_def* %retval.0, !dbg !3738
}

; Function Attrs: nounwind uwtable
define internal i32 @resolve_subreg_use(%struct.rtx_def** %px, i8* %data) #4 !dbg !3739 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !3741, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8* %data, metadata !3742, metadata !DIExpression()), !dbg !3745
  %0 = bitcast i8* %data to %struct.rtx_def*, !dbg !3746
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3743, metadata !DIExpression()), !dbg !3745
  %1 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !3747
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3744, metadata !DIExpression()), !dbg !3745
  %cmp = icmp eq %struct.rtx_def* %1, null, !dbg !3748
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3750

if.end:                                           ; preds = %entry
  %call = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* nonnull %1) #7, !dbg !3751
  %tobool = icmp eq i8 %call, 0, !dbg !3751
  br i1 %tobool, label %if.end11, label %if.then1, !dbg !3753

if.then1:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3754
  %bf.load = load i32, i32* %2, align 8, !dbg !3754
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3754
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3754
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3756
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3756
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3756
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3757
  %rt_uint = bitcast %union.rtunion_def* %4 to i32*, !dbg !3757
  %5 = load i32, i32* %rt_uint, align 8, !dbg !3757
  %call5 = tail call fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %bf.clear, %struct.rtx_def* %3, i32 %5) #7, !dbg !3758
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call5, metadata !3744, metadata !DIExpression()), !dbg !3745
  %tobool6 = icmp eq %struct.rtx_def* %call5, null, !dbg !3759
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3761

if.then7:                                         ; preds = %if.then1
  %tobool8 = icmp eq i8* %data, null, !dbg !3762
  br i1 %tobool8, label %cleanup, label %cond.true, !dbg !3762

cond.true:                                        ; preds = %if.then7
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 514, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3762
  br label %cleanup, !dbg !3762

if.end9:                                          ; preds = %if.then1
  %call10 = tail call zeroext i8 @validate_change(%struct.rtx_def* %0, %struct.rtx_def** %px, %struct.rtx_def* nonnull %call5, i8 zeroext 1) #6, !dbg !3764
  br label %cleanup, !dbg !3765

if.end11:                                         ; preds = %if.end
  %call12 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* nonnull %1) #7, !dbg !3766
  %tobool13 = icmp ne i8 %call12, 0, !dbg !3766
  %. = zext i1 %tobool13 to i32, !dbg !3745
  br label %cleanup, !dbg !3745

cleanup:                                          ; preds = %if.then7, %if.end11, %cond.true, %entry, %if.end9
  %retval.0 = phi i32 [ -1, %if.end9 ], [ 0, %entry ], [ 1, %if.then7 ], [ 1, %cond.true ], [ %., %if.end11 ], !dbg !3745
  ret i32 %retval.0, !dbg !3768
}

; Function Attrs: nounwind uwtable
define internal fastcc void @resolve_reg_notes(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3769 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3771, metadata !DIExpression()), !dbg !3779
  %call = tail call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %insn) #6, !dbg !3780
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3773, metadata !DIExpression()), !dbg !3779
  %tobool = icmp eq %struct.rtx_def* %call, null, !dbg !3781
  br i1 %tobool, label %if.end8, label %if.then, !dbg !3782

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @num_validated_changes() #6, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3774, metadata !DIExpression()), !dbg !3784
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3785
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3785
  %call2 = tail call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx, i32 (%struct.rtx_def**, i8*)* nonnull @resolve_subreg_use, i8* null) #6, !dbg !3787
  %tobool3 = icmp eq i32 %call2, 0, !dbg !3787
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3788

if.then4:                                         ; preds = %if.then
  tail call void @remove_note(%struct.rtx_def* %insn, %struct.rtx_def* nonnull %call) #6, !dbg !3789
  br label %if.end8, !dbg !3789

if.else:                                          ; preds = %if.then
  %call5 = tail call i32 @num_validated_changes() #6, !dbg !3790
  %cmp = icmp eq i32 %call1, %call5, !dbg !3792
  br i1 %cmp, label %if.end8, label %if.then6, !dbg !3793

if.then6:                                         ; preds = %if.else
  tail call void @df_notes_rescan(%struct.rtx_def* %insn) #6, !dbg !3794
  br label %if.end8, !dbg !3794

if.end8:                                          ; preds = %if.else, %entry, %if.then4, %if.then6
  %u9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3795
  %0 = getelementptr inbounds %union.u, %union.u* %u9, i64 1, i32 0, i32 0, i64 2, !dbg !3795
  %rt_rtx12 = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3795
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx12, metadata !3772, metadata !DIExpression()), !dbg !3779
  br label %while.cond, !dbg !3796

while.cond:                                       ; preds = %if.end33, %if.end8
  %pnote.0 = phi %struct.rtx_def** [ %rt_rtx12, %if.end8 ], [ %pnote.1, %if.end33 ], !dbg !3797
  call void @llvm.dbg.value(metadata %struct.rtx_def** %pnote.0, metadata !3772, metadata !DIExpression()), !dbg !3779
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pnote.0, align 8, !dbg !3798
  %cmp13 = icmp eq %struct.rtx_def* %1, null, !dbg !3799
  br i1 %cmp13, label %while.end, label %while.body, !dbg !3796

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !3777, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3773, metadata !DIExpression()), !dbg !3779
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3801
  %bf.load = load i32, i32* %2, align 8, !dbg !3801
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3801
  %trunc = trunc i32 %bf.lshr to i8, !dbg !3802
  switch i8 %trunc, label %sw.epilog [
    i8 1, label %sw.bb
    i8 6, label %sw.bb
  ], !dbg !3802

sw.bb:                                            ; preds = %while.body, %while.body
  %arrayidx16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3803
  %rt_rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**, !dbg !3803
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx17, align 8, !dbg !3803
  %call18 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %3) #7, !dbg !3806
  %tobool19 = icmp ne i8 %call18, 0, !dbg !3806
  %spec.select = zext i1 %tobool19 to i8, !dbg !3807
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3777, metadata !DIExpression()), !dbg !3800
  br label %sw.epilog, !dbg !3808

sw.epilog:                                        ; preds = %while.body, %sw.bb
  %del.1 = phi i8 [ %spec.select, %sw.bb ], [ 0, %while.body ], !dbg !3800
  call void @llvm.dbg.value(metadata i8 %del.1, metadata !3777, metadata !DIExpression()), !dbg !3800
  %tobool22 = icmp eq i8 %del.1, 0, !dbg !3809
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3811
  %rt_rtx27 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !3811
  br i1 %tobool22, label %if.end33, label %if.then23, !dbg !3812

if.then23:                                        ; preds = %sw.epilog
  %5 = bitcast %union.rtunion_def* %4 to i64*, !dbg !3813
  %6 = load i64, i64* %5, align 8, !dbg !3813
  %7 = bitcast %struct.rtx_def** %pnote.0 to i64*, !dbg !3814
  store i64 %6, i64* %7, align 8, !dbg !3814
  br label %if.end33, !dbg !3815

if.end33:                                         ; preds = %sw.epilog, %if.then23
  %pnote.1 = phi %struct.rtx_def** [ %pnote.0, %if.then23 ], [ %rt_rtx27, %sw.epilog ], !dbg !3779
  call void @llvm.dbg.value(metadata %struct.rtx_def** %pnote.1, metadata !3772, metadata !DIExpression()), !dbg !3779
  br label %while.cond, !dbg !3796, !llvm.loop !3816

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3818
}

declare dso_local i32 @num_validated_changes() local_unnamed_addr #1

declare dso_local zeroext i8 @validate_unshare_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !3819 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3827, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !3828, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i32 0, metadata !3829, metadata !DIExpression()), !dbg !3830
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3831
  store i32 0, i32* %word_num, align 4, !dbg !3832
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3833
  store i32 0, i32* %bit_num, align 8, !dbg !3834
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !3835
  %0 = load i32, i32* %size, align 4, !dbg !3835
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3836
  store i32 %0, i32* %size1, align 8, !dbg !3837
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !3838
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3839
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !3840
  %cmp = icmp eq i32 %0, 0, !dbg !3841
  br i1 %cmp, label %if.then, label %if.else, !dbg !3843

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3844
  store i64 0, i64* %word, align 8, !dbg !3845
  br label %if.end, !dbg !3846

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !3847
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3848
  store i64 %1, i64* %word7, align 8, !dbg !3849
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3850
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !3851 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32* %n, metadata !3856, metadata !DIExpression()), !dbg !3857
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3858
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3861
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3863
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3861
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3858
  %.pre = load i64, i64* %word, align 8, !dbg !3865
  br label %for.cond, !dbg !3866

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !3865
  %cmp = icmp eq i64 %0, 0, !dbg !3867
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !3868

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !3865
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !3857
  br label %for.cond6, !dbg !3869

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !3871
  %inc = add i32 %1, 1, !dbg !3871
  store i32 %inc, i32* %word_num, align 4, !dbg !3871
  %2 = load i32, i32* %size, align 8, !dbg !3872
  %cmp2 = icmp ult i32 %inc, %2, !dbg !3873
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !3874

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !3875
  store i32 %mul, i32* %bit_num, align 8, !dbg !3876
  %3 = load i64*, i64** %ptr, align 8, !dbg !3877
  %idxprom = zext i32 %inc to i64, !dbg !3878
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3878
  %4 = load i64, i64* %arrayidx, align 8, !dbg !3878
  store i64 %4, i64* %word, align 8, !dbg !3879
  br label %for.cond, !dbg !3880, !llvm.loop !3881

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !3857
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !3883
  %and = and i64 %6, 1, !dbg !3885
  %cmp8 = icmp eq i64 %and, 0, !dbg !3886
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !3869

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !3887
  store i32 %inc11, i32* %bit_num, align 8, !dbg !3887
  %shr = lshr i64 %6, 1, !dbg !3888
  store i64 %shr, i64* %word, align 8, !dbg !3888
  br label %for.cond6, !dbg !3889, !llvm.loop !3890

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !3857
  store i32 %.lcssa, i32* %n, align 4, !dbg !3892
  br label %return, !dbg !3893

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !3894

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !3857
  ret i8 %retval.0, !dbg !3894
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3895 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3902, metadata !DIExpression()), !dbg !3903
  br label %land.end, !dbg !3904

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3904
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3904
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3904
  ret %struct.basic_block_def* %0, !dbg !3904
}

declare dso_local %struct.edge_def* @split_block(%struct.basic_block_def*, i8*) local_unnamed_addr #1

declare dso_local void @rtl_make_eh_edge(%struct.simple_bitmap_def*, %struct.basic_block_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* %i) unnamed_addr #0 !dbg !3905 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3909, metadata !DIExpression()), !dbg !3910
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3911
  %0 = load i64, i64* %word, align 8, !dbg !3912
  %shr = lshr i64 %0, 1, !dbg !3912
  store i64 %shr, i64* %word, align 8, !dbg !3912
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3913
  %1 = load i32, i32* %bit_num, align 8, !dbg !3914
  %inc = add i32 %1, 1, !dbg !3914
  store i32 %inc, i32* %bit_num, align 8, !dbg !3914
  ret void, !dbg !3915
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_iterate(%struct.VEC_bitmap_base* %vec_, i32 %ix_, %struct.bitmap_head_def** %ptr) unnamed_addr #0 !dbg !3916 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !3922, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %ptr, metadata !3924, metadata !DIExpression()), !dbg !3925
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !3926
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3926

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !3926
  %0 = load i32, i32* %num, align 8, !dbg !3926
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3926
  br i1 %cmp, label %if.then, label %if.else, !dbg !3928

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3929
  %arrayidx = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3929
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3929
  br label %return, !dbg !3929

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3931

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.bitmap_head_def* [ null, %if.else ], [ %1, %if.then ], !dbg !3933
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3933
  store %struct.bitmap_head_def* %storemerge, %struct.bitmap_head_def** %ptr, align 8, !dbg !3933
  ret i32 %retval.0, !dbg !3928
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_bitmap_heap_free(%struct.VEC_bitmap_heap** %vec_) unnamed_addr #0 !dbg !3934 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** @reg_copy_graph, metadata !3938, metadata !DIExpression()), !dbg !3939
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !3940
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !3940
  br i1 %tobool, label %if.end, label %if.then, !dbg !3942

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_bitmap_heap* %0 to i8*, !dbg !3942
  tail call void @free(i8* nonnull %1) #6, !dbg !3940
  br label %if.end, !dbg !3940

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_bitmap_heap* null, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !3942
  ret void, !dbg !3942
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_length(%struct.VEC_bitmap_base* %vec_) unnamed_addr #0 !dbg !3943 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !3947, metadata !DIExpression()), !dbg !3948
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !3949
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3949

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !3949
  %0 = load i32, i32* %num, align 8, !dbg !3949
  br label %cond.end, !dbg !3949

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3949
  ret i32 %cond, !dbg !3949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_heap_reserve_exact(%struct.VEC_bitmap_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3950 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_heap** @reg_copy_graph, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3955, metadata !DIExpression()), !dbg !3957
  %0 = load %struct.VEC_bitmap_heap*, %struct.VEC_bitmap_heap** @reg_copy_graph, align 8, !dbg !3958
  %tobool = icmp eq %struct.VEC_bitmap_heap* %0, null, !dbg !3958
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3958

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_bitmap_heap, %struct.VEC_bitmap_heap* %0, i64 0, i32 0, !dbg !3958
  br label %cond.end, !dbg !3958

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_bitmap_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3958
  %call = tail call fastcc i32 @VEC_bitmap_base_space(%struct.VEC_bitmap_base* %cond, i32 %alloc_) #7, !dbg !3958
  %tobool1 = icmp eq i32 %call, 0, !dbg !3958
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3958
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3956, metadata !DIExpression()), !dbg !3957
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3958

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_bitmap_heap** @reg_copy_graph to i8**), align 8, !dbg !3959
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !3959
  store i8* %call3, i8** bitcast (%struct.VEC_bitmap_heap** @reg_copy_graph to i8**), align 8, !dbg !3959
  br label %if.end, !dbg !3959

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3958
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitmap_base_space(%struct.VEC_bitmap_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3961 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3966, metadata !DIExpression()), !dbg !3967
  %tobool = icmp eq %struct.VEC_bitmap_base* %vec_, null, !dbg !3968
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3968

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 1, !dbg !3968
  %0 = load i32, i32* %alloc, align 4, !dbg !3968
  %num = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 0, !dbg !3968
  %1 = load i32, i32* %num, align 8, !dbg !3968
  %sub = sub i32 %0, %1, !dbg !3968
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3968
  br label %cond.end, !dbg !3968

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3968
  br label %cond.end, !dbg !3968

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3968
  ret i32 %cond, !dbg !3968
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3969 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3976, metadata !DIExpression()), !dbg !3977
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3978
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3978
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3978
  ret i32 %0, !dbg !3979
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @simple_move_operand(%struct.rtx_def* %x) unnamed_addr #4 !dbg !3980 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3982, metadata !DIExpression()), !dbg !3983
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3984
  %bf.load = load i32, i32* %0, align 8, !dbg !3984
  %bf.clear = and i32 %bf.load, 65535, !dbg !3984
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3986
  br i1 %cmp, label %if.then, label %if.end, !dbg !3987

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3988
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3988
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3988
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3982, metadata !DIExpression()), !dbg !3983
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3989
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3991
  %.pre = and i32 %bf.load1.pre, 65535, !dbg !3991
  br label %if.end, !dbg !3992

if.end:                                           ; preds = %if.then, %entry
  %bf.clear2.pre-phi = phi i32 [ %.pre, %if.then ], [ %bf.clear, %entry ], !dbg !3991
  %bf.load26 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !3991
  %x.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %x, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !3982, metadata !DIExpression()), !dbg !3983
  %idxprom = zext i32 %bf.clear2.pre-phi to i64, !dbg !3991
  %arrayidx3 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3991
  %2 = load i32, i32* %arrayidx3, align 4, !dbg !3991
  %and = and i32 %2, -2, !dbg !3991
  %cmp4 = icmp eq i32 %and, 8, !dbg !3991
  br i1 %cmp4, label %if.end6, label %return, !dbg !3993

if.end6:                                          ; preds = %if.end
  %cmp9 = icmp eq i32 %bf.clear2.pre-phi, 44, !dbg !3994
  br i1 %cmp9, label %return, label %lor.lhs.false, !dbg !3996

lor.lhs.false:                                    ; preds = %if.end6
  %cmp12 = icmp eq i32 %bf.clear2.pre-phi, 45, !dbg !3997
  br i1 %cmp12, label %return, label %lor.lhs.false13, !dbg !3998

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %cmp16 = icmp eq i32 %bf.clear2.pre-phi, 121, !dbg !3999
  br i1 %cmp16, label %return, label %lor.lhs.false17, !dbg !4000

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %cmp20 = icmp eq i32 %bf.clear2.pre-phi, 35, !dbg !4001
  br i1 %cmp20, label %return, label %if.end22, !dbg !4002

if.end22:                                         ; preds = %lor.lhs.false17
  %cmp25 = icmp eq i32 %bf.clear2.pre-phi, 43, !dbg !4003
  br i1 %cmp25, label %land.lhs.true, label %if.end35, !dbg !4005

land.lhs.true:                                    ; preds = %if.end22
  %bf.clear27 = and i32 %bf.load26, 134217728, !dbg !4006
  %tobool = icmp eq i32 %bf.clear27, 0, !dbg !4006
  br i1 %tobool, label %lor.lhs.false28, label %return, !dbg !4007

lor.lhs.false28:                                  ; preds = %land.lhs.true
  %arrayidx31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4008
  %rt_rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**, !dbg !4008
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx32, align 8, !dbg !4008
  %call = tail call i32 @mode_dependent_address_p(%struct.rtx_def* %3) #6, !dbg !4009
  %tobool33 = icmp eq i32 %call, 0, !dbg !4009
  br i1 %tobool33, label %if.end35, label %return, !dbg !4010

if.end35:                                         ; preds = %lor.lhs.false28, %if.end22
  br label %return, !dbg !4011

return:                                           ; preds = %lor.lhs.false28, %land.lhs.true, %if.end6, %lor.lhs.false, %lor.lhs.false13, %lor.lhs.false17, %if.end, %if.end35
  %retval.0 = phi i8 [ 1, %if.end35 ], [ 0, %if.end ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false ], [ 0, %if.end6 ], [ 0, %lor.lhs.false28 ], [ 0, %land.lhs.true ], !dbg !3983
  ret i8 %retval.0, !dbg !4012
}

declare dso_local i32 @mode_for_size(i32, i32, i32) local_unnamed_addr #1

declare dso_local i32 @mode_dependent_address_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @VEC_bitmap_base_index(%struct.VEC_bitmap_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4018, metadata !DIExpression()), !dbg !4019
  br label %land.end, !dbg !4020

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4020
  %arrayidx = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4020
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4020
  ret %struct.bitmap_head_def* %0, !dbg !4020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @VEC_bitmap_base_replace(%struct.VEC_bitmap_base* %vec_, i32 %ix_, %struct.bitmap_head_def* %obj_) unnamed_addr #0 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitmap_base* %vec_, metadata !4025, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4026, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %obj_, metadata !4027, metadata !DIExpression()), !dbg !4029
  %idxprom = zext i32 %ix_ to i64, !dbg !4030
  %arrayidx = getelementptr inbounds %struct.VEC_bitmap_base, %struct.VEC_bitmap_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4030
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4030
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %0, metadata !4028, metadata !DIExpression()), !dbg !4029
  store %struct.bitmap_head_def* %obj_, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4030
  ret %struct.bitmap_head_def* %0, !dbg !4030
}

declare dso_local zeroext i8 @ix86_modes_tieable_p(i32, i32) local_unnamed_addr #1

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_ior_and_compl_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local %struct.rtvec_def* @rtvec_alloc(i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_reg_rtx_offset(%struct.rtx_def*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %x) unnamed_addr #4 !dbg !4031 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4033, metadata !DIExpression()), !dbg !4034
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4035
  %bf.load = load i32, i32* %0, align 8, !dbg !4035
  %bf.clear = and i32 %bf.load, 65535, !dbg !4035
  %cmp = icmp eq i32 %bf.clear, 42, !dbg !4036
  %conv1 = zext i1 %cmp to i8, !dbg !4035
  ret i8 %conv1, !dbg !4037
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* %x) unnamed_addr #4 !dbg !4038 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4040, metadata !DIExpression()), !dbg !4041
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4042
  %bf.load = load i32, i32* %0, align 8, !dbg !4042
  %bf.clear = and i32 %bf.load, 65535, !dbg !4042
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4044
  br i1 %cmp, label %if.end, label %return, !dbg !4045

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4046
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4046
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4046
  %call = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %1) #7, !dbg !4047
  br label %return, !dbg !4048

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %call, %if.end ], [ 0, %entry ], !dbg !4041
  ret i8 %retval.0, !dbg !4049
}

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %outermode, %struct.rtx_def* %op, i32 %innermode, i32 %byte) unnamed_addr #4 !dbg !4050 {
entry:
  call void @llvm.dbg.value(metadata i32 %outermode, metadata !4054, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4055, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i32 %innermode, metadata !4056, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.value(metadata i32 %byte, metadata !4057, metadata !DIExpression()), !dbg !4062
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4063
  %bf.load = load i32, i32* %0, align 8, !dbg !4063
  %bf.clear = and i32 %bf.load, 65535, !dbg !4063
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4064
  br i1 %cmp, label %land.lhs.true, label %if.end122, !dbg !4065

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4066
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4066
  %2 = load i32*, i32** %1, align 8, !dbg !4066
  %bf.load1 = load i32, i32* %2, align 8, !dbg !4066
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4066
  %cmp3 = icmp eq i32 %bf.clear2, 42, !dbg !4067
  %3 = bitcast i32* %2 to %struct.rtx_def*, !dbg !4068
  br i1 %cmp3, label %if.then, label %if.end122, !dbg !4068

if.then:                                          ; preds = %land.lhs.true
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4069
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !4069
  %idxprom = zext i32 %bf.clear5 to i64, !dbg !4069
  %arrayidx6 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4069
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4069
  %bf.lshr13 = lshr i32 %bf.load1, 16, !dbg !4071
  %bf.clear14 = and i32 %bf.lshr13, 255, !dbg !4071
  %idxprom15 = zext i32 %bf.clear14 to i64, !dbg !4071
  %arrayidx16 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom15, !dbg !4071
  %5 = load i8, i8* %arrayidx16, align 1, !dbg !4071
  %cmp19 = icmp eq i8 %4, %5, !dbg !4072
  br i1 %cmp19, label %land.lhs.true21, label %if.then.if.end_crit_edge, !dbg !4073

if.then.if.end_crit_edge:                         ; preds = %if.then
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4074
  %rt_uint49.phi.trans.insert = bitcast %union.rtunion_def* %.phi.trans.insert to i32*, !dbg !4074
  %.pre = load i32, i32* %rt_uint49.phi.trans.insert, align 8, !dbg !4075
  br label %if.end, !dbg !4073

land.lhs.true21:                                  ; preds = %if.then
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4076
  %rt_uint = bitcast %union.rtunion_def* %6 to i32*, !dbg !4076
  %7 = load i32, i32* %rt_uint, align 8, !dbg !4076
  %cmp25 = icmp eq i32 %7, 0, !dbg !4077
  br i1 %cmp25, label %if.then27, label %if.end, !dbg !4078

if.then27:                                        ; preds = %land.lhs.true21
  %call = tail call fastcc %struct.rtx_def* @simplify_gen_subreg_concatn(i32 %outermode, %struct.rtx_def* %3, i32 %bf.clear14, i32 %byte) #7, !dbg !4079
  br label %cleanup, !dbg !4080

if.end:                                           ; preds = %if.then.if.end_crit_edge, %land.lhs.true21
  %rt_uint49.pre-phi = phi i32* [ %rt_uint49.phi.trans.insert, %if.then.if.end_crit_edge ], [ %rt_uint, %land.lhs.true21 ], !dbg !4075
  %8 = phi i32 [ %.pre, %if.then.if.end_crit_edge ], [ %7, %land.lhs.true21 ], !dbg !4075
  %rt_rtx45 = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4081
  %call50 = tail call fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %bf.clear5, %struct.rtx_def* %3, i32 %8) #7, !dbg !4082
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call50, metadata !4059, metadata !DIExpression()), !dbg !4074
  %cmp51 = icmp eq %struct.rtx_def* %call50, null, !dbg !4083
  br i1 %cmp51, label %if.then53, label %cond.end111, !dbg !4085

if.then53:                                        ; preds = %if.end
  %idxprom54 = zext i32 %outermode to i64, !dbg !4086
  %arrayidx55 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom54, !dbg !4086
  %9 = load i8, i8* %arrayidx55, align 1, !dbg !4086
  %bf.load58 = load i32, i32* %0, align 8, !dbg !4086
  %bf.lshr59 = lshr i32 %bf.load58, 16, !dbg !4086
  %bf.clear60 = and i32 %bf.lshr59, 255, !dbg !4086
  %idxprom61 = zext i32 %bf.clear60 to i64, !dbg !4086
  %arrayidx62 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom61, !dbg !4086
  %10 = load i8, i8* %arrayidx62, align 1, !dbg !4086
  %cmp65 = icmp ugt i8 %9, %10, !dbg !4086
  br i1 %cmp65, label %cond.true, label %cond.end, !dbg !4086

cond.true:                                        ; preds = %if.then53
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 439, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4086
  %bf.load67.pre = load i32, i32* %0, align 8, !dbg !4088
  %.pre6 = lshr i32 %bf.load67.pre, 16, !dbg !4088
  %.pre7 = and i32 %.pre6, 255, !dbg !4088
  %.pre8 = zext i32 %.pre7 to i64, !dbg !4088
  br label %cond.end, !dbg !4086

cond.end:                                         ; preds = %if.then53, %cond.true
  %idxprom70.pre-phi = phi i64 [ %idxprom61, %if.then53 ], [ %.pre8, %cond.true ], !dbg !4088
  %arrayidx71 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom70.pre-phi, !dbg !4088
  %11 = load i8, i8* %arrayidx71, align 1, !dbg !4088
  %12 = load i32*, i32** %1, align 8, !dbg !4088
  %bf.load78 = load i32, i32* %12, align 8, !dbg !4088
  %bf.lshr79 = lshr i32 %bf.load78, 16, !dbg !4088
  %bf.clear80 = and i32 %bf.lshr79, 255, !dbg !4088
  %idxprom81 = zext i32 %bf.clear80 to i64, !dbg !4088
  %arrayidx82 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom81, !dbg !4088
  %13 = load i8, i8* %arrayidx82, align 1, !dbg !4088
  %cmp85 = icmp ugt i8 %11, %13, !dbg !4088
  %14 = bitcast i32* %12 to %struct.rtx_def*, !dbg !4088
  br i1 %cmp85, label %cond.true87, label %cond.end89, !dbg !4088

cond.true87:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 441, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4088
  %.pre3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !4089
  br label %cond.end89, !dbg !4088

cond.end89:                                       ; preds = %cond.end, %cond.true87
  %15 = phi %struct.rtx_def* [ %14, %cond.end ], [ %.pre3, %cond.true87 ], !dbg !4089
  %16 = load i32, i32* %rt_uint49.pre-phi, align 8, !dbg !4090
  %add = add i32 %16, %byte, !dbg !4091
  %call99 = tail call fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %outermode, %struct.rtx_def* %15, i32 %add) #7, !dbg !4092
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call99, metadata !4059, metadata !DIExpression()), !dbg !4074
  %cmp100 = icmp eq %struct.rtx_def* %call99, null, !dbg !4093
  br i1 %cmp100, label %cond.true102, label %cleanup, !dbg !4093

cond.true102:                                     ; preds = %cond.end89
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4093
  br label %cleanup, !dbg !4093

cond.end111:                                      ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call50, metadata !4055, metadata !DIExpression()), !dbg !4062
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call50, i64 0, i32 0, !dbg !4094
  %bf.load113 = load i32, i32* %17, align 8, !dbg !4094
  %bf.lshr114 = lshr i32 %bf.load113, 16, !dbg !4094
  %bf.clear115 = and i32 %bf.lshr114, 255, !dbg !4094
  %cmp116 = icmp eq i32 %bf.clear115, %innermode, !dbg !4094
  br i1 %cmp116, label %cleanup, label %cond.true118, !dbg !4094

cond.true118:                                     ; preds = %cond.end111
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4094
  br label %cleanup, !dbg !4094

cleanup:                                          ; preds = %cond.end89, %cond.true118, %cond.end111, %cond.true102, %if.then27
  %op.addr.0 = phi %struct.rtx_def* [ %op, %if.then27 ], [ %op, %cond.end89 ], [ %op, %cond.true102 ], [ %call50, %cond.end111 ], [ %call50, %cond.true118 ]
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then27 ], [ false, %cond.end89 ], [ false, %cond.true102 ], [ true, %cond.end111 ], [ true, %cond.true118 ]
  %retval.0 = phi %struct.rtx_def* [ %call, %if.then27 ], [ %call99, %cond.end89 ], [ null, %cond.true102 ], [ undef, %cond.end111 ], [ undef, %cond.true118 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.0, metadata !4055, metadata !DIExpression()), !dbg !4062
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end122_crit_edge, label %cleanup173

cleanup.if.end122_crit_edge:                      ; preds = %cleanup
  %.phi.trans.insert4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.0, i64 0, i32 0, !dbg !4095
  %bf.load123.pre = load i32, i32* %.phi.trans.insert4, align 8, !dbg !4097
  br label %if.end122

if.end122:                                        ; preds = %cleanup.if.end122_crit_edge, %land.lhs.true, %entry
  %bf.load123 = phi i32 [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], [ %bf.load123.pre, %cleanup.if.end122_crit_edge ], !dbg !4097
  %op.addr.1 = phi %struct.rtx_def* [ %op, %land.lhs.true ], [ %op, %entry ], [ %op.addr.0, %cleanup.if.end122_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op.addr.1, metadata !4055, metadata !DIExpression()), !dbg !4062
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.1, i64 0, i32 0, !dbg !4097
  %bf.clear124 = and i32 %bf.load123, 65535, !dbg !4097
  %cmp125 = icmp eq i32 %bf.clear124, 42, !dbg !4098
  br i1 %cmp125, label %if.then127, label %if.end129, !dbg !4099

if.then127:                                       ; preds = %if.end122
  %call128 = tail call fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %outermode, %struct.rtx_def* %op.addr.1, i32 %byte) #7, !dbg !4100
  br label %cleanup173, !dbg !4101

if.end129:                                        ; preds = %if.end122
  %call130 = tail call %struct.rtx_def* @simplify_gen_subreg(i32 %outermode, %struct.rtx_def* %op.addr.1, i32 %innermode, i32 %byte) #6, !dbg !4102
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call130, metadata !4058, metadata !DIExpression()), !dbg !4062
  %cond = icmp eq %struct.rtx_def* %call130, null, !dbg !4103
  br i1 %cond, label %land.lhs.true133, label %cleanup173, !dbg !4103

land.lhs.true133:                                 ; preds = %if.end129
  %bf.load134 = load i32, i32* %18, align 8, !dbg !4105
  %bf.clear135 = and i32 %bf.load134, 65535, !dbg !4105
  %cmp136 = icmp eq i32 %bf.clear135, 39, !dbg !4106
  br i1 %cmp136, label %land.lhs.true138, label %if.end166, !dbg !4107

land.lhs.true138:                                 ; preds = %land.lhs.true133
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4108
  %rt_uint142 = bitcast %union.rtunion_def* %19 to i32*, !dbg !4108
  %20 = load i32, i32* %rt_uint142, align 8, !dbg !4108
  %cmp143 = icmp eq i32 %20, 0, !dbg !4109
  br i1 %cmp143, label %land.lhs.true145, label %if.end166, !dbg !4110

land.lhs.true145:                                 ; preds = %land.lhs.true138
  %idxprom146 = zext i32 %innermode to i64, !dbg !4111
  %arrayidx147 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom146, !dbg !4111
  %21 = load i8, i8* %arrayidx147, align 1, !dbg !4111
  %arrayidx152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4112
  %22 = bitcast %union.rtunion_def* %arrayidx152 to i32**, !dbg !4112
  %23 = load i32*, i32** %22, align 8, !dbg !4112
  %bf.load154 = load i32, i32* %23, align 8, !dbg !4112
  %bf.lshr155 = lshr i32 %bf.load154, 16, !dbg !4112
  %bf.clear156 = and i32 %bf.lshr155, 255, !dbg !4112
  %idxprom157 = zext i32 %bf.clear156 to i64, !dbg !4112
  %arrayidx158 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom157, !dbg !4112
  %24 = load i8, i8* %arrayidx158, align 1, !dbg !4112
  %cmp161 = icmp ugt i8 %21, %24, !dbg !4113
  br i1 %cmp161, label %if.then163, label %if.end166, !dbg !4114

if.then163:                                       ; preds = %land.lhs.true145
  %idxprom164 = sext i32 %outermode to i64, !dbg !4115
  %arrayidx165 = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 %idxprom164, !dbg !4115
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx165, align 8, !dbg !4115
  br label %cleanup173, !dbg !4116

if.end166:                                        ; preds = %land.lhs.true145, %land.lhs.true138, %land.lhs.true133
  br i1 true, label %cond.true169, label %if.end166.cleanup173_crit_edge, !dbg !4117

if.end166.cleanup173_crit_edge:                   ; preds = %if.end166
  br label %cleanup173, !dbg !4117

cond.true169:                                     ; preds = %if.end166
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 468, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4117
  br label %cleanup173, !dbg !4117

cleanup173:                                       ; preds = %if.end166.cleanup173_crit_edge, %if.end129, %cond.true169, %cleanup, %if.then163, %if.then127
  %retval.1 = phi %struct.rtx_def* [ %retval.0, %cleanup ], [ %call128, %if.then127 ], [ %25, %if.then163 ], [ undef, %if.end166.cleanup173_crit_edge ], [ %call130, %if.end129 ], [ null, %cond.true169 ], !dbg !4062
  ret %struct.rtx_def* %retval.1, !dbg !4118
}

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %outermode, %struct.rtx_def* %op, i32 %byte) unnamed_addr #4 !dbg !4119 {
entry:
  call void @llvm.dbg.value(metadata i32 %outermode, metadata !4123, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata %struct.rtx_def* %op, metadata !4124, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32 %byte, metadata !4125, metadata !DIExpression()), !dbg !4130
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 0, !dbg !4131
  %bf.load = load i32, i32* %0, align 8, !dbg !4131
  %bf.clear = and i32 %bf.load, 65535, !dbg !4131
  %cmp = icmp eq i32 %bf.clear, 42, !dbg !4131
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4131

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4131
  br label %cond.end, !dbg !4131

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %outermode to i64, !dbg !4132
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4132
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4132
  %conv1 = zext i8 %1 to i32, !dbg !4132
  %rem = urem i32 %byte, %conv1, !dbg !4132
  %cmp2 = icmp eq i32 %rem, 0, !dbg !4132
  br i1 %cmp2, label %cond.end6, label %cond.true4, !dbg !4132

cond.true4:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4132
  br label %cond.end6, !dbg !4132

cond.end6:                                        ; preds = %cond.end, %cond.true4
  %bf.load8 = load i32, i32* %0, align 8, !dbg !4133
  %bf.lshr = lshr i32 %bf.load8, 16, !dbg !4133
  %bf.clear9 = and i32 %bf.lshr, 255, !dbg !4133
  call void @llvm.dbg.value(metadata i32 %bf.clear9, metadata !4127, metadata !DIExpression()), !dbg !4130
  %idxprom10 = zext i32 %bf.clear9 to i64, !dbg !4134
  %arrayidx11 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom10, !dbg !4134
  %2 = load i8, i8* %arrayidx11, align 1, !dbg !4134
  %conv13 = zext i8 %2 to i32, !dbg !4134
  %cmp14 = icmp ugt i32 %conv13, %byte, !dbg !4134
  br i1 %cmp14, label %cond.end18, label %cond.true16, !dbg !4134

cond.true16:                                      ; preds = %cond.end6
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4134
  %.pre = load i8, i8* %arrayidx11, align 1, !dbg !4135
  br label %cond.end18, !dbg !4134

cond.end18:                                       ; preds = %cond.end6, %cond.true16
  %3 = phi i8 [ %2, %cond.end6 ], [ %.pre, %cond.true16 ], !dbg !4135
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4135
  %cmp28 = icmp ugt i8 %4, %3, !dbg !4135
  br i1 %cmp28, label %cond.true30, label %cond.end32, !dbg !4135

cond.true30:                                      ; preds = %cond.end18
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4135
  %.pre1 = load i8, i8* %arrayidx11, align 1, !dbg !4136
  %.pre2 = load i8, i8* %arrayidx, align 1, !dbg !4137
  br label %cond.end32, !dbg !4135

cond.end32:                                       ; preds = %cond.end18, %cond.true30
  %5 = phi i8 [ %4, %cond.end18 ], [ %.pre2, %cond.true30 ], !dbg !4137
  %6 = phi i8 [ %3, %cond.end18 ], [ %.pre1, %cond.true30 ], !dbg !4136
  %conv37 = zext i8 %6 to i32, !dbg !4136
  %arrayidx38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %op, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4139
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtvec_def**, !dbg !4139
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4139
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i64 0, i32 0, !dbg !4139
  %8 = load i32, i32* %num_elem, align 8, !dbg !4139
  %div = sdiv i32 %conv37, %8, !dbg !4140
  call void @llvm.dbg.value(metadata i32 %div, metadata !4126, metadata !DIExpression()), !dbg !4130
  %div43 = udiv i32 %byte, %div, !dbg !4141
  %idxprom44 = zext i32 %div43 to i64, !dbg !4141
  %arrayidx45 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i64 0, i32 1, i64 %idxprom44, !dbg !4141
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx45, align 8, !dbg !4141
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !4128, metadata !DIExpression()), !dbg !4130
  %rem46 = urem i32 %byte, %div, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %rem46, metadata !4129, metadata !DIExpression()), !dbg !4130
  %conv50 = zext i8 %5 to i32, !dbg !4137
  %add = add i32 %rem46, %conv50, !dbg !4143
  %cmp51 = icmp ugt i32 %add, %div, !dbg !4144
  br i1 %cmp51, label %cleanup, label %if.end, !dbg !4145

if.end:                                           ; preds = %cond.end32
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !4146
  %bf.load53 = load i32, i32* %10, align 8, !dbg !4146
  %bf.lshr54 = lshr i32 %bf.load53, 16, !dbg !4146
  %bf.clear55 = and i32 %bf.lshr54, 255, !dbg !4146
  %call = tail call %struct.rtx_def* @simplify_gen_subreg(i32 %outermode, %struct.rtx_def* %9, i32 %bf.clear55, i32 %rem46) #6, !dbg !4147
  br label %cleanup, !dbg !4148

cleanup:                                          ; preds = %cond.end32, %if.end
  %retval.0 = phi %struct.rtx_def* [ %call, %if.end ], [ null, %cond.end32 ], !dbg !4130
  ret %struct.rtx_def* %retval.0, !dbg !4149
}

declare dso_local %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @adjust_decomposed_uses(%struct.rtx_def** %px, i8* %data) #4 !dbg !4150 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !4152, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.value(metadata i8* %data, metadata !4153, metadata !DIExpression()), !dbg !4155
  %0 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !4156
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4154, metadata !DIExpression()), !dbg !4155
  %cmp = icmp eq %struct.rtx_def* %0, null, !dbg !4157
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4159

if.end:                                           ; preds = %entry
  %call = tail call fastcc zeroext i8 @resolve_subreg_p(%struct.rtx_def* nonnull %0) #7, !dbg !4160
  %tobool = icmp eq i8 %call, 0, !dbg !4160
  br i1 %tobool, label %if.end10, label %if.then1, !dbg !4162

if.then1:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !4163
  %bf.load = load i32, i32* %1, align 8, !dbg !4163
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4163
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4163
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4165
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4165
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4165
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4166
  %rt_uint = bitcast %union.rtunion_def* %3 to i32*, !dbg !4166
  %4 = load i32, i32* %rt_uint, align 8, !dbg !4166
  %call5 = tail call fastcc %struct.rtx_def* @simplify_subreg_concatn(i32 %bf.clear, %struct.rtx_def* %2, i32 %4) #7, !dbg !4167
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call5, metadata !4154, metadata !DIExpression()), !dbg !4155
  %tobool6 = icmp eq %struct.rtx_def* %call5, null, !dbg !4168
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4170

if.then7:                                         ; preds = %if.then1
  store %struct.rtx_def* %call5, %struct.rtx_def** %px, align 8, !dbg !4171
  br label %if.end10, !dbg !4172

if.else:                                          ; preds = %if.then1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !4173
  %call8 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %5) #6, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call8, metadata !4154, metadata !DIExpression()), !dbg !4155
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then7, %if.else
  %x.1 = phi %struct.rtx_def* [ %0, %if.end ], [ %call5, %if.then7 ], [ %call8, %if.else ], !dbg !4155
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.1, metadata !4154, metadata !DIExpression()), !dbg !4155
  %call11 = tail call fastcc zeroext i8 @resolve_reg_p(%struct.rtx_def* %x.1) #7, !dbg !4175
  %tobool12 = icmp eq i8 %call11, 0, !dbg !4175
  br i1 %tobool12, label %cleanup, label %if.then13, !dbg !4177

if.then13:                                        ; preds = %if.end10
  %call14 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %x.1) #6, !dbg !4178
  store %struct.rtx_def* %call14, %struct.rtx_def** %px, align 8, !dbg !4179
  br label %cleanup, !dbg !4180

cleanup:                                          ; preds = %if.end10, %if.then13, %entry
  ret i32 0, !dbg !4181
}

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @can_decompose_p(%struct.rtx_def* %x) unnamed_addr #4 !dbg !4182 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4184, metadata !DIExpression()), !dbg !4188
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4189
  %bf.load = load i32, i32* %0, align 8, !dbg !4189
  %bf.clear = and i32 %bf.load, 65535, !dbg !4189
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4189
  br i1 %cmp, label %if.then, label %return, !dbg !4190

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !4191
  call void @llvm.dbg.value(metadata i32 %call, metadata !4185, metadata !DIExpression()), !dbg !4192
  %cmp1 = icmp ult i32 %call, 53, !dbg !4193
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4195

if.then2:                                         ; preds = %if.then
  %1 = load i32, i32* @word_mode, align 4, !dbg !4196
  %bf.load3 = load i32, i32* %0, align 8, !dbg !4197
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !4197
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !4197
  %call5 = tail call zeroext i8 @validate_subreg(i32 %1, i32 %bf.clear4, %struct.rtx_def* %x, i32 4) #6, !dbg !4198
  %tobool = icmp eq i8 %call5, 0, !dbg !4198
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4199

land.rhs:                                         ; preds = %if.then2
  %2 = load i32, i32* @word_mode, align 4, !dbg !4200
  %call6 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 %call, i32 %2) #6, !dbg !4200
  %tobool8 = icmp ne i8 %call6, 0, !dbg !4199
  %phitmp = zext i1 %tobool8 to i8
  br label %land.end

land.end:                                         ; preds = %if.then2, %land.rhs
  %3 = phi i8 [ 0, %if.then2 ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !4201

if.else:                                          ; preds = %if.then
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @non_decomposable_context, align 8, !dbg !4202
  %call10 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %call) #6, !dbg !4203
  %tobool11 = icmp eq i32 %call10, 0, !dbg !4204
  %conv12 = zext i1 %tobool11 to i8, !dbg !4204
  br label %return, !dbg !4205

return:                                           ; preds = %entry, %land.end, %if.else
  %retval.1 = phi i8 [ %3, %land.end ], [ %conv12, %if.else ], [ 1, %entry ], !dbg !4188
  ret i8 %retval.1, !dbg !4206
}

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @push_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @adjust_automodify_address_1(%struct.rtx_def*, i32, %struct.rtx_def*, i64, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_clobber(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @copy_reg_eh_region_note_forward(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @validate_subreg(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @ix86_hard_regno_mode_ok(i32, i32) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @expand_shift(i32, i32, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @df_notes_rescan(%struct.rtx_def*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1967, !1968, !1969}
!llvm.ident = !{!1970}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_lower_subreg", scope: !2, file: !3, line: 1340, type: !1935, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !771, globals: !1932, nameTableKind: None)
!3 = !DIFile(filename: "lower-subreg.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567, !572, !715, !737}
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
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "classify_move_insn", file: !3, line: 224, baseType: !7, size: 32, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIEnumerator(name: "NOT_SIMPLE_MOVE", value: 0, isUnsigned: true)
!570 = !DIEnumerator(name: "SIMPLE_PSEUDO_REG_MOVE", value: 1, isUnsigned: true)
!571 = !DIEnumerator(name: "SIMPLE_MOVE", value: 2, isUnsigned: true)
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !573, line: 45, baseType: !7, size: 32, elements: !574)
!573 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!575 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!576 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!577 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!578 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!579 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!580 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!581 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!582 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!583 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!584 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!585 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!586 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!587 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!588 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!589 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!590 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!591 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!592 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!593 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!594 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!595 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!596 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!597 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!598 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!599 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!600 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!601 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!602 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!603 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!604 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!605 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!606 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!607 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!608 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!609 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!610 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!611 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!612 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!613 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!614 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!615 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!616 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!617 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!618 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!619 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!620 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!621 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!622 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!623 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!624 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!625 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!626 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!627 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!628 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!629 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!630 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!631 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!632 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!633 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!634 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!635 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!636 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!637 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!638 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!639 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!640 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!641 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!642 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!643 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!644 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!645 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!646 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!647 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!648 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!649 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!650 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!651 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!652 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!653 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!654 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!655 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!656 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!657 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!658 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!659 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!660 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!661 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!662 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!663 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!664 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!665 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!666 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!667 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!668 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!669 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!670 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!671 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!672 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!673 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!674 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!675 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!676 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!677 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!678 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!679 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!680 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!681 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!682 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!683 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!684 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!685 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!686 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!687 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!688 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!689 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!690 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!691 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!692 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!693 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!694 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!695 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!696 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!697 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!698 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!699 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!700 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!701 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!703 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!704 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!705 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!706 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!707 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!708 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!709 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!710 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!711 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!712 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!713 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!714 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!715 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !716, line: 36, baseType: !7, size: 32, elements: !717)
!716 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!718 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!719 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!720 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!721 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!722 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!723 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!724 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!725 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!726 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!727 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!728 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!729 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!730 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!731 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!732 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!733 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!734 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!735 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!736 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !573, line: 836, baseType: !7, size: 32, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!739 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!740 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!741 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!742 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!743 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!744 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!745 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!746 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!747 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!748 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!749 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!750 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!751 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!752 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!753 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!754 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!755 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!756 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!757 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!758 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!759 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!760 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!761 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!762 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!763 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!764 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!765 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!766 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!767 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!768 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!769 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!770 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!771 = !{!772, !773, !774, !775, !778, !779, !781, !189, !572, !782, !1918, !1919, !7, !715, !1931, !852, !898, !737}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!774 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!781 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !783, line: 50, baseType: !784)
!783 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !573, line: 240, size: 384, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !785, file: !573, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !785, file: !573, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !785, file: !573, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !785, file: !573, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !785, file: !573, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !785, file: !573, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !785, file: !573, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !785, file: !573, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !785, file: !573, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !785, file: !573, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !785, file: !573, line: 321, baseType: !798, size: 320, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !573, line: 315, size: 320, elements: !799)
!799 = !{!800, !1885, !1887, !1916, !1917}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !798, file: !573, line: 316, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 64, elements: !817)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !573, line: 183, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !573, line: 166, size: 64, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !819, !820, !832, !835, !897, !1863, !1864, !1875, !1882}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !803, file: !573, line: 168, baseType: !774, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !803, file: !573, line: 169, baseType: !7, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !803, file: !573, line: 170, baseType: !779, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !803, file: !573, line: 171, baseType: !782, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !803, file: !573, line: 172, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !783, line: 53, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !573, line: 359, size: 128, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !812, file: !573, line: 360, baseType: !774, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !812, file: !573, line: 361, baseType: !816, size: 64, offset: 64)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 64, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 1)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !803, file: !573, line: 173, baseType: !189, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !803, file: !573, line: 174, baseType: !821, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !573, line: 133, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 115, size: 32, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !822, file: !573, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !822, file: !573, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !822, file: !573, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !822, file: !573, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !822, file: !573, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !822, file: !573, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !822, file: !573, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !822, file: !573, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !803, file: !573, line: 175, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !573, line: 175, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !803, file: !573, line: 176, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !838, line: 75, size: 256, elements: !839)
!838 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!839 = !{!840, !855, !856, !857}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !837, file: !838, line: 76, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !838, line: 68, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !838, line: 63, size: 320, elements: !844)
!844 = !{!845, !847, !848, !849}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !838, line: 64, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !843, file: !838, line: 65, baseType: !846, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !843, file: !838, line: 66, baseType: !7, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !843, file: !838, line: 67, baseType: !850, size: 128, offset: 192)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 128, elements: !853)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !838, line: 29, baseType: !852)
!852 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!853 = !{!854}
!854 = !DISubrange(count: 2)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !837, file: !838, line: 77, baseType: !841, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !837, file: !838, line: 78, baseType: !7, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !837, file: !838, line: 79, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !838, line: 49, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !838, line: 45, size: 832, elements: !861)
!861 = !{!862, !863, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !860, file: !838, line: 46, baseType: !846, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !860, file: !838, line: 47, baseType: !836, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !860, file: !838, line: 48, baseType: !865, size: 704, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !866, line: 164, size: 704, elements: !867)
!866 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!867 = !{!868, !870, !880, !881, !882, !883, !884, !885, !889, !893, !894, !895, !896}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !865, file: !866, line: 166, baseType: !869, size: 64)
!869 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !865, file: !866, line: 167, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !866, line: 157, size: 192, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !872, file: !866, line: 159, baseType: !776, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !872, file: !866, line: 160, baseType: !871, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !872, file: !866, line: 161, baseType: !877, size: 32, offset: 128)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 32, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 4)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !865, file: !866, line: 168, baseType: !776, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !865, file: !866, line: 169, baseType: !776, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !865, file: !866, line: 170, baseType: !776, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !865, file: !866, line: 171, baseType: !869, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !865, file: !866, line: 172, baseType: !774, size: 32, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !865, file: !866, line: 176, baseType: !886, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!871, !778, !869}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !865, file: !866, line: 177, baseType: !890, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !778, !871}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !865, file: !866, line: 178, baseType: !778, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !865, file: !866, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !865, file: !866, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !865, file: !866, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !803, file: !573, line: 177, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !783, line: 56, baseType: !899)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !901)
!901 = !{!902, !935, !941, !952, !971, !982, !987, !994, !1000, !1013, !1025, !1063, !1068, !1096, !1104, !1105, !1110, !1119, !1125, !1130, !1134, !1138, !1499, !1548, !1554, !1560, !1567, !1593, !1607, !1624, !1636, !1658, !1673, !1845}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !900, file: !341, line: 3372, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !903, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !903, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !903, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !903, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !903, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !903, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !903, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !903, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !903, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !903, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !903, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !903, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !903, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !903, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !903, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !903, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !903, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !903, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !903, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !903, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !903, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !903, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !903, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !903, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !903, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !903, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !903, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !903, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !903, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !903, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !900, file: !341, line: 3373, baseType: !936, size: 192)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !936, file: !341, line: 403, baseType: !903, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !936, file: !341, line: 404, baseType: !898, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !936, file: !341, line: 405, baseType: !898, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !900, file: !341, line: 3374, baseType: !942, size: 320)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !942, file: !341, line: 1385, baseType: !936, size: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !942, file: !341, line: 1386, baseType: !946, size: 128, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !947, line: 58, baseType: !948)
!947 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !947, line: 54, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !948, file: !947, line: 56, baseType: !852, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !948, file: !947, line: 57, baseType: !869, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !900, file: !341, line: 3375, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !953, file: !341, line: 1398, baseType: !936, size: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !953, file: !341, line: 1399, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !959, line: 52, size: 256, elements: !960)
!959 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!960 = !{!961, !962, !963, !964, !965, !966, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !958, file: !959, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !958, file: !959, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !958, file: !959, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !958, file: !959, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !958, file: !959, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !958, file: !959, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !958, file: !959, line: 62, baseType: !968, size: 192, offset: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 192, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 3)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !900, file: !341, line: 3376, baseType: !972, size: 256)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !972, file: !341, line: 1409, baseType: !936, size: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !972, file: !341, line: 1410, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !978, line: 27, size: 192, elements: !979)
!978 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !977, file: !978, line: 29, baseType: !946, size: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !977, file: !978, line: 30, baseType: !189, size: 32, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !900, file: !341, line: 3377, baseType: !983, size: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !983, file: !341, line: 1438, baseType: !936, size: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !983, file: !341, line: 1439, baseType: !898, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !900, file: !341, line: 3378, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !988, file: !341, line: 1419, baseType: !936, size: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !988, file: !341, line: 1420, baseType: !774, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !988, file: !341, line: 1421, baseType: !993, size: 8, offset: 224)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 8, elements: !817)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !900, file: !341, line: 3379, baseType: !995, size: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !995, file: !341, line: 1429, baseType: !936, size: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !995, file: !341, line: 1430, baseType: !898, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !995, file: !341, line: 1431, baseType: !898, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !900, file: !341, line: 3380, baseType: !1001, size: 320)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !341, line: 1461, baseType: !936, size: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1001, file: !341, line: 1462, baseType: !1005, size: 128, offset: 192)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1006, line: 31, size: 128, elements: !1007)
!1006 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1007 = !{!1008, !1011, !1012}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1005, file: !1006, line: 32, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1005, file: !1006, line: 33, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1005, file: !1006, line: 34, baseType: !7, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !900, file: !341, line: 3381, baseType: !1014, size: 384)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !1015)
!1015 = !{!1016, !1017, !1022, !1023, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !341, line: 2508, baseType: !936, size: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1014, file: !341, line: 2509, baseType: !1018, size: 32, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1019, line: 58, baseType: !1020)
!1019 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1021, line: 44, baseType: !7)
!1021 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1014, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !341, line: 2511, baseType: !898, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1014, file: !341, line: 2512, baseType: !898, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !900, file: !341, line: 3382, baseType: !1026, size: 896)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1026, file: !341, line: 2653, baseType: !1014, size: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1026, file: !341, line: 2654, baseType: !898, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1026, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1026, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1026, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1026, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1026, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1026, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1026, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1026, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1026, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1026, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1026, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1026, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1026, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1026, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1026, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1026, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1026, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1026, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1026, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1026, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1026, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1026, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1026, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1026, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1026, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1026, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1026, file: !341, line: 2705, baseType: !898, size: 64, offset: 576)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1026, file: !341, line: 2706, baseType: !898, size: 64, offset: 640)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1026, file: !341, line: 2707, baseType: !898, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1026, file: !341, line: 2708, baseType: !898, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1026, file: !341, line: 2711, baseType: !1061, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !900, file: !341, line: 3383, baseType: !1064, size: 960)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1064, file: !341, line: 2757, baseType: !1026, size: 896)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1064, file: !341, line: 2758, baseType: !782, size: 64, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !900, file: !341, line: 3384, baseType: !1069, size: 1472)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1070)
!1070 = !{!1071, !1092, !1093, !1094, !1095}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1069, file: !341, line: 3115, baseType: !1072, size: 1216)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !341, line: 2985, baseType: !1064, size: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1072, file: !341, line: 2986, baseType: !898, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1072, file: !341, line: 2987, baseType: !898, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1072, file: !341, line: 2988, baseType: !898, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1072, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1072, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1072, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1072, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1072, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1072, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1072, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1072, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1072, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1072, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1072, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1072, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1072, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1072, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1069, file: !341, line: 3117, baseType: !898, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1069, file: !341, line: 3119, baseType: !898, size: 64, offset: 1280)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1069, file: !341, line: 3121, baseType: !898, size: 64, offset: 1344)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1069, file: !341, line: 3123, baseType: !898, size: 64, offset: 1408)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !900, file: !341, line: 3385, baseType: !1097, size: 1088)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1097, file: !341, line: 2875, baseType: !1064, size: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1097, file: !341, line: 2876, baseType: !782, size: 64, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1097, file: !341, line: 2877, baseType: !1102, size: 64, offset: 1024)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !900, file: !341, line: 3386, baseType: !1072, size: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !900, file: !341, line: 3387, baseType: !1106, size: 1280)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !341, line: 3094, baseType: !1072, size: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1106, file: !341, line: 3095, baseType: !1102, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !900, file: !341, line: 3388, baseType: !1111, size: 1216)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1111, file: !341, line: 2825, baseType: !1026, size: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1111, file: !341, line: 2827, baseType: !898, size: 64, offset: 896)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1111, file: !341, line: 2828, baseType: !898, size: 64, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1111, file: !341, line: 2829, baseType: !898, size: 64, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1111, file: !341, line: 2830, baseType: !898, size: 64, offset: 1088)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1111, file: !341, line: 2831, baseType: !898, size: 64, offset: 1152)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !900, file: !341, line: 3389, baseType: !1120, size: 1024)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1120, file: !341, line: 2851, baseType: !1064, size: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1120, file: !341, line: 2852, baseType: !774, size: 32, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1120, file: !341, line: 2853, baseType: !774, size: 32, offset: 992)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !900, file: !341, line: 3390, baseType: !1126, size: 1024)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1126, file: !341, line: 2858, baseType: !1064, size: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1126, file: !341, line: 2859, baseType: !1102, size: 64, offset: 960)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !900, file: !341, line: 3391, baseType: !1131, size: 960)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1131, file: !341, line: 2863, baseType: !1064, size: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !900, file: !341, line: 3392, baseType: !1135, size: 1472)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1135, file: !341, line: 3305, baseType: !1069, size: 1472)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !900, file: !341, line: 3393, baseType: !1139, size: 1792)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1140)
!1140 = !{!1141, !1142, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !341, line: 3249, baseType: !1069, size: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1139, file: !341, line: 3251, baseType: !1143, size: 64, offset: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1145, line: 463, size: 1152, elements: !1146)
!1145 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1146 = !{!1147, !1311, !1415, !1416, !1419, !1422, !1423, !1424, !1425, !1426, !1427, !1451, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1144, file: !1145, line: 464, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1150)
!1150 = !{!1151, !1200, !1213, !1227, !1279, !1292}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1149, file: !318, line: 197, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1188, !1197, !1198, !1199}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1154, file: !318, line: 119, baseType: !1153, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1154, file: !318, line: 122, baseType: !1153, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1154, file: !318, line: 123, baseType: !1153, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1154, file: !318, line: 126, baseType: !774, size: 32, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1154, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1154, file: !318, line: 165, baseType: !1162, size: 192, offset: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1163)
!1163 = !{!1164, !1177, !1183}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1162, file: !318, line: 137, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1166)
!1166 = !{!1167, !1176}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1165, file: !318, line: 135, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1169, file: !318, line: 96, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1169, file: !318, line: 97, baseType: !1168, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1169, file: !318, line: 101, baseType: !898, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1169, file: !318, line: 106, baseType: !898, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1169, file: !318, line: 111, baseType: !898, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1165, file: !318, line: 136, baseType: !1168, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1162, file: !318, line: 151, baseType: !1178, size: 192)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1178, file: !318, line: 141, baseType: !898, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1178, file: !318, line: 145, baseType: !898, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1178, file: !318, line: 150, baseType: !774, size: 32, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1162, file: !318, line: 164, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1184, file: !318, line: 161, baseType: !898, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1184, file: !318, line: 163, baseType: !1018, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1154, file: !318, line: 168, baseType: !1189, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1190, file: !318, line: 70, baseType: !1189, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1190, file: !318, line: 73, baseType: !1153, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1190, file: !318, line: 78, baseType: !898, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1190, file: !318, line: 85, baseType: !782, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1190, file: !318, line: 88, baseType: !774, size: 32, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1154, file: !318, line: 173, baseType: !782, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1154, file: !318, line: 173, baseType: !782, size: 64, offset: 576)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1154, file: !318, line: 177, baseType: !773, size: 8, offset: 640)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1149, file: !318, line: 200, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1204)
!1204 = !{!1205}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1203, file: !318, line: 185, baseType: !1206, size: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1207, file: !318, line: 184, baseType: !7, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1207, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1207, file: !318, line: 184, baseType: !1212, size: 64, offset: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 64, elements: !817)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1149, file: !318, line: 203, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1217)
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1216, file: !318, line: 189, baseType: !1219, size: 128)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1220, file: !318, line: 188, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1220, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1220, file: !318, line: 188, baseType: !1225, size: 64, offset: 64)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 64, elements: !817)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1189)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1149, file: !318, line: 207, baseType: !1228, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1229, line: 144, baseType: !1230)
!1229 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1229, line: 100, size: 896, elements: !1232)
!1232 = !{!1233, !1241, !1246, !1251, !1253, !1256, !1257, !1258, !1259, !1260, !1265, !1267, !1268, !1273, !1278}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1231, file: !1229, line: 102, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1229, line: 52, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1229, line: 47, baseType: !7)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1231, file: !1229, line: 105, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1229, line: 59, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!774, !1239, !1239}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1231, file: !1229, line: 108, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1229, line: 63, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !778}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1231, file: !1229, line: 111, baseType: !1252, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1229, line: 114, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1255, line: 46, baseType: !852)
!1255 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1231, file: !1229, line: 117, baseType: !1254, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1231, file: !1229, line: 120, baseType: !1254, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1231, file: !1229, line: 124, baseType: !7, size: 32, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1231, file: !1229, line: 128, baseType: !7, size: 32, offset: 480)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1231, file: !1229, line: 131, baseType: !1261, size: 64, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1229, line: 75, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!778, !1254, !1254}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1231, file: !1229, line: 132, baseType: !1266, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1229, line: 78, baseType: !1248)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1231, file: !1229, line: 135, baseType: !778, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1231, file: !1229, line: 136, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1229, line: 82, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!778, !778, !1254, !1254}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1231, file: !1229, line: 137, baseType: !1274, size: 64, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1229, line: 83, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !778, !778}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1231, file: !1229, line: 141, baseType: !7, size: 32, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1149, file: !318, line: 211, baseType: !1280, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1282, file: !341, line: 183, baseType: !1285, size: 128)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1286, file: !341, line: 182, baseType: !7, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1286, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1286, file: !341, line: 182, baseType: !1291, size: 64, offset: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 64, elements: !817)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1149, file: !318, line: 220, baseType: !1293, size: 64, offset: 320)
!1293 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1293, file: !318, line: 218, baseType: !1280, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1293, file: !318, line: 219, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1299, line: 29, baseType: !1300)
!1299 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1299, line: 29, size: 96, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1300, file: !1299, line: 29, baseType: !1303, size: 96)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1299, line: 27, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1299, line: 27, size: 96, elements: !1305)
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1304, file: !1299, line: 27, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1304, file: !1299, line: 27, baseType: !7, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1304, file: !1299, line: 27, baseType: !1309, size: 8, offset: 64)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 8, elements: !817)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1299, line: 26, baseType: !773)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1144, file: !1145, line: 467, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1314)
!1314 = !{!1315, !1390, !1391, !1404, !1405, !1406, !1407, !1408, !1409, !1411, !1413, !1414}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1313, file: !325, line: 377, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !783, line: 111, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1319)
!1319 = !{!1320, !1355, !1356, !1357, !1360, !1364, !1365, !1366, !1384, !1385, !1386, !1387, !1388, !1389}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1318, file: !325, line: 219, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1323, file: !325, line: 151, baseType: !1326, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1327, file: !325, line: 150, baseType: !7, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1327, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1327, file: !325, line: 150, baseType: !1332, size: 64, offset: 64)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 64, elements: !817)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !783, line: 108, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1347, !1348, !1349, !1350, !1351, !1352, !1353}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1335, file: !325, line: 124, baseType: !1317, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1335, file: !325, line: 125, baseType: !1317, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1335, file: !325, line: 131, baseType: !1340, size: 64, offset: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1341)
!1341 = !{!1342, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1340, file: !325, line: 129, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !783, line: 66, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !783, line: 65, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1340, file: !325, line: 130, baseType: !782, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1335, file: !325, line: 134, baseType: !778, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1335, file: !325, line: 137, baseType: !898, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1335, file: !325, line: 138, baseType: !1018, size: 32, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1335, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1335, file: !325, line: 144, baseType: !774, size: 32, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1335, file: !325, line: 145, baseType: !774, size: 32, offset: 416)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1335, file: !325, line: 146, baseType: !1354, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !869)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1318, file: !325, line: 220, baseType: !1321, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1318, file: !325, line: 223, baseType: !778, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1318, file: !325, line: 226, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1318, file: !325, line: 229, baseType: !1361, size: 128, offset: 256)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 128, elements: !853)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1318, file: !325, line: 232, baseType: !1317, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1318, file: !325, line: 233, baseType: !1317, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1318, file: !325, line: 238, baseType: !1367, size: 64, offset: 512)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1368)
!1368 = !{!1369, !1375}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1367, file: !325, line: 236, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1371, file: !325, line: 275, baseType: !1343, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1371, file: !325, line: 278, baseType: !1343, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1367, file: !325, line: 237, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1377, file: !325, line: 261, baseType: !782, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1377, file: !325, line: 262, baseType: !782, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1377, file: !325, line: 266, baseType: !782, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1377, file: !325, line: 267, baseType: !782, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1377, file: !325, line: 270, baseType: !774, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1318, file: !325, line: 241, baseType: !1354, size: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !325, line: 244, baseType: !774, size: 32, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1318, file: !325, line: 247, baseType: !774, size: 32, offset: 672)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1318, file: !325, line: 250, baseType: !774, size: 32, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1318, file: !325, line: 253, baseType: !774, size: 32, offset: 736)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !325, line: 256, baseType: !774, size: 32, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1313, file: !325, line: 378, baseType: !1316, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1313, file: !325, line: 381, baseType: !1392, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1394, file: !325, line: 282, baseType: !1397, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1398, file: !325, line: 281, baseType: !7, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1398, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1398, file: !325, line: 281, baseType: !1403, size: 64, offset: 64)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 64, elements: !817)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1313, file: !325, line: 384, baseType: !774, size: 32, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1313, file: !325, line: 387, baseType: !774, size: 32, offset: 224)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1313, file: !325, line: 390, baseType: !774, size: 32, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1313, file: !325, line: 394, baseType: !1392, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1313, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1313, file: !325, line: 399, baseType: !1410, size: 64, offset: 416)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !853)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1313, file: !325, line: 402, baseType: !1412, size: 64, offset: 480)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !853)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1313, file: !325, line: 406, baseType: !774, size: 32, offset: 544)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1313, file: !325, line: 409, baseType: !774, size: 32, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1144, file: !1145, line: 470, baseType: !1344, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1144, file: !1145, line: 473, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1145, line: 166, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1144, file: !1145, line: 476, baseType: !1420, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1145, line: 476, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1144, file: !1145, line: 479, baseType: !1228, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1144, file: !1145, line: 484, baseType: !898, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1144, file: !1145, line: 488, baseType: !898, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1144, file: !1145, line: 493, baseType: !898, size: 64, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1144, file: !1145, line: 496, baseType: !898, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1144, file: !1145, line: 501, baseType: !1428, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1430)
!1430 = !{!1431, !1434, !1435, !1436, !1437, !1439, !1440, !1445, !1446, !1447, !1448, !1449, !1450}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1429, file: !336, line: 2356, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1429, file: !336, line: 2357, baseType: !779, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1429, file: !336, line: 2358, baseType: !774, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1429, file: !336, line: 2359, baseType: !774, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1429, file: !336, line: 2360, baseType: !1438, size: 128, offset: 192)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 128, elements: !878)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1429, file: !336, line: 2364, baseType: !774, size: 32, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1429, file: !336, line: 2367, baseType: !1441, size: 128, offset: 384)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1441, file: !336, line: 2351, baseType: !782, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1441, file: !336, line: 2352, baseType: !869, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1429, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1429, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1429, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1429, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1429, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1429, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1144, file: !1145, line: 504, baseType: !1452, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1145, line: 504, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1144, file: !1145, line: 507, baseType: !1228, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1144, file: !1145, line: 510, baseType: !774, size: 32, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1144, file: !1145, line: 513, baseType: !774, size: 32, offset: 864)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1144, file: !1145, line: 516, baseType: !1018, size: 32, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1144, file: !1145, line: 519, baseType: !1018, size: 32, offset: 928)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1144, file: !1145, line: 522, baseType: !7, size: 32, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1144, file: !1145, line: 523, baseType: !7, size: 32, offset: 992)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1144, file: !1145, line: 528, baseType: !779, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1144, file: !1145, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1144, file: !1145, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1144, file: !1145, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1144, file: !1145, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1144, file: !1145, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1144, file: !1145, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1144, file: !1145, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1144, file: !1145, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1144, file: !1145, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1144, file: !1145, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1144, file: !1145, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1144, file: !1145, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1144, file: !1145, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1144, file: !1145, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1144, file: !1145, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1144, file: !1145, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1139, file: !341, line: 3254, baseType: !898, size: 64, offset: 1536)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1139, file: !341, line: 3257, baseType: !898, size: 64, offset: 1600)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1139, file: !341, line: 3258, baseType: !898, size: 64, offset: 1664)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1139, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1139, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1139, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1139, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1139, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1139, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1139, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1139, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1139, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1139, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1139, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1139, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1139, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1139, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1139, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1139, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1139, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1139, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !341, line: 3394, baseType: !1500, size: 1344)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1527, !1528, !1529, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !341, line: 2280, baseType: !936, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1500, file: !341, line: 2281, baseType: !898, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1500, file: !341, line: 2282, baseType: !898, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1500, file: !341, line: 2283, baseType: !898, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1500, file: !341, line: 2284, baseType: !898, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1500, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1500, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1500, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1500, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1500, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1500, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1500, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1500, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1500, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1500, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1500, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1500, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1500, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1500, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1500, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1500, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1500, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1500, file: !341, line: 2306, baseType: !1525, size: 32, offset: 544)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1526, line: 31, baseType: !774)
!1526 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1500, file: !341, line: 2307, baseType: !898, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1500, file: !341, line: 2308, baseType: !898, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1500, file: !341, line: 2314, baseType: !1530, size: 64, offset: 704)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1531)
!1531 = !{!1532, !1533, !1534}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1530, file: !341, line: 2310, baseType: !774, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1530, file: !341, line: 2311, baseType: !779, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1530, file: !341, line: 2312, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1500, file: !341, line: 2315, baseType: !898, size: 64, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1500, file: !341, line: 2316, baseType: !898, size: 64, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1500, file: !341, line: 2317, baseType: !898, size: 64, offset: 896)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1500, file: !341, line: 2318, baseType: !898, size: 64, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1500, file: !341, line: 2319, baseType: !898, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1500, file: !341, line: 2320, baseType: !898, size: 64, offset: 1088)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1500, file: !341, line: 2321, baseType: !898, size: 64, offset: 1152)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1500, file: !341, line: 2322, baseType: !898, size: 64, offset: 1216)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1500, file: !341, line: 2324, baseType: !1546, size: 64, offset: 1280)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !900, file: !341, line: 3395, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1549, file: !341, line: 1470, baseType: !936, size: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1549, file: !341, line: 1471, baseType: !898, size: 64, offset: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1549, file: !341, line: 1472, baseType: !898, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !900, file: !341, line: 3396, baseType: !1555, size: 320)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1555, file: !341, line: 1483, baseType: !936, size: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1555, file: !341, line: 1484, baseType: !774, size: 32, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1555, file: !341, line: 1485, baseType: !1291, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !900, file: !341, line: 3397, baseType: !1561, size: 384)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1561, file: !341, line: 1830, baseType: !936, size: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1561, file: !341, line: 1831, baseType: !1018, size: 32, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1561, file: !341, line: 1832, baseType: !898, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1561, file: !341, line: 1835, baseType: !1291, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !900, file: !341, line: 3398, baseType: !1568, size: 704)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1576, !1577, !1580}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1568, file: !341, line: 1899, baseType: !936, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1568, file: !341, line: 1902, baseType: !898, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1568, file: !341, line: 1905, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !783, line: 58, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !783, line: 57, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1568, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1568, file: !341, line: 1911, baseType: !1578, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1568, file: !341, line: 1914, baseType: !1581, size: 256, offset: 448)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1582)
!1582 = !{!1583, !1585, !1586, !1591}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1581, file: !341, line: 1884, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1581, file: !341, line: 1885, baseType: !1584, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1581, file: !341, line: 1891, baseType: !1587, size: 64, offset: 128)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !341, line: 1891, size: 64, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1587, file: !341, line: 1891, baseType: !1573, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1587, file: !341, line: 1891, baseType: !898, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1581, file: !341, line: 1892, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !900, file: !341, line: 3399, baseType: !1594, size: 704)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1594, file: !341, line: 2009, baseType: !936, size: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1594, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1594, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1594, file: !341, line: 2014, baseType: !1018, size: 32, offset: 224)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1594, file: !341, line: 2016, baseType: !898, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1594, file: !341, line: 2017, baseType: !1280, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1594, file: !341, line: 2019, baseType: !898, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1594, file: !341, line: 2020, baseType: !898, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1594, file: !341, line: 2021, baseType: !898, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1594, file: !341, line: 2022, baseType: !898, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1594, file: !341, line: 2023, baseType: !898, size: 64, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !900, file: !341, line: 3400, baseType: !1608, size: 832)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1608, file: !341, line: 2431, baseType: !936, size: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1608, file: !341, line: 2433, baseType: !898, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1608, file: !341, line: 2434, baseType: !898, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1608, file: !341, line: 2435, baseType: !898, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1608, file: !341, line: 2436, baseType: !898, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1608, file: !341, line: 2437, baseType: !1280, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1608, file: !341, line: 2438, baseType: !898, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1608, file: !341, line: 2440, baseType: !898, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1608, file: !341, line: 2441, baseType: !898, size: 64, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1608, file: !341, line: 2443, baseType: !1620, size: 128, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1621, file: !341, line: 182, baseType: !1285, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !900, file: !341, line: 3401, baseType: !1625, size: 320)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1626)
!1626 = !{!1627, !1628, !1635}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1625, file: !341, line: 3329, baseType: !936, size: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1625, file: !341, line: 3330, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1630, file: !341, line: 3322, baseType: !1629, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1630, file: !341, line: 3323, baseType: !1629, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1630, file: !341, line: 3324, baseType: !898, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1625, file: !341, line: 3331, baseType: !1629, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !900, file: !341, line: 3402, baseType: !1637, size: 256)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1637, file: !341, line: 1541, baseType: !936, size: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1637, file: !341, line: 1542, baseType: !1641, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1643, file: !341, line: 1538, baseType: !1646, size: 192)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1648)
!1648 = !{!1649, !1650, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1647, file: !341, line: 1537, baseType: !7, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1647, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1647, file: !341, line: 1537, baseType: !1652, size: 128, offset: 64)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1653, size: 128, elements: !817)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1654, file: !341, line: 1533, baseType: !898, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1654, file: !341, line: 1534, baseType: !898, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !900, file: !341, line: 3403, baseType: !1659, size: 512)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1670, !1671, !1672}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1659, file: !341, line: 1939, baseType: !936, size: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1659, file: !341, line: 1940, baseType: !1018, size: 32, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1659, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1659, file: !341, line: 1946, baseType: !1665, size: 32, offset: 256)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1665, file: !341, line: 1943, baseType: !359, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1665, file: !341, line: 1944, baseType: !366, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1665, file: !341, line: 1945, baseType: !373, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1659, file: !341, line: 1950, baseType: !1343, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1659, file: !341, line: 1951, baseType: !1343, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1659, file: !341, line: 1953, baseType: !1291, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !900, file: !341, line: 3404, baseType: !1674, size: 1664)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1674, file: !341, line: 3338, baseType: !936, size: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1674, file: !341, line: 3341, baseType: !1678, size: 1472, offset: 192)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1679, line: 410, size: 1472, elements: !1680)
!1679 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1678, file: !1679, line: 412, baseType: !774, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1678, file: !1679, line: 413, baseType: !774, size: 32, offset: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1678, file: !1679, line: 414, baseType: !774, size: 32, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1678, file: !1679, line: 415, baseType: !774, size: 32, offset: 96)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1678, file: !1679, line: 416, baseType: !774, size: 32, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1678, file: !1679, line: 417, baseType: !774, size: 32, offset: 160)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1678, file: !1679, line: 418, baseType: !773, size: 8, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1678, file: !1679, line: 419, baseType: !773, size: 8, offset: 200)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1678, file: !1679, line: 420, baseType: !1690, size: 8, offset: 208)
!1690 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1678, file: !1679, line: 421, baseType: !1690, size: 8, offset: 216)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1678, file: !1679, line: 422, baseType: !1690, size: 8, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1678, file: !1679, line: 423, baseType: !1690, size: 8, offset: 232)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1678, file: !1679, line: 424, baseType: !1690, size: 8, offset: 240)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1678, file: !1679, line: 425, baseType: !1690, size: 8, offset: 248)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1678, file: !1679, line: 426, baseType: !1690, size: 8, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1678, file: !1679, line: 427, baseType: !1690, size: 8, offset: 264)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1678, file: !1679, line: 428, baseType: !1690, size: 8, offset: 272)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1678, file: !1679, line: 429, baseType: !1690, size: 8, offset: 280)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1678, file: !1679, line: 430, baseType: !1690, size: 8, offset: 288)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1678, file: !1679, line: 431, baseType: !1690, size: 8, offset: 296)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1678, file: !1679, line: 432, baseType: !1690, size: 8, offset: 304)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1678, file: !1679, line: 433, baseType: !1690, size: 8, offset: 312)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1678, file: !1679, line: 434, baseType: !1690, size: 8, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1678, file: !1679, line: 435, baseType: !1690, size: 8, offset: 328)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1678, file: !1679, line: 436, baseType: !1690, size: 8, offset: 336)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1678, file: !1679, line: 437, baseType: !1690, size: 8, offset: 344)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1678, file: !1679, line: 438, baseType: !1690, size: 8, offset: 352)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1678, file: !1679, line: 439, baseType: !1690, size: 8, offset: 360)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1678, file: !1679, line: 440, baseType: !1690, size: 8, offset: 368)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1678, file: !1679, line: 441, baseType: !1690, size: 8, offset: 376)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1678, file: !1679, line: 442, baseType: !1690, size: 8, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1678, file: !1679, line: 443, baseType: !1690, size: 8, offset: 392)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1678, file: !1679, line: 444, baseType: !1690, size: 8, offset: 400)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1678, file: !1679, line: 445, baseType: !1690, size: 8, offset: 408)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1678, file: !1679, line: 446, baseType: !1690, size: 8, offset: 416)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1678, file: !1679, line: 447, baseType: !1690, size: 8, offset: 424)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1678, file: !1679, line: 448, baseType: !1690, size: 8, offset: 432)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1678, file: !1679, line: 449, baseType: !1690, size: 8, offset: 440)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1678, file: !1679, line: 450, baseType: !1690, size: 8, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1678, file: !1679, line: 451, baseType: !1690, size: 8, offset: 456)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1678, file: !1679, line: 452, baseType: !1690, size: 8, offset: 464)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1678, file: !1679, line: 453, baseType: !1690, size: 8, offset: 472)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1678, file: !1679, line: 454, baseType: !1690, size: 8, offset: 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1678, file: !1679, line: 455, baseType: !1690, size: 8, offset: 488)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1678, file: !1679, line: 456, baseType: !1690, size: 8, offset: 496)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1678, file: !1679, line: 457, baseType: !1690, size: 8, offset: 504)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1678, file: !1679, line: 458, baseType: !1690, size: 8, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1678, file: !1679, line: 459, baseType: !1690, size: 8, offset: 520)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1678, file: !1679, line: 460, baseType: !1690, size: 8, offset: 528)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1678, file: !1679, line: 461, baseType: !1690, size: 8, offset: 536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1678, file: !1679, line: 462, baseType: !1690, size: 8, offset: 544)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1678, file: !1679, line: 463, baseType: !1690, size: 8, offset: 552)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1678, file: !1679, line: 464, baseType: !1690, size: 8, offset: 560)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1678, file: !1679, line: 465, baseType: !1690, size: 8, offset: 568)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1678, file: !1679, line: 466, baseType: !1690, size: 8, offset: 576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1678, file: !1679, line: 467, baseType: !1690, size: 8, offset: 584)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1678, file: !1679, line: 468, baseType: !1690, size: 8, offset: 592)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1678, file: !1679, line: 469, baseType: !1690, size: 8, offset: 600)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1678, file: !1679, line: 470, baseType: !1690, size: 8, offset: 608)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1678, file: !1679, line: 471, baseType: !1690, size: 8, offset: 616)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1678, file: !1679, line: 472, baseType: !1690, size: 8, offset: 624)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1678, file: !1679, line: 473, baseType: !1690, size: 8, offset: 632)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1678, file: !1679, line: 474, baseType: !1690, size: 8, offset: 640)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1678, file: !1679, line: 475, baseType: !1690, size: 8, offset: 648)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1678, file: !1679, line: 476, baseType: !1690, size: 8, offset: 656)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1678, file: !1679, line: 477, baseType: !1690, size: 8, offset: 664)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1678, file: !1679, line: 478, baseType: !1690, size: 8, offset: 672)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1678, file: !1679, line: 479, baseType: !1690, size: 8, offset: 680)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1678, file: !1679, line: 480, baseType: !1690, size: 8, offset: 688)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1678, file: !1679, line: 481, baseType: !1690, size: 8, offset: 696)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1678, file: !1679, line: 482, baseType: !1690, size: 8, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1678, file: !1679, line: 483, baseType: !1690, size: 8, offset: 712)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1678, file: !1679, line: 484, baseType: !1690, size: 8, offset: 720)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1678, file: !1679, line: 485, baseType: !1690, size: 8, offset: 728)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1678, file: !1679, line: 486, baseType: !1690, size: 8, offset: 736)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1678, file: !1679, line: 487, baseType: !1690, size: 8, offset: 744)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1678, file: !1679, line: 488, baseType: !1690, size: 8, offset: 752)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1678, file: !1679, line: 489, baseType: !1690, size: 8, offset: 760)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1678, file: !1679, line: 490, baseType: !1690, size: 8, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1678, file: !1679, line: 491, baseType: !1690, size: 8, offset: 776)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1678, file: !1679, line: 492, baseType: !1690, size: 8, offset: 784)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1678, file: !1679, line: 493, baseType: !1690, size: 8, offset: 792)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1678, file: !1679, line: 494, baseType: !1690, size: 8, offset: 800)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1678, file: !1679, line: 495, baseType: !1690, size: 8, offset: 808)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1678, file: !1679, line: 496, baseType: !1690, size: 8, offset: 816)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1678, file: !1679, line: 497, baseType: !1690, size: 8, offset: 824)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1678, file: !1679, line: 498, baseType: !1690, size: 8, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1678, file: !1679, line: 499, baseType: !1690, size: 8, offset: 840)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1678, file: !1679, line: 500, baseType: !1690, size: 8, offset: 848)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1678, file: !1679, line: 501, baseType: !1690, size: 8, offset: 856)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1678, file: !1679, line: 502, baseType: !1690, size: 8, offset: 864)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1678, file: !1679, line: 503, baseType: !1690, size: 8, offset: 872)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1678, file: !1679, line: 504, baseType: !1690, size: 8, offset: 880)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1678, file: !1679, line: 505, baseType: !1690, size: 8, offset: 888)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1678, file: !1679, line: 506, baseType: !1690, size: 8, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1678, file: !1679, line: 507, baseType: !1690, size: 8, offset: 904)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1678, file: !1679, line: 508, baseType: !1690, size: 8, offset: 912)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1678, file: !1679, line: 509, baseType: !1690, size: 8, offset: 920)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1678, file: !1679, line: 510, baseType: !1690, size: 8, offset: 928)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1678, file: !1679, line: 511, baseType: !1690, size: 8, offset: 936)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1678, file: !1679, line: 512, baseType: !1690, size: 8, offset: 944)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1678, file: !1679, line: 513, baseType: !1690, size: 8, offset: 952)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1678, file: !1679, line: 514, baseType: !1690, size: 8, offset: 960)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1678, file: !1679, line: 515, baseType: !1690, size: 8, offset: 968)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1678, file: !1679, line: 516, baseType: !1690, size: 8, offset: 976)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1678, file: !1679, line: 517, baseType: !1690, size: 8, offset: 984)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1678, file: !1679, line: 518, baseType: !1690, size: 8, offset: 992)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1678, file: !1679, line: 519, baseType: !1690, size: 8, offset: 1000)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1678, file: !1679, line: 520, baseType: !1690, size: 8, offset: 1008)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1678, file: !1679, line: 521, baseType: !1690, size: 8, offset: 1016)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1678, file: !1679, line: 522, baseType: !1690, size: 8, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1678, file: !1679, line: 523, baseType: !1690, size: 8, offset: 1032)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1678, file: !1679, line: 524, baseType: !1690, size: 8, offset: 1040)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1678, file: !1679, line: 525, baseType: !1690, size: 8, offset: 1048)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1678, file: !1679, line: 526, baseType: !1690, size: 8, offset: 1056)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1678, file: !1679, line: 527, baseType: !1690, size: 8, offset: 1064)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1678, file: !1679, line: 528, baseType: !1690, size: 8, offset: 1072)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1678, file: !1679, line: 529, baseType: !1690, size: 8, offset: 1080)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1678, file: !1679, line: 530, baseType: !1690, size: 8, offset: 1088)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1678, file: !1679, line: 531, baseType: !1690, size: 8, offset: 1096)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1678, file: !1679, line: 532, baseType: !1690, size: 8, offset: 1104)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1678, file: !1679, line: 533, baseType: !1690, size: 8, offset: 1112)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1678, file: !1679, line: 534, baseType: !1690, size: 8, offset: 1120)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1678, file: !1679, line: 535, baseType: !1690, size: 8, offset: 1128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1678, file: !1679, line: 536, baseType: !1690, size: 8, offset: 1136)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1678, file: !1679, line: 537, baseType: !1690, size: 8, offset: 1144)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1678, file: !1679, line: 538, baseType: !1690, size: 8, offset: 1152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1678, file: !1679, line: 539, baseType: !1690, size: 8, offset: 1160)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1678, file: !1679, line: 540, baseType: !1690, size: 8, offset: 1168)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1678, file: !1679, line: 541, baseType: !1690, size: 8, offset: 1176)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1678, file: !1679, line: 542, baseType: !1690, size: 8, offset: 1184)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1678, file: !1679, line: 543, baseType: !1690, size: 8, offset: 1192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1678, file: !1679, line: 544, baseType: !1690, size: 8, offset: 1200)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1678, file: !1679, line: 545, baseType: !1690, size: 8, offset: 1208)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1678, file: !1679, line: 546, baseType: !1690, size: 8, offset: 1216)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1678, file: !1679, line: 547, baseType: !1690, size: 8, offset: 1224)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1678, file: !1679, line: 548, baseType: !1690, size: 8, offset: 1232)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1678, file: !1679, line: 549, baseType: !1690, size: 8, offset: 1240)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1678, file: !1679, line: 550, baseType: !1690, size: 8, offset: 1248)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1678, file: !1679, line: 551, baseType: !1690, size: 8, offset: 1256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1678, file: !1679, line: 552, baseType: !1690, size: 8, offset: 1264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1678, file: !1679, line: 553, baseType: !1690, size: 8, offset: 1272)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1678, file: !1679, line: 554, baseType: !1690, size: 8, offset: 1280)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1678, file: !1679, line: 555, baseType: !1690, size: 8, offset: 1288)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1678, file: !1679, line: 556, baseType: !1690, size: 8, offset: 1296)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1678, file: !1679, line: 557, baseType: !1690, size: 8, offset: 1304)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1678, file: !1679, line: 558, baseType: !1690, size: 8, offset: 1312)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1678, file: !1679, line: 559, baseType: !1690, size: 8, offset: 1320)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1678, file: !1679, line: 560, baseType: !1690, size: 8, offset: 1328)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1678, file: !1679, line: 561, baseType: !1690, size: 8, offset: 1336)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1678, file: !1679, line: 562, baseType: !1690, size: 8, offset: 1344)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1678, file: !1679, line: 563, baseType: !1690, size: 8, offset: 1352)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1678, file: !1679, line: 564, baseType: !1690, size: 8, offset: 1360)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1678, file: !1679, line: 565, baseType: !1690, size: 8, offset: 1368)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1678, file: !1679, line: 566, baseType: !1690, size: 8, offset: 1376)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1678, file: !1679, line: 567, baseType: !1690, size: 8, offset: 1384)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1678, file: !1679, line: 568, baseType: !1690, size: 8, offset: 1392)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1678, file: !1679, line: 569, baseType: !1690, size: 8, offset: 1400)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1678, file: !1679, line: 570, baseType: !1690, size: 8, offset: 1408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1678, file: !1679, line: 571, baseType: !1690, size: 8, offset: 1416)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1678, file: !1679, line: 572, baseType: !1690, size: 8, offset: 1424)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1678, file: !1679, line: 573, baseType: !1690, size: 8, offset: 1432)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1678, file: !1679, line: 574, baseType: !1690, size: 8, offset: 1440)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !900, file: !341, line: 3405, baseType: !1846, size: 384)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1846, file: !341, line: 3353, baseType: !936, size: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1846, file: !341, line: 3356, baseType: !1850, size: 192, offset: 192)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1679, line: 578, size: 192, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1850, file: !1679, line: 580, baseType: !774, size: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1850, file: !1679, line: 581, baseType: !774, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1850, file: !1679, line: 582, baseType: !774, size: 32, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1850, file: !1679, line: 583, baseType: !774, size: 32, offset: 96)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1850, file: !1679, line: 584, baseType: !773, size: 8, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1850, file: !1679, line: 585, baseType: !773, size: 8, offset: 136)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1850, file: !1679, line: 586, baseType: !773, size: 8, offset: 144)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1850, file: !1679, line: 587, baseType: !773, size: 8, offset: 152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1850, file: !1679, line: 588, baseType: !773, size: 8, offset: 160)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1850, file: !1679, line: 589, baseType: !773, size: 8, offset: 168)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1850, file: !1679, line: 590, baseType: !773, size: 8, offset: 176)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !803, file: !573, line: 178, baseType: !1317, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !803, file: !573, line: 179, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !573, line: 150, baseType: !1867)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !573, line: 142, size: 320, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1867, file: !573, line: 144, baseType: !898, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1867, file: !573, line: 145, baseType: !782, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1867, file: !573, line: 146, baseType: !782, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1867, file: !573, line: 147, baseType: !1525, size: 32, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1867, file: !573, line: 148, baseType: !7, size: 32, offset: 224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1867, file: !573, line: 149, baseType: !773, size: 8, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !803, file: !573, line: 180, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !573, line: 162, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !573, line: 159, size: 128, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1878, file: !573, line: 160, baseType: !898, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1878, file: !573, line: 161, baseType: !869, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !803, file: !573, line: 181, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !573, line: 181, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !798, file: !573, line: 317, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 64, elements: !817)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !798, file: !573, line: 318, baseType: !1888, size: 320)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !573, line: 188, size: 320, elements: !1889)
!1889 = !{!1890, !1892, !1915}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1888, file: !573, line: 190, baseType: !1891, size: 192)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 192, elements: !969)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1888, file: !573, line: 193, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !573, line: 206, size: 320, elements: !1895)
!1895 = !{!1896, !1900, !1901, !1902, !1914}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1894, file: !573, line: 208, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !783, line: 62, baseType: !1899)
!1899 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !783, line: 61, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1894, file: !573, line: 211, baseType: !7, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1894, file: !573, line: 214, baseType: !869, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1894, file: !573, line: 224, baseType: !1903, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !573, line: 202, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !573, line: 202, size: 128, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1905, file: !573, line: 202, baseType: !1908, size: 128)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !573, line: 200, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !573, line: 200, size: 128, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1909, file: !573, line: 200, baseType: !7, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1909, file: !573, line: 200, baseType: !7, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1909, file: !573, line: 200, baseType: !816, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1894, file: !573, line: 234, baseType: !1903, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1888, file: !573, line: 197, baseType: !869, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !798, file: !573, line: 319, baseType: !958, size: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !798, file: !573, line: 320, baseType: !977, size: 192)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !783, line: 47, baseType: !836)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitmap_heap", file: !3, line: 50, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitmap_heap", file: !3, line: 50, size: 128, elements: !1922)
!1922 = !{!1923}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1921, file: !3, line: 50, baseType: !1924, size: 128)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitmap_base", file: !3, line: 49, baseType: !1925)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitmap_base", file: !3, line: 49, size: 128, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1925, file: !3, line: 49, baseType: !7, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1925, file: !3, line: 49, baseType: !7, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1925, file: !3, line: 49, baseType: !1930, size: 64, offset: 64)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 64, elements: !817)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1932 = !{!0, !1933, !1961, !1963, !1965}
!1933 = !DIGlobalVariableExpression(var: !1934, expr: !DIExpression())
!1934 = distinct !DIGlobalVariable(name: "pass_lower_subreg2", scope: !2, file: !3, line: 1361, type: !1935, isLocal: false, isDefinition: true)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1935, file: !6, line: 164, baseType: !1938, size: 640)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1946, !1950, !1952, !1953, !1954, !1956, !1957, !1958, !1959, !1960}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !6, line: 117, baseType: !5, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1938, file: !6, line: 121, baseType: !779, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1938, file: !6, line: 125, baseType: !1943, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!773}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1938, file: !6, line: 130, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!7}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1938, file: !6, line: 133, baseType: !1951, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1938, file: !6, line: 136, baseType: !1951, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1938, file: !6, line: 139, baseType: !774, size: 32, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1938, file: !6, line: 143, baseType: !1955, size: 32, offset: 416)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1938, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1938, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1938, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1938, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1938, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1961 = !DIGlobalVariableExpression(var: !1962, expr: !DIExpression())
!1962 = distinct !DIGlobalVariable(name: "decomposable_context", scope: !2, file: !3, line: 60, type: !1918, isLocal: true, isDefinition: true)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(name: "non_decomposable_context", scope: !2, file: !3, line: 64, type: !1918, isLocal: true, isDefinition: true)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(name: "reg_copy_graph", scope: !2, file: !3, line: 68, type: !1919, isLocal: true, isDefinition: true)
!1967 = !{i32 2, !"Dwarf Version", i32 4}
!1968 = !{i32 2, !"Debug Info Version", i32 3}
!1969 = !{i32 1, !"wchar_size", i32 4}
!1970 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1971 = distinct !DISubprogram(name: "vprintf", scope: !1972, file: !1972, line: 39, type: !1973, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1972 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!774, !1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !779)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1977, file: !3, baseType: !7, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1977, file: !3, baseType: !7, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1977, file: !3, baseType: !778, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1977, file: !3, baseType: !778, size: 64, offset: 128)
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1971, file: !1972, line: 39, type: !1975)
!1985 = !DILocalVariable(name: "__arg", arg: 2, scope: !1971, file: !1972, line: 39, type: !1976)
!1986 = !DILocation(line: 0, scope: !1971)
!1987 = !DILocation(line: 41, column: 20, scope: !1971)
!1988 = !DILocation(line: 41, column: 10, scope: !1971)
!1989 = !DILocation(line: 41, column: 3, scope: !1971)
!1990 = distinct !DISubprogram(name: "getchar", scope: !1972, file: !1972, line: 47, type: !1991, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!774}
!1993 = !{}
!1994 = !DILocation(line: 49, column: 16, scope: !1990)
!1995 = !DILocation(line: 49, column: 10, scope: !1990)
!1996 = !DILocation(line: 49, column: 3, scope: !1990)
!1997 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1972, file: !1972, line: 56, type: !1998, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!774, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2002, line: 7, baseType: !2003)
!2002 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2004, line: 49, size: 1728, elements: !2005)
!2004 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2021, !2023, !2024, !2025, !2028, !2029, !2030, !2031, !2034, !2036, !2039, !2042, !2043, !2044, !2045, !2046}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2003, file: !2004, line: 51, baseType: !774, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2003, file: !2004, line: 54, baseType: !776, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2003, file: !2004, line: 55, baseType: !776, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2003, file: !2004, line: 56, baseType: !776, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2003, file: !2004, line: 57, baseType: !776, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2003, file: !2004, line: 58, baseType: !776, size: 64, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2003, file: !2004, line: 59, baseType: !776, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2003, file: !2004, line: 60, baseType: !776, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2003, file: !2004, line: 61, baseType: !776, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2003, file: !2004, line: 64, baseType: !776, size: 64, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2003, file: !2004, line: 65, baseType: !776, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2003, file: !2004, line: 66, baseType: !776, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2003, file: !2004, line: 68, baseType: !2019, size: 64, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2004, line: 36, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2003, file: !2004, line: 70, baseType: !2022, size: 64, offset: 832)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2003, file: !2004, line: 72, baseType: !774, size: 32, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2003, file: !2004, line: 73, baseType: !774, size: 32, offset: 928)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2003, file: !2004, line: 74, baseType: !2026, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2027, line: 152, baseType: !869)
!2027 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2003, file: !2004, line: 77, baseType: !781, size: 16, offset: 1024)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2003, file: !2004, line: 78, baseType: !1690, size: 8, offset: 1040)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2003, file: !2004, line: 79, baseType: !993, size: 8, offset: 1048)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2003, file: !2004, line: 81, baseType: !2032, size: 64, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2004, line: 43, baseType: null)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2003, file: !2004, line: 89, baseType: !2035, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2027, line: 153, baseType: !869)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2003, file: !2004, line: 91, baseType: !2037, size: 64, offset: 1216)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2004, line: 37, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2003, file: !2004, line: 92, baseType: !2040, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2004, line: 38, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2003, file: !2004, line: 93, baseType: !2022, size: 64, offset: 1344)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2003, file: !2004, line: 94, baseType: !778, size: 64, offset: 1408)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2003, file: !2004, line: 95, baseType: !1254, size: 64, offset: 1472)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2003, file: !2004, line: 96, baseType: !774, size: 32, offset: 1536)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2003, file: !2004, line: 98, baseType: !2047, size: 160, offset: 1568)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 160, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 20)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "__fp", arg: 1, scope: !1997, file: !1972, line: 56, type: !2000)
!2052 = !DILocation(line: 0, scope: !1997)
!2053 = !DILocation(line: 58, column: 10, scope: !1997)
!2054 = !DILocation(line: 58, column: 3, scope: !1997)
!2055 = distinct !DISubprogram(name: "getc_unlocked", scope: !1972, file: !1972, line: 66, type: !1998, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2056 = !{!2057}
!2057 = !DILocalVariable(name: "__fp", arg: 1, scope: !2055, file: !1972, line: 66, type: !2000)
!2058 = !DILocation(line: 0, scope: !2055)
!2059 = !DILocation(line: 68, column: 10, scope: !2055)
!2060 = !DILocation(line: 68, column: 3, scope: !2055)
!2061 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1972, file: !1972, line: 73, type: !1991, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!2062 = !DILocation(line: 75, column: 10, scope: !2061)
!2063 = !DILocation(line: 75, column: 3, scope: !2061)
!2064 = distinct !DISubprogram(name: "putchar", scope: !1972, file: !1972, line: 82, type: !2065, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!774, !774}
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "__c", arg: 1, scope: !2064, file: !1972, line: 82, type: !774)
!2069 = !DILocation(line: 0, scope: !2064)
!2070 = !DILocation(line: 84, column: 21, scope: !2064)
!2071 = !DILocation(line: 84, column: 10, scope: !2064)
!2072 = !DILocation(line: 84, column: 3, scope: !2064)
!2073 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1972, file: !1972, line: 91, type: !2074, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!774, !774, !2000}
!2076 = !{!2077, !2078}
!2077 = !DILocalVariable(name: "__c", arg: 1, scope: !2073, file: !1972, line: 91, type: !774)
!2078 = !DILocalVariable(name: "__stream", arg: 2, scope: !2073, file: !1972, line: 91, type: !2000)
!2079 = !DILocation(line: 0, scope: !2073)
!2080 = !DILocation(line: 93, column: 10, scope: !2073)
!2081 = !DILocation(line: 93, column: 3, scope: !2073)
!2082 = distinct !DISubprogram(name: "putc_unlocked", scope: !1972, file: !1972, line: 101, type: !2074, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "__c", arg: 1, scope: !2082, file: !1972, line: 101, type: !774)
!2085 = !DILocalVariable(name: "__stream", arg: 2, scope: !2082, file: !1972, line: 101, type: !2000)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocation(line: 103, column: 10, scope: !2082)
!2088 = !DILocation(line: 103, column: 3, scope: !2082)
!2089 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1972, file: !1972, line: 108, type: !2065, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "__c", arg: 1, scope: !2089, file: !1972, line: 108, type: !774)
!2092 = !DILocation(line: 0, scope: !2089)
!2093 = !DILocation(line: 110, column: 10, scope: !2089)
!2094 = !DILocation(line: 110, column: 3, scope: !2089)
!2095 = distinct !DISubprogram(name: "getline", scope: !1972, file: !1972, line: 118, type: !2096, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2098, !775, !2099, !2000}
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2027, line: 193, baseType: !869)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!2100 = !{!2101, !2102, !2103}
!2101 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2095, file: !1972, line: 118, type: !775)
!2102 = !DILocalVariable(name: "__n", arg: 2, scope: !2095, file: !1972, line: 118, type: !2099)
!2103 = !DILocalVariable(name: "__stream", arg: 3, scope: !2095, file: !1972, line: 118, type: !2000)
!2104 = !DILocation(line: 0, scope: !2095)
!2105 = !DILocation(line: 120, column: 10, scope: !2095)
!2106 = !DILocation(line: 120, column: 3, scope: !2095)
!2107 = distinct !DISubprogram(name: "feof_unlocked", scope: !1972, file: !1972, line: 128, type: !1998, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2108 = !{!2109}
!2109 = !DILocalVariable(name: "__stream", arg: 1, scope: !2107, file: !1972, line: 128, type: !2000)
!2110 = !DILocation(line: 0, scope: !2107)
!2111 = !DILocation(line: 130, column: 10, scope: !2107)
!2112 = !DILocation(line: 130, column: 3, scope: !2107)
!2113 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1972, file: !1972, line: 135, type: !1998, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "__stream", arg: 1, scope: !2113, file: !1972, line: 135, type: !2000)
!2116 = !DILocation(line: 0, scope: !2113)
!2117 = !DILocation(line: 137, column: 10, scope: !2113)
!2118 = !DILocation(line: 137, column: 3, scope: !2113)
!2119 = distinct !DISubprogram(name: "tolower", scope: !2120, file: !2120, line: 207, type: !2065, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2120 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2121 = !{!2122}
!2122 = !DILocalVariable(name: "__c", arg: 1, scope: !2119, file: !2120, line: 207, type: !774)
!2123 = !DILocation(line: 0, scope: !2119)
!2124 = !DILocation(line: 209, column: 22, scope: !2119)
!2125 = !DILocation(line: 209, column: 39, scope: !2119)
!2126 = !DILocation(line: 209, column: 38, scope: !2119)
!2127 = !DILocation(line: 209, column: 37, scope: !2119)
!2128 = !DILocation(line: 209, column: 10, scope: !2119)
!2129 = !DILocation(line: 209, column: 3, scope: !2119)
!2130 = distinct !DISubprogram(name: "toupper", scope: !2120, file: !2120, line: 213, type: !2065, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2131)
!2131 = !{!2132}
!2132 = !DILocalVariable(name: "__c", arg: 1, scope: !2130, file: !2120, line: 213, type: !774)
!2133 = !DILocation(line: 0, scope: !2130)
!2134 = !DILocation(line: 215, column: 22, scope: !2130)
!2135 = !DILocation(line: 215, column: 39, scope: !2130)
!2136 = !DILocation(line: 215, column: 38, scope: !2130)
!2137 = !DILocation(line: 215, column: 37, scope: !2130)
!2138 = !DILocation(line: 215, column: 10, scope: !2130)
!2139 = !DILocation(line: 215, column: 3, scope: !2130)
!2140 = distinct !DISubprogram(name: "atoi", scope: !2141, file: !2141, line: 361, type: !2142, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2141 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!774, !779}
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2140, file: !2141, line: 361, type: !779)
!2146 = !DILocation(line: 0, scope: !2140)
!2147 = !DILocation(line: 363, column: 16, scope: !2140)
!2148 = !DILocation(line: 363, column: 10, scope: !2140)
!2149 = !DILocation(line: 363, column: 3, scope: !2140)
!2150 = distinct !DISubprogram(name: "atol", scope: !2141, file: !2141, line: 366, type: !2151, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!869, !779}
!2153 = !{!2154}
!2154 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2150, file: !2141, line: 366, type: !779)
!2155 = !DILocation(line: 0, scope: !2150)
!2156 = !DILocation(line: 368, column: 10, scope: !2150)
!2157 = !DILocation(line: 368, column: 3, scope: !2150)
!2158 = distinct !DISubprogram(name: "atoll", scope: !2141, file: !2141, line: 373, type: !2159, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2162)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2161, !779}
!2161 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2162 = !{!2163}
!2163 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2158, file: !2141, line: 373, type: !779)
!2164 = !DILocation(line: 0, scope: !2158)
!2165 = !DILocation(line: 375, column: 10, scope: !2158)
!2166 = !DILocation(line: 375, column: 3, scope: !2158)
!2167 = distinct !DISubprogram(name: "bsearch", scope: !2168, file: !2168, line: 20, type: !2169, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!778, !1239, !1239, !1254, !1254, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2141, line: 808, baseType: !1243)
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2173 = !DILocalVariable(name: "__key", arg: 1, scope: !2167, file: !2168, line: 20, type: !1239)
!2174 = !DILocalVariable(name: "__base", arg: 2, scope: !2167, file: !2168, line: 20, type: !1239)
!2175 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2167, file: !2168, line: 20, type: !1254)
!2176 = !DILocalVariable(name: "__size", arg: 4, scope: !2167, file: !2168, line: 20, type: !1254)
!2177 = !DILocalVariable(name: "__compar", arg: 5, scope: !2167, file: !2168, line: 21, type: !2171)
!2178 = !DILocalVariable(name: "__l", scope: !2167, file: !2168, line: 23, type: !1254)
!2179 = !DILocalVariable(name: "__u", scope: !2167, file: !2168, line: 23, type: !1254)
!2180 = !DILocalVariable(name: "__idx", scope: !2167, file: !2168, line: 23, type: !1254)
!2181 = !DILocalVariable(name: "__p", scope: !2167, file: !2168, line: 24, type: !1239)
!2182 = !DILocalVariable(name: "__comparison", scope: !2167, file: !2168, line: 25, type: !774)
!2183 = !DILocation(line: 0, scope: !2167)
!2184 = !DILocation(line: 29, column: 3, scope: !2167)
!2185 = !DILocation(line: 27, column: 7, scope: !2167)
!2186 = !DILocation(line: 29, column: 14, scope: !2167)
!2187 = !DILocation(line: 31, column: 20, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2167, file: !2168, line: 30, column: 5)
!2189 = !DILocation(line: 31, column: 27, scope: !2188)
!2190 = !DILocation(line: 32, column: 56, scope: !2188)
!2191 = !DILocation(line: 32, column: 47, scope: !2188)
!2192 = !DILocation(line: 33, column: 22, scope: !2188)
!2193 = !DILocation(line: 34, column: 24, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2188, file: !2168, line: 34, column: 11)
!2195 = !DILocation(line: 34, column: 11, scope: !2188)
!2196 = !DILocation(line: 36, column: 29, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !2168, line: 36, column: 16)
!2198 = !DILocation(line: 36, column: 16, scope: !2194)
!2199 = !DILocation(line: 37, column: 14, scope: !2197)
!2200 = distinct !{!2200, !2184, !2201}
!2201 = !DILocation(line: 40, column: 5, scope: !2167)
!2202 = !DILocation(line: 43, column: 1, scope: !2167)
!2203 = distinct !DISubprogram(name: "atof", scope: !2204, file: !2204, line: 25, type: !2205, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2204 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!2207, !779}
!2207 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2203, file: !2204, line: 25, type: !779)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocation(line: 27, column: 10, scope: !2203)
!2212 = !DILocation(line: 27, column: 3, scope: !2203)
!2213 = distinct !DISubprogram(name: "strtoimax", scope: !2214, file: !2214, line: 324, type: !2215, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2214 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!2217, !1975, !2220, !774}
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2218, line: 101, baseType: !2219)
!2218 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2027, line: 72, baseType: !869)
!2220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !775)
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "nptr", arg: 1, scope: !2213, file: !2214, line: 324, type: !1975)
!2223 = !DILocalVariable(name: "endptr", arg: 2, scope: !2213, file: !2214, line: 324, type: !2220)
!2224 = !DILocalVariable(name: "base", arg: 3, scope: !2213, file: !2214, line: 324, type: !774)
!2225 = !DILocation(line: 0, scope: !2213)
!2226 = !DILocation(line: 327, column: 10, scope: !2213)
!2227 = !DILocation(line: 327, column: 3, scope: !2213)
!2228 = distinct !DISubprogram(name: "strtoumax", scope: !2214, file: !2214, line: 336, type: !2229, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !1975, !2220, !774}
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2218, line: 102, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2027, line: 73, baseType: !852)
!2233 = !{!2234, !2235, !2236}
!2234 = !DILocalVariable(name: "nptr", arg: 1, scope: !2228, file: !2214, line: 336, type: !1975)
!2235 = !DILocalVariable(name: "endptr", arg: 2, scope: !2228, file: !2214, line: 336, type: !2220)
!2236 = !DILocalVariable(name: "base", arg: 3, scope: !2228, file: !2214, line: 336, type: !774)
!2237 = !DILocation(line: 0, scope: !2228)
!2238 = !DILocation(line: 339, column: 10, scope: !2228)
!2239 = !DILocation(line: 339, column: 3, scope: !2228)
!2240 = distinct !DISubprogram(name: "wcstoimax", scope: !2214, file: !2214, line: 348, type: !2241, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2217, !2243, !2247, !774}
!2243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2244)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2246)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2214, line: 34, baseType: !774)
!2247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2248)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2250 = !{!2251, !2252, !2253}
!2251 = !DILocalVariable(name: "nptr", arg: 1, scope: !2240, file: !2214, line: 348, type: !2243)
!2252 = !DILocalVariable(name: "endptr", arg: 2, scope: !2240, file: !2214, line: 348, type: !2247)
!2253 = !DILocalVariable(name: "base", arg: 3, scope: !2240, file: !2214, line: 348, type: !774)
!2254 = !DILocation(line: 0, scope: !2240)
!2255 = !DILocation(line: 351, column: 10, scope: !2240)
!2256 = !DILocation(line: 351, column: 3, scope: !2240)
!2257 = distinct !DISubprogram(name: "wcstoumax", scope: !2214, file: !2214, line: 362, type: !2258, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!2231, !2243, !2247, !774}
!2260 = !{!2261, !2262, !2263}
!2261 = !DILocalVariable(name: "nptr", arg: 1, scope: !2257, file: !2214, line: 362, type: !2243)
!2262 = !DILocalVariable(name: "endptr", arg: 2, scope: !2257, file: !2214, line: 362, type: !2247)
!2263 = !DILocalVariable(name: "base", arg: 3, scope: !2257, file: !2214, line: 362, type: !774)
!2264 = !DILocation(line: 0, scope: !2257)
!2265 = !DILocation(line: 365, column: 10, scope: !2257)
!2266 = !DILocation(line: 365, column: 3, scope: !2257)
!2267 = distinct !DISubprogram(name: "stat", scope: !2268, file: !2268, line: 453, type: !2269, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!774, !779, !2271}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2273, line: 46, size: 1152, elements: !2274)
!2273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2274 = !{!2275, !2277, !2279, !2281, !2283, !2285, !2287, !2288, !2289, !2290, !2292, !2294, !2302, !2303, !2304}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2272, file: !2273, line: 48, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2027, line: 145, baseType: !852)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2272, file: !2273, line: 53, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2027, line: 148, baseType: !852)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2272, file: !2273, line: 61, baseType: !2280, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2027, line: 151, baseType: !852)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2272, file: !2273, line: 62, baseType: !2282, size: 32, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2027, line: 150, baseType: !7)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2272, file: !2273, line: 64, baseType: !2284, size: 32, offset: 224)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2027, line: 146, baseType: !7)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2272, file: !2273, line: 65, baseType: !2286, size: 32, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2027, line: 147, baseType: !7)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2272, file: !2273, line: 67, baseType: !774, size: 32, offset: 288)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2272, file: !2273, line: 69, baseType: !2276, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2272, file: !2273, line: 74, baseType: !2026, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2272, file: !2273, line: 78, baseType: !2291, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2027, line: 174, baseType: !869)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2272, file: !2273, line: 80, baseType: !2293, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2027, line: 179, baseType: !869)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2272, file: !2273, line: 91, baseType: !2295, size: 128, offset: 576)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2296, line: 10, size: 128, elements: !2297)
!2296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2297 = !{!2298, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2295, file: !2296, line: 12, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2027, line: 160, baseType: !869)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2295, file: !2296, line: 16, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2027, line: 196, baseType: !869)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2272, file: !2273, line: 92, baseType: !2295, size: 128, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2272, file: !2273, line: 93, baseType: !2295, size: 128, offset: 832)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2272, file: !2273, line: 106, baseType: !2305, size: 192, offset: 960)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2301, size: 192, elements: !969)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "__path", arg: 1, scope: !2267, file: !2268, line: 453, type: !779)
!2308 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2267, file: !2268, line: 453, type: !2271)
!2309 = !DILocation(line: 0, scope: !2267)
!2310 = !DILocation(line: 455, column: 10, scope: !2267)
!2311 = !DILocation(line: 455, column: 3, scope: !2267)
!2312 = distinct !DISubprogram(name: "lstat", scope: !2268, file: !2268, line: 460, type: !2269, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "__path", arg: 1, scope: !2312, file: !2268, line: 460, type: !779)
!2315 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2312, file: !2268, line: 460, type: !2271)
!2316 = !DILocation(line: 0, scope: !2312)
!2317 = !DILocation(line: 462, column: 10, scope: !2312)
!2318 = !DILocation(line: 462, column: 3, scope: !2312)
!2319 = distinct !DISubprogram(name: "fstat", scope: !2268, file: !2268, line: 467, type: !2320, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!774, !774, !2271}
!2322 = !{!2323, !2324}
!2323 = !DILocalVariable(name: "__fd", arg: 1, scope: !2319, file: !2268, line: 467, type: !774)
!2324 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2319, file: !2268, line: 467, type: !2271)
!2325 = !DILocation(line: 0, scope: !2319)
!2326 = !DILocation(line: 469, column: 10, scope: !2319)
!2327 = !DILocation(line: 469, column: 3, scope: !2319)
!2328 = distinct !DISubprogram(name: "fstatat", scope: !2268, file: !2268, line: 474, type: !2329, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!774, !774, !779, !2271, !774}
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DILocalVariable(name: "__fd", arg: 1, scope: !2328, file: !2268, line: 474, type: !774)
!2333 = !DILocalVariable(name: "__filename", arg: 2, scope: !2328, file: !2268, line: 474, type: !779)
!2334 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2328, file: !2268, line: 474, type: !2271)
!2335 = !DILocalVariable(name: "__flag", arg: 4, scope: !2328, file: !2268, line: 474, type: !774)
!2336 = !DILocation(line: 0, scope: !2328)
!2337 = !DILocation(line: 477, column: 10, scope: !2328)
!2338 = !DILocation(line: 477, column: 3, scope: !2328)
!2339 = distinct !DISubprogram(name: "mknod", scope: !2268, file: !2268, line: 483, type: !2340, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!774, !779, !2282, !2276}
!2342 = !{!2343, !2344, !2345}
!2343 = !DILocalVariable(name: "__path", arg: 1, scope: !2339, file: !2268, line: 483, type: !779)
!2344 = !DILocalVariable(name: "__mode", arg: 2, scope: !2339, file: !2268, line: 483, type: !2282)
!2345 = !DILocalVariable(name: "__dev", arg: 3, scope: !2339, file: !2268, line: 483, type: !2276)
!2346 = !DILocation(line: 0, scope: !2339)
!2347 = !DILocation(line: 485, column: 10, scope: !2339)
!2348 = !DILocation(line: 485, column: 3, scope: !2339)
!2349 = distinct !DISubprogram(name: "mknodat", scope: !2268, file: !2268, line: 491, type: !2350, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!774, !774, !779, !2282, !2276}
!2352 = !{!2353, !2354, !2355, !2356}
!2353 = !DILocalVariable(name: "__fd", arg: 1, scope: !2349, file: !2268, line: 491, type: !774)
!2354 = !DILocalVariable(name: "__path", arg: 2, scope: !2349, file: !2268, line: 491, type: !779)
!2355 = !DILocalVariable(name: "__mode", arg: 3, scope: !2349, file: !2268, line: 491, type: !2282)
!2356 = !DILocalVariable(name: "__dev", arg: 4, scope: !2349, file: !2268, line: 491, type: !2276)
!2357 = !DILocation(line: 0, scope: !2349)
!2358 = !DILocation(line: 494, column: 10, scope: !2349)
!2359 = !DILocation(line: 494, column: 3, scope: !2349)
!2360 = distinct !DISubprogram(name: "stat64", scope: !2268, file: !2268, line: 502, type: !2361, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!774, !779, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2273, line: 119, size: 1152, elements: !2365)
!2365 = !{!2366, !2367, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2379, !2380, !2381, !2382}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2364, file: !2273, line: 121, baseType: !2276, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2364, file: !2273, line: 123, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2027, line: 149, baseType: !852)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2364, file: !2273, line: 124, baseType: !2280, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2364, file: !2273, line: 125, baseType: !2282, size: 32, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2364, file: !2273, line: 132, baseType: !2284, size: 32, offset: 224)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2364, file: !2273, line: 133, baseType: !2286, size: 32, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2364, file: !2273, line: 135, baseType: !774, size: 32, offset: 288)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2364, file: !2273, line: 136, baseType: !2276, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2364, file: !2273, line: 137, baseType: !2026, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2364, file: !2273, line: 143, baseType: !2291, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2364, file: !2273, line: 144, baseType: !2378, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2027, line: 180, baseType: !869)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2364, file: !2273, line: 152, baseType: !2295, size: 128, offset: 576)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2364, file: !2273, line: 153, baseType: !2295, size: 128, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2364, file: !2273, line: 154, baseType: !2295, size: 128, offset: 832)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2364, file: !2273, line: 164, baseType: !2305, size: 192, offset: 960)
!2383 = !{!2384, !2385}
!2384 = !DILocalVariable(name: "__path", arg: 1, scope: !2360, file: !2268, line: 502, type: !779)
!2385 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2360, file: !2268, line: 502, type: !2363)
!2386 = !DILocation(line: 0, scope: !2360)
!2387 = !DILocation(line: 504, column: 10, scope: !2360)
!2388 = !DILocation(line: 504, column: 3, scope: !2360)
!2389 = distinct !DISubprogram(name: "lstat64", scope: !2268, file: !2268, line: 509, type: !2361, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2390)
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "__path", arg: 1, scope: !2389, file: !2268, line: 509, type: !779)
!2392 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2389, file: !2268, line: 509, type: !2363)
!2393 = !DILocation(line: 0, scope: !2389)
!2394 = !DILocation(line: 511, column: 10, scope: !2389)
!2395 = !DILocation(line: 511, column: 3, scope: !2389)
!2396 = distinct !DISubprogram(name: "fstat64", scope: !2268, file: !2268, line: 516, type: !2397, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!774, !774, !2363}
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "__fd", arg: 1, scope: !2396, file: !2268, line: 516, type: !774)
!2401 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2396, file: !2268, line: 516, type: !2363)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocation(line: 518, column: 10, scope: !2396)
!2404 = !DILocation(line: 518, column: 3, scope: !2396)
!2405 = distinct !DISubprogram(name: "fstatat64", scope: !2268, file: !2268, line: 523, type: !2406, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!774, !774, !779, !2363, !774}
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DILocalVariable(name: "__fd", arg: 1, scope: !2405, file: !2268, line: 523, type: !774)
!2410 = !DILocalVariable(name: "__filename", arg: 2, scope: !2405, file: !2268, line: 523, type: !779)
!2411 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2405, file: !2268, line: 523, type: !2363)
!2412 = !DILocalVariable(name: "__flag", arg: 4, scope: !2405, file: !2268, line: 523, type: !774)
!2413 = !DILocation(line: 0, scope: !2405)
!2414 = !DILocation(line: 526, column: 10, scope: !2405)
!2415 = !DILocation(line: 526, column: 3, scope: !2405)
!2416 = distinct !DISubprogram(name: "gate_handle_lower_subreg", scope: !3, file: !3, line: 1317, type: !1944, scopeLine: 1318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!2417 = !DILocation(line: 1319, column: 10, scope: !2416)
!2418 = !DILocation(line: 1319, column: 32, scope: !2416)
!2419 = !DILocation(line: 1319, column: 3, scope: !2416)
!2420 = distinct !DISubprogram(name: "rest_of_handle_lower_subreg", scope: !3, file: !3, line: 1325, type: !1948, scopeLine: 1326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!2421 = !DILocation(line: 1327, column: 3, scope: !2420)
!2422 = !DILocation(line: 1328, column: 3, scope: !2420)
!2423 = distinct !DISubprogram(name: "rest_of_handle_lower_subreg2", scope: !3, file: !3, line: 1334, type: !1948, scopeLine: 1335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!2424 = !DILocation(line: 1336, column: 3, scope: !2423)
!2425 = !DILocation(line: 1337, column: 3, scope: !2423)
!2426 = distinct !DISubprogram(name: "decompose_multiword_subregs", scope: !3, file: !3, line: 1060, type: !2427, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null}
!2429 = !{!2430, !2431, !2432, !2434, !2438, !2442, !2443, !2444, !2445, !2458, !2459, !2470, !2478, !2479, !2483, !2487, !2492, !2493, !2496, !2497, !2499, !2506, !2507, !2508, !2512, !2513, !2514, !2516}
!2430 = !DILocalVariable(name: "max", scope: !2426, file: !3, line: 1062, type: !7)
!2431 = !DILocalVariable(name: "bb", scope: !2426, file: !3, line: 1063, type: !1316)
!2432 = !DILocalVariable(name: "i", scope: !2433, file: !3, line: 1075, type: !7)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1074, column: 3)
!2434 = !DILocalVariable(name: "insn", scope: !2435, file: !3, line: 1101, type: !782)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1100, column: 5)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1099, column: 3)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1099, column: 3)
!2438 = !DILocalVariable(name: "set", scope: !2439, file: !3, line: 1105, type: !782)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1104, column: 2)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1103, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 1103, column: 7)
!2442 = !DILocalVariable(name: "cmi", scope: !2439, file: !3, line: 1106, type: !567)
!2443 = !DILocalVariable(name: "i", scope: !2439, file: !3, line: 1107, type: !774)
!2444 = !DILocalVariable(name: "n", scope: !2439, file: !3, line: 1107, type: !774)
!2445 = !DILocalVariable(name: "sub_blocks", scope: !2446, file: !3, line: 1157, type: !2448)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 1156, column: 5)
!2447 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1155, column: 7)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2449, line: 45, baseType: !2450)
!2449 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2449, line: 39, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2451, file: !2449, line: 41, baseType: !772, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2451, file: !2449, line: 42, baseType: !7, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2451, file: !2449, line: 43, baseType: !7, size: 32, offset: 96)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2451, file: !2449, line: 44, baseType: !2457, size: 64, offset: 128)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 64, elements: !817)
!2458 = !DILocalVariable(name: "i", scope: !2446, file: !3, line: 1158, type: !7)
!2459 = !DILocalVariable(name: "sbi", scope: !2446, file: !3, line: 1159, type: !2460)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !2449, line: 111, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2449, line: 96, size: 256, elements: !2462)
!2462 = !{!2463, !2466, !2467, !2468, !2469}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2461, file: !2449, line: 98, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2461, file: !2449, line: 101, baseType: !7, size: 32, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !2461, file: !2449, line: 104, baseType: !7, size: 32, offset: 96)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !2461, file: !2449, line: 107, baseType: !7, size: 32, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2461, file: !2449, line: 110, baseType: !852, size: 64, offset: 192)
!2470 = !DILocalVariable(name: "iter", scope: !2446, file: !3, line: 1160, type: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !838, line: 218, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !838, line: 203, size: 256, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2472, file: !838, line: 206, baseType: !841, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2472, file: !838, line: 209, baseType: !841, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2472, file: !838, line: 212, baseType: !7, size: 32, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2472, file: !838, line: 217, baseType: !851, size: 64, offset: 192)
!2478 = !DILocalVariable(name: "regno", scope: !2446, file: !3, line: 1161, type: !7)
!2479 = !DILocalVariable(name: "insn", scope: !2480, file: !3, line: 1173, type: !782)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1172, column: 2)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1171, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1171, column: 7)
!2483 = !DILocalVariable(name: "pat", scope: !2484, file: !3, line: 1177, type: !782)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1176, column: 6)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 1175, column: 4)
!2486 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1175, column: 4)
!2487 = !DILocalVariable(name: "set", scope: !2488, file: !3, line: 1191, type: !782)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1190, column: 3)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1187, column: 17)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 1185, column: 17)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1183, column: 12)
!2492 = !DILocalVariable(name: "i", scope: !2488, file: !3, line: 1192, type: !774)
!2493 = !DILocalVariable(name: "orig_insn", scope: !2494, file: !3, line: 1200, type: !782)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1199, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1198, column: 9)
!2496 = !DILocalVariable(name: "cfi", scope: !2494, file: !3, line: 1201, type: !773)
!2497 = !DILocalVariable(name: "decomposed_shift", scope: !2498, file: !3, line: 1230, type: !782)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1229, column: 7)
!2499 = !DILocalVariable(name: "pl", scope: !2500, file: !3, line: 1252, type: !2505)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1251, column: 4)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1250, column: 9)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1250, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1249, column: 7)
!2504 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1248, column: 9)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!2506 = !DILocalVariable(name: "dup_num", scope: !2500, file: !3, line: 1253, type: !774)
!2507 = !DILocalVariable(name: "px", scope: !2500, file: !3, line: 1254, type: !2505)
!2508 = !DILocalVariable(name: "insn", scope: !2509, file: !3, line: 1272, type: !782)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 1271, column: 2)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1270, column: 7)
!2511 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1270, column: 7)
!2512 = !DILocalVariable(name: "end", scope: !2509, file: !3, line: 1272, type: !782)
!2513 = !DILocalVariable(name: "fallthru", scope: !2509, file: !3, line: 1273, type: !1333)
!2514 = !DILocalVariable(name: "i", scope: !2515, file: !3, line: 1300, type: !7)
!2515 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1299, column: 3)
!2516 = !DILocalVariable(name: "b", scope: !2515, file: !3, line: 1301, type: !1918)
!2517 = !DILocation(line: 1065, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1065, column: 7)
!2519 = !DILocation(line: 1065, column: 7, scope: !2426)
!2520 = !DILocation(line: 1066, column: 5, scope: !2518)
!2521 = !DILocation(line: 1068, column: 9, scope: !2426)
!2522 = !DILocation(line: 0, scope: !2426)
!2523 = !DILocation(line: 0, scope: !2433)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1079, column: 6)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1078, column: 7)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1077, column: 5)
!2528 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1077, column: 5)
!2529 = !DILocation(line: 1077, column: 10, scope: !2528)
!2530 = !DILocation(line: 0, scope: !2528)
!2531 = !DILocation(line: 1077, column: 39, scope: !2527)
!2532 = !DILocation(line: 1077, column: 5, scope: !2528)
!2533 = !DILocation(line: 1079, column: 6, scope: !2525)
!2534 = !DILocation(line: 1079, column: 23, scope: !2525)
!2535 = !DILocation(line: 1080, column: 6, scope: !2525)
!2536 = !DILocation(line: 1080, column: 9, scope: !2525)
!2537 = !DILocation(line: 1080, column: 53, scope: !2525)
!2538 = !DILocation(line: 1079, column: 6, scope: !2526)
!2539 = !DILocation(line: 1077, column: 46, scope: !2527)
!2540 = !DILocation(line: 1077, column: 5, scope: !2527)
!2541 = distinct !{!2541, !2532, !2542}
!2542 = !DILocation(line: 1082, column: 7, scope: !2528)
!2543 = !DILocation(line: 1083, column: 11, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1083, column: 9)
!2545 = !DILocation(line: 1092, column: 26, scope: !2426)
!2546 = !DILocation(line: 1092, column: 24, scope: !2426)
!2547 = !DILocation(line: 1093, column: 30, scope: !2426)
!2548 = !DILocation(line: 1093, column: 28, scope: !2426)
!2549 = !DILocation(line: 1095, column: 20, scope: !2426)
!2550 = !DILocation(line: 1095, column: 18, scope: !2426)
!2551 = !DILocation(line: 1096, column: 3, scope: !2426)
!2552 = !DILocation(line: 1097, column: 11, scope: !2426)
!2553 = !DILocation(line: 1097, column: 70, scope: !2426)
!2554 = !DILocation(line: 1097, column: 68, scope: !2426)
!2555 = !DILocation(line: 1097, column: 3, scope: !2426)
!2556 = !DILocation(line: 1099, column: 3, scope: !2437)
!2557 = !DILocation(line: 0, scope: !2439)
!2558 = !DILocation(line: 1099, column: 3, scope: !2436)
!2559 = !DILocation(line: 0, scope: !2437)
!2560 = !DILocation(line: 1103, column: 7, scope: !2441)
!2561 = !DILocation(line: 0, scope: !2441)
!2562 = !DILocation(line: 0, scope: !2435)
!2563 = !DILocation(line: 1103, column: 7, scope: !2440)
!2564 = !DILocation(line: 1106, column: 4, scope: !2439)
!2565 = !DILocation(line: 1109, column: 9, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1109, column: 8)
!2567 = !DILocation(line: 1110, column: 8, scope: !2566)
!2568 = !DILocation(line: 1110, column: 11, scope: !2566)
!2569 = !DILocation(line: 1110, column: 37, scope: !2566)
!2570 = !DILocation(line: 1111, column: 8, scope: !2566)
!2571 = !DILocation(line: 1111, column: 37, scope: !2566)
!2572 = !DILocation(line: 1109, column: 8, scope: !2439)
!2573 = !DILocation(line: 1114, column: 8, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1114, column: 8)
!2575 = !DILocation(line: 1114, column: 8, scope: !2439)
!2576 = !DILocation(line: 1117, column: 4, scope: !2439)
!2577 = !DILocation(line: 1118, column: 4, scope: !2439)
!2578 = !DILocation(line: 1120, column: 10, scope: !2439)
!2579 = !DILocation(line: 1122, column: 9, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1122, column: 8)
!2581 = !DILocation(line: 1122, column: 8, scope: !2439)
!2582 = !DILocation(line: 1123, column: 10, scope: !2580)
!2583 = !DILocation(line: 1123, column: 6, scope: !2580)
!2584 = !DILocation(line: 1126, column: 12, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1126, column: 12)
!2586 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1125, column: 6)
!2587 = !DILocation(line: 1126, column: 12, scope: !2586)
!2588 = !DILocation(line: 1127, column: 7, scope: !2585)
!2589 = !DILocation(line: 1127, column: 3, scope: !2585)
!2590 = !DILocation(line: 1129, column: 7, scope: !2585)
!2591 = !DILocation(line: 1132, column: 19, scope: !2439)
!2592 = !DILocation(line: 0, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1144, column: 12)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1134, column: 6)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1133, column: 4)
!2596 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1133, column: 4)
!2597 = !DILocation(line: 1133, column: 9, scope: !2596)
!2598 = !DILocation(line: 0, scope: !2596)
!2599 = !DILocation(line: 1133, column: 18, scope: !2595)
!2600 = !DILocation(line: 1133, column: 4, scope: !2596)
!2601 = !DILocation(line: 1135, column: 23, scope: !2594)
!2602 = !DILocation(line: 1135, column: 8, scope: !2594)
!2603 = !DILocation(line: 1144, column: 12, scope: !2593)
!2604 = !DILocation(line: 1144, column: 16, scope: !2593)
!2605 = !DILocation(line: 1145, column: 5, scope: !2593)
!2606 = !DILocation(line: 1145, column: 8, scope: !2593)
!2607 = !DILocation(line: 1145, column: 33, scope: !2593)
!2608 = !DILocation(line: 1144, column: 12, scope: !2594)
!2609 = !DILocation(line: 1147, column: 5, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 1146, column: 3)
!2611 = !DILocation(line: 1148, column: 9, scope: !2610)
!2612 = !DILocation(line: 1149, column: 3, scope: !2610)
!2613 = !DILocation(line: 1133, column: 23, scope: !2595)
!2614 = !DILocation(line: 1133, column: 4, scope: !2595)
!2615 = distinct !{!2615, !2600, !2616}
!2616 = !DILocation(line: 1150, column: 6, scope: !2596)
!2617 = !DILocation(line: 1151, column: 2, scope: !2440)
!2618 = distinct !{!2618, !2560, !2619}
!2619 = !DILocation(line: 1151, column: 2, scope: !2441)
!2620 = !DILocation(line: 0, scope: !2436)
!2621 = distinct !{!2621, !2556, !2622}
!2622 = !DILocation(line: 1152, column: 5, scope: !2437)
!2623 = !DILocation(line: 1154, column: 26, scope: !2426)
!2624 = !DILocation(line: 1154, column: 48, scope: !2426)
!2625 = !DILocation(line: 1154, column: 3, scope: !2426)
!2626 = !DILocation(line: 1155, column: 8, scope: !2447)
!2627 = !DILocation(line: 1155, column: 7, scope: !2426)
!2628 = !DILocation(line: 1158, column: 7, scope: !2446)
!2629 = !DILocation(line: 1159, column: 7, scope: !2446)
!2630 = !DILocation(line: 1160, column: 7, scope: !2446)
!2631 = !DILocation(line: 1161, column: 7, scope: !2446)
!2632 = !DILocation(line: 1163, column: 7, scope: !2446)
!2633 = !DILocation(line: 1165, column: 35, scope: !2446)
!2634 = !DILocation(line: 1165, column: 20, scope: !2446)
!2635 = !DILocation(line: 0, scope: !2446)
!2636 = !DILocation(line: 1166, column: 7, scope: !2446)
!2637 = !DILocation(line: 1168, column: 7, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1168, column: 7)
!2639 = !DILocation(line: 1168, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1168, column: 7)
!2641 = !DILocation(line: 1169, column: 22, scope: !2640)
!2642 = !DILocation(line: 1169, column: 2, scope: !2640)
!2643 = distinct !{!2643, !2637, !2644}
!2644 = !DILocation(line: 1169, column: 27, scope: !2638)
!2645 = !DILocation(line: 1171, column: 7, scope: !2482)
!2646 = !DILocation(line: 1171, column: 7, scope: !2481)
!2647 = !DILocation(line: 0, scope: !2482)
!2648 = !DILocation(line: 1175, column: 4, scope: !2486)
!2649 = !DILocation(line: 0, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1224, column: 10)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1220, column: 4)
!2652 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1219, column: 13)
!2653 = !DILocation(line: 0, scope: !2486)
!2654 = !DILocation(line: 0, scope: !2480)
!2655 = !DILocation(line: 1175, column: 4, scope: !2485)
!2656 = !DILocation(line: 1179, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 1179, column: 12)
!2658 = !DILocation(line: 1179, column: 12, scope: !2484)
!2659 = !DILocation(line: 1182, column: 14, scope: !2484)
!2660 = !DILocation(line: 0, scope: !2484)
!2661 = !DILocation(line: 1183, column: 12, scope: !2491)
!2662 = !DILocation(line: 1183, column: 27, scope: !2491)
!2663 = !DILocation(line: 1183, column: 12, scope: !2484)
!2664 = !DILocation(line: 1184, column: 3, scope: !2491)
!2665 = !DILocation(line: 1185, column: 32, scope: !2490)
!2666 = !DILocation(line: 1185, column: 17, scope: !2491)
!2667 = !DILocation(line: 1186, column: 3, scope: !2490)
!2668 = !DILocation(line: 1187, column: 17, scope: !2489)
!2669 = !DILocation(line: 1187, column: 17, scope: !2490)
!2670 = !DILocation(line: 1188, column: 3, scope: !2489)
!2671 = !DILocation(line: 1194, column: 5, scope: !2488)
!2672 = !DILocation(line: 1195, column: 5, scope: !2488)
!2673 = !DILocation(line: 1197, column: 11, scope: !2488)
!2674 = !DILocation(line: 0, scope: !2488)
!2675 = !DILocation(line: 1198, column: 9, scope: !2495)
!2676 = !DILocation(line: 1198, column: 9, scope: !2488)
!2677 = !DILocation(line: 0, scope: !2494)
!2678 = !DILocation(line: 1201, column: 20, scope: !2494)
!2679 = !DILocation(line: 1214, column: 9, scope: !2494)
!2680 = !DILocation(line: 1218, column: 16, scope: !2494)
!2681 = !DILocation(line: 1219, column: 18, scope: !2652)
!2682 = !DILocation(line: 1219, column: 13, scope: !2494)
!2683 = !DILocation(line: 1221, column: 6, scope: !2651)
!2684 = !DILocation(line: 1222, column: 6, scope: !2651)
!2685 = !DILocation(line: 1224, column: 10, scope: !2651)
!2686 = !DILocation(line: 1225, column: 33, scope: !2650)
!2687 = !DILocation(line: 1225, column: 8, scope: !2650)
!2688 = !DILocation(line: 1232, column: 28, scope: !2498)
!2689 = !DILocation(line: 0, scope: !2498)
!2690 = !DILocation(line: 1233, column: 30, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1233, column: 13)
!2692 = !DILocation(line: 1233, column: 13, scope: !2498)
!2693 = !DILocation(line: 1236, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1234, column: 4)
!2695 = !DILocation(line: 1237, column: 6, scope: !2694)
!2696 = !DILocation(line: 1238, column: 4, scope: !2694)
!2697 = !DILocation(line: 0, scope: !2495)
!2698 = !DILocation(line: 1241, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1241, column: 5)
!2700 = !DILocation(line: 0, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1241, column: 5)
!2702 = !DILocation(line: 1241, column: 10, scope: !2699)
!2703 = !DILocation(line: 0, scope: !2699)
!2704 = !DILocation(line: 1241, column: 43, scope: !2701)
!2705 = !DILocation(line: 1241, column: 5, scope: !2699)
!2706 = !DILocation(line: 1242, column: 21, scope: !2701)
!2707 = !DILocation(line: 1242, column: 7, scope: !2701)
!2708 = !DILocation(line: 1241, column: 5, scope: !2701)
!2709 = distinct !{!2709, !2705, !2710}
!2710 = !DILocation(line: 1244, column: 11, scope: !2699)
!2711 = !DILocation(line: 1246, column: 5, scope: !2488)
!2712 = !DILocation(line: 1248, column: 9, scope: !2504)
!2713 = !DILocation(line: 1248, column: 34, scope: !2504)
!2714 = !DILocation(line: 1248, column: 9, scope: !2488)
!2715 = !DILocation(line: 1250, column: 29, scope: !2502)
!2716 = !DILocation(line: 1250, column: 14, scope: !2502)
!2717 = !DILocation(line: 0, scope: !2502)
!2718 = !DILocation(line: 1250, column: 43, scope: !2501)
!2719 = !DILocation(line: 1250, column: 9, scope: !2502)
!2720 = !DILocation(line: 1252, column: 16, scope: !2500)
!2721 = !DILocation(line: 0, scope: !2500)
!2722 = !DILocation(line: 1253, column: 20, scope: !2500)
!2723 = !DILocation(line: 1254, column: 16, scope: !2500)
!2724 = !DILocation(line: 1256, column: 41, scope: !2500)
!2725 = !DILocation(line: 1256, column: 6, scope: !2500)
!2726 = !DILocation(line: 1250, column: 9, scope: !2501)
!2727 = distinct !{!2727, !2719, !2728}
!2728 = !DILocation(line: 1257, column: 4, scope: !2502)
!2729 = !DILocation(line: 1259, column: 13, scope: !2503)
!2730 = !DILocation(line: 1260, column: 9, scope: !2503)
!2731 = distinct !{!2731, !2648, !2732}
!2732 = !DILocation(line: 1263, column: 6, scope: !2486)
!2733 = !DILocation(line: 0, scope: !2481)
!2734 = distinct !{!2734, !2645, !2735}
!2735 = !DILocation(line: 1264, column: 2, scope: !2482)
!2736 = !DILocation(line: 1270, column: 7, scope: !2511)
!2737 = !DILocation(line: 1270, column: 7, scope: !2510)
!2738 = !DILocation(line: 1275, column: 9, scope: !2509)
!2739 = !DILocation(line: 1276, column: 11, scope: !2509)
!2740 = !DILocation(line: 1277, column: 10, scope: !2509)
!2741 = !DILocation(line: 0, scope: !2509)
!2742 = !DILocation(line: 1279, column: 4, scope: !2509)
!2743 = !DILocation(line: 1279, column: 16, scope: !2509)
!2744 = !DILocation(line: 1281, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1281, column: 12)
!2746 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1280, column: 6)
!2747 = !DILocation(line: 1281, column: 12, scope: !2746)
!2748 = !DILocation(line: 1286, column: 33, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1282, column: 3)
!2750 = !DILocation(line: 1286, column: 16, scope: !2749)
!2751 = !DILocation(line: 1287, column: 33, scope: !2749)
!2752 = !DILocation(line: 1287, column: 5, scope: !2749)
!2753 = !DILocation(line: 1288, column: 20, scope: !2749)
!2754 = !DILocation(line: 1289, column: 12, scope: !2749)
!2755 = !DILocation(line: 1290, column: 3, scope: !2749)
!2756 = !DILocation(line: 1292, column: 17, scope: !2745)
!2757 = distinct !{!2757, !2742, !2758}
!2758 = !DILocation(line: 1293, column: 6, scope: !2509)
!2759 = distinct !{!2759, !2736, !2760}
!2760 = !DILocation(line: 1294, column: 2, scope: !2511)
!2761 = !DILocation(line: 1296, column: 7, scope: !2446)
!2762 = !DILocation(line: 1297, column: 5, scope: !2447)
!2763 = !DILocation(line: 1297, column: 5, scope: !2446)
!2764 = !DILocation(line: 1301, column: 5, scope: !2515)
!2765 = !DILocation(line: 0, scope: !2515)
!2766 = !DILocation(line: 1303, column: 10, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1303, column: 5)
!2768 = !DILocation(line: 0, scope: !2767)
!2769 = !DILocation(line: 1303, column: 17, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1303, column: 5)
!2771 = !DILocation(line: 1303, column: 5, scope: !2767)
!2772 = !DILocation(line: 1304, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1304, column: 11)
!2774 = !DILocation(line: 1304, column: 11, scope: !2770)
!2775 = !DILocation(line: 1305, column: 2, scope: !2773)
!2776 = !DILocation(line: 1303, column: 61, scope: !2770)
!2777 = !DILocation(line: 1303, column: 5, scope: !2770)
!2778 = distinct !{!2778, !2771, !2779}
!2779 = !DILocation(line: 1305, column: 2, scope: !2767)
!2780 = !DILocation(line: 1306, column: 3, scope: !2426)
!2781 = !DILocation(line: 1308, column: 3, scope: !2426)
!2782 = !DILocation(line: 1310, column: 3, scope: !2426)
!2783 = !DILocation(line: 1311, column: 3, scope: !2426)
!2784 = !DILocation(line: 1312, column: 1, scope: !2426)
!2785 = distinct !DISubprogram(name: "VEC_bitmap_heap_alloc", scope: !3, file: !3, line: 50, type: !2786, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!1919, !774}
!2788 = !{!2789}
!2789 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2785, file: !3, line: 50, type: !774)
!2790 = !DILocation(line: 0, scope: !2785)
!2791 = !DILocation(line: 50, column: 1, scope: !2785)
!2792 = distinct !DISubprogram(name: "VEC_bitmap_heap_safe_grow", scope: !3, file: !3, line: 50, type: !2793, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !2795, !774}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "vec_", arg: 1, scope: !2792, file: !3, line: 50, type: !2795)
!2798 = !DILocalVariable(name: "size_", arg: 2, scope: !2792, file: !3, line: 50, type: !774)
!2799 = !DILocation(line: 0, scope: !2792)
!2800 = !DILocation(line: 50, column: 1, scope: !2792)
!2801 = distinct !DISubprogram(name: "VEC_bitmap_base_address", scope: !3, file: !3, line: 49, type: !2802, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "vec_", arg: 1, scope: !2801, file: !3, line: 49, type: !2805)
!2808 = !DILocation(line: 0, scope: !2801)
!2809 = !DILocation(line: 49, column: 1, scope: !2801)
!2810 = distinct !DISubprogram(name: "find_decomposable_shift_zext", scope: !3, file: !3, line: 910, type: !2811, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!774, !782}
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DILocalVariable(name: "insn", arg: 1, scope: !2810, file: !3, line: 910, type: !782)
!2815 = !DILocalVariable(name: "set", scope: !2810, file: !3, line: 912, type: !782)
!2816 = !DILocalVariable(name: "op", scope: !2810, file: !3, line: 913, type: !782)
!2817 = !DILocalVariable(name: "op_operand", scope: !2810, file: !3, line: 914, type: !782)
!2818 = !DILocation(line: 0, scope: !2810)
!2819 = !DILocation(line: 916, column: 9, scope: !2810)
!2820 = !DILocation(line: 917, column: 8, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 917, column: 7)
!2822 = !DILocation(line: 917, column: 7, scope: !2810)
!2823 = !DILocation(line: 920, column: 8, scope: !2810)
!2824 = !DILocation(line: 921, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 921, column: 7)
!2826 = !DILocation(line: 921, column: 21, scope: !2825)
!2827 = !DILocation(line: 922, column: 7, scope: !2825)
!2828 = !DILocation(line: 922, column: 24, scope: !2825)
!2829 = !DILocation(line: 923, column: 7, scope: !2825)
!2830 = !DILocation(line: 923, column: 24, scope: !2825)
!2831 = !DILocation(line: 921, column: 7, scope: !2810)
!2832 = !DILocation(line: 926, column: 16, scope: !2810)
!2833 = !DILocation(line: 927, column: 8, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 927, column: 7)
!2835 = !DILocation(line: 927, column: 31, scope: !2834)
!2836 = !DILocation(line: 927, column: 35, scope: !2834)
!2837 = !DILocation(line: 928, column: 7, scope: !2834)
!2838 = !DILocation(line: 928, column: 10, scope: !2834)
!2839 = !DILocation(line: 929, column: 7, scope: !2834)
!2840 = !DILocation(line: 929, column: 10, scope: !2834)
!2841 = !DILocation(line: 930, column: 7, scope: !2834)
!2842 = !DILocation(line: 930, column: 11, scope: !2834)
!2843 = !DILocation(line: 927, column: 7, scope: !2810)
!2844 = !DILocation(line: 933, column: 7, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 933, column: 7)
!2846 = !DILocation(line: 933, column: 21, scope: !2845)
!2847 = !DILocation(line: 933, column: 7, scope: !2810)
!2848 = !DILocation(line: 935, column: 11, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 935, column: 11)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 934, column: 5)
!2851 = !DILocation(line: 935, column: 36, scope: !2849)
!2852 = !DILocation(line: 935, column: 33, scope: !2849)
!2853 = !DILocation(line: 936, column: 4, scope: !2849)
!2854 = !DILocation(line: 936, column: 7, scope: !2849)
!2855 = !DILocation(line: 936, column: 40, scope: !2849)
!2856 = !DILocation(line: 935, column: 11, scope: !2850)
!2857 = !DILocation(line: 941, column: 12, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 941, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 940, column: 5)
!2860 = !DILocation(line: 942, column: 4, scope: !2858)
!2861 = !DILocation(line: 942, column: 7, scope: !2858)
!2862 = !DILocation(line: 942, column: 29, scope: !2858)
!2863 = !DILocation(line: 943, column: 4, scope: !2858)
!2864 = !DILocation(line: 943, column: 7, scope: !2858)
!2865 = !DILocation(line: 943, column: 48, scope: !2858)
!2866 = !DILocation(line: 941, column: 11, scope: !2859)
!2867 = !DILocation(line: 947, column: 19, scope: !2810)
!2868 = !DILocation(line: 947, column: 41, scope: !2810)
!2869 = !DILocation(line: 947, column: 3, scope: !2810)
!2870 = !DILocation(line: 949, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 949, column: 7)
!2872 = !DILocation(line: 949, column: 21, scope: !2871)
!2873 = !DILocation(line: 949, column: 7, scope: !2810)
!2874 = !DILocation(line: 950, column: 21, scope: !2871)
!2875 = !DILocation(line: 950, column: 43, scope: !2871)
!2876 = !DILocation(line: 950, column: 5, scope: !2871)
!2877 = !DILocation(line: 953, column: 1, scope: !2810)
!2878 = distinct !DISubprogram(name: "recog_memoized", scope: !2879, file: !2879, line: 150, type: !2811, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2879 = !DIFile(filename: "./recog.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "insn", arg: 1, scope: !2878, file: !2879, line: 150, type: !782)
!2882 = !DILocation(line: 0, scope: !2878)
!2883 = !DILocation(line: 152, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2878, file: !2879, line: 152, column: 7)
!2885 = !DILocation(line: 152, column: 24, scope: !2884)
!2886 = !DILocation(line: 152, column: 7, scope: !2878)
!2887 = !DILocation(line: 153, column: 31, scope: !2884)
!2888 = !DILocation(line: 153, column: 24, scope: !2884)
!2889 = !DILocation(line: 153, column: 22, scope: !2884)
!2890 = !DILocation(line: 153, column: 5, scope: !2884)
!2891 = !DILocation(line: 154, column: 10, scope: !2878)
!2892 = !DILocation(line: 154, column: 3, scope: !2878)
!2893 = distinct !DISubprogram(name: "simple_move", scope: !3, file: !3, line: 101, type: !2894, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!782, !782}
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DILocalVariable(name: "insn", arg: 1, scope: !2893, file: !3, line: 101, type: !782)
!2898 = !DILocalVariable(name: "x", scope: !2893, file: !3, line: 103, type: !782)
!2899 = !DILocalVariable(name: "set", scope: !2893, file: !3, line: 104, type: !782)
!2900 = !DILocalVariable(name: "mode", scope: !2893, file: !3, line: 105, type: !189)
!2901 = !DILocation(line: 0, scope: !2893)
!2902 = !DILocation(line: 107, column: 18, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 107, column: 7)
!2904 = !DILocation(line: 107, column: 29, scope: !2903)
!2905 = !DILocation(line: 107, column: 7, scope: !2893)
!2906 = !DILocation(line: 110, column: 9, scope: !2893)
!2907 = !DILocation(line: 111, column: 8, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 111, column: 7)
!2909 = !DILocation(line: 111, column: 7, scope: !2893)
!2910 = !DILocation(line: 114, column: 7, scope: !2893)
!2911 = !DILocation(line: 115, column: 12, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 115, column: 7)
!2913 = !DILocation(line: 115, column: 9, scope: !2912)
!2914 = !DILocation(line: 115, column: 42, scope: !2912)
!2915 = !DILocation(line: 115, column: 39, scope: !2912)
!2916 = !DILocation(line: 115, column: 34, scope: !2912)
!2917 = !DILocation(line: 117, column: 8, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 117, column: 7)
!2919 = !DILocation(line: 117, column: 7, scope: !2893)
!2920 = !DILocation(line: 120, column: 7, scope: !2893)
!2921 = !DILocation(line: 121, column: 12, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 121, column: 7)
!2923 = !DILocation(line: 121, column: 9, scope: !2922)
!2924 = !DILocation(line: 121, column: 42, scope: !2922)
!2925 = !DILocation(line: 121, column: 39, scope: !2922)
!2926 = !DILocation(line: 121, column: 34, scope: !2922)
!2927 = !DILocation(line: 125, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 125, column: 7)
!2929 = !DILocation(line: 125, column: 20, scope: !2928)
!2930 = !DILocation(line: 126, column: 7, scope: !2928)
!2931 = !DILocation(line: 126, column: 11, scope: !2928)
!2932 = !DILocation(line: 125, column: 7, scope: !2893)
!2933 = !DILocation(line: 134, column: 10, scope: !2893)
!2934 = !DILocation(line: 135, column: 8, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 135, column: 7)
!2936 = !DILocation(line: 136, column: 7, scope: !2935)
!2937 = !DILocation(line: 136, column: 26, scope: !2935)
!2938 = !DILocation(line: 136, column: 47, scope: !2935)
!2939 = !DILocation(line: 136, column: 11, scope: !2935)
!2940 = !DILocation(line: 137, column: 4, scope: !2935)
!2941 = !DILocation(line: 135, column: 7, scope: !2893)
!2942 = !DILocation(line: 142, column: 29, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 142, column: 7)
!2944 = !DILocation(line: 146, column: 1, scope: !2893)
!2945 = distinct !DISubprogram(name: "find_pseudo_copy", scope: !3, file: !3, line: 153, type: !2946, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!773, !782}
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954}
!2949 = !DILocalVariable(name: "set", arg: 1, scope: !2945, file: !3, line: 153, type: !782)
!2950 = !DILocalVariable(name: "dest", scope: !2945, file: !3, line: 155, type: !782)
!2951 = !DILocalVariable(name: "src", scope: !2945, file: !3, line: 156, type: !782)
!2952 = !DILocalVariable(name: "rd", scope: !2945, file: !3, line: 157, type: !7)
!2953 = !DILocalVariable(name: "rs", scope: !2945, file: !3, line: 157, type: !7)
!2954 = !DILocalVariable(name: "b", scope: !2945, file: !3, line: 158, type: !1918)
!2955 = !DILocation(line: 0, scope: !2945)
!2956 = !DILocation(line: 155, column: 14, scope: !2945)
!2957 = !DILocation(line: 156, column: 13, scope: !2945)
!2958 = !DILocation(line: 160, column: 8, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 160, column: 7)
!2960 = !DILocation(line: 160, column: 21, scope: !2959)
!2961 = !DILocation(line: 160, column: 25, scope: !2959)
!2962 = !DILocation(line: 160, column: 7, scope: !2945)
!2963 = !DILocation(line: 163, column: 8, scope: !2945)
!2964 = !DILocation(line: 164, column: 8, scope: !2945)
!2965 = !DILocation(line: 165, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 165, column: 7)
!2967 = !DILocation(line: 165, column: 35, scope: !2966)
!2968 = !DILocation(line: 165, column: 32, scope: !2966)
!2969 = !DILocation(line: 168, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 168, column: 7)
!2971 = !DILocation(line: 168, column: 39, scope: !2970)
!2972 = !DILocation(line: 168, column: 7, scope: !2945)
!2973 = !DILocation(line: 171, column: 7, scope: !2945)
!2974 = !DILocation(line: 172, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 172, column: 7)
!2976 = !DILocation(line: 172, column: 7, scope: !2945)
!2977 = !DILocation(line: 174, column: 11, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 173, column: 5)
!2979 = !DILocation(line: 175, column: 7, scope: !2978)
!2980 = !DILocation(line: 176, column: 5, scope: !2978)
!2981 = !DILocation(line: 178, column: 3, scope: !2945)
!2982 = !DILocation(line: 180, column: 3, scope: !2945)
!2983 = !DILocation(line: 181, column: 1, scope: !2945)
!2984 = distinct !DISubprogram(name: "find_decomposable_subregs", scope: !3, file: !3, line: 242, type: !2985, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!774, !2505, !778}
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2995, !2996, !2997, !2998, !2999, !3000, !3003}
!2988 = !DILocalVariable(name: "px", arg: 1, scope: !2984, file: !3, line: 242, type: !2505)
!2989 = !DILocalVariable(name: "data", arg: 2, scope: !2984, file: !3, line: 242, type: !778)
!2990 = !DILocalVariable(name: "pcmi", scope: !2984, file: !3, line: 244, type: !1931)
!2991 = !DILocalVariable(name: "x", scope: !2984, file: !3, line: 245, type: !782)
!2992 = !DILocalVariable(name: "inner", scope: !2993, file: !3, line: 252, type: !782)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 251, column: 5)
!2994 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 250, column: 7)
!2995 = !DILocalVariable(name: "regno", scope: !2993, file: !3, line: 253, type: !7)
!2996 = !DILocalVariable(name: "outer_size", scope: !2993, file: !3, line: 253, type: !7)
!2997 = !DILocalVariable(name: "inner_size", scope: !2993, file: !3, line: 253, type: !7)
!2998 = !DILocalVariable(name: "outer_words", scope: !2993, file: !3, line: 253, type: !7)
!2999 = !DILocalVariable(name: "inner_words", scope: !2993, file: !3, line: 253, type: !7)
!3000 = !DILocalVariable(name: "regno", scope: !3001, file: !3, line: 297, type: !7)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 296, column: 5)
!3002 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 295, column: 12)
!3003 = !DILocalVariable(name: "cmi_mem", scope: !3004, file: !3, line: 337, type: !567)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 336, column: 5)
!3005 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 335, column: 12)
!3006 = !DILocation(line: 0, scope: !2984)
!3007 = !DILocation(line: 244, column: 35, scope: !2984)
!3008 = !DILocation(line: 245, column: 11, scope: !2984)
!3009 = !DILocation(line: 247, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 247, column: 7)
!3011 = !DILocation(line: 247, column: 7, scope: !2984)
!3012 = !DILocation(line: 250, column: 7, scope: !2994)
!3013 = !DILocation(line: 250, column: 20, scope: !2994)
!3014 = !DILocation(line: 250, column: 7, scope: !2984)
!3015 = !DILocation(line: 252, column: 19, scope: !2993)
!3016 = !DILocation(line: 0, scope: !2993)
!3017 = !DILocation(line: 255, column: 12, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 255, column: 11)
!3019 = !DILocation(line: 255, column: 11, scope: !2993)
!3020 = !DILocation(line: 258, column: 15, scope: !2993)
!3021 = !DILocation(line: 259, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 259, column: 11)
!3023 = !DILocation(line: 259, column: 11, scope: !2993)
!3024 = !DILocation(line: 262, column: 20, scope: !2993)
!3025 = !DILocation(line: 263, column: 20, scope: !2993)
!3026 = !DILocation(line: 264, column: 50, scope: !2993)
!3027 = !DILocation(line: 277, column: 23, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 277, column: 11)
!3029 = !DILocation(line: 277, column: 43, scope: !3028)
!3030 = !DILocation(line: 277, column: 28, scope: !3028)
!3031 = !DILocation(line: 279, column: 20, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 278, column: 2)
!3033 = !DILocation(line: 279, column: 4, scope: !3032)
!3034 = !DILocation(line: 280, column: 4, scope: !3032)
!3035 = !DILocation(line: 287, column: 23, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 287, column: 11)
!3037 = !DILocation(line: 288, column: 18, scope: !3036)
!3038 = !DILocation(line: 288, column: 4, scope: !3036)
!3039 = !DILocation(line: 289, column: 8, scope: !3036)
!3040 = !DILocation(line: 287, column: 11, scope: !2993)
!3041 = !DILocation(line: 291, column: 20, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 290, column: 2)
!3043 = !DILocation(line: 291, column: 4, scope: !3042)
!3044 = !DILocation(line: 292, column: 4, scope: !3042)
!3045 = !DILocation(line: 295, column: 12, scope: !3002)
!3046 = !DILocation(line: 295, column: 12, scope: !2994)
!3047 = !DILocation(line: 315, column: 15, scope: !3001)
!3048 = !DILocation(line: 0, scope: !3001)
!3049 = !DILocation(line: 316, column: 12, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 316, column: 11)
!3051 = !DILocation(line: 317, column: 4, scope: !3050)
!3052 = !DILocation(line: 317, column: 7, scope: !3050)
!3053 = !DILocation(line: 317, column: 36, scope: !3050)
!3054 = !DILocation(line: 316, column: 11, scope: !3001)
!3055 = !DILocation(line: 319, column: 12, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 318, column: 2)
!3057 = !DILocation(line: 319, column: 4, scope: !3056)
!3058 = !DILocation(line: 322, column: 24, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 320, column: 6)
!3060 = !DILocation(line: 322, column: 8, scope: !3059)
!3061 = !DILocation(line: 323, column: 8, scope: !3059)
!3062 = !DILocation(line: 325, column: 12, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 325, column: 12)
!3064 = !DILocation(line: 325, column: 12, scope: !3059)
!3065 = !DILocation(line: 326, column: 19, scope: !3063)
!3066 = !DILocation(line: 326, column: 3, scope: !3063)
!3067 = !DILocation(line: 331, column: 8, scope: !3059)
!3068 = !DILocation(line: 332, column: 6, scope: !3059)
!3069 = !DILocation(line: 335, column: 12, scope: !3005)
!3070 = !DILocation(line: 335, column: 12, scope: !3002)
!3071 = !DILocation(line: 337, column: 7, scope: !3004)
!3072 = !DILocation(line: 0, scope: !3004)
!3073 = !DILocation(line: 337, column: 31, scope: !3004)
!3074 = !DILocation(line: 342, column: 22, scope: !3004)
!3075 = !DILocation(line: 342, column: 7, scope: !3004)
!3076 = !DILocation(line: 344, column: 5, scope: !3005)
!3077 = !DILocation(line: 346, column: 3, scope: !2984)
!3078 = !DILocation(line: 347, column: 1, scope: !2984)
!3079 = distinct !DISubprogram(name: "propagate_pseudo_copies", scope: !3, file: !3, line: 190, type: !2427, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3080 = !{!3081, !3082, !3083, !3085, !3086}
!3081 = !DILocalVariable(name: "queue", scope: !3079, file: !3, line: 192, type: !1918)
!3082 = !DILocalVariable(name: "propagate", scope: !3079, file: !3, line: 192, type: !1918)
!3083 = !DILocalVariable(name: "iter", scope: !3084, file: !3, line: 200, type: !2471)
!3084 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 199, column: 5)
!3085 = !DILocalVariable(name: "i", scope: !3084, file: !3, line: 201, type: !7)
!3086 = !DILocalVariable(name: "b", scope: !3087, file: !3, line: 207, type: !1918)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 206, column: 2)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 205, column: 7)
!3089 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 205, column: 7)
!3090 = !DILocation(line: 194, column: 11, scope: !3079)
!3091 = !DILocation(line: 0, scope: !3079)
!3092 = !DILocation(line: 195, column: 15, scope: !3079)
!3093 = !DILocation(line: 197, column: 23, scope: !3079)
!3094 = !DILocation(line: 197, column: 3, scope: !3079)
!3095 = !DILocation(line: 0, scope: !3084)
!3096 = !DILocation(line: 198, column: 3, scope: !3079)
!3097 = !DILocation(line: 200, column: 7, scope: !3084)
!3098 = !DILocation(line: 201, column: 7, scope: !3084)
!3099 = !DILocation(line: 203, column: 7, scope: !3084)
!3100 = !DILocation(line: 205, column: 7, scope: !3089)
!3101 = !DILocation(line: 205, column: 7, scope: !3088)
!3102 = !DILocation(line: 207, column: 15, scope: !3087)
!3103 = !DILocation(line: 0, scope: !3087)
!3104 = !DILocation(line: 208, column: 8, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 208, column: 8)
!3106 = !DILocation(line: 208, column: 8, scope: !3087)
!3107 = !DILocation(line: 209, column: 47, scope: !3105)
!3108 = !DILocation(line: 209, column: 6, scope: !3105)
!3109 = distinct !{!3109, !3100, !3110}
!3110 = !DILocation(line: 210, column: 2, scope: !3089)
!3111 = !DILocation(line: 212, column: 43, scope: !3084)
!3112 = !DILocation(line: 212, column: 7, scope: !3084)
!3113 = !DILocation(line: 213, column: 24, scope: !3084)
!3114 = !DILocation(line: 213, column: 7, scope: !3084)
!3115 = !DILocation(line: 214, column: 5, scope: !3079)
!3116 = !DILocation(line: 215, column: 11, scope: !3079)
!3117 = !DILocation(line: 214, column: 5, scope: !3084)
!3118 = distinct !{!3118, !3096, !3119}
!3119 = !DILocation(line: 215, column: 33, scope: !3079)
!3120 = !DILocation(line: 217, column: 3, scope: !3079)
!3121 = !DILocation(line: 218, column: 3, scope: !3079)
!3122 = !DILocation(line: 219, column: 1, scope: !3079)
!3123 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !838, file: !838, line: 224, type: !3124, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3131)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3126, !3127, !7, !3130}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !783, line: 48, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3131 = !{!3132, !3133, !3134, !3135}
!3132 = !DILocalVariable(name: "bi", arg: 1, scope: !3123, file: !838, line: 224, type: !3126)
!3133 = !DILocalVariable(name: "map", arg: 2, scope: !3123, file: !838, line: 224, type: !3127)
!3134 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3123, file: !838, line: 225, type: !7)
!3135 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3123, file: !838, line: 225, type: !3130)
!3136 = !DILocation(line: 0, scope: !3123)
!3137 = !DILocation(line: 227, column: 19, scope: !3123)
!3138 = !DILocation(line: 227, column: 12, scope: !3123)
!3139 = !DILocation(line: 228, column: 7, scope: !3123)
!3140 = !DILocation(line: 228, column: 12, scope: !3123)
!3141 = !DILocation(line: 0, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !838, line: 233, column: 11)
!3143 = distinct !DILexicalBlock(scope: !3123, file: !838, line: 232, column: 5)
!3144 = !DILocation(line: 231, column: 3, scope: !3123)
!3145 = !DILocation(line: 233, column: 12, scope: !3142)
!3146 = !DILocation(line: 233, column: 11, scope: !3143)
!3147 = !DILocation(line: 235, column: 13, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3142, file: !838, line: 234, column: 2)
!3149 = !DILocation(line: 236, column: 4, scope: !3148)
!3150 = !DILocation(line: 239, column: 11, scope: !3143)
!3151 = distinct !{!3151, !3144, !3152}
!3152 = !DILocation(line: 242, column: 5, scope: !3123)
!3153 = !DILocation(line: 245, column: 11, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3123, file: !838, line: 245, column: 7)
!3155 = !DILocation(line: 245, column: 17, scope: !3154)
!3156 = !DILocation(line: 245, column: 22, scope: !3154)
!3157 = !DILocation(line: 245, column: 7, scope: !3123)
!3158 = !DILocation(line: 246, column: 27, scope: !3154)
!3159 = !DILocation(line: 246, column: 32, scope: !3154)
!3160 = !DILocation(line: 246, column: 5, scope: !3154)
!3161 = !DILocation(line: 249, column: 7, scope: !3123)
!3162 = !DILocation(line: 249, column: 15, scope: !3123)
!3163 = !DILocation(line: 250, column: 14, scope: !3123)
!3164 = !DILocation(line: 251, column: 7, scope: !3123)
!3165 = !DILocation(line: 251, column: 12, scope: !3123)
!3166 = !DILocation(line: 257, column: 16, scope: !3123)
!3167 = !DILocation(line: 257, column: 13, scope: !3123)
!3168 = !DILocation(line: 259, column: 11, scope: !3123)
!3169 = !DILocation(line: 260, column: 1, scope: !3123)
!3170 = distinct !DISubprogram(name: "bmp_iter_set", scope: !838, file: !838, line: 393, type: !3171, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!773, !3126, !3130}
!3173 = !{!3174, !3175, !3176}
!3174 = !DILocalVariable(name: "bi", arg: 1, scope: !3170, file: !838, line: 393, type: !3126)
!3175 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3170, file: !838, line: 393, type: !3130)
!3176 = !DILabel(scope: !3177, name: "next_bit", file: !838, line: 398)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !838, line: 397, column: 5)
!3178 = distinct !DILexicalBlock(scope: !3170, file: !838, line: 396, column: 7)
!3179 = !DILocation(line: 0, scope: !3170)
!3180 = !DILocation(line: 396, column: 11, scope: !3178)
!3181 = !DILocation(line: 396, column: 7, scope: !3178)
!3182 = !DILocation(line: 396, column: 7, scope: !3170)
!3183 = !DILocation(line: 419, column: 15, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !838, line: 418, column: 2)
!3185 = distinct !DILexicalBlock(scope: !3170, file: !838, line: 415, column: 5)
!3186 = !DILocation(line: 399, column: 7, scope: !3177)
!3187 = !DILocation(line: 398, column: 5, scope: !3177)
!3188 = !DILocation(line: 399, column: 20, scope: !3177)
!3189 = !DILocation(line: 399, column: 25, scope: !3177)
!3190 = !DILocation(line: 399, column: 14, scope: !3177)
!3191 = !DILocation(line: 401, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3177, file: !838, line: 400, column: 2)
!3193 = !DILocation(line: 402, column: 12, scope: !3192)
!3194 = distinct !{!3194, !3186, !3195}
!3195 = !DILocation(line: 403, column: 2, scope: !3177)
!3196 = !DILocation(line: 410, column: 15, scope: !3170)
!3197 = !DILocation(line: 410, column: 42, scope: !3170)
!3198 = !DILocation(line: 411, column: 26, scope: !3170)
!3199 = !DILocation(line: 410, column: 11, scope: !3170)
!3200 = !DILocation(line: 412, column: 7, scope: !3170)
!3201 = !DILocation(line: 412, column: 14, scope: !3170)
!3202 = !DILocation(line: 0, scope: !3185)
!3203 = !DILocation(line: 414, column: 3, scope: !3170)
!3204 = !DILocation(line: 417, column: 7, scope: !3185)
!3205 = !DILocation(line: 417, column: 18, scope: !3185)
!3206 = !DILocation(line: 417, column: 26, scope: !3185)
!3207 = !DILocation(line: 419, column: 13, scope: !3184)
!3208 = !DILocation(line: 420, column: 8, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3184, file: !838, line: 420, column: 8)
!3210 = !DILocation(line: 420, column: 8, scope: !3184)
!3211 = !DILocation(line: 422, column: 12, scope: !3184)
!3212 = !DILocation(line: 423, column: 15, scope: !3184)
!3213 = distinct !{!3213, !3204, !3214}
!3214 = !DILocation(line: 424, column: 2, scope: !3185)
!3215 = !DILocation(line: 427, column: 28, scope: !3185)
!3216 = !DILocation(line: 427, column: 16, scope: !3185)
!3217 = !DILocation(line: 428, column: 12, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3185, file: !838, line: 428, column: 11)
!3219 = !DILocation(line: 428, column: 11, scope: !3185)
!3220 = !DILocation(line: 430, column: 27, scope: !3185)
!3221 = !DILocation(line: 430, column: 32, scope: !3185)
!3222 = !DILocation(line: 430, column: 15, scope: !3185)
!3223 = !DILocation(line: 431, column: 19, scope: !3185)
!3224 = distinct !{!3224, !3203, !3225}
!3225 = !DILocation(line: 432, column: 5, scope: !3170)
!3226 = !DILocation(line: 433, column: 1, scope: !3170)
!3227 = distinct !DISubprogram(name: "decompose_register", scope: !3, file: !3, line: 355, type: !3228, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !7}
!3230 = !{!3231, !3232, !3233, !3234, !3235}
!3231 = !DILocalVariable(name: "regno", arg: 1, scope: !3227, file: !3, line: 355, type: !7)
!3232 = !DILocalVariable(name: "reg", scope: !3227, file: !3, line: 357, type: !782)
!3233 = !DILocalVariable(name: "words", scope: !3227, file: !3, line: 358, type: !7)
!3234 = !DILocalVariable(name: "i", scope: !3227, file: !3, line: 358, type: !7)
!3235 = !DILocalVariable(name: "v", scope: !3227, file: !3, line: 359, type: !810)
!3236 = !DILocation(line: 0, scope: !3227)
!3237 = !DILocation(line: 361, column: 9, scope: !3227)
!3238 = !DILocation(line: 363, column: 24, scope: !3227)
!3239 = !DILocation(line: 365, column: 11, scope: !3227)
!3240 = !DILocation(line: 366, column: 35, scope: !3227)
!3241 = !DILocation(line: 366, column: 40, scope: !3227)
!3242 = !DILocation(line: 368, column: 7, scope: !3227)
!3243 = !DILocation(line: 369, column: 17, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 369, column: 3)
!3245 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 369, column: 3)
!3246 = !DILocation(line: 369, column: 8, scope: !3245)
!3247 = !DILocation(line: 0, scope: !3245)
!3248 = !DILocation(line: 369, column: 3, scope: !3245)
!3249 = !DILocation(line: 370, column: 49, scope: !3244)
!3250 = !DILocation(line: 370, column: 24, scope: !3244)
!3251 = !DILocation(line: 370, column: 5, scope: !3244)
!3252 = !DILocation(line: 370, column: 22, scope: !3244)
!3253 = !DILocation(line: 369, column: 26, scope: !3244)
!3254 = !DILocation(line: 369, column: 3, scope: !3244)
!3255 = distinct !{!3255, !3248, !3256}
!3256 = !DILocation(line: 370, column: 78, scope: !3245)
!3257 = !DILocation(line: 372, column: 3, scope: !3227)
!3258 = !DILocation(line: 373, column: 3, scope: !3227)
!3259 = !DILocation(line: 373, column: 17, scope: !3227)
!3260 = !DILocation(line: 375, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 375, column: 7)
!3262 = !DILocation(line: 375, column: 7, scope: !3227)
!3263 = !DILocation(line: 377, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 376, column: 5)
!3265 = !DILocation(line: 378, column: 21, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 378, column: 7)
!3267 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 378, column: 7)
!3268 = !DILocation(line: 378, column: 12, scope: !3267)
!3269 = !DILocation(line: 0, scope: !3267)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 378, column: 7, scope: !3267)
!3272 = !DILocation(line: 379, column: 29, scope: !3266)
!3273 = !DILocation(line: 379, column: 2, scope: !3266)
!3274 = !DILocation(line: 378, column: 30, scope: !3266)
!3275 = !DILocation(line: 378, column: 7, scope: !3266)
!3276 = distinct !{!3276, !3271, !3277}
!3277 = !DILocation(line: 379, column: 56, scope: !3267)
!3278 = !DILocation(line: 380, column: 7, scope: !3264)
!3279 = !DILocation(line: 381, column: 5, scope: !3264)
!3280 = !DILocation(line: 382, column: 1, scope: !3227)
!3281 = distinct !DISubprogram(name: "bmp_iter_next", scope: !838, file: !838, line: 382, type: !3282, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3126, !3130}
!3284 = !{!3285, !3286}
!3285 = !DILocalVariable(name: "bi", arg: 1, scope: !3281, file: !838, line: 382, type: !3126)
!3286 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3281, file: !838, line: 382, type: !3130)
!3287 = !DILocation(line: 0, scope: !3281)
!3288 = !DILocation(line: 384, column: 7, scope: !3281)
!3289 = !DILocation(line: 384, column: 12, scope: !3281)
!3290 = !DILocation(line: 385, column: 11, scope: !3281)
!3291 = !DILocation(line: 386, column: 1, scope: !3281)
!3292 = distinct !DISubprogram(name: "resolve_clobber", scope: !3, file: !3, line: 839, type: !3293, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!773, !782, !782}
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303}
!3296 = !DILocalVariable(name: "pat", arg: 1, scope: !3292, file: !3, line: 839, type: !782)
!3297 = !DILocalVariable(name: "insn", arg: 2, scope: !3292, file: !3, line: 839, type: !782)
!3298 = !DILocalVariable(name: "reg", scope: !3292, file: !3, line: 841, type: !782)
!3299 = !DILocalVariable(name: "orig_mode", scope: !3292, file: !3, line: 842, type: !189)
!3300 = !DILocalVariable(name: "words", scope: !3292, file: !3, line: 843, type: !7)
!3301 = !DILocalVariable(name: "i", scope: !3292, file: !3, line: 843, type: !7)
!3302 = !DILocalVariable(name: "ret", scope: !3292, file: !3, line: 844, type: !774)
!3303 = !DILocalVariable(name: "x", scope: !3304, file: !3, line: 863, type: !782)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 862, column: 5)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 861, column: 3)
!3306 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 861, column: 3)
!3307 = !DILocation(line: 0, scope: !3292)
!3308 = !DILocation(line: 846, column: 9, scope: !3292)
!3309 = !DILocation(line: 847, column: 8, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 847, column: 7)
!3311 = !DILocation(line: 847, column: 28, scope: !3310)
!3312 = !DILocation(line: 847, column: 32, scope: !3310)
!3313 = !DILocation(line: 847, column: 7, scope: !3292)
!3314 = !DILocation(line: 850, column: 15, scope: !3292)
!3315 = !DILocation(line: 851, column: 11, scope: !3292)
!3316 = !DILocation(line: 852, column: 35, scope: !3292)
!3317 = !DILocation(line: 852, column: 40, scope: !3292)
!3318 = !DILocation(line: 855, column: 34, scope: !3292)
!3319 = !DILocation(line: 855, column: 5, scope: !3292)
!3320 = !DILocation(line: 854, column: 9, scope: !3292)
!3321 = !DILocation(line: 858, column: 3, scope: !3292)
!3322 = !DILocation(line: 859, column: 3, scope: !3292)
!3323 = !DILocation(line: 861, column: 8, scope: !3306)
!3324 = !DILocation(line: 0, scope: !3306)
!3325 = !DILocation(line: 861, column: 25, scope: !3305)
!3326 = !DILocation(line: 861, column: 3, scope: !3306)
!3327 = !DILocation(line: 865, column: 40, scope: !3304)
!3328 = !DILocation(line: 866, column: 14, scope: !3304)
!3329 = !DILocation(line: 865, column: 11, scope: !3304)
!3330 = !DILocation(line: 0, scope: !3304)
!3331 = !DILocation(line: 867, column: 11, scope: !3304)
!3332 = !DILocation(line: 868, column: 7, scope: !3304)
!3333 = !DILocation(line: 861, column: 3, scope: !3305)
!3334 = distinct !{!3334, !3326, !3335}
!3335 = !DILocation(line: 869, column: 5, scope: !3306)
!3336 = !DILocation(line: 871, column: 3, scope: !3292)
!3337 = !DILocation(line: 873, column: 3, scope: !3292)
!3338 = !DILocation(line: 874, column: 1, scope: !3292)
!3339 = distinct !DISubprogram(name: "resolve_use", scope: !3, file: !3, line: 880, type: !3293, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "pat", arg: 1, scope: !3339, file: !3, line: 880, type: !782)
!3342 = !DILocalVariable(name: "insn", arg: 2, scope: !3339, file: !3, line: 880, type: !782)
!3343 = !DILocation(line: 0, scope: !3339)
!3344 = !DILocation(line: 882, column: 22, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 882, column: 7)
!3346 = !DILocation(line: 882, column: 7, scope: !3345)
!3347 = !DILocation(line: 882, column: 37, scope: !3345)
!3348 = !DILocation(line: 882, column: 58, scope: !3345)
!3349 = !DILocation(line: 882, column: 40, scope: !3345)
!3350 = !DILocation(line: 882, column: 7, scope: !3339)
!3351 = !DILocation(line: 884, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 883, column: 5)
!3353 = !DILocation(line: 885, column: 7, scope: !3352)
!3354 = !DILocation(line: 888, column: 3, scope: !3339)
!3355 = !DILocation(line: 890, column: 3, scope: !3339)
!3356 = !DILocation(line: 891, column: 1, scope: !3339)
!3357 = distinct !DISubprogram(name: "resolve_debug", scope: !3, file: !3, line: 896, type: !3358, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !782}
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "insn", arg: 1, scope: !3357, file: !3, line: 896, type: !782)
!3362 = !DILocation(line: 0, scope: !3357)
!3363 = !DILocation(line: 898, column: 18, scope: !3357)
!3364 = !DILocation(line: 898, column: 3, scope: !3357)
!3365 = !DILocation(line: 900, column: 3, scope: !3357)
!3366 = !DILocation(line: 902, column: 3, scope: !3357)
!3367 = !DILocation(line: 903, column: 1, scope: !3357)
!3368 = distinct !DISubprogram(name: "resolve_simple_move", scope: !3, file: !3, line: 630, type: !3369, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!782, !782, !782}
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3385, !3386, !3387, !3390, !3393, !3396, !3397, !3398, !3402, !3404, !3407, !3408}
!3372 = !DILocalVariable(name: "set", arg: 1, scope: !3368, file: !3, line: 630, type: !782)
!3373 = !DILocalVariable(name: "insn", arg: 2, scope: !3368, file: !3, line: 630, type: !782)
!3374 = !DILocalVariable(name: "src", scope: !3368, file: !3, line: 632, type: !782)
!3375 = !DILocalVariable(name: "dest", scope: !3368, file: !3, line: 632, type: !782)
!3376 = !DILocalVariable(name: "real_dest", scope: !3368, file: !3, line: 632, type: !782)
!3377 = !DILocalVariable(name: "insns", scope: !3368, file: !3, line: 632, type: !782)
!3378 = !DILocalVariable(name: "orig_mode", scope: !3368, file: !3, line: 633, type: !189)
!3379 = !DILocalVariable(name: "dest_mode", scope: !3368, file: !3, line: 633, type: !189)
!3380 = !DILocalVariable(name: "words", scope: !3368, file: !3, line: 634, type: !7)
!3381 = !DILocalVariable(name: "pushing", scope: !3368, file: !3, line: 635, type: !773)
!3382 = !DILocalVariable(name: "reg", scope: !3383, file: !3, line: 675, type: !782)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 674, column: 5)
!3384 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 669, column: 7)
!3385 = !DILocalVariable(name: "minsn", scope: !3383, file: !3, line: 675, type: !782)
!3386 = !DILocalVariable(name: "smove", scope: !3383, file: !3, line: 675, type: !782)
!3387 = !DILocalVariable(name: "acg", scope: !3388, file: !3, line: 707, type: !774)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 706, column: 5)
!3389 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 705, column: 7)
!3390 = !DILocalVariable(name: "reg", scope: !3391, file: !3, line: 724, type: !782)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 723, column: 5)
!3392 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 720, column: 7)
!3393 = !DILocalVariable(name: "i", scope: !3394, file: !3, line: 761, type: !7)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 760, column: 5)
!3395 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 759, column: 7)
!3396 = !DILocalVariable(name: "j", scope: !3394, file: !3, line: 761, type: !7)
!3397 = !DILocalVariable(name: "jinc", scope: !3394, file: !3, line: 761, type: !7)
!3398 = !DILocalVariable(name: "temp", scope: !3399, file: !3, line: 780, type: !782)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 779, column: 2)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 778, column: 7)
!3401 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 778, column: 7)
!3402 = !DILocalVariable(name: "i", scope: !3403, file: !3, line: 793, type: !7)
!3403 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 792, column: 5)
!3404 = !DILocalVariable(name: "mdest", scope: !3405, file: !3, line: 809, type: !782)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 808, column: 5)
!3406 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 807, column: 7)
!3407 = !DILocalVariable(name: "minsn", scope: !3405, file: !3, line: 809, type: !782)
!3408 = !DILocalVariable(name: "smove", scope: !3405, file: !3, line: 809, type: !782)
!3409 = !DILocation(line: 0, scope: !3368)
!3410 = !DILocation(line: 637, column: 9, scope: !3368)
!3411 = !DILocation(line: 638, column: 10, scope: !3368)
!3412 = !DILocation(line: 639, column: 15, scope: !3368)
!3413 = !DILocation(line: 641, column: 12, scope: !3368)
!3414 = !DILocation(line: 641, column: 55, scope: !3368)
!3415 = !DILocation(line: 641, column: 60, scope: !3368)
!3416 = !DILocation(line: 642, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 642, column: 7)
!3418 = !DILocation(line: 642, column: 7, scope: !3368)
!3419 = !DILocation(line: 645, column: 3, scope: !3368)
!3420 = !DILocation(line: 654, column: 7, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 654, column: 7)
!3422 = !DILocation(line: 654, column: 22, scope: !3421)
!3423 = !DILocation(line: 655, column: 7, scope: !3421)
!3424 = !DILocation(line: 655, column: 25, scope: !3421)
!3425 = !DILocation(line: 655, column: 10, scope: !3421)
!3426 = !DILocation(line: 656, column: 7, scope: !3421)
!3427 = !DILocation(line: 656, column: 11, scope: !3421)
!3428 = !DILocation(line: 656, column: 29, scope: !3421)
!3429 = !DILocation(line: 657, column: 4, scope: !3421)
!3430 = !DILocation(line: 657, column: 8, scope: !3421)
!3431 = !DILocation(line: 658, column: 11, scope: !3421)
!3432 = !DILocation(line: 658, column: 8, scope: !3421)
!3433 = !DILocation(line: 654, column: 7, scope: !3368)
!3434 = !DILocation(line: 661, column: 14, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 659, column: 5)
!3436 = !DILocation(line: 662, column: 11, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 662, column: 11)
!3438 = !DILocation(line: 662, column: 11, scope: !3435)
!3439 = !DILocation(line: 663, column: 21, scope: !3437)
!3440 = !DILocation(line: 663, column: 2, scope: !3437)
!3441 = !DILocation(line: 663, column: 19, scope: !3437)
!3442 = !DILocation(line: 669, column: 7, scope: !3384)
!3443 = !DILocation(line: 669, column: 23, scope: !3384)
!3444 = !DILocation(line: 670, column: 7, scope: !3384)
!3445 = !DILocation(line: 670, column: 25, scope: !3384)
!3446 = !DILocation(line: 670, column: 10, scope: !3384)
!3447 = !DILocation(line: 671, column: 7, scope: !3384)
!3448 = !DILocation(line: 671, column: 11, scope: !3384)
!3449 = !DILocation(line: 671, column: 30, scope: !3384)
!3450 = !DILocation(line: 672, column: 4, scope: !3384)
!3451 = !DILocation(line: 672, column: 8, scope: !3384)
!3452 = !DILocation(line: 673, column: 11, scope: !3384)
!3453 = !DILocation(line: 673, column: 8, scope: !3384)
!3454 = !DILocation(line: 669, column: 7, scope: !3368)
!3455 = !DILocation(line: 677, column: 13, scope: !3383)
!3456 = !DILocation(line: 0, scope: !3383)
!3457 = !DILocation(line: 678, column: 15, scope: !3383)
!3458 = !DILocation(line: 679, column: 15, scope: !3383)
!3459 = !DILocation(line: 680, column: 7, scope: !3383)
!3460 = !DILocation(line: 681, column: 7, scope: !3383)
!3461 = !DILocation(line: 683, column: 5, scope: !3383)
!3462 = !DILocation(line: 689, column: 14, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 689, column: 7)
!3464 = !DILocation(line: 689, column: 11, scope: !3463)
!3465 = !DILocation(line: 690, column: 7, scope: !3463)
!3466 = !DILocation(line: 690, column: 18, scope: !3463)
!3467 = !DILocation(line: 690, column: 15, scope: !3463)
!3468 = !DILocation(line: 691, column: 7, scope: !3463)
!3469 = !DILocation(line: 691, column: 11, scope: !3463)
!3470 = !DILocation(line: 692, column: 7, scope: !3463)
!3471 = !DILocation(line: 692, column: 11, scope: !3463)
!3472 = !DILocation(line: 693, column: 7, scope: !3463)
!3473 = !DILocation(line: 693, column: 11, scope: !3463)
!3474 = !DILocation(line: 694, column: 7, scope: !3463)
!3475 = !DILocation(line: 694, column: 11, scope: !3463)
!3476 = !DILocation(line: 689, column: 7, scope: !3368)
!3477 = !DILocation(line: 696, column: 7, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 695, column: 5)
!3479 = !DILocation(line: 697, column: 7, scope: !3478)
!3480 = !DILocation(line: 705, column: 7, scope: !3389)
!3481 = !DILocation(line: 705, column: 19, scope: !3389)
!3482 = !DILocation(line: 705, column: 22, scope: !3389)
!3483 = !DILocation(line: 705, column: 7, scope: !3368)
!3484 = !DILocation(line: 709, column: 11, scope: !3388)
!3485 = !DILocation(line: 710, column: 17, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 709, column: 11)
!3487 = !DILocation(line: 710, column: 2, scope: !3486)
!3488 = !DILocation(line: 711, column: 11, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 711, column: 11)
!3490 = !DILocation(line: 711, column: 11, scope: !3388)
!3491 = !DILocation(line: 712, column: 17, scope: !3489)
!3492 = !DILocation(line: 712, column: 2, scope: !3489)
!3493 = !DILocation(line: 713, column: 13, scope: !3388)
!3494 = !DILocation(line: 0, scope: !3388)
!3495 = !DILocation(line: 714, column: 7, scope: !3388)
!3496 = !DILocation(line: 720, column: 8, scope: !3392)
!3497 = !DILocation(line: 721, column: 7, scope: !3392)
!3498 = !DILocation(line: 721, column: 10, scope: !3392)
!3499 = !DILocation(line: 722, column: 7, scope: !3392)
!3500 = !DILocation(line: 722, column: 10, scope: !3392)
!3501 = !DILocation(line: 722, column: 25, scope: !3392)
!3502 = !DILocation(line: 720, column: 7, scope: !3368)
!3503 = !DILocation(line: 726, column: 13, scope: !3391)
!3504 = !DILocation(line: 0, scope: !3391)
!3505 = !DILocation(line: 727, column: 7, scope: !3391)
!3506 = !DILocation(line: 729, column: 5, scope: !3391)
!3507 = !DILocation(line: 739, column: 13, scope: !3368)
!3508 = !DILocation(line: 740, column: 8, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 740, column: 7)
!3510 = !DILocation(line: 741, column: 7, scope: !3509)
!3511 = !DILocation(line: 741, column: 11, scope: !3509)
!3512 = !DILocation(line: 741, column: 37, scope: !3509)
!3513 = !DILocation(line: 741, column: 33, scope: !3509)
!3514 = !DILocation(line: 742, column: 12, scope: !3509)
!3515 = !DILocation(line: 743, column: 4, scope: !3509)
!3516 = !DILocation(line: 743, column: 8, scope: !3509)
!3517 = !DILocation(line: 744, column: 4, scope: !3509)
!3518 = !DILocation(line: 744, column: 8, scope: !3509)
!3519 = !DILocation(line: 740, column: 7, scope: !3368)
!3520 = !DILocation(line: 746, column: 21, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 746, column: 11)
!3522 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 745, column: 5)
!3523 = !DILocation(line: 746, column: 11, scope: !3522)
!3524 = !DILocation(line: 748, column: 12, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 748, column: 11)
!3526 = !DILocation(line: 748, column: 11, scope: !3522)
!3527 = !DILocation(line: 750, column: 31, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 749, column: 2)
!3529 = !DILocation(line: 750, column: 57, scope: !3528)
!3530 = !DILocation(line: 750, column: 16, scope: !3528)
!3531 = !DILocation(line: 752, column: 4, scope: !3528)
!3532 = !DILocation(line: 754, column: 14, scope: !3522)
!3533 = !DILocation(line: 755, column: 11, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 755, column: 11)
!3535 = !DILocation(line: 755, column: 11, scope: !3522)
!3536 = !DILocation(line: 756, column: 21, scope: !3534)
!3537 = !DILocation(line: 756, column: 2, scope: !3534)
!3538 = !DILocation(line: 756, column: 19, scope: !3534)
!3539 = !DILocation(line: 738, column: 13, scope: !3368)
!3540 = !DILocation(line: 759, column: 7, scope: !3395)
!3541 = !DILocation(line: 759, column: 7, scope: !3368)
!3542 = !DILocation(line: 763, column: 7, scope: !3394)
!3543 = !DILocation(line: 764, column: 7, scope: !3394)
!3544 = !DILocation(line: 765, column: 7, scope: !3394)
!3545 = !DILocation(line: 0, scope: !3394)
!3546 = !DILocation(line: 0, scope: !3399)
!3547 = !DILocation(line: 778, column: 12, scope: !3401)
!3548 = !DILocation(line: 0, scope: !3401)
!3549 = !DILocation(line: 778, column: 21, scope: !3400)
!3550 = !DILocation(line: 778, column: 7, scope: !3401)
!3551 = !DILocation(line: 782, column: 21, scope: !3399)
!3552 = !DILocation(line: 782, column: 11, scope: !3399)
!3553 = !DILocation(line: 783, column: 11, scope: !3399)
!3554 = !DILocation(line: 786, column: 35, scope: !3399)
!3555 = !DILocation(line: 786, column: 6, scope: !3399)
!3556 = !DILocation(line: 785, column: 4, scope: !3399)
!3557 = !DILocation(line: 778, column: 30, scope: !3400)
!3558 = !DILocation(line: 778, column: 7, scope: !3400)
!3559 = distinct !{!3559, !3550, !3560}
!3560 = !DILocation(line: 789, column: 2, scope: !3401)
!3561 = !DILocation(line: 795, column: 11, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 795, column: 11)
!3563 = !DILocation(line: 795, column: 24, scope: !3562)
!3564 = !DILocation(line: 795, column: 28, scope: !3562)
!3565 = !DILocation(line: 795, column: 11, scope: !3403)
!3566 = !DILocation(line: 796, column: 2, scope: !3562)
!3567 = !DILocation(line: 0, scope: !3403)
!3568 = !DILocation(line: 798, column: 12, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 798, column: 7)
!3570 = !DILocation(line: 0, scope: !3569)
!3571 = !DILocation(line: 798, column: 21, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 798, column: 7)
!3573 = !DILocation(line: 798, column: 7, scope: !3569)
!3574 = !DILocation(line: 799, column: 47, scope: !3572)
!3575 = !DILocation(line: 801, column: 14, scope: !3572)
!3576 = !DILocation(line: 799, column: 18, scope: !3572)
!3577 = !DILocation(line: 802, column: 33, scope: !3572)
!3578 = !DILocation(line: 802, column: 4, scope: !3572)
!3579 = !DILocation(line: 799, column: 2, scope: !3572)
!3580 = !DILocation(line: 798, column: 30, scope: !3572)
!3581 = !DILocation(line: 798, column: 7, scope: !3572)
!3582 = distinct !{!3582, !3573, !3583}
!3583 = !DILocation(line: 804, column: 31, scope: !3569)
!3584 = !DILocation(line: 807, column: 17, scope: !3406)
!3585 = !DILocation(line: 807, column: 7, scope: !3368)
!3586 = !DILocation(line: 811, column: 21, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 811, column: 11)
!3588 = !DILocation(line: 811, column: 11, scope: !3405)
!3589 = !DILocation(line: 814, column: 48, scope: !3587)
!3590 = !DILocation(line: 814, column: 10, scope: !3587)
!3591 = !DILocation(line: 0, scope: !3405)
!3592 = !DILocation(line: 0, scope: !3587)
!3593 = !DILocation(line: 815, column: 15, scope: !3405)
!3594 = !DILocation(line: 817, column: 15, scope: !3405)
!3595 = !DILocation(line: 818, column: 7, scope: !3405)
!3596 = !DILocation(line: 820, column: 7, scope: !3405)
!3597 = !DILocation(line: 821, column: 5, scope: !3405)
!3598 = !DILocation(line: 823, column: 11, scope: !3368)
!3599 = !DILocation(line: 824, column: 3, scope: !3368)
!3600 = !DILocation(line: 826, column: 3, scope: !3368)
!3601 = !DILocation(line: 828, column: 3, scope: !3368)
!3602 = !DILocation(line: 830, column: 3, scope: !3368)
!3603 = !DILocation(line: 832, column: 3, scope: !3368)
!3604 = !DILocation(line: 833, column: 1, scope: !3368)
!3605 = distinct !DISubprogram(name: "SET_BIT", scope: !2449, file: !2449, line: 63, type: !3606, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{null, !2448, !7}
!3608 = !{!3609, !3610, !3611}
!3609 = !DILocalVariable(name: "map", arg: 1, scope: !3605, file: !2449, line: 63, type: !2448)
!3610 = !DILocalVariable(name: "bitno", arg: 2, scope: !3605, file: !2449, line: 63, type: !7)
!3611 = !DILocalVariable(name: "oldbit", scope: !3612, file: !2449, line: 67, type: !773)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !2449, line: 66, column: 5)
!3613 = distinct !DILexicalBlock(scope: !3605, file: !2449, line: 65, column: 7)
!3614 = !DILocation(line: 0, scope: !3605)
!3615 = !DILocation(line: 65, column: 12, scope: !3613)
!3616 = !DILocation(line: 65, column: 7, scope: !3613)
!3617 = !DILocation(line: 65, column: 7, scope: !3605)
!3618 = !DILocation(line: 73, column: 40, scope: !3605)
!3619 = !DILocation(line: 73, column: 29, scope: !3605)
!3620 = !DILocation(line: 72, column: 19, scope: !3605)
!3621 = !DILocation(line: 72, column: 3, scope: !3605)
!3622 = !DILocation(line: 68, column: 16, scope: !3612)
!3623 = !DILocation(line: 69, column: 12, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3612, file: !2449, line: 69, column: 11)
!3625 = !DILocation(line: 69, column: 11, scope: !3612)
!3626 = !DILocation(line: 70, column: 2, scope: !3624)
!3627 = !DILocation(line: 70, column: 41, scope: !3624)
!3628 = !DILocation(line: 73, column: 5, scope: !3605)
!3629 = !DILocation(line: 74, column: 1, scope: !3605)
!3630 = distinct !DISubprogram(name: "resolve_shift_zext", scope: !3, file: !3, line: 961, type: !2894, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3648}
!3632 = !DILocalVariable(name: "insn", arg: 1, scope: !3630, file: !3, line: 961, type: !782)
!3633 = !DILocalVariable(name: "set", scope: !3630, file: !3, line: 963, type: !782)
!3634 = !DILocalVariable(name: "op", scope: !3630, file: !3, line: 964, type: !782)
!3635 = !DILocalVariable(name: "op_operand", scope: !3630, file: !3, line: 965, type: !782)
!3636 = !DILocalVariable(name: "insns", scope: !3630, file: !3, line: 966, type: !782)
!3637 = !DILocalVariable(name: "src_reg", scope: !3630, file: !3, line: 967, type: !782)
!3638 = !DILocalVariable(name: "dest_reg", scope: !3630, file: !3, line: 967, type: !782)
!3639 = !DILocalVariable(name: "dest_zero", scope: !3630, file: !3, line: 967, type: !782)
!3640 = !DILocalVariable(name: "src_reg_num", scope: !3630, file: !3, line: 968, type: !774)
!3641 = !DILocalVariable(name: "dest_reg_num", scope: !3630, file: !3, line: 968, type: !774)
!3642 = !DILocalVariable(name: "offset1", scope: !3630, file: !3, line: 968, type: !774)
!3643 = !DILocalVariable(name: "offset2", scope: !3630, file: !3, line: 968, type: !774)
!3644 = !DILocalVariable(name: "src_offset", scope: !3630, file: !3, line: 968, type: !774)
!3645 = !DILocalVariable(name: "shift_count", scope: !3646, file: !3, line: 1023, type: !774)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 1022, column: 5)
!3647 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1021, column: 7)
!3648 = !DILocalVariable(name: "in", scope: !3649, file: !3, line: 1044, type: !782)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 1043, column: 5)
!3650 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1042, column: 7)
!3651 = !DILocation(line: 0, scope: !3630)
!3652 = !DILocation(line: 970, column: 9, scope: !3630)
!3653 = !DILocation(line: 971, column: 8, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 971, column: 7)
!3655 = !DILocation(line: 971, column: 7, scope: !3630)
!3656 = !DILocation(line: 974, column: 8, scope: !3630)
!3657 = !DILocation(line: 975, column: 7, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 975, column: 7)
!3659 = !DILocation(line: 975, column: 21, scope: !3658)
!3660 = !DILocation(line: 976, column: 7, scope: !3658)
!3661 = !DILocation(line: 976, column: 24, scope: !3658)
!3662 = !DILocation(line: 977, column: 7, scope: !3658)
!3663 = !DILocation(line: 977, column: 24, scope: !3658)
!3664 = !DILocation(line: 975, column: 7, scope: !3630)
!3665 = !DILocation(line: 980, column: 16, scope: !3630)
!3666 = !DILocation(line: 982, column: 23, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 982, column: 7)
!3668 = !DILocation(line: 982, column: 8, scope: !3667)
!3669 = !DILocation(line: 982, column: 39, scope: !3667)
!3670 = !DILocation(line: 982, column: 43, scope: !3667)
!3671 = !DILocation(line: 982, column: 7, scope: !3630)
!3672 = !DILocation(line: 988, column: 17, scope: !3630)
!3673 = !DILocation(line: 988, column: 31, scope: !3630)
!3674 = !DILocation(line: 994, column: 21, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 994, column: 7)
!3676 = !DILocation(line: 994, column: 7, scope: !3630)
!3677 = !DILocation(line: 999, column: 28, scope: !3630)
!3678 = !DILocation(line: 1000, column: 33, scope: !3630)
!3679 = !DILocation(line: 1000, column: 28, scope: !3630)
!3680 = !DILocation(line: 1001, column: 31, scope: !3630)
!3681 = !DILocation(line: 1010, column: 3, scope: !3630)
!3682 = !DILocation(line: 1012, column: 43, scope: !3630)
!3683 = !DILocation(line: 1012, column: 54, scope: !3630)
!3684 = !DILocation(line: 1013, column: 43, scope: !3630)
!3685 = !DILocation(line: 1012, column: 14, scope: !3630)
!3686 = !DILocation(line: 1015, column: 44, scope: !3630)
!3687 = !DILocation(line: 1015, column: 55, scope: !3630)
!3688 = !DILocation(line: 1016, column: 44, scope: !3630)
!3689 = !DILocation(line: 1015, column: 15, scope: !3630)
!3690 = !DILocation(line: 1018, column: 42, scope: !3630)
!3691 = !DILocation(line: 1019, column: 42, scope: !3630)
!3692 = !DILocation(line: 1018, column: 13, scope: !3630)
!3693 = !DILocation(line: 1021, column: 7, scope: !3647)
!3694 = !DILocation(line: 1021, column: 21, scope: !3647)
!3695 = !DILocation(line: 1021, column: 7, scope: !3630)
!3696 = !DILocation(line: 1023, column: 25, scope: !3646)
!3697 = !DILocation(line: 0, scope: !3646)
!3698 = !DILocation(line: 1024, column: 23, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 1024, column: 11)
!3700 = !DILocation(line: 1024, column: 11, scope: !3646)
!3701 = !DILocation(line: 1025, column: 40, scope: !3699)
!3702 = !DILocation(line: 1025, column: 26, scope: !3699)
!3703 = !DILocation(line: 1027, column: 5, scope: !3699)
!3704 = !DILocation(line: 1029, column: 13, scope: !3699)
!3705 = !DILocation(line: 1028, column: 5, scope: !3699)
!3706 = !DILocation(line: 1025, column: 12, scope: !3699)
!3707 = !DILocation(line: 1025, column: 2, scope: !3699)
!3708 = !DILocation(line: 1033, column: 16, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1033, column: 7)
!3710 = !DILocation(line: 1033, column: 7, scope: !3630)
!3711 = !DILocation(line: 1034, column: 5, scope: !3709)
!3712 = !DILocation(line: 1035, column: 30, scope: !3630)
!3713 = !DILocation(line: 1035, column: 3, scope: !3630)
!3714 = !DILocation(line: 1036, column: 11, scope: !3630)
!3715 = !DILocation(line: 1038, column: 3, scope: !3630)
!3716 = !DILocation(line: 1040, column: 3, scope: !3630)
!3717 = !DILocation(line: 1042, column: 7, scope: !3650)
!3718 = !DILocation(line: 1042, column: 7, scope: !3630)
!3719 = !DILocation(line: 1045, column: 64, scope: !3649)
!3720 = !DILocation(line: 1045, column: 7, scope: !3649)
!3721 = !DILocation(line: 0, scope: !3649)
!3722 = !DILocation(line: 1046, column: 12, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1046, column: 7)
!3724 = !DILocation(line: 0, scope: !3723)
!3725 = !DILocation(line: 1046, column: 27, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 1046, column: 7)
!3727 = !DILocation(line: 1046, column: 7, scope: !3723)
!3728 = !DILocation(line: 1047, column: 29, scope: !3726)
!3729 = !DILocation(line: 1047, column: 2, scope: !3726)
!3730 = !DILocation(line: 1046, column: 41, scope: !3726)
!3731 = !DILocation(line: 1046, column: 7, scope: !3726)
!3732 = distinct !{!3732, !3727, !3733}
!3733 = !DILocation(line: 1047, column: 42, scope: !3723)
!3734 = !DILocation(line: 1048, column: 7, scope: !3649)
!3735 = !DILocation(line: 1049, column: 5, scope: !3649)
!3736 = !DILocation(line: 1051, column: 3, scope: !3630)
!3737 = !DILocation(line: 1052, column: 3, scope: !3630)
!3738 = !DILocation(line: 1053, column: 1, scope: !3630)
!3739 = distinct !DISubprogram(name: "resolve_subreg_use", scope: !3, file: !3, line: 496, type: !2985, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3740)
!3740 = !{!3741, !3742, !3743, !3744}
!3741 = !DILocalVariable(name: "px", arg: 1, scope: !3739, file: !3, line: 496, type: !2505)
!3742 = !DILocalVariable(name: "data", arg: 2, scope: !3739, file: !3, line: 496, type: !778)
!3743 = !DILocalVariable(name: "insn", scope: !3739, file: !3, line: 498, type: !782)
!3744 = !DILocalVariable(name: "x", scope: !3739, file: !3, line: 499, type: !782)
!3745 = !DILocation(line: 0, scope: !3739)
!3746 = !DILocation(line: 498, column: 14, scope: !3739)
!3747 = !DILocation(line: 499, column: 11, scope: !3739)
!3748 = !DILocation(line: 501, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 501, column: 7)
!3750 = !DILocation(line: 501, column: 7, scope: !3739)
!3751 = !DILocation(line: 504, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 504, column: 7)
!3753 = !DILocation(line: 504, column: 7, scope: !3739)
!3754 = !DILocation(line: 506, column: 36, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 505, column: 5)
!3756 = !DILocation(line: 506, column: 50, scope: !3755)
!3757 = !DILocation(line: 507, column: 8, scope: !3755)
!3758 = !DILocation(line: 506, column: 11, scope: !3755)
!3759 = !DILocation(line: 512, column: 12, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 512, column: 11)
!3761 = !DILocation(line: 512, column: 11, scope: !3755)
!3762 = !DILocation(line: 514, column: 4, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 513, column: 2)
!3764 = !DILocation(line: 518, column: 7, scope: !3755)
!3765 = !DILocation(line: 519, column: 7, scope: !3755)
!3766 = !DILocation(line: 522, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 522, column: 7)
!3768 = !DILocation(line: 532, column: 1, scope: !3739)
!3769 = distinct !DISubprogram(name: "resolve_reg_notes", scope: !3, file: !3, line: 566, type: !3358, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3770)
!3770 = !{!3771, !3772, !3773, !3774, !3777}
!3771 = !DILocalVariable(name: "insn", arg: 1, scope: !3769, file: !3, line: 566, type: !782)
!3772 = !DILocalVariable(name: "pnote", scope: !3769, file: !3, line: 568, type: !2505)
!3773 = !DILocalVariable(name: "note", scope: !3769, file: !3, line: 568, type: !782)
!3774 = !DILocalVariable(name: "old_count", scope: !3775, file: !3, line: 573, type: !774)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 572, column: 5)
!3776 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 571, column: 7)
!3777 = !DILocalVariable(name: "del", scope: !3778, file: !3, line: 584, type: !773)
!3778 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 583, column: 5)
!3779 = !DILocation(line: 0, scope: !3769)
!3780 = !DILocation(line: 570, column: 10, scope: !3769)
!3781 = !DILocation(line: 571, column: 7, scope: !3776)
!3782 = !DILocation(line: 571, column: 7, scope: !3769)
!3783 = !DILocation(line: 573, column: 23, scope: !3775)
!3784 = !DILocation(line: 0, scope: !3775)
!3785 = !DILocation(line: 574, column: 26, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 574, column: 11)
!3787 = !DILocation(line: 574, column: 11, scope: !3786)
!3788 = !DILocation(line: 574, column: 11, scope: !3775)
!3789 = !DILocation(line: 575, column: 2, scope: !3786)
!3790 = !DILocation(line: 577, column: 19, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 577, column: 6)
!3792 = !DILocation(line: 577, column: 16, scope: !3791)
!3793 = !DILocation(line: 577, column: 6, scope: !3786)
!3794 = !DILocation(line: 578, column: 4, scope: !3791)
!3795 = !DILocation(line: 581, column: 12, scope: !3769)
!3796 = !DILocation(line: 582, column: 3, scope: !3769)
!3797 = !DILocation(line: 581, column: 9, scope: !3769)
!3798 = !DILocation(line: 582, column: 10, scope: !3769)
!3799 = !DILocation(line: 582, column: 17, scope: !3769)
!3800 = !DILocation(line: 0, scope: !3778)
!3801 = !DILocation(line: 587, column: 15, scope: !3778)
!3802 = !DILocation(line: 587, column: 7, scope: !3778)
!3803 = !DILocation(line: 591, column: 23, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 591, column: 8)
!3805 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 588, column: 2)
!3806 = !DILocation(line: 591, column: 8, scope: !3804)
!3807 = !DILocation(line: 591, column: 8, scope: !3805)
!3808 = !DILocation(line: 593, column: 4, scope: !3805)
!3809 = !DILocation(line: 599, column: 11, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 599, column: 11)
!3811 = !DILocation(line: 0, scope: !3810)
!3812 = !DILocation(line: 599, column: 11, scope: !3778)
!3813 = !DILocation(line: 600, column: 11, scope: !3810)
!3814 = !DILocation(line: 600, column: 9, scope: !3810)
!3815 = !DILocation(line: 600, column: 2, scope: !3810)
!3816 = distinct !{!3816, !3796, !3817}
!3817 = !DILocation(line: 603, column: 5, scope: !3769)
!3818 = !DILocation(line: 604, column: 1, scope: !3769)
!3819 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !2449, file: !2449, line: 117, type: !3820, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3826)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3822, !3823, !7}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !2449, line: 46, baseType: !3824)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!3826 = !{!3827, !3828, !3829}
!3827 = !DILocalVariable(name: "i", arg: 1, scope: !3819, file: !2449, line: 117, type: !3822)
!3828 = !DILocalVariable(name: "bmp", arg: 2, scope: !3819, file: !2449, line: 117, type: !3823)
!3829 = !DILocalVariable(name: "min", arg: 3, scope: !3819, file: !2449, line: 117, type: !7)
!3830 = !DILocation(line: 0, scope: !3819)
!3831 = !DILocation(line: 119, column: 6, scope: !3819)
!3832 = !DILocation(line: 119, column: 15, scope: !3819)
!3833 = !DILocation(line: 120, column: 6, scope: !3819)
!3834 = !DILocation(line: 120, column: 14, scope: !3819)
!3835 = !DILocation(line: 121, column: 18, scope: !3819)
!3836 = !DILocation(line: 121, column: 6, scope: !3819)
!3837 = !DILocation(line: 121, column: 11, scope: !3819)
!3838 = !DILocation(line: 122, column: 12, scope: !3819)
!3839 = !DILocation(line: 122, column: 6, scope: !3819)
!3840 = !DILocation(line: 122, column: 10, scope: !3819)
!3841 = !DILocation(line: 124, column: 19, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3819, file: !2449, line: 124, column: 7)
!3843 = !DILocation(line: 124, column: 7, scope: !3819)
!3844 = !DILocation(line: 125, column: 8, scope: !3842)
!3845 = !DILocation(line: 125, column: 13, scope: !3842)
!3846 = !DILocation(line: 125, column: 5, scope: !3842)
!3847 = !DILocation(line: 127, column: 16, scope: !3842)
!3848 = !DILocation(line: 127, column: 8, scope: !3842)
!3849 = !DILocation(line: 127, column: 13, scope: !3842)
!3850 = !DILocation(line: 129, column: 1, scope: !3819)
!3851 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !2449, file: !2449, line: 136, type: !3852, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!773, !3822, !3130}
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "i", arg: 1, scope: !3851, file: !2449, line: 136, type: !3822)
!3856 = !DILocalVariable(name: "n", arg: 2, scope: !3851, file: !2449, line: 136, type: !3130)
!3857 = !DILocation(line: 0, scope: !3851)
!3858 = !DILocation(line: 0, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !2449, line: 139, column: 3)
!3860 = distinct !DILexicalBlock(scope: !3851, file: !2449, line: 139, column: 3)
!3861 = !DILocation(line: 0, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !2449, line: 140, column: 5)
!3863 = !DILocation(line: 0, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3862, file: !2449, line: 144, column: 11)
!3865 = !DILocation(line: 139, column: 13, scope: !3859)
!3866 = !DILocation(line: 139, column: 3, scope: !3851)
!3867 = !DILocation(line: 139, column: 18, scope: !3859)
!3868 = !DILocation(line: 139, column: 3, scope: !3860)
!3869 = !DILocation(line: 151, column: 3, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3851, file: !2449, line: 151, column: 3)
!3871 = !DILocation(line: 141, column: 18, scope: !3862)
!3872 = !DILocation(line: 144, column: 29, scope: !3864)
!3873 = !DILocation(line: 144, column: 23, scope: !3864)
!3874 = !DILocation(line: 144, column: 11, scope: !3862)
!3875 = !DILocation(line: 147, column: 32, scope: !3862)
!3876 = !DILocation(line: 147, column: 18, scope: !3862)
!3877 = !DILocation(line: 139, column: 37, scope: !3859)
!3878 = !DILocation(line: 139, column: 34, scope: !3859)
!3879 = !DILocation(line: 139, column: 32, scope: !3859)
!3880 = !DILocation(line: 139, column: 3, scope: !3859)
!3881 = distinct !{!3881, !3868, !3882}
!3882 = !DILocation(line: 148, column: 5, scope: !3860)
!3883 = !DILocation(line: 151, column: 14, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3870, file: !2449, line: 151, column: 3)
!3885 = !DILocation(line: 151, column: 19, scope: !3884)
!3886 = !DILocation(line: 151, column: 24, scope: !3884)
!3887 = !DILocation(line: 152, column: 15, scope: !3884)
!3888 = !DILocation(line: 151, column: 38, scope: !3884)
!3889 = !DILocation(line: 151, column: 3, scope: !3884)
!3890 = distinct !{!3890, !3869, !3891}
!3891 = !DILocation(line: 152, column: 15, scope: !3870)
!3892 = !DILocation(line: 154, column: 6, scope: !3851)
!3893 = !DILocation(line: 156, column: 3, scope: !3851)
!3894 = !DILocation(line: 157, column: 1, scope: !3851)
!3895 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !325, file: !325, line: 281, type: !3896, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3900)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!1316, !3898, !7}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "vec_", arg: 1, scope: !3895, file: !325, line: 281, type: !3898)
!3902 = !DILocalVariable(name: "ix_", arg: 2, scope: !3895, file: !325, line: 281, type: !7)
!3903 = !DILocation(line: 0, scope: !3895)
!3904 = !DILocation(line: 281, column: 1, scope: !3895)
!3905 = distinct !DISubprogram(name: "sbitmap_iter_next", scope: !2449, file: !2449, line: 162, type: !3906, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3822}
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "i", arg: 1, scope: !3905, file: !2449, line: 162, type: !3822)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 164, column: 6, scope: !3905)
!3912 = !DILocation(line: 164, column: 11, scope: !3905)
!3913 = !DILocation(line: 165, column: 6, scope: !3905)
!3914 = !DILocation(line: 165, column: 13, scope: !3905)
!3915 = !DILocation(line: 166, column: 1, scope: !3905)
!3916 = distinct !DISubprogram(name: "VEC_bitmap_base_iterate", scope: !3, file: !3, line: 49, type: !3917, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3921)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!774, !3919, !7, !2804}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!3921 = !{!3922, !3923, !3924}
!3922 = !DILocalVariable(name: "vec_", arg: 1, scope: !3916, file: !3, line: 49, type: !3919)
!3923 = !DILocalVariable(name: "ix_", arg: 2, scope: !3916, file: !3, line: 49, type: !7)
!3924 = !DILocalVariable(name: "ptr", arg: 3, scope: !3916, file: !3, line: 49, type: !2804)
!3925 = !DILocation(line: 0, scope: !3916)
!3926 = !DILocation(line: 49, column: 1, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 49, column: 1)
!3928 = !DILocation(line: 49, column: 1, scope: !3916)
!3929 = !DILocation(line: 49, column: 1, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 49, column: 1)
!3931 = !DILocation(line: 49, column: 1, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 49, column: 1)
!3933 = !DILocation(line: 0, scope: !3927)
!3934 = distinct !DISubprogram(name: "VEC_bitmap_heap_free", scope: !3, file: !3, line: 50, type: !3935, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{null, !2795}
!3937 = !{!3938}
!3938 = !DILocalVariable(name: "vec_", arg: 1, scope: !3934, file: !3, line: 50, type: !2795)
!3939 = !DILocation(line: 0, scope: !3934)
!3940 = !DILocation(line: 50, column: 1, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 50, column: 1)
!3942 = !DILocation(line: 50, column: 1, scope: !3934)
!3943 = distinct !DISubprogram(name: "VEC_bitmap_base_length", scope: !3, file: !3, line: 49, type: !3944, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!7, !3919}
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "vec_", arg: 1, scope: !3943, file: !3, line: 49, type: !3919)
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 49, column: 1, scope: !3943)
!3950 = distinct !DISubprogram(name: "VEC_bitmap_heap_reserve_exact", scope: !3, file: !3, line: 50, type: !3951, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!774, !2795, !774}
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "vec_", arg: 1, scope: !3950, file: !3, line: 50, type: !2795)
!3955 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3950, file: !3, line: 50, type: !774)
!3956 = !DILocalVariable(name: "extend", scope: !3950, file: !3, line: 50, type: !774)
!3957 = !DILocation(line: 0, scope: !3950)
!3958 = !DILocation(line: 50, column: 1, scope: !3950)
!3959 = !DILocation(line: 50, column: 1, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 50, column: 1)
!3961 = distinct !DISubprogram(name: "VEC_bitmap_base_space", scope: !3, file: !3, line: 49, type: !3962, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!774, !2805, !774}
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "vec_", arg: 1, scope: !3961, file: !3, line: 49, type: !2805)
!3966 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3961, file: !3, line: 49, type: !774)
!3967 = !DILocation(line: 0, scope: !3961)
!3968 = !DILocation(line: 49, column: 1, scope: !3961)
!3969 = distinct !DISubprogram(name: "rhs_regno", scope: !573, file: !573, line: 1051, type: !3970, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!7, !3972}
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !783, line: 51, baseType: !3973)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "x", arg: 1, scope: !3969, file: !573, line: 1051, type: !3972)
!3977 = !DILocation(line: 0, scope: !3969)
!3978 = !DILocation(line: 1053, column: 10, scope: !3969)
!3979 = !DILocation(line: 1053, column: 3, scope: !3969)
!3980 = distinct !DISubprogram(name: "simple_move_operand", scope: !3, file: !3, line: 74, type: !2946, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3981)
!3981 = !{!3982}
!3982 = !DILocalVariable(name: "x", arg: 1, scope: !3980, file: !3, line: 74, type: !782)
!3983 = !DILocation(line: 0, scope: !3980)
!3984 = !DILocation(line: 76, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 76, column: 7)
!3986 = !DILocation(line: 76, column: 20, scope: !3985)
!3987 = !DILocation(line: 76, column: 7, scope: !3980)
!3988 = !DILocation(line: 77, column: 9, scope: !3985)
!3989 = !DILocation(line: 0, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 79, column: 7)
!3991 = !DILocation(line: 79, column: 8, scope: !3990)
!3992 = !DILocation(line: 77, column: 5, scope: !3985)
!3993 = !DILocation(line: 79, column: 7, scope: !3980)
!3994 = !DILocation(line: 82, column: 20, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 82, column: 7)
!3996 = !DILocation(line: 83, column: 7, scope: !3995)
!3997 = !DILocation(line: 83, column: 23, scope: !3995)
!3998 = !DILocation(line: 84, column: 7, scope: !3995)
!3999 = !DILocation(line: 84, column: 23, scope: !3995)
!4000 = !DILocation(line: 85, column: 7, scope: !3995)
!4001 = !DILocation(line: 85, column: 23, scope: !3995)
!4002 = !DILocation(line: 82, column: 7, scope: !3980)
!4003 = !DILocation(line: 88, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 88, column: 7)
!4005 = !DILocation(line: 89, column: 7, scope: !4004)
!4006 = !DILocation(line: 89, column: 11, scope: !4004)
!4007 = !DILocation(line: 90, column: 4, scope: !4004)
!4008 = !DILocation(line: 90, column: 33, scope: !4004)
!4009 = !DILocation(line: 90, column: 7, scope: !4004)
!4010 = !DILocation(line: 88, column: 7, scope: !3980)
!4011 = !DILocation(line: 93, column: 3, scope: !3980)
!4012 = !DILocation(line: 94, column: 1, scope: !3980)
!4013 = distinct !DISubprogram(name: "VEC_bitmap_base_index", scope: !3, file: !3, line: 49, type: !4014, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!1918, !3919, !7}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "vec_", arg: 1, scope: !4013, file: !3, line: 49, type: !3919)
!4018 = !DILocalVariable(name: "ix_", arg: 2, scope: !4013, file: !3, line: 49, type: !7)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 49, column: 1, scope: !4013)
!4021 = distinct !DISubprogram(name: "VEC_bitmap_base_replace", scope: !3, file: !3, line: 49, type: !4022, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!1918, !2805, !7, !1918}
!4024 = !{!4025, !4026, !4027, !4028}
!4025 = !DILocalVariable(name: "vec_", arg: 1, scope: !4021, file: !3, line: 49, type: !2805)
!4026 = !DILocalVariable(name: "ix_", arg: 2, scope: !4021, file: !3, line: 49, type: !7)
!4027 = !DILocalVariable(name: "obj_", arg: 3, scope: !4021, file: !3, line: 49, type: !1918)
!4028 = !DILocalVariable(name: "old_obj_", scope: !4021, file: !3, line: 49, type: !1918)
!4029 = !DILocation(line: 0, scope: !4021)
!4030 = !DILocation(line: 49, column: 1, scope: !4021)
!4031 = distinct !DISubprogram(name: "resolve_reg_p", scope: !3, file: !3, line: 476, type: !2946, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "x", arg: 1, scope: !4031, file: !3, line: 476, type: !782)
!4034 = !DILocation(line: 0, scope: !4031)
!4035 = !DILocation(line: 478, column: 10, scope: !4031)
!4036 = !DILocation(line: 478, column: 23, scope: !4031)
!4037 = !DILocation(line: 478, column: 3, scope: !4031)
!4038 = distinct !DISubprogram(name: "resolve_subreg_p", scope: !3, file: !3, line: 485, type: !2946, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "x", arg: 1, scope: !4038, file: !3, line: 485, type: !782)
!4041 = !DILocation(line: 0, scope: !4038)
!4042 = !DILocation(line: 487, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 487, column: 7)
!4044 = !DILocation(line: 487, column: 20, scope: !4043)
!4045 = !DILocation(line: 487, column: 7, scope: !4038)
!4046 = !DILocation(line: 489, column: 25, scope: !4038)
!4047 = !DILocation(line: 489, column: 10, scope: !4038)
!4048 = !DILocation(line: 489, column: 3, scope: !4038)
!4049 = !DILocation(line: 490, column: 1, scope: !4038)
!4050 = distinct !DISubprogram(name: "simplify_gen_subreg_concatn", scope: !3, file: !3, line: 414, type: !4051, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{!782, !189, !782, !189, !7}
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059}
!4054 = !DILocalVariable(name: "outermode", arg: 1, scope: !4050, file: !3, line: 414, type: !189)
!4055 = !DILocalVariable(name: "op", arg: 2, scope: !4050, file: !3, line: 414, type: !782)
!4056 = !DILocalVariable(name: "innermode", arg: 3, scope: !4050, file: !3, line: 415, type: !189)
!4057 = !DILocalVariable(name: "byte", arg: 4, scope: !4050, file: !3, line: 415, type: !7)
!4058 = !DILocalVariable(name: "ret", scope: !4050, file: !3, line: 417, type: !782)
!4059 = !DILocalVariable(name: "op2", scope: !4060, file: !3, line: 425, type: !782)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 424, column: 5)
!4061 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 423, column: 7)
!4062 = !DILocation(line: 0, scope: !4050)
!4063 = !DILocation(line: 423, column: 7, scope: !4061)
!4064 = !DILocation(line: 423, column: 21, scope: !4061)
!4065 = !DILocation(line: 423, column: 31, scope: !4061)
!4066 = !DILocation(line: 423, column: 34, scope: !4061)
!4067 = !DILocation(line: 423, column: 61, scope: !4061)
!4068 = !DILocation(line: 423, column: 7, scope: !4050)
!4069 = !DILocation(line: 427, column: 12, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 427, column: 11)
!4071 = !DILocation(line: 428, column: 8, scope: !4070)
!4072 = !DILocation(line: 428, column: 5, scope: !4070)
!4073 = !DILocation(line: 429, column: 4, scope: !4070)
!4074 = !DILocation(line: 0, scope: !4060)
!4075 = !DILocation(line: 434, column: 10, scope: !4060)
!4076 = !DILocation(line: 429, column: 7, scope: !4070)
!4077 = !DILocation(line: 429, column: 24, scope: !4070)
!4078 = !DILocation(line: 427, column: 11, scope: !4060)
!4079 = !DILocation(line: 430, column: 9, scope: !4070)
!4080 = !DILocation(line: 430, column: 2, scope: !4070)
!4081 = !DILocation(line: 433, column: 53, scope: !4060)
!4082 = !DILocation(line: 433, column: 13, scope: !4060)
!4083 = !DILocation(line: 435, column: 15, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 435, column: 11)
!4085 = !DILocation(line: 435, column: 11, scope: !4060)
!4086 = !DILocation(line: 438, column: 4, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 436, column: 2)
!4088 = !DILocation(line: 440, column: 4, scope: !4087)
!4089 = !DILocation(line: 442, column: 46, scope: !4087)
!4090 = !DILocation(line: 443, column: 14, scope: !4087)
!4091 = !DILocation(line: 443, column: 12, scope: !4087)
!4092 = !DILocation(line: 442, column: 10, scope: !4087)
!4093 = !DILocation(line: 444, column: 4, scope: !4087)
!4094 = !DILocation(line: 450, column: 7, scope: !4060)
!4095 = !DILocation(line: 0, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 453, column: 7)
!4097 = !DILocation(line: 453, column: 7, scope: !4096)
!4098 = !DILocation(line: 453, column: 21, scope: !4096)
!4099 = !DILocation(line: 453, column: 7, scope: !4050)
!4100 = !DILocation(line: 454, column: 12, scope: !4096)
!4101 = !DILocation(line: 454, column: 5, scope: !4096)
!4102 = !DILocation(line: 456, column: 9, scope: !4050)
!4103 = !DILocation(line: 462, column: 7, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 461, column: 7)
!4105 = !DILocation(line: 462, column: 10, scope: !4104)
!4106 = !DILocation(line: 462, column: 24, scope: !4104)
!4107 = !DILocation(line: 463, column: 7, scope: !4104)
!4108 = !DILocation(line: 463, column: 10, scope: !4104)
!4109 = !DILocation(line: 463, column: 27, scope: !4104)
!4110 = !DILocation(line: 464, column: 7, scope: !4104)
!4111 = !DILocation(line: 464, column: 11, scope: !4104)
!4112 = !DILocation(line: 465, column: 6, scope: !4104)
!4113 = !DILocation(line: 465, column: 4, scope: !4104)
!4114 = !DILocation(line: 461, column: 7, scope: !4050)
!4115 = !DILocation(line: 466, column: 12, scope: !4104)
!4116 = !DILocation(line: 466, column: 5, scope: !4104)
!4117 = !DILocation(line: 468, column: 3, scope: !4050)
!4118 = !DILocation(line: 470, column: 1, scope: !4050)
!4119 = distinct !DISubprogram(name: "simplify_subreg_concatn", scope: !3, file: !3, line: 387, type: !4120, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!782, !189, !782, !7}
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4123 = !DILocalVariable(name: "outermode", arg: 1, scope: !4119, file: !3, line: 387, type: !189)
!4124 = !DILocalVariable(name: "op", arg: 2, scope: !4119, file: !3, line: 387, type: !782)
!4125 = !DILocalVariable(name: "byte", arg: 3, scope: !4119, file: !3, line: 388, type: !7)
!4126 = !DILocalVariable(name: "inner_size", scope: !4119, file: !3, line: 390, type: !7)
!4127 = !DILocalVariable(name: "innermode", scope: !4119, file: !3, line: 391, type: !189)
!4128 = !DILocalVariable(name: "part", scope: !4119, file: !3, line: 392, type: !782)
!4129 = !DILocalVariable(name: "final_offset", scope: !4119, file: !3, line: 393, type: !7)
!4130 = !DILocation(line: 0, scope: !4119)
!4131 = !DILocation(line: 395, column: 3, scope: !4119)
!4132 = !DILocation(line: 396, column: 3, scope: !4119)
!4133 = !DILocation(line: 398, column: 15, scope: !4119)
!4134 = !DILocation(line: 399, column: 3, scope: !4119)
!4135 = !DILocation(line: 400, column: 3, scope: !4119)
!4136 = !DILocation(line: 402, column: 16, scope: !4119)
!4137 = !DILocation(line: 405, column: 22, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 405, column: 7)
!4139 = !DILocation(line: 402, column: 44, scope: !4119)
!4140 = !DILocation(line: 402, column: 42, scope: !4119)
!4141 = !DILocation(line: 403, column: 10, scope: !4119)
!4142 = !DILocation(line: 404, column: 23, scope: !4119)
!4143 = !DILocation(line: 405, column: 20, scope: !4138)
!4144 = !DILocation(line: 405, column: 48, scope: !4138)
!4145 = !DILocation(line: 405, column: 7, scope: !4119)
!4146 = !DILocation(line: 408, column: 48, scope: !4119)
!4147 = !DILocation(line: 408, column: 10, scope: !4119)
!4148 = !DILocation(line: 408, column: 3, scope: !4119)
!4149 = !DILocation(line: 409, column: 1, scope: !4119)
!4150 = distinct !DISubprogram(name: "adjust_decomposed_uses", scope: !3, file: !3, line: 538, type: !2985, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4151)
!4151 = !{!4152, !4153, !4154}
!4152 = !DILocalVariable(name: "px", arg: 1, scope: !4150, file: !3, line: 538, type: !2505)
!4153 = !DILocalVariable(name: "data", arg: 2, scope: !4150, file: !3, line: 538, type: !778)
!4154 = !DILocalVariable(name: "x", scope: !4150, file: !3, line: 540, type: !782)
!4155 = !DILocation(line: 0, scope: !4150)
!4156 = !DILocation(line: 540, column: 11, scope: !4150)
!4157 = !DILocation(line: 542, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 542, column: 7)
!4159 = !DILocation(line: 542, column: 7, scope: !4150)
!4160 = !DILocation(line: 545, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 545, column: 7)
!4162 = !DILocation(line: 545, column: 7, scope: !4150)
!4163 = !DILocation(line: 547, column: 36, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 546, column: 5)
!4165 = !DILocation(line: 547, column: 50, scope: !4164)
!4166 = !DILocation(line: 548, column: 8, scope: !4164)
!4167 = !DILocation(line: 547, column: 11, scope: !4164)
!4168 = !DILocation(line: 550, column: 11, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 550, column: 11)
!4170 = !DILocation(line: 550, column: 11, scope: !4164)
!4171 = !DILocation(line: 551, column: 6, scope: !4169)
!4172 = !DILocation(line: 551, column: 2, scope: !4169)
!4173 = !DILocation(line: 553, column: 16, scope: !4169)
!4174 = !DILocation(line: 553, column: 6, scope: !4169)
!4175 = !DILocation(line: 556, column: 7, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 556, column: 7)
!4177 = !DILocation(line: 556, column: 7, scope: !4150)
!4178 = !DILocation(line: 557, column: 11, scope: !4176)
!4179 = !DILocation(line: 557, column: 9, scope: !4176)
!4180 = !DILocation(line: 557, column: 5, scope: !4176)
!4181 = !DILocation(line: 560, column: 1, scope: !4150)
!4182 = distinct !DISubprogram(name: "can_decompose_p", scope: !3, file: !3, line: 609, type: !2946, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4183 = !{!4184, !4185}
!4184 = !DILocalVariable(name: "x", arg: 1, scope: !4182, file: !3, line: 609, type: !782)
!4185 = !DILocalVariable(name: "regno", scope: !4186, file: !3, line: 613, type: !7)
!4186 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 612, column: 5)
!4187 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 611, column: 7)
!4188 = !DILocation(line: 0, scope: !4182)
!4189 = !DILocation(line: 611, column: 7, scope: !4187)
!4190 = !DILocation(line: 611, column: 7, scope: !4182)
!4191 = !DILocation(line: 613, column: 28, scope: !4186)
!4192 = !DILocation(line: 0, scope: !4186)
!4193 = !DILocation(line: 615, column: 11, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 615, column: 11)
!4195 = !DILocation(line: 615, column: 11, scope: !4186)
!4196 = !DILocation(line: 616, column: 27, scope: !4194)
!4197 = !DILocation(line: 616, column: 38, scope: !4194)
!4198 = !DILocation(line: 616, column: 10, scope: !4194)
!4199 = !DILocation(line: 617, column: 3, scope: !4194)
!4200 = !DILocation(line: 617, column: 6, scope: !4194)
!4201 = !DILocation(line: 616, column: 2, scope: !4194)
!4202 = !DILocation(line: 619, column: 24, scope: !4194)
!4203 = !DILocation(line: 619, column: 10, scope: !4194)
!4204 = !DILocation(line: 619, column: 9, scope: !4194)
!4205 = !DILocation(line: 619, column: 2, scope: !4194)
!4206 = !DILocation(line: 623, column: 1, scope: !4182)
