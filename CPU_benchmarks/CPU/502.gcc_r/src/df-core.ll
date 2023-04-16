; ModuleID = 'df-core.bc'
source_filename = "df-core.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
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
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@df = common dso_local local_unnamed_addr global %struct.df* null, align 8, !dbg !0
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"setting blocks to analyze \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df_bitmap_obstack = common dso_local global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !2106
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"clearing blocks_to_analyze\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"df-core.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dfinit\00", align 1
@pass_df_initialize_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_opt, i32 ()* @rest_of_handle_df_initialize, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2075
@.str.6 = private unnamed_addr constant [14 x i8] c"no-opt dfinit\00", align 1
@pass_df_initialize_no_opt = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8 ()* @gate_no_opt, i32 ()* @rest_of_handle_df_initialize, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2102
@.str.7 = private unnamed_addr constant [8 x i8] c"dfinish\00", align 1
@pass_df_finish = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8 ()* null, i32 ()* @rest_of_handle_df_finish, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !2104
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"df_analyze called\0A\00", align 1
@user_problem = internal global %struct.df_problem zeroinitializer, align 8, !dbg !2108
@user_dflow = internal global %struct.dataflow zeroinitializer, align 8, !dbg !2110
@.str.9 = private unnamed_addr constant [26 x i8] c"shoving block %d into %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external dso_local local_unnamed_addr global [53 x i8*], align 16
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"\0A\0Astarting region dump\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"\0A\0A%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\0ADataflow summary:\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"def_info->table_size = %d, use_info->table_size = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%c%d(%d)\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%c%d(%d) \00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"insn %d bb %d luid %d defs \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" eq_uses \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"reg %d defs \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%c%d \00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"reg %d bb %d insn %d flag 0x%x type 0x%x \00", align 1
@flag_dump_noaddr = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"loc #(#) chain \00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"loc %p(%p) chain \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"chain \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@current_function_sp_is_unchanging = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [80 x i8] c"df_worklist_dataflow_doublequeue:n_basic_blocks %d n_edges %d count %d (%5.2g)\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"insn %d luid %d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" defs \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c" eq uses \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c" mws \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"mw %c r[%d..%d]\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2132
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2133
  ret i32 %call, !dbg !2134
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2135 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2139
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2140
  ret i32 %call, !dbg !2141
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2146, metadata !DIExpression()), !dbg !2147
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2148
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2148
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2148
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2148
  %cmp = icmp uge i8* %0, %1, !dbg !2148
  %conv1 = zext i1 %cmp to i64, !dbg !2148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2148
  %tobool = icmp eq i64 %expval, 0, !dbg !2148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2148

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2148
  br label %cond.end, !dbg !2148

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2148
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2148
  %2 = load i8, i8* %0, align 1, !dbg !2148
  %conv3 = zext i8 %2 to i32, !dbg !2148
  br label %cond.end, !dbg !2148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2148
  ret i32 %cond, !dbg !2149
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2152, metadata !DIExpression()), !dbg !2153
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2154
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2154
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2154
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2154
  %cmp = icmp uge i8* %0, %1, !dbg !2154
  %conv1 = zext i1 %cmp to i64, !dbg !2154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2154
  %tobool = icmp eq i64 %expval, 0, !dbg !2154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2154

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2154
  br label %cond.end, !dbg !2154

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2154
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2154
  %2 = load i8, i8* %0, align 1, !dbg !2154
  %conv3 = zext i8 %2 to i32, !dbg !2154
  br label %cond.end, !dbg !2154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2154
  ret i32 %cond, !dbg !2155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2156 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2157
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2157
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2157
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2157
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2157
  %cmp = icmp uge i8* %1, %2, !dbg !2157
  %conv1 = zext i1 %cmp to i64, !dbg !2157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2157
  %tobool = icmp eq i64 %expval, 0, !dbg !2157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2157

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2157
  br label %cond.end, !dbg !2157

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2157
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2157
  %3 = load i8, i8* %1, align 1, !dbg !2157
  %conv3 = zext i8 %3 to i32, !dbg !2157
  br label %cond.end, !dbg !2157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2157
  ret i32 %cond, !dbg !2158
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2163, metadata !DIExpression()), !dbg !2164
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2165
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2166
  ret i32 %call, !dbg !2167
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2173, metadata !DIExpression()), !dbg !2174
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2175
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2175
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2175
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2175
  %cmp = icmp uge i8* %0, %1, !dbg !2175
  %conv1 = zext i1 %cmp to i64, !dbg !2175
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2175
  %tobool = icmp eq i64 %expval, 0, !dbg !2175
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2175

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2175
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2175
  br label %cond.end, !dbg !2175

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2175
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2175
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2175
  store i8 %conv2, i8* %0, align 1, !dbg !2175
  %conv6 = and i32 %__c, 255, !dbg !2175
  br label %cond.end, !dbg !2175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2175
  ret i32 %cond, !dbg !2176
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2180, metadata !DIExpression()), !dbg !2181
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2182
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2182
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2182
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2182
  %cmp = icmp uge i8* %0, %1, !dbg !2182
  %conv1 = zext i1 %cmp to i64, !dbg !2182
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2182
  %tobool = icmp eq i64 %expval, 0, !dbg !2182
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2182

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2182
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2182
  br label %cond.end, !dbg !2182

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2182
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2182
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2182
  store i8 %conv2, i8* %0, align 1, !dbg !2182
  %conv6 = and i32 %__c, 255, !dbg !2182
  br label %cond.end, !dbg !2182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2182
  ret i32 %cond, !dbg !2183
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2186, metadata !DIExpression()), !dbg !2187
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2188
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2188
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2188
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2188
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2188
  %cmp = icmp uge i8* %1, %2, !dbg !2188
  %conv1 = zext i1 %cmp to i64, !dbg !2188
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2188
  %tobool = icmp eq i64 %expval, 0, !dbg !2188
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2188

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2188
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2188
  br label %cond.end, !dbg !2188

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2188
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2188
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2188
  store i8 %conv4, i8* %1, align 1, !dbg !2188
  %conv6 = and i32 %__c, 255, !dbg !2188
  br label %cond.end, !dbg !2188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2188
  ret i32 %cond, !dbg !2189
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2200
  ret i64 %call, !dbg !2201
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2204, metadata !DIExpression()), !dbg !2205
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2206
  %0 = load i32, i32* %_flags, align 8, !dbg !2206
  %and = lshr i32 %0, 4, !dbg !2206
  %and.lobit = and i32 %and, 1, !dbg !2206
  ret i32 %and.lobit, !dbg !2207
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2210, metadata !DIExpression()), !dbg !2211
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2212
  %0 = load i32, i32* %_flags, align 8, !dbg !2212
  %and = lshr i32 %0, 5, !dbg !2212
  %and.lobit = and i32 %and, 1, !dbg !2212
  ret i32 %and.lobit, !dbg !2213
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2217, metadata !DIExpression()), !dbg !2218
  %__c.off = add i32 %__c, 128, !dbg !2219
  %0 = icmp ult i32 %__c.off, 384, !dbg !2219
  br i1 %0, label %cond.true, label %cond.end, !dbg !2219

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2220
  %1 = load i32*, i32** %call, align 8, !dbg !2221
  %idxprom = sext i32 %__c to i64, !dbg !2222
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2222
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2222
  br label %cond.end, !dbg !2223

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2223
  ret i32 %cond, !dbg !2224
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2225 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2227, metadata !DIExpression()), !dbg !2228
  %__c.off = add i32 %__c, 128, !dbg !2229
  %0 = icmp ult i32 %__c.off, 384, !dbg !2229
  br i1 %0, label %cond.true, label %cond.end, !dbg !2229

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2230
  %1 = load i32*, i32** %call, align 8, !dbg !2231
  %idxprom = sext i32 %__c to i64, !dbg !2232
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2232
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2232
  br label %cond.end, !dbg !2233

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2233
  ret i32 %cond, !dbg !2234
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2240, metadata !DIExpression()), !dbg !2241
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2242
  %conv = trunc i64 %call to i32, !dbg !2243
  ret i32 %conv, !dbg !2244
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2249, metadata !DIExpression()), !dbg !2250
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2251
  ret i64 %call, !dbg !2252
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2258, metadata !DIExpression()), !dbg !2259
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2260
  ret i64 %call, !dbg !2261
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2262 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2268, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2269, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2270, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2271, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2272, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 0, metadata !2273, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2274, metadata !DIExpression()), !dbg !2278
  br label %while.cond, !dbg !2279

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2280
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2273, metadata !DIExpression()), !dbg !2278
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2281
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2279

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2282
  %div = lshr i64 %add, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %div, metadata !2275, metadata !DIExpression()), !dbg !2278
  %mul = mul i64 %div, %__size, !dbg !2285
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2276, metadata !DIExpression()), !dbg !2278
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %call, metadata !2277, metadata !DIExpression()), !dbg !2278
  %cmp1 = icmp slt i32 %call, 0, !dbg !2288
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2290

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2291
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2293

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2273, metadata !DIExpression()), !dbg !2278
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2278
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2273, metadata !DIExpression()), !dbg !2278
  br label %while.cond, !dbg !2279, !llvm.loop !2295

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2278
  ret i8* %retval.0, !dbg !2297
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2304, metadata !DIExpression()), !dbg !2305
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2306
  ret double %call, !dbg !2307
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %base, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2321
  ret i64 %call, !dbg !2322
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %base, metadata !2331, metadata !DIExpression()), !dbg !2332
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2333
  ret i64 %call, !dbg !2334
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %base, metadata !2348, metadata !DIExpression()), !dbg !2349
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2350
  ret i64 %call, !dbg !2351
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2356, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %base, metadata !2358, metadata !DIExpression()), !dbg !2359
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2360
  ret i64 %call, !dbg !2361
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2362 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2403, metadata !DIExpression()), !dbg !2404
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2405
  ret i32 %call, !dbg !2406
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2410, metadata !DIExpression()), !dbg !2411
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2412
  ret i32 %call, !dbg !2413
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2419, metadata !DIExpression()), !dbg !2420
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2421
  ret i32 %call, !dbg !2422
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2423 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2430, metadata !DIExpression()), !dbg !2431
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2432
  ret i32 %call, !dbg !2433
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2434 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2440, metadata !DIExpression()), !dbg !2441
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2440, metadata !DIExpression(DW_OP_deref)), !dbg !2441
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2442
  ret i32 %call, !dbg !2443
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2444 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2452
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2453
  ret i32 %call, !dbg !2454
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2455 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2480, metadata !DIExpression()), !dbg !2481
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2482
  ret i32 %call, !dbg !2483
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2484 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2487, metadata !DIExpression()), !dbg !2488
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2489
  ret i32 %call, !dbg !2490
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2491 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2495, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2496, metadata !DIExpression()), !dbg !2497
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2498
  ret i32 %call, !dbg !2499
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2500 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2504, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2507, metadata !DIExpression()), !dbg !2508
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2509
  ret i32 %call, !dbg !2510
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_add_problem(%struct.df_problem* %problem) local_unnamed_addr #4 !dbg !2511 {
entry:
  call void @llvm.dbg.value(metadata %struct.df_problem* %problem, metadata !2515, metadata !DIExpression()), !dbg !2518
  %dependent_problem = getelementptr inbounds %struct.df_problem, %struct.df_problem* %problem, i64 0, i32 19, !dbg !2519
  %0 = load %struct.df_problem*, %struct.df_problem** %dependent_problem, align 8, !dbg !2519
  %tobool = icmp eq %struct.df_problem* %0, null, !dbg !2521
  br i1 %tobool, label %if.end, label %if.then, !dbg !2522

if.then:                                          ; preds = %entry
  tail call void @df_add_problem(%struct.df_problem* nonnull %0) #7, !dbg !2523
  br label %if.end, !dbg !2523

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !2524
  %id = getelementptr inbounds %struct.df_problem, %struct.df_problem* %problem, i64 0, i32 0, !dbg !2525
  %2 = load i32, i32* %id, align 8, !dbg !2525
  %idxprom = zext i32 %2 to i64, !dbg !2524
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 1, i64 %idxprom, !dbg !2524
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2524
  call void @llvm.dbg.value(metadata %struct.dataflow* %3, metadata !2516, metadata !DIExpression()), !dbg !2518
  %tobool2 = icmp eq %struct.dataflow* %3, null, !dbg !2526
  br i1 %tobool2, label %if.end4, label %cleanup.cont, !dbg !2528

if.end4:                                          ; preds = %if.end
  %call = tail call i8* @xcalloc(i64 1, i64 56) #6, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %call, metadata !2516, metadata !DIExpression()), !dbg !2518
  %problem5 = bitcast i8* %call to %struct.df_problem**, !dbg !2530
  store %struct.df_problem* %problem, %struct.df_problem** %problem5, align 8, !dbg !2531
  %4 = getelementptr inbounds i8, i8* %call, i64 52, !dbg !2532
  store i8 0, i8* %4, align 4, !dbg !2533
  %5 = getelementptr inbounds i8, i8* %call, i64 53, !dbg !2534
  store i8 1, i8* %5, align 1, !dbg !2535
  %6 = load %struct.df*, %struct.df** @df, align 8, !dbg !2536
  %7 = load i32, i32* %id, align 8, !dbg !2537
  %idxprom9 = zext i32 %7 to i64, !dbg !2536
  %arrayidx10 = getelementptr inbounds %struct.df, %struct.df* %6, i64 0, i32 1, i64 %idxprom9, !dbg !2536
  %8 = bitcast %struct.dataflow** %arrayidx10 to i8**, !dbg !2538
  store i8* %call, i8** %8, align 8, !dbg !2538
  %9 = load %struct.df*, %struct.df** @df, align 8, !dbg !2539
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %9, i64 0, i32 12, !dbg !2540
  %10 = load i32, i32* %num_problems_defined, align 4, !dbg !2541
  %inc = add nsw i32 %10, 1, !dbg !2541
  store i32 %inc, i32* %num_problems_defined, align 4, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %10, metadata !2517, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2518
  %11 = sext i32 %10 to i64, !dbg !2542
  br label %for.cond, !dbg !2542

for.cond:                                         ; preds = %if.then18, %if.end4
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then18 ], [ %11, %if.end4 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2544
  call void @llvm.dbg.value(metadata i32 undef, metadata !2517, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2518
  %cmp = icmp sgt i64 %indvars.iv, 0, !dbg !2545
  br i1 %cmp, label %for.body, label %for.end, !dbg !2547

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %id, align 8, !dbg !2548
  %13 = load %struct.df*, %struct.df** @df, align 8, !dbg !2551
  %arrayidx14 = getelementptr inbounds %struct.df, %struct.df* %13, i64 0, i32 0, i64 %indvars.iv.next, !dbg !2551
  %14 = load %struct.dataflow*, %struct.dataflow** %arrayidx14, align 8, !dbg !2551
  %problem15 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %14, i64 0, i32 0, !dbg !2552
  %15 = load %struct.df_problem*, %struct.df_problem** %problem15, align 8, !dbg !2552
  %id16 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %15, i64 0, i32 0, !dbg !2553
  %16 = load i32, i32* %id16, align 8, !dbg !2553
  %cmp17 = icmp ult i32 %12, %16, !dbg !2554
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !2555

if.then18:                                        ; preds = %for.body
  %17 = ptrtoint %struct.dataflow* %14 to i64, !dbg !2555
  %arrayidx24 = getelementptr inbounds %struct.df, %struct.df* %13, i64 0, i32 0, i64 %indvars.iv, !dbg !2556
  %18 = bitcast %struct.dataflow** %arrayidx24 to i64*, !dbg !2557
  store i64 %17, i64* %18, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata i32 undef, metadata !2517, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2518
  br label %for.cond, !dbg !2558, !llvm.loop !2559

if.else:                                          ; preds = %for.body
  %.lcssa = phi %struct.df* [ %13, %for.body ], !dbg !2551
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ]
  %sext = shl i64 %indvars.iv.lcssa3, 32, !dbg !2561
  %idxprom27 = ashr exact i64 %sext, 32, !dbg !2561
  %arrayidx28 = getelementptr inbounds %struct.df, %struct.df* %.lcssa, i64 0, i32 0, i64 %idxprom27, !dbg !2561
  %19 = bitcast %struct.dataflow** %arrayidx28 to i8**, !dbg !2563
  store i8* %call, i8** %19, align 8, !dbg !2563
  br label %cleanup.cont, !dbg !2564

for.end:                                          ; preds = %for.cond
  %20 = load i8**, i8*** bitcast (%struct.df** @df to i8***), align 8, !dbg !2565
  store i8* %call, i8** %20, align 8, !dbg !2566
  br label %cleanup.cont, !dbg !2567

cleanup.cont:                                     ; preds = %if.end, %if.else, %for.end
  ret void, !dbg !2567
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @df_set_flags(i32 %changeable_flags) local_unnamed_addr #4 !dbg !2568 {
entry:
  call void @llvm.dbg.value(metadata i32 %changeable_flags, metadata !2570, metadata !DIExpression()), !dbg !2572
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2573
  %changeable_flags1 = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 27, !dbg !2574
  %bf.load = load i8, i8* %changeable_flags1, align 4, !dbg !2574
  %bf.cast = sext i8 %bf.load to i32, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2571, metadata !DIExpression()), !dbg !2572
  %1 = trunc i32 %changeable_flags to i8, !dbg !2575
  %2 = or i8 %bf.load, %1, !dbg !2575
  store i8 %2, i8* %changeable_flags1, align 4, !dbg !2575
  ret i32 %bf.cast, !dbg !2576
}

; Function Attrs: nounwind uwtable
define dso_local i32 @df_clear_flags(i32 %changeable_flags) local_unnamed_addr #4 !dbg !2577 {
entry:
  call void @llvm.dbg.value(metadata i32 %changeable_flags, metadata !2579, metadata !DIExpression()), !dbg !2581
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2582
  %changeable_flags1 = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 27, !dbg !2583
  %bf.load = load i8, i8* %changeable_flags1, align 4, !dbg !2583
  %bf.cast = sext i8 %bf.load to i32, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2580, metadata !DIExpression()), !dbg !2581
  %1 = trunc i32 %changeable_flags to i8, !dbg !2584
  %2 = xor i8 %1, -1, !dbg !2584
  %3 = and i8 %bf.load, %2, !dbg !2584
  store i8 %3, i8* %changeable_flags1, align 4, !dbg !2584
  ret i32 %bf.cast, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local void @df_set_blocks(%struct.bitmap_head_def* %blocks) local_unnamed_addr #4 !dbg !2586 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %bb_index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks, metadata !2588, metadata !DIExpression()), !dbg !2630
  %tobool = icmp eq %struct.bitmap_head_def* %blocks, null, !dbg !2631
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2632
  %tobool1 = icmp ne %struct._IO_FILE* %0, null, !dbg !2632
  br i1 %tobool, label %if.else82, label %if.then, !dbg !2633

if.then:                                          ; preds = %entry
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2634

if.then2:                                         ; preds = %if.then
  tail call void @bitmap_print(%struct._IO_FILE* nonnull %0, %struct.bitmap_head_def* nonnull %blocks, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2635
  br label %if.end, !dbg !2635

if.end:                                           ; preds = %if.then2, %if.then
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !2637
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 2, !dbg !2638
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !2638
  %tobool3 = icmp eq %struct.bitmap_head_def* %2, null, !dbg !2637
  br i1 %tobool3, label %for.cond39.preheader, label %if.then4, !dbg !2639

for.cond39.preheader:                             ; preds = %if.end
  br label %for.cond39, !dbg !2640

if.then4:                                         ; preds = %if.end
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2594, metadata !DIExpression()), !dbg !2642
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !2643
  %blocks_to_analyze5 = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 2, !dbg !2644
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze5, align 8, !dbg !2644
  %call6 = tail call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %4, %struct.bitmap_head_def* nonnull %blocks) #6, !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2589, metadata !DIExpression()), !dbg !2642
  %5 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2646
  %6 = bitcast i32* %bb_index to i8*, !dbg !2646
  br label %for.cond, !dbg !2647

for.cond:                                         ; preds = %for.inc35, %if.then4
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc35 ], [ 0, %if.then4 ], !dbg !2648
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2589, metadata !DIExpression()), !dbg !2642
  %7 = load %struct.df*, %struct.df** @df, align 8, !dbg !2649
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %7, i64 0, i32 12, !dbg !2650
  %8 = load i32, i32* %num_problems_defined, align 4, !dbg !2650
  %9 = sext i32 %8 to i64, !dbg !2651
  %cmp = icmp slt i64 %indvars.iv8, %9, !dbg !2651
  br i1 %cmp, label %for.body, label %for.end36, !dbg !2652

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %7, i64 0, i32 0, i64 %indvars.iv8, !dbg !2653
  %10 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.dataflow* %10, metadata !2595, metadata !DIExpression()), !dbg !2654
  %optional_p = getelementptr inbounds %struct.dataflow, %struct.dataflow* %10, i64 0, i32 9, !dbg !2655
  %11 = load i8, i8* %optional_p, align 2, !dbg !2655
  %tobool7 = icmp eq i8 %11, 0, !dbg !2656
  br i1 %tobool7, label %for.body.if.else_crit_edge, label %land.lhs.true, !dbg !2657

for.body.if.else_crit_edge:                       ; preds = %for.body
  %problem13.phi.trans.insert = getelementptr inbounds %struct.dataflow, %struct.dataflow* %10, i64 0, i32 0, !dbg !2658
  %.pre = load %struct.df_problem*, %struct.df_problem** %problem13.phi.trans.insert, align 8, !dbg !2659
  br label %if.else, !dbg !2657

land.lhs.true:                                    ; preds = %for.body
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %10, i64 0, i32 0, !dbg !2660
  %12 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !2660
  %reset_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %12, i64 0, i32 3, !dbg !2661
  %13 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %reset_fun, align 8, !dbg !2661
  %tobool8 = icmp eq void (%struct.bitmap_head_def*)* %13, null, !dbg !2662
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !2663

if.then9:                                         ; preds = %land.lhs.true
  %blocks_to_analyze12 = getelementptr inbounds %struct.df, %struct.df* %7, i64 0, i32 2, !dbg !2664
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze12, align 8, !dbg !2664
  call void %13(%struct.bitmap_head_def* %14) #6, !dbg !2665
  br label %for.inc35, !dbg !2665

if.else:                                          ; preds = %for.body.if.else_crit_edge, %land.lhs.true
  %15 = phi %struct.df_problem* [ %.pre, %for.body.if.else_crit_edge ], [ %12, %land.lhs.true ], !dbg !2659
  %problem13 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %10, i64 0, i32 0, !dbg !2659
  %free_blocks_on_set_blocks = getelementptr inbounds %struct.df_problem, %struct.df_problem* %15, i64 0, i32 21, !dbg !2666
  %16 = load i8, i8* %free_blocks_on_set_blocks, align 4, !dbg !2666
  %tobool14 = icmp eq i8 %16, 0, !dbg !2667
  br i1 %tobool14, label %for.inc35, label %if.then15, !dbg !2668

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #8, !dbg !2669
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2599, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !2610, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %bb_index) #7, !dbg !2671
  br label %for.cond16, !dbg !2671

for.cond16:                                       ; preds = %for.inc, %if.then15
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2599, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !2610, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  %call17 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !2672
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2671
  br i1 %tobool18, label %for.end, label %for.body19, !dbg !2671

for.body19:                                       ; preds = %for.cond16
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2673
  %cfg = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !2673
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2673
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 2, !dbg !2673
  %19 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2673
  %tobool20 = icmp eq %struct.VEC_basic_block_gc* %19, null, !dbg !2673
  br i1 %tobool20, label %cond.end, label %cond.true, !dbg !2673

cond.true:                                        ; preds = %for.body19
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %19, i64 0, i32 0, !dbg !2673
  br label %cond.end, !dbg !2673

cond.end:                                         ; preds = %for.body19, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body19 ], !dbg !2673
  %20 = load i32, i32* %bb_index, align 4, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %20, metadata !2610, metadata !DIExpression()), !dbg !2646
  %call24 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %20) #7, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call24, metadata !2611, metadata !DIExpression()), !dbg !2674
  %tobool25 = icmp eq %struct.basic_block_def* %call24, null, !dbg !2675
  br i1 %tobool25, label %for.inc, label %if.then26, !dbg !2676

if.then26:                                        ; preds = %cond.end
  %21 = load i32, i32* %bb_index, align 4, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %21, metadata !2610, metadata !DIExpression()), !dbg !2646
  %call27 = call fastcc i8* @df_get_bb_info(%struct.dataflow* %10, i32 %21) #7, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %call27, metadata !2615, metadata !DIExpression()), !dbg !2679
  %tobool28 = icmp eq i8* %call27, null, !dbg !2680
  br i1 %tobool28, label %for.inc, label %if.then29, !dbg !2682

if.then29:                                        ; preds = %if.then26
  %22 = load %struct.df_problem*, %struct.df_problem** %problem13, align 8, !dbg !2683
  %free_bb_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %22, i64 0, i32 4, !dbg !2685
  %23 = load void (%struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, i8*)** %free_bb_fun, align 8, !dbg !2685
  call void %23(%struct.basic_block_def* nonnull %call24, i8* nonnull %call27) #6, !dbg !2686
  %24 = load i32, i32* %bb_index, align 4, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %24, metadata !2610, metadata !DIExpression()), !dbg !2646
  call fastcc void @df_set_bb_info(%struct.dataflow* %10, i32 %24, i8* null) #7, !dbg !2688
  br label %for.inc, !dbg !2689

for.inc:                                          ; preds = %if.then26, %cond.end, %if.then29
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2599, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !2610, metadata !DIExpression(DW_OP_deref)), !dbg !2646
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !2672
  br label %for.cond16, !dbg !2672, !llvm.loop !2690

for.end:                                          ; preds = %for.cond16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #8, !dbg !2692
  br label %for.inc35, !dbg !2693

for.inc35:                                        ; preds = %if.else, %if.then9, %for.end
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !2694
  call void @llvm.dbg.value(metadata i32 undef, metadata !2589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2642
  br label %for.cond, !dbg !2695, !llvm.loop !2696

for.end36:                                        ; preds = %for.cond
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2594, metadata !DIExpression()), !dbg !2642
  %.pre2 = load %struct.df*, %struct.df** @df, align 8, !dbg !2699
  %blocks_to_analyze81.phi.trans.insert = getelementptr inbounds %struct.df, %struct.df* %.pre2, i64 0, i32 2, !dbg !2700
  %.pre3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze81.phi.trans.insert, align 8, !dbg !2701
  br label %if.end80, !dbg !2702

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc72
  %indvars.iv = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next, %for.inc72 ]
  %.pre16 = phi %struct.df* [ %1, %for.cond39.preheader ], [ %.pre1, %for.inc72 ]
  %25 = phi %struct.df* [ %1, %for.cond39.preheader ], [ %.pre1, %for.inc72 ], !dbg !2703
  %blocks_to_reset.0 = phi %struct.bitmap_head_def* [ null, %for.cond39.preheader ], [ %blocks_to_reset.2, %for.inc72 ], !dbg !2704
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2620, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.0, metadata !2618, metadata !DIExpression()), !dbg !2705
  %num_problems_defined40 = getelementptr inbounds %struct.df, %struct.df* %25, i64 0, i32 12, !dbg !2706
  %26 = load i32, i32* %num_problems_defined40, align 4, !dbg !2706
  %27 = sext i32 %26 to i64, !dbg !2707
  %cmp41 = icmp slt i64 %indvars.iv, %27, !dbg !2707
  br i1 %cmp41, label %for.body43, label %for.end74, !dbg !2640

for.body43:                                       ; preds = %for.cond39
  %arrayidx47 = getelementptr inbounds %struct.df, %struct.df* %25, i64 0, i32 0, i64 %indvars.iv, !dbg !2708
  %28 = load %struct.dataflow*, %struct.dataflow** %arrayidx47, align 8, !dbg !2708
  call void @llvm.dbg.value(metadata %struct.dataflow* %28, metadata !2621, metadata !DIExpression()), !dbg !2709
  %optional_p48 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %28, i64 0, i32 9, !dbg !2710
  %29 = load i8, i8* %optional_p48, align 2, !dbg !2710
  %tobool50 = icmp eq i8 %29, 0, !dbg !2711
  br i1 %tobool50, label %for.inc72, label %land.lhs.true51, !dbg !2712

land.lhs.true51:                                  ; preds = %for.body43
  %problem52 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %28, i64 0, i32 0, !dbg !2713
  %30 = load %struct.df_problem*, %struct.df_problem** %problem52, align 8, !dbg !2713
  %reset_fun53 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %30, i64 0, i32 3, !dbg !2714
  %31 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %reset_fun53, align 8, !dbg !2714
  %tobool54 = icmp eq void (%struct.bitmap_head_def*)* %31, null, !dbg !2715
  br i1 %tobool54, label %for.inc72, label %if.then55, !dbg !2716

if.then55:                                        ; preds = %land.lhs.true51
  %tobool56 = icmp eq %struct.bitmap_head_def* %blocks_to_reset.0, null, !dbg !2717
  br i1 %tobool56, label %if.then57, label %if.end68, !dbg !2718

if.then57:                                        ; preds = %if.then55
  %call59 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2719
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call59, metadata !2618, metadata !DIExpression()), !dbg !2705
  %32 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2720
  %cfg61 = getelementptr inbounds %struct.function, %struct.function* %32, i64 0, i32 1, !dbg !2720
  %33 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg61, align 8, !dbg !2720
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %33, i64 0, i32 0, !dbg !2720
  br label %for.cond62, !dbg !2720

for.cond62:                                       ; preds = %for.body64, %if.then57
  %bb58.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.then57 ], [ %next_bb, %for.body64 ]
  %bb58.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb58.0.in, align 8, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb58.0, metadata !2625, metadata !DIExpression()), !dbg !2723
  %tobool63 = icmp eq %struct.basic_block_def* %bb58.0, null, !dbg !2720
  br i1 %tobool63, label %if.end68.loopexit, label %for.body64, !dbg !2720

for.body64:                                       ; preds = %for.cond62
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb58.0, i64 0, i32 9, !dbg !2724
  %34 = load i32, i32* %index, align 8, !dbg !2724
  %call65 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call59, i32 %34) #6, !dbg !2727
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb58.0, i64 0, i32 6, !dbg !2728
  br label %for.cond62, !dbg !2728, !llvm.loop !2729

if.end68.loopexit:                                ; preds = %for.cond62
  %.pre4 = load %struct.df_problem*, %struct.df_problem** %problem52, align 8, !dbg !2731
  %reset_fun70.phi.trans.insert = getelementptr inbounds %struct.df_problem, %struct.df_problem* %.pre4, i64 0, i32 3, !dbg !2732
  %.pre5 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %reset_fun70.phi.trans.insert, align 8, !dbg !2733
  br label %if.end68, !dbg !2731

if.end68:                                         ; preds = %if.end68.loopexit, %if.then55
  %35 = phi void (%struct.bitmap_head_def*)* [ %31, %if.then55 ], [ %.pre5, %if.end68.loopexit ], !dbg !2733
  %blocks_to_reset.1 = phi %struct.bitmap_head_def* [ %blocks_to_reset.0, %if.then55 ], [ %call59, %if.end68.loopexit ], !dbg !2705
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.1, metadata !2618, metadata !DIExpression()), !dbg !2705
  tail call void %35(%struct.bitmap_head_def* %blocks_to_reset.1) #6, !dbg !2734
  %.pre1.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !2703
  br label %for.inc72, !dbg !2735

for.inc72:                                        ; preds = %land.lhs.true51, %for.body43, %if.end68
  %.pre1 = phi %struct.df* [ %.pre1.pre, %if.end68 ], [ %.pre16, %land.lhs.true51 ], [ %.pre16, %for.body43 ], !dbg !2703
  %blocks_to_reset.2 = phi %struct.bitmap_head_def* [ %blocks_to_reset.1, %if.end68 ], [ %blocks_to_reset.0, %land.lhs.true51 ], [ %blocks_to_reset.0, %for.body43 ], !dbg !2704
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.2, metadata !2618, metadata !DIExpression()), !dbg !2705
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i32 undef, metadata !2620, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2705
  br label %for.cond39, !dbg !2737, !llvm.loop !2738

for.end74:                                        ; preds = %for.cond39
  %blocks_to_reset.0.lcssa = phi %struct.bitmap_head_def* [ %blocks_to_reset.0, %for.cond39 ], !dbg !2704
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.0.lcssa, metadata !2618, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.0.lcssa, metadata !2618, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_reset.0.lcssa, metadata !2618, metadata !DIExpression()), !dbg !2705
  %tobool75 = icmp eq %struct.bitmap_head_def* %blocks_to_reset.0.lcssa, null, !dbg !2740
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !2742

if.then76:                                        ; preds = %for.end74
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %blocks_to_reset.0.lcssa) #6, !dbg !2743
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2618, metadata !DIExpression()), !dbg !2705
  br label %if.end77, !dbg !2743

if.end77:                                         ; preds = %for.end74, %if.then76
  %call78 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2744
  %36 = load %struct.df*, %struct.df** @df, align 8, !dbg !2745
  %blocks_to_analyze79 = getelementptr inbounds %struct.df, %struct.df* %36, i64 0, i32 2, !dbg !2746
  store %struct.bitmap_head_def* %call78, %struct.bitmap_head_def** %blocks_to_analyze79, align 8, !dbg !2747
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %for.end36
  %37 = phi %struct.bitmap_head_def* [ %call78, %if.end77 ], [ %.pre3, %for.end36 ], !dbg !2701
  call void @bitmap_copy(%struct.bitmap_head_def* %37, %struct.bitmap_head_def* nonnull %blocks) #6, !dbg !2748
  %38 = load %struct.df*, %struct.df** @df, align 8, !dbg !2749
  %analyze_subset = getelementptr inbounds %struct.df, %struct.df* %38, i64 0, i32 28, !dbg !2750
  store i8 1, i8* %analyze_subset, align 1, !dbg !2751
  br label %if.end95, !dbg !2752

if.else82:                                        ; preds = %entry
  br i1 %tobool1, label %if.then84, label %if.end86, !dbg !2753

if.then84:                                        ; preds = %if.else82
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2755
  br label %if.end86, !dbg !2755

if.end86:                                         ; preds = %if.then84, %if.else82
  %39 = load %struct.df*, %struct.df** @df, align 8, !dbg !2757
  %blocks_to_analyze87 = getelementptr inbounds %struct.df, %struct.df* %39, i64 0, i32 2, !dbg !2759
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze87, align 8, !dbg !2759
  %tobool88 = icmp eq %struct.bitmap_head_def* %40, null, !dbg !2757
  br i1 %tobool88, label %if.end93, label %if.then89, !dbg !2760

if.then89:                                        ; preds = %if.end86
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %40) #6, !dbg !2761
  %41 = load %struct.df*, %struct.df** @df, align 8, !dbg !2761
  %blocks_to_analyze92 = getelementptr inbounds %struct.df, %struct.df* %41, i64 0, i32 2, !dbg !2763
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %blocks_to_analyze92, align 8, !dbg !2764
  br label %if.end93, !dbg !2765

if.end93:                                         ; preds = %if.end86, %if.then89
  %42 = phi %struct.df* [ %39, %if.end86 ], [ %41, %if.then89 ], !dbg !2766
  %analyze_subset94 = getelementptr inbounds %struct.df, %struct.df* %42, i64 0, i32 28, !dbg !2767
  store i8 0, i8* %analyze_subset94, align 1, !dbg !2768
  br label %if.end95

if.end95:                                         ; preds = %if.end93, %if.end80
  call void @df_maybe_reorganize_def_refs(i32 0) #6, !dbg !2769
  call void @df_maybe_reorganize_use_refs(i32 0) #6, !dbg !2770
  call void @df_mark_solutions_dirty() #7, !dbg !2771
  ret void, !dbg !2772
}

declare dso_local void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2773 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2781, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %start_bit, metadata !2783, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2784, metadata !DIExpression()), !dbg !2785
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2786
  %1 = load i64, i64* %0, align 8, !dbg !2786
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2787
  store i64 %1, i64* %2, align 8, !dbg !2787
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2788
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2789
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2790
  %div = lshr i32 %start_bit, 7, !dbg !2793
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2795
  br label %while.body, !dbg !2795

while.body:                                       ; preds = %entry, %if.end5
  %4 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %5 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %6 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %.in = phi i64 [ %1, %entry ], [ %11, %if.end5 ]
  %7 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %8 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ], !dbg !2796
  %9 = inttoptr i64 %.in to i64*, !dbg !2795
  %tobool = icmp eq %struct.bitmap_element_def* %8, null, !dbg !2797
  br i1 %tobool, label %if.then, label %if.end, !dbg !2798

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2799
  br label %while.end, !dbg !2801

if.end:                                           ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i64 0, i32 2, !dbg !2802
  %10 = load i32, i32* %indx, align 8, !dbg !2802
  %cmp = icmp ult i32 %10, %div, !dbg !2803
  br i1 %cmp, label %if.end5, label %while.end.loopexit, !dbg !2804

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %9, align 8, !dbg !2805
  store i64 %11, i64* %2, align 8, !dbg !2806
  %12 = inttoptr i64 %11 to %struct.bitmap_element_def*, !dbg !2795
  br label %while.body, !dbg !2795, !llvm.loop !2807

while.end.loopexit:                               ; preds = %if.end
  %.lcssa11 = phi %struct.bitmap_element_def* [ %4, %if.end ]
  %.lcssa9 = phi %struct.bitmap_element_def* [ %5, %if.end ]
  %.lcssa7 = phi %struct.bitmap_element_def* [ %6, %if.end ]
  br label %while.end, !dbg !2809

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %13 = phi %struct.bitmap_element_def* [ %.lcssa11, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %14 = phi %struct.bitmap_element_def* [ %.lcssa9, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %15 = phi %struct.bitmap_element_def* [ %.lcssa7, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2809
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2811
  %16 = load i32, i32* %indx9, align 8, !dbg !2811
  %cmp11 = icmp eq i32 %16, %div, !dbg !2812
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2813

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 2, !dbg !2814
  %17 = load i32, i32* %indx14, align 8, !dbg !2814
  %mul = shl i32 %17, 7, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2783, metadata !DIExpression()), !dbg !2785
  br label %if.end15, !dbg !2816

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ %start_bit, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2783, metadata !DIExpression()), !dbg !2785
  %div16 = lshr i32 %start_bit.addr.0, 6, !dbg !2817
  %rem = and i32 %div16, 1, !dbg !2818
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2819
  store i32 %rem, i32* %word_no, align 8, !dbg !2820
  %idxprom = zext i32 %rem to i64, !dbg !2821
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !2821
  %18 = load i64, i64* %arrayidx, align 8, !dbg !2821
  %rem20 = and i32 %start_bit.addr.0, 63, !dbg !2822
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2823
  %sh_prom = zext i32 %rem20 to i64, !dbg !2824
  %shr = lshr i64 %18, %sh_prom, !dbg !2824
  store i64 %shr, i64* %bits21, align 8, !dbg !2824
  %tobool23 = icmp eq i64 %shr, 0, !dbg !2825
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2825
  %add = add i32 %start_bit.addr.0, %lnot.ext, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %add, metadata !2783, metadata !DIExpression()), !dbg !2785
  store i32 %add, i32* %bit_no, align 4, !dbg !2827
  ret void, !dbg !2828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2834, metadata !DIExpression()), !dbg !2838
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2839
  %0 = load i64, i64* %bits, align 8, !dbg !2839
  %tobool = icmp eq i64 %0, 0, !dbg !2840
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2841

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2842
  br label %next_bit, !dbg !2845

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2835), !dbg !2846
  br label %while.cond, !dbg !2845

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2847
  %and = and i64 %2, 1, !dbg !2848
  %tobool2 = icmp eq i64 %and, 0, !dbg !2849
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2845

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2850
  store i64 %shr, i64* %bits, align 8, !dbg !2850
  %3 = load i32, i32* %bit_no, align 4, !dbg !2852
  %add = add i32 %3, 1, !dbg !2852
  store i32 %add, i32* %bit_no, align 4, !dbg !2852
  %.pre = load i64, i64* %bits, align 8, !dbg !2847
  br label %while.cond, !dbg !2845, !llvm.loop !2853

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2855
  %sub = add i32 %4, 63, !dbg !2856
  %div = and i32 %sub, -64, !dbg !2857
  store i32 %div, i32* %bit_no, align 4, !dbg !2858
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2859
  %5 = load i32, i32* %word_no, align 8, !dbg !2860
  %inc = add i32 %5, 1, !dbg !2860
  store i32 %inc, i32* %word_no, align 8, !dbg !2860
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2861
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2861
  br label %while.body6, !dbg !2862

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2863

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2864
  %cmp = icmp eq i32 %8, 2, !dbg !2865
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2861
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2863

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2842
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2842
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2842
  store i64 %10, i64* %bits, align 8, !dbg !2866
  %tobool14 = icmp eq i64 %10, 0, !dbg !2867
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2869

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2870
  %add17 = add i32 %11, 64, !dbg !2870
  store i32 %add17, i32* %bit_no, align 4, !dbg !2870
  %12 = load i32, i32* %word_no, align 8, !dbg !2871
  %inc19 = add i32 %12, 1, !dbg !2871
  store i32 %inc19, i32* %word_no, align 8, !dbg !2871
  br label %while.cond7, !dbg !2863, !llvm.loop !2872

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2861
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2874
  %14 = load i64, i64* %13, align 8, !dbg !2874
  store i64 %14, i64* %6, align 8, !dbg !2875
  %tobool24 = icmp eq i64 %14, 0, !dbg !2876
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2878

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2878
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2879
  %16 = load i32, i32* %indx, align 8, !dbg !2879
  %mul28 = shl i32 %16, 7, !dbg !2880
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2881
  store i32 0, i32* %word_no, align 8, !dbg !2882
  br label %while.body6, !dbg !2862, !llvm.loop !2883

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2885

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2885

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2838
  ret i8 %retval.0, !dbg !2885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2893, metadata !DIExpression()), !dbg !2894
  br label %land.end, !dbg !2895

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2895
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2895
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2895
  ret %struct.basic_block_def* %0, !dbg !2895
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @df_get_bb_info(%struct.dataflow* %dflow, i32 %index) unnamed_addr #4 !dbg !2896 {
entry:
  call void @llvm.dbg.value(metadata %struct.dataflow* %dflow, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %index, metadata !2901, metadata !DIExpression()), !dbg !2902
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 1, !dbg !2903
  %0 = load i8**, i8*** %block_info, align 8, !dbg !2903
  %cmp = icmp eq i8** %0, null, !dbg !2905
  br i1 %cmp, label %return, label %if.end, !dbg !2906

if.end:                                           ; preds = %entry
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 2, !dbg !2907
  %1 = load i32, i32* %block_info_size, align 8, !dbg !2907
  %cmp1 = icmp ugt i32 %1, %index, !dbg !2909
  br i1 %cmp1, label %if.end3, label %return, !dbg !2910

if.end3:                                          ; preds = %if.end
  %idxprom = zext i32 %index to i64, !dbg !2911
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom, !dbg !2911
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !2911
  br label %return, !dbg !2912

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i8* [ %2, %if.end3 ], [ null, %entry ], [ null, %if.end ], !dbg !2902
  ret i8* %retval.0, !dbg !2913
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_set_bb_info(%struct.dataflow* %dflow, i32 %index, i8* %bb_info) unnamed_addr #4 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.dataflow* %dflow, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 %index, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %bb_info, metadata !2920, metadata !DIExpression()), !dbg !2921
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 1, !dbg !2922
  %0 = load i8**, i8*** %block_info, align 8, !dbg !2922
  %tobool = icmp eq i8** %0, null, !dbg !2922
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2922

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1306, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2922
  %.pre = load i8**, i8*** %block_info, align 8, !dbg !2923
  br label %cond.end, !dbg !2922

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi i8** [ %0, %entry ], [ %.pre, %cond.true ], !dbg !2923
  %idxprom = zext i32 %index to i64, !dbg !2924
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom, !dbg !2924
  store i8* %bb_info, i8** %arrayidx, align 8, !dbg !2925
  ret void, !dbg !2926
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2927 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2931, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2932, metadata !DIExpression()), !dbg !2933
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2934
  %0 = load i64, i64* %bits, align 8, !dbg !2935
  %shr = lshr i64 %0, 1, !dbg !2935
  store i64 %shr, i64* %bits, align 8, !dbg !2935
  %1 = load i32, i32* %bit_no, align 4, !dbg !2936
  %add = add i32 %1, 1, !dbg !2936
  store i32 %add, i32* %bit_no, align 4, !dbg !2936
  ret void, !dbg !2937
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @df_maybe_reorganize_def_refs(i32) local_unnamed_addr #1

declare dso_local void @df_maybe_reorganize_use_refs(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_mark_solutions_dirty() local_unnamed_addr #4 !dbg !2938 {
entry:
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2943
  %tobool = icmp eq %struct.df* %0, null, !dbg !2943
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !2944

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2945

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !2947
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2940, metadata !DIExpression()), !dbg !2948
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 12, !dbg !2949
  %1 = load i32, i32* %num_problems_defined, align 4, !dbg !2949
  %2 = sext i32 %1 to i64, !dbg !2951
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !2951
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !2945

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 0, i64 %indvars.iv, !dbg !2952
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2952
  %solutions_dirty = getelementptr inbounds %struct.dataflow, %struct.dataflow* %3, i64 0, i32 8, !dbg !2953
  store i8 1, i8* %solutions_dirty, align 1, !dbg !2954
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2955
  call void @llvm.dbg.value(metadata i32 undef, metadata !2940, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2948
  br label %for.cond, !dbg !2956, !llvm.loop !2957

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2959

if.end:                                           ; preds = %if.end.loopexit, %entry
  ret void, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local void @df_remove_problem(%struct.dataflow* %dflow) local_unnamed_addr #4 !dbg !2960 {
entry:
  call void @llvm.dbg.value(metadata %struct.dataflow* %dflow, metadata !2964, metadata !DIExpression()), !dbg !2972
  %tobool = icmp eq %struct.dataflow* %dflow, null, !dbg !2973
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !2975

if.end:                                           ; preds = %entry
  %problem1 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 0, !dbg !2976
  %0 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata %struct.df_problem* %0, metadata !2965, metadata !DIExpression()), !dbg !2972
  %remove_problem_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %0, i64 0, i32 13, !dbg !2977
  %1 = load void ()*, void ()** %remove_problem_fun, align 8, !dbg !2977
  %tobool2 = icmp eq void ()* %1, null, !dbg !2977
  br i1 %tobool2, label %cond.true, label %cond.end, !dbg !2977

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 604, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2977
  br label %cond.end, !dbg !2977

cond.end:                                         ; preds = %if.end, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()), !dbg !2972
  br label %for.cond, !dbg !2978

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc ], [ 0, %cond.end ], !dbg !2980
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2966, metadata !DIExpression()), !dbg !2972
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !2981
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 12, !dbg !2983
  %3 = load i32, i32* %num_problems_defined, align 4, !dbg !2983
  %4 = sext i32 %3 to i64, !dbg !2984
  %cmp = icmp slt i64 %indvars.iv7, %4, !dbg !2984
  br i1 %cmp, label %for.body, label %for.cond10.preheader, !dbg !2985

for.cond10.preheader:                             ; preds = %for.cond
  %.lcssa11 = phi %struct.df* [ %2, %for.cond ], !dbg !2981
  %.lcssa10 = phi i32 [ %3, %for.cond ], !dbg !2983
  %5 = sext i32 %.lcssa10 to i64, !dbg !2986
  br label %for.cond10, !dbg !2986

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 0, i64 %indvars.iv7, !dbg !2987
  %6 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2987
  %problem3 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %6, i64 0, i32 0, !dbg !2989
  %7 = load %struct.df_problem*, %struct.df_problem** %problem3, align 8, !dbg !2989
  %dependent_problem = getelementptr inbounds %struct.df_problem, %struct.df_problem* %7, i64 0, i32 19, !dbg !2990
  %8 = load %struct.df_problem*, %struct.df_problem** %dependent_problem, align 8, !dbg !2990
  %cmp4 = icmp eq %struct.df_problem* %8, %0, !dbg !2991
  br i1 %cmp4, label %if.then5, label %for.inc, !dbg !2992

if.then5:                                         ; preds = %for.body
  tail call void @df_remove_problem(%struct.dataflow* %6) #7, !dbg !2993
  br label %for.inc, !dbg !2993

for.inc:                                          ; preds = %for.body, %if.then5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i32 undef, metadata !2966, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2972
  br label %for.cond, !dbg !2995, !llvm.loop !2996

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body13
  %indvars.iv5 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next6, %for.body13 ], !dbg !2998
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2966, metadata !DIExpression()), !dbg !2972
  %cmp12 = icmp slt i64 %indvars.iv5, %5, !dbg !2999
  br i1 %cmp12, label %for.body13, label %for.end40.loopexit, !dbg !2986

for.body13:                                       ; preds = %for.cond10
  %arrayidx16 = getelementptr inbounds %struct.df, %struct.df* %.lcssa11, i64 0, i32 0, i64 %indvars.iv5, !dbg !3000
  %9 = load %struct.dataflow*, %struct.dataflow** %arrayidx16, align 8, !dbg !3000
  %cmp17 = icmp eq %struct.dataflow* %9, %dflow, !dbg !3001
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3002
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond10, !dbg !3003, !llvm.loop !3004

for.cond19.preheader:                             ; preds = %for.body13
  %indvars.iv.next6.lcssa = phi i64 [ %indvars.iv.next6, %for.body13 ], !dbg !3002
  %sext = shl i64 %indvars.iv.next6.lcssa, 32, !dbg !3006
  %10 = ashr exact i64 %sext, 32, !dbg !3006
  br label %for.cond19, !dbg !3006

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body22
  %indvars.iv = phi i64 [ %10, %for.cond19.preheader ], [ %indvars.iv.next, %for.body22 ], !dbg !3008
  %11 = phi i32 [ %.lcssa10, %for.cond19.preheader ], [ %.pre1, %for.body22 ], !dbg !3008
  %12 = phi %struct.df* [ %.lcssa11, %for.cond19.preheader ], [ %.pre, %for.body22 ], !dbg !3010
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2967, metadata !DIExpression()), !dbg !3011
  %13 = sext i32 %11 to i64, !dbg !3012
  %cmp21 = icmp slt i64 %indvars.iv, %13, !dbg !3012
  br i1 %cmp21, label %for.body22, label %for.end31, !dbg !3006

for.body22:                                       ; preds = %for.cond19
  %idxprom24 = and i64 %indvars.iv, 4294967295, !dbg !3013
  %arrayidx25 = getelementptr inbounds %struct.df, %struct.df* %12, i64 0, i32 0, i64 %idxprom24, !dbg !3013
  %14 = bitcast %struct.dataflow** %arrayidx25 to i64*, !dbg !3013
  %15 = load i64, i64* %14, align 8, !dbg !3013
  %16 = add nsw i64 %indvars.iv, -1, !dbg !3014
  %arrayidx28 = getelementptr inbounds %struct.df, %struct.df* %12, i64 0, i32 0, i64 %16, !dbg !3015
  %17 = bitcast %struct.dataflow** %arrayidx28 to i64*, !dbg !3016
  store i64 %15, i64* %17, align 8, !dbg !3016
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i32 undef, metadata !2967, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3011
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3010
  %num_problems_defined20.phi.trans.insert = getelementptr inbounds %struct.df, %struct.df* %.pre, i64 0, i32 12, !dbg !3018
  %.pre1 = load i32, i32* %num_problems_defined20.phi.trans.insert, align 4, !dbg !3008
  br label %for.cond19, !dbg !3019, !llvm.loop !3020

for.end31:                                        ; preds = %for.cond19
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond19 ], !dbg !3008
  %.lcssa = phi %struct.df* [ %12, %for.cond19 ], !dbg !3010
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !2967, metadata !DIExpression()), !dbg !3011
  %sub33 = shl i64 %indvars.iv.lcssa, 32, !dbg !3022
  %sext9 = add i64 %sub33, -4294967296, !dbg !3022
  %idxprom34 = ashr exact i64 %sext9, 32, !dbg !3022
  %arrayidx35 = getelementptr inbounds %struct.df, %struct.df* %.lcssa, i64 0, i32 0, i64 %idxprom34, !dbg !3022
  store %struct.dataflow* null, %struct.dataflow** %arrayidx35, align 8, !dbg !3023
  %18 = load %struct.df*, %struct.df** @df, align 8, !dbg !3024
  %num_problems_defined36 = getelementptr inbounds %struct.df, %struct.df* %18, i64 0, i32 12, !dbg !3025
  %19 = load i32, i32* %num_problems_defined36, align 4, !dbg !3026
  %dec = add nsw i32 %19, -1, !dbg !3026
  store i32 %dec, i32* %num_problems_defined36, align 4, !dbg !3026
  br label %for.end40

for.end40.loopexit:                               ; preds = %for.cond10
  br label %for.end40, !dbg !3027

for.end40:                                        ; preds = %for.end40.loopexit, %for.end31
  %20 = load void ()*, void ()** %remove_problem_fun, align 8, !dbg !3027
  tail call void %20() #6, !dbg !3028
  %21 = load %struct.df*, %struct.df** @df, align 8, !dbg !3029
  %id = getelementptr inbounds %struct.df_problem, %struct.df_problem* %0, i64 0, i32 0, !dbg !3030
  %22 = load i32, i32* %id, align 8, !dbg !3030
  %idxprom42 = zext i32 %22 to i64, !dbg !3029
  %arrayidx43 = getelementptr inbounds %struct.df, %struct.df* %21, i64 0, i32 1, i64 %idxprom42, !dbg !3029
  store %struct.dataflow* null, %struct.dataflow** %arrayidx43, align 8, !dbg !3031
  br label %cleanup.cont, !dbg !3032

cleanup.cont:                                     ; preds = %entry, %for.end40
  ret void, !dbg !3032
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_finish_pass(i8 zeroext %verify) local_unnamed_addr #4 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata i8 %verify, metadata !3037, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3039, metadata !DIExpression()), !dbg !3045
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3046
  %tobool = icmp eq %struct.df* %0, null, !dbg !3046
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3048

if.end:                                           ; preds = %entry
  tail call void @df_maybe_reorganize_def_refs(i32 0) #6, !dbg !3049
  tail call void @df_maybe_reorganize_use_refs(i32 0) #6, !dbg !3050
  call void @llvm.dbg.value(metadata i32 0, metadata !3038, metadata !DIExpression()), !dbg !3045
  br label %for.cond, !dbg !3051

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !3045
  %removed.0 = phi i32 [ %removed.1, %for.inc ], [ 0, %if.end ], !dbg !3045
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3038, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %removed.0, metadata !3039, metadata !DIExpression()), !dbg !3045
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3052
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !3053
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !3053
  %3 = sext i32 %2 to i64, !dbg !3054
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3054
  br i1 %cmp, label %for.body, label %for.end, !dbg !3055

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !3056
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3056
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !3040, metadata !DIExpression()), !dbg !3057
  %problem1 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 0, !dbg !3058
  %5 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3058
  call void @llvm.dbg.value(metadata %struct.df_problem* %5, metadata !3044, metadata !DIExpression()), !dbg !3057
  %optional_p = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 9, !dbg !3059
  %6 = load i8, i8* %optional_p, align 2, !dbg !3059
  %tobool2 = icmp eq i8 %6, 0, !dbg !3061
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !3062

if.then3:                                         ; preds = %for.body
  %remove_problem_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %5, i64 0, i32 13, !dbg !3063
  %7 = load void ()*, void ()** %remove_problem_fun, align 8, !dbg !3063
  %tobool4 = icmp eq void ()* %7, null, !dbg !3063
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !3063

cond.true:                                        ; preds = %if.then3
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 659, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3063
  %.pre = load void ()*, void ()** %remove_problem_fun, align 8, !dbg !3065
  br label %cond.end, !dbg !3063

cond.end:                                         ; preds = %if.then3, %cond.true
  %8 = phi void ()* [ %7, %if.then3 ], [ %.pre, %cond.true ], !dbg !3065
  tail call void %8() #6, !dbg !3066
  %9 = load %struct.df*, %struct.df** @df, align 8, !dbg !3067
  %arrayidx8 = getelementptr inbounds %struct.df, %struct.df* %9, i64 0, i32 0, i64 %indvars.iv, !dbg !3067
  store %struct.dataflow* null, %struct.dataflow** %arrayidx8, align 8, !dbg !3068
  %10 = load %struct.df*, %struct.df** @df, align 8, !dbg !3069
  %id = getelementptr inbounds %struct.df_problem, %struct.df_problem* %5, i64 0, i32 0, !dbg !3070
  %11 = load i32, i32* %id, align 8, !dbg !3070
  %idxprom9 = zext i32 %11 to i64, !dbg !3069
  %arrayidx10 = getelementptr inbounds %struct.df, %struct.df* %10, i64 0, i32 1, i64 %idxprom9, !dbg !3069
  store %struct.dataflow* null, %struct.dataflow** %arrayidx10, align 8, !dbg !3071
  %inc = add nsw i32 %removed.0, 1, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3039, metadata !DIExpression()), !dbg !3045
  br label %for.inc, !dbg !3073

for.inc:                                          ; preds = %for.body, %cond.end
  %removed.1 = phi i32 [ %inc, %cond.end ], [ %removed.0, %for.body ], !dbg !3045
  call void @llvm.dbg.value(metadata i32 %removed.1, metadata !3039, metadata !DIExpression()), !dbg !3045
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3045
  br label %for.cond, !dbg !3075, !llvm.loop !3076

for.end:                                          ; preds = %for.cond
  %removed.0.lcssa = phi i32 [ %removed.0, %for.cond ], !dbg !3045
  %.lcssa2 = phi %struct.df* [ %1, %for.cond ], !dbg !3052
  %num_problems_defined.lcssa = phi i32* [ %num_problems_defined, %for.cond ], !dbg !3053
  %.lcssa = phi i32 [ %2, %for.cond ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %removed.0.lcssa, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %removed.0.lcssa, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %removed.0.lcssa, metadata !3039, metadata !DIExpression()), !dbg !3045
  %sub = sub nsw i32 %.lcssa, %removed.0.lcssa, !dbg !3078
  store i32 %sub, i32* %num_problems_defined.lcssa, align 4, !dbg !3078
  %changeable_flags = getelementptr inbounds %struct.df, %struct.df* %.lcssa2, i64 0, i32 27, !dbg !3079
  store i8 0, i8* %changeable_flags, align 4, !dbg !3080
  tail call void @df_process_deferred_rescans() #6, !dbg !3081
  %12 = load %struct.df*, %struct.df** @df, align 8, !dbg !3082
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %12, i64 0, i32 2, !dbg !3084
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !3084
  %tobool14 = icmp eq %struct.bitmap_head_def* %13, null, !dbg !3082
  br i1 %tobool14, label %cleanup.cont, label %if.then15, !dbg !3085

if.then15:                                        ; preds = %for.end
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %13) #6, !dbg !3086
  %14 = load %struct.df*, %struct.df** @df, align 8, !dbg !3086
  %blocks_to_analyze18 = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 2, !dbg !3088
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %blocks_to_analyze18, align 8, !dbg !3089
  tail call void @df_mark_solutions_dirty() #7, !dbg !3090
  %15 = load %struct.df*, %struct.df** @df, align 8, !dbg !3091
  %analyze_subset = getelementptr inbounds %struct.df, %struct.df* %15, i64 0, i32 28, !dbg !3092
  store i8 0, i8* %analyze_subset, align 1, !dbg !3093
  br label %cleanup.cont, !dbg !3094

cleanup.cont:                                     ; preds = %for.end, %entry, %if.then15
  ret void, !dbg !3095
}

declare dso_local void @df_process_deferred_rescans() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_opt() #4 !dbg !3096 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !3097
  %cmp = icmp sgt i32 %0, 0, !dbg !3098
  %conv1 = zext i1 %cmp to i8, !dbg !3097
  ret i8 %conv1, !dbg !3099
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_df_initialize() #4 !dbg !3100 {
entry:
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3101
  %tobool = icmp eq %struct.df* %0, null, !dbg !3101
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3101

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 707, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3101
  br label %cond.end, !dbg !3101

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call i8* @xcalloc(i64 1, i64 368) #6, !dbg !3102
  store i8* %call, i8** bitcast (%struct.df** @df to i8**), align 8, !dbg !3103
  %1 = getelementptr inbounds i8, i8* %call, i64 364, !dbg !3104
  store i8 0, i8* %1, align 4, !dbg !3105
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3106
  store i32 0, i32* @current_function_sp_is_unchanging, align 4, !dbg !3107
  tail call void @df_scan_add_problem() #6, !dbg !3108
  tail call void @df_scan_alloc(%struct.bitmap_head_def* null) #6, !dbg !3109
  tail call void @df_lr_add_problem() #6, !dbg !3110
  %2 = load i32, i32* @optimize, align 4, !dbg !3111
  %cmp = icmp sgt i32 %2, 1, !dbg !3113
  br i1 %cmp, label %if.then, label %if.end, !dbg !3114

if.then:                                          ; preds = %cond.end
  tail call void @df_live_add_problem() #6, !dbg !3115
  br label %if.end, !dbg !3115

if.end:                                           ; preds = %if.then, %cond.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3116
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3116
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3116
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !3116
  %5 = load i32, i32* %x_last_basic_block, align 8, !dbg !3116
  %conv = sext i32 %5 to i64, !dbg !3116
  %mul = shl nsw i64 %conv, 2, !dbg !3116
  %call1 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3116
  %6 = load %struct.df*, %struct.df** @df, align 8, !dbg !3117
  %postorder = getelementptr inbounds %struct.df, %struct.df* %6, i64 0, i32 21, !dbg !3118
  %7 = bitcast i32** %postorder to i8**, !dbg !3119
  store i8* %call1, i8** %7, align 8, !dbg !3119
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3120
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3120
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !3120
  %x_last_basic_block4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 5, !dbg !3120
  %10 = load i32, i32* %x_last_basic_block4, align 8, !dbg !3120
  %conv5 = sext i32 %10 to i64, !dbg !3120
  %mul6 = shl nsw i64 %conv5, 2, !dbg !3120
  %call7 = tail call i8* @xmalloc(i64 %mul6) #6, !dbg !3120
  %11 = load %struct.df*, %struct.df** @df, align 8, !dbg !3121
  %postorder_inverted = getelementptr inbounds %struct.df, %struct.df* %11, i64 0, i32 22, !dbg !3122
  %12 = bitcast i32** %postorder_inverted to i8**, !dbg !3123
  store i8* %call7, i8** %12, align 8, !dbg !3123
  %postorder8 = getelementptr inbounds %struct.df, %struct.df* %11, i64 0, i32 21, !dbg !3124
  %13 = load i32*, i32** %postorder8, align 8, !dbg !3124
  %call9 = tail call i32 @post_order_compute(i32* %13, i8 zeroext 1, i8 zeroext 1) #6, !dbg !3125
  %14 = load %struct.df*, %struct.df** @df, align 8, !dbg !3126
  %n_blocks = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 23, !dbg !3127
  store i32 %call9, i32* %n_blocks, align 8, !dbg !3128
  %postorder_inverted10 = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 22, !dbg !3129
  %15 = load i32*, i32** %postorder_inverted10, align 8, !dbg !3129
  %call11 = tail call i32 @inverted_post_order_compute(i32* %15) #6, !dbg !3130
  %16 = load %struct.df*, %struct.df** @df, align 8, !dbg !3131
  %n_blocks_inverted = getelementptr inbounds %struct.df, %struct.df* %16, i64 0, i32 24, !dbg !3132
  store i32 %call11, i32* %n_blocks_inverted, align 4, !dbg !3133
  %n_blocks12 = getelementptr inbounds %struct.df, %struct.df* %16, i64 0, i32 23, !dbg !3134
  %17 = load i32, i32* %n_blocks12, align 8, !dbg !3134
  %cmp14 = icmp eq i32 %17, %call11, !dbg !3134
  br i1 %cmp14, label %cond.end18, label %cond.true16, !dbg !3134

cond.true16:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 729, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3134
  br label %cond.end18, !dbg !3134

cond.end18:                                       ; preds = %if.end, %cond.true16
  %call20 = tail call i8* @xmalloc(i64 212) #6, !dbg !3135
  %18 = load %struct.df*, %struct.df** @df, align 8, !dbg !3136
  %hard_regs_live_count = getelementptr inbounds %struct.df, %struct.df* %18, i64 0, i32 25, !dbg !3137
  %19 = bitcast i32** %hard_regs_live_count to i8**, !dbg !3138
  store i8* %call20, i8** %19, align 8, !dbg !3138
  %call22 = tail call i8* @memset(i8* %call20, i32 0, i64 212) #6, !dbg !3139
  tail call void @df_hard_reg_init() #6, !dbg !3140
  tail call void @df_compute_regs_ever_live(i8 zeroext 1) #6, !dbg !3141
  tail call void @df_scan_blocks() #6, !dbg !3142
  tail call void @df_compute_regs_ever_live(i8 zeroext 0) #6, !dbg !3143
  ret i32 0, !dbg !3144
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_no_opt() #4 !dbg !3145 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !3146
  %cmp = icmp eq i32 %0, 0, !dbg !3147
  %conv1 = zext i1 %cmp to i8, !dbg !3146
  ret i8 %conv1, !dbg !3148
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_df_finish() #4 !dbg !3149 {
entry:
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3156
  %tobool = icmp eq %struct.df* %0, null, !dbg !3156
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3156

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 807, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3156
  br label %cond.end, !dbg !3156

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !3151, metadata !DIExpression()), !dbg !3157
  br label %for.cond, !dbg !3158

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !3159
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3151, metadata !DIExpression()), !dbg !3157
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3160
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !3161
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !3161
  %3 = sext i32 %2 to i64, !dbg !3162
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3162
  br i1 %cmp, label %for.body, label %for.end, !dbg !3163

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !3164
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !3152, metadata !DIExpression()), !dbg !3165
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 0, !dbg !3166
  %5 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3166
  %free_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %5, i64 0, i32 12, !dbg !3167
  %6 = load void ()*, void ()** %free_fun, align 8, !dbg !3167
  tail call void %6() #6, !dbg !3168
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i32 undef, metadata !3151, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3157
  br label %for.cond, !dbg !3170, !llvm.loop !3171

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.df* [ %1, %for.cond ], !dbg !3160
  %postorder = getelementptr inbounds %struct.df, %struct.df* %.lcssa, i64 0, i32 21, !dbg !3173
  %7 = load i32*, i32** %postorder, align 8, !dbg !3173
  %tobool1 = icmp eq i32* %7, null, !dbg !3175
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3176

if.then:                                          ; preds = %for.end
  %8 = bitcast i32* %7 to i8*, !dbg !3176
  tail call void @free(i8* nonnull %8) #6, !dbg !3177
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3178
  br label %if.end, !dbg !3177

if.end:                                           ; preds = %for.end, %if.then
  %9 = phi %struct.df* [ %.lcssa, %for.end ], [ %.pre, %if.then ], !dbg !3178
  %postorder_inverted = getelementptr inbounds %struct.df, %struct.df* %9, i64 0, i32 22, !dbg !3180
  %10 = load i32*, i32** %postorder_inverted, align 8, !dbg !3180
  %tobool3 = icmp eq i32* %10, null, !dbg !3178
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !3181

if.then4:                                         ; preds = %if.end
  %11 = bitcast i32* %10 to i8*, !dbg !3181
  tail call void @free(i8* nonnull %11) #6, !dbg !3182
  %.pre1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3183
  br label %if.end6, !dbg !3182

if.end6:                                          ; preds = %if.end, %if.then4
  %12 = phi %struct.df* [ %9, %if.end ], [ %.pre1, %if.then4 ], !dbg !3183
  %hard_regs_live_count = getelementptr inbounds %struct.df, %struct.df* %12, i64 0, i32 25, !dbg !3184
  %13 = bitcast i32** %hard_regs_live_count to i8**, !dbg !3184
  %14 = load i8*, i8** %13, align 8, !dbg !3184
  tail call void @free(i8* %14) #6, !dbg !3185
  %15 = load i8*, i8** bitcast (%struct.df** @df to i8**), align 8, !dbg !3186
  tail call void @free(i8* %15) #6, !dbg !3187
  store %struct.df* null, %struct.df** @df, align 8, !dbg !3188
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3189
  ret i32 0, !dbg !3190
}

; Function Attrs: nounwind uwtable
define dso_local void @df_worklist_dataflow(%struct.dataflow* %dataflow, %struct.bitmap_head_def* %blocks_to_consider, i32* %blocks_in_postorder, i32 %n_blocks) local_unnamed_addr #4 !dbg !3191 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.dataflow* %dataflow, metadata !3193, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_consider, metadata !3194, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32* %blocks_in_postorder, metadata !3195, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 %n_blocks, metadata !3196, metadata !DIExpression()), !dbg !3214
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3197, metadata !DIExpression()), !dbg !3214
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3216
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3216
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3216
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3216
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3216
  %call1 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2) #6, !dbg !3217
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call1, metadata !3198, metadata !DIExpression()), !dbg !3214
  %3 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3218
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #8, !dbg !3218
  %4 = bitcast i32* %index to i8*, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3219
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !3220
  %5 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3220
  %dir2 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %5, i64 0, i32 1, !dbg !3221
  %6 = load i32, i32* %dir2, align 4, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %6, metadata !3213, metadata !DIExpression()), !dbg !3214
  %cmp = icmp eq i32 %6, 0, !dbg !3222
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3222

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1016, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3222
  br label %cond.end, !dbg !3222

cond.end:                                         ; preds = %entry, %cond.true
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3223
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3223
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !3223
  %x_last_basic_block5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 5, !dbg !3223
  %9 = load i32, i32* %x_last_basic_block5, align 8, !dbg !3223
  %conv = sext i32 %9 to i64, !dbg !3223
  %mul = shl nsw i64 %conv, 2, !dbg !3224
  %call6 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3225
  %10 = bitcast i8* %call6 to i32*, !dbg !3226
  call void @llvm.dbg.value(metadata i32* %10, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()), !dbg !3214
  br label %for.cond, !dbg !3227

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %cond.end ], !dbg !3229
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3211, metadata !DIExpression()), !dbg !3214
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3230
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3230
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !3230
  %x_last_basic_block9 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 5, !dbg !3230
  %13 = load i32, i32* %x_last_basic_block9, align 8, !dbg !3230
  %14 = sext i32 %13 to i64, !dbg !3232
  %cmp10 = icmp slt i64 %indvars.iv1, %14, !dbg !3232
  br i1 %cmp10, label %for.body, label %for.end, !dbg !3233

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %indvars.iv1, !dbg !3234
  store i32 %13, i32* %arrayidx, align 4, !dbg !3235
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3236
  call void @llvm.dbg.value(metadata i32 undef, metadata !3211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3214
  br label %for.cond, !dbg !3237, !llvm.loop !3238

for.end:                                          ; preds = %for.cond
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call1) #6, !dbg !3240
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3209, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  call void @llvm.dbg.value(metadata i32* %index, metadata !3212, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %blocks_to_consider, i32 0, i32* nonnull %index) #7, !dbg !3241
  br label %for.cond15, !dbg !3241

for.cond15:                                       ; preds = %for.body17, %for.end
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3209, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  call void @llvm.dbg.value(metadata i32* %index, metadata !3212, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  %call16 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3243
  %tobool = icmp eq i8 %call16, 0, !dbg !3241
  br i1 %tobool, label %for.cond20.preheader, label %for.body17, !dbg !3241

for.cond20.preheader:                             ; preds = %for.cond15
  %15 = sext i32 %n_blocks to i64, !dbg !3245
  br label %for.cond20, !dbg !3245

for.body17:                                       ; preds = %for.cond15
  %16 = load i32, i32* %index, align 4, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %16, metadata !3212, metadata !DIExpression()), !dbg !3214
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call1, i32 %16) #7, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3209, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  call void @llvm.dbg.value(metadata i32* %index, metadata !3212, metadata !DIExpression(DW_OP_deref)), !dbg !3214
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %index) #7, !dbg !3243
  br label %for.cond15, !dbg !3243, !llvm.loop !3250

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body23
  %indvars.iv = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next, %for.body23 ], !dbg !3252
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3211, metadata !DIExpression()), !dbg !3214
  %cmp21 = icmp slt i64 %indvars.iv, %15, !dbg !3253
  br i1 %cmp21, label %for.body23, label %for.end31, !dbg !3245

for.body23:                                       ; preds = %for.cond20
  %arrayidx25 = getelementptr inbounds i32, i32* %blocks_in_postorder, i64 %indvars.iv, !dbg !3255
  %17 = load i32, i32* %arrayidx25, align 4, !dbg !3255
  %idxprom26 = sext i32 %17 to i64, !dbg !3257
  %arrayidx27 = getelementptr inbounds i32, i32* %10, i64 %idxprom26, !dbg !3257
  %18 = trunc i64 %indvars.iv to i32, !dbg !3258
  store i32 %18, i32* %arrayidx27, align 4, !dbg !3258
  %19 = trunc i64 %indvars.iv to i32, !dbg !3259
  %call28 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %19) #6, !dbg !3259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3211, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3214
  br label %for.cond20, !dbg !3261, !llvm.loop !3262

for.end31:                                        ; preds = %for.cond20
  %20 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3264
  %init_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %20, i64 0, i32 6, !dbg !3266
  %21 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %init_fun, align 8, !dbg !3266
  %tobool33 = icmp eq void (%struct.bitmap_head_def*)* %21, null, !dbg !3267
  br i1 %tobool33, label %if.end, label %if.then, !dbg !3268

if.then:                                          ; preds = %for.end31
  call void %21(%struct.bitmap_head_def* %blocks_to_consider) #6, !dbg !3269
  br label %if.end, !dbg !3269

if.end:                                           ; preds = %for.end31, %if.then
  call fastcc void @df_worklist_dataflow_doublequeue(%struct.dataflow* %dataflow, %struct.bitmap_head_def* %call, %struct.simple_bitmap_def* %call1, i32* %blocks_in_postorder, i32* %10) #7, !dbg !3270
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call1, i64 0, i32 0, !dbg !3271
  %22 = load i8*, i8** %popcount, align 8, !dbg !3271
  call void @free(i8* %22) #6, !dbg !3271
  %23 = bitcast %struct.simple_bitmap_def* %call1 to i8*, !dbg !3271
  call void @free(i8* %23) #6, !dbg !3271
  call void @free(i8* %call6) #6, !dbg !3272
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #8, !dbg !3273
  ret void, !dbg !3273
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3278, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3279, metadata !DIExpression()), !dbg !3283
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3284
  %0 = load i8*, i8** %popcount, align 8, !dbg !3284
  %tobool = icmp eq i8* %0, null, !dbg !3285
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3286

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3287
  %.pre2 = zext i32 %.pre to i64, !dbg !3288
  %.pre3 = shl i64 1, %.pre2, !dbg !3288
  %.pre4 = lshr i32 %bitno, 6, !dbg !3289
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3290
  br label %if.end7, !dbg !3286

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3291
  %idxprom = zext i32 %div to i64, !dbg !3291
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3291
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3291
  %rem = and i32 %bitno, 63, !dbg !3291
  %sh_prom = zext i32 %rem to i64, !dbg !3291
  %2 = shl i64 1, %sh_prom, !dbg !3292
  %3 = and i64 %1, %2, !dbg !3292
  %tobool1 = icmp eq i64 %3, 0, !dbg !3292
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3294

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3295
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3296
  %inc = add i8 %4, 1, !dbg !3296
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3296
  br label %if.end7, !dbg !3295

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3290
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3288
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3290
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3297
  %or = or i64 %5, %shl.pre-phi, !dbg !3297
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3297
  ret void, !dbg !3298
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_worklist_dataflow_doublequeue(%struct.dataflow* %dataflow, %struct.bitmap_head_def* %pending, %struct.simple_bitmap_def* %considered, i32* %blocks_in_postorder, i32* %bbindex_to_postorder) unnamed_addr #4 !dbg !3299 {
entry:
  call void @llvm.dbg.value(metadata %struct.dataflow* %dataflow, metadata !3303, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %considered, metadata !3305, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32* %blocks_in_postorder, metadata !3306, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32* %bbindex_to_postorder, metadata !3307, metadata !DIExpression()), !dbg !3316
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !3317
  %0 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3317
  %dir1 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %0, i64 0, i32 1, !dbg !3318
  %1 = load i32, i32* %dir1, align 4, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %1, metadata !3308, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3309, metadata !DIExpression()), !dbg !3316
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3319
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3310, metadata !DIExpression()), !dbg !3316
  %cmp = icmp eq i32 %1, 1, !dbg !3320
  br i1 %cmp, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3322

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %while.cond, !dbg !3322

entry.split.us:                                   ; preds = %entry
  br label %while.cond.us, !dbg !3322

while.cond.us:                                    ; preds = %while.cond.loopexit.us-lcssa.us.us, %entry.split.us
  %dcount.0.us = phi i32 [ 0, %entry.split.us ], [ %inc.us.us.lcssa, %while.cond.loopexit.us-lcssa.us.us ], !dbg !3316
  %pending.addr.0.us = phi %struct.bitmap_head_def* [ %pending, %entry.split.us ], [ %worklist.0.us, %while.cond.loopexit.us-lcssa.us.us ]
  %worklist.0.us = phi %struct.bitmap_head_def* [ %call, %entry.split.us ], [ %pending.addr.0.us, %while.cond.loopexit.us-lcssa.us.us ], !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.us, metadata !3310, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.us, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.us, metadata !3309, metadata !DIExpression()), !dbg !3316
  %first.us = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %pending.addr.0.us, i64 0, i32 0, !dbg !3323
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first.us, align 8, !dbg !3323
  %tobool.us = icmp eq %struct.bitmap_element_def* %2, null, !dbg !3323
  br i1 %tobool.us, label %while.end.us-lcssa.us, label %do.body.preheader.us, !dbg !3322

do.body.preheader.us:                             ; preds = %while.cond.us
  br label %do.body.us.us, !dbg !3322

do.body.us.us:                                    ; preds = %do.body.preheader.us, %do.body.us.us
  %dcount.1.us.us = phi i32 [ %inc.us.us, %do.body.us.us ], [ %dcount.0.us, %do.body.preheader.us ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.1.us.us, metadata !3309, metadata !DIExpression()), !dbg !3316
  %inc.us.us = add nsw i32 %dcount.1.us.us, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %inc.us.us, metadata !3309, metadata !DIExpression()), !dbg !3316
  %call3.us.us = tail call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %pending.addr.0.us) #6, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %call3.us.us, metadata !3313, metadata !DIExpression()), !dbg !3326
  %call4.us.us = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %pending.addr.0.us, i32 %call3.us.us) #6, !dbg !3327
  call void @llvm.dbg.value(metadata i32 undef, metadata !3315, metadata !DIExpression()), !dbg !3326
  %idxprom.us.us = sext i32 %call3.us.us to i64, !dbg !3328
  %arrayidx.us.us = getelementptr inbounds i32, i32* %blocks_in_postorder, i64 %idxprom.us.us, !dbg !3328
  %3 = load i32, i32* %arrayidx.us.us, align 4, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %3, metadata !3315, metadata !DIExpression()), !dbg !3326
  tail call fastcc void @df_worklist_propagate_forward(%struct.dataflow* %dataflow, i32 %3, i32* %bbindex_to_postorder, %struct.bitmap_head_def* %worklist.0.us, %struct.simple_bitmap_def* %considered) #7, !dbg !3329
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first.us, align 8, !dbg !3330
  %tobool6.us.us = icmp eq %struct.bitmap_element_def* %4, null, !dbg !3330
  br i1 %tobool6.us.us, label %while.cond.loopexit.us-lcssa.us.us, label %do.body.us.us, !dbg !3331, !llvm.loop !3332

while.cond.loopexit.us-lcssa.us.us:               ; preds = %do.body.us.us
  %inc.us.us.lcssa = phi i32 [ %inc.us.us, %do.body.us.us ], !dbg !3324
  br label %while.cond.us, !dbg !3322

while.end.us-lcssa.us:                            ; preds = %while.cond.us
  %dcount.0.us.lcssa = phi i32 [ %dcount.0.us, %while.cond.us ], !dbg !3316
  %pending.addr.0.us.lcssa = phi %struct.bitmap_head_def* [ %pending.addr.0.us, %while.cond.us ]
  %worklist.0.us.lcssa = phi %struct.bitmap_head_def* [ %worklist.0.us, %while.cond.us ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.us.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.us.lcssa, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.us.lcssa, metadata !3310, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.us.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.us.lcssa, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.us.lcssa, metadata !3310, metadata !DIExpression()), !dbg !3316
  br label %while.end, !dbg !3334

while.cond.loopexit.us-lcssa:                     ; preds = %do.body
  %inc.lcssa = phi i32 [ %inc, %do.body ], !dbg !3324
  br label %while.cond, !dbg !3322

while.cond:                                       ; preds = %while.cond.loopexit.us-lcssa, %entry.entry.split_crit_edge
  %dcount.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %inc.lcssa, %while.cond.loopexit.us-lcssa ], !dbg !3316
  %pending.addr.0 = phi %struct.bitmap_head_def* [ %pending, %entry.entry.split_crit_edge ], [ %worklist.0, %while.cond.loopexit.us-lcssa ]
  %worklist.0 = phi %struct.bitmap_head_def* [ %call, %entry.entry.split_crit_edge ], [ %pending.addr.0, %while.cond.loopexit.us-lcssa ], !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0, metadata !3310, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0, metadata !3309, metadata !DIExpression()), !dbg !3316
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %pending.addr.0, i64 0, i32 0, !dbg !3323
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3323
  %tobool = icmp eq %struct.bitmap_element_def* %5, null, !dbg !3323
  br i1 %tobool, label %while.end.us-lcssa, label %do.body.preheader, !dbg !3322

do.body.preheader:                                ; preds = %while.cond
  br label %do.body, !dbg !3322

do.body:                                          ; preds = %do.body.preheader, %do.body
  %dcount.1 = phi i32 [ %inc, %do.body ], [ %dcount.0, %do.body.preheader ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.1, metadata !3309, metadata !DIExpression()), !dbg !3316
  %inc = add nsw i32 %dcount.1, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3309, metadata !DIExpression()), !dbg !3316
  %call3 = tail call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %pending.addr.0) #6, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3313, metadata !DIExpression()), !dbg !3326
  %call4 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %pending.addr.0, i32 %call3) #6, !dbg !3327
  call void @llvm.dbg.value(metadata i32 undef, metadata !3315, metadata !DIExpression()), !dbg !3326
  %idxprom = sext i32 %call3 to i64, !dbg !3328
  %arrayidx = getelementptr inbounds i32, i32* %blocks_in_postorder, i64 %idxprom, !dbg !3328
  %6 = load i32, i32* %arrayidx, align 4, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %6, metadata !3315, metadata !DIExpression()), !dbg !3326
  tail call fastcc void @df_worklist_propagate_backward(%struct.dataflow* %dataflow, i32 %6, i32* %bbindex_to_postorder, %struct.bitmap_head_def* %worklist.0, %struct.simple_bitmap_def* %considered) #7, !dbg !3335
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3330
  %tobool6 = icmp eq %struct.bitmap_element_def* %7, null, !dbg !3330
  br i1 %tobool6, label %while.cond.loopexit.us-lcssa, label %do.body, !dbg !3331, !llvm.loop !3332

while.end.us-lcssa:                               ; preds = %while.cond
  %dcount.0.lcssa20 = phi i32 [ %dcount.0, %while.cond ], !dbg !3316
  %pending.addr.0.lcssa19 = phi %struct.bitmap_head_def* [ %pending.addr.0, %while.cond ]
  %worklist.0.lcssa18 = phi %struct.bitmap_head_def* [ %worklist.0, %while.cond ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.lcssa20, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.lcssa19, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.lcssa18, metadata !3310, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.lcssa20, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.lcssa19, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.lcssa18, metadata !3310, metadata !DIExpression()), !dbg !3316
  br label %while.end, !dbg !3334

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %dcount.0.lcssa = phi i32 [ %dcount.0.lcssa20, %while.end.us-lcssa ], [ %dcount.0.us.lcssa, %while.end.us-lcssa.us ], !dbg !3316
  %pending.addr.0.lcssa = phi %struct.bitmap_head_def* [ %pending.addr.0.lcssa19, %while.end.us-lcssa ], [ %pending.addr.0.us.lcssa, %while.end.us-lcssa.us ]
  %worklist.0.lcssa = phi %struct.bitmap_head_def* [ %worklist.0.lcssa18, %while.end.us-lcssa ], [ %worklist.0.us.lcssa, %while.end.us-lcssa.us ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %dcount.0.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending.addr.0.lcssa, metadata !3304, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %worklist.0.lcssa, metadata !3310, metadata !DIExpression()), !dbg !3316
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %worklist.0.lcssa) #6, !dbg !3334
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3310, metadata !DIExpression()), !dbg !3316
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %pending.addr.0.lcssa) #6, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3304, metadata !DIExpression()), !dbg !3316
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3337
  %tobool9 = icmp eq %struct._IO_FILE* %8, null, !dbg !3337
  br i1 %tobool9, label %if.end19, label %if.then10, !dbg !3339

if.then10:                                        ; preds = %while.end
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3340
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !3340
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3340
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 3, !dbg !3340
  %11 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3340
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 4, !dbg !3341
  %12 = load i32, i32* %x_n_edges, align 4, !dbg !3341
  %conv = sitofp i32 %dcount.0.lcssa to float, !dbg !3342
  %conv16 = sitofp i32 %11 to float, !dbg !3343
  %div = fdiv float %conv, %conv16, !dbg !3344
  %conv17 = fpext float %div to double, !dbg !3342
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.35, i64 0, i64 0), i32 %11, i32 %12, i32 %dcount.0.lcssa, double %conv17) #6, !dbg !3345
  br label %if.end19, !dbg !3345

if.end19:                                         ; preds = %while.end, %if.then10
  ret void, !dbg !3346
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_analyze_problem(%struct.dataflow* %dflow, %struct.bitmap_head_def* %blocks_to_consider, i32* %postorder, i32 %n_blocks) local_unnamed_addr #4 !dbg !3347 {
entry:
  call void @llvm.dbg.value(metadata %struct.dataflow* %dflow, metadata !3349, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks_to_consider, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32* %postorder, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 %n_blocks, metadata !3352, metadata !DIExpression()), !dbg !3353
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3354
  %tobool = icmp eq i8 %0, 0, !dbg !3354
  br i1 %tobool, label %do.end, label %if.then, !dbg !3357

if.then:                                          ; preds = %entry
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 0, !dbg !3354
  %1 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3354
  %tv_id = getelementptr inbounds %struct.df_problem, %struct.df_problem* %1, i64 0, i32 20, !dbg !3354
  %2 = load i32, i32* %tv_id, align 8, !dbg !3354
  tail call void @timevar_push_1(i32 %2) #6, !dbg !3354
  br label %do.end, !dbg !3354

do.end:                                           ; preds = %entry, %if.then
  %problem1 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 0, !dbg !3358
  %3 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3358
  %alloc_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %3, i64 0, i32 2, !dbg !3360
  %4 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %alloc_fun, align 8, !dbg !3360
  %tobool2 = icmp eq void (%struct.bitmap_head_def*)* %4, null, !dbg !3361
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !3362

if.then3:                                         ; preds = %do.end
  tail call void %4(%struct.bitmap_head_def* %blocks_to_consider) #6, !dbg !3363
  %.pre = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3364
  br label %if.end6, !dbg !3363

if.end6:                                          ; preds = %do.end, %if.then3
  %5 = phi %struct.df_problem* [ %3, %do.end ], [ %.pre, %if.then3 ], !dbg !3364
  %local_compute_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %5, i64 0, i32 5, !dbg !3366
  %6 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %local_compute_fun, align 8, !dbg !3366
  %tobool8 = icmp eq void (%struct.bitmap_head_def*)* %6, null, !dbg !3367
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !3368

if.then9:                                         ; preds = %if.end6
  tail call void %6(%struct.bitmap_head_def* %blocks_to_consider) #6, !dbg !3369
  %.pre1 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3370
  br label %if.end12, !dbg !3369

if.end12:                                         ; preds = %if.end6, %if.then9
  %7 = phi %struct.df_problem* [ %5, %if.end6 ], [ %.pre1, %if.then9 ], !dbg !3370
  %dataflow_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %7, i64 0, i32 7, !dbg !3372
  %8 = load void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)** %dataflow_fun, align 8, !dbg !3372
  %tobool14 = icmp eq void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)* %8, null, !dbg !3373
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !3374

if.then15:                                        ; preds = %if.end12
  tail call void %8(%struct.dataflow* %dflow, %struct.bitmap_head_def* %blocks_to_consider, i32* %postorder, i32 %n_blocks) #6, !dbg !3375
  %.pre2 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3376
  br label %if.end18, !dbg !3375

if.end18:                                         ; preds = %if.end12, %if.then15
  %9 = phi %struct.df_problem* [ %7, %if.end12 ], [ %.pre2, %if.then15 ], !dbg !3376
  %finalize_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %9, i64 0, i32 11, !dbg !3378
  %10 = load void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)** %finalize_fun, align 8, !dbg !3378
  %tobool20 = icmp eq void (%struct.bitmap_head_def*)* %10, null, !dbg !3379
  br i1 %tobool20, label %do.body25, label %if.then21, !dbg !3380

if.then21:                                        ; preds = %if.end18
  tail call void %10(%struct.bitmap_head_def* %blocks_to_consider) #6, !dbg !3381
  br label %do.body25, !dbg !3381

do.body25:                                        ; preds = %if.end18, %if.then21
  %11 = load i8, i8* @timevar_enable, align 1, !dbg !3382
  %tobool26 = icmp eq i8 %11, 0, !dbg !3382
  br i1 %tobool26, label %do.end31, label %if.then27, !dbg !3385

if.then27:                                        ; preds = %do.body25
  %12 = load %struct.df_problem*, %struct.df_problem** %problem1, align 8, !dbg !3382
  %tv_id29 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %12, i64 0, i32 20, !dbg !3382
  %13 = load i32, i32* %tv_id29, align 8, !dbg !3382
  tail call void @timevar_pop_1(i32 %13) #6, !dbg !3382
  br label %do.end31, !dbg !3382

do.end31:                                         ; preds = %do.body25, %if.then27
  %computed = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dflow, i64 0, i32 7, !dbg !3386
  store i8 1, i8* %computed, align 4, !dbg !3387
  ret void, !dbg !3388
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_analyze() local_unnamed_addr #4 !dbg !3389 {
entry:
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3398
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3391, metadata !DIExpression()), !dbg !3399
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3400
  %postorder = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 21, !dbg !3402
  %1 = load i32*, i32** %postorder, align 8, !dbg !3402
  %tobool = icmp eq i32* %1, null, !dbg !3400
  br i1 %tobool, label %if.end, label %if.then, !dbg !3403

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to i8*, !dbg !3403
  tail call void @free(i8* nonnull %2) #6, !dbg !3404
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3405
  br label %if.end, !dbg !3404

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.df* [ %0, %entry ], [ %.pre, %if.then ], !dbg !3405
  %postorder_inverted = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 22, !dbg !3407
  %4 = load i32*, i32** %postorder_inverted, align 8, !dbg !3407
  %tobool2 = icmp eq i32* %4, null, !dbg !3405
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3408

if.then3:                                         ; preds = %if.end
  %5 = bitcast i32* %4 to i8*, !dbg !3408
  tail call void @free(i8* nonnull %5) #6, !dbg !3409
  br label %if.end5, !dbg !3409

if.end5:                                          ; preds = %if.end, %if.then3
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3410
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !3410
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3410
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 5, !dbg !3410
  %8 = load i32, i32* %x_last_basic_block, align 8, !dbg !3410
  %conv = sext i32 %8 to i64, !dbg !3410
  %mul = shl nsw i64 %conv, 2, !dbg !3410
  %call6 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3410
  %9 = load %struct.df*, %struct.df** @df, align 8, !dbg !3411
  %postorder7 = getelementptr inbounds %struct.df, %struct.df* %9, i64 0, i32 21, !dbg !3412
  %10 = bitcast i32** %postorder7 to i8**, !dbg !3413
  store i8* %call6, i8** %10, align 8, !dbg !3413
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3414
  %cfg9 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3414
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9, align 8, !dbg !3414
  %x_last_basic_block10 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 5, !dbg !3414
  %13 = load i32, i32* %x_last_basic_block10, align 8, !dbg !3414
  %conv11 = sext i32 %13 to i64, !dbg !3414
  %mul12 = shl nsw i64 %conv11, 2, !dbg !3414
  %call13 = tail call i8* @xmalloc(i64 %mul12) #6, !dbg !3414
  %14 = load %struct.df*, %struct.df** @df, align 8, !dbg !3415
  %postorder_inverted14 = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 22, !dbg !3416
  %15 = bitcast i32** %postorder_inverted14 to i8**, !dbg !3417
  store i8* %call13, i8** %15, align 8, !dbg !3417
  %postorder15 = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 21, !dbg !3418
  %16 = load i32*, i32** %postorder15, align 8, !dbg !3418
  %call16 = tail call i32 @post_order_compute(i32* %16, i8 zeroext 1, i8 zeroext 1) #6, !dbg !3419
  %17 = load %struct.df*, %struct.df** @df, align 8, !dbg !3420
  %n_blocks = getelementptr inbounds %struct.df, %struct.df* %17, i64 0, i32 23, !dbg !3421
  store i32 %call16, i32* %n_blocks, align 8, !dbg !3422
  %postorder_inverted17 = getelementptr inbounds %struct.df, %struct.df* %17, i64 0, i32 22, !dbg !3423
  %18 = load i32*, i32** %postorder_inverted17, align 8, !dbg !3423
  %call18 = tail call i32 @inverted_post_order_compute(i32* %18) #6, !dbg !3424
  %19 = load %struct.df*, %struct.df** @df, align 8, !dbg !3425
  %n_blocks_inverted = getelementptr inbounds %struct.df, %struct.df* %19, i64 0, i32 24, !dbg !3426
  store i32 %call18, i32* %n_blocks_inverted, align 4, !dbg !3427
  %n_blocks19 = getelementptr inbounds %struct.df, %struct.df* %19, i64 0, i32 23, !dbg !3428
  %20 = load i32, i32* %n_blocks19, align 8, !dbg !3428
  %cmp = icmp eq i32 %20, %call18, !dbg !3428
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3428

cond.true:                                        ; preds = %if.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3428
  br label %cond.end, !dbg !3428

cond.end:                                         ; preds = %if.end5, %cond.true
  tail call void @df_compute_regs_ever_live(i8 zeroext 0) #6, !dbg !3429
  tail call void @df_process_deferred_rescans() #6, !dbg !3430
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3431
  %tobool22 = icmp eq %struct._IO_FILE* %21, null, !dbg !3431
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !3433

if.then23:                                        ; preds = %cond.end
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3434
  br label %if.end25, !dbg !3434

if.end25:                                         ; preds = %cond.end, %if.then23
  %22 = load %struct.df*, %struct.df** @df, align 8, !dbg !3435
  %changeable_flags = getelementptr inbounds %struct.df, %struct.df* %22, i64 0, i32 27, !dbg !3437
  %bf.load = load i8, i8* %changeable_flags, align 4, !dbg !3437
  %23 = and i8 %bf.load, 64, !dbg !3438
  %tobool26 = icmp eq i8 %23, 0, !dbg !3438
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !3439

if.then27:                                        ; preds = %if.end25
  tail call void @df_verify() #7, !dbg !3440
  br label %if.end28, !dbg !3440

if.end28:                                         ; preds = %if.end25, %if.then27
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3399
  br label %for.cond, !dbg !3441

for.cond:                                         ; preds = %for.body, %if.end28
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ 0, %if.end28 ], !dbg !3443
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3393, metadata !DIExpression()), !dbg !3399
  %24 = load %struct.df*, %struct.df** @df, align 8, !dbg !3444
  %n_blocks29 = getelementptr inbounds %struct.df, %struct.df* %24, i64 0, i32 23, !dbg !3446
  %25 = load i32, i32* %n_blocks29, align 8, !dbg !3446
  %26 = sext i32 %25 to i64, !dbg !3447
  %cmp30 = icmp slt i64 %indvars.iv3, %26, !dbg !3447
  br i1 %cmp30, label %for.body, label %for.end, !dbg !3448

for.body:                                         ; preds = %for.cond
  %postorder32 = getelementptr inbounds %struct.df, %struct.df* %24, i64 0, i32 21, !dbg !3449
  %27 = load i32*, i32** %postorder32, align 8, !dbg !3449
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %indvars.iv3, !dbg !3450
  %28 = load i32, i32* %arrayidx, align 4, !dbg !3450
  %call33 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %28) #6, !dbg !3451
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i32 undef, metadata !3393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3399
  br label %for.cond, !dbg !3453, !llvm.loop !3454

for.end:                                          ; preds = %for.cond
  %.lcssa5 = phi %struct.df* [ %24, %for.cond ], !dbg !3444
  %analyze_subset = getelementptr inbounds %struct.df, %struct.df* %.lcssa5, i64 0, i32 28, !dbg !3456
  %29 = load i8, i8* %analyze_subset, align 1, !dbg !3456
  %tobool34 = icmp eq i8 %29, 0, !dbg !3458
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %.lcssa5, i64 0, i32 2, !dbg !3459
  br i1 %tobool34, label %if.else, label %if.then35, !dbg !3460

if.then35:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata i8 0, metadata !3392, metadata !DIExpression()), !dbg !3399
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !3461
  tail call void @bitmap_and_into(%struct.bitmap_head_def* %30, %struct.bitmap_head_def* %call) #6, !dbg !3463
  %31 = load %struct.df*, %struct.df** @df, align 8, !dbg !3464
  %postorder36 = getelementptr inbounds %struct.df, %struct.df* %31, i64 0, i32 21, !dbg !3465
  %32 = load i32*, i32** %postorder36, align 8, !dbg !3465
  %n_blocks37 = getelementptr inbounds %struct.df, %struct.df* %31, i64 0, i32 23, !dbg !3466
  %33 = load i32, i32* %n_blocks37, align 8, !dbg !3466
  %blocks_to_analyze38 = getelementptr inbounds %struct.df, %struct.df* %31, i64 0, i32 2, !dbg !3467
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze38, align 8, !dbg !3467
  %call39 = tail call fastcc i32 @df_prune_to_subcfg(i32* %32, i32 %33, %struct.bitmap_head_def* %34) #7, !dbg !3468
  %35 = load %struct.df*, %struct.df** @df, align 8, !dbg !3469
  %n_blocks40 = getelementptr inbounds %struct.df, %struct.df* %35, i64 0, i32 23, !dbg !3470
  store i32 %call39, i32* %n_blocks40, align 8, !dbg !3471
  %postorder_inverted41 = getelementptr inbounds %struct.df, %struct.df* %35, i64 0, i32 22, !dbg !3472
  %36 = load i32*, i32** %postorder_inverted41, align 8, !dbg !3472
  %n_blocks_inverted42 = getelementptr inbounds %struct.df, %struct.df* %35, i64 0, i32 24, !dbg !3473
  %37 = load i32, i32* %n_blocks_inverted42, align 4, !dbg !3473
  %blocks_to_analyze43 = getelementptr inbounds %struct.df, %struct.df* %35, i64 0, i32 2, !dbg !3474
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze43, align 8, !dbg !3474
  %call44 = tail call fastcc i32 @df_prune_to_subcfg(i32* %36, i32 %37, %struct.bitmap_head_def* %38) #7, !dbg !3475
  %39 = load %struct.df*, %struct.df** @df, align 8, !dbg !3476
  %n_blocks_inverted45 = getelementptr inbounds %struct.df, %struct.df* %39, i64 0, i32 24, !dbg !3477
  store i32 %call44, i32* %n_blocks_inverted45, align 4, !dbg !3478
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3391, metadata !DIExpression()), !dbg !3399
  br label %if.end47, !dbg !3480

if.else:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i8 1, metadata !3392, metadata !DIExpression()), !dbg !3399
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3391, metadata !DIExpression()), !dbg !3399
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then35
  %everything.0 = phi i8 [ 0, %if.then35 ], [ 1, %if.else ], !dbg !3459
  call void @llvm.dbg.value(metadata i8 %everything.0, metadata !3392, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 1, metadata !3393, metadata !DIExpression()), !dbg !3399
  br label %for.cond48, !dbg !3483

for.cond48:                                       ; preds = %for.inc68, %if.end47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 1, %if.end47 ], !dbg !3484
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3393, metadata !DIExpression()), !dbg !3399
  %40 = load %struct.df*, %struct.df** @df, align 8, !dbg !3485
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 12, !dbg !3486
  %41 = load i32, i32* %num_problems_defined, align 4, !dbg !3486
  %42 = sext i32 %41 to i64, !dbg !3487
  %cmp49 = icmp slt i64 %indvars.iv, %42, !dbg !3487
  br i1 %cmp49, label %for.body51, label %for.end70, !dbg !3488

for.body51:                                       ; preds = %for.cond48
  %arrayidx53 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 0, i64 %indvars.iv, !dbg !3489
  %43 = load %struct.dataflow*, %struct.dataflow** %arrayidx53, align 8, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.dataflow* %43, metadata !3394, metadata !DIExpression()), !dbg !3490
  %solutions_dirty = getelementptr inbounds %struct.dataflow, %struct.dataflow* %43, i64 0, i32 8, !dbg !3491
  %44 = load i8, i8* %solutions_dirty, align 1, !dbg !3491
  %tobool54 = icmp eq i8 %44, 0, !dbg !3493
  br i1 %tobool54, label %for.inc68, label %if.then55, !dbg !3494

if.then55:                                        ; preds = %for.body51
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %43, i64 0, i32 0, !dbg !3495
  %45 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3495
  %dir = getelementptr inbounds %struct.df_problem, %struct.df_problem* %45, i64 0, i32 1, !dbg !3498
  %46 = load i32, i32* %dir, align 4, !dbg !3498
  %cmp56 = icmp eq i32 %46, 1, !dbg !3499
  %blocks_to_analyze59 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 2, !dbg !3500
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze59, align 8, !dbg !3500
  br i1 %cmp56, label %if.then58, label %if.else62, !dbg !3501

if.then58:                                        ; preds = %if.then55
  %postorder_inverted60 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 22, !dbg !3502
  %48 = load i32*, i32** %postorder_inverted60, align 8, !dbg !3502
  %n_blocks_inverted61 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 24, !dbg !3503
  %49 = load i32, i32* %n_blocks_inverted61, align 4, !dbg !3503
  tail call void @df_analyze_problem(%struct.dataflow* %43, %struct.bitmap_head_def* %47, i32* %48, i32 %49) #7, !dbg !3504
  br label %for.inc68, !dbg !3504

if.else62:                                        ; preds = %if.then55
  %postorder64 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 21, !dbg !3505
  %50 = load i32*, i32** %postorder64, align 8, !dbg !3505
  %n_blocks65 = getelementptr inbounds %struct.df, %struct.df* %40, i64 0, i32 23, !dbg !3506
  %51 = load i32, i32* %n_blocks65, align 8, !dbg !3506
  tail call void @df_analyze_problem(%struct.dataflow* %43, %struct.bitmap_head_def* %47, i32* %50, i32 %51) #7, !dbg !3507
  br label %for.inc68

for.inc68:                                        ; preds = %for.body51, %if.else62, %if.then58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3508
  call void @llvm.dbg.value(metadata i32 undef, metadata !3393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3399
  br label %for.cond48, !dbg !3509, !llvm.loop !3510

for.end70:                                        ; preds = %for.cond48
  %.lcssa = phi %struct.df* [ %40, %for.cond48 ], !dbg !3485
  %tobool71 = icmp eq i8 %everything.0, 0, !dbg !3512
  br i1 %tobool71, label %if.end76, label %if.then72, !dbg !3514

if.then72:                                        ; preds = %for.end70
  %blocks_to_analyze73 = getelementptr inbounds %struct.df, %struct.df* %.lcssa, i64 0, i32 2, !dbg !3515
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze73, align 8, !dbg !3515
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %52) #6, !dbg !3515
  %53 = load %struct.df*, %struct.df** @df, align 8, !dbg !3515
  %blocks_to_analyze75 = getelementptr inbounds %struct.df, %struct.df* %53, i64 0, i32 2, !dbg !3517
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %blocks_to_analyze75, align 8, !dbg !3518
  br label %if.end76, !dbg !3519

if.end76:                                         ; preds = %for.end70, %if.then72
  ret void, !dbg !3520
}

declare dso_local i32 @post_order_compute(i32*, i8 zeroext, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @inverted_post_order_compute(i32*) local_unnamed_addr #1

declare dso_local void @df_compute_regs_ever_live(i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_verify() local_unnamed_addr #4 !dbg !3521 {
entry:
  tail call void @df_scan_verify() #6, !dbg !3522
  ret void, !dbg !3523
}

declare dso_local void @bitmap_and_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @df_prune_to_subcfg(i32* %list, i32 %len, %struct.bitmap_head_def* %blocks) unnamed_addr #4 !dbg !3524 {
entry:
  call void @llvm.dbg.value(metadata i32* %list, metadata !3528, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %len, metadata !3529, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks, metadata !3530, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 0, metadata !3531, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()), !dbg !3533
  %wide.trip.count = zext i32 %len to i64, !dbg !3534
  br label %for.cond, !dbg !3537

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3538
  %last.0 = phi i32 [ %last.1, %for.inc ], [ 0, %entry ], !dbg !3538
  call void @llvm.dbg.value(metadata i32 %last.0, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3531, metadata !DIExpression()), !dbg !3533
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3534
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3539

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %list, i64 %indvars.iv, !dbg !3540
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3540
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %blocks, i32 %0) #6, !dbg !3542
  %tobool = icmp eq i32 %call, 0, !dbg !3542
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3543

if.then:                                          ; preds = %for.body
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3544
  %inc = add i32 %last.0, 1, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3532, metadata !DIExpression()), !dbg !3533
  %idxprom3 = zext i32 %last.0 to i64, !dbg !3546
  %arrayidx4 = getelementptr inbounds i32, i32* %list, i64 %idxprom3, !dbg !3546
  store i32 %1, i32* %arrayidx4, align 4, !dbg !3547
  br label %for.inc, !dbg !3546

for.inc:                                          ; preds = %for.body, %if.then
  %last.1 = phi i32 [ %inc, %if.then ], [ %last.0, %for.body ], !dbg !3538
  call void @llvm.dbg.value(metadata i32 %last.1, metadata !3532, metadata !DIExpression()), !dbg !3533
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3548
  br label %for.cond, !dbg !3549, !llvm.loop !3550

for.end:                                          ; preds = %for.cond
  %last.0.lcssa = phi i32 [ %last.0, %for.cond ], !dbg !3538
  call void @llvm.dbg.value(metadata i32 %last.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %last.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i32 %last.0.lcssa, metadata !3532, metadata !DIExpression()), !dbg !3533
  ret i32 %last.0.lcssa, !dbg !3552
}

; Function Attrs: nounwind uwtable
define dso_local i32 @df_get_n_blocks(i32 %dir) local_unnamed_addr #4 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3557, metadata !DIExpression()), !dbg !3558
  switch i32 %dir, label %if.end [
    i32 0, label %cond.true
    i32 1, label %if.then
  ], !dbg !3559

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3559
  br label %if.end, !dbg !3560

if.then:                                          ; preds = %entry
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3561
  %postorder_inverted = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 22, !dbg !3561
  %1 = load i32*, i32** %postorder_inverted, align 8, !dbg !3561
  %tobool = icmp eq i32* %1, null, !dbg !3561
  br i1 %tobool, label %cond.true2, label %cond.end4, !dbg !3561

cond.true2:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3561
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3564
  br label %cond.end4, !dbg !3561

cond.end4:                                        ; preds = %if.then, %cond.true2
  %2 = phi %struct.df* [ %0, %if.then ], [ %.pre, %cond.true2 ], !dbg !3564
  %n_blocks_inverted = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 24, !dbg !3565
  br label %return, !dbg !3566

if.end:                                           ; preds = %cond.true, %entry
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !3567
  %postorder = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 21, !dbg !3567
  %4 = load i32*, i32** %postorder, align 8, !dbg !3567
  %tobool6 = icmp eq i32* %4, null, !dbg !3567
  br i1 %tobool6, label %cond.true7, label %cond.end9, !dbg !3567

cond.true7:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3567
  %.pre1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3568
  br label %cond.end9, !dbg !3567

cond.end9:                                        ; preds = %if.end, %cond.true7
  %5 = phi %struct.df* [ %3, %if.end ], [ %.pre1, %cond.true7 ], !dbg !3568
  %n_blocks = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 23, !dbg !3569
  br label %return, !dbg !3570

return:                                           ; preds = %cond.end9, %cond.end4
  %retval.0.in = phi i32* [ %n_blocks_inverted, %cond.end4 ], [ %n_blocks, %cond.end9 ]
  %retval.0 = load i32, i32* %retval.0.in, align 4, !dbg !3558
  ret i32 %retval.0, !dbg !3571
}

; Function Attrs: nounwind uwtable
define dso_local i32* @df_get_postorder(i32 %dir) local_unnamed_addr #4 !dbg !3572 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3576, metadata !DIExpression()), !dbg !3577
  switch i32 %dir, label %if.end [
    i32 0, label %cond.true
    i32 1, label %if.then
  ], !dbg !3578

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3578
  br label %if.end, !dbg !3579

if.then:                                          ; preds = %entry
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3580
  %postorder_inverted = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 22, !dbg !3580
  %1 = load i32*, i32** %postorder_inverted, align 8, !dbg !3580
  %tobool = icmp eq i32* %1, null, !dbg !3580
  br i1 %tobool, label %cond.true2, label %cond.end4, !dbg !3580

cond.true2:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3580
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3583
  br label %cond.end4, !dbg !3580

cond.end4:                                        ; preds = %if.then, %cond.true2
  %2 = phi %struct.df* [ %0, %if.then ], [ %.pre, %cond.true2 ], !dbg !3583
  %postorder_inverted6 = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 22, !dbg !3584
  br label %return, !dbg !3585

if.end:                                           ; preds = %cond.true, %entry
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !3586
  %postorder = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 21, !dbg !3586
  %4 = load i32*, i32** %postorder, align 8, !dbg !3586
  %tobool7 = icmp eq i32* %4, null, !dbg !3586
  br i1 %tobool7, label %cond.true8, label %cond.end10, !dbg !3586

cond.true8:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3586
  %.pre1 = load %struct.df*, %struct.df** @df, align 8, !dbg !3587
  br label %cond.end10, !dbg !3586

cond.end10:                                       ; preds = %if.end, %cond.true8
  %5 = phi %struct.df* [ %3, %if.end ], [ %.pre1, %cond.true8 ], !dbg !3587
  %postorder12 = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 21, !dbg !3588
  br label %return, !dbg !3589

return:                                           ; preds = %cond.end10, %cond.end4
  %retval.0.in = phi i32** [ %postorder_inverted6, %cond.end4 ], [ %postorder12, %cond.end10 ]
  %retval.0 = load i32*, i32** %retval.0.in, align 8, !dbg !3577
  ret i32* %retval.0, !dbg !3590
}

; Function Attrs: nounwind uwtable
define dso_local void @df_simple_dataflow(i32 %dir, void (%struct.bitmap_head_def*)* %init_fun, void (%struct.basic_block_def*)* %con_fun_0, void (%struct.edge_def*)* %con_fun_n, i8 (i32)* %trans_fun, %struct.bitmap_head_def* %blocks, i32* %postorder, i32 %n_blocks) local_unnamed_addr #4 !dbg !3591 {
entry:
  call void @llvm.dbg.value(metadata i32 %dir, metadata !3595, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata void (%struct.bitmap_head_def*)* %init_fun, metadata !3596, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata void (%struct.basic_block_def*)* %con_fun_0, metadata !3597, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata void (%struct.edge_def*)* %con_fun_n, metadata !3598, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i8 (i32)* %trans_fun, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %blocks, metadata !3600, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i32* %postorder, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i32 %n_blocks, metadata !3602, metadata !DIExpression()), !dbg !3603
  %call = tail call i8* @memset(i8* bitcast (%struct.df_problem* @user_problem to i8*), i32 0, i64 160) #6, !dbg !3604
  store i32 %dir, i32* getelementptr inbounds (%struct.df_problem, %struct.df_problem* @user_problem, i64 0, i32 1), align 4, !dbg !3605
  store void (%struct.bitmap_head_def*)* %init_fun, void (%struct.bitmap_head_def*)** getelementptr inbounds (%struct.df_problem, %struct.df_problem* @user_problem, i64 0, i32 6), align 8, !dbg !3606
  store void (%struct.basic_block_def*)* %con_fun_0, void (%struct.basic_block_def*)** getelementptr inbounds (%struct.df_problem, %struct.df_problem* @user_problem, i64 0, i32 8), align 8, !dbg !3607
  store void (%struct.edge_def*)* %con_fun_n, void (%struct.edge_def*)** getelementptr inbounds (%struct.df_problem, %struct.df_problem* @user_problem, i64 0, i32 9), align 8, !dbg !3608
  store i8 (i32)* %trans_fun, i8 (i32)** getelementptr inbounds (%struct.df_problem, %struct.df_problem* @user_problem, i64 0, i32 10), align 8, !dbg !3609
  store %struct.df_problem* @user_problem, %struct.df_problem** getelementptr inbounds (%struct.dataflow, %struct.dataflow* @user_dflow, i64 0, i32 0), align 8, !dbg !3610
  tail call void @df_worklist_dataflow(%struct.dataflow* nonnull @user_dflow, %struct.bitmap_head_def* %blocks, i32* %postorder, i32 %n_blocks) #7, !dbg !3611
  ret void, !dbg !3612
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @df_get_bb_dirty(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3613 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3617, metadata !DIExpression()), !dbg !3618
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3619
  %tobool = icmp eq %struct.df* %0, null, !dbg !3619
  br i1 %tobool, label %return, label %land.lhs.true, !dbg !3621

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 2, !dbg !3622
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3622
  %tobool1 = icmp eq %struct.dataflow* %1, null, !dbg !3622
  br i1 %tobool1, label %return, label %if.then, !dbg !3623

if.then:                                          ; preds = %land.lhs.true
  %out_of_date_transfer_functions = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 4, !dbg !3624
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3624
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3625
  %3 = load i32, i32* %index, align 8, !dbg !3625
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %3) #6, !dbg !3626
  %conv = trunc i32 %call to i8, !dbg !3626
  br label %return, !dbg !3627

return:                                           ; preds = %land.lhs.true, %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !3628
  ret i8 %retval.0, !dbg !3629
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_set_bb_dirty(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3630 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3632, metadata !DIExpression()), !dbg !3640
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3641
  %tobool = icmp eq %struct.df* %0, null, !dbg !3641
  br i1 %tobool, label %if.end4, label %for.cond.preheader, !dbg !3642

for.cond.preheader:                               ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3643
  br label %for.cond, !dbg !3645

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %.pre1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ]
  %1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !3646
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3633, metadata !DIExpression()), !dbg !3647
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !3648
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !3648
  %3 = sext i32 %2 to i64, !dbg !3649
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3649
  br i1 %cmp, label %for.body, label %for.end, !dbg !3645

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !3650
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3650
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !3636, metadata !DIExpression()), !dbg !3651
  %out_of_date_transfer_functions = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 4, !dbg !3652
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3652
  %tobool1 = icmp eq %struct.bitmap_head_def* %5, null, !dbg !3653
  br i1 %tobool1, label %for.inc, label %if.then2, !dbg !3654

if.then2:                                         ; preds = %for.body
  %6 = load i32, i32* %index, align 8, !dbg !3655
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %5, i32 %6) #6, !dbg !3656
  %.pre.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3646
  br label %for.inc, !dbg !3656

for.inc:                                          ; preds = %for.body, %if.then2
  %.pre = phi %struct.df* [ %.pre1, %for.body ], [ %.pre.pre, %if.then2 ], !dbg !3646
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3633, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3647
  br label %for.cond, !dbg !3658, !llvm.loop !3659

for.end:                                          ; preds = %for.cond
  tail call void @df_mark_solutions_dirty() #7, !dbg !3661
  br label %if.end4, !dbg !3662

if.end4:                                          ; preds = %entry, %for.end
  ret void, !dbg !3663
}

; Function Attrs: nounwind uwtable
define dso_local void @df_set_bb_dirty_nonlr(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3664 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3666, metadata !DIExpression()), !dbg !3674
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3675
  %tobool = icmp eq %struct.df* %0, null, !dbg !3675
  br i1 %tobool, label %if.end8, label %for.cond.preheader, !dbg !3676

for.cond.preheader:                               ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3677
  br label %for.cond, !dbg !3679

for.cond:                                         ; preds = %for.cond.preheader, %cleanup
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %cleanup ]
  %.pre.pre3 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre.pre4, %cleanup ]
  %.pre1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %cleanup ]
  %1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %cleanup ], !dbg !3680
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3667, metadata !DIExpression()), !dbg !3681
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !3682
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !3682
  %3 = sext i32 %2 to i64, !dbg !3683
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3683
  br i1 %cmp, label %for.body, label %if.end8.loopexit, !dbg !3679

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !3684
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3684
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !3670, metadata !DIExpression()), !dbg !3685
  %arrayidx1 = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 1, i64 1, !dbg !3686
  %5 = load %struct.dataflow*, %struct.dataflow** %arrayidx1, align 8, !dbg !3686
  %cmp2 = icmp eq %struct.dataflow* %4, %5, !dbg !3688
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !3689

if.end:                                           ; preds = %for.body
  %out_of_date_transfer_functions = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 4, !dbg !3690
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3690
  %tobool4 = icmp eq %struct.bitmap_head_def* %6, null, !dbg !3691
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !3692

if.then5:                                         ; preds = %if.end
  %7 = load i32, i32* %index, align 8, !dbg !3693
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull %6, i32 %7) #6, !dbg !3694
  %.pre.pre.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3680
  br label %if.end7, !dbg !3694

if.end7:                                          ; preds = %if.end, %if.then5
  %.pre.pre = phi %struct.df* [ %.pre.pre3, %if.end ], [ %.pre.pre.pre, %if.then5 ], !dbg !3680
  %solutions_dirty = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 8, !dbg !3695
  store i8 1, i8* %solutions_dirty, align 1, !dbg !3696
  br label %cleanup, !dbg !3697

cleanup:                                          ; preds = %for.body, %if.end7
  %.pre.pre4 = phi %struct.df* [ %.pre.pre3, %for.body ], [ %.pre.pre, %if.end7 ]
  %.pre = phi %struct.df* [ %.pre1, %for.body ], [ %.pre.pre, %if.end7 ], !dbg !3680
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3698
  call void @llvm.dbg.value(metadata i32 undef, metadata !3667, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3681
  br label %for.cond, !dbg !3699, !llvm.loop !3700

if.end8.loopexit:                                 ; preds = %for.cond
  br label %if.end8, !dbg !3702

if.end8:                                          ; preds = %if.end8.loopexit, %entry
  ret void, !dbg !3702
}

; Function Attrs: nounwind uwtable
define dso_local void @df_compact_blocks() local_unnamed_addr #4 !dbg !3703 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3721
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3721
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3721
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3721
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3721
  %mul = shl i32 %2, 3, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3709, metadata !DIExpression()), !dbg !3723
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !3724
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !3710, metadata !DIExpression()), !dbg !3723
  %conv2 = sext i32 %mul to i64, !dbg !3725
  %call3 = tail call i8* @xmalloc(i64 %conv2) #6, !dbg !3725
  %3 = bitcast i8* %call3 to i8**, !dbg !3725
  call void @llvm.dbg.value(metadata i8** %3, metadata !3708, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 0, metadata !3706, metadata !DIExpression()), !dbg !3723
  br label %for.cond, !dbg !3726

for.cond:                                         ; preds = %for.inc96, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc96 ], [ 0, %entry ], !dbg !3727
  call void @llvm.dbg.value(metadata i64 %indvars.iv14, metadata !3706, metadata !DIExpression()), !dbg !3723
  %4 = load %struct.df*, %struct.df** @df, align 8, !dbg !3728
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 12, !dbg !3729
  %5 = load i32, i32* %num_problems_defined, align 4, !dbg !3729
  %6 = sext i32 %5 to i64, !dbg !3730
  %cmp = icmp slt i64 %indvars.iv14, %6, !dbg !3730
  br i1 %cmp, label %for.body, label %for.end98, !dbg !3731

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 0, i64 %indvars.iv14, !dbg !3732
  %7 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3732
  call void @llvm.dbg.value(metadata %struct.dataflow* %7, metadata !3711, metadata !DIExpression()), !dbg !3733
  %out_of_date_transfer_functions = getelementptr inbounds %struct.dataflow, %struct.dataflow* %7, i64 0, i32 4, !dbg !3734
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3734
  %tobool = icmp eq %struct.bitmap_head_def* %8, null, !dbg !3736
  br i1 %tobool, label %if.end33, label %if.then, !dbg !3737

if.then:                                          ; preds = %for.body
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* nonnull %8) #6, !dbg !3738
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3740
  tail call void @bitmap_clear(%struct.bitmap_head_def* %9) #6, !dbg !3741
  %call7 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 0) #6, !dbg !3742
  %tobool8 = icmp eq i32 %call7, 0, !dbg !3742
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !3744

if.then9:                                         ; preds = %if.then
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3745
  %call11 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %10, i32 0) #6, !dbg !3746
  br label %if.end, !dbg !3746

if.end:                                           ; preds = %if.then, %if.then9
  %call12 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 1) #6, !dbg !3747
  %tobool13 = icmp eq i32 %call12, 0, !dbg !3747
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !3749

if.then14:                                        ; preds = %if.end
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3750
  %call16 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 1) #6, !dbg !3751
  br label %if.end17, !dbg !3751

if.end17:                                         ; preds = %if.end, %if.then14
  call void @llvm.dbg.value(metadata i32 2, metadata !3705, metadata !DIExpression()), !dbg !3723
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3752
  %cfg19 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !3752
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg19, align 8, !dbg !3752
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 0, !dbg !3752
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3752
  br label %for.cond20, !dbg !3752

for.cond20:                                       ; preds = %if.end31, %if.end17
  %15 = phi %struct.control_flow_graph* [ %13, %if.end17 ], [ %.pre9, %if.end31 ], !dbg !3754
  %.pn2 = phi %struct.basic_block_def* [ %14, %if.end17 ], [ %bb.0, %if.end31 ]
  %i.0 = phi i32 [ 2, %if.end17 ], [ %inc, %if.end31 ], !dbg !3756
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !3757
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3707, metadata !DIExpression()), !dbg !3723
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !3754
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3754
  %cmp23 = icmp eq %struct.basic_block_def* %bb.0, %16, !dbg !3754
  br i1 %cmp23, label %if.end33.loopexit, label %for.body25, !dbg !3752

for.body25:                                       ; preds = %for.cond20
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3758
  %17 = load i32, i32* %index, align 8, !dbg !3758
  %call26 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %17) #6, !dbg !3761
  %tobool27 = icmp eq i32 %call26, 0, !dbg !3761
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !3762

if.then28:                                        ; preds = %for.body25
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3763
  %call30 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %18, i32 %i.0) #6, !dbg !3764
  br label %if.end31, !dbg !3764

if.end31:                                         ; preds = %for.body25, %if.then28
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3765
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3705, metadata !DIExpression()), !dbg !3723
  %.pre8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3754
  %cfg22.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre8, i64 0, i32 1, !dbg !3766
  %.pre9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22.phi.trans.insert, align 8, !dbg !3754
  br label %for.cond20, !dbg !3754, !llvm.loop !3767

if.end33.loopexit:                                ; preds = %for.cond20
  br label %if.end33, !dbg !3769

if.end33:                                         ; preds = %if.end33.loopexit, %for.body
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %7, i64 0, i32 0, !dbg !3769
  %19 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3769
  %free_bb_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %19, i64 0, i32 4, !dbg !3770
  %20 = load void (%struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, i8*)** %free_bb_fun, align 8, !dbg !3770
  %tobool34 = icmp eq void (%struct.basic_block_def*, i8*)* %20, null, !dbg !3771
  br i1 %tobool34, label %for.inc96, label %if.then35, !dbg !3772

if.then35:                                        ; preds = %if.end33
  tail call void @df_grow_bb_info(%struct.dataflow* %7) #6, !dbg !3773
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %7, i64 0, i32 1, !dbg !3774
  %21 = bitcast i8*** %block_info to i8**, !dbg !3774
  %22 = load i8*, i8** %21, align 8, !dbg !3774
  %call37 = tail call i8* @memcpy(i8* %call3, i8* %22, i64 %conv2) #6, !dbg !3775
  call void @llvm.dbg.value(metadata i32 2, metadata !3705, metadata !DIExpression()), !dbg !3723
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3776
  %cfg39 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !3776
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg39, align 8, !dbg !3776
  %x_entry_block_ptr40 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 0, !dbg !3776
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr40, align 8, !dbg !3776
  br label %for.cond42, !dbg !3776

for.cond42:                                       ; preds = %for.body48, %if.then35
  %26 = phi %struct.control_flow_graph* [ %24, %if.then35 ], [ %.pre11, %for.body48 ], !dbg !3778
  %.pn3 = phi %struct.basic_block_def* [ %25, %if.then35 ], [ %bb.1, %for.body48 ]
  %i.1 = phi i32 [ 2, %if.then35 ], [ %inc55, %for.body48 ], !dbg !3780
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !3781
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3707, metadata !DIExpression()), !dbg !3723
  %x_exit_block_ptr45 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 1, !dbg !3778
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr45, align 8, !dbg !3778
  %cmp46 = icmp eq %struct.basic_block_def* %bb.1, %27, !dbg !3778
  br i1 %cmp46, label %for.end58, label %for.body48, !dbg !3776

for.body48:                                       ; preds = %for.cond42
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !3782
  %28 = load i32, i32* %index49, align 8, !dbg !3782
  %idxprom50 = sext i32 %28 to i64, !dbg !3784
  %arrayidx51 = getelementptr inbounds i8*, i8** %3, i64 %idxprom50, !dbg !3784
  %29 = load i8*, i8** %arrayidx51, align 8, !dbg !3784
  tail call fastcc void @df_set_bb_info(%struct.dataflow* %7, i32 %i.1, i8* %29) #7, !dbg !3785
  %30 = load i32, i32* %index49, align 8, !dbg !3786
  %idxprom53 = sext i32 %30 to i64, !dbg !3787
  %arrayidx54 = getelementptr inbounds i8*, i8** %3, i64 %idxprom53, !dbg !3787
  store i8* null, i8** %arrayidx54, align 8, !dbg !3788
  %inc55 = add nuw nsw i32 %i.1, 1, !dbg !3789
  call void @llvm.dbg.value(metadata i32 %inc55, metadata !3705, metadata !DIExpression()), !dbg !3723
  %.pre10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3778
  %cfg44.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre10, i64 0, i32 1, !dbg !3790
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg44.phi.trans.insert, align 8, !dbg !3778
  br label %for.cond42, !dbg !3778, !llvm.loop !3791

for.end58:                                        ; preds = %for.cond42
  %.lcssa16 = phi %struct.control_flow_graph* [ %26, %for.cond42 ], !dbg !3778
  %i.1.lcssa = phi i32 [ %i.1, %for.cond42 ], !dbg !3780
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  %31 = load i8**, i8*** %block_info, align 8, !dbg !3793
  %idx.ext = zext i32 %i.1.lcssa to i64, !dbg !3794
  %add.ptr60 = getelementptr inbounds i8*, i8** %31, i64 %idx.ext, !dbg !3794
  %32 = bitcast i8** %add.ptr60 to i8*, !dbg !3795
  %x_last_basic_block63 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa16, i64 0, i32 5, !dbg !3796
  %33 = load i32, i32* %x_last_basic_block63, align 8, !dbg !3796
  %sub = sub nsw i32 %33, %i.1.lcssa, !dbg !3797
  %conv64 = sext i32 %sub to i64, !dbg !3798
  %mul65 = shl nsw i64 %conv64, 3, !dbg !3799
  %call66 = tail call i8* @memset(i8* nonnull %32, i32 0, i64 %mul65) #6, !dbg !3800
  call void @llvm.dbg.value(metadata i32 2, metadata !3705, metadata !DIExpression()), !dbg !3723
  br label %for.cond67, !dbg !3801

for.cond67:                                       ; preds = %for.inc92, %for.end58
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc92 ], [ 2, %for.end58 ], !dbg !3802
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3705, metadata !DIExpression()), !dbg !3723
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3803
  %cfg69 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 1, !dbg !3803
  %35 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg69, align 8, !dbg !3803
  %x_last_basic_block70 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 5, !dbg !3803
  %36 = load i32, i32* %x_last_basic_block70, align 8, !dbg !3803
  %37 = sext i32 %36 to i64, !dbg !3804
  %cmp71 = icmp slt i64 %indvars.iv, %37, !dbg !3804
  br i1 %cmp71, label %for.body73, label %for.inc96.loopexit, !dbg !3805

for.body73:                                       ; preds = %for.cond67
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 2, !dbg !3806
  %38 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3806
  %tobool77 = icmp eq %struct.VEC_basic_block_gc* %38, null, !dbg !3806
  br i1 %tobool77, label %cond.end, label %cond.true, !dbg !3806

cond.true:                                        ; preds = %for.body73
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %38, i64 0, i32 0, !dbg !3806
  br label %cond.end, !dbg !3806

cond.end:                                         ; preds = %for.body73, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body73 ], !dbg !3806
  %39 = trunc i64 %indvars.iv to i32, !dbg !3806
  %call81 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %39) #7, !dbg !3806
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call81, metadata !3715, metadata !DIExpression()), !dbg !3807
  %arrayidx83 = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv, !dbg !3808
  %40 = load i8*, i8** %arrayidx83, align 8, !dbg !3808
  %tobool84 = icmp ne i8* %40, null, !dbg !3808
  %tobool85 = icmp ne %struct.basic_block_def* %call81, null, !dbg !3810
  %or.cond = and i1 %tobool84, %tobool85, !dbg !3811
  br i1 %or.cond, label %if.then86, label %for.inc92, !dbg !3811

if.then86:                                        ; preds = %cond.end
  %41 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !3812
  %free_bb_fun88 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %41, i64 0, i32 4, !dbg !3813
  %42 = load void (%struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, i8*)** %free_bb_fun88, align 8, !dbg !3813
  tail call void %42(%struct.basic_block_def* nonnull %call81, i8* nonnull %40) #6, !dbg !3814
  br label %for.inc92, !dbg !3814

for.inc92:                                        ; preds = %cond.end, %if.then86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3815
  call void @llvm.dbg.value(metadata i32 undef, metadata !3705, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3723
  br label %for.cond67, !dbg !3816, !llvm.loop !3817

for.inc96.loopexit:                               ; preds = %for.cond67
  br label %for.inc96, !dbg !3819

for.inc96:                                        ; preds = %for.inc96.loopexit, %if.end33
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !3819
  call void @llvm.dbg.value(metadata i32 undef, metadata !3706, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3723
  br label %for.cond, !dbg !3820, !llvm.loop !3821

for.end98:                                        ; preds = %for.cond
  %.lcssa17 = phi %struct.df* [ %4, %for.cond ], !dbg !3728
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %.lcssa17, i64 0, i32 2, !dbg !3823
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !3823
  %tobool99 = icmp eq %struct.bitmap_head_def* %43, null, !dbg !3825
  br i1 %tobool99, label %if.end137, label %if.then100, !dbg !3826

if.then100:                                       ; preds = %for.end98
  %call101 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 0) #6, !dbg !3827
  %tobool102 = icmp eq i32 %call101, 0, !dbg !3827
  br i1 %tobool102, label %if.end106, label %if.then103, !dbg !3830

if.then103:                                       ; preds = %if.then100
  %44 = load %struct.df*, %struct.df** @df, align 8, !dbg !3831
  %blocks_to_analyze104 = getelementptr inbounds %struct.df, %struct.df* %44, i64 0, i32 2, !dbg !3832
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze104, align 8, !dbg !3832
  %call105 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %45, i32 0) #6, !dbg !3833
  br label %if.end106, !dbg !3833

if.end106:                                        ; preds = %if.then100, %if.then103
  %call107 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 1) #6, !dbg !3834
  %tobool108 = icmp eq i32 %call107, 0, !dbg !3834
  br i1 %tobool108, label %if.end112, label %if.then109, !dbg !3836

if.then109:                                       ; preds = %if.end106
  %46 = load %struct.df*, %struct.df** @df, align 8, !dbg !3837
  %blocks_to_analyze110 = getelementptr inbounds %struct.df, %struct.df* %46, i64 0, i32 2, !dbg !3838
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze110, align 8, !dbg !3838
  %call111 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %47, i32 1) #6, !dbg !3839
  br label %if.end112, !dbg !3839

if.end112:                                        ; preds = %if.end106, %if.then109
  %48 = load %struct.df*, %struct.df** @df, align 8, !dbg !3840
  %blocks_to_analyze113 = getelementptr inbounds %struct.df, %struct.df* %48, i64 0, i32 2, !dbg !3841
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze113, align 8, !dbg !3841
  tail call void @bitmap_copy(%struct.bitmap_head_def* %call, %struct.bitmap_head_def* %49) #6, !dbg !3842
  %50 = load %struct.df*, %struct.df** @df, align 8, !dbg !3843
  %blocks_to_analyze114 = getelementptr inbounds %struct.df, %struct.df* %50, i64 0, i32 2, !dbg !3844
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze114, align 8, !dbg !3844
  tail call void @bitmap_clear(%struct.bitmap_head_def* %51) #6, !dbg !3845
  call void @llvm.dbg.value(metadata i32 2, metadata !3705, metadata !DIExpression()), !dbg !3723
  %52 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3846
  %cfg116 = getelementptr inbounds %struct.function, %struct.function* %52, i64 0, i32 1, !dbg !3846
  %53 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg116, align 8, !dbg !3846
  %x_entry_block_ptr117 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %53, i64 0, i32 0, !dbg !3846
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr117, align 8, !dbg !3846
  br label %for.cond119, !dbg !3846

for.cond119:                                      ; preds = %if.end132, %if.end112
  %55 = phi %struct.control_flow_graph* [ %53, %if.end112 ], [ %.pre5, %if.end132 ], !dbg !3848
  %.pn = phi %struct.basic_block_def* [ %54, %if.end112 ], [ %bb.2, %if.end132 ]
  %i.3 = phi i32 [ 2, %if.end112 ], [ %inc133, %if.end132 ], !dbg !3850
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3851
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !3851
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !3707, metadata !DIExpression()), !dbg !3723
  %x_exit_block_ptr122 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %55, i64 0, i32 1, !dbg !3848
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr122, align 8, !dbg !3848
  %cmp123 = icmp eq %struct.basic_block_def* %bb.2, %56, !dbg !3848
  br i1 %cmp123, label %if.end137.loopexit, label %for.body125, !dbg !3846

for.body125:                                      ; preds = %for.cond119
  %index126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !3852
  %57 = load i32, i32* %index126, align 8, !dbg !3852
  %call127 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %57) #6, !dbg !3855
  %tobool128 = icmp eq i32 %call127, 0, !dbg !3855
  br i1 %tobool128, label %if.end132, label %if.then129, !dbg !3856

if.then129:                                       ; preds = %for.body125
  %58 = load %struct.df*, %struct.df** @df, align 8, !dbg !3857
  %blocks_to_analyze130 = getelementptr inbounds %struct.df, %struct.df* %58, i64 0, i32 2, !dbg !3858
  %59 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze130, align 8, !dbg !3858
  %call131 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %59, i32 %i.3) #6, !dbg !3859
  br label %if.end132, !dbg !3859

if.end132:                                        ; preds = %for.body125, %if.then129
  %inc133 = add nuw nsw i32 %i.3, 1, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %inc133, metadata !3705, metadata !DIExpression()), !dbg !3723
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3848
  %cfg121.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3861
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg121.phi.trans.insert, align 8, !dbg !3848
  br label %for.cond119, !dbg !3848, !llvm.loop !3862

if.end137.loopexit:                               ; preds = %for.cond119
  br label %if.end137, !dbg !3864

if.end137:                                        ; preds = %if.end137.loopexit, %for.end98
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3710, metadata !DIExpression()), !dbg !3723
  tail call void @free(i8* %call3) #6, !dbg !3865
  call void @llvm.dbg.value(metadata i32 2, metadata !3705, metadata !DIExpression()), !dbg !3723
  %60 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3866
  %cfg139 = getelementptr inbounds %struct.function, %struct.function* %60, i64 0, i32 1, !dbg !3866
  %61 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg139, align 8, !dbg !3866
  %x_entry_block_ptr140 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %61, i64 0, i32 0, !dbg !3866
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr140, align 8, !dbg !3866
  br label %for.cond142, !dbg !3866

for.cond142:                                      ; preds = %cond.end159, %if.end137
  %63 = phi %struct.control_flow_graph* [ %61, %if.end137 ], [ %.pre7, %cond.end159 ], !dbg !3868
  %.pn1 = phi %struct.basic_block_def* [ %62, %if.end137 ], [ %bb.3, %cond.end159 ]
  %i.4 = phi i32 [ 2, %if.end137 ], [ %inc163, %cond.end159 ], !dbg !3723
  %bb.3.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !3870
  %bb.3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.3.in, align 8, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !3707, metadata !DIExpression()), !dbg !3723
  %x_exit_block_ptr145 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %63, i64 0, i32 1, !dbg !3868
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr145, align 8, !dbg !3868
  %cmp146 = icmp eq %struct.basic_block_def* %bb.3, %64, !dbg !3868
  br i1 %cmp146, label %for.end166, label %for.body148, !dbg !3866

for.body148:                                      ; preds = %for.cond142
  %x_basic_block_info151 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %63, i64 0, i32 2, !dbg !3871
  %65 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info151, align 8, !dbg !3871
  %tobool152 = icmp eq %struct.VEC_basic_block_gc* %65, null, !dbg !3871
  br i1 %tobool152, label %cond.end159, label %cond.true153, !dbg !3871

cond.true153:                                     ; preds = %for.body148
  %base157 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %65, i64 0, i32 0, !dbg !3871
  br label %cond.end159, !dbg !3871

cond.end159:                                      ; preds = %for.body148, %cond.true153
  %cond160 = phi %struct.VEC_basic_block_base* [ %base157, %cond.true153 ], [ null, %for.body148 ], !dbg !3871
  %call161 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond160, i32 %i.4, %struct.basic_block_def* %bb.3) #7, !dbg !3871
  %index162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !3873
  store i32 %i.4, i32* %index162, align 8, !dbg !3874
  %inc163 = add nuw nsw i32 %i.4, 1, !dbg !3875
  call void @llvm.dbg.value(metadata i32 %inc163, metadata !3705, metadata !DIExpression()), !dbg !3723
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3868
  %cfg144.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !3876
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg144.phi.trans.insert, align 8, !dbg !3868
  br label %for.cond142, !dbg !3868, !llvm.loop !3877

for.end166:                                       ; preds = %for.cond142
  %.lcssa = phi %struct.control_flow_graph* [ %63, %for.cond142 ], !dbg !3868
  %i.4.lcssa = phi i32 [ %i.4, %for.cond142 ], !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.4.lcssa, metadata !3705, metadata !DIExpression()), !dbg !3723
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 3, !dbg !3879
  %66 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3879
  %cmp169 = icmp eq i32 %i.4.lcssa, %66, !dbg !3879
  br i1 %cmp169, label %cond.end173, label %cond.true171, !dbg !3879

cond.true171:                                     ; preds = %for.end166
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1493, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3879
  br label %cond.end173, !dbg !3879

cond.end173:                                      ; preds = %for.end166, %cond.true171
  br label %for.cond175, !dbg !3880

for.cond175:                                      ; preds = %cond.end192, %cond.end173
  %i.5 = phi i32 [ %i.4.lcssa, %cond.end173 ], [ %inc196, %cond.end192 ], !dbg !3723
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !3705, metadata !DIExpression()), !dbg !3723
  %67 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3881
  %cfg177 = getelementptr inbounds %struct.function, %struct.function* %67, i64 0, i32 1, !dbg !3881
  %68 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg177, align 8, !dbg !3881
  %x_last_basic_block178 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %68, i64 0, i32 5, !dbg !3881
  %69 = load i32, i32* %x_last_basic_block178, align 8, !dbg !3881
  %cmp179 = icmp slt i32 %i.5, %69, !dbg !3884
  br i1 %cmp179, label %for.body181, label %for.end197, !dbg !3885

for.body181:                                      ; preds = %for.cond175
  %x_basic_block_info184 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %68, i64 0, i32 2, !dbg !3886
  %70 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info184, align 8, !dbg !3886
  %tobool185 = icmp eq %struct.VEC_basic_block_gc* %70, null, !dbg !3886
  br i1 %tobool185, label %cond.end192, label %cond.true186, !dbg !3886

cond.true186:                                     ; preds = %for.body181
  %base190 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %70, i64 0, i32 0, !dbg !3886
  br label %cond.end192, !dbg !3886

cond.end192:                                      ; preds = %for.body181, %cond.true186
  %cond193 = phi %struct.VEC_basic_block_base* [ %base190, %cond.true186 ], [ null, %for.body181 ], !dbg !3886
  %call194 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond193, i32 %i.5, %struct.basic_block_def* null) #7, !dbg !3886
  %inc196 = add nuw nsw i32 %i.5, 1, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %inc196, metadata !3705, metadata !DIExpression()), !dbg !3723
  br label %for.cond175, !dbg !3888, !llvm.loop !3889

for.end197:                                       ; preds = %for.cond175
  ret void, !dbg !3891
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_grow_bb_info(%struct.dataflow*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3898, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !3899, metadata !DIExpression()), !dbg !3901
  %idxprom = zext i32 %ix_ to i64, !dbg !3902
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3902
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3902
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3900, metadata !DIExpression()), !dbg !3901
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !3902
  ret %struct.basic_block_def* %0, !dbg !3902
}

; Function Attrs: nounwind uwtable
define dso_local void @df_bb_replace(i32 %old_index, %struct.basic_block_def* %new_block) local_unnamed_addr #4 !dbg !3903 {
entry:
  call void @llvm.dbg.value(metadata i32 %old_index, metadata !3907, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_block, metadata !3908, metadata !DIExpression()), !dbg !3915
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_block, i64 0, i32 9, !dbg !3916
  %0 = load i32, i32* %index, align 8, !dbg !3916
  call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3915
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3917
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !3917
  br i1 %tobool, label %if.end, label %if.then, !dbg !3919

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %0, i32 %old_index) #6, !dbg !3920
  br label %if.end, !dbg !3920

if.end:                                           ; preds = %entry, %if.then
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !3921
  %tobool1 = icmp eq %struct.df* %2, null, !dbg !3921
  br i1 %tobool1, label %cond.true, label %cond.end, !dbg !3921

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1517, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3921
  br label %cond.end, !dbg !3921

cond.end:                                         ; preds = %if.end, %cond.true
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3922
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3922
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3922
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 2, !dbg !3922
  %5 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3922
  %tobool2 = icmp eq %struct.VEC_basic_block_gc* %5, null, !dbg !3922
  br i1 %tobool2, label %cond.end8, label %cond.true3, !dbg !3922

cond.true3:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %5, i64 0, i32 0, !dbg !3922
  br label %cond.end8, !dbg !3922

cond.end8:                                        ; preds = %cond.end, %cond.true3
  %cond9 = phi %struct.VEC_basic_block_base* [ %base, %cond.true3 ], [ null, %cond.end ], !dbg !3922
  %call10 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond9, i32 %old_index) #7, !dbg !3922
  %cmp = icmp eq %struct.basic_block_def* %call10, null, !dbg !3922
  br i1 %cmp, label %cond.end13, label %cond.true11, !dbg !3922

cond.true11:                                      ; preds = %cond.end8
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3922
  br label %cond.end13, !dbg !3922

cond.end13:                                       ; preds = %cond.end8, %cond.true11
  call void @llvm.dbg.value(metadata i32 0, metadata !3910, metadata !DIExpression()), !dbg !3915
  br label %for.cond, !dbg !3923

for.cond:                                         ; preds = %for.inc, %cond.end13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cond.end13 ], !dbg !3924
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3910, metadata !DIExpression()), !dbg !3915
  %6 = load %struct.df*, %struct.df** @df, align 8, !dbg !3925
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %6, i64 0, i32 12, !dbg !3926
  %7 = load i32, i32* %num_problems_defined, align 4, !dbg !3926
  %8 = sext i32 %7 to i64, !dbg !3927
  %cmp15 = icmp slt i64 %indvars.iv, %8, !dbg !3927
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3928

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %6, i64 0, i32 0, i64 %indvars.iv, !dbg !3929
  %9 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3929
  call void @llvm.dbg.value(metadata %struct.dataflow* %9, metadata !3911, metadata !DIExpression()), !dbg !3930
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %9, i64 0, i32 1, !dbg !3931
  %10 = load i8**, i8*** %block_info, align 8, !dbg !3931
  %tobool16 = icmp eq i8** %10, null, !dbg !3933
  br i1 %tobool16, label %for.inc, label %if.then17, !dbg !3934

if.then17:                                        ; preds = %for.body
  tail call void @df_grow_bb_info(%struct.dataflow* %9) #6, !dbg !3935
  %call18 = tail call fastcc i8* @df_get_bb_info(%struct.dataflow* %9, i32 %old_index) #7, !dbg !3937
  %cmp19 = icmp eq i8* %call18, null, !dbg !3937
  br i1 %cmp19, label %cond.end22, label %cond.true20, !dbg !3937

cond.true20:                                      ; preds = %if.then17
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1526, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3937
  br label %cond.end22, !dbg !3937

cond.end22:                                       ; preds = %if.then17, %cond.true20
  %call24 = tail call fastcc i8* @df_get_bb_info(%struct.dataflow* %9, i32 %0) #7, !dbg !3938
  tail call fastcc void @df_set_bb_info(%struct.dataflow* %9, i32 %old_index, i8* %call24) #7, !dbg !3939
  br label %for.inc, !dbg !3940

for.inc:                                          ; preds = %for.body, %cond.end22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3941
  call void @llvm.dbg.value(metadata i32 undef, metadata !3910, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3915
  br label %for.cond, !dbg !3942, !llvm.loop !3943

for.end:                                          ; preds = %for.cond
  tail call fastcc void @df_clear_bb_dirty(%struct.basic_block_def* %new_block) #7, !dbg !3945
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3946
  %cfg27 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3946
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27, align 8, !dbg !3946
  %x_basic_block_info28 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 2, !dbg !3946
  %13 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info28, align 8, !dbg !3946
  %tobool29 = icmp eq %struct.VEC_basic_block_gc* %13, null, !dbg !3946
  br i1 %tobool29, label %cond.end36, label %cond.true30, !dbg !3946

cond.true30:                                      ; preds = %for.end
  %base34 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %13, i64 0, i32 0, !dbg !3946
  br label %cond.end36, !dbg !3946

cond.end36:                                       ; preds = %for.end, %cond.true30
  %cond37 = phi %struct.VEC_basic_block_base* [ %base34, %cond.true30 ], [ null, %for.end ], !dbg !3946
  %call38 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond37, i32 %old_index, %struct.basic_block_def* %new_block) #7, !dbg !3946
  store i32 %old_index, i32* %index, align 8, !dbg !3947
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3948
  %cfg41 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3948
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg41, align 8, !dbg !3948
  %x_basic_block_info42 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 2, !dbg !3948
  %16 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info42, align 8, !dbg !3948
  %tobool43 = icmp eq %struct.VEC_basic_block_gc* %16, null, !dbg !3948
  br i1 %tobool43, label %cond.end50, label %cond.true44, !dbg !3948

cond.true44:                                      ; preds = %cond.end36
  %base48 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %16, i64 0, i32 0, !dbg !3948
  br label %cond.end50, !dbg !3948

cond.end50:                                       ; preds = %cond.end36, %cond.true44
  %cond51 = phi %struct.VEC_basic_block_base* [ %base48, %cond.true44 ], [ null, %cond.end36 ], !dbg !3948
  %call52 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond51, i32 %old_index) #7, !dbg !3948
  tail call void @df_set_bb_dirty(%struct.basic_block_def* %call52) #7, !dbg !3949
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3950
  %cfg54 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !3950
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg54, align 8, !dbg !3950
  %x_basic_block_info55 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 2, !dbg !3950
  %19 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info55, align 8, !dbg !3950
  %tobool56 = icmp eq %struct.VEC_basic_block_gc* %19, null, !dbg !3950
  br i1 %tobool56, label %cond.end63, label %cond.true57, !dbg !3950

cond.true57:                                      ; preds = %cond.end50
  %base61 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %19, i64 0, i32 0, !dbg !3950
  br label %cond.end63, !dbg !3950

cond.end63:                                       ; preds = %cond.end50, %cond.true57
  %cond64 = phi %struct.VEC_basic_block_base* [ %base61, %cond.true57 ], [ null, %cond.end50 ], !dbg !3950
  %call65 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond64, i32 %0, %struct.basic_block_def* null) #7, !dbg !3950
  ret void, !dbg !3951
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_clear_bb_dirty(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3952 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3954, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i32 1, metadata !3955, metadata !DIExpression()), !dbg !3960
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3961
  br label %for.cond, !dbg !3963

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ], !dbg !3964
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3955, metadata !DIExpression()), !dbg !3960
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3965
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 12, !dbg !3966
  %1 = load i32, i32* %num_problems_defined, align 4, !dbg !3966
  %2 = sext i32 %1 to i64, !dbg !3967
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !3967
  br i1 %cmp, label %for.body, label %for.end, !dbg !3968

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 0, i64 %indvars.iv, !dbg !3969
  %3 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.dataflow* %3, metadata !3956, metadata !DIExpression()), !dbg !3970
  %out_of_date_transfer_functions = getelementptr inbounds %struct.dataflow, %struct.dataflow* %3, i64 0, i32 4, !dbg !3971
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out_of_date_transfer_functions, align 8, !dbg !3971
  %tobool = icmp eq %struct.bitmap_head_def* %4, null, !dbg !3972
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3973

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %index, align 8, !dbg !3974
  %call = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* nonnull %4, i32 %5) #6, !dbg !3975
  br label %for.inc, !dbg !3975

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3976
  call void @llvm.dbg.value(metadata i32 undef, metadata !3955, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3960
  br label %for.cond, !dbg !3977, !llvm.loop !3978

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3980
}

; Function Attrs: nounwind uwtable
define dso_local void @df_bb_delete(i32 %bb_index) local_unnamed_addr #4 !dbg !3981 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !3985, metadata !DIExpression()), !dbg !3995
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3996
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3996
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3996
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3996
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3996
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3996
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3996

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3996
  br label %cond.end, !dbg !3996

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3996
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb_index) #7, !dbg !3996
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3986, metadata !DIExpression()), !dbg !3995
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !3997
  %tobool4 = icmp eq %struct.df* %3, null, !dbg !3997
  br i1 %tobool4, label %cleanup.cont, label %for.cond.preheader, !dbg !3999

for.cond.preheader:                               ; preds = %cond.end
  br label %for.cond, !dbg !4000

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4001
  %4 = phi %struct.df* [ %3, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !4001
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3987, metadata !DIExpression()), !dbg !3995
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 12, !dbg !4002
  %5 = load i32, i32* %num_problems_defined, align 4, !dbg !4002
  %6 = sext i32 %5 to i64, !dbg !4003
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !4003
  br i1 %cmp, label %for.body, label %for.end, !dbg !4000

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 0, i64 %indvars.iv, !dbg !4004
  %7 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !4004
  call void @llvm.dbg.value(metadata %struct.dataflow* %7, metadata !3988, metadata !DIExpression()), !dbg !4005
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %7, i64 0, i32 0, !dbg !4006
  %8 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4006
  %free_bb_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %8, i64 0, i32 4, !dbg !4007
  %9 = load void (%struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, i8*)** %free_bb_fun, align 8, !dbg !4007
  %tobool5 = icmp eq void (%struct.basic_block_def*, i8*)* %9, null, !dbg !4008
  br i1 %tobool5, label %for.inc, label %if.then6, !dbg !4009

if.then6:                                         ; preds = %for.body
  %call7 = tail call fastcc i8* @df_get_bb_info(%struct.dataflow* %7, i32 %bb_index) #7, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %call7, metadata !3992, metadata !DIExpression()), !dbg !4011
  %tobool8 = icmp eq i8* %call7, null, !dbg !4012
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !4014

if.then9:                                         ; preds = %if.then6
  %10 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4015
  %free_bb_fun11 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %10, i64 0, i32 4, !dbg !4017
  %11 = load void (%struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, i8*)** %free_bb_fun11, align 8, !dbg !4017
  tail call void %11(%struct.basic_block_def* %call, i8* nonnull %call7) #6, !dbg !4018
  tail call fastcc void @df_set_bb_info(%struct.dataflow* %7, i32 %bb_index, i8* null) #7, !dbg !4019
  br label %for.inc, !dbg !4020

for.inc:                                          ; preds = %if.then6, %for.body, %if.then9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4021
  call void @llvm.dbg.value(metadata i32 undef, metadata !3987, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3995
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !4001
  br label %for.cond, !dbg !4022, !llvm.loop !4023

for.end:                                          ; preds = %for.cond
  tail call fastcc void @df_clear_bb_dirty(%struct.basic_block_def* %call) #7, !dbg !4025
  tail call void @df_mark_solutions_dirty() #7, !dbg !4026
  br label %cleanup.cont, !dbg !4027

cleanup.cont:                                     ; preds = %cond.end, %for.end
  ret void, !dbg !4027
}

declare dso_local void @df_scan_verify() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def* %bb, i32 %regno) local_unnamed_addr #4 !dbg !4028 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4032, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4033, metadata !DIExpression()), !dbg !4044
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4045
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4045
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4045
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4045
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !4046
  %insns = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 10, !dbg !4046
  br label %for.cond, !dbg !4045

for.cond:                                         ; preds = %for.inc26, %entry
  %insn.0.in = phi %struct.rtx_def** [ %head_, %entry ], [ %rt_rtx30, %for.inc26 ]
  %retval.0 = phi %union.df_ref_d* [ undef, %entry ], [ %retval.3, %for.inc26 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4047
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4034, metadata !DIExpression()), !dbg !4044
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4048
  br i1 %tobool, label %cleanup32.loopexit1, label %land.rhs, !dbg !4048

land.rhs:                                         ; preds = %for.cond
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !4048
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4048
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4048
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !4048
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4048
  %cmp = icmp eq %struct.rtx_def* %insn.0, %4, !dbg !4048
  br i1 %cmp, label %cleanup32.loopexit1, label %for.body, !dbg !4045

for.body:                                         ; preds = %land.rhs
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4049
  %bf.load = load i32, i32* %5, align 8, !dbg !4049
  %bf.clear = and i32 %bf.load, 65535, !dbg !4049
  %cmp3 = icmp eq i32 %bf.clear, 8, !dbg !4049
  br i1 %cmp3, label %if.end, label %lor.lhs.false, !dbg !4049

lor.lhs.false:                                    ; preds = %for.body
  %cmp6 = icmp eq i32 %bf.clear, 7, !dbg !4049
  br i1 %cmp6, label %if.end, label %lor.lhs.false7, !dbg !4049

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %bf.clear, 9, !dbg !4049
  br i1 %cmp10, label %if.end, label %lor.lhs.false11, !dbg !4049

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !4049
  br i1 %cmp14, label %if.end, label %for.inc26, !dbg !4051

if.end:                                           ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %for.body
  %arrayidx17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4052
  %rt_int = bitcast %union.rtunion_def* %arrayidx17 to i32*, !dbg !4052
  %6 = load i32, i32* %rt_int, align 8, !dbg !4052
  call void @llvm.dbg.value(metadata i32 %6, metadata !4036, metadata !DIExpression()), !dbg !4044
  %7 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4053
  %idxprom = zext i32 %6 to i64, !dbg !4053
  %arrayidx18 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %7, i64 %idxprom, !dbg !4053
  %8 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx18, align 8, !dbg !4053
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %8, i64 0, i32 1, !dbg !4053
  %9 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !4053
  call void @llvm.dbg.value(metadata %union.df_ref_d** %9, metadata !4035, metadata !DIExpression()), !dbg !4044
  br label %for.cond19, !dbg !4054

for.cond19:                                       ; preds = %for.inc, %if.end
  %def_rec.0 = phi %union.df_ref_d** [ %9, %if.end ], [ %incdec.ptr, %for.inc ], !dbg !4046
  %retval.1 = phi %union.df_ref_d* [ %retval.0, %if.end ], [ %.retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !4035, metadata !DIExpression()), !dbg !4044
  %10 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !4055
  %tobool20 = icmp eq %union.df_ref_d* %10, null, !dbg !4056
  br i1 %tobool20, label %for.inc26.loopexit, label %for.body21, !dbg !4056

for.body21:                                       ; preds = %for.cond19
  call void @llvm.dbg.value(metadata %union.df_ref_d* %10, metadata !4037, metadata !DIExpression()), !dbg !4057
  %regno22 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %10, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4058
  %11 = load i32, i32* %regno22, align 8, !dbg !4058
  %cmp23 = icmp eq i32 %11, %regno, !dbg !4060
  %.retval.1 = select i1 %cmp23, %union.df_ref_d* %10, %union.df_ref_d* %retval.1, !dbg !4061
  br i1 %cmp23, label %cleanup32.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body21
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !4062
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4035, metadata !DIExpression()), !dbg !4044
  br label %for.cond19, !dbg !4063, !llvm.loop !4064

for.inc26.loopexit:                               ; preds = %for.cond19
  %retval.1.lcssa = phi %union.df_ref_d* [ %retval.1, %for.cond19 ]
  br label %for.inc26, !dbg !4048

for.inc26:                                        ; preds = %for.inc26.loopexit, %lor.lhs.false11
  %retval.3 = phi %union.df_ref_d* [ %retval.0, %lor.lhs.false11 ], [ %retval.1.lcssa, %for.inc26.loopexit ]
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4048
  %rt_rtx30 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !4048
  br label %for.cond, !dbg !4048, !llvm.loop !4066

cleanup32.loopexit:                               ; preds = %for.body21
  %.retval.1.lcssa = phi %union.df_ref_d* [ %.retval.1, %for.body21 ], !dbg !4061
  br label %cleanup32, !dbg !4068

cleanup32.loopexit1:                              ; preds = %for.cond, %land.rhs
  br label %cleanup32, !dbg !4068

cleanup32:                                        ; preds = %cleanup32.loopexit1, %cleanup32.loopexit
  %retval.4 = phi %union.df_ref_d* [ %.retval.1.lcssa, %cleanup32.loopexit ], [ null, %cleanup32.loopexit1 ], !dbg !4044
  ret %union.df_ref_d* %retval.4, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local %union.df_ref_d* @df_bb_regno_last_def_find(%struct.basic_block_def* %bb, i32 %regno) local_unnamed_addr #4 !dbg !4069 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4071, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4072, metadata !DIExpression()), !dbg !4083
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4084
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4084
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4084
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !4084
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !4085
  %insns = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 10, !dbg !4085
  br label %for.cond, !dbg !4084

for.cond:                                         ; preds = %for.inc26, %entry
  %insn.0.in = phi %struct.rtx_def** [ %end_, %entry ], [ %rt_rtx30, %for.inc26 ]
  %retval.0 = phi %union.df_ref_d* [ undef, %entry ], [ %retval.3, %for.inc26 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4073, metadata !DIExpression()), !dbg !4083
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4087
  br i1 %tobool, label %cleanup32.loopexit1, label %land.rhs, !dbg !4087

land.rhs:                                         ; preds = %for.cond
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4087
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4087
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4087
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !4087
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4087
  %cmp = icmp eq %struct.rtx_def* %insn.0, %4, !dbg !4087
  br i1 %cmp, label %cleanup32.loopexit1, label %for.body, !dbg !4084

for.body:                                         ; preds = %land.rhs
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4088
  %bf.load = load i32, i32* %5, align 8, !dbg !4088
  %bf.clear = and i32 %bf.load, 65535, !dbg !4088
  %cmp3 = icmp eq i32 %bf.clear, 8, !dbg !4088
  br i1 %cmp3, label %if.end, label %lor.lhs.false, !dbg !4088

lor.lhs.false:                                    ; preds = %for.body
  %cmp6 = icmp eq i32 %bf.clear, 7, !dbg !4088
  br i1 %cmp6, label %if.end, label %lor.lhs.false7, !dbg !4088

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %bf.clear, 9, !dbg !4088
  br i1 %cmp10, label %if.end, label %lor.lhs.false11, !dbg !4088

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !4088
  br i1 %cmp14, label %if.end, label %for.inc26, !dbg !4090

if.end:                                           ; preds = %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false, %for.body
  %arrayidx17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4091
  %rt_int = bitcast %union.rtunion_def* %arrayidx17 to i32*, !dbg !4091
  %6 = load i32, i32* %rt_int, align 8, !dbg !4091
  call void @llvm.dbg.value(metadata i32 %6, metadata !4075, metadata !DIExpression()), !dbg !4083
  %7 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4092
  %idxprom = zext i32 %6 to i64, !dbg !4092
  %arrayidx18 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %7, i64 %idxprom, !dbg !4092
  %8 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx18, align 8, !dbg !4092
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %8, i64 0, i32 1, !dbg !4092
  %9 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !4092
  call void @llvm.dbg.value(metadata %union.df_ref_d** %9, metadata !4074, metadata !DIExpression()), !dbg !4083
  br label %for.cond19, !dbg !4093

for.cond19:                                       ; preds = %for.inc, %if.end
  %def_rec.0 = phi %union.df_ref_d** [ %9, %if.end ], [ %incdec.ptr, %for.inc ], !dbg !4085
  %retval.1 = phi %union.df_ref_d* [ %retval.0, %if.end ], [ %.retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !4074, metadata !DIExpression()), !dbg !4083
  %10 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !4094
  %tobool20 = icmp eq %union.df_ref_d* %10, null, !dbg !4095
  br i1 %tobool20, label %for.inc26.loopexit, label %for.body21, !dbg !4095

for.body21:                                       ; preds = %for.cond19
  call void @llvm.dbg.value(metadata %union.df_ref_d* %10, metadata !4076, metadata !DIExpression()), !dbg !4096
  %regno22 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %10, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4097
  %11 = load i32, i32* %regno22, align 8, !dbg !4097
  %cmp23 = icmp eq i32 %11, %regno, !dbg !4099
  %.retval.1 = select i1 %cmp23, %union.df_ref_d* %10, %union.df_ref_d* %retval.1, !dbg !4100
  br i1 %cmp23, label %cleanup32.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body21
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !4101
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4074, metadata !DIExpression()), !dbg !4083
  br label %for.cond19, !dbg !4102, !llvm.loop !4103

for.inc26.loopexit:                               ; preds = %for.cond19
  %retval.1.lcssa = phi %union.df_ref_d* [ %retval.1, %for.cond19 ]
  br label %for.inc26, !dbg !4087

for.inc26:                                        ; preds = %for.inc26.loopexit, %lor.lhs.false11
  %retval.3 = phi %union.df_ref_d* [ %retval.0, %lor.lhs.false11 ], [ %retval.1.lcssa, %for.inc26.loopexit ]
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4087
  %rt_rtx30 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !4087
  br label %for.cond, !dbg !4087, !llvm.loop !4105

cleanup32.loopexit:                               ; preds = %for.body21
  %.retval.1.lcssa = phi %union.df_ref_d* [ %.retval.1, %for.body21 ], !dbg !4100
  br label %cleanup32, !dbg !4107

cleanup32.loopexit1:                              ; preds = %for.cond, %land.rhs
  br label %cleanup32, !dbg !4107

cleanup32:                                        ; preds = %cleanup32.loopexit1, %cleanup32.loopexit
  %retval.4 = phi %union.df_ref_d* [ %.retval.1.lcssa, %cleanup32.loopexit ], [ null, %cleanup32.loopexit1 ], !dbg !4083
  ret %union.df_ref_d* %retval.4, !dbg !4107
}

; Function Attrs: nounwind uwtable
define dso_local %union.df_ref_d* @df_find_def(%struct.rtx_def* %insn, %struct.rtx_def* %reg) local_unnamed_addr #4 !dbg !4108 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4112, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4113, metadata !DIExpression()), !dbg !4120
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4121
  %bf.load = load i32, i32* %0, align 8, !dbg !4121
  %bf.clear = and i32 %bf.load, 65535, !dbg !4121
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4123
  br i1 %cmp, label %if.then, label %if.end, !dbg !4124

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4125
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4125
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4125
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4113, metadata !DIExpression()), !dbg !4120
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4120
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4126
  %.pre = and i32 %bf.load1.pre, 65535, !dbg !4126
  br label %if.end, !dbg !4127

if.end:                                           ; preds = %if.then, %entry
  %bf.clear2.pre-phi = phi i32 [ %.pre, %if.then ], [ %bf.clear, %entry ], !dbg !4126
  %reg.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %reg, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.addr.0, metadata !4113, metadata !DIExpression()), !dbg !4120
  %cmp3 = icmp eq i32 %bf.clear2.pre-phi, 37, !dbg !4126
  br i1 %cmp3, label %cond.end, label %cond.true, !dbg !4126

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1736, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4126
  br label %cond.end, !dbg !4126

cond.end:                                         ; preds = %if.end, %cond.true
  %arrayidx6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4128
  %rt_int = bitcast %union.rtunion_def* %arrayidx6 to i32*, !dbg !4128
  %2 = load i32, i32* %rt_int, align 8, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %2, metadata !4114, metadata !DIExpression()), !dbg !4120
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !4129
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 10, !dbg !4129
  %4 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4129
  %idxprom = zext i32 %2 to i64, !dbg !4129
  %arrayidx7 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %4, i64 %idxprom, !dbg !4129
  %5 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx7, align 8, !dbg !4129
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %5, i64 0, i32 1, !dbg !4129
  %6 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !4129
  call void @llvm.dbg.value(metadata %union.df_ref_d** %6, metadata !4115, metadata !DIExpression()), !dbg !4120
  br label %for.cond, !dbg !4130

for.cond:                                         ; preds = %for.inc, %cond.end
  %def_rec.0 = phi %union.df_ref_d** [ %6, %cond.end ], [ %incdec.ptr, %for.inc ], !dbg !4131
  %retval.0 = phi %union.df_ref_d* [ undef, %cond.end ], [ %.retval.0, %for.inc ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !4115, metadata !DIExpression()), !dbg !4120
  %7 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !4132
  %tobool = icmp eq %union.df_ref_d* %7, null, !dbg !4133
  br i1 %tobool, label %cleanup27, label %for.body, !dbg !4133

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %7, metadata !4116, metadata !DIExpression()), !dbg !4134
  %reg8 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %7, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4135
  %8 = bitcast %struct.rtx_def** %reg8 to i32**, !dbg !4135
  %9 = load i32*, i32** %8, align 8, !dbg !4135
  %bf.load9 = load i32, i32* %9, align 8, !dbg !4135
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !4135
  %cmp11 = icmp eq i32 %bf.clear10, 39, !dbg !4135
  %.cast = bitcast i32* %9 to %struct.rtx_def*, !dbg !4135
  br i1 %cmp11, label %cond.true12, label %cond.end22, !dbg !4135

cond.true12:                                      ; preds = %for.body
  %u15 = getelementptr inbounds i32, i32* %9, i64 2, !dbg !4135
  %rt_rtx18 = bitcast i32* %u15 to %struct.rtx_def**, !dbg !4135
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx18, align 8, !dbg !4135
  br label %cond.end22, !dbg !4135

cond.end22:                                       ; preds = %for.body, %cond.true12
  %cond23 = phi %struct.rtx_def* [ %10, %cond.true12 ], [ %.cast, %for.body ], !dbg !4135
  %call = tail call i32 @rtx_equal_p(%struct.rtx_def* %cond23, %struct.rtx_def* %reg.addr.0) #6, !dbg !4137
  %tobool24 = icmp ne i32 %call, 0, !dbg !4137
  %.retval.0 = select i1 %tobool24, %union.df_ref_d* %7, %union.df_ref_d* %retval.0, !dbg !4138
  br i1 %tobool24, label %cleanup27, label %for.inc

for.inc:                                          ; preds = %cond.end22
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !4139
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4115, metadata !DIExpression()), !dbg !4120
  br label %for.cond, !dbg !4140, !llvm.loop !4141

cleanup27:                                        ; preds = %cond.end22, %for.cond
  %retval.2 = phi %union.df_ref_d* [ %.retval.0, %cond.end22 ], [ null, %for.cond ], !dbg !4120
  ret %union.df_ref_d* %retval.2, !dbg !4143
}

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @df_reg_defined(%struct.rtx_def* %insn, %struct.rtx_def* %reg) local_unnamed_addr #4 !dbg !4144 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4148, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4149, metadata !DIExpression()), !dbg !4150
  %call = tail call %union.df_ref_d* @df_find_def(%struct.rtx_def* %insn, %struct.rtx_def* %reg) #7, !dbg !4151
  %cmp = icmp ne %union.df_ref_d* %call, null, !dbg !4152
  %conv1 = zext i1 %cmp to i8, !dbg !4151
  ret i8 %conv1, !dbg !4153
}

; Function Attrs: nounwind uwtable
define dso_local %union.df_ref_d* @df_find_use(%struct.rtx_def* %insn, %struct.rtx_def* %reg) local_unnamed_addr #4 !dbg !4154 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4156, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4157, metadata !DIExpression()), !dbg !4169
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !4170
  %bf.load = load i32, i32* %0, align 8, !dbg !4170
  %bf.clear = and i32 %bf.load, 65535, !dbg !4170
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !4172
  br i1 %cmp, label %if.then, label %if.end, !dbg !4173

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4174
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4174
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4157, metadata !DIExpression()), !dbg !4169
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4169
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4175
  %.pre = and i32 %bf.load1.pre, 65535, !dbg !4175
  br label %if.end, !dbg !4176

if.end:                                           ; preds = %if.then, %entry
  %bf.clear2.pre-phi = phi i32 [ %.pre, %if.then ], [ %bf.clear, %entry ], !dbg !4175
  %reg.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %reg, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.addr.0, metadata !4157, metadata !DIExpression()), !dbg !4169
  %cmp3 = icmp eq i32 %bf.clear2.pre-phi, 37, !dbg !4175
  br i1 %cmp3, label %cond.end, label %cond.true, !dbg !4175

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 1770, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4175
  br label %cond.end, !dbg !4175

cond.end:                                         ; preds = %if.end, %cond.true
  %arrayidx6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4177
  %rt_int = bitcast %union.rtunion_def* %arrayidx6 to i32*, !dbg !4177
  %2 = load i32, i32* %rt_int, align 8, !dbg !4177
  call void @llvm.dbg.value(metadata i32 %2, metadata !4158, metadata !DIExpression()), !dbg !4169
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !4178
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 10, !dbg !4178
  %4 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4178
  %idxprom = zext i32 %2 to i64, !dbg !4178
  %arrayidx7 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %4, i64 %idxprom, !dbg !4178
  %5 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx7, align 8, !dbg !4178
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %5, i64 0, i32 2, !dbg !4178
  %6 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !4178
  call void @llvm.dbg.value(metadata %union.df_ref_d** %6, metadata !4159, metadata !DIExpression()), !dbg !4169
  br label %for.cond, !dbg !4179

for.cond:                                         ; preds = %for.inc, %cond.end
  %use_rec.0 = phi %union.df_ref_d** [ %6, %cond.end ], [ %incdec.ptr, %for.inc ], !dbg !4180
  %retval.0 = phi %union.df_ref_d* [ undef, %cond.end ], [ %.retval.0, %for.inc ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !4159, metadata !DIExpression()), !dbg !4169
  %7 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !4181
  %tobool = icmp eq %union.df_ref_d* %7, null, !dbg !4182
  br i1 %tobool, label %for.end, label %for.body, !dbg !4182

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %7, metadata !4160, metadata !DIExpression()), !dbg !4183
  %reg8 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %7, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4184
  %8 = bitcast %struct.rtx_def** %reg8 to i32**, !dbg !4184
  %9 = load i32*, i32** %8, align 8, !dbg !4184
  %bf.load9 = load i32, i32* %9, align 8, !dbg !4184
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !4184
  %cmp11 = icmp eq i32 %bf.clear10, 39, !dbg !4184
  %.cast5 = bitcast i32* %9 to %struct.rtx_def*, !dbg !4184
  br i1 %cmp11, label %cond.true12, label %cond.end22, !dbg !4184

cond.true12:                                      ; preds = %for.body
  %u15 = getelementptr inbounds i32, i32* %9, i64 2, !dbg !4184
  %rt_rtx18 = bitcast i32* %u15 to %struct.rtx_def**, !dbg !4184
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx18, align 8, !dbg !4184
  br label %cond.end22, !dbg !4184

cond.end22:                                       ; preds = %for.body, %cond.true12
  %cond23 = phi %struct.rtx_def* [ %10, %cond.true12 ], [ %.cast5, %for.body ], !dbg !4184
  %call = tail call i32 @rtx_equal_p(%struct.rtx_def* %cond23, %struct.rtx_def* %reg.addr.0) #6, !dbg !4186
  %tobool24 = icmp ne i32 %call, 0, !dbg !4186
  %.retval.0 = select i1 %tobool24, %union.df_ref_d* %7, %union.df_ref_d* %retval.0, !dbg !4187
  br i1 %tobool24, label %cleanup65.loopexit6, label %for.inc

for.inc:                                          ; preds = %cond.end22
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !4188
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4159, metadata !DIExpression()), !dbg !4169
  br label %for.cond, !dbg !4189, !llvm.loop !4190

for.end:                                          ; preds = %for.cond
  %retval.0.lcssa = phi %union.df_ref_d* [ %retval.0, %for.cond ]
  %11 = load %struct.df*, %struct.df** @df, align 8, !dbg !4192
  %changeable_flags = getelementptr inbounds %struct.df, %struct.df* %11, i64 0, i32 27, !dbg !4193
  %bf.load27 = load i8, i8* %changeable_flags, align 4, !dbg !4193
  %12 = and i8 %bf.load27, 4, !dbg !4194
  %tobool28 = icmp eq i8 %12, 0, !dbg !4194
  br i1 %tobool28, label %cleanup65, label %if.then29, !dbg !4195

if.then29:                                        ; preds = %for.end
  %insns30 = getelementptr inbounds %struct.df, %struct.df* %11, i64 0, i32 10, !dbg !4196
  %13 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns30, align 8, !dbg !4196
  %arrayidx32 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %13, i64 %idxprom, !dbg !4196
  %14 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx32, align 8, !dbg !4196
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %14, i64 0, i32 3, !dbg !4196
  %15 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !4196
  call void @llvm.dbg.value(metadata %union.df_ref_d** %15, metadata !4159, metadata !DIExpression()), !dbg !4169
  br label %for.cond33, !dbg !4197

for.cond33:                                       ; preds = %for.inc61, %if.then29
  %use_rec.1 = phi %union.df_ref_d** [ %15, %if.then29 ], [ %incdec.ptr62, %for.inc61 ], !dbg !4198
  %retval.2 = phi %union.df_ref_d* [ %retval.0.lcssa, %if.then29 ], [ %.retval.2, %for.inc61 ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !4159, metadata !DIExpression()), !dbg !4169
  %16 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !4199
  %tobool34 = icmp eq %union.df_ref_d* %16, null, !dbg !4200
  br i1 %tobool34, label %cleanup65.loopexit, label %for.body35, !dbg !4200

for.body35:                                       ; preds = %for.cond33
  call void @llvm.dbg.value(metadata %union.df_ref_d* %16, metadata !4164, metadata !DIExpression()), !dbg !4201
  %reg38 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %16, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4202
  %17 = bitcast %struct.rtx_def** %reg38 to i32**, !dbg !4202
  %18 = load i32*, i32** %17, align 8, !dbg !4202
  %bf.load39 = load i32, i32* %18, align 8, !dbg !4202
  %bf.clear40 = and i32 %bf.load39, 65535, !dbg !4202
  %cmp41 = icmp eq i32 %bf.clear40, 39, !dbg !4202
  %.cast = bitcast i32* %18 to %struct.rtx_def*, !dbg !4202
  br i1 %cmp41, label %cond.true42, label %cond.end52, !dbg !4202

cond.true42:                                      ; preds = %for.body35
  %u45 = getelementptr inbounds i32, i32* %18, i64 2, !dbg !4202
  %rt_rtx48 = bitcast i32* %u45 to %struct.rtx_def**, !dbg !4202
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx48, align 8, !dbg !4202
  br label %cond.end52, !dbg !4202

cond.end52:                                       ; preds = %for.body35, %cond.true42
  %cond53 = phi %struct.rtx_def* [ %19, %cond.true42 ], [ %.cast, %for.body35 ], !dbg !4202
  %call54 = tail call i32 @rtx_equal_p(%struct.rtx_def* %cond53, %struct.rtx_def* %reg.addr.0) #6, !dbg !4204
  %tobool55 = icmp ne i32 %call54, 0, !dbg !4204
  %.retval.2 = select i1 %tobool55, %union.df_ref_d* %16, %union.df_ref_d* %retval.2, !dbg !4205
  br i1 %tobool55, label %cleanup65.loopexit, label %for.inc61

for.inc61:                                        ; preds = %cond.end52
  %incdec.ptr62 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !4206
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr62, metadata !4159, metadata !DIExpression()), !dbg !4169
  br label %for.cond33, !dbg !4207, !llvm.loop !4208

cleanup65.loopexit:                               ; preds = %for.cond33, %cond.end52
  %retval.4.ph = phi %union.df_ref_d* [ null, %for.cond33 ], [ %.retval.2, %cond.end52 ]
  br label %cleanup65, !dbg !4210

cleanup65.loopexit6:                              ; preds = %cond.end22
  %.retval.0.lcssa = phi %union.df_ref_d* [ %.retval.0, %cond.end22 ], !dbg !4187
  br label %cleanup65, !dbg !4210

cleanup65:                                        ; preds = %cleanup65.loopexit6, %cleanup65.loopexit, %for.end
  %retval.4 = phi %union.df_ref_d* [ null, %for.end ], [ %retval.4.ph, %cleanup65.loopexit ], [ %.retval.0.lcssa, %cleanup65.loopexit6 ], !dbg !4169
  ret %union.df_ref_d* %retval.4, !dbg !4210
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @df_reg_used(%struct.rtx_def* %insn, %struct.rtx_def* %reg) local_unnamed_addr #4 !dbg !4211 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4213, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4214, metadata !DIExpression()), !dbg !4215
  %call = tail call %union.df_ref_d* @df_find_use(%struct.rtx_def* %insn, %struct.rtx_def* %reg) #7, !dbg !4216
  %cmp = icmp ne %union.df_ref_d* %call, null, !dbg !4217
  %conv1 = zext i1 %cmp to i8, !dbg !4216
  ret i8 %conv1, !dbg !4218
}

; Function Attrs: nounwind uwtable
define dso_local void @df_print_regset(%struct._IO_FILE* %file, %struct.bitmap_head_def* %r) local_unnamed_addr #4 !dbg !4219 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4223, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %r, metadata !4224, metadata !DIExpression()), !dbg !4227
  %0 = bitcast i32* %i to i8*, !dbg !4228
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4228
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4229
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4229
  %cmp = icmp eq %struct.bitmap_head_def* %r, null, !dbg !4230
  br i1 %cmp, label %if.then, label %if.else, !dbg !4232

if.then:                                          ; preds = %entry
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !4233
  br label %if.end6, !dbg !4233

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !4225, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4226, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %r, i32 0, i32* nonnull %i) #7, !dbg !4234
  br label %for.cond, !dbg !4234

for.cond:                                         ; preds = %for.inc, %if.else
  call void @llvm.dbg.value(metadata i32* %i, metadata !4225, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4226, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4237
  %tobool = icmp eq i8 %call1, 0, !dbg !4234
  br i1 %tobool, label %if.end6.loopexit, label %for.body, !dbg !4234

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %2, metadata !4225, metadata !DIExpression()), !dbg !4227
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %2) #6, !dbg !4241
  %3 = load i32, i32* %i, align 4, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %3, metadata !4225, metadata !DIExpression()), !dbg !4227
  %cmp3 = icmp ult i32 %3, 53, !dbg !4244
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !4245

if.then4:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %3, metadata !4225, metadata !DIExpression()), !dbg !4227
  %idxprom = zext i32 %3 to i64, !dbg !4246
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !4246
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !4246
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %4) #6, !dbg !4247
  br label %for.inc, !dbg !4247

for.inc:                                          ; preds = %for.body, %if.then4
  call void @llvm.dbg.value(metadata i32* %i, metadata !4225, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4226, metadata !DIExpression(DW_OP_deref)), !dbg !4227
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4237
  br label %for.cond, !dbg !4237, !llvm.loop !4248

if.end6.loopexit:                                 ; preds = %for.cond
  br label %if.end6, !dbg !4250

if.end6:                                          ; preds = %if.end6.loopexit, %if.then
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4250
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4251
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4251
  ret void, !dbg !4251
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_print_byte_regset(%struct._IO_FILE* %file, %struct.bitmap_head_def* %r) local_unnamed_addr #4 !dbg !4252 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %j = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4254, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %r, metadata !4255, metadata !DIExpression()), !dbg !4273
  %call = tail call i32 @max_reg_num() #6, !dbg !4274
  call void @llvm.dbg.value(metadata i32 %call, metadata !4256, metadata !DIExpression()), !dbg !4273
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4275
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4275
  %cmp = icmp eq %struct.bitmap_head_def* %r, null, !dbg !4276
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !4277

for.cond.preheader:                               ; preds = %entry
  %1 = bitcast i32* %j to i8*, !dbg !4278
  %wide.trip.count = zext i32 %call to i64, !dbg !4279
  br label %for.cond, !dbg !4280

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !4281
  br label %if.end51, !dbg !4281

for.cond:                                         ; preds = %for.cond.preheader, %for.inc49
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc49 ], !dbg !4282
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4258, metadata !DIExpression()), !dbg !4283
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4279
  br i1 %exitcond, label %if.end51.loopexit, label %for.body, !dbg !4280

for.body:                                         ; preds = %for.cond
  %2 = trunc i64 %indvars.iv to i32, !dbg !4284
  %call3 = call i32 @df_byte_lr_get_regno_start(i32 %2) #6, !dbg !4284
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4261, metadata !DIExpression()), !dbg !4285
  %3 = trunc i64 %indvars.iv to i32, !dbg !4286
  %call4 = call i32 @df_byte_lr_get_regno_len(i32 %3) #6, !dbg !4286
  call void @llvm.dbg.value(metadata i32 %call4, metadata !4265, metadata !DIExpression()), !dbg !4285
  %cmp5 = icmp ugt i32 %call4, 1, !dbg !4287
  br i1 %cmp5, label %if.then6, label %if.else35, !dbg !4288

if.then6:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i8 0, metadata !4266, metadata !DIExpression()), !dbg !4278
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4257, metadata !DIExpression(DW_OP_deref)), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %j, metadata !4269, metadata !DIExpression(DW_OP_deref)), !dbg !4278
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %r, i32 %call3, i32* nonnull %j) #7, !dbg !4290
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4257, metadata !DIExpression(DW_OP_deref)), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %j, metadata !4269, metadata !DIExpression(DW_OP_deref)), !dbg !4278
  %call8 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !4292
  %tobool = icmp eq i8 %call8, 0, !dbg !4290
  br i1 %tobool, label %for.end, label %for.body9, !dbg !4290

for.body9:                                        ; preds = %if.then6
  %4 = load i32, i32* %j, align 4, !dbg !4294
  call void @llvm.dbg.value(metadata i32 %4, metadata !4269, metadata !DIExpression()), !dbg !4278
  %add = add i32 %call3, %call4, !dbg !4296
  %cmp10 = icmp ult i32 %4, %add, !dbg !4297
  %conv11 = zext i1 %cmp10 to i8, !dbg !4294
  call void @llvm.dbg.value(metadata i8 %conv11, metadata !4266, metadata !DIExpression()), !dbg !4278
  br label %for.end, !dbg !4298

for.end:                                          ; preds = %if.then6, %for.body9
  %found.0 = phi i8 [ %conv11, %for.body9 ], [ 0, %if.then6 ], !dbg !4278
  call void @llvm.dbg.value(metadata i8 %found.0, metadata !4266, metadata !DIExpression()), !dbg !4278
  %tobool12 = icmp eq i8 %found.0, 0, !dbg !4299
  br i1 %tobool12, label %if.end34, label %if.then13, !dbg !4300

if.then13:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), metadata !4270, metadata !DIExpression()), !dbg !4301
  %5 = trunc i64 %indvars.iv to i32, !dbg !4302
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %5) #6, !dbg !4302
  %cmp15 = icmp ult i64 %indvars.iv, 53, !dbg !4303
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !4305

if.then17:                                        ; preds = %if.then13
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %indvars.iv, !dbg !4306
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !4306
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %6) #6, !dbg !4307
  br label %if.end, !dbg !4307

if.end:                                           ; preds = %if.then17, %if.then13
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !4308
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4257, metadata !DIExpression(DW_OP_deref)), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %j, metadata !4269, metadata !DIExpression(DW_OP_deref)), !dbg !4278
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %r, i32 %call3, i32* nonnull %j) #7, !dbg !4309
  %add24 = add i32 %call3, %call4, !dbg !4311
  %sub = add i32 %add24, -1, !dbg !4311
  br label %for.cond20, !dbg !4309

for.cond20:                                       ; preds = %if.end28, %if.end
  %sep.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %if.end28 ], !dbg !4301
  call void @llvm.dbg.value(metadata i8* %sep.0, metadata !4270, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4257, metadata !DIExpression(DW_OP_deref)), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %j, metadata !4269, metadata !DIExpression(DW_OP_deref)), !dbg !4278
  %call21 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !4315
  %tobool22 = icmp eq i8 %call21, 0, !dbg !4309
  br i1 %tobool22, label %for.end32, label %for.body23, !dbg !4309

for.body23:                                       ; preds = %for.cond20
  %7 = load i32, i32* %j, align 4, !dbg !4316
  call void @llvm.dbg.value(metadata i32 %7, metadata !4269, metadata !DIExpression()), !dbg !4278
  %cmp25 = icmp ugt i32 %7, %sub, !dbg !4317
  br i1 %cmp25, label %for.end32, label %if.end28, !dbg !4318

if.end28:                                         ; preds = %for.body23
  call void @llvm.dbg.value(metadata i32 %7, metadata !4269, metadata !DIExpression()), !dbg !4278
  %sub29 = sub i32 %7, %call3, !dbg !4319
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %sep.0, i32 %sub29) #6, !dbg !4320
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), metadata !4270, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4257, metadata !DIExpression(DW_OP_deref)), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %j, metadata !4269, metadata !DIExpression(DW_OP_deref)), !dbg !4278
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %j) #7, !dbg !4315
  br label %for.cond20, !dbg !4315, !llvm.loop !4321

for.end32:                                        ; preds = %for.cond20, %for.body23
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4323
  br label %if.end34, !dbg !4324

if.end34:                                         ; preds = %for.end, %for.end32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !4325
  br label %for.inc49, !dbg !4326

if.else35:                                        ; preds = %for.body
  %call36 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %r, i32 %call3) #6, !dbg !4327
  %tobool37 = icmp eq i32 %call36, 0, !dbg !4327
  br i1 %tobool37, label %for.inc49, label %if.then38, !dbg !4330

if.then38:                                        ; preds = %if.else35
  %8 = trunc i64 %indvars.iv to i32, !dbg !4331
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %8) #6, !dbg !4331
  %cmp40 = icmp ult i64 %indvars.iv, 53, !dbg !4333
  br i1 %cmp40, label %if.then42, label %for.inc49, !dbg !4335

if.then42:                                        ; preds = %if.then38
  %arrayidx44 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %indvars.iv, !dbg !4336
  %9 = load i8*, i8** %arrayidx44, align 8, !dbg !4336
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %9) #6, !dbg !4337
  br label %for.inc49, !dbg !4337

for.inc49:                                        ; preds = %if.else35, %if.end34, %if.then38, %if.then42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4338
  br label %for.cond, !dbg !4339, !llvm.loop !4340

if.end51.loopexit:                                ; preds = %for.cond
  br label %if.end51, !dbg !4342

if.end51:                                         ; preds = %if.end51.loopexit, %if.then
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4342
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !4343
  ret void, !dbg !4343
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local i32 @df_byte_lr_get_regno_start(i32) local_unnamed_addr #1

declare dso_local i32 @df_byte_lr_get_regno_len(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_dump(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4344 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4346, metadata !DIExpression()), !dbg !4348
  tail call void @df_dump_start(%struct._IO_FILE* %file) #7, !dbg !4349
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4350
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4350
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4350
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4350
  br label %for.cond, !dbg !4350

for.cond:                                         ; preds = %for.body, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4352
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4347, metadata !DIExpression()), !dbg !4348
  %tobool = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !4350
  br i1 %tobool, label %for.end, label %for.body, !dbg !4350

for.body:                                         ; preds = %for.cond
  tail call void @df_print_bb_index(%struct.basic_block_def* nonnull %bb.0, %struct._IO_FILE* %file) #6, !dbg !4353
  tail call void @df_dump_top(%struct.basic_block_def* nonnull %bb.0, %struct._IO_FILE* %file) #7, !dbg !4356
  tail call void @df_dump_bottom(%struct.basic_block_def* nonnull %bb.0, %struct._IO_FILE* %file) #7, !dbg !4357
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !4358
  br label %for.cond, !dbg !4358, !llvm.loop !4359

for.end:                                          ; preds = %for.cond
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4361
  ret void, !dbg !4362
}

; Function Attrs: nounwind uwtable
define dso_local void @df_dump_start(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4363 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4365, metadata !DIExpression()), !dbg !4374
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4375
  %tobool = icmp ne %struct.df* %0, null, !dbg !4375
  %tobool1 = icmp ne %struct._IO_FILE* %file, null, !dbg !4377
  %or.cond = and i1 %tobool, %tobool1, !dbg !4378
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !4378

if.end:                                           ; preds = %entry
  %call = tail call i8* @current_function_name() #6, !dbg !4379
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %call) #6, !dbg !4380
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !4381
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !4382
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 2, !dbg !4384
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !4384
  %tobool4 = icmp eq %struct.bitmap_head_def* %2, null, !dbg !4382
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !4385

if.then5:                                         ; preds = %if.end
  %table_size = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 3, i32 4, !dbg !4386
  %3 = load i32, i32* %table_size, align 4, !dbg !4386
  %table_size6 = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 4, i32 4, !dbg !4387
  %4 = load i32, i32* %table_size6, align 4, !dbg !4387
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0), i32 %3, i32 %4) #6, !dbg !4388
  br label %if.end8, !dbg !4388

if.end8:                                          ; preds = %if.end, %if.then5
  call void @llvm.dbg.value(metadata i32 0, metadata !4366, metadata !DIExpression()), !dbg !4374
  br label %for.cond, !dbg !4389

for.cond:                                         ; preds = %for.inc, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end8 ], !dbg !4390
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4366, metadata !DIExpression()), !dbg !4374
  %5 = load %struct.df*, %struct.df** @df, align 8, !dbg !4391
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 12, !dbg !4392
  %6 = load i32, i32* %num_problems_defined, align 4, !dbg !4392
  %7 = sext i32 %6 to i64, !dbg !4393
  %cmp = icmp slt i64 %indvars.iv, %7, !dbg !4393
  br i1 %cmp, label %for.body, label %cleanup.cont.loopexit, !dbg !4394

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 0, i64 %indvars.iv, !dbg !4395
  %8 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !4395
  call void @llvm.dbg.value(metadata %struct.dataflow* %8, metadata !4367, metadata !DIExpression()), !dbg !4396
  %computed = getelementptr inbounds %struct.dataflow, %struct.dataflow* %8, i64 0, i32 7, !dbg !4397
  %9 = load i8, i8* %computed, align 4, !dbg !4397
  %tobool9 = icmp eq i8 %9, 0, !dbg !4398
  br i1 %tobool9, label %for.inc, label %if.then10, !dbg !4399

if.then10:                                        ; preds = %for.body
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %8, i64 0, i32 0, !dbg !4400
  %10 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4400
  %dump_start_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %10, i64 0, i32 14, !dbg !4401
  %11 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** %dump_start_fun, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata void (%struct._IO_FILE*)* %11, metadata !4371, metadata !DIExpression()), !dbg !4402
  %tobool11 = icmp eq void (%struct._IO_FILE*)* %11, null, !dbg !4403
  br i1 %tobool11, label %for.inc, label %if.then12, !dbg !4405

if.then12:                                        ; preds = %if.then10
  tail call void %11(%struct._IO_FILE* nonnull %file) #6, !dbg !4406
  br label %for.inc, !dbg !4406

for.inc:                                          ; preds = %if.then10, %for.body, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4407
  call void @llvm.dbg.value(metadata i32 undef, metadata !4366, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4374
  br label %for.cond, !dbg !4408, !llvm.loop !4409

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4411

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !4411
}

declare dso_local void @df_print_bb_index(%struct.basic_block_def*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_dump_top(%struct.basic_block_def* %bb, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4412 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4414, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4415, metadata !DIExpression()), !dbg !4424
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4425
  %tobool = icmp ne %struct.df* %0, null, !dbg !4425
  %tobool1 = icmp ne %struct._IO_FILE* %file, null, !dbg !4427
  %or.cond = and i1 %tobool, %tobool1, !dbg !4428
  br i1 %or.cond, label %for.cond.preheader, label %cleanup.cont, !dbg !4428

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4429

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %.pre1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ]
  %1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !4430
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4416, metadata !DIExpression()), !dbg !4424
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !4431
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !4431
  %3 = sext i32 %2 to i64, !dbg !4432
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !4432
  br i1 %cmp, label %for.body, label %cleanup.cont.loopexit, !dbg !4429

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !4433
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !4433
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !4417, metadata !DIExpression()), !dbg !4434
  %computed = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 7, !dbg !4435
  %5 = load i8, i8* %computed, align 4, !dbg !4435
  %tobool2 = icmp eq i8 %5, 0, !dbg !4436
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !4437

if.then3:                                         ; preds = %for.body
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 0, !dbg !4438
  %6 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4438
  %dump_top_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %6, i64 0, i32 15, !dbg !4439
  %7 = load void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)** %dump_top_fun, align 8, !dbg !4439
  call void @llvm.dbg.value(metadata void (%struct.basic_block_def*, %struct._IO_FILE*)* %7, metadata !4421, metadata !DIExpression()), !dbg !4440
  %tobool4 = icmp eq void (%struct.basic_block_def*, %struct._IO_FILE*)* %7, null, !dbg !4441
  br i1 %tobool4, label %for.inc, label %if.then5, !dbg !4443

if.then5:                                         ; preds = %if.then3
  tail call void %7(%struct.basic_block_def* %bb, %struct._IO_FILE* nonnull %file) #6, !dbg !4444
  %.pre.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !4430
  br label %for.inc, !dbg !4444

for.inc:                                          ; preds = %if.then3, %for.body, %if.then5
  %.pre = phi %struct.df* [ %.pre1, %if.then3 ], [ %.pre1, %for.body ], [ %.pre.pre, %if.then5 ], !dbg !4430
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4445
  call void @llvm.dbg.value(metadata i32 undef, metadata !4416, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4424
  br label %for.cond, !dbg !4446, !llvm.loop !4447

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4449

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !4449
}

; Function Attrs: nounwind uwtable
define dso_local void @df_dump_bottom(%struct.basic_block_def* %bb, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4450 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4452, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4453, metadata !DIExpression()), !dbg !4462
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4463
  %tobool = icmp ne %struct.df* %0, null, !dbg !4463
  %tobool1 = icmp ne %struct._IO_FILE* %file, null, !dbg !4465
  %or.cond = and i1 %tobool, %tobool1, !dbg !4466
  br i1 %or.cond, label %for.cond.preheader, label %cleanup.cont, !dbg !4466

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !4467

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %.pre1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ]
  %1 = phi %struct.df* [ %0, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !4468
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4454, metadata !DIExpression()), !dbg !4462
  %num_problems_defined = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 12, !dbg !4469
  %2 = load i32, i32* %num_problems_defined, align 4, !dbg !4469
  %3 = sext i32 %2 to i64, !dbg !4470
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !4470
  br i1 %cmp, label %for.body, label %cleanup.cont.loopexit, !dbg !4467

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 0, i64 %indvars.iv, !dbg !4471
  %4 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !4471
  call void @llvm.dbg.value(metadata %struct.dataflow* %4, metadata !4455, metadata !DIExpression()), !dbg !4472
  %computed = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 7, !dbg !4473
  %5 = load i8, i8* %computed, align 4, !dbg !4473
  %tobool2 = icmp eq i8 %5, 0, !dbg !4474
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !4475

if.then3:                                         ; preds = %for.body
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %4, i64 0, i32 0, !dbg !4476
  %6 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4476
  %dump_bottom_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %6, i64 0, i32 16, !dbg !4477
  %7 = load void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)** %dump_bottom_fun, align 8, !dbg !4477
  call void @llvm.dbg.value(metadata void (%struct.basic_block_def*, %struct._IO_FILE*)* %7, metadata !4459, metadata !DIExpression()), !dbg !4478
  %tobool4 = icmp eq void (%struct.basic_block_def*, %struct._IO_FILE*)* %7, null, !dbg !4479
  br i1 %tobool4, label %for.inc, label %if.then5, !dbg !4481

if.then5:                                         ; preds = %if.then3
  tail call void %7(%struct.basic_block_def* %bb, %struct._IO_FILE* nonnull %file) #6, !dbg !4482
  %.pre.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !4468
  br label %for.inc, !dbg !4482

for.inc:                                          ; preds = %if.then3, %for.body, %if.then5
  %.pre = phi %struct.df* [ %.pre1, %if.then3 ], [ %.pre1, %for.body ], [ %.pre.pre, %if.then5 ], !dbg !4468
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4483
  call void @llvm.dbg.value(metadata i32 undef, metadata !4454, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4462
  br label %for.cond, !dbg !4484, !llvm.loop !4485

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !4487

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !4487
}

; Function Attrs: nounwind uwtable
define dso_local void @df_dump_region(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4488 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %bb_index = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4490, metadata !DIExpression()), !dbg !4499
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4500
  %blocks_to_analyze = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 2, !dbg !4501
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze, align 8, !dbg !4501
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !4500
  br i1 %tobool, label %if.else, label %if.then, !dbg !4502

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4503
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4503
  %3 = bitcast i32* %bb_index to i8*, !dbg !4504
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !4504
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !4505
  tail call void @df_dump_start(%struct._IO_FILE* %file) #7, !dbg !4506
  %4 = load %struct.df*, %struct.df** @df, align 8, !dbg !4507
  %blocks_to_analyze1 = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 2, !dbg !4507
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks_to_analyze1, align 8, !dbg !4507
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4491, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !4494, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %5, i32 0, i32* nonnull %bb_index) #7, !dbg !4507
  br label %for.cond, !dbg !4507

for.cond:                                         ; preds = %cond.end, %if.then
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4491, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !4494, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  %call2 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !4509
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4507
  br i1 %tobool3, label %for.end, label %for.body, !dbg !4507

for.body:                                         ; preds = %for.cond
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4510
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !4510
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4510
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 2, !dbg !4510
  %8 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4510
  %tobool4 = icmp eq %struct.VEC_basic_block_gc* %8, null, !dbg !4510
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !4510

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %8, i64 0, i32 0, !dbg !4510
  br label %cond.end, !dbg !4510

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !4510
  %9 = load i32, i32* %bb_index, align 4, !dbg !4510
  call void @llvm.dbg.value(metadata i32 %9, metadata !4494, metadata !DIExpression()), !dbg !4508
  %call8 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %9) #7, !dbg !4510
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !4495, metadata !DIExpression()), !dbg !4511
  call void @df_print_bb_index(%struct.basic_block_def* %call8, %struct._IO_FILE* %file) #6, !dbg !4512
  call void @df_dump_top(%struct.basic_block_def* %call8, %struct._IO_FILE* %file) #7, !dbg !4513
  call void @df_dump_bottom(%struct.basic_block_def* %call8, %struct._IO_FILE* %file) #7, !dbg !4514
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4491, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  call void @llvm.dbg.value(metadata i32* %bb_index, metadata !4494, metadata !DIExpression(DW_OP_deref)), !dbg !4508
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb_index) #7, !dbg !4509
  br label %for.cond, !dbg !4509, !llvm.loop !4515

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4518
  br label %if.end, !dbg !4519

if.else:                                          ; preds = %entry
  tail call void @df_dump(%struct._IO_FILE* %file) #7, !dbg !4520
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !4521
}

declare dso_local i8* @current_function_name() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_refs_chain_dump(%union.df_ref_d** %ref_rec, i8 zeroext %follow_chain, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4522 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d** %ref_rec, metadata !4526, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i8 %follow_chain, metadata !4527, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4528, metadata !DIExpression()), !dbg !4531
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !4532
  %tobool8 = icmp eq i8 %follow_chain, 0, !dbg !4533
  br i1 %tobool8, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !4535

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %while.cond, !dbg !4535

entry.split.us:                                   ; preds = %entry
  br label %while.cond.us, !dbg !4535

while.cond.us:                                    ; preds = %cond.end.us, %entry.split.us
  %ref_rec.addr.0.us = phi %union.df_ref_d** [ %ref_rec, %entry.split.us ], [ %incdec.ptr.us, %cond.end.us ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %ref_rec.addr.0.us, metadata !4526, metadata !DIExpression()), !dbg !4531
  %0 = load %union.df_ref_d*, %union.df_ref_d** %ref_rec.addr.0.us, align 8, !dbg !4536
  %tobool.us = icmp eq %union.df_ref_d* %0, null, !dbg !4535
  br i1 %tobool.us, label %while.end.us-lcssa.us, label %while.body.us, !dbg !4535

while.body.us:                                    ; preds = %while.cond.us
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !4529, metadata !DIExpression()), !dbg !4537
  %1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4538
  %bf.load.us = load i32, i32* %1, align 8, !dbg !4538
  %bf.clear.us = and i32 %bf.load.us, 65280, !dbg !4538
  %cmp.us = icmp eq i32 %bf.clear.us, 0, !dbg !4538
  br i1 %cmp.us, label %cond.end.us, label %cond.false.us, !dbg !4538

cond.false.us:                                    ; preds = %while.body.us
  %and.us = and i32 %bf.load.us, 262144, !dbg !4539
  %tobool3.us = icmp eq i32 %and.us, 0, !dbg !4540
  %cond.us = select i1 %tobool3.us, i32 117, i32 101, !dbg !4540
  br label %cond.end.us, !dbg !4538

cond.end.us:                                      ; preds = %cond.false.us, %while.body.us
  %cond4.us = phi i32 [ %cond.us, %cond.false.us ], [ 100, %while.body.us ], !dbg !4538
  %id.us = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4541
  %2 = load i32, i32* %id.us, align 4, !dbg !4541
  %regno.us = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4542
  %3 = load i32, i32* %regno.us, align 8, !dbg !4542
  %call7.us = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %cond4.us, i32 %2, i32 %3) #6, !dbg !4543
  %incdec.ptr.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %ref_rec.addr.0.us, i64 1, !dbg !4544
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr.us, metadata !4526, metadata !DIExpression()), !dbg !4531
  br label %while.cond.us, !dbg !4535, !llvm.loop !4545

while.end.us-lcssa.us:                            ; preds = %while.cond.us
  br label %while.end, !dbg !4547

while.cond:                                       ; preds = %cond.end, %entry.entry.split_crit_edge
  %ref_rec.addr.0 = phi %union.df_ref_d** [ %ref_rec, %entry.entry.split_crit_edge ], [ %incdec.ptr, %cond.end ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %ref_rec.addr.0, metadata !4526, metadata !DIExpression()), !dbg !4531
  %4 = load %union.df_ref_d*, %union.df_ref_d** %ref_rec.addr.0, align 8, !dbg !4536
  %tobool = icmp eq %union.df_ref_d* %4, null, !dbg !4535
  br i1 %tobool, label %while.end.us-lcssa, label %while.body, !dbg !4535

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %4, metadata !4529, metadata !DIExpression()), !dbg !4537
  %5 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4538
  %bf.load = load i32, i32* %5, align 8, !dbg !4538
  %bf.clear = and i32 %bf.load, 65280, !dbg !4538
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4538
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !4538

cond.false:                                       ; preds = %while.body
  %and = and i32 %bf.load, 262144, !dbg !4539
  %tobool3 = icmp eq i32 %and, 0, !dbg !4540
  %cond = select i1 %tobool3, i32 117, i32 101, !dbg !4540
  br label %cond.end, !dbg !4538

cond.end:                                         ; preds = %while.body, %cond.false
  %cond4 = phi i32 [ %cond, %cond.false ], [ 100, %while.body ], !dbg !4538
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4541
  %6 = load i32, i32* %id, align 4, !dbg !4541
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4542
  %7 = load i32, i32* %regno, align 8, !dbg !4542
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %cond4, i32 %6, i32 %7) #6, !dbg !4543
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4548
  %8 = load %struct.df_link*, %struct.df_link** %chain, align 8, !dbg !4548
  tail call void @df_chain_dump(%struct.df_link* %8, %struct._IO_FILE* %file) #6, !dbg !4549
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %ref_rec.addr.0, i64 1, !dbg !4544
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4526, metadata !DIExpression()), !dbg !4531
  br label %while.cond, !dbg !4535, !llvm.loop !4545

while.end.us-lcssa:                               ; preds = %while.cond
  br label %while.end, !dbg !4547

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4547
  ret void, !dbg !4550
}

declare dso_local void @df_chain_dump(%struct.df_link*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @df_regs_chain_dump(%union.df_ref_d* %ref, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4551 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref, metadata !4555, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4556, metadata !DIExpression()), !dbg !4557
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !4558
  br label %while.cond, !dbg !4559

while.cond:                                       ; preds = %while.body, %entry
  %ref.addr.0 = phi %union.df_ref_d* [ %ref, %entry ], [ %3, %while.body ]
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref.addr.0, metadata !4555, metadata !DIExpression()), !dbg !4557
  %tobool = icmp eq %union.df_ref_d* %ref.addr.0, null, !dbg !4559
  br i1 %tobool, label %while.end, label %while.body, !dbg !4559

while.body:                                       ; preds = %while.cond
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4560
  %bf.load = load i32, i32* %0, align 8, !dbg !4560
  %bf.clear = and i32 %bf.load, 65280, !dbg !4560
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4560
  %cond = select i1 %cmp, i32 100, i32 117, !dbg !4560
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref.addr.0, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4562
  %1 = load i32, i32* %id, align 4, !dbg !4562
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref.addr.0, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4563
  %2 = load i32, i32* %regno, align 8, !dbg !4563
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %cond, i32 %1, i32 %2) #6, !dbg !4564
  %next_reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref.addr.0, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !4565
  %3 = load %union.df_ref_d*, %union.df_ref_d** %next_reg, align 8, !dbg !4565
  call void @llvm.dbg.value(metadata %union.df_ref_d* %3, metadata !4555, metadata !DIExpression()), !dbg !4557
  br label %while.cond, !dbg !4559, !llvm.loop !4566

while.end:                                        ; preds = %while.cond
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4568
  ret void, !dbg !4569
}

; Function Attrs: nounwind uwtable
define dso_local void @df_insn_debug(%struct.rtx_def* %insn, i8 zeroext %follow_chain, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4570 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i8 %follow_chain, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4576, metadata !DIExpression()), !dbg !4577
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4578
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4578
  %0 = load i32, i32* %rt_int, align 8, !dbg !4578
  tail call fastcc void @df_insn_uid_debug(i32 %0, i8 zeroext %follow_chain, %struct._IO_FILE* %file) #7, !dbg !4579
  ret void, !dbg !4580
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_insn_uid_debug(i32 %uid, i8 zeroext %follow_chain, %struct._IO_FILE* %file) unnamed_addr #4 !dbg !4581 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid, metadata !4585, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i8 %follow_chain, metadata !4586, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4587, metadata !DIExpression()), !dbg !4588
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4589
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !4589
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4589
  %idxprom = zext i32 %uid to i64, !dbg !4589
  %arrayidx = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !4589
  %2 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx, align 8, !dbg !4589
  %luid = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %2, i64 0, i32 5, !dbg !4589
  %3 = load i32, i32* %luid, align 8, !dbg !4589
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 %uid, i32 %3) #6, !dbg !4590
  %4 = load %struct.df*, %struct.df** @df, align 8, !dbg !4591
  %insns1 = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 10, !dbg !4591
  %5 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns1, align 8, !dbg !4591
  %arrayidx3 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %5, i64 %idxprom, !dbg !4591
  %6 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx3, align 8, !dbg !4591
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %6, i64 0, i32 1, !dbg !4591
  %7 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !4591
  %tobool = icmp eq %union.df_ref_d** %7, null, !dbg !4591
  br i1 %tobool, label %if.end, label %if.then, !dbg !4593

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !4594
  %8 = load %struct.df*, %struct.df** @df, align 8, !dbg !4596
  %insns5 = getelementptr inbounds %struct.df, %struct.df* %8, i64 0, i32 10, !dbg !4596
  %9 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns5, align 8, !dbg !4596
  %arrayidx7 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %9, i64 %idxprom, !dbg !4596
  %10 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx7, align 8, !dbg !4596
  %defs8 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %10, i64 0, i32 1, !dbg !4596
  %11 = load %union.df_ref_d**, %union.df_ref_d*** %defs8, align 8, !dbg !4596
  tail call void @df_refs_chain_dump(%union.df_ref_d** %11, i8 zeroext %follow_chain, %struct._IO_FILE* %file) #7, !dbg !4597
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !4598
  %insns9.phi.trans.insert = getelementptr inbounds %struct.df, %struct.df* %.pre, i64 0, i32 10, !dbg !4600
  %.pre1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns9.phi.trans.insert, align 8, !dbg !4598
  %arrayidx11.phi.trans.insert = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %.pre1, i64 %idxprom, !dbg !4600
  %.pre2 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx11.phi.trans.insert, align 8, !dbg !4598
  br label %if.end, !dbg !4601

if.end:                                           ; preds = %entry, %if.then
  %12 = phi %struct.df_insn_info* [ %6, %entry ], [ %.pre2, %if.then ], !dbg !4598
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %12, i64 0, i32 2, !dbg !4598
  %13 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !4598
  %tobool12 = icmp eq %union.df_ref_d** %13, null, !dbg !4598
  br i1 %tobool12, label %if.end19, label %if.then13, !dbg !4602

if.then13:                                        ; preds = %if.end
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4603
  %14 = load %struct.df*, %struct.df** @df, align 8, !dbg !4605
  %insns15 = getelementptr inbounds %struct.df, %struct.df* %14, i64 0, i32 10, !dbg !4605
  %15 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns15, align 8, !dbg !4605
  %arrayidx17 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %15, i64 %idxprom, !dbg !4605
  %16 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx17, align 8, !dbg !4605
  %uses18 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %16, i64 0, i32 2, !dbg !4605
  %17 = load %union.df_ref_d**, %union.df_ref_d*** %uses18, align 8, !dbg !4605
  tail call void @df_refs_chain_dump(%union.df_ref_d** %17, i8 zeroext %follow_chain, %struct._IO_FILE* %file) #7, !dbg !4606
  %.pre3 = load %struct.df*, %struct.df** @df, align 8, !dbg !4607
  %insns20.phi.trans.insert = getelementptr inbounds %struct.df, %struct.df* %.pre3, i64 0, i32 10, !dbg !4609
  %.pre4 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns20.phi.trans.insert, align 8, !dbg !4607
  %arrayidx22.phi.trans.insert = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %.pre4, i64 %idxprom, !dbg !4609
  %.pre5 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx22.phi.trans.insert, align 8, !dbg !4607
  br label %if.end19, !dbg !4610

if.end19:                                         ; preds = %if.end, %if.then13
  %18 = phi %struct.df_insn_info* [ %12, %if.end ], [ %.pre5, %if.then13 ], !dbg !4607
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %18, i64 0, i32 3, !dbg !4607
  %19 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !4607
  %tobool23 = icmp eq %union.df_ref_d** %19, null, !dbg !4607
  br i1 %tobool23, label %if.end30, label %if.then24, !dbg !4611

if.then24:                                        ; preds = %if.end19
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !4612
  %20 = load %struct.df*, %struct.df** @df, align 8, !dbg !4614
  %insns26 = getelementptr inbounds %struct.df, %struct.df* %20, i64 0, i32 10, !dbg !4614
  %21 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns26, align 8, !dbg !4614
  %arrayidx28 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %21, i64 %idxprom, !dbg !4614
  %22 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx28, align 8, !dbg !4614
  %eq_uses29 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %22, i64 0, i32 3, !dbg !4614
  %23 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses29, align 8, !dbg !4614
  tail call void @df_refs_chain_dump(%union.df_ref_d** %23, i8 zeroext %follow_chain, %struct._IO_FILE* %file) #7, !dbg !4615
  %.pre6 = load %struct.df*, %struct.df** @df, align 8, !dbg !4616
  %insns31.phi.trans.insert = getelementptr inbounds %struct.df, %struct.df* %.pre6, i64 0, i32 10, !dbg !4618
  %.pre7 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns31.phi.trans.insert, align 8, !dbg !4616
  %arrayidx33.phi.trans.insert = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %.pre7, i64 %idxprom, !dbg !4618
  %.pre8 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx33.phi.trans.insert, align 8, !dbg !4616
  br label %if.end30, !dbg !4619

if.end30:                                         ; preds = %if.end19, %if.then24
  %24 = phi %struct.df_insn_info* [ %18, %if.end19 ], [ %.pre8, %if.then24 ], !dbg !4616
  %mw_hardregs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %24, i64 0, i32 4, !dbg !4616
  %25 = load %struct.df_mw_hardreg**, %struct.df_mw_hardreg*** %mw_hardregs, align 8, !dbg !4616
  %tobool34 = icmp eq %struct.df_mw_hardreg** %25, null, !dbg !4616
  br i1 %tobool34, label %if.end41, label %if.then35, !dbg !4620

if.then35:                                        ; preds = %if.end30
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !4621
  %26 = load %struct.df*, %struct.df** @df, align 8, !dbg !4623
  %insns37 = getelementptr inbounds %struct.df, %struct.df* %26, i64 0, i32 10, !dbg !4623
  %27 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns37, align 8, !dbg !4623
  %arrayidx39 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %27, i64 %idxprom, !dbg !4623
  %28 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx39, align 8, !dbg !4623
  %mw_hardregs40 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %28, i64 0, i32 4, !dbg !4623
  %29 = load %struct.df_mw_hardreg**, %struct.df_mw_hardreg*** %mw_hardregs40, align 8, !dbg !4623
  tail call fastcc void @df_mws_dump(%struct.df_mw_hardreg** %29, %struct._IO_FILE* %file) #7, !dbg !4624
  br label %if.end41, !dbg !4625

if.end41:                                         ; preds = %if.end30, %if.then35
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4626
  ret void, !dbg !4627
}

; Function Attrs: nounwind uwtable
define dso_local void @df_insn_debug_regno(%struct.rtx_def* %insn, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4628 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4632, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4633, metadata !DIExpression()), !dbg !4635
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4636
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !4636
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !4636
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4636
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4636
  %2 = load i32, i32* %rt_int, align 8, !dbg !4636
  %idxprom = sext i32 %2 to i64, !dbg !4636
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !4636
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !4636
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %3, metadata !4634, metadata !DIExpression()), !dbg !4635
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !4637
  %rt_bb = bitcast %struct.object_block** %arrayidx8 to %struct.basic_block_def**, !dbg !4637
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !4637
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !4638
  %5 = load i32, i32* %index, align 8, !dbg !4638
  %luid = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 5, !dbg !4639
  %6 = load i32, i32* %luid, align 8, !dbg !4639
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %2, i32 %5, i32 %6) #6, !dbg !4640
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 1, !dbg !4641
  %7 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !4641
  tail call void @df_refs_chain_dump(%union.df_ref_d** %7, i8 zeroext 0, %struct._IO_FILE* %file) #7, !dbg !4642
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4643
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 2, !dbg !4644
  %8 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !4644
  tail call void @df_refs_chain_dump(%union.df_ref_d** %8, i8 zeroext 0, %struct._IO_FILE* %file) #7, !dbg !4645
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4646
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 3, !dbg !4647
  %9 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !4647
  tail call void @df_refs_chain_dump(%union.df_ref_d** %9, i8 zeroext 0, %struct._IO_FILE* %file) #7, !dbg !4648
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4649
  ret void, !dbg !4650
}

; Function Attrs: nounwind uwtable
define dso_local void @df_regno_debug(i32 %regno, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4651 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4655, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4656, metadata !DIExpression()), !dbg !4657
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %regno) #6, !dbg !4658
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4659
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 5, !dbg !4659
  %1 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !4659
  %idxprom = zext i32 %regno to i64, !dbg !4659
  %arrayidx = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %1, i64 %idxprom, !dbg !4659
  %2 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx, align 8, !dbg !4659
  %reg_chain = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %2, i64 0, i32 0, !dbg !4659
  %3 = load %union.df_ref_d*, %union.df_ref_d** %reg_chain, align 8, !dbg !4659
  tail call void @df_regs_chain_dump(%union.df_ref_d* %3, %struct._IO_FILE* %file) #7, !dbg !4660
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !4661
  %4 = load %struct.df*, %struct.df** @df, align 8, !dbg !4662
  %use_regs = getelementptr inbounds %struct.df, %struct.df* %4, i64 0, i32 6, !dbg !4662
  %5 = load %struct.df_reg_info**, %struct.df_reg_info*** %use_regs, align 8, !dbg !4662
  %arrayidx3 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %5, i64 %idxprom, !dbg !4662
  %6 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx3, align 8, !dbg !4662
  %reg_chain4 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %6, i64 0, i32 0, !dbg !4662
  %7 = load %union.df_ref_d*, %union.df_ref_d** %reg_chain4, align 8, !dbg !4662
  tail call void @df_regs_chain_dump(%union.df_ref_d* %7, %struct._IO_FILE* %file) #7, !dbg !4663
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4664
  %8 = load %struct.df*, %struct.df** @df, align 8, !dbg !4665
  %eq_use_regs = getelementptr inbounds %struct.df, %struct.df* %8, i64 0, i32 7, !dbg !4665
  %9 = load %struct.df_reg_info**, %struct.df_reg_info*** %eq_use_regs, align 8, !dbg !4665
  %arrayidx7 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %9, i64 %idxprom, !dbg !4665
  %10 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx7, align 8, !dbg !4665
  %reg_chain8 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %10, i64 0, i32 0, !dbg !4665
  %11 = load %union.df_ref_d*, %union.df_ref_d** %reg_chain8, align 8, !dbg !4665
  tail call void @df_regs_chain_dump(%union.df_ref_d* %11, %struct._IO_FILE* %file) #7, !dbg !4666
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4667
  ret void, !dbg !4668
}

; Function Attrs: nounwind uwtable
define dso_local void @df_ref_debug(%union.df_ref_d* %ref, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !4669 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4672, metadata !DIExpression()), !dbg !4673
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4674
  %bf.load = load i32, i32* %0, align 8, !dbg !4674
  %bf.clear = and i32 %bf.load, 65280, !dbg !4674
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !4674
  %cond = select i1 %cmp, i32 100, i32 117, !dbg !4674
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4675
  %1 = load i32, i32* %id, align 4, !dbg !4675
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %cond, i32 %1) #6, !dbg !4676
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4677
  %2 = load i32, i32* %regno, align 8, !dbg !4677
  %bf.load4 = load i32, i32* %0, align 8, !dbg !4678
  %bf.clear5 = and i32 %bf.load4, 255, !dbg !4678
  %cmp6 = icmp eq i32 %bf.clear5, 1, !dbg !4678
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !4678

cond.true:                                        ; preds = %entry
  %bb = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 1, !dbg !4678
  %3 = bitcast %struct.rtx_def*** %bb to %struct.basic_block_def**, !dbg !4678
  br label %cond.end, !dbg !4678

cond.false:                                       ; preds = %entry
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4678
  %4 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !4678
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %4, i64 0, i32 0, !dbg !4678
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4678
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 1, !dbg !4678
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !4678
  br label %cond.end, !dbg !4678

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8.in = phi %struct.basic_block_def** [ %3, %cond.true ], [ %rt_bb, %cond.false ]
  %cond8 = load %struct.basic_block_def*, %struct.basic_block_def** %cond8.in, align 8, !dbg !4678
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond8, i64 0, i32 9, !dbg !4678
  %6 = load i32, i32* %index, align 8, !dbg !4678
  br i1 %cmp6, label %cond.end21, label %cond.false14, !dbg !4679

cond.false14:                                     ; preds = %cond.end
  %insn_info16 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4680
  %7 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info16, align 8, !dbg !4680
  %insn17 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %7, i64 0, i32 0, !dbg !4680
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn17, align 8, !dbg !4680
  %arrayidx20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4680
  %rt_int = bitcast %union.rtunion_def* %arrayidx20 to i32*, !dbg !4680
  %9 = load i32, i32* %rt_int, align 8, !dbg !4680
  br label %cond.end21, !dbg !4679

cond.end21:                                       ; preds = %cond.end, %cond.false14
  %cond22 = phi i32 [ %9, %cond.false14 ], [ -1, %cond.end ], !dbg !4679
  %bf.ashr = ashr i32 %bf.load4, 16, !dbg !4681
  %bf.lshr27 = lshr i32 %bf.load4, 8, !dbg !4682
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !4682
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0), i32 %2, i32 %6, i32 %cond22, i32 %bf.ashr, i32 %bf.clear28) #6, !dbg !4683
  %bf.load31 = load i32, i32* %0, align 8, !dbg !4684
  %bf.clear32 = and i32 %bf.load31, 255, !dbg !4684
  %cmp33 = icmp eq i32 %bf.clear32, 2, !dbg !4684
  br i1 %cmp33, label %cond.true38, label %lor.lhs.false, !dbg !4684

lor.lhs.false:                                    ; preds = %cond.end21
  %cmp37 = icmp eq i32 %bf.clear32, 3, !dbg !4684
  br i1 %cmp37, label %cond.true38, label %if.else74, !dbg !4686

cond.true38:                                      ; preds = %lor.lhs.false, %cond.end21
  %loc = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 1, !dbg !4684
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !4684
  %tobool = icmp eq %struct.rtx_def** %10, null, !dbg !4684
  %11 = bitcast %struct.rtx_def** %10 to i8*, !dbg !4684
  %12 = bitcast %struct.rtx_def** %10 to i8**, !dbg !4684
  br i1 %tobool, label %if.else74, label %if.then, !dbg !4684

if.then:                                          ; preds = %cond.true38
  %13 = load i32, i32* @flag_dump_noaddr, align 4, !dbg !4687
  %tobool40 = icmp eq i32 %13, 0, !dbg !4687
  br i1 %tobool40, label %if.else, label %if.then41, !dbg !4690

if.then41:                                        ; preds = %if.then
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4691
  br label %if.end76, !dbg !4691

if.else:                                          ; preds = %if.then
  br i1 %cmp33, label %cond.true52, label %lor.lhs.false47, !dbg !4692

lor.lhs.false47:                                  ; preds = %if.else
  %cmp51 = icmp eq i32 %bf.clear32, 3, !dbg !4692
  br i1 %cmp51, label %cond.true52, label %cond.end56, !dbg !4692

cond.true52:                                      ; preds = %lor.lhs.false47, %if.else
  br label %cond.end56, !dbg !4692

cond.end56:                                       ; preds = %lor.lhs.false47, %cond.true52
  %14 = phi i8* [ %11, %cond.true52 ], [ null, %lor.lhs.false47 ], !dbg !4692
  br label %cond.true67, !dbg !4693

lor.lhs.false62:                                  ; No predecessors!
  br label %cond.true67, !dbg !4693

cond.true67:                                      ; preds = %cond.end56, %lor.lhs.false62
  %15 = load i8*, i8** %12, align 8, !dbg !4694
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i8* %14, i8* %15) #6, !dbg !4695
  br label %if.end76

if.else74:                                        ; preds = %cond.true38, %lor.lhs.false
  %call75 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !4696
  br label %if.end76

if.end76:                                         ; preds = %if.then41, %cond.true67, %if.else74
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4697
  %16 = load %struct.df_link*, %struct.df_link** %chain, align 8, !dbg !4697
  tail call void @df_chain_dump(%struct.df_link* %16, %struct._IO_FILE* %file) #6, !dbg !4698
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4699
  ret void, !dbg !4700
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_insn(%struct.rtx_def* %insn) local_unnamed_addr #4 !dbg !4701 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4707
  tail call void @df_insn_debug(%struct.rtx_def* %insn, i8 zeroext 1, %struct._IO_FILE* %0) #7, !dbg !4708
  tail call void @debug_rtx(%struct.rtx_def* %insn) #6, !dbg !4709
  ret void, !dbg !4710
}

declare dso_local void @debug_rtx(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_reg(%struct.rtx_def* %reg) local_unnamed_addr #4 !dbg !4711 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4713, metadata !DIExpression()), !dbg !4714
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !4715
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4716
  tail call void @df_regno_debug(i32 %call, %struct._IO_FILE* %0) #7, !dbg !4717
  ret void, !dbg !4718
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !4719 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4726, metadata !DIExpression()), !dbg !4727
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4728
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4728
  %0 = load i32, i32* %rt_uint, align 8, !dbg !4728
  ret i32 %0, !dbg !4729
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_regno(i32 %regno) local_unnamed_addr #4 !dbg !4730 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4736
  tail call void @df_regno_debug(i32 %regno, %struct._IO_FILE* %0) #7, !dbg !4737
  ret void, !dbg !4738
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_ref(%union.df_ref_d* %ref) local_unnamed_addr #4 !dbg !4739 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref, metadata !4743, metadata !DIExpression()), !dbg !4744
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4745
  tail call void @df_ref_debug(%union.df_ref_d* %ref, %struct._IO_FILE* %0) #7, !dbg !4746
  ret void, !dbg !4747
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_defno(i32 %defno) local_unnamed_addr #4 !dbg !4748 {
entry:
  call void @llvm.dbg.value(metadata i32 %defno, metadata !4750, metadata !DIExpression()), !dbg !4751
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4752
  %refs = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 3, i32 0, !dbg !4752
  %1 = load %union.df_ref_d**, %union.df_ref_d*** %refs, align 8, !dbg !4752
  %idxprom = zext i32 %defno to i64, !dbg !4752
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %1, i64 %idxprom, !dbg !4752
  %2 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !4752
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4753
  tail call void @df_ref_debug(%union.df_ref_d* %2, %struct._IO_FILE* %3) #7, !dbg !4754
  ret void, !dbg !4755
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_useno(i32 %defno) local_unnamed_addr #4 !dbg !4756 {
entry:
  call void @llvm.dbg.value(metadata i32 %defno, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !4760
  %refs = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 4, i32 0, !dbg !4760
  %1 = load %union.df_ref_d**, %union.df_ref_d*** %refs, align 8, !dbg !4760
  %idxprom = zext i32 %defno to i64, !dbg !4760
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %1, i64 %idxprom, !dbg !4760
  %2 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !4760
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4761
  tail call void @df_ref_debug(%union.df_ref_d* %2, %struct._IO_FILE* %3) #7, !dbg !4762
  ret void, !dbg !4763
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_df_chain(%struct.df_link* %link) local_unnamed_addr #4 !dbg !4764 {
entry:
  call void @llvm.dbg.value(metadata %struct.df_link* %link, metadata !4768, metadata !DIExpression()), !dbg !4769
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4770
  tail call void @df_chain_dump(%struct.df_link* %link, %struct._IO_FILE* %0) #6, !dbg !4771
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4772
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %1) #6, !dbg !4773
  ret void, !dbg !4774
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local void @df_scan_add_problem() local_unnamed_addr #1

declare dso_local void @df_scan_alloc(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_lr_add_problem() local_unnamed_addr #1

declare dso_local void @df_live_add_problem() local_unnamed_addr #1

declare dso_local void @df_hard_reg_init() local_unnamed_addr #1

declare dso_local void @df_scan_blocks() local_unnamed_addr #1

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @df_worklist_propagate_forward(%struct.dataflow* %dataflow, i32 %bb_index, i32* %bbindex_to_postorder, %struct.bitmap_head_def* %pending, %struct.simple_bitmap_def* %considered) unnamed_addr #4 !dbg !4775 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp31 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dataflow* %dataflow, metadata !4779, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !4780, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i32* %bbindex_to_postorder, metadata !4781, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending, metadata !4782, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %considered, metadata !4783, metadata !DIExpression()), !dbg !4799
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4800
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4800
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4801
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4801
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4802
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4802
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4802
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 2, !dbg !4802
  %4 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4802
  %tobool = icmp eq %struct.VEC_basic_block_gc* %4, null, !dbg !4802
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4802

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %4, i64 0, i32 0, !dbg !4802
  br label %cond.end, !dbg !4802

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4802
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb_index) #7, !dbg !4802
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4792, metadata !DIExpression()), !dbg !4799
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !4803
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4803
  %tobool4 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !4803
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !4803

cond.true5:                                       ; preds = %cond.end
  %base7 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !4803
  br label %cond.end9, !dbg !4803

cond.end9:                                        ; preds = %cond.end, %cond.true5
  %cond10 = phi %struct.VEC_edge_base* [ %base7, %cond.true5 ], [ null, %cond.end ], !dbg !4803
  %call11 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond10) #7, !dbg !4803
  %cmp = icmp eq i32 %call11, 0, !dbg !4805
  br i1 %cmp, label %if.else, label %if.then, !dbg !4806

if.then:                                          ; preds = %cond.end9
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4807
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4807
  %call13 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4807
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4807
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 0, !dbg !4807
  store i32 %8, i32* %7, align 8, !dbg !4807
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4807
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 1, !dbg !4807
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !4807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !4807
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4807
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4809
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4809
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4811
  br label %for.cond, !dbg !4807

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %11, align 8, !dbg !4814
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !4814
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4784, metadata !DIExpression(DW_OP_deref)), !dbg !4799
  %call14 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #7, !dbg !4814
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4807
  br i1 %tobool15, label %if.end26.loopexit, label %for.body, !dbg !4807

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4815
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4784, metadata !DIExpression()), !dbg !4799
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 0, !dbg !4815
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4815
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !4815
  %17 = load i32, i32* %index, align 8, !dbg !4815
  %div = lshr i32 %17, 6, !dbg !4815
  %idxprom = zext i32 %div to i64, !dbg !4815
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %considered, i64 0, i32 3, i64 %idxprom, !dbg !4815
  %18 = load i64, i64* %arrayidx, align 8, !dbg !4815
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4784, metadata !DIExpression()), !dbg !4799
  %rem = and i32 %17, 63, !dbg !4815
  %sh_prom = zext i32 %rem to i64, !dbg !4815
  %19 = shl i64 1, %sh_prom, !dbg !4815
  %20 = and i64 %18, %19, !dbg !4815
  %tobool18 = icmp eq i64 %20, 0, !dbg !4815
  br i1 %tobool18, label %for.inc, label %if.then19, !dbg !4816

if.then19:                                        ; preds = %for.body
  %21 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4817
  %con_fun_n = getelementptr inbounds %struct.df_problem, %struct.df_problem* %21, i64 0, i32 9, !dbg !4818
  %22 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %con_fun_n, align 8, !dbg !4818
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4784, metadata !DIExpression()), !dbg !4799
  call void %22(%struct.edge_def* %15) #6, !dbg !4819
  br label %for.inc, !dbg !4819

for.inc:                                          ; preds = %for.body, %if.then19
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4785, metadata !DIExpression(DW_OP_deref)), !dbg !4799
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4814
  br label %for.cond, !dbg !4814, !llvm.loop !4820

if.else:                                          ; preds = %cond.end9
  %problem20 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4822
  %23 = load %struct.df_problem*, %struct.df_problem** %problem20, align 8, !dbg !4822
  %con_fun_0 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %23, i64 0, i32 8, !dbg !4824
  %24 = load void (%struct.basic_block_def*)*, void (%struct.basic_block_def*)** %con_fun_0, align 8, !dbg !4824
  %tobool21 = icmp eq void (%struct.basic_block_def*)* %24, null, !dbg !4825
  br i1 %tobool21, label %if.end26, label %if.then22, !dbg !4826

if.then22:                                        ; preds = %if.else
  tail call void %24(%struct.basic_block_def* %call) #6, !dbg !4827
  br label %if.end26, !dbg !4827

if.end26.loopexit:                                ; preds = %for.cond
  br label %if.end26, !dbg !4828

if.end26:                                         ; preds = %if.end26.loopexit, %if.else, %if.then22
  %problem27 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4828
  %25 = load %struct.df_problem*, %struct.df_problem** %problem27, align 8, !dbg !4828
  %trans_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %25, i64 0, i32 10, !dbg !4829
  %26 = load i8 (i32)*, i8 (i32)** %trans_fun, align 8, !dbg !4829
  %call28 = call zeroext i8 %26(i32 %bb_index) #6, !dbg !4830
  %tobool29 = icmp eq i8 %call28, 0, !dbg !4830
  br i1 %tobool29, label %if.end54, label %if.then30, !dbg !4831

if.then30:                                        ; preds = %if.end26
  %27 = bitcast %struct.edge_iterator* %tmp31 to i8*, !dbg !4832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #8, !dbg !4832
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 1, !dbg !4832
  %call32 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4832
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp31, i64 0, i32 0, !dbg !4832
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 0, !dbg !4832
  store i32 %29, i32* %28, align 8, !dbg !4832
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp31, i64 0, i32 1, !dbg !4832
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 1, !dbg !4832
  store %struct.VEC_edge_gc** %31, %struct.VEC_edge_gc*** %30, align 8, !dbg !4832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %27, i64 16, i1 false), !dbg !4832
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #8, !dbg !4832
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4833
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4833
  br label %for.cond33, !dbg !4832

for.cond33:                                       ; preds = %for.inc52, %if.then30
  %34 = load i32, i32* %32, align 8, !dbg !4834
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %33, align 8, !dbg !4834
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4784, metadata !DIExpression(DW_OP_deref)), !dbg !4799
  %call34 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #7, !dbg !4834
  %tobool35 = icmp eq i8 %call34, 0, !dbg !4832
  br i1 %tobool35, label %if.end54.loopexit, label %for.body36, !dbg !4832

for.body36:                                       ; preds = %for.cond33
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4835
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !4784, metadata !DIExpression()), !dbg !4799
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 1, !dbg !4836
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4836
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !4837
  %38 = load i32, i32* %index37, align 8, !dbg !4837
  call void @llvm.dbg.value(metadata i32 %38, metadata !4793, metadata !DIExpression()), !dbg !4838
  %div39 = lshr i32 %38, 6, !dbg !4839
  %idxprom40 = zext i32 %div39 to i64, !dbg !4839
  %arrayidx41 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %considered, i64 0, i32 3, i64 %idxprom40, !dbg !4839
  %39 = load i64, i64* %arrayidx41, align 8, !dbg !4839
  %rem42 = and i32 %38, 63, !dbg !4839
  %sh_prom43 = zext i32 %rem42 to i64, !dbg !4839
  %40 = shl i64 1, %sh_prom43, !dbg !4839
  %41 = and i64 %39, %40, !dbg !4839
  %tobool46 = icmp eq i64 %41, 0, !dbg !4839
  br i1 %tobool46, label %for.inc52, label %if.then47, !dbg !4841

if.then47:                                        ; preds = %for.body36
  %idxprom48 = zext i32 %38 to i64, !dbg !4842
  %arrayidx49 = getelementptr inbounds i32, i32* %bbindex_to_postorder, i64 %idxprom48, !dbg !4842
  %42 = load i32, i32* %arrayidx49, align 4, !dbg !4842
  %call50 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %pending, i32 %42) #6, !dbg !4843
  br label %for.inc52, !dbg !4843

for.inc52:                                        ; preds = %for.body36, %if.then47
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4785, metadata !DIExpression(DW_OP_deref)), !dbg !4799
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4834
  br label %for.cond33, !dbg !4834, !llvm.loop !4844

if.end54.loopexit:                                ; preds = %for.cond33
  br label %if.end54, !dbg !4846

if.end54:                                         ; preds = %if.end54.loopexit, %if.end26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4846
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4846
  ret void, !dbg !4846
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_worklist_propagate_backward(%struct.dataflow* %dataflow, i32 %bb_index, i32* %bbindex_to_postorder, %struct.bitmap_head_def* %pending, %struct.simple_bitmap_def* %considered) unnamed_addr #4 !dbg !4847 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp31 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.dataflow* %dataflow, metadata !4849, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !4850, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata i32* %bbindex_to_postorder, metadata !4851, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %pending, metadata !4852, metadata !DIExpression()), !dbg !4863
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %considered, metadata !4853, metadata !DIExpression()), !dbg !4863
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4864
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4864
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4865
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4865
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4866
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4866
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4866
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 2, !dbg !4866
  %4 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4866
  %tobool = icmp eq %struct.VEC_basic_block_gc* %4, null, !dbg !4866
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4866

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %4, i64 0, i32 0, !dbg !4866
  br label %cond.end, !dbg !4866

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4866
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb_index) #7, !dbg !4866
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4856, metadata !DIExpression()), !dbg !4863
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 1, !dbg !4867
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4867
  %tobool4 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !4867
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !4867

cond.true5:                                       ; preds = %cond.end
  %base7 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !4867
  br label %cond.end9, !dbg !4867

cond.end9:                                        ; preds = %cond.end, %cond.true5
  %cond10 = phi %struct.VEC_edge_base* [ %base7, %cond.true5 ], [ null, %cond.end ], !dbg !4867
  %call11 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond10) #7, !dbg !4867
  %cmp = icmp eq i32 %call11, 0, !dbg !4869
  br i1 %cmp, label %if.else, label %if.then, !dbg !4870

if.then:                                          ; preds = %cond.end9
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4871
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4871
  %call13 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4871
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4871
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 0, !dbg !4871
  store i32 %8, i32* %7, align 8, !dbg !4871
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4871
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 1, !dbg !4871
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !4871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !4871
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4871
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4873
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4873
  %problem = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4875
  br label %for.cond, !dbg !4871

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %11, align 8, !dbg !4878
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !4878
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4854, metadata !DIExpression(DW_OP_deref)), !dbg !4863
  %call14 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #7, !dbg !4878
  %tobool15 = icmp eq i8 %call14, 0, !dbg !4871
  br i1 %tobool15, label %if.end26.loopexit, label %for.body, !dbg !4871

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4879
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4854, metadata !DIExpression()), !dbg !4863
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 1, !dbg !4879
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4879
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !4879
  %17 = load i32, i32* %index, align 8, !dbg !4879
  %div = lshr i32 %17, 6, !dbg !4879
  %idxprom = zext i32 %div to i64, !dbg !4879
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %considered, i64 0, i32 3, i64 %idxprom, !dbg !4879
  %18 = load i64, i64* %arrayidx, align 8, !dbg !4879
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4854, metadata !DIExpression()), !dbg !4863
  %rem = and i32 %17, 63, !dbg !4879
  %sh_prom = zext i32 %rem to i64, !dbg !4879
  %19 = shl i64 1, %sh_prom, !dbg !4879
  %20 = and i64 %18, %19, !dbg !4879
  %tobool18 = icmp eq i64 %20, 0, !dbg !4879
  br i1 %tobool18, label %for.inc, label %if.then19, !dbg !4880

if.then19:                                        ; preds = %for.body
  %21 = load %struct.df_problem*, %struct.df_problem** %problem, align 8, !dbg !4881
  %con_fun_n = getelementptr inbounds %struct.df_problem, %struct.df_problem* %21, i64 0, i32 9, !dbg !4882
  %22 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %con_fun_n, align 8, !dbg !4882
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !4854, metadata !DIExpression()), !dbg !4863
  call void %22(%struct.edge_def* %15) #6, !dbg !4883
  br label %for.inc, !dbg !4883

for.inc:                                          ; preds = %for.body, %if.then19
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4855, metadata !DIExpression(DW_OP_deref)), !dbg !4863
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4878
  br label %for.cond, !dbg !4878, !llvm.loop !4884

if.else:                                          ; preds = %cond.end9
  %problem20 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4886
  %23 = load %struct.df_problem*, %struct.df_problem** %problem20, align 8, !dbg !4886
  %con_fun_0 = getelementptr inbounds %struct.df_problem, %struct.df_problem* %23, i64 0, i32 8, !dbg !4888
  %24 = load void (%struct.basic_block_def*)*, void (%struct.basic_block_def*)** %con_fun_0, align 8, !dbg !4888
  %tobool21 = icmp eq void (%struct.basic_block_def*)* %24, null, !dbg !4889
  br i1 %tobool21, label %if.end26, label %if.then22, !dbg !4890

if.then22:                                        ; preds = %if.else
  tail call void %24(%struct.basic_block_def* %call) #6, !dbg !4891
  br label %if.end26, !dbg !4891

if.end26.loopexit:                                ; preds = %for.cond
  br label %if.end26, !dbg !4892

if.end26:                                         ; preds = %if.end26.loopexit, %if.else, %if.then22
  %problem27 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %dataflow, i64 0, i32 0, !dbg !4892
  %25 = load %struct.df_problem*, %struct.df_problem** %problem27, align 8, !dbg !4892
  %trans_fun = getelementptr inbounds %struct.df_problem, %struct.df_problem* %25, i64 0, i32 10, !dbg !4893
  %26 = load i8 (i32)*, i8 (i32)** %trans_fun, align 8, !dbg !4893
  %call28 = call zeroext i8 %26(i32 %bb_index) #6, !dbg !4894
  %tobool29 = icmp eq i8 %call28, 0, !dbg !4894
  br i1 %tobool29, label %if.end54, label %if.then30, !dbg !4895

if.then30:                                        ; preds = %if.end26
  %27 = bitcast %struct.edge_iterator* %tmp31 to i8*, !dbg !4896
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #8, !dbg !4896
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !4896
  %call32 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4896
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp31, i64 0, i32 0, !dbg !4896
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 0, !dbg !4896
  store i32 %29, i32* %28, align 8, !dbg !4896
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp31, i64 0, i32 1, !dbg !4896
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 1, !dbg !4896
  store %struct.VEC_edge_gc** %31, %struct.VEC_edge_gc*** %30, align 8, !dbg !4896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %27, i64 16, i1 false), !dbg !4896
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #8, !dbg !4896
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4897
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4897
  br label %for.cond33, !dbg !4896

for.cond33:                                       ; preds = %for.inc52, %if.then30
  %34 = load i32, i32* %32, align 8, !dbg !4898
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %33, align 8, !dbg !4898
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4854, metadata !DIExpression(DW_OP_deref)), !dbg !4863
  %call34 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #7, !dbg !4898
  %tobool35 = icmp eq i8 %call34, 0, !dbg !4896
  br i1 %tobool35, label %if.end54.loopexit, label %for.body36, !dbg !4896

for.body36:                                       ; preds = %for.cond33
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4899
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !4854, metadata !DIExpression()), !dbg !4863
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 0, !dbg !4900
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4900
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i64 0, i32 9, !dbg !4901
  %38 = load i32, i32* %index37, align 8, !dbg !4901
  call void @llvm.dbg.value(metadata i32 %38, metadata !4857, metadata !DIExpression()), !dbg !4902
  %div39 = lshr i32 %38, 6, !dbg !4903
  %idxprom40 = zext i32 %div39 to i64, !dbg !4903
  %arrayidx41 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %considered, i64 0, i32 3, i64 %idxprom40, !dbg !4903
  %39 = load i64, i64* %arrayidx41, align 8, !dbg !4903
  %rem42 = and i32 %38, 63, !dbg !4903
  %sh_prom43 = zext i32 %rem42 to i64, !dbg !4903
  %40 = shl i64 1, %sh_prom43, !dbg !4903
  %41 = and i64 %39, %40, !dbg !4903
  %tobool46 = icmp eq i64 %41, 0, !dbg !4903
  br i1 %tobool46, label %for.inc52, label %if.then47, !dbg !4905

if.then47:                                        ; preds = %for.body36
  %idxprom48 = zext i32 %38 to i64, !dbg !4906
  %arrayidx49 = getelementptr inbounds i32, i32* %bbindex_to_postorder, i64 %idxprom48, !dbg !4906
  %42 = load i32, i32* %arrayidx49, align 4, !dbg !4906
  %call50 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %pending, i32 %42) #6, !dbg !4907
  br label %for.inc52, !dbg !4907

for.inc52:                                        ; preds = %for.body36, %if.then47
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4855, metadata !DIExpression(DW_OP_deref)), !dbg !4863
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4898
  br label %for.cond33, !dbg !4898, !llvm.loop !4908

if.end54.loopexit:                                ; preds = %for.cond33
  br label %if.end54, !dbg !4910

if.end54:                                         ; preds = %if.end54.loopexit, %if.end26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4910
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4910
  ret void, !dbg !4910
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4911 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4917, metadata !DIExpression()), !dbg !4918
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4919
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4919

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4919
  %0 = load i32, i32* %num, align 8, !dbg !4919
  br label %cond.end, !dbg !4919

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4919
  ret i32 %cond, !dbg !4919
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !4920 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4924, metadata !DIExpression()), !dbg !4926
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4927
  store i32 0, i32* %index, align 8, !dbg !4928
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4929
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4930
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4931
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4931
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4931
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4932 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4938, metadata !DIExpression()), !dbg !4939
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4940
  %tobool = icmp eq i8 %call, 0, !dbg !4940
  br i1 %tobool, label %if.then, label %if.else, !dbg !4942

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4943
  br label %return, !dbg !4945

if.else:                                          ; preds = %entry
  br label %return, !dbg !4946

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4948
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4948
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4948
  ret i8 %retval.0, !dbg !4949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4950 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4955, metadata !DIExpression()), !dbg !4956
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4957
  %0 = load i32, i32* %index, align 8, !dbg !4957
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4957
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4957
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !4957
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4957
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4957

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4957
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4957
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !4957
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4957
  br label %cond.end, !dbg !4957

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4957
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4957
  %cmp = icmp ult i32 %0, %call2, !dbg !4957
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4957

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4957
  br label %cond.end5, !dbg !4957

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4958
  %inc = add i32 %5, 1, !dbg !4958
  store i32 %inc, i32* %index, align 8, !dbg !4958
  ret void, !dbg !4959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4960 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4965
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4965
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4965

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4965
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4965
  br label %cond.end, !dbg !4965

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4965
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4965
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4966
  %conv3 = zext i1 %cmp to i8, !dbg !4967
  ret i8 %conv3, !dbg !4968
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4969 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4974
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4974
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4974

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4974
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4974
  br label %cond.end, !dbg !4974

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4974
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4974
  ret %struct.edge_def* %call2, !dbg !4975
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4976 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4981
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4981

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4981
  br label %cond.end, !dbg !4981

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4982
  ret %struct.VEC_edge_gc* %0, !dbg !4983
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4984 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4988, metadata !DIExpression()), !dbg !4990
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4989, metadata !DIExpression()), !dbg !4990
  br label %land.end, !dbg !4991

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4991
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4991
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4991
  ret %struct.edge_def* %0, !dbg !4991
}

; Function Attrs: nounwind uwtable
define internal fastcc void @df_mws_dump(%struct.df_mw_hardreg** %mws, %struct._IO_FILE* %file) unnamed_addr #4 !dbg !4992 {
entry:
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %mws, metadata !4996, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !4997, metadata !DIExpression()), !dbg !4998
  br label %while.cond, !dbg !4999

while.cond:                                       ; preds = %while.body, %entry
  %mws.addr.0 = phi %struct.df_mw_hardreg** [ %mws, %entry ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %mws.addr.0, metadata !4996, metadata !DIExpression()), !dbg !4998
  %0 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %mws.addr.0, align 8, !dbg !5000
  %tobool = icmp eq %struct.df_mw_hardreg* %0, null, !dbg !4999
  br i1 %tobool, label %while.end, label %while.body, !dbg !4999

while.body:                                       ; preds = %while.cond
  %type = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %0, i64 0, i32 1, !dbg !5001
  %bf.load = load i32, i32* %type, align 8, !dbg !5001
  %bf.clear = and i32 %bf.load, 65535, !dbg !5001
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !5001
  %cond = select i1 %cmp, i32 100, i32 117, !dbg !5003
  %start_regno = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %0, i64 0, i32 2, !dbg !5004
  %1 = load i32, i32* %start_regno, align 4, !dbg !5004
  %end_regno = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %0, i64 0, i32 3, !dbg !5005
  %2 = load i32, i32* %end_regno, align 8, !dbg !5005
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 %cond, i32 %1, i32 %2) #6, !dbg !5006
  %incdec.ptr = getelementptr inbounds %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %mws.addr.0, i64 1, !dbg !5007
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %incdec.ptr, metadata !4996, metadata !DIExpression()), !dbg !4998
  br label %while.cond, !dbg !4999, !llvm.loop !5008

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5010
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
!llvm.module.flags = !{!2112, !2113, !2114}
!llvm.ident = !{!2115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "df", scope: !2, file: !3, line: 417, type: !1955, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !718, globals: !2074, nameTableKind: None)
!3 = !DIFile(filename: "df-core.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !12, !140, !146, !151, !156, !175, !182, !189, !383, !559, !566, !709}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "df_flow_dir", file: !6, line: 60, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "DF_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "DF_FORWARD", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DF_BACKWARD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !13, line: 7, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!15 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!21 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!23 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!24 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!25 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!26 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!27 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!28 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!29 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!30 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!31 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!32 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!33 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!34 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!35 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!36 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!37 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!38 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!39 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!40 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!41 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!42 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!43 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!44 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!45 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!46 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!47 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!48 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!49 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!50 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!51 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!52 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!53 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!54 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!55 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!56 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!57 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!58 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!59 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!60 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!61 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!62 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!63 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!64 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!65 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!66 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!67 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!68 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!69 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!70 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!71 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!72 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!73 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!74 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!75 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!76 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!77 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!78 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!79 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!80 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!81 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!82 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!83 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!84 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!85 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!86 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!87 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!88 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!89 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!90 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!91 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!92 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!93 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!94 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!95 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!96 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!97 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!98 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!99 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!100 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!101 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!133 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!138 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!139 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !141, line: 363, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !141, line: 355, baseType: !7, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !152, line: 474, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!153 = !{!154, !155}
!154 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !157, line: 280, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!159 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !157, line: 1817, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180, !181}
!177 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !157, line: 1805, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !157, line: 39, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!191 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!196 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!197 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!198 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!199 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!200 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!201 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!202 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!203 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!204 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!205 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!206 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!207 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!208 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!209 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!210 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!211 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!212 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!213 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!214 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!215 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!216 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!217 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!218 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!219 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!220 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!221 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!222 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!223 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!224 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!225 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!226 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!227 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!228 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!229 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!230 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!231 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!232 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!233 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!234 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!235 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!236 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!238 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!239 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!240 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!241 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!242 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!243 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!244 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!245 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!246 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!247 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!248 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!249 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!250 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!251 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!252 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!253 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!254 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!255 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!256 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!257 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!258 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!259 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!260 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!261 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!262 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!263 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!264 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!265 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!266 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!267 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!268 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!269 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!270 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!271 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!272 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!273 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!274 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!275 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!276 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!277 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!278 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!282 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!288 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!289 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!290 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!291 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!292 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!293 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!294 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!295 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!296 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!298 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!300 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!301 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!302 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!303 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!304 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!305 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!306 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!307 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!308 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!309 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!310 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!311 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!313 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!314 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!315 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!316 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!317 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!318 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!320 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!321 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!323 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!324 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!325 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!326 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!327 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!328 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!329 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!330 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!331 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!332 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!333 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!334 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!335 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!337 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!338 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!339 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!340 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!341 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!342 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!343 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!355 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!358 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!359 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!376 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!377 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!378 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!379 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!380 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!381 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!382 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 74, baseType: !7, size: 32, elements: !385)
!384 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!386 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!558 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!559 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !560, line: 104, baseType: !7, size: 32, elements: !561)
!560 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!561 = !{!562, !563, !564, !565}
!562 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!563 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!564 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!565 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!566 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !567, line: 45, baseType: !7, size: 32, elements: !568)
!567 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!569 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!570 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!571 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!572 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!573 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!574 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!575 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!576 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!577 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!578 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!579 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!580 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!581 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!582 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!583 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!584 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!585 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!586 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!587 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!588 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!589 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!590 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!591 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!592 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!593 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!594 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!595 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!596 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!597 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!598 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!599 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!600 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!601 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!602 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!603 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!604 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!605 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!606 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!607 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!608 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!609 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!610 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!611 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!612 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!613 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!614 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!615 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!616 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!617 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!618 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!619 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!620 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!621 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!622 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!623 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!624 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!625 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!626 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!627 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!628 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!629 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!630 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!631 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!632 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!633 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!634 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!635 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!636 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!637 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!638 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!639 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!640 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!641 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!642 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!643 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!644 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!645 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!646 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!647 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!648 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!649 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!650 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!651 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!652 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!653 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!654 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!655 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!656 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!657 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!658 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!659 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!660 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!661 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!662 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!663 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!664 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!665 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!666 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!667 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!668 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!669 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!670 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!671 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!672 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!673 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!674 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!675 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!676 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!677 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!678 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!679 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!680 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!681 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!682 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!683 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!684 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!685 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!686 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!687 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!688 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!689 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!690 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!691 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!692 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!693 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!694 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!695 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!696 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!697 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!698 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!700 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!701 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!703 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!704 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!705 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!706 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!707 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!708 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!709 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "df_ref_order", file: !6, line: 166, baseType: !7, size: 32, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717}
!711 = !DIEnumerator(name: "DF_REF_ORDER_NO_TABLE", value: 0, isUnsigned: true)
!712 = !DIEnumerator(name: "DF_REF_ORDER_UNORDERED", value: 1, isUnsigned: true)
!713 = !DIEnumerator(name: "DF_REF_ORDER_UNORDERED_WITH_NOTES", value: 2, isUnsigned: true)
!714 = !DIEnumerator(name: "DF_REF_ORDER_BY_REG", value: 3, isUnsigned: true)
!715 = !DIEnumerator(name: "DF_REF_ORDER_BY_REG_WITH_NOTES", value: 4, isUnsigned: true)
!716 = !DIEnumerator(name: "DF_REF_ORDER_BY_INSN", value: 5, isUnsigned: true)
!717 = !DIEnumerator(name: "DF_REF_ORDER_BY_INSN_WITH_NOTES", value: 6, isUnsigned: true)
!718 = !{!719, !720, !721, !722, !725, !726, !728, !742, !1954, !1829, !1211, !566, !1955, !7, !760, !2068, !2069}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!721 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dataflow", file: !6, line: 289, size: 448, elements: !730)
!730 = !{!731, !1924, !1925, !1926, !1948, !1949, !1950, !1951, !1952, !1953}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "problem", scope: !729, file: !6, line: 291, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_problem", file: !6, line: 255, size: 1280, elements: !734)
!734 = !{!735, !736, !737, !805, !807, !1820, !1822, !1824, !1830, !1835, !1840, !1845, !1847, !1852, !1854, !1910, !1915, !1916, !1918, !1920, !1921, !1923}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !733, file: !6, line: 258, baseType: !7, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !733, file: !6, line: 259, baseType: !5, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_fun", scope: !733, file: !6, line: 260, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_alloc_function", file: !6, line: 197, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !742}
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !743, line: 47, baseType: !744)
!743 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !746, line: 75, size: 256, elements: !747)
!746 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!747 = !{!748, !763, !764, !765}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !745, file: !746, line: 76, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !746, line: 68, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !746, line: 63, size: 320, elements: !752)
!752 = !{!753, !755, !756, !757}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !746, line: 64, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !751, file: !746, line: 65, baseType: !754, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !751, file: !746, line: 66, baseType: !7, size: 32, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !751, file: !746, line: 67, baseType: !758, size: 128, offset: 192)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 128, elements: !761)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !746, line: 29, baseType: !760)
!760 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!761 = !{!762}
!762 = !DISubrange(count: 2)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !745, file: !746, line: 77, baseType: !749, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !745, file: !746, line: 78, baseType: !7, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !745, file: !746, line: 79, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !746, line: 49, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !746, line: 45, size: 832, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !768, file: !746, line: 46, baseType: !754, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !768, file: !746, line: 47, baseType: !744, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !768, file: !746, line: 48, baseType: !773, size: 704, offset: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !774, line: 164, size: 704, elements: !775)
!774 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!775 = !{!776, !778, !788, !789, !790, !791, !792, !793, !797, !801, !802, !803, !804}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !773, file: !774, line: 166, baseType: !777, size: 64)
!777 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !773, file: !774, line: 167, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !774, line: 157, size: 192, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !780, file: !774, line: 159, baseType: !723, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !780, file: !774, line: 160, baseType: !779, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !780, file: !774, line: 161, baseType: !785, size: 32, offset: 128)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 32, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 4)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !773, file: !774, line: 168, baseType: !723, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !773, file: !774, line: 169, baseType: !723, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !773, file: !774, line: 170, baseType: !723, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !773, file: !774, line: 171, baseType: !777, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !773, file: !774, line: 172, baseType: !721, size: 32, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !773, file: !774, line: 176, baseType: !794, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!779, !725, !777}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !773, file: !774, line: 177, baseType: !798, size: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !725, !779}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !773, file: !774, line: 178, baseType: !725, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !773, file: !774, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !773, file: !774, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !773, file: !774, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fun", scope: !733, file: !6, line: 261, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_reset_function", file: !6, line: 205, baseType: !739)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "free_bb_fun", scope: !733, file: !6, line: 262, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_free_bb_function", file: !6, line: 209, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !812, !725}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !743, line: 111, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !141, line: 217, size: 832, elements: !815)
!815 = !{!816, !1785, !1786, !1787, !1790, !1794, !1795, !1796, !1814, !1815, !1816, !1817, !1818, !1819}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !814, file: !141, line: 219, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !141, line: 151, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !141, line: 151, size: 128, elements: !820)
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !819, file: !141, line: 151, baseType: !822, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !141, line: 150, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !141, line: 150, size: 128, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !823, file: !141, line: 150, baseType: !7, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !823, file: !141, line: 150, baseType: !7, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !823, file: !141, line: 150, baseType: !828, size: 64, offset: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 64, elements: !877)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !743, line: 108, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !141, line: 122, size: 512, elements: !832)
!832 = !{!833, !834, !835, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !831, file: !141, line: 124, baseType: !813, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !831, file: !141, line: 125, baseType: !813, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !831, file: !141, line: 131, baseType: !836, size: 64, offset: 128)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !141, line: 128, size: 64, elements: !837)
!837 = !{!838, !842}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !836, file: !141, line: 129, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !743, line: 66, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !743, line: 65, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !836, file: !141, line: 130, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !743, line: 50, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !567, line: 240, size: 384, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !845, file: !567, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !845, file: !567, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !845, file: !567, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !845, file: !567, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !845, file: !567, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !845, file: !567, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !845, file: !567, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !845, file: !567, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !845, file: !567, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !845, file: !567, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !845, file: !567, line: 321, baseType: !858, size: 320, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !567, line: 315, size: 320, elements: !859)
!859 = !{!860, !1712, !1714, !1775, !1776}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !858, file: !567, line: 316, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 64, elements: !877)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !567, line: 183, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !567, line: 166, size: 64, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !879, !880, !892, !895, !896, !1690, !1691, !1702, !1709}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !863, file: !567, line: 168, baseType: !721, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !863, file: !567, line: 169, baseType: !7, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !863, file: !567, line: 170, baseType: !726, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !863, file: !567, line: 171, baseType: !843, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !863, file: !567, line: 172, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !743, line: 53, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !567, line: 359, size: 128, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !872, file: !567, line: 360, baseType: !721, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !872, file: !567, line: 361, baseType: !876, size: 64, offset: 64)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 64, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 1)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !863, file: !567, line: 173, baseType: !12, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !863, file: !567, line: 174, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !567, line: 133, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 115, size: 32, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !882, file: !567, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !882, file: !567, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !882, file: !567, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !882, file: !567, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !882, file: !567, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !882, file: !567, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !882, file: !567, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !882, file: !567, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !863, file: !567, line: 175, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !567, line: 175, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !863, file: !567, line: 176, baseType: !744, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !863, file: !567, line: 177, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !743, line: 56, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !157, line: 3371, size: 1792, elements: !900)
!900 = !{!901, !934, !940, !951, !970, !981, !986, !993, !999, !1012, !1024, !1062, !1067, !1095, !1103, !1104, !1109, !1118, !1124, !1129, !1133, !1137, !1314, !1363, !1369, !1376, !1383, !1409, !1434, !1451, !1463, !1485, !1500, !1672}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !899, file: !157, line: 3372, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !157, line: 360, size: 64, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !902, file: !157, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !902, file: !157, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !902, file: !157, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !902, file: !157, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !902, file: !157, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !902, file: !157, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !902, file: !157, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !902, file: !157, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !902, file: !157, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !902, file: !157, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !902, file: !157, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !902, file: !157, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !902, file: !157, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !902, file: !157, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !902, file: !157, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !902, file: !157, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !902, file: !157, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !902, file: !157, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !902, file: !157, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !902, file: !157, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !902, file: !157, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !902, file: !157, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !902, file: !157, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !902, file: !157, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !902, file: !157, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !902, file: !157, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !902, file: !157, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !902, file: !157, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !902, file: !157, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !902, file: !157, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !899, file: !157, line: 3373, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !157, line: 402, size: 192, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !935, file: !157, line: 403, baseType: !902, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !935, file: !157, line: 404, baseType: !897, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !935, file: !157, line: 405, baseType: !897, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !899, file: !157, line: 3374, baseType: !941, size: 320)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !157, line: 1384, size: 320, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !941, file: !157, line: 1385, baseType: !935, size: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !941, file: !157, line: 1386, baseType: !945, size: 128, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !946, line: 58, baseType: !947)
!946 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !946, line: 54, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !947, file: !946, line: 56, baseType: !760, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !947, file: !946, line: 57, baseType: !777, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !899, file: !157, line: 3375, baseType: !952, size: 256)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !157, line: 1397, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !157, line: 1398, baseType: !935, size: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !952, file: !157, line: 1399, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !958, line: 52, size: 256, elements: !959)
!958 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!959 = !{!960, !961, !962, !963, !964, !965, !966}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !957, file: !958, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !957, file: !958, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !957, file: !958, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !957, file: !958, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !957, file: !958, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !957, file: !958, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !957, file: !958, line: 62, baseType: !967, size: 192, offset: 64)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 192, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 3)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !899, file: !157, line: 3376, baseType: !971, size: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !157, line: 1408, size: 256, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !971, file: !157, line: 1409, baseType: !935, size: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !971, file: !157, line: 1410, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !977, line: 27, size: 192, elements: !978)
!977 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !976, file: !977, line: 29, baseType: !945, size: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !976, file: !977, line: 30, baseType: !12, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !899, file: !157, line: 3377, baseType: !982, size: 256)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !157, line: 1437, size: 256, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !982, file: !157, line: 1438, baseType: !935, size: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !982, file: !157, line: 1439, baseType: !897, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !899, file: !157, line: 3378, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !157, line: 1418, size: 256, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !157, line: 1419, baseType: !935, size: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !987, file: !157, line: 1420, baseType: !721, size: 32, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !987, file: !157, line: 1421, baseType: !992, size: 8, offset: 224)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 8, elements: !877)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !899, file: !157, line: 3379, baseType: !994, size: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !157, line: 1428, size: 320, elements: !995)
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !994, file: !157, line: 1429, baseType: !935, size: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !994, file: !157, line: 1430, baseType: !897, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !994, file: !157, line: 1431, baseType: !897, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !899, file: !157, line: 3380, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !157, line: 1460, size: 320, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1000, file: !157, line: 1461, baseType: !935, size: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1000, file: !157, line: 1462, baseType: !1004, size: 128, offset: 192)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1005, line: 31, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1006 = !{!1007, !1010, !1011}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1004, file: !1005, line: 32, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1004, file: !1005, line: 33, baseType: !7, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1004, file: !1005, line: 34, baseType: !7, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !899, file: !157, line: 3381, baseType: !1013, size: 384)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !157, line: 2507, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1021, !1022, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1013, file: !157, line: 2508, baseType: !935, size: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1013, file: !157, line: 2509, baseType: !1017, size: 32, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1018, line: 58, baseType: !1019)
!1018 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1020, line: 44, baseType: !7)
!1020 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1013, file: !157, line: 2510, baseType: !7, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !157, line: 2511, baseType: !897, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1013, file: !157, line: 2512, baseType: !897, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !899, file: !157, line: 3382, baseType: !1025, size: 896)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !157, line: 2652, size: 896, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1025, file: !157, line: 2653, baseType: !1013, size: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1025, file: !157, line: 2654, baseType: !897, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1025, file: !157, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1025, file: !157, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1025, file: !157, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1025, file: !157, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1025, file: !157, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1025, file: !157, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1025, file: !157, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1025, file: !157, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1025, file: !157, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1025, file: !157, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1025, file: !157, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1025, file: !157, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1025, file: !157, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1025, file: !157, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1025, file: !157, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1025, file: !157, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1025, file: !157, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1025, file: !157, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1025, file: !157, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1025, file: !157, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1025, file: !157, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1025, file: !157, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1025, file: !157, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1025, file: !157, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1025, file: !157, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1025, file: !157, line: 2703, baseType: !7, size: 32, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1025, file: !157, line: 2705, baseType: !897, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1025, file: !157, line: 2706, baseType: !897, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1025, file: !157, line: 2707, baseType: !897, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1025, file: !157, line: 2708, baseType: !897, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1025, file: !157, line: 2711, baseType: !1060, size: 64, offset: 832)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !157, line: 2711, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !899, file: !157, line: 3383, baseType: !1063, size: 960)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !157, line: 2756, size: 960, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1063, file: !157, line: 2757, baseType: !1025, size: 896)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1063, file: !157, line: 2758, baseType: !843, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !899, file: !157, line: 3384, baseType: !1068, size: 1472)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !157, line: 3114, size: 1472, elements: !1069)
!1069 = !{!1070, !1091, !1092, !1093, !1094}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1068, file: !157, line: 3115, baseType: !1071, size: 1216)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !157, line: 2984, size: 1216, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !157, line: 2985, baseType: !1063, size: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1071, file: !157, line: 2986, baseType: !897, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1071, file: !157, line: 2987, baseType: !897, size: 64, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1071, file: !157, line: 2988, baseType: !897, size: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1071, file: !157, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1071, file: !157, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1071, file: !157, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1071, file: !157, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1071, file: !157, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1071, file: !157, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1071, file: !157, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1071, file: !157, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1071, file: !157, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1071, file: !157, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1071, file: !157, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1071, file: !157, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1071, file: !157, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1071, file: !157, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1068, file: !157, line: 3117, baseType: !897, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1068, file: !157, line: 3119, baseType: !897, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1068, file: !157, line: 3121, baseType: !897, size: 64, offset: 1344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1068, file: !157, line: 3123, baseType: !897, size: 64, offset: 1408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !899, file: !157, line: 3385, baseType: !1096, size: 1088)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !157, line: 2874, size: 1088, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !157, line: 2875, baseType: !1063, size: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1096, file: !157, line: 2876, baseType: !843, size: 64, offset: 960)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1096, file: !157, line: 2877, baseType: !1101, size: 64, offset: 1024)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !157, line: 2856, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !899, file: !157, line: 3386, baseType: !1071, size: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !899, file: !157, line: 3387, baseType: !1105, size: 1280)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !157, line: 3093, size: 1280, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1105, file: !157, line: 3094, baseType: !1071, size: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1105, file: !157, line: 3095, baseType: !1101, size: 64, offset: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !899, file: !157, line: 3388, baseType: !1110, size: 1216)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !157, line: 2824, size: 1216, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !157, line: 2825, baseType: !1025, size: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1110, file: !157, line: 2827, baseType: !897, size: 64, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1110, file: !157, line: 2828, baseType: !897, size: 64, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1110, file: !157, line: 2829, baseType: !897, size: 64, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1110, file: !157, line: 2830, baseType: !897, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1110, file: !157, line: 2831, baseType: !897, size: 64, offset: 1152)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !899, file: !157, line: 3389, baseType: !1119, size: 1024)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !157, line: 2850, size: 1024, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1119, file: !157, line: 2851, baseType: !1063, size: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1119, file: !157, line: 2852, baseType: !721, size: 32, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1119, file: !157, line: 2853, baseType: !721, size: 32, offset: 992)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !899, file: !157, line: 3390, baseType: !1125, size: 1024)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !157, line: 2857, size: 1024, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1125, file: !157, line: 2858, baseType: !1063, size: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1125, file: !157, line: 2859, baseType: !1101, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !899, file: !157, line: 3391, baseType: !1130, size: 960)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !157, line: 2862, size: 960, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1130, file: !157, line: 2863, baseType: !1063, size: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !899, file: !157, line: 3392, baseType: !1134, size: 1472)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !157, line: 3304, size: 1472, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1134, file: !157, line: 3305, baseType: !1068, size: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !899, file: !157, line: 3393, baseType: !1138, size: 1792)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !157, line: 3248, size: 1792, elements: !1139)
!1139 = !{!1140, !1141, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !157, line: 3249, baseType: !1068, size: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1138, file: !157, line: 3251, baseType: !1142, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1144, line: 463, size: 1152, elements: !1145)
!1144 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1145 = !{!1146, !1149, !1179, !1180, !1183, !1186, !1238, !1239, !1240, !1241, !1242, !1266, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1143, file: !1144, line: 464, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1144, line: 464, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1143, file: !1144, line: 467, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !141, line: 374, size: 640, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1168, !1169, !1170, !1171, !1172, !1173, !1175, !1177, !1178}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1151, file: !141, line: 377, baseType: !812, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1151, file: !141, line: 378, baseType: !812, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1151, file: !141, line: 381, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !141, line: 282, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !141, line: 282, size: 128, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1158, file: !141, line: 282, baseType: !1161, size: 128)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !141, line: 281, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !141, line: 281, size: 128, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1162, file: !141, line: 281, baseType: !7, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1162, file: !141, line: 281, baseType: !7, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1162, file: !141, line: 281, baseType: !1167, size: 64, offset: 64)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 64, elements: !877)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1151, file: !141, line: 384, baseType: !721, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1151, file: !141, line: 387, baseType: !721, size: 32, offset: 224)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1151, file: !141, line: 390, baseType: !721, size: 32, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1151, file: !141, line: 394, baseType: !1156, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1151, file: !141, line: 396, baseType: !140, size: 32, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1151, file: !141, line: 399, baseType: !1174, size: 64, offset: 416)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !761)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1151, file: !141, line: 402, baseType: !1176, size: 64, offset: 480)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !761)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1151, file: !141, line: 406, baseType: !721, size: 32, offset: 544)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1151, file: !141, line: 409, baseType: !721, size: 32, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1143, file: !1144, line: 470, baseType: !840, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1143, file: !1144, line: 473, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1144, line: 166, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1143, file: !1144, line: 476, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1144, line: 476, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1143, file: !1144, line: 479, baseType: !1187, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1188, line: 144, baseType: !1189)
!1188 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1188, line: 100, size: 896, elements: !1191)
!1191 = !{!1192, !1200, !1205, !1210, !1212, !1215, !1216, !1217, !1218, !1219, !1224, !1226, !1227, !1232, !1237}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1190, file: !1188, line: 102, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1188, line: 52, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1188, line: 47, baseType: !7)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1190, file: !1188, line: 105, baseType: !1201, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1188, line: 59, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!721, !1198, !1198}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1190, file: !1188, line: 108, baseType: !1206, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1188, line: 63, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !725}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1190, file: !1188, line: 111, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1190, file: !1188, line: 114, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1214, line: 46, baseType: !760)
!1214 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1190, file: !1188, line: 117, baseType: !1213, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1190, file: !1188, line: 120, baseType: !1213, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1190, file: !1188, line: 124, baseType: !7, size: 32, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1190, file: !1188, line: 128, baseType: !7, size: 32, offset: 480)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1190, file: !1188, line: 131, baseType: !1220, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1188, line: 75, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!725, !1213, !1213}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1190, file: !1188, line: 132, baseType: !1225, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1188, line: 78, baseType: !1207)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1190, file: !1188, line: 135, baseType: !725, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1190, file: !1188, line: 136, baseType: !1228, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1188, line: 82, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!725, !725, !1213, !1213}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1190, file: !1188, line: 137, baseType: !1233, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1188, line: 83, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !725, !725}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1190, file: !1188, line: 141, baseType: !7, size: 32, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1143, file: !1144, line: 484, baseType: !897, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1143, file: !1144, line: 488, baseType: !897, size: 64, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1143, file: !1144, line: 493, baseType: !897, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1143, file: !1144, line: 496, baseType: !897, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1143, file: !1144, line: 501, baseType: !1243, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !152, line: 2355, size: 576, elements: !1245)
!1245 = !{!1246, !1249, !1250, !1251, !1252, !1254, !1255, !1260, !1261, !1262, !1263, !1264, !1265}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1244, file: !152, line: 2356, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !152, line: 2356, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1244, file: !152, line: 2357, baseType: !726, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1244, file: !152, line: 2358, baseType: !721, size: 32, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1244, file: !152, line: 2359, baseType: !721, size: 32, offset: 160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1244, file: !152, line: 2360, baseType: !1253, size: 128, offset: 192)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 128, elements: !786)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1244, file: !152, line: 2364, baseType: !721, size: 32, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1244, file: !152, line: 2367, baseType: !1256, size: 128, offset: 384)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !152, line: 2349, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1256, file: !152, line: 2351, baseType: !843, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1256, file: !152, line: 2352, baseType: !777, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1244, file: !152, line: 2371, baseType: !151, size: 32, offset: 512)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1244, file: !152, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1244, file: !152, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1244, file: !152, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1244, file: !152, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1244, file: !152, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1143, file: !1144, line: 504, baseType: !1267, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1144, line: 504, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1143, file: !1144, line: 507, baseType: !1187, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1143, file: !1144, line: 510, baseType: !721, size: 32, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1143, file: !1144, line: 513, baseType: !721, size: 32, offset: 864)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1143, file: !1144, line: 516, baseType: !1017, size: 32, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1143, file: !1144, line: 519, baseType: !1017, size: 32, offset: 928)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1143, file: !1144, line: 522, baseType: !7, size: 32, offset: 960)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1143, file: !1144, line: 523, baseType: !7, size: 32, offset: 992)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1143, file: !1144, line: 528, baseType: !726, size: 64, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1143, file: !1144, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1143, file: !1144, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1143, file: !1144, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1143, file: !1144, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1143, file: !1144, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1143, file: !1144, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1143, file: !1144, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1143, file: !1144, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1143, file: !1144, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1143, file: !1144, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1143, file: !1144, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1143, file: !1144, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1143, file: !1144, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1143, file: !1144, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1143, file: !1144, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1143, file: !1144, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1138, file: !157, line: 3254, baseType: !897, size: 64, offset: 1536)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1138, file: !157, line: 3257, baseType: !897, size: 64, offset: 1600)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1138, file: !157, line: 3258, baseType: !897, size: 64, offset: 1664)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1138, file: !157, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1138, file: !157, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1138, file: !157, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1138, file: !157, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1138, file: !157, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1138, file: !157, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1138, file: !157, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1138, file: !157, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1138, file: !157, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1138, file: !157, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1138, file: !157, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1138, file: !157, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1138, file: !157, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1138, file: !157, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1138, file: !157, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1138, file: !157, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1138, file: !157, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1138, file: !157, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !899, file: !157, line: 3394, baseType: !1315, size: 1344)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !157, line: 2279, size: 1344, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1342, !1343, !1344, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1315, file: !157, line: 2280, baseType: !935, size: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1315, file: !157, line: 2281, baseType: !897, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1315, file: !157, line: 2282, baseType: !897, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1315, file: !157, line: 2283, baseType: !897, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1315, file: !157, line: 2284, baseType: !897, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1315, file: !157, line: 2285, baseType: !7, size: 32, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1315, file: !157, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1315, file: !157, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1315, file: !157, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1315, file: !157, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1315, file: !157, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1315, file: !157, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1315, file: !157, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1315, file: !157, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1315, file: !157, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1315, file: !157, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1315, file: !157, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1315, file: !157, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1315, file: !157, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1315, file: !157, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1315, file: !157, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1315, file: !157, line: 2305, baseType: !7, size: 32, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1315, file: !157, line: 2306, baseType: !1340, size: 32, offset: 544)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1341, line: 31, baseType: !721)
!1341 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1315, file: !157, line: 2307, baseType: !897, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1315, file: !157, line: 2308, baseType: !897, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1315, file: !157, line: 2314, baseType: !1345, size: 64, offset: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !157, line: 2309, size: 64, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1345, file: !157, line: 2310, baseType: !721, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1345, file: !157, line: 2311, baseType: !726, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1345, file: !157, line: 2312, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !157, line: 2277, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1315, file: !157, line: 2315, baseType: !897, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1315, file: !157, line: 2316, baseType: !897, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1315, file: !157, line: 2317, baseType: !897, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1315, file: !157, line: 2318, baseType: !897, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1315, file: !157, line: 2319, baseType: !897, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1315, file: !157, line: 2320, baseType: !897, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1315, file: !157, line: 2321, baseType: !897, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1315, file: !157, line: 2322, baseType: !897, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1315, file: !157, line: 2324, baseType: !1361, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !157, line: 2324, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !157, line: 3395, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !157, line: 1469, size: 320, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !157, line: 1470, baseType: !935, size: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1364, file: !157, line: 1471, baseType: !897, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1364, file: !157, line: 1472, baseType: !897, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !899, file: !157, line: 3396, baseType: !1370, size: 320)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !157, line: 1482, size: 320, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !157, line: 1483, baseType: !935, size: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1370, file: !157, line: 1484, baseType: !721, size: 32, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1370, file: !157, line: 1485, baseType: !1375, size: 64, offset: 256)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 64, elements: !877)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !899, file: !157, line: 3397, baseType: !1377, size: 384)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !157, line: 1829, size: 384, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1377, file: !157, line: 1830, baseType: !935, size: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1377, file: !157, line: 1831, baseType: !1017, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1377, file: !157, line: 1832, baseType: !897, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1377, file: !157, line: 1835, baseType: !1375, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !899, file: !157, line: 3398, baseType: !1384, size: 704)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !157, line: 1898, size: 704, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1392, !1393, !1396}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1384, file: !157, line: 1899, baseType: !935, size: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1384, file: !157, line: 1902, baseType: !897, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1384, file: !157, line: 1905, baseType: !1389, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !743, line: 58, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !743, line: 57, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1384, file: !157, line: 1908, baseType: !7, size: 32, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1384, file: !157, line: 1911, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !157, line: 1876, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1384, file: !157, line: 1914, baseType: !1397, size: 256, offset: 448)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !157, line: 1883, size: 256, elements: !1398)
!1398 = !{!1399, !1401, !1402, !1407}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1397, file: !157, line: 1884, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1397, file: !157, line: 1885, baseType: !1400, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1397, file: !157, line: 1891, baseType: !1403, size: 64, offset: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1397, file: !157, line: 1891, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1403, file: !157, line: 1891, baseType: !1389, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1403, file: !157, line: 1891, baseType: !897, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1397, file: !157, line: 1892, baseType: !1408, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !899, file: !157, line: 3399, baseType: !1410, size: 704)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !157, line: 2008, size: 704, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1429, !1430, !1431, !1432, !1433}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1410, file: !157, line: 2009, baseType: !935, size: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1410, file: !157, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1410, file: !157, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1410, file: !157, line: 2014, baseType: !1017, size: 32, offset: 224)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1410, file: !157, line: 2016, baseType: !897, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1410, file: !157, line: 2017, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !157, line: 183, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !157, line: 183, size: 128, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1420, file: !157, line: 183, baseType: !1423, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !157, line: 182, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !157, line: 182, size: 128, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1424, file: !157, line: 182, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1424, file: !157, line: 182, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1424, file: !157, line: 182, baseType: !1375, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1410, file: !157, line: 2019, baseType: !897, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1410, file: !157, line: 2020, baseType: !897, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1410, file: !157, line: 2021, baseType: !897, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1410, file: !157, line: 2022, baseType: !897, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1410, file: !157, line: 2023, baseType: !897, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !899, file: !157, line: 3400, baseType: !1435, size: 832)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !157, line: 2430, size: 832, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1435, file: !157, line: 2431, baseType: !935, size: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1435, file: !157, line: 2433, baseType: !897, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1435, file: !157, line: 2434, baseType: !897, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1435, file: !157, line: 2435, baseType: !897, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1435, file: !157, line: 2436, baseType: !897, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1435, file: !157, line: 2437, baseType: !1418, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1435, file: !157, line: 2438, baseType: !897, size: 64, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1435, file: !157, line: 2440, baseType: !897, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1435, file: !157, line: 2441, baseType: !897, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1435, file: !157, line: 2443, baseType: !1447, size: 128, offset: 704)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !157, line: 182, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !157, line: 182, size: 128, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1448, file: !157, line: 182, baseType: !1423, size: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !899, file: !157, line: 3401, baseType: !1452, size: 320)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !157, line: 3327, size: 320, elements: !1453)
!1453 = !{!1454, !1455, !1462}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1452, file: !157, line: 3329, baseType: !935, size: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1452, file: !157, line: 3330, baseType: !1456, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !157, line: 3320, size: 192, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1457, file: !157, line: 3322, baseType: !1456, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1457, file: !157, line: 3323, baseType: !1456, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1457, file: !157, line: 3324, baseType: !897, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1452, file: !157, line: 3331, baseType: !1456, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !899, file: !157, line: 3402, baseType: !1464, size: 256)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !157, line: 1540, size: 256, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1464, file: !157, line: 1541, baseType: !935, size: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1464, file: !157, line: 1542, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !157, line: 1538, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !157, line: 1538, size: 192, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1470, file: !157, line: 1538, baseType: !1473, size: 192)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !157, line: 1537, baseType: !1474)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !157, line: 1537, size: 192, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1474, file: !157, line: 1537, baseType: !7, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1474, file: !157, line: 1537, baseType: !7, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1474, file: !157, line: 1537, baseType: !1479, size: 128, offset: 64)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1480, size: 128, elements: !877)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !157, line: 1535, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !157, line: 1532, size: 128, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1481, file: !157, line: 1533, baseType: !897, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1481, file: !157, line: 1534, baseType: !897, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !899, file: !157, line: 3403, baseType: !1486, size: 512)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !157, line: 1938, size: 512, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1497, !1498, !1499}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1486, file: !157, line: 1939, baseType: !935, size: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1486, file: !157, line: 1940, baseType: !1017, size: 32, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1486, file: !157, line: 1941, baseType: !156, size: 32, offset: 224)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1486, file: !157, line: 1946, baseType: !1492, size: 32, offset: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !157, line: 1942, size: 32, elements: !1493)
!1493 = !{!1494, !1495, !1496}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1492, file: !157, line: 1943, baseType: !175, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1492, file: !157, line: 1944, baseType: !182, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1492, file: !157, line: 1945, baseType: !189, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1486, file: !157, line: 1950, baseType: !839, size: 64, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1486, file: !157, line: 1951, baseType: !839, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1486, file: !157, line: 1953, baseType: !1375, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !899, file: !157, line: 3404, baseType: !1501, size: 1664)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !157, line: 3337, size: 1664, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1501, file: !157, line: 3338, baseType: !935, size: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1501, file: !157, line: 3341, baseType: !1505, size: 1472, offset: 192)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1506, line: 410, size: 1472, elements: !1507)
!1506 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1505, file: !1506, line: 412, baseType: !721, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1505, file: !1506, line: 413, baseType: !721, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1505, file: !1506, line: 414, baseType: !721, size: 32, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1505, file: !1506, line: 415, baseType: !721, size: 32, offset: 96)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1505, file: !1506, line: 416, baseType: !721, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1505, file: !1506, line: 417, baseType: !721, size: 32, offset: 160)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1505, file: !1506, line: 418, baseType: !720, size: 8, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1505, file: !1506, line: 419, baseType: !720, size: 8, offset: 200)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1505, file: !1506, line: 420, baseType: !1517, size: 8, offset: 208)
!1517 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1505, file: !1506, line: 421, baseType: !1517, size: 8, offset: 216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1505, file: !1506, line: 422, baseType: !1517, size: 8, offset: 224)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1505, file: !1506, line: 423, baseType: !1517, size: 8, offset: 232)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1505, file: !1506, line: 424, baseType: !1517, size: 8, offset: 240)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1505, file: !1506, line: 425, baseType: !1517, size: 8, offset: 248)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1505, file: !1506, line: 426, baseType: !1517, size: 8, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1505, file: !1506, line: 427, baseType: !1517, size: 8, offset: 264)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1505, file: !1506, line: 428, baseType: !1517, size: 8, offset: 272)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1505, file: !1506, line: 429, baseType: !1517, size: 8, offset: 280)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1505, file: !1506, line: 430, baseType: !1517, size: 8, offset: 288)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1505, file: !1506, line: 431, baseType: !1517, size: 8, offset: 296)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1505, file: !1506, line: 432, baseType: !1517, size: 8, offset: 304)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1505, file: !1506, line: 433, baseType: !1517, size: 8, offset: 312)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1505, file: !1506, line: 434, baseType: !1517, size: 8, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1505, file: !1506, line: 435, baseType: !1517, size: 8, offset: 328)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1505, file: !1506, line: 436, baseType: !1517, size: 8, offset: 336)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1505, file: !1506, line: 437, baseType: !1517, size: 8, offset: 344)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1505, file: !1506, line: 438, baseType: !1517, size: 8, offset: 352)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1505, file: !1506, line: 439, baseType: !1517, size: 8, offset: 360)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1505, file: !1506, line: 440, baseType: !1517, size: 8, offset: 368)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1505, file: !1506, line: 441, baseType: !1517, size: 8, offset: 376)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1505, file: !1506, line: 442, baseType: !1517, size: 8, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1505, file: !1506, line: 443, baseType: !1517, size: 8, offset: 392)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1505, file: !1506, line: 444, baseType: !1517, size: 8, offset: 400)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1505, file: !1506, line: 445, baseType: !1517, size: 8, offset: 408)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1505, file: !1506, line: 446, baseType: !1517, size: 8, offset: 416)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1505, file: !1506, line: 447, baseType: !1517, size: 8, offset: 424)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1505, file: !1506, line: 448, baseType: !1517, size: 8, offset: 432)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1505, file: !1506, line: 449, baseType: !1517, size: 8, offset: 440)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1505, file: !1506, line: 450, baseType: !1517, size: 8, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1505, file: !1506, line: 451, baseType: !1517, size: 8, offset: 456)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1505, file: !1506, line: 452, baseType: !1517, size: 8, offset: 464)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1505, file: !1506, line: 453, baseType: !1517, size: 8, offset: 472)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1505, file: !1506, line: 454, baseType: !1517, size: 8, offset: 480)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1505, file: !1506, line: 455, baseType: !1517, size: 8, offset: 488)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1505, file: !1506, line: 456, baseType: !1517, size: 8, offset: 496)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1505, file: !1506, line: 457, baseType: !1517, size: 8, offset: 504)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1505, file: !1506, line: 458, baseType: !1517, size: 8, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1505, file: !1506, line: 459, baseType: !1517, size: 8, offset: 520)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1505, file: !1506, line: 460, baseType: !1517, size: 8, offset: 528)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1505, file: !1506, line: 461, baseType: !1517, size: 8, offset: 536)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1505, file: !1506, line: 462, baseType: !1517, size: 8, offset: 544)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1505, file: !1506, line: 463, baseType: !1517, size: 8, offset: 552)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1505, file: !1506, line: 464, baseType: !1517, size: 8, offset: 560)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1505, file: !1506, line: 465, baseType: !1517, size: 8, offset: 568)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1505, file: !1506, line: 466, baseType: !1517, size: 8, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1505, file: !1506, line: 467, baseType: !1517, size: 8, offset: 584)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1505, file: !1506, line: 468, baseType: !1517, size: 8, offset: 592)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1505, file: !1506, line: 469, baseType: !1517, size: 8, offset: 600)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1505, file: !1506, line: 470, baseType: !1517, size: 8, offset: 608)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1505, file: !1506, line: 471, baseType: !1517, size: 8, offset: 616)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1505, file: !1506, line: 472, baseType: !1517, size: 8, offset: 624)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1505, file: !1506, line: 473, baseType: !1517, size: 8, offset: 632)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1505, file: !1506, line: 474, baseType: !1517, size: 8, offset: 640)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1505, file: !1506, line: 475, baseType: !1517, size: 8, offset: 648)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1505, file: !1506, line: 476, baseType: !1517, size: 8, offset: 656)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1505, file: !1506, line: 477, baseType: !1517, size: 8, offset: 664)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1505, file: !1506, line: 478, baseType: !1517, size: 8, offset: 672)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1505, file: !1506, line: 479, baseType: !1517, size: 8, offset: 680)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1505, file: !1506, line: 480, baseType: !1517, size: 8, offset: 688)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1505, file: !1506, line: 481, baseType: !1517, size: 8, offset: 696)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1505, file: !1506, line: 482, baseType: !1517, size: 8, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1505, file: !1506, line: 483, baseType: !1517, size: 8, offset: 712)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1505, file: !1506, line: 484, baseType: !1517, size: 8, offset: 720)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1505, file: !1506, line: 485, baseType: !1517, size: 8, offset: 728)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1505, file: !1506, line: 486, baseType: !1517, size: 8, offset: 736)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1505, file: !1506, line: 487, baseType: !1517, size: 8, offset: 744)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1505, file: !1506, line: 488, baseType: !1517, size: 8, offset: 752)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1505, file: !1506, line: 489, baseType: !1517, size: 8, offset: 760)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1505, file: !1506, line: 490, baseType: !1517, size: 8, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1505, file: !1506, line: 491, baseType: !1517, size: 8, offset: 776)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1505, file: !1506, line: 492, baseType: !1517, size: 8, offset: 784)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1505, file: !1506, line: 493, baseType: !1517, size: 8, offset: 792)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1505, file: !1506, line: 494, baseType: !1517, size: 8, offset: 800)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1505, file: !1506, line: 495, baseType: !1517, size: 8, offset: 808)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1505, file: !1506, line: 496, baseType: !1517, size: 8, offset: 816)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1505, file: !1506, line: 497, baseType: !1517, size: 8, offset: 824)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1505, file: !1506, line: 498, baseType: !1517, size: 8, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1505, file: !1506, line: 499, baseType: !1517, size: 8, offset: 840)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1505, file: !1506, line: 500, baseType: !1517, size: 8, offset: 848)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1505, file: !1506, line: 501, baseType: !1517, size: 8, offset: 856)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1505, file: !1506, line: 502, baseType: !1517, size: 8, offset: 864)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1505, file: !1506, line: 503, baseType: !1517, size: 8, offset: 872)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1505, file: !1506, line: 504, baseType: !1517, size: 8, offset: 880)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1505, file: !1506, line: 505, baseType: !1517, size: 8, offset: 888)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1505, file: !1506, line: 506, baseType: !1517, size: 8, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1505, file: !1506, line: 507, baseType: !1517, size: 8, offset: 904)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1505, file: !1506, line: 508, baseType: !1517, size: 8, offset: 912)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1505, file: !1506, line: 509, baseType: !1517, size: 8, offset: 920)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1505, file: !1506, line: 510, baseType: !1517, size: 8, offset: 928)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1505, file: !1506, line: 511, baseType: !1517, size: 8, offset: 936)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1505, file: !1506, line: 512, baseType: !1517, size: 8, offset: 944)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1505, file: !1506, line: 513, baseType: !1517, size: 8, offset: 952)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1505, file: !1506, line: 514, baseType: !1517, size: 8, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1505, file: !1506, line: 515, baseType: !1517, size: 8, offset: 968)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1505, file: !1506, line: 516, baseType: !1517, size: 8, offset: 976)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1505, file: !1506, line: 517, baseType: !1517, size: 8, offset: 984)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1505, file: !1506, line: 518, baseType: !1517, size: 8, offset: 992)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1505, file: !1506, line: 519, baseType: !1517, size: 8, offset: 1000)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1505, file: !1506, line: 520, baseType: !1517, size: 8, offset: 1008)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1505, file: !1506, line: 521, baseType: !1517, size: 8, offset: 1016)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1505, file: !1506, line: 522, baseType: !1517, size: 8, offset: 1024)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1505, file: !1506, line: 523, baseType: !1517, size: 8, offset: 1032)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1505, file: !1506, line: 524, baseType: !1517, size: 8, offset: 1040)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1505, file: !1506, line: 525, baseType: !1517, size: 8, offset: 1048)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1505, file: !1506, line: 526, baseType: !1517, size: 8, offset: 1056)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1505, file: !1506, line: 527, baseType: !1517, size: 8, offset: 1064)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1505, file: !1506, line: 528, baseType: !1517, size: 8, offset: 1072)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1505, file: !1506, line: 529, baseType: !1517, size: 8, offset: 1080)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1505, file: !1506, line: 530, baseType: !1517, size: 8, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1505, file: !1506, line: 531, baseType: !1517, size: 8, offset: 1096)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1505, file: !1506, line: 532, baseType: !1517, size: 8, offset: 1104)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1505, file: !1506, line: 533, baseType: !1517, size: 8, offset: 1112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1505, file: !1506, line: 534, baseType: !1517, size: 8, offset: 1120)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1505, file: !1506, line: 535, baseType: !1517, size: 8, offset: 1128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1505, file: !1506, line: 536, baseType: !1517, size: 8, offset: 1136)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1505, file: !1506, line: 537, baseType: !1517, size: 8, offset: 1144)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1505, file: !1506, line: 538, baseType: !1517, size: 8, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1505, file: !1506, line: 539, baseType: !1517, size: 8, offset: 1160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1505, file: !1506, line: 540, baseType: !1517, size: 8, offset: 1168)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1505, file: !1506, line: 541, baseType: !1517, size: 8, offset: 1176)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1505, file: !1506, line: 542, baseType: !1517, size: 8, offset: 1184)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1505, file: !1506, line: 543, baseType: !1517, size: 8, offset: 1192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1505, file: !1506, line: 544, baseType: !1517, size: 8, offset: 1200)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1505, file: !1506, line: 545, baseType: !1517, size: 8, offset: 1208)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1505, file: !1506, line: 546, baseType: !1517, size: 8, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1505, file: !1506, line: 547, baseType: !1517, size: 8, offset: 1224)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1505, file: !1506, line: 548, baseType: !1517, size: 8, offset: 1232)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1505, file: !1506, line: 549, baseType: !1517, size: 8, offset: 1240)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1505, file: !1506, line: 550, baseType: !1517, size: 8, offset: 1248)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1505, file: !1506, line: 551, baseType: !1517, size: 8, offset: 1256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1505, file: !1506, line: 552, baseType: !1517, size: 8, offset: 1264)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1505, file: !1506, line: 553, baseType: !1517, size: 8, offset: 1272)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1505, file: !1506, line: 554, baseType: !1517, size: 8, offset: 1280)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1505, file: !1506, line: 555, baseType: !1517, size: 8, offset: 1288)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1505, file: !1506, line: 556, baseType: !1517, size: 8, offset: 1296)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1505, file: !1506, line: 557, baseType: !1517, size: 8, offset: 1304)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1505, file: !1506, line: 558, baseType: !1517, size: 8, offset: 1312)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1505, file: !1506, line: 559, baseType: !1517, size: 8, offset: 1320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1505, file: !1506, line: 560, baseType: !1517, size: 8, offset: 1328)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1505, file: !1506, line: 561, baseType: !1517, size: 8, offset: 1336)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1505, file: !1506, line: 562, baseType: !1517, size: 8, offset: 1344)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1505, file: !1506, line: 563, baseType: !1517, size: 8, offset: 1352)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1505, file: !1506, line: 564, baseType: !1517, size: 8, offset: 1360)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1505, file: !1506, line: 565, baseType: !1517, size: 8, offset: 1368)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1505, file: !1506, line: 566, baseType: !1517, size: 8, offset: 1376)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1505, file: !1506, line: 567, baseType: !1517, size: 8, offset: 1384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1505, file: !1506, line: 568, baseType: !1517, size: 8, offset: 1392)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1505, file: !1506, line: 569, baseType: !1517, size: 8, offset: 1400)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1505, file: !1506, line: 570, baseType: !1517, size: 8, offset: 1408)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1505, file: !1506, line: 571, baseType: !1517, size: 8, offset: 1416)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1505, file: !1506, line: 572, baseType: !1517, size: 8, offset: 1424)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1505, file: !1506, line: 573, baseType: !1517, size: 8, offset: 1432)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1505, file: !1506, line: 574, baseType: !1517, size: 8, offset: 1440)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !899, file: !157, line: 3405, baseType: !1673, size: 384)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !157, line: 3352, size: 384, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1673, file: !157, line: 3353, baseType: !935, size: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1673, file: !157, line: 3356, baseType: !1677, size: 192, offset: 192)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1506, line: 578, size: 192, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1677, file: !1506, line: 580, baseType: !721, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1677, file: !1506, line: 581, baseType: !721, size: 32, offset: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1677, file: !1506, line: 582, baseType: !721, size: 32, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1677, file: !1506, line: 583, baseType: !721, size: 32, offset: 96)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1677, file: !1506, line: 584, baseType: !720, size: 8, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1677, file: !1506, line: 585, baseType: !720, size: 8, offset: 136)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1677, file: !1506, line: 586, baseType: !720, size: 8, offset: 144)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1677, file: !1506, line: 587, baseType: !720, size: 8, offset: 152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1677, file: !1506, line: 588, baseType: !720, size: 8, offset: 160)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1677, file: !1506, line: 589, baseType: !720, size: 8, offset: 168)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1677, file: !1506, line: 590, baseType: !720, size: 8, offset: 176)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !863, file: !567, line: 178, baseType: !813, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !863, file: !567, line: 179, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !567, line: 150, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !567, line: 142, size: 320, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1694, file: !567, line: 144, baseType: !897, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1694, file: !567, line: 145, baseType: !843, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1694, file: !567, line: 146, baseType: !843, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1694, file: !567, line: 147, baseType: !1340, size: 32, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1694, file: !567, line: 148, baseType: !7, size: 32, offset: 224)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1694, file: !567, line: 149, baseType: !720, size: 8, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !863, file: !567, line: 180, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !567, line: 162, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !567, line: 159, size: 128, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1705, file: !567, line: 160, baseType: !897, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1705, file: !567, line: 161, baseType: !777, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !863, file: !567, line: 181, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !567, line: 181, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !858, file: !567, line: 317, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 64, elements: !877)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !858, file: !567, line: 318, baseType: !1715, size: 320)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !567, line: 188, size: 320, elements: !1716)
!1716 = !{!1717, !1719, !1774}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1715, file: !567, line: 190, baseType: !1718, size: 192)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 192, elements: !968)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1715, file: !567, line: 193, baseType: !1720, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !567, line: 206, size: 320, elements: !1722)
!1722 = !{!1723, !1759, !1760, !1761, !1773}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1721, file: !567, line: 208, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !743, line: 62, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1727, line: 538, size: 256, elements: !1728)
!1727 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1728 = !{!1729, !1733, !1739, !1750}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1726, file: !1727, line: 539, baseType: !1730, size: 32)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1727, line: 482, size: 32, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1730, file: !1727, line: 484, baseType: !7, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1726, file: !1727, line: 540, baseType: !1734, size: 192)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1727, line: 488, size: 192, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1734, file: !1727, line: 489, baseType: !1730, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !1727, line: 492, baseType: !726, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1734, file: !1727, line: 496, baseType: !897, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1726, file: !1727, line: 541, baseType: !1740, size: 256)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1727, line: 504, size: 256, elements: !1741)
!1741 = !{!1742, !1743, !1748, !1749}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1740, file: !1727, line: 505, baseType: !1730, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1740, file: !1727, line: 509, baseType: !1744, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1727, line: 501, baseType: !1745)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !1198}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1740, file: !1727, line: 510, baseType: !1198, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1740, file: !1727, line: 513, baseType: !1724, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1726, file: !1727, line: 542, baseType: !1751, size: 128)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1727, line: 530, size: 128, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1751, file: !1727, line: 531, baseType: !1730, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1751, file: !1727, line: 534, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1727, line: 525, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!720, !897, !726, !760, !760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1721, file: !567, line: 211, baseType: !7, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1721, file: !567, line: 214, baseType: !777, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1721, file: !567, line: 224, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !567, line: 202, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !567, line: 202, size: 128, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1764, file: !567, line: 202, baseType: !1767, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !567, line: 200, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !567, line: 200, size: 128, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1768, file: !567, line: 200, baseType: !7, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1768, file: !567, line: 200, baseType: !7, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1768, file: !567, line: 200, baseType: !876, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1721, file: !567, line: 234, baseType: !1762, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1715, file: !567, line: 197, baseType: !777, size: 64, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !858, file: !567, line: 319, baseType: !957, size: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !858, file: !567, line: 320, baseType: !976, size: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !831, file: !141, line: 134, baseType: !725, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !831, file: !141, line: 137, baseType: !897, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !831, file: !141, line: 138, baseType: !1017, size: 32, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !831, file: !141, line: 142, baseType: !7, size: 32, offset: 352)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !141, line: 144, baseType: !721, size: 32, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !831, file: !141, line: 145, baseType: !721, size: 32, offset: 416)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !831, file: !141, line: 146, baseType: !1784, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !141, line: 119, baseType: !777)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !814, file: !141, line: 220, baseType: !817, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !814, file: !141, line: 223, baseType: !725, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !814, file: !141, line: 226, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !141, line: 185, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !814, file: !141, line: 229, baseType: !1791, size: 128, offset: 256)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 128, elements: !761)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !141, line: 229, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !814, file: !141, line: 232, baseType: !813, size: 64, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !814, file: !141, line: 233, baseType: !813, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !814, file: !141, line: 238, baseType: !1797, size: 64, offset: 512)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !141, line: 235, size: 64, elements: !1798)
!1798 = !{!1799, !1805}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1797, file: !141, line: 236, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !141, line: 273, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1801, file: !141, line: 275, baseType: !839, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1801, file: !141, line: 278, baseType: !839, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1797, file: !141, line: 237, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !141, line: 259, size: 320, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1807, file: !141, line: 261, baseType: !843, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1807, file: !141, line: 262, baseType: !843, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1807, file: !141, line: 266, baseType: !843, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1807, file: !141, line: 267, baseType: !843, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1807, file: !141, line: 270, baseType: !721, size: 32, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !814, file: !141, line: 241, baseType: !1784, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !814, file: !141, line: 244, baseType: !721, size: 32, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !814, file: !141, line: 247, baseType: !721, size: 32, offset: 672)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !814, file: !141, line: 250, baseType: !721, size: 32, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !814, file: !141, line: 253, baseType: !721, size: 32, offset: 736)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !141, line: 256, baseType: !721, size: 32, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "local_compute_fun", scope: !733, file: !6, line: 263, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_local_compute_function", file: !6, line: 212, baseType: !739)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "init_fun", scope: !733, file: !6, line: 264, baseType: !1823, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_init_function", file: !6, line: 215, baseType: !739)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dataflow_fun", scope: !733, file: !6, line: 265, baseType: !1825, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_dataflow_function", file: !6, line: 218, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !728, !742, !1829, !721}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "con_fun_0", scope: !733, file: !6, line: 266, baseType: !1831, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_confluence_function_0", file: !6, line: 221, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !812}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "con_fun_n", scope: !733, file: !6, line: 267, baseType: !1836, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_confluence_function_n", file: !6, line: 224, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !829}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "trans_fun", scope: !733, file: !6, line: 268, baseType: !1841, size: 64, offset: 576)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_transfer_function", file: !6, line: 227, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!720, !721}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_fun", scope: !733, file: !6, line: 269, baseType: !1846, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_finalizer_function", file: !6, line: 230, baseType: !739)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "free_fun", scope: !733, file: !6, line: 270, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_free_function", file: !6, line: 233, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "remove_problem_fun", scope: !733, file: !6, line: 271, baseType: !1853, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_remove_problem_function", file: !6, line: 238, baseType: !1849)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dump_start_fun", scope: !733, file: !6, line: 272, baseType: !1855, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_dump_problem_function", file: !6, line: 241, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1861, line: 7, baseType: !1862)
!1861 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1863, line: 49, size: 1728, elements: !1864)
!1863 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1880, !1882, !1883, !1884, !1887, !1889, !1890, !1891, !1894, !1896, !1899, !1902, !1903, !1904, !1905, !1906}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1862, file: !1863, line: 51, baseType: !721, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1862, file: !1863, line: 54, baseType: !723, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1862, file: !1863, line: 55, baseType: !723, size: 64, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1862, file: !1863, line: 56, baseType: !723, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1862, file: !1863, line: 57, baseType: !723, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1862, file: !1863, line: 58, baseType: !723, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1862, file: !1863, line: 59, baseType: !723, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1862, file: !1863, line: 60, baseType: !723, size: 64, offset: 448)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1862, file: !1863, line: 61, baseType: !723, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1862, file: !1863, line: 64, baseType: !723, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1862, file: !1863, line: 65, baseType: !723, size: 64, offset: 640)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1862, file: !1863, line: 66, baseType: !723, size: 64, offset: 704)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1862, file: !1863, line: 68, baseType: !1878, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1863, line: 36, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1862, file: !1863, line: 70, baseType: !1881, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1862, file: !1863, line: 72, baseType: !721, size: 32, offset: 896)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1862, file: !1863, line: 73, baseType: !721, size: 32, offset: 928)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1862, file: !1863, line: 74, baseType: !1885, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1886, line: 152, baseType: !777)
!1886 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1862, file: !1863, line: 77, baseType: !1888, size: 16, offset: 1024)
!1888 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1862, file: !1863, line: 78, baseType: !1517, size: 8, offset: 1040)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1862, file: !1863, line: 79, baseType: !992, size: 8, offset: 1048)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1862, file: !1863, line: 81, baseType: !1892, size: 64, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1863, line: 43, baseType: null)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1862, file: !1863, line: 89, baseType: !1895, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1886, line: 153, baseType: !777)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1862, file: !1863, line: 91, baseType: !1897, size: 64, offset: 1216)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1863, line: 37, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1862, file: !1863, line: 92, baseType: !1900, size: 64, offset: 1280)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1863, line: 38, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1862, file: !1863, line: 93, baseType: !1881, size: 64, offset: 1344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1862, file: !1863, line: 94, baseType: !725, size: 64, offset: 1408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1862, file: !1863, line: 95, baseType: !1213, size: 64, offset: 1472)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1862, file: !1863, line: 96, baseType: !721, size: 32, offset: 1536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1862, file: !1863, line: 98, baseType: !1907, size: 160, offset: 1568)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 160, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 20)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dump_top_fun", scope: !733, file: !6, line: 273, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_dump_bb_problem_function", file: !6, line: 244, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !812, !1859}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dump_bottom_fun", scope: !733, file: !6, line: 274, baseType: !1911, size: 64, offset: 960)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "verify_start_fun", scope: !733, file: !6, line: 275, baseType: !1917, size: 64, offset: 1024)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_verify_solution_start", file: !6, line: 247, baseType: !1849)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "verify_end_fun", scope: !733, file: !6, line: 276, baseType: !1919, size: 64, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_verify_solution_end", file: !6, line: 250, baseType: !1849)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dependent_problem", scope: !733, file: !6, line: 277, baseType: !732, size: 64, offset: 1152)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !733, file: !6, line: 280, baseType: !1922, size: 32, offset: 1216)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !384, line: 80, baseType: !383)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "free_blocks_on_set_blocks", scope: !733, file: !6, line: 284, baseType: !720, size: 8, offset: 1248)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "block_info", scope: !729, file: !6, line: 295, baseType: !1211, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "block_info_size", scope: !729, file: !6, line: 296, baseType: !7, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "block_pool", scope: !729, file: !6, line: 299, baseType: !1927, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !1928, line: 58, baseType: !1929)
!1928 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !1928, line: 32, size: 704, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1930, file: !1928, line: 34, baseType: !726, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !1930, file: !1928, line: 38, baseType: !1213, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !1930, file: !1928, line: 41, baseType: !1935, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !1928, line: 30, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !1928, line: 26, size: 64, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1937, file: !1928, line: 28, baseType: !1936, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !1930, file: !1928, line: 45, baseType: !723, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !1930, file: !1928, line: 49, baseType: !1213, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !1930, file: !1928, line: 51, baseType: !1213, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !1930, file: !1928, line: 52, baseType: !1213, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !1930, file: !1928, line: 53, baseType: !1213, size: 64, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !1930, file: !1928, line: 54, baseType: !1935, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !1930, file: !1928, line: 55, baseType: !1213, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !1930, file: !1928, line: 56, baseType: !1213, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_date_transfer_functions", scope: !729, file: !6, line: 306, baseType: !742, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "problem_data", scope: !729, file: !6, line: 312, baseType: !725, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "local_flags", scope: !729, file: !6, line: 315, baseType: !7, size: 32, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "computed", scope: !729, file: !6, line: 321, baseType: !720, size: 8, offset: 416)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "solutions_dirty", scope: !729, file: !6, line: 326, baseType: !720, size: 8, offset: 424)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "optional_p", scope: !729, file: !6, line: 331, baseType: !720, size: 8, offset: 432)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df", file: !6, line: 525, size: 2944, elements: !1957)
!1957 = !{!1958, !1962, !1963, !1964, !2035, !2036, !2043, !2044, !2045, !2046, !2047, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "problems_in_order", scope: !1956, file: !6, line: 536, baseType: !1959, size: 512)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 512, elements: !1960)
!1960 = !{!1961}
!1961 = !DISubrange(count: 8)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "problems_by_index", scope: !1956, file: !6, line: 537, baseType: !1959, size: 512, offset: 512)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_to_analyze", scope: !1956, file: !6, line: 543, baseType: !742, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "def_info", scope: !1956, file: !6, line: 548, baseType: !1965, size: 320, offset: 1088)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_ref_info", file: !6, line: 489, size: 320, elements: !1966)
!1966 = !{!1967, !2029, !2030, !2031, !2032, !2033, !2034}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1965, file: !6, line: 491, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !6, line: 429, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !6, line: 422, size: 704, elements: !1972)
!1972 = !{!1973, !2011, !2017, !2022}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1971, file: !6, line: 424, baseType: !1974, size: 512)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !6, line: 356, size: 512, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1986, !2006, !2007, !2008, !2009, !2010}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1974, file: !6, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1974, file: !6, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1974, file: !6, line: 364, baseType: !721, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1974, file: !6, line: 365, baseType: !843, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1974, file: !6, line: 366, baseType: !1981, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !6, line: 449, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1982, file: !6, line: 451, baseType: !1969, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1982, file: !6, line: 452, baseType: !1981, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !1974, file: !6, line: 370, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !6, line: 433, size: 384, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !2005}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1988, file: !6, line: 435, baseType: !843, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !1988, file: !6, line: 436, baseType: !1968, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1988, file: !6, line: 437, baseType: !1968, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !1988, file: !6, line: 439, baseType: !1968, size: 64, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !1988, file: !6, line: 440, baseType: !1995, size: 64, offset: 256)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !6, line: 339, size: 192, elements: !1998)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !1997, file: !6, line: 341, baseType: !843, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1997, file: !6, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1997, file: !6, line: 346, baseType: !721, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !1997, file: !6, line: 347, baseType: !7, size: 32, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !1997, file: !6, line: 348, baseType: !7, size: 32, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !1997, file: !6, line: 349, baseType: !7, size: 32, offset: 160)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1988, file: !6, line: 444, baseType: !721, size: 32, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !1974, file: !6, line: 374, baseType: !1970, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !1974, file: !6, line: 375, baseType: !1970, size: 64, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !1974, file: !6, line: 376, baseType: !7, size: 32, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1974, file: !6, line: 379, baseType: !721, size: 32, offset: 416)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !1974, file: !6, line: 382, baseType: !7, size: 32, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !1971, file: !6, line: 425, baseType: !2012, size: 576)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !6, line: 398, size: 576, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2012, file: !6, line: 400, baseType: !1974, size: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2012, file: !6, line: 405, baseType: !2016, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !1971, file: !6, line: 426, baseType: !2018, size: 576)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !6, line: 388, size: 576, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2018, file: !6, line: 390, baseType: !1974, size: 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2018, file: !6, line: 394, baseType: !812, size: 64, offset: 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !1971, file: !6, line: 427, baseType: !2023, size: 704)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !6, line: 413, size: 704, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2023, file: !6, line: 415, baseType: !2012, size: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2023, file: !6, line: 416, baseType: !721, size: 32, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2023, file: !6, line: 417, baseType: !721, size: 32, offset: 608)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2023, file: !6, line: 418, baseType: !12, size: 32, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1965, file: !6, line: 492, baseType: !1954, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1965, file: !6, line: 493, baseType: !1954, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "refs_size", scope: !1965, file: !6, line: 494, baseType: !7, size: 32, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !1965, file: !6, line: 502, baseType: !7, size: 32, offset: 224)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !1965, file: !6, line: 503, baseType: !7, size: 32, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !1965, file: !6, line: 505, baseType: !709, size: 32, offset: 288)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "use_info", scope: !1956, file: !6, line: 549, baseType: !1965, size: 320, offset: 1408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "def_regs", scope: !1956, file: !6, line: 553, baseType: !2037, size: 64, offset: 1728)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_reg_info", file: !6, line: 510, size: 128, elements: !2040)
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "reg_chain", scope: !2039, file: !6, line: 513, baseType: !1969, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "n_refs", scope: !2039, file: !6, line: 515, baseType: !7, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "use_regs", scope: !1956, file: !6, line: 554, baseType: !2037, size: 64, offset: 1792)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "eq_use_regs", scope: !1956, file: !6, line: 555, baseType: !2037, size: 64, offset: 1856)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "regs_size", scope: !1956, file: !6, line: 556, baseType: !7, size: 32, offset: 1920)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "regs_inited", scope: !1956, file: !6, line: 557, baseType: !7, size: 32, offset: 1952)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1956, file: !6, line: 560, baseType: !2048, size: 64, offset: 1984)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "insns_size", scope: !1956, file: !6, line: 561, baseType: !7, size: 32, offset: 2048)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "num_problems_defined", scope: !1956, file: !6, line: 563, baseType: !721, size: 32, offset: 2080)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_regs_used", scope: !1956, file: !6, line: 565, baseType: !742, size: 64, offset: 2112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "regular_block_artificial_uses", scope: !1956, file: !6, line: 568, baseType: !742, size: 64, offset: 2176)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "eh_block_artificial_uses", scope: !1956, file: !6, line: 571, baseType: !742, size: 64, offset: 2240)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "entry_block_defs", scope: !1956, file: !6, line: 573, baseType: !742, size: 64, offset: 2304)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "exit_block_uses", scope: !1956, file: !6, line: 574, baseType: !742, size: 64, offset: 2368)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "insns_to_delete", scope: !1956, file: !6, line: 578, baseType: !742, size: 64, offset: 2432)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "insns_to_rescan", scope: !1956, file: !6, line: 579, baseType: !742, size: 64, offset: 2496)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "insns_to_notes_rescan", scope: !1956, file: !6, line: 580, baseType: !742, size: 64, offset: 2560)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "postorder", scope: !1956, file: !6, line: 581, baseType: !1829, size: 64, offset: 2624)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "postorder_inverted", scope: !1956, file: !6, line: 583, baseType: !1829, size: 64, offset: 2688)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "n_blocks", scope: !1956, file: !6, line: 585, baseType: !721, size: 32, offset: 2752)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "n_blocks_inverted", scope: !1956, file: !6, line: 586, baseType: !721, size: 32, offset: 2784)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regs_live_count", scope: !1956, file: !6, line: 599, baseType: !1954, size: 64, offset: 2816)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !1956, file: !6, line: 603, baseType: !7, size: 32, offset: 2880)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "changeable_flags", scope: !1956, file: !6, line: 607, baseType: !721, size: 8, offset: 2912, flags: DIFlagBitField, extraData: i64 2912)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "analyze_subset", scope: !1956, file: !6, line: 611, baseType: !720, size: 8, offset: 2920)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "redo_entry_and_exit", scope: !1956, file: !6, line: 615, baseType: !720, size: 8, offset: 2928)
!2068 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_scan_bb_info", file: !6, line: 771, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_defs", scope: !2070, file: !6, line: 782, baseType: !1968, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_uses", scope: !2070, file: !6, line: 788, baseType: !1968, size: 64, offset: 64)
!2074 = !{!2075, !2102, !2104, !2106, !0, !2108, !2110}
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(name: "pass_df_initialize_opt", scope: !2, file: !3, line: 752, type: !2077, isLocal: false, isDefinition: true)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !560, line: 162, size: 640, elements: !2078)
!2078 = !{!2079}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2077, file: !560, line: 164, baseType: !2080, size: 640)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !560, line: 114, size: 640, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2088, !2092, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2080, file: !560, line: 117, baseType: !559, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2080, file: !560, line: 121, baseType: !726, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2080, file: !560, line: 125, baseType: !2085, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!720}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2080, file: !560, line: 130, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!7}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2080, file: !560, line: 133, baseType: !2093, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2080, file: !560, line: 136, baseType: !2093, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2080, file: !560, line: 139, baseType: !721, size: 32, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2080, file: !560, line: 143, baseType: !1922, size: 32, offset: 416)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2080, file: !560, line: 146, baseType: !7, size: 32, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2080, file: !560, line: 147, baseType: !7, size: 32, offset: 480)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2080, file: !560, line: 148, baseType: !7, size: 32, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2080, file: !560, line: 151, baseType: !7, size: 32, offset: 544)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2080, file: !560, line: 152, baseType: !7, size: 32, offset: 576)
!2102 = !DIGlobalVariableExpression(var: !2103, expr: !DIExpression())
!2103 = distinct !DIGlobalVariable(name: "pass_df_initialize_no_opt", scope: !2, file: !3, line: 779, type: !2077, isLocal: false, isDefinition: true)
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(name: "pass_df_finish", scope: !2, file: !3, line: 828, type: !2077, isLocal: false, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(name: "df_bitmap_obstack", scope: !2, file: !3, line: 410, type: !767, isLocal: false, isDefinition: true)
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(name: "user_problem", scope: !2, file: !3, line: 1251, type: !733, isLocal: true, isDefinition: true)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "user_dflow", scope: !2, file: !3, line: 1252, type: !729, isLocal: true, isDefinition: true)
!2112 = !{i32 2, !"Dwarf Version", i32 4}
!2113 = !{i32 2, !"Debug Info Version", i32 3}
!2114 = !{i32 1, !"wchar_size", i32 4}
!2115 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2116 = distinct !DISubprogram(name: "vprintf", scope: !2117, file: !2117, line: 39, type: !2118, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!721, !2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !726)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2122, file: !3, baseType: !7, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2122, file: !3, baseType: !7, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2122, file: !3, baseType: !725, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2122, file: !3, baseType: !725, size: 64, offset: 128)
!2128 = !{!2129, !2130}
!2129 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2116, file: !2117, line: 39, type: !2120)
!2130 = !DILocalVariable(name: "__arg", arg: 2, scope: !2116, file: !2117, line: 39, type: !2121)
!2131 = !DILocation(line: 0, scope: !2116)
!2132 = !DILocation(line: 41, column: 20, scope: !2116)
!2133 = !DILocation(line: 41, column: 10, scope: !2116)
!2134 = !DILocation(line: 41, column: 3, scope: !2116)
!2135 = distinct !DISubprogram(name: "getchar", scope: !2117, file: !2117, line: 47, type: !2136, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!721}
!2138 = !{}
!2139 = !DILocation(line: 49, column: 16, scope: !2135)
!2140 = !DILocation(line: 49, column: 10, scope: !2135)
!2141 = !DILocation(line: 49, column: 3, scope: !2135)
!2142 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2117, file: !2117, line: 56, type: !2143, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!721, !1859}
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "__fp", arg: 1, scope: !2142, file: !2117, line: 56, type: !1859)
!2147 = !DILocation(line: 0, scope: !2142)
!2148 = !DILocation(line: 58, column: 10, scope: !2142)
!2149 = !DILocation(line: 58, column: 3, scope: !2142)
!2150 = distinct !DISubprogram(name: "getc_unlocked", scope: !2117, file: !2117, line: 66, type: !2143, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2151)
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "__fp", arg: 1, scope: !2150, file: !2117, line: 66, type: !1859)
!2153 = !DILocation(line: 0, scope: !2150)
!2154 = !DILocation(line: 68, column: 10, scope: !2150)
!2155 = !DILocation(line: 68, column: 3, scope: !2150)
!2156 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2117, file: !2117, line: 73, type: !2136, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2157 = !DILocation(line: 75, column: 10, scope: !2156)
!2158 = !DILocation(line: 75, column: 3, scope: !2156)
!2159 = distinct !DISubprogram(name: "putchar", scope: !2117, file: !2117, line: 82, type: !2160, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!721, !721}
!2162 = !{!2163}
!2163 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2117, line: 82, type: !721)
!2164 = !DILocation(line: 0, scope: !2159)
!2165 = !DILocation(line: 84, column: 21, scope: !2159)
!2166 = !DILocation(line: 84, column: 10, scope: !2159)
!2167 = !DILocation(line: 84, column: 3, scope: !2159)
!2168 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2117, file: !2117, line: 91, type: !2169, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!721, !721, !1859}
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "__c", arg: 1, scope: !2168, file: !2117, line: 91, type: !721)
!2173 = !DILocalVariable(name: "__stream", arg: 2, scope: !2168, file: !2117, line: 91, type: !1859)
!2174 = !DILocation(line: 0, scope: !2168)
!2175 = !DILocation(line: 93, column: 10, scope: !2168)
!2176 = !DILocation(line: 93, column: 3, scope: !2168)
!2177 = distinct !DISubprogram(name: "putc_unlocked", scope: !2117, file: !2117, line: 101, type: !2169, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "__c", arg: 1, scope: !2177, file: !2117, line: 101, type: !721)
!2180 = !DILocalVariable(name: "__stream", arg: 2, scope: !2177, file: !2117, line: 101, type: !1859)
!2181 = !DILocation(line: 0, scope: !2177)
!2182 = !DILocation(line: 103, column: 10, scope: !2177)
!2183 = !DILocation(line: 103, column: 3, scope: !2177)
!2184 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2117, file: !2117, line: 108, type: !2160, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2185 = !{!2186}
!2186 = !DILocalVariable(name: "__c", arg: 1, scope: !2184, file: !2117, line: 108, type: !721)
!2187 = !DILocation(line: 0, scope: !2184)
!2188 = !DILocation(line: 110, column: 10, scope: !2184)
!2189 = !DILocation(line: 110, column: 3, scope: !2184)
!2190 = distinct !DISubprogram(name: "getline", scope: !2117, file: !2117, line: 118, type: !2191, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !722, !2194, !1859}
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1886, line: 193, baseType: !777)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2190, file: !2117, line: 118, type: !722)
!2197 = !DILocalVariable(name: "__n", arg: 2, scope: !2190, file: !2117, line: 118, type: !2194)
!2198 = !DILocalVariable(name: "__stream", arg: 3, scope: !2190, file: !2117, line: 118, type: !1859)
!2199 = !DILocation(line: 0, scope: !2190)
!2200 = !DILocation(line: 120, column: 10, scope: !2190)
!2201 = !DILocation(line: 120, column: 3, scope: !2190)
!2202 = distinct !DISubprogram(name: "feof_unlocked", scope: !2117, file: !2117, line: 128, type: !2143, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "__stream", arg: 1, scope: !2202, file: !2117, line: 128, type: !1859)
!2205 = !DILocation(line: 0, scope: !2202)
!2206 = !DILocation(line: 130, column: 10, scope: !2202)
!2207 = !DILocation(line: 130, column: 3, scope: !2202)
!2208 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2117, file: !2117, line: 135, type: !2143, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "__stream", arg: 1, scope: !2208, file: !2117, line: 135, type: !1859)
!2211 = !DILocation(line: 0, scope: !2208)
!2212 = !DILocation(line: 137, column: 10, scope: !2208)
!2213 = !DILocation(line: 137, column: 3, scope: !2208)
!2214 = distinct !DISubprogram(name: "tolower", scope: !2215, file: !2215, line: 207, type: !2160, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2215 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "__c", arg: 1, scope: !2214, file: !2215, line: 207, type: !721)
!2218 = !DILocation(line: 0, scope: !2214)
!2219 = !DILocation(line: 209, column: 22, scope: !2214)
!2220 = !DILocation(line: 209, column: 39, scope: !2214)
!2221 = !DILocation(line: 209, column: 38, scope: !2214)
!2222 = !DILocation(line: 209, column: 37, scope: !2214)
!2223 = !DILocation(line: 209, column: 10, scope: !2214)
!2224 = !DILocation(line: 209, column: 3, scope: !2214)
!2225 = distinct !DISubprogram(name: "toupper", scope: !2215, file: !2215, line: 213, type: !2160, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "__c", arg: 1, scope: !2225, file: !2215, line: 213, type: !721)
!2228 = !DILocation(line: 0, scope: !2225)
!2229 = !DILocation(line: 215, column: 22, scope: !2225)
!2230 = !DILocation(line: 215, column: 39, scope: !2225)
!2231 = !DILocation(line: 215, column: 38, scope: !2225)
!2232 = !DILocation(line: 215, column: 37, scope: !2225)
!2233 = !DILocation(line: 215, column: 10, scope: !2225)
!2234 = !DILocation(line: 215, column: 3, scope: !2225)
!2235 = distinct !DISubprogram(name: "atoi", scope: !2236, file: !2236, line: 361, type: !2237, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2239)
!2236 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!721, !726}
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2235, file: !2236, line: 361, type: !726)
!2241 = !DILocation(line: 0, scope: !2235)
!2242 = !DILocation(line: 363, column: 16, scope: !2235)
!2243 = !DILocation(line: 363, column: 10, scope: !2235)
!2244 = !DILocation(line: 363, column: 3, scope: !2235)
!2245 = distinct !DISubprogram(name: "atol", scope: !2236, file: !2236, line: 366, type: !2246, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!777, !726}
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2245, file: !2236, line: 366, type: !726)
!2250 = !DILocation(line: 0, scope: !2245)
!2251 = !DILocation(line: 368, column: 10, scope: !2245)
!2252 = !DILocation(line: 368, column: 3, scope: !2245)
!2253 = distinct !DISubprogram(name: "atoll", scope: !2236, file: !2236, line: 373, type: !2254, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2256, !726}
!2256 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2257 = !{!2258}
!2258 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2253, file: !2236, line: 373, type: !726)
!2259 = !DILocation(line: 0, scope: !2253)
!2260 = !DILocation(line: 375, column: 10, scope: !2253)
!2261 = !DILocation(line: 375, column: 3, scope: !2253)
!2262 = distinct !DISubprogram(name: "bsearch", scope: !2263, file: !2263, line: 20, type: !2264, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!725, !1198, !1198, !1213, !1213, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2236, line: 808, baseType: !1202)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2268 = !DILocalVariable(name: "__key", arg: 1, scope: !2262, file: !2263, line: 20, type: !1198)
!2269 = !DILocalVariable(name: "__base", arg: 2, scope: !2262, file: !2263, line: 20, type: !1198)
!2270 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2262, file: !2263, line: 20, type: !1213)
!2271 = !DILocalVariable(name: "__size", arg: 4, scope: !2262, file: !2263, line: 20, type: !1213)
!2272 = !DILocalVariable(name: "__compar", arg: 5, scope: !2262, file: !2263, line: 21, type: !2266)
!2273 = !DILocalVariable(name: "__l", scope: !2262, file: !2263, line: 23, type: !1213)
!2274 = !DILocalVariable(name: "__u", scope: !2262, file: !2263, line: 23, type: !1213)
!2275 = !DILocalVariable(name: "__idx", scope: !2262, file: !2263, line: 23, type: !1213)
!2276 = !DILocalVariable(name: "__p", scope: !2262, file: !2263, line: 24, type: !1198)
!2277 = !DILocalVariable(name: "__comparison", scope: !2262, file: !2263, line: 25, type: !721)
!2278 = !DILocation(line: 0, scope: !2262)
!2279 = !DILocation(line: 29, column: 3, scope: !2262)
!2280 = !DILocation(line: 27, column: 7, scope: !2262)
!2281 = !DILocation(line: 29, column: 14, scope: !2262)
!2282 = !DILocation(line: 31, column: 20, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2262, file: !2263, line: 30, column: 5)
!2284 = !DILocation(line: 31, column: 27, scope: !2283)
!2285 = !DILocation(line: 32, column: 56, scope: !2283)
!2286 = !DILocation(line: 32, column: 47, scope: !2283)
!2287 = !DILocation(line: 33, column: 22, scope: !2283)
!2288 = !DILocation(line: 34, column: 24, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2283, file: !2263, line: 34, column: 11)
!2290 = !DILocation(line: 34, column: 11, scope: !2283)
!2291 = !DILocation(line: 36, column: 29, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !2263, line: 36, column: 16)
!2293 = !DILocation(line: 36, column: 16, scope: !2289)
!2294 = !DILocation(line: 37, column: 14, scope: !2292)
!2295 = distinct !{!2295, !2279, !2296}
!2296 = !DILocation(line: 40, column: 5, scope: !2262)
!2297 = !DILocation(line: 43, column: 1, scope: !2262)
!2298 = distinct !DISubprogram(name: "atof", scope: !2299, file: !2299, line: 25, type: !2300, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2302, !726}
!2302 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2303 = !{!2304}
!2304 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2298, file: !2299, line: 25, type: !726)
!2305 = !DILocation(line: 0, scope: !2298)
!2306 = !DILocation(line: 27, column: 10, scope: !2298)
!2307 = !DILocation(line: 27, column: 3, scope: !2298)
!2308 = distinct !DISubprogram(name: "strtoimax", scope: !2309, file: !2309, line: 324, type: !2310, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2309 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!2312, !2120, !2315, !721}
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2313, line: 101, baseType: !2314)
!2313 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1886, line: 72, baseType: !777)
!2315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !722)
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "nptr", arg: 1, scope: !2308, file: !2309, line: 324, type: !2120)
!2318 = !DILocalVariable(name: "endptr", arg: 2, scope: !2308, file: !2309, line: 324, type: !2315)
!2319 = !DILocalVariable(name: "base", arg: 3, scope: !2308, file: !2309, line: 324, type: !721)
!2320 = !DILocation(line: 0, scope: !2308)
!2321 = !DILocation(line: 327, column: 10, scope: !2308)
!2322 = !DILocation(line: 327, column: 3, scope: !2308)
!2323 = distinct !DISubprogram(name: "strtoumax", scope: !2309, file: !2309, line: 336, type: !2324, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2328)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2326, !2120, !2315, !721}
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2313, line: 102, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1886, line: 73, baseType: !760)
!2328 = !{!2329, !2330, !2331}
!2329 = !DILocalVariable(name: "nptr", arg: 1, scope: !2323, file: !2309, line: 336, type: !2120)
!2330 = !DILocalVariable(name: "endptr", arg: 2, scope: !2323, file: !2309, line: 336, type: !2315)
!2331 = !DILocalVariable(name: "base", arg: 3, scope: !2323, file: !2309, line: 336, type: !721)
!2332 = !DILocation(line: 0, scope: !2323)
!2333 = !DILocation(line: 339, column: 10, scope: !2323)
!2334 = !DILocation(line: 339, column: 3, scope: !2323)
!2335 = distinct !DISubprogram(name: "wcstoimax", scope: !2309, file: !2309, line: 348, type: !2336, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!2312, !2338, !2342, !721}
!2338 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2339)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2341)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2309, line: 34, baseType: !721)
!2342 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "nptr", arg: 1, scope: !2335, file: !2309, line: 348, type: !2338)
!2347 = !DILocalVariable(name: "endptr", arg: 2, scope: !2335, file: !2309, line: 348, type: !2342)
!2348 = !DILocalVariable(name: "base", arg: 3, scope: !2335, file: !2309, line: 348, type: !721)
!2349 = !DILocation(line: 0, scope: !2335)
!2350 = !DILocation(line: 351, column: 10, scope: !2335)
!2351 = !DILocation(line: 351, column: 3, scope: !2335)
!2352 = distinct !DISubprogram(name: "wcstoumax", scope: !2309, file: !2309, line: 362, type: !2353, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2326, !2338, !2342, !721}
!2355 = !{!2356, !2357, !2358}
!2356 = !DILocalVariable(name: "nptr", arg: 1, scope: !2352, file: !2309, line: 362, type: !2338)
!2357 = !DILocalVariable(name: "endptr", arg: 2, scope: !2352, file: !2309, line: 362, type: !2342)
!2358 = !DILocalVariable(name: "base", arg: 3, scope: !2352, file: !2309, line: 362, type: !721)
!2359 = !DILocation(line: 0, scope: !2352)
!2360 = !DILocation(line: 365, column: 10, scope: !2352)
!2361 = !DILocation(line: 365, column: 3, scope: !2352)
!2362 = distinct !DISubprogram(name: "stat", scope: !2363, file: !2363, line: 453, type: !2364, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!721, !726, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2368, line: 46, size: 1152, elements: !2369)
!2368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2369 = !{!2370, !2372, !2374, !2376, !2378, !2380, !2382, !2383, !2384, !2385, !2387, !2389, !2397, !2398, !2399}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2367, file: !2368, line: 48, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1886, line: 145, baseType: !760)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2367, file: !2368, line: 53, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1886, line: 148, baseType: !760)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2367, file: !2368, line: 61, baseType: !2375, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1886, line: 151, baseType: !760)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2367, file: !2368, line: 62, baseType: !2377, size: 32, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1886, line: 150, baseType: !7)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2367, file: !2368, line: 64, baseType: !2379, size: 32, offset: 224)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1886, line: 146, baseType: !7)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2367, file: !2368, line: 65, baseType: !2381, size: 32, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1886, line: 147, baseType: !7)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2367, file: !2368, line: 67, baseType: !721, size: 32, offset: 288)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2367, file: !2368, line: 69, baseType: !2371, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2367, file: !2368, line: 74, baseType: !1885, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2367, file: !2368, line: 78, baseType: !2386, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1886, line: 174, baseType: !777)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2367, file: !2368, line: 80, baseType: !2388, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1886, line: 179, baseType: !777)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2367, file: !2368, line: 91, baseType: !2390, size: 128, offset: 576)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2391, line: 10, size: 128, elements: !2392)
!2391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2392 = !{!2393, !2395}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2390, file: !2391, line: 12, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1886, line: 160, baseType: !777)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2390, file: !2391, line: 16, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1886, line: 196, baseType: !777)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2367, file: !2368, line: 92, baseType: !2390, size: 128, offset: 704)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2367, file: !2368, line: 93, baseType: !2390, size: 128, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2367, file: !2368, line: 106, baseType: !2400, size: 192, offset: 960)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, size: 192, elements: !968)
!2401 = !{!2402, !2403}
!2402 = !DILocalVariable(name: "__path", arg: 1, scope: !2362, file: !2363, line: 453, type: !726)
!2403 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2362, file: !2363, line: 453, type: !2366)
!2404 = !DILocation(line: 0, scope: !2362)
!2405 = !DILocation(line: 455, column: 10, scope: !2362)
!2406 = !DILocation(line: 455, column: 3, scope: !2362)
!2407 = distinct !DISubprogram(name: "lstat", scope: !2363, file: !2363, line: 460, type: !2364, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "__path", arg: 1, scope: !2407, file: !2363, line: 460, type: !726)
!2410 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2407, file: !2363, line: 460, type: !2366)
!2411 = !DILocation(line: 0, scope: !2407)
!2412 = !DILocation(line: 462, column: 10, scope: !2407)
!2413 = !DILocation(line: 462, column: 3, scope: !2407)
!2414 = distinct !DISubprogram(name: "fstat", scope: !2363, file: !2363, line: 467, type: !2415, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!721, !721, !2366}
!2417 = !{!2418, !2419}
!2418 = !DILocalVariable(name: "__fd", arg: 1, scope: !2414, file: !2363, line: 467, type: !721)
!2419 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2414, file: !2363, line: 467, type: !2366)
!2420 = !DILocation(line: 0, scope: !2414)
!2421 = !DILocation(line: 469, column: 10, scope: !2414)
!2422 = !DILocation(line: 469, column: 3, scope: !2414)
!2423 = distinct !DISubprogram(name: "fstatat", scope: !2363, file: !2363, line: 474, type: !2424, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!721, !721, !726, !2366, !721}
!2426 = !{!2427, !2428, !2429, !2430}
!2427 = !DILocalVariable(name: "__fd", arg: 1, scope: !2423, file: !2363, line: 474, type: !721)
!2428 = !DILocalVariable(name: "__filename", arg: 2, scope: !2423, file: !2363, line: 474, type: !726)
!2429 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2423, file: !2363, line: 474, type: !2366)
!2430 = !DILocalVariable(name: "__flag", arg: 4, scope: !2423, file: !2363, line: 474, type: !721)
!2431 = !DILocation(line: 0, scope: !2423)
!2432 = !DILocation(line: 477, column: 10, scope: !2423)
!2433 = !DILocation(line: 477, column: 3, scope: !2423)
!2434 = distinct !DISubprogram(name: "mknod", scope: !2363, file: !2363, line: 483, type: !2435, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!721, !726, !2377, !2371}
!2437 = !{!2438, !2439, !2440}
!2438 = !DILocalVariable(name: "__path", arg: 1, scope: !2434, file: !2363, line: 483, type: !726)
!2439 = !DILocalVariable(name: "__mode", arg: 2, scope: !2434, file: !2363, line: 483, type: !2377)
!2440 = !DILocalVariable(name: "__dev", arg: 3, scope: !2434, file: !2363, line: 483, type: !2371)
!2441 = !DILocation(line: 0, scope: !2434)
!2442 = !DILocation(line: 485, column: 10, scope: !2434)
!2443 = !DILocation(line: 485, column: 3, scope: !2434)
!2444 = distinct !DISubprogram(name: "mknodat", scope: !2363, file: !2363, line: 491, type: !2445, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!721, !721, !726, !2377, !2371}
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "__fd", arg: 1, scope: !2444, file: !2363, line: 491, type: !721)
!2449 = !DILocalVariable(name: "__path", arg: 2, scope: !2444, file: !2363, line: 491, type: !726)
!2450 = !DILocalVariable(name: "__mode", arg: 3, scope: !2444, file: !2363, line: 491, type: !2377)
!2451 = !DILocalVariable(name: "__dev", arg: 4, scope: !2444, file: !2363, line: 491, type: !2371)
!2452 = !DILocation(line: 0, scope: !2444)
!2453 = !DILocation(line: 494, column: 10, scope: !2444)
!2454 = !DILocation(line: 494, column: 3, scope: !2444)
!2455 = distinct !DISubprogram(name: "stat64", scope: !2363, file: !2363, line: 502, type: !2456, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!721, !726, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2368, line: 119, size: 1152, elements: !2460)
!2460 = !{!2461, !2462, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2474, !2475, !2476, !2477}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2459, file: !2368, line: 121, baseType: !2371, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2459, file: !2368, line: 123, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1886, line: 149, baseType: !760)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2459, file: !2368, line: 124, baseType: !2375, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2459, file: !2368, line: 125, baseType: !2377, size: 32, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2459, file: !2368, line: 132, baseType: !2379, size: 32, offset: 224)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2459, file: !2368, line: 133, baseType: !2381, size: 32, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2459, file: !2368, line: 135, baseType: !721, size: 32, offset: 288)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2459, file: !2368, line: 136, baseType: !2371, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2459, file: !2368, line: 137, baseType: !1885, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2459, file: !2368, line: 143, baseType: !2386, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2459, file: !2368, line: 144, baseType: !2473, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1886, line: 180, baseType: !777)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2459, file: !2368, line: 152, baseType: !2390, size: 128, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2459, file: !2368, line: 153, baseType: !2390, size: 128, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2459, file: !2368, line: 154, baseType: !2390, size: 128, offset: 832)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2459, file: !2368, line: 164, baseType: !2400, size: 192, offset: 960)
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "__path", arg: 1, scope: !2455, file: !2363, line: 502, type: !726)
!2480 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2455, file: !2363, line: 502, type: !2458)
!2481 = !DILocation(line: 0, scope: !2455)
!2482 = !DILocation(line: 504, column: 10, scope: !2455)
!2483 = !DILocation(line: 504, column: 3, scope: !2455)
!2484 = distinct !DISubprogram(name: "lstat64", scope: !2363, file: !2363, line: 509, type: !2456, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2485)
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "__path", arg: 1, scope: !2484, file: !2363, line: 509, type: !726)
!2487 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2484, file: !2363, line: 509, type: !2458)
!2488 = !DILocation(line: 0, scope: !2484)
!2489 = !DILocation(line: 511, column: 10, scope: !2484)
!2490 = !DILocation(line: 511, column: 3, scope: !2484)
!2491 = distinct !DISubprogram(name: "fstat64", scope: !2363, file: !2363, line: 516, type: !2492, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!721, !721, !2458}
!2494 = !{!2495, !2496}
!2495 = !DILocalVariable(name: "__fd", arg: 1, scope: !2491, file: !2363, line: 516, type: !721)
!2496 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2491, file: !2363, line: 516, type: !2458)
!2497 = !DILocation(line: 0, scope: !2491)
!2498 = !DILocation(line: 518, column: 10, scope: !2491)
!2499 = !DILocation(line: 518, column: 3, scope: !2491)
!2500 = distinct !DISubprogram(name: "fstatat64", scope: !2363, file: !2363, line: 523, type: !2501, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!721, !721, !726, !2458, !721}
!2503 = !{!2504, !2505, !2506, !2507}
!2504 = !DILocalVariable(name: "__fd", arg: 1, scope: !2500, file: !2363, line: 523, type: !721)
!2505 = !DILocalVariable(name: "__filename", arg: 2, scope: !2500, file: !2363, line: 523, type: !726)
!2506 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2500, file: !2363, line: 523, type: !2458)
!2507 = !DILocalVariable(name: "__flag", arg: 4, scope: !2500, file: !2363, line: 523, type: !721)
!2508 = !DILocation(line: 0, scope: !2500)
!2509 = !DILocation(line: 526, column: 10, scope: !2500)
!2510 = !DILocation(line: 526, column: 3, scope: !2500)
!2511 = distinct !DISubprogram(name: "df_add_problem", scope: !3, file: !3, line: 422, type: !2512, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !732}
!2514 = !{!2515, !2516, !2517}
!2515 = !DILocalVariable(name: "problem", arg: 1, scope: !2511, file: !3, line: 422, type: !732)
!2516 = !DILocalVariable(name: "dflow", scope: !2511, file: !3, line: 424, type: !728)
!2517 = !DILocalVariable(name: "i", scope: !2511, file: !3, line: 425, type: !721)
!2518 = !DILocation(line: 0, scope: !2511)
!2519 = !DILocation(line: 428, column: 16, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 428, column: 7)
!2521 = !DILocation(line: 428, column: 7, scope: !2520)
!2522 = !DILocation(line: 428, column: 7, scope: !2511)
!2523 = !DILocation(line: 429, column: 5, scope: !2520)
!2524 = !DILocation(line: 434, column: 11, scope: !2511)
!2525 = !DILocation(line: 434, column: 42, scope: !2511)
!2526 = !DILocation(line: 435, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 435, column: 7)
!2528 = !DILocation(line: 435, column: 7, scope: !2511)
!2529 = !DILocation(line: 439, column: 11, scope: !2511)
!2530 = !DILocation(line: 440, column: 10, scope: !2511)
!2531 = !DILocation(line: 440, column: 18, scope: !2511)
!2532 = !DILocation(line: 441, column: 10, scope: !2511)
!2533 = !DILocation(line: 441, column: 19, scope: !2511)
!2534 = !DILocation(line: 442, column: 10, scope: !2511)
!2535 = !DILocation(line: 442, column: 26, scope: !2511)
!2536 = !DILocation(line: 443, column: 3, scope: !2511)
!2537 = !DILocation(line: 443, column: 41, scope: !2511)
!2538 = !DILocation(line: 443, column: 45, scope: !2511)
!2539 = !DILocation(line: 452, column: 3, scope: !2511)
!2540 = !DILocation(line: 452, column: 7, scope: !2511)
!2541 = !DILocation(line: 452, column: 27, scope: !2511)
!2542 = !DILocation(line: 453, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 453, column: 3)
!2544 = !DILocation(line: 0, scope: !2543)
!2545 = !DILocation(line: 453, column: 44, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 453, column: 3)
!2547 = !DILocation(line: 453, column: 3, scope: !2543)
!2548 = !DILocation(line: 455, column: 20, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 455, column: 11)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 454, column: 5)
!2551 = !DILocation(line: 455, column: 25, scope: !2549)
!2552 = !DILocation(line: 455, column: 51, scope: !2549)
!2553 = !DILocation(line: 455, column: 60, scope: !2549)
!2554 = !DILocation(line: 455, column: 23, scope: !2549)
!2555 = !DILocation(line: 455, column: 11, scope: !2550)
!2556 = !DILocation(line: 456, column: 2, scope: !2549)
!2557 = !DILocation(line: 456, column: 29, scope: !2549)
!2558 = !DILocation(line: 453, column: 3, scope: !2546)
!2559 = distinct !{!2559, !2547, !2560}
!2560 = !DILocation(line: 462, column: 5, scope: !2543)
!2561 = !DILocation(line: 459, column: 4, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 458, column: 2)
!2563 = !DILocation(line: 459, column: 31, scope: !2562)
!2564 = !DILocation(line: 460, column: 4, scope: !2562)
!2565 = !DILocation(line: 463, column: 3, scope: !2511)
!2566 = !DILocation(line: 463, column: 28, scope: !2511)
!2567 = !DILocation(line: 464, column: 1, scope: !2511)
!2568 = distinct !DISubprogram(name: "df_set_flags", scope: !3, file: !3, line: 471, type: !2160, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2569)
!2569 = !{!2570, !2571}
!2570 = !DILocalVariable(name: "changeable_flags", arg: 1, scope: !2568, file: !3, line: 471, type: !721)
!2571 = !DILocalVariable(name: "old_flags", scope: !2568, file: !3, line: 473, type: !721)
!2572 = !DILocation(line: 0, scope: !2568)
!2573 = !DILocation(line: 473, column: 19, scope: !2568)
!2574 = !DILocation(line: 473, column: 23, scope: !2568)
!2575 = !DILocation(line: 474, column: 24, scope: !2568)
!2576 = !DILocation(line: 475, column: 3, scope: !2568)
!2577 = distinct !DISubprogram(name: "df_clear_flags", scope: !3, file: !3, line: 483, type: !2160, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2578)
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "changeable_flags", arg: 1, scope: !2577, file: !3, line: 483, type: !721)
!2580 = !DILocalVariable(name: "old_flags", scope: !2577, file: !3, line: 485, type: !721)
!2581 = !DILocation(line: 0, scope: !2577)
!2582 = !DILocation(line: 485, column: 19, scope: !2577)
!2583 = !DILocation(line: 485, column: 23, scope: !2577)
!2584 = !DILocation(line: 486, column: 24, scope: !2577)
!2585 = !DILocation(line: 487, column: 3, scope: !2577)
!2586 = distinct !DISubprogram(name: "df_set_blocks", scope: !3, file: !3, line: 496, type: !740, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2587)
!2587 = !{!2588, !2589, !2594, !2595, !2599, !2610, !2611, !2615, !2618, !2620, !2621, !2625}
!2588 = !DILocalVariable(name: "blocks", arg: 1, scope: !2586, file: !3, line: 496, type: !742)
!2589 = !DILocalVariable(name: "p", scope: !2590, file: !3, line: 506, type: !721)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 503, column: 2)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 502, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 499, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 498, column: 7)
!2594 = !DILocalVariable(name: "diff", scope: !2590, file: !3, line: 507, type: !742)
!2595 = !DILocalVariable(name: "dflow", scope: !2596, file: !3, line: 511, type: !728)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 510, column: 6)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 509, column: 4)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 509, column: 4)
!2599 = !DILocalVariable(name: "bi", scope: !2600, file: !3, line: 516, type: !2603)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 515, column: 3)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 514, column: 17)
!2602 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 512, column: 12)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !746, line: 218, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !746, line: 203, size: 256, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2604, file: !746, line: 206, baseType: !749, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2604, file: !746, line: 209, baseType: !749, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2604, file: !746, line: 212, baseType: !7, size: 32, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2604, file: !746, line: 217, baseType: !759, size: 64, offset: 192)
!2610 = !DILocalVariable(name: "bb_index", scope: !2600, file: !3, line: 517, type: !7)
!2611 = !DILocalVariable(name: "bb", scope: !2612, file: !3, line: 521, type: !812)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 520, column: 7)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 519, column: 5)
!2614 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 519, column: 5)
!2615 = !DILocalVariable(name: "bb_info", scope: !2616, file: !3, line: 524, type: !725)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 523, column: 4)
!2617 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 522, column: 13)
!2618 = !DILocalVariable(name: "blocks_to_reset", scope: !2619, file: !3, line: 541, type: !742)
!2619 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 538, column: 2)
!2620 = !DILocalVariable(name: "p", scope: !2619, file: !3, line: 542, type: !721)
!2621 = !DILocalVariable(name: "dflow", scope: !2622, file: !3, line: 545, type: !728)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 544, column: 6)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 543, column: 4)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 543, column: 4)
!2625 = !DILocalVariable(name: "bb", scope: !2626, file: !3, line: 550, type: !812)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 549, column: 7)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 548, column: 9)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 547, column: 3)
!2629 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 546, column: 12)
!2630 = !DILocation(line: 0, scope: !2586)
!2631 = !DILocation(line: 498, column: 7, scope: !2593)
!2632 = !DILocation(line: 0, scope: !2593)
!2633 = !DILocation(line: 498, column: 7, scope: !2586)
!2634 = !DILocation(line: 500, column: 11, scope: !2592)
!2635 = !DILocation(line: 501, column: 2, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 500, column: 11)
!2637 = !DILocation(line: 502, column: 11, scope: !2591)
!2638 = !DILocation(line: 502, column: 15, scope: !2591)
!2639 = !DILocation(line: 502, column: 11, scope: !2592)
!2640 = !DILocation(line: 543, column: 4, scope: !2624)
!2641 = !DILocation(line: 507, column: 18, scope: !2590)
!2642 = !DILocation(line: 0, scope: !2590)
!2643 = !DILocation(line: 508, column: 28, scope: !2590)
!2644 = !DILocation(line: 508, column: 32, scope: !2590)
!2645 = !DILocation(line: 508, column: 4, scope: !2590)
!2646 = !DILocation(line: 0, scope: !2600)
!2647 = !DILocation(line: 509, column: 9, scope: !2598)
!2648 = !DILocation(line: 0, scope: !2598)
!2649 = !DILocation(line: 509, column: 20, scope: !2597)
!2650 = !DILocation(line: 509, column: 24, scope: !2597)
!2651 = !DILocation(line: 509, column: 18, scope: !2597)
!2652 = !DILocation(line: 509, column: 4, scope: !2598)
!2653 = !DILocation(line: 511, column: 33, scope: !2596)
!2654 = !DILocation(line: 0, scope: !2596)
!2655 = !DILocation(line: 512, column: 19, scope: !2602)
!2656 = !DILocation(line: 512, column: 12, scope: !2602)
!2657 = !DILocation(line: 512, column: 30, scope: !2602)
!2658 = !DILocation(line: 0, scope: !2601)
!2659 = !DILocation(line: 514, column: 24, scope: !2601)
!2660 = !DILocation(line: 512, column: 40, scope: !2602)
!2661 = !DILocation(line: 512, column: 49, scope: !2602)
!2662 = !DILocation(line: 512, column: 33, scope: !2602)
!2663 = !DILocation(line: 512, column: 12, scope: !2596)
!2664 = !DILocation(line: 513, column: 34, scope: !2602)
!2665 = !DILocation(line: 513, column: 3, scope: !2602)
!2666 = !DILocation(line: 514, column: 33, scope: !2601)
!2667 = !DILocation(line: 514, column: 17, scope: !2601)
!2668 = !DILocation(line: 514, column: 17, scope: !2602)
!2669 = !DILocation(line: 516, column: 5, scope: !2600)
!2670 = !DILocation(line: 517, column: 5, scope: !2600)
!2671 = !DILocation(line: 519, column: 5, scope: !2614)
!2672 = !DILocation(line: 519, column: 5, scope: !2613)
!2673 = !DILocation(line: 521, column: 26, scope: !2612)
!2674 = !DILocation(line: 0, scope: !2612)
!2675 = !DILocation(line: 522, column: 13, scope: !2617)
!2676 = !DILocation(line: 522, column: 13, scope: !2612)
!2677 = !DILocation(line: 524, column: 45, scope: !2616)
!2678 = !DILocation(line: 524, column: 22, scope: !2616)
!2679 = !DILocation(line: 0, scope: !2616)
!2680 = !DILocation(line: 525, column: 10, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 525, column: 10)
!2682 = !DILocation(line: 525, column: 10, scope: !2616)
!2683 = !DILocation(line: 527, column: 17, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 526, column: 8)
!2685 = !DILocation(line: 527, column: 26, scope: !2684)
!2686 = !DILocation(line: 527, column: 10, scope: !2684)
!2687 = !DILocation(line: 528, column: 33, scope: !2684)
!2688 = !DILocation(line: 528, column: 10, scope: !2684)
!2689 = !DILocation(line: 529, column: 8, scope: !2684)
!2690 = distinct !{!2690, !2671, !2691}
!2691 = !DILocation(line: 531, column: 7, scope: !2614)
!2692 = !DILocation(line: 532, column: 3, scope: !2601)
!2693 = !DILocation(line: 532, column: 3, scope: !2600)
!2694 = !DILocation(line: 509, column: 47, scope: !2597)
!2695 = !DILocation(line: 509, column: 4, scope: !2597)
!2696 = distinct !{!2696, !2652, !2697}
!2697 = !DILocation(line: 533, column: 6, scope: !2598)
!2698 = !DILocation(line: 535, column: 4, scope: !2590)
!2699 = !DILocation(line: 566, column: 20, scope: !2592)
!2700 = !DILocation(line: 0, scope: !2592)
!2701 = !DILocation(line: 566, column: 24, scope: !2592)
!2702 = !DILocation(line: 536, column: 2, scope: !2590)
!2703 = !DILocation(line: 543, column: 20, scope: !2623)
!2704 = !DILocation(line: 541, column: 11, scope: !2619)
!2705 = !DILocation(line: 0, scope: !2619)
!2706 = !DILocation(line: 543, column: 24, scope: !2623)
!2707 = !DILocation(line: 543, column: 18, scope: !2623)
!2708 = !DILocation(line: 545, column: 33, scope: !2622)
!2709 = !DILocation(line: 0, scope: !2622)
!2710 = !DILocation(line: 546, column: 19, scope: !2629)
!2711 = !DILocation(line: 546, column: 12, scope: !2629)
!2712 = !DILocation(line: 546, column: 30, scope: !2629)
!2713 = !DILocation(line: 546, column: 40, scope: !2629)
!2714 = !DILocation(line: 546, column: 49, scope: !2629)
!2715 = !DILocation(line: 546, column: 33, scope: !2629)
!2716 = !DILocation(line: 546, column: 12, scope: !2622)
!2717 = !DILocation(line: 548, column: 10, scope: !2627)
!2718 = !DILocation(line: 548, column: 9, scope: !2628)
!2719 = !DILocation(line: 552, column: 4, scope: !2626)
!2720 = !DILocation(line: 553, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 553, column: 9)
!2722 = !DILocation(line: 0, scope: !2721)
!2723 = !DILocation(line: 0, scope: !2626)
!2724 = !DILocation(line: 555, column: 43, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 554, column: 4)
!2726 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 553, column: 9)
!2727 = !DILocation(line: 555, column: 6, scope: !2725)
!2728 = !DILocation(line: 553, column: 9, scope: !2726)
!2729 = distinct !{!2729, !2720, !2730}
!2730 = !DILocation(line: 556, column: 4, scope: !2721)
!2731 = !DILocation(line: 558, column: 12, scope: !2628)
!2732 = !DILocation(line: 0, scope: !2628)
!2733 = !DILocation(line: 558, column: 21, scope: !2628)
!2734 = !DILocation(line: 558, column: 5, scope: !2628)
!2735 = !DILocation(line: 559, column: 3, scope: !2628)
!2736 = !DILocation(line: 543, column: 47, scope: !2623)
!2737 = !DILocation(line: 543, column: 4, scope: !2623)
!2738 = distinct !{!2738, !2640, !2739}
!2739 = !DILocation(line: 560, column: 6, scope: !2624)
!2740 = !DILocation(line: 561, column: 8, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 561, column: 8)
!2742 = !DILocation(line: 561, column: 8, scope: !2619)
!2743 = !DILocation(line: 562, column: 6, scope: !2741)
!2744 = !DILocation(line: 564, column: 28, scope: !2619)
!2745 = !DILocation(line: 564, column: 4, scope: !2619)
!2746 = !DILocation(line: 564, column: 8, scope: !2619)
!2747 = !DILocation(line: 564, column: 26, scope: !2619)
!2748 = !DILocation(line: 566, column: 7, scope: !2592)
!2749 = !DILocation(line: 567, column: 7, scope: !2592)
!2750 = !DILocation(line: 567, column: 11, scope: !2592)
!2751 = !DILocation(line: 567, column: 26, scope: !2592)
!2752 = !DILocation(line: 568, column: 5, scope: !2592)
!2753 = !DILocation(line: 573, column: 11, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 570, column: 5)
!2755 = !DILocation(line: 574, column: 2, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 573, column: 11)
!2757 = !DILocation(line: 575, column: 11, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 575, column: 11)
!2759 = !DILocation(line: 575, column: 15, scope: !2758)
!2760 = !DILocation(line: 575, column: 11, scope: !2754)
!2761 = !DILocation(line: 577, column: 4, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 576, column: 2)
!2763 = !DILocation(line: 578, column: 8, scope: !2762)
!2764 = !DILocation(line: 578, column: 26, scope: !2762)
!2765 = !DILocation(line: 579, column: 2, scope: !2762)
!2766 = !DILocation(line: 580, column: 7, scope: !2754)
!2767 = !DILocation(line: 580, column: 11, scope: !2754)
!2768 = !DILocation(line: 580, column: 26, scope: !2754)
!2769 = !DILocation(line: 585, column: 3, scope: !2586)
!2770 = !DILocation(line: 586, column: 3, scope: !2586)
!2771 = !DILocation(line: 587, column: 3, scope: !2586)
!2772 = !DILocation(line: 588, column: 1, scope: !2586)
!2773 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !746, file: !746, line: 224, type: !2774, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2776, !2777, !7, !1954}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !743, line: 48, baseType: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!2780 = !{!2781, !2782, !2783, !2784}
!2781 = !DILocalVariable(name: "bi", arg: 1, scope: !2773, file: !746, line: 224, type: !2776)
!2782 = !DILocalVariable(name: "map", arg: 2, scope: !2773, file: !746, line: 224, type: !2777)
!2783 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2773, file: !746, line: 225, type: !7)
!2784 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2773, file: !746, line: 225, type: !1954)
!2785 = !DILocation(line: 0, scope: !2773)
!2786 = !DILocation(line: 227, column: 19, scope: !2773)
!2787 = !DILocation(line: 227, column: 12, scope: !2773)
!2788 = !DILocation(line: 228, column: 7, scope: !2773)
!2789 = !DILocation(line: 228, column: 12, scope: !2773)
!2790 = !DILocation(line: 0, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !746, line: 233, column: 11)
!2792 = distinct !DILexicalBlock(scope: !2773, file: !746, line: 232, column: 5)
!2793 = !DILocation(line: 0, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2792, file: !746, line: 239, column: 11)
!2795 = !DILocation(line: 231, column: 3, scope: !2773)
!2796 = !DILocation(line: 233, column: 16, scope: !2791)
!2797 = !DILocation(line: 233, column: 12, scope: !2791)
!2798 = !DILocation(line: 233, column: 11, scope: !2792)
!2799 = !DILocation(line: 235, column: 13, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2791, file: !746, line: 234, column: 2)
!2801 = !DILocation(line: 236, column: 4, scope: !2800)
!2802 = !DILocation(line: 239, column: 21, scope: !2794)
!2803 = !DILocation(line: 239, column: 26, scope: !2794)
!2804 = !DILocation(line: 239, column: 11, scope: !2792)
!2805 = !DILocation(line: 241, column: 28, scope: !2792)
!2806 = !DILocation(line: 241, column: 16, scope: !2792)
!2807 = distinct !{!2807, !2795, !2808}
!2808 = !DILocation(line: 242, column: 5, scope: !2773)
!2809 = !DILocation(line: 245, column: 11, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2773, file: !746, line: 245, column: 7)
!2811 = !DILocation(line: 245, column: 17, scope: !2810)
!2812 = !DILocation(line: 245, column: 22, scope: !2810)
!2813 = !DILocation(line: 245, column: 7, scope: !2773)
!2814 = !DILocation(line: 246, column: 27, scope: !2810)
!2815 = !DILocation(line: 246, column: 32, scope: !2810)
!2816 = !DILocation(line: 246, column: 5, scope: !2810)
!2817 = !DILocation(line: 249, column: 27, scope: !2773)
!2818 = !DILocation(line: 249, column: 46, scope: !2773)
!2819 = !DILocation(line: 249, column: 7, scope: !2773)
!2820 = !DILocation(line: 249, column: 15, scope: !2773)
!2821 = !DILocation(line: 250, column: 14, scope: !2773)
!2822 = !DILocation(line: 251, column: 26, scope: !2773)
!2823 = !DILocation(line: 251, column: 7, scope: !2773)
!2824 = !DILocation(line: 251, column: 12, scope: !2773)
!2825 = !DILocation(line: 257, column: 16, scope: !2773)
!2826 = !DILocation(line: 257, column: 13, scope: !2773)
!2827 = !DILocation(line: 259, column: 11, scope: !2773)
!2828 = !DILocation(line: 260, column: 1, scope: !2773)
!2829 = distinct !DISubprogram(name: "bmp_iter_set", scope: !746, file: !746, line: 393, type: !2830, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!720, !2776, !1954}
!2832 = !{!2833, !2834, !2835}
!2833 = !DILocalVariable(name: "bi", arg: 1, scope: !2829, file: !746, line: 393, type: !2776)
!2834 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2829, file: !746, line: 393, type: !1954)
!2835 = !DILabel(scope: !2836, name: "next_bit", file: !746, line: 398)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !746, line: 397, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !746, line: 396, column: 7)
!2838 = !DILocation(line: 0, scope: !2829)
!2839 = !DILocation(line: 396, column: 11, scope: !2837)
!2840 = !DILocation(line: 396, column: 7, scope: !2837)
!2841 = !DILocation(line: 396, column: 7, scope: !2829)
!2842 = !DILocation(line: 419, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !746, line: 418, column: 2)
!2844 = distinct !DILexicalBlock(scope: !2829, file: !746, line: 415, column: 5)
!2845 = !DILocation(line: 399, column: 7, scope: !2836)
!2846 = !DILocation(line: 398, column: 5, scope: !2836)
!2847 = !DILocation(line: 399, column: 20, scope: !2836)
!2848 = !DILocation(line: 399, column: 25, scope: !2836)
!2849 = !DILocation(line: 399, column: 14, scope: !2836)
!2850 = !DILocation(line: 401, column: 13, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2836, file: !746, line: 400, column: 2)
!2852 = !DILocation(line: 402, column: 12, scope: !2851)
!2853 = distinct !{!2853, !2845, !2854}
!2854 = !DILocation(line: 403, column: 2, scope: !2836)
!2855 = !DILocation(line: 410, column: 15, scope: !2829)
!2856 = !DILocation(line: 410, column: 42, scope: !2829)
!2857 = !DILocation(line: 411, column: 26, scope: !2829)
!2858 = !DILocation(line: 410, column: 11, scope: !2829)
!2859 = !DILocation(line: 412, column: 7, scope: !2829)
!2860 = !DILocation(line: 412, column: 14, scope: !2829)
!2861 = !DILocation(line: 0, scope: !2844)
!2862 = !DILocation(line: 414, column: 3, scope: !2829)
!2863 = !DILocation(line: 417, column: 7, scope: !2844)
!2864 = !DILocation(line: 417, column: 18, scope: !2844)
!2865 = !DILocation(line: 417, column: 26, scope: !2844)
!2866 = !DILocation(line: 419, column: 13, scope: !2843)
!2867 = !DILocation(line: 420, column: 8, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2843, file: !746, line: 420, column: 8)
!2869 = !DILocation(line: 420, column: 8, scope: !2843)
!2870 = !DILocation(line: 422, column: 12, scope: !2843)
!2871 = !DILocation(line: 423, column: 15, scope: !2843)
!2872 = distinct !{!2872, !2863, !2873}
!2873 = !DILocation(line: 424, column: 2, scope: !2844)
!2874 = !DILocation(line: 427, column: 28, scope: !2844)
!2875 = !DILocation(line: 427, column: 16, scope: !2844)
!2876 = !DILocation(line: 428, column: 12, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2844, file: !746, line: 428, column: 11)
!2878 = !DILocation(line: 428, column: 11, scope: !2844)
!2879 = !DILocation(line: 430, column: 27, scope: !2844)
!2880 = !DILocation(line: 430, column: 32, scope: !2844)
!2881 = !DILocation(line: 430, column: 15, scope: !2844)
!2882 = !DILocation(line: 431, column: 19, scope: !2844)
!2883 = distinct !{!2883, !2862, !2884}
!2884 = !DILocation(line: 432, column: 5, scope: !2829)
!2885 = !DILocation(line: 433, column: 1, scope: !2829)
!2886 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !141, file: !141, line: 281, type: !2887, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2891)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!812, !2889, !7}
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "vec_", arg: 1, scope: !2886, file: !141, line: 281, type: !2889)
!2893 = !DILocalVariable(name: "ix_", arg: 2, scope: !2886, file: !141, line: 281, type: !7)
!2894 = !DILocation(line: 0, scope: !2886)
!2895 = !DILocation(line: 281, column: 1, scope: !2886)
!2896 = distinct !DISubprogram(name: "df_get_bb_info", scope: !3, file: !3, line: 1290, type: !2897, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!725, !728, !7}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "dflow", arg: 1, scope: !2896, file: !3, line: 1290, type: !728)
!2901 = !DILocalVariable(name: "index", arg: 2, scope: !2896, file: !3, line: 1290, type: !7)
!2902 = !DILocation(line: 0, scope: !2896)
!2903 = !DILocation(line: 1292, column: 14, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1292, column: 7)
!2905 = !DILocation(line: 1292, column: 25, scope: !2904)
!2906 = !DILocation(line: 1292, column: 7, scope: !2896)
!2907 = !DILocation(line: 1294, column: 23, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1294, column: 7)
!2909 = !DILocation(line: 1294, column: 13, scope: !2908)
!2910 = !DILocation(line: 1294, column: 7, scope: !2896)
!2911 = !DILocation(line: 1296, column: 37, scope: !2896)
!2912 = !DILocation(line: 1296, column: 3, scope: !2896)
!2913 = !DILocation(line: 1297, column: 1, scope: !2896)
!2914 = distinct !DISubprogram(name: "df_set_bb_info", scope: !3, file: !3, line: 1303, type: !2915, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !728, !7, !725}
!2917 = !{!2918, !2919, !2920}
!2918 = !DILocalVariable(name: "dflow", arg: 1, scope: !2914, file: !3, line: 1303, type: !728)
!2919 = !DILocalVariable(name: "index", arg: 2, scope: !2914, file: !3, line: 1303, type: !7)
!2920 = !DILocalVariable(name: "bb_info", arg: 3, scope: !2914, file: !3, line: 1304, type: !725)
!2921 = !DILocation(line: 0, scope: !2914)
!2922 = !DILocation(line: 1306, column: 3, scope: !2914)
!2923 = !DILocation(line: 1307, column: 10, scope: !2914)
!2924 = !DILocation(line: 1307, column: 3, scope: !2914)
!2925 = !DILocation(line: 1307, column: 28, scope: !2914)
!2926 = !DILocation(line: 1308, column: 1, scope: !2914)
!2927 = distinct !DISubprogram(name: "bmp_iter_next", scope: !746, file: !746, line: 382, type: !2928, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2776, !1954}
!2930 = !{!2931, !2932}
!2931 = !DILocalVariable(name: "bi", arg: 1, scope: !2927, file: !746, line: 382, type: !2776)
!2932 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2927, file: !746, line: 382, type: !1954)
!2933 = !DILocation(line: 0, scope: !2927)
!2934 = !DILocation(line: 384, column: 7, scope: !2927)
!2935 = !DILocation(line: 384, column: 12, scope: !2927)
!2936 = !DILocation(line: 385, column: 11, scope: !2927)
!2937 = !DILocation(line: 386, column: 1, scope: !2927)
!2938 = distinct !DISubprogram(name: "df_mark_solutions_dirty", scope: !3, file: !3, line: 1314, type: !1850, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2939)
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "p", scope: !2941, file: !3, line: 1318, type: !721)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1317, column: 5)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1316, column: 7)
!2943 = !DILocation(line: 1316, column: 7, scope: !2942)
!2944 = !DILocation(line: 1316, column: 7, scope: !2938)
!2945 = !DILocation(line: 1319, column: 7, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1319, column: 7)
!2947 = !DILocation(line: 0, scope: !2946)
!2948 = !DILocation(line: 0, scope: !2941)
!2949 = !DILocation(line: 1319, column: 27, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1319, column: 7)
!2951 = !DILocation(line: 1319, column: 21, scope: !2950)
!2952 = !DILocation(line: 1320, column: 2, scope: !2950)
!2953 = !DILocation(line: 1320, column: 28, scope: !2950)
!2954 = !DILocation(line: 1320, column: 44, scope: !2950)
!2955 = !DILocation(line: 1319, column: 50, scope: !2950)
!2956 = !DILocation(line: 1319, column: 7, scope: !2950)
!2957 = distinct !{!2957, !2945, !2958}
!2958 = !DILocation(line: 1320, column: 46, scope: !2946)
!2959 = !DILocation(line: 1322, column: 1, scope: !2938)
!2960 = distinct !DISubprogram(name: "df_remove_problem", scope: !3, file: !3, line: 595, type: !2961, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !728}
!2963 = !{!2964, !2965, !2966, !2967}
!2964 = !DILocalVariable(name: "dflow", arg: 1, scope: !2960, file: !3, line: 595, type: !728)
!2965 = !DILocalVariable(name: "problem", scope: !2960, file: !3, line: 597, type: !732)
!2966 = !DILocalVariable(name: "i", scope: !2960, file: !3, line: 598, type: !721)
!2967 = !DILocalVariable(name: "j", scope: !2968, file: !3, line: 615, type: !721)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 614, column: 7)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 613, column: 9)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 612, column: 3)
!2971 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 612, column: 3)
!2972 = !DILocation(line: 0, scope: !2960)
!2973 = !DILocation(line: 600, column: 8, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 600, column: 7)
!2975 = !DILocation(line: 600, column: 7, scope: !2960)
!2976 = !DILocation(line: 603, column: 20, scope: !2960)
!2977 = !DILocation(line: 604, column: 3, scope: !2960)
!2978 = !DILocation(line: 607, column: 8, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 607, column: 3)
!2980 = !DILocation(line: 0, scope: !2979)
!2981 = !DILocation(line: 607, column: 19, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 607, column: 3)
!2983 = !DILocation(line: 607, column: 23, scope: !2982)
!2984 = !DILocation(line: 607, column: 17, scope: !2982)
!2985 = !DILocation(line: 607, column: 3, scope: !2979)
!2986 = !DILocation(line: 612, column: 3, scope: !2971)
!2987 = !DILocation(line: 608, column: 9, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 608, column: 9)
!2989 = !DILocation(line: 608, column: 35, scope: !2988)
!2990 = !DILocation(line: 608, column: 44, scope: !2988)
!2991 = !DILocation(line: 608, column: 62, scope: !2988)
!2992 = !DILocation(line: 608, column: 9, scope: !2982)
!2993 = !DILocation(line: 609, column: 7, scope: !2988)
!2994 = !DILocation(line: 607, column: 46, scope: !2982)
!2995 = !DILocation(line: 607, column: 3, scope: !2982)
!2996 = distinct !{!2996, !2985, !2997}
!2997 = !DILocation(line: 609, column: 50, scope: !2979)
!2998 = !DILocation(line: 0, scope: !2971)
!2999 = !DILocation(line: 612, column: 17, scope: !2970)
!3000 = !DILocation(line: 613, column: 9, scope: !2969)
!3001 = !DILocation(line: 613, column: 34, scope: !2969)
!3002 = !DILocation(line: 0, scope: !2970)
!3003 = !DILocation(line: 613, column: 9, scope: !2970)
!3004 = distinct !{!3004, !2986, !3005}
!3005 = !DILocation(line: 621, column: 7, scope: !2971)
!3006 = !DILocation(line: 616, column: 2, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 616, column: 2)
!3008 = !DILocation(line: 616, column: 26, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 616, column: 2)
!3010 = !DILocation(line: 616, column: 22, scope: !3009)
!3011 = !DILocation(line: 0, scope: !2968)
!3012 = !DILocation(line: 616, column: 20, scope: !3009)
!3013 = !DILocation(line: 617, column: 33, scope: !3009)
!3014 = !DILocation(line: 617, column: 27, scope: !3009)
!3015 = !DILocation(line: 617, column: 4, scope: !3009)
!3016 = !DILocation(line: 617, column: 31, scope: !3009)
!3017 = !DILocation(line: 616, column: 49, scope: !3009)
!3018 = !DILocation(line: 0, scope: !3009)
!3019 = !DILocation(line: 616, column: 2, scope: !3009)
!3020 = distinct !{!3020, !3006, !3021}
!3021 = !DILocation(line: 617, column: 56, scope: !3007)
!3022 = !DILocation(line: 618, column: 2, scope: !2968)
!3023 = !DILocation(line: 618, column: 29, scope: !2968)
!3024 = !DILocation(line: 619, column: 2, scope: !2968)
!3025 = !DILocation(line: 619, column: 6, scope: !2968)
!3026 = !DILocation(line: 619, column: 26, scope: !2968)
!3027 = !DILocation(line: 623, column: 13, scope: !2960)
!3028 = !DILocation(line: 623, column: 3, scope: !2960)
!3029 = !DILocation(line: 624, column: 3, scope: !2960)
!3030 = !DILocation(line: 624, column: 34, scope: !2960)
!3031 = !DILocation(line: 624, column: 38, scope: !2960)
!3032 = !DILocation(line: 625, column: 1, scope: !2960)
!3033 = distinct !DISubprogram(name: "df_finish_pass", scope: !3, file: !3, line: 633, type: !3034, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !720}
!3036 = !{!3037, !3038, !3039, !3040, !3044}
!3037 = !DILocalVariable(name: "verify", arg: 1, scope: !3033, file: !3, line: 633, type: !720)
!3038 = !DILocalVariable(name: "i", scope: !3033, file: !3, line: 635, type: !721)
!3039 = !DILocalVariable(name: "removed", scope: !3033, file: !3, line: 636, type: !721)
!3040 = !DILocalVariable(name: "dflow", scope: !3041, file: !3, line: 654, type: !728)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 653, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 652, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 652, column: 3)
!3044 = !DILocalVariable(name: "problem", scope: !3041, file: !3, line: 655, type: !732)
!3045 = !DILocation(line: 0, scope: !3033)
!3046 = !DILocation(line: 642, column: 8, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 642, column: 7)
!3048 = !DILocation(line: 642, column: 7, scope: !3033)
!3049 = !DILocation(line: 645, column: 3, scope: !3033)
!3050 = !DILocation(line: 646, column: 3, scope: !3033)
!3051 = !DILocation(line: 652, column: 8, scope: !3043)
!3052 = !DILocation(line: 652, column: 19, scope: !3042)
!3053 = !DILocation(line: 652, column: 23, scope: !3042)
!3054 = !DILocation(line: 652, column: 17, scope: !3042)
!3055 = !DILocation(line: 652, column: 3, scope: !3043)
!3056 = !DILocation(line: 654, column: 32, scope: !3041)
!3057 = !DILocation(line: 0, scope: !3041)
!3058 = !DILocation(line: 655, column: 43, scope: !3041)
!3059 = !DILocation(line: 657, column: 18, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 657, column: 11)
!3061 = !DILocation(line: 657, column: 11, scope: !3060)
!3062 = !DILocation(line: 657, column: 11, scope: !3041)
!3063 = !DILocation(line: 659, column: 4, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 658, column: 2)
!3065 = !DILocation(line: 660, column: 14, scope: !3064)
!3066 = !DILocation(line: 660, column: 4, scope: !3064)
!3067 = !DILocation(line: 661, column: 4, scope: !3064)
!3068 = !DILocation(line: 661, column: 29, scope: !3064)
!3069 = !DILocation(line: 662, column: 4, scope: !3064)
!3070 = !DILocation(line: 662, column: 35, scope: !3064)
!3071 = !DILocation(line: 662, column: 39, scope: !3064)
!3072 = !DILocation(line: 663, column: 11, scope: !3064)
!3073 = !DILocation(line: 664, column: 2, scope: !3064)
!3074 = !DILocation(line: 652, column: 46, scope: !3042)
!3075 = !DILocation(line: 652, column: 3, scope: !3042)
!3076 = distinct !{!3076, !3055, !3077}
!3077 = !DILocation(line: 665, column: 5, scope: !3043)
!3078 = !DILocation(line: 666, column: 28, scope: !3033)
!3079 = !DILocation(line: 669, column: 7, scope: !3033)
!3080 = !DILocation(line: 669, column: 24, scope: !3033)
!3081 = !DILocation(line: 670, column: 3, scope: !3033)
!3082 = !DILocation(line: 673, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 673, column: 7)
!3084 = !DILocation(line: 673, column: 11, scope: !3083)
!3085 = !DILocation(line: 673, column: 7, scope: !3033)
!3086 = !DILocation(line: 675, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 674, column: 5)
!3088 = !DILocation(line: 676, column: 11, scope: !3087)
!3089 = !DILocation(line: 676, column: 29, scope: !3087)
!3090 = !DILocation(line: 677, column: 7, scope: !3087)
!3091 = !DILocation(line: 678, column: 7, scope: !3087)
!3092 = !DILocation(line: 678, column: 11, scope: !3087)
!3093 = !DILocation(line: 678, column: 26, scope: !3087)
!3094 = !DILocation(line: 679, column: 5, scope: !3087)
!3095 = !DILocation(line: 699, column: 1, scope: !3033)
!3096 = distinct !DISubprogram(name: "gate_opt", scope: !3, file: !3, line: 746, type: !2086, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!3097 = !DILocation(line: 748, column: 10, scope: !3096)
!3098 = !DILocation(line: 748, column: 19, scope: !3096)
!3099 = !DILocation(line: 748, column: 3, scope: !3096)
!3100 = distinct !DISubprogram(name: "rest_of_handle_df_initialize", scope: !3, file: !3, line: 705, type: !2090, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!3101 = !DILocation(line: 707, column: 3, scope: !3100)
!3102 = !DILocation(line: 708, column: 8, scope: !3100)
!3103 = !DILocation(line: 708, column: 6, scope: !3100)
!3104 = !DILocation(line: 709, column: 7, scope: !3100)
!3105 = !DILocation(line: 709, column: 24, scope: !3100)
!3106 = !DILocation(line: 711, column: 3, scope: !3100)
!3107 = !DILocation(line: 715, column: 37, scope: !3100)
!3108 = !DILocation(line: 717, column: 3, scope: !3100)
!3109 = !DILocation(line: 718, column: 3, scope: !3100)
!3110 = !DILocation(line: 721, column: 3, scope: !3100)
!3111 = !DILocation(line: 722, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 722, column: 7)
!3113 = !DILocation(line: 722, column: 16, scope: !3112)
!3114 = !DILocation(line: 722, column: 7, scope: !3100)
!3115 = !DILocation(line: 723, column: 5, scope: !3112)
!3116 = !DILocation(line: 725, column: 19, scope: !3100)
!3117 = !DILocation(line: 725, column: 3, scope: !3100)
!3118 = !DILocation(line: 725, column: 7, scope: !3100)
!3119 = !DILocation(line: 725, column: 17, scope: !3100)
!3120 = !DILocation(line: 726, column: 28, scope: !3100)
!3121 = !DILocation(line: 726, column: 3, scope: !3100)
!3122 = !DILocation(line: 726, column: 7, scope: !3100)
!3123 = !DILocation(line: 726, column: 26, scope: !3100)
!3124 = !DILocation(line: 727, column: 42, scope: !3100)
!3125 = !DILocation(line: 727, column: 18, scope: !3100)
!3126 = !DILocation(line: 727, column: 3, scope: !3100)
!3127 = !DILocation(line: 727, column: 7, scope: !3100)
!3128 = !DILocation(line: 727, column: 16, scope: !3100)
!3129 = !DILocation(line: 728, column: 60, scope: !3100)
!3130 = !DILocation(line: 728, column: 27, scope: !3100)
!3131 = !DILocation(line: 728, column: 3, scope: !3100)
!3132 = !DILocation(line: 728, column: 7, scope: !3100)
!3133 = !DILocation(line: 728, column: 25, scope: !3100)
!3134 = !DILocation(line: 729, column: 3, scope: !3100)
!3135 = !DILocation(line: 731, column: 30, scope: !3100)
!3136 = !DILocation(line: 731, column: 3, scope: !3100)
!3137 = !DILocation(line: 731, column: 7, scope: !3100)
!3138 = !DILocation(line: 731, column: 28, scope: !3100)
!3139 = !DILocation(line: 732, column: 3, scope: !3100)
!3140 = !DILocation(line: 735, column: 3, scope: !3100)
!3141 = !DILocation(line: 738, column: 3, scope: !3100)
!3142 = !DILocation(line: 739, column: 3, scope: !3100)
!3143 = !DILocation(line: 740, column: 3, scope: !3100)
!3144 = !DILocation(line: 741, column: 3, scope: !3100)
!3145 = distinct !DISubprogram(name: "gate_no_opt", scope: !3, file: !3, line: 773, type: !2086, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!3146 = !DILocation(line: 775, column: 10, scope: !3145)
!3147 = !DILocation(line: 775, column: 19, scope: !3145)
!3148 = !DILocation(line: 775, column: 3, scope: !3145)
!3149 = distinct !DISubprogram(name: "rest_of_handle_df_finish", scope: !3, file: !3, line: 803, type: !2090, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3150 = !{!3151, !3152}
!3151 = !DILocalVariable(name: "i", scope: !3149, file: !3, line: 805, type: !721)
!3152 = !DILocalVariable(name: "dflow", scope: !3153, file: !3, line: 811, type: !728)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 810, column: 5)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 809, column: 3)
!3155 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 809, column: 3)
!3156 = !DILocation(line: 807, column: 3, scope: !3149)
!3157 = !DILocation(line: 0, scope: !3149)
!3158 = !DILocation(line: 809, column: 8, scope: !3155)
!3159 = !DILocation(line: 0, scope: !3155)
!3160 = !DILocation(line: 809, column: 19, scope: !3154)
!3161 = !DILocation(line: 809, column: 23, scope: !3154)
!3162 = !DILocation(line: 809, column: 17, scope: !3154)
!3163 = !DILocation(line: 809, column: 3, scope: !3155)
!3164 = !DILocation(line: 811, column: 32, scope: !3153)
!3165 = !DILocation(line: 0, scope: !3153)
!3166 = !DILocation(line: 812, column: 14, scope: !3153)
!3167 = !DILocation(line: 812, column: 23, scope: !3153)
!3168 = !DILocation(line: 812, column: 7, scope: !3153)
!3169 = !DILocation(line: 809, column: 46, scope: !3154)
!3170 = !DILocation(line: 809, column: 3, scope: !3154)
!3171 = distinct !{!3171, !3163, !3172}
!3172 = !DILocation(line: 813, column: 5, scope: !3155)
!3173 = !DILocation(line: 815, column: 11, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 815, column: 7)
!3175 = !DILocation(line: 815, column: 7, scope: !3174)
!3176 = !DILocation(line: 815, column: 7, scope: !3149)
!3177 = !DILocation(line: 816, column: 5, scope: !3174)
!3178 = !DILocation(line: 817, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 817, column: 7)
!3180 = !DILocation(line: 817, column: 11, scope: !3179)
!3181 = !DILocation(line: 817, column: 7, scope: !3149)
!3182 = !DILocation(line: 818, column: 5, scope: !3179)
!3183 = !DILocation(line: 819, column: 9, scope: !3149)
!3184 = !DILocation(line: 819, column: 13, scope: !3149)
!3185 = !DILocation(line: 819, column: 3, scope: !3149)
!3186 = !DILocation(line: 820, column: 9, scope: !3149)
!3187 = !DILocation(line: 820, column: 3, scope: !3149)
!3188 = !DILocation(line: 821, column: 6, scope: !3149)
!3189 = !DILocation(line: 823, column: 3, scope: !3149)
!3190 = !DILocation(line: 824, column: 3, scope: !3149)
!3191 = distinct !DISubprogram(name: "df_worklist_dataflow", scope: !3, file: !3, line: 1003, type: !1827, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198, !3209, !3210, !3211, !3212, !3213}
!3193 = !DILocalVariable(name: "dataflow", arg: 1, scope: !3191, file: !3, line: 1003, type: !728)
!3194 = !DILocalVariable(name: "blocks_to_consider", arg: 2, scope: !3191, file: !3, line: 1004, type: !742)
!3195 = !DILocalVariable(name: "blocks_in_postorder", arg: 3, scope: !3191, file: !3, line: 1005, type: !1829)
!3196 = !DILocalVariable(name: "n_blocks", arg: 4, scope: !3191, file: !3, line: 1006, type: !721)
!3197 = !DILocalVariable(name: "pending", scope: !3191, file: !3, line: 1008, type: !742)
!3198 = !DILocalVariable(name: "considered", scope: !3191, file: !3, line: 1009, type: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3200, line: 45, baseType: !3201)
!3200 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3200, line: 39, size: 192, elements: !3203)
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3202, file: !3200, line: 41, baseType: !719, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3202, file: !3200, line: 42, baseType: !7, size: 32, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3202, file: !3200, line: 43, baseType: !7, size: 32, offset: 96)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3202, file: !3200, line: 44, baseType: !3208, size: 64, offset: 128)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 64, elements: !877)
!3209 = !DILocalVariable(name: "bi", scope: !3191, file: !3, line: 1010, type: !2603)
!3210 = !DILocalVariable(name: "bbindex_to_postorder", scope: !3191, file: !3, line: 1011, type: !1954)
!3211 = !DILocalVariable(name: "i", scope: !3191, file: !3, line: 1012, type: !721)
!3212 = !DILocalVariable(name: "index", scope: !3191, file: !3, line: 1013, type: !7)
!3213 = !DILocalVariable(name: "dir", scope: !3191, file: !3, line: 1014, type: !5)
!3214 = !DILocation(line: 0, scope: !3191)
!3215 = !DILocation(line: 1008, column: 20, scope: !3191)
!3216 = !DILocation(line: 1009, column: 39, scope: !3191)
!3217 = !DILocation(line: 1009, column: 24, scope: !3191)
!3218 = !DILocation(line: 1010, column: 3, scope: !3191)
!3219 = !DILocation(line: 1013, column: 3, scope: !3191)
!3220 = !DILocation(line: 1014, column: 36, scope: !3191)
!3221 = !DILocation(line: 1014, column: 45, scope: !3191)
!3222 = !DILocation(line: 1016, column: 3, scope: !3191)
!3223 = !DILocation(line: 1020, column: 30, scope: !3191)
!3224 = !DILocation(line: 1020, column: 47, scope: !3191)
!3225 = !DILocation(line: 1020, column: 21, scope: !3191)
!3226 = !DILocation(line: 1020, column: 5, scope: !3191)
!3227 = !DILocation(line: 1023, column: 8, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1023, column: 3)
!3229 = !DILocation(line: 0, scope: !3228)
!3230 = !DILocation(line: 1023, column: 19, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1023, column: 3)
!3232 = !DILocation(line: 1023, column: 17, scope: !3231)
!3233 = !DILocation(line: 1023, column: 3, scope: !3228)
!3234 = !DILocation(line: 1024, column: 5, scope: !3231)
!3235 = !DILocation(line: 1024, column: 29, scope: !3231)
!3236 = !DILocation(line: 1023, column: 38, scope: !3231)
!3237 = !DILocation(line: 1023, column: 3, scope: !3231)
!3238 = distinct !{!3238, !3233, !3239}
!3239 = !DILocation(line: 1024, column: 31, scope: !3228)
!3240 = !DILocation(line: 1027, column: 3, scope: !3191)
!3241 = !DILocation(line: 1028, column: 3, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1028, column: 3)
!3243 = !DILocation(line: 1028, column: 3, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1028, column: 3)
!3245 = !DILocation(line: 1034, column: 3, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1034, column: 3)
!3247 = !DILocation(line: 1030, column: 28, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1029, column: 5)
!3249 = !DILocation(line: 1030, column: 7, scope: !3248)
!3250 = distinct !{!3250, !3241, !3251}
!3251 = !DILocation(line: 1031, column: 5, scope: !3242)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 1034, column: 17, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 1034, column: 3)
!3255 = !DILocation(line: 1036, column: 28, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1035, column: 5)
!3257 = !DILocation(line: 1036, column: 7, scope: !3256)
!3258 = !DILocation(line: 1036, column: 52, scope: !3256)
!3259 = !DILocation(line: 1038, column: 7, scope: !3256)
!3260 = !DILocation(line: 1034, column: 30, scope: !3254)
!3261 = !DILocation(line: 1034, column: 3, scope: !3254)
!3262 = distinct !{!3262, !3245, !3263}
!3263 = !DILocation(line: 1039, column: 5, scope: !3246)
!3264 = !DILocation(line: 1042, column: 17, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1042, column: 7)
!3266 = !DILocation(line: 1042, column: 26, scope: !3265)
!3267 = !DILocation(line: 1042, column: 7, scope: !3265)
!3268 = !DILocation(line: 1042, column: 7, scope: !3191)
!3269 = !DILocation(line: 1043, column: 5, scope: !3265)
!3270 = !DILocation(line: 1046, column: 3, scope: !3191)
!3271 = !DILocation(line: 1050, column: 3, scope: !3191)
!3272 = !DILocation(line: 1051, column: 3, scope: !3191)
!3273 = !DILocation(line: 1052, column: 1, scope: !3191)
!3274 = distinct !DISubprogram(name: "SET_BIT", scope: !3200, file: !3200, line: 63, type: !3275, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3199, !7}
!3277 = !{!3278, !3279, !3280}
!3278 = !DILocalVariable(name: "map", arg: 1, scope: !3274, file: !3200, line: 63, type: !3199)
!3279 = !DILocalVariable(name: "bitno", arg: 2, scope: !3274, file: !3200, line: 63, type: !7)
!3280 = !DILocalVariable(name: "oldbit", scope: !3281, file: !3200, line: 67, type: !720)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !3200, line: 66, column: 5)
!3282 = distinct !DILexicalBlock(scope: !3274, file: !3200, line: 65, column: 7)
!3283 = !DILocation(line: 0, scope: !3274)
!3284 = !DILocation(line: 65, column: 12, scope: !3282)
!3285 = !DILocation(line: 65, column: 7, scope: !3282)
!3286 = !DILocation(line: 65, column: 7, scope: !3274)
!3287 = !DILocation(line: 73, column: 40, scope: !3274)
!3288 = !DILocation(line: 73, column: 29, scope: !3274)
!3289 = !DILocation(line: 72, column: 19, scope: !3274)
!3290 = !DILocation(line: 72, column: 3, scope: !3274)
!3291 = !DILocation(line: 68, column: 16, scope: !3281)
!3292 = !DILocation(line: 69, column: 12, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3281, file: !3200, line: 69, column: 11)
!3294 = !DILocation(line: 69, column: 11, scope: !3281)
!3295 = !DILocation(line: 70, column: 2, scope: !3293)
!3296 = !DILocation(line: 70, column: 41, scope: !3293)
!3297 = !DILocation(line: 73, column: 5, scope: !3274)
!3298 = !DILocation(line: 74, column: 1, scope: !3274)
!3299 = distinct !DISubprogram(name: "df_worklist_dataflow_doublequeue", scope: !3, file: !3, line: 941, type: !3300, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{null, !728, !742, !3199, !1829, !1954}
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3313, !3315}
!3303 = !DILocalVariable(name: "dataflow", arg: 1, scope: !3299, file: !3, line: 941, type: !728)
!3304 = !DILocalVariable(name: "pending", arg: 2, scope: !3299, file: !3, line: 942, type: !742)
!3305 = !DILocalVariable(name: "considered", arg: 3, scope: !3299, file: !3, line: 943, type: !3199)
!3306 = !DILocalVariable(name: "blocks_in_postorder", arg: 4, scope: !3299, file: !3, line: 944, type: !1829)
!3307 = !DILocalVariable(name: "bbindex_to_postorder", arg: 5, scope: !3299, file: !3, line: 945, type: !1954)
!3308 = !DILocalVariable(name: "dir", scope: !3299, file: !3, line: 947, type: !5)
!3309 = !DILocalVariable(name: "dcount", scope: !3299, file: !3, line: 948, type: !721)
!3310 = !DILocalVariable(name: "worklist", scope: !3299, file: !3, line: 949, type: !742)
!3311 = !DILocalVariable(name: "temp", scope: !3312, file: !3, line: 956, type: !742)
!3312 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 954, column: 5)
!3313 = !DILocalVariable(name: "index", scope: !3314, file: !3, line: 962, type: !721)
!3314 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 961, column: 2)
!3315 = !DILocalVariable(name: "bb_index", scope: !3314, file: !3, line: 963, type: !7)
!3316 = !DILocation(line: 0, scope: !3299)
!3317 = !DILocation(line: 947, column: 36, scope: !3299)
!3318 = !DILocation(line: 947, column: 45, scope: !3299)
!3319 = !DILocation(line: 949, column: 21, scope: !3299)
!3320 = !DILocation(line: 0, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 971, column: 8)
!3322 = !DILocation(line: 953, column: 3, scope: !3299)
!3323 = !DILocation(line: 953, column: 11, scope: !3299)
!3324 = !DILocation(line: 964, column: 10, scope: !3314)
!3325 = !DILocation(line: 966, column: 12, scope: !3314)
!3326 = !DILocation(line: 0, scope: !3314)
!3327 = !DILocation(line: 967, column: 4, scope: !3314)
!3328 = !DILocation(line: 969, column: 15, scope: !3314)
!3329 = !DILocation(line: 972, column: 6, scope: !3321)
!3330 = !DILocation(line: 980, column: 15, scope: !3312)
!3331 = !DILocation(line: 979, column: 2, scope: !3314)
!3332 = distinct !{!3332, !3322, !3333}
!3333 = !DILocation(line: 981, column: 5, scope: !3299)
!3334 = !DILocation(line: 983, column: 3, scope: !3299)
!3335 = !DILocation(line: 976, column: 6, scope: !3321)
!3336 = !DILocation(line: 984, column: 3, scope: !3299)
!3337 = !DILocation(line: 987, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 987, column: 7)
!3339 = !DILocation(line: 987, column: 7, scope: !3299)
!3340 = !DILocation(line: 991, column: 7, scope: !3338)
!3341 = !DILocation(line: 991, column: 23, scope: !3338)
!3342 = !DILocation(line: 992, column: 15, scope: !3338)
!3343 = !DILocation(line: 992, column: 24, scope: !3338)
!3344 = !DILocation(line: 992, column: 22, scope: !3338)
!3345 = !DILocation(line: 988, column: 5, scope: !3338)
!3346 = !DILocation(line: 993, column: 1, scope: !3299)
!3347 = distinct !DISubprogram(name: "df_analyze_problem", scope: !3, file: !3, line: 1080, type: !1827, scopeLine: 1083, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3348 = !{!3349, !3350, !3351, !3352}
!3349 = !DILocalVariable(name: "dflow", arg: 1, scope: !3347, file: !3, line: 1080, type: !728)
!3350 = !DILocalVariable(name: "blocks_to_consider", arg: 2, scope: !3347, file: !3, line: 1081, type: !742)
!3351 = !DILocalVariable(name: "postorder", arg: 3, scope: !3347, file: !3, line: 1082, type: !1829)
!3352 = !DILocalVariable(name: "n_blocks", arg: 4, scope: !3347, file: !3, line: 1082, type: !721)
!3353 = !DILocation(line: 0, scope: !3347)
!3354 = !DILocation(line: 1084, column: 3, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1084, column: 3)
!3356 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1084, column: 3)
!3357 = !DILocation(line: 1084, column: 3, scope: !3356)
!3358 = !DILocation(line: 1092, column: 14, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1092, column: 7)
!3360 = !DILocation(line: 1092, column: 23, scope: !3359)
!3361 = !DILocation(line: 1092, column: 7, scope: !3359)
!3362 = !DILocation(line: 1092, column: 7, scope: !3347)
!3363 = !DILocation(line: 1093, column: 5, scope: !3359)
!3364 = !DILocation(line: 1096, column: 14, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1096, column: 7)
!3366 = !DILocation(line: 1096, column: 23, scope: !3365)
!3367 = !DILocation(line: 1096, column: 7, scope: !3365)
!3368 = !DILocation(line: 1096, column: 7, scope: !3347)
!3369 = !DILocation(line: 1097, column: 5, scope: !3365)
!3370 = !DILocation(line: 1100, column: 14, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1100, column: 7)
!3372 = !DILocation(line: 1100, column: 23, scope: !3371)
!3373 = !DILocation(line: 1100, column: 7, scope: !3371)
!3374 = !DILocation(line: 1100, column: 7, scope: !3347)
!3375 = !DILocation(line: 1101, column: 5, scope: !3371)
!3376 = !DILocation(line: 1105, column: 14, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1105, column: 7)
!3378 = !DILocation(line: 1105, column: 23, scope: !3377)
!3379 = !DILocation(line: 1105, column: 7, scope: !3377)
!3380 = !DILocation(line: 1105, column: 7, scope: !3347)
!3381 = !DILocation(line: 1106, column: 5, scope: !3377)
!3382 = !DILocation(line: 1113, column: 3, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1113, column: 3)
!3384 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1113, column: 3)
!3385 = !DILocation(line: 1113, column: 3, scope: !3384)
!3386 = !DILocation(line: 1115, column: 10, scope: !3347)
!3387 = !DILocation(line: 1115, column: 19, scope: !3347)
!3388 = !DILocation(line: 1116, column: 1, scope: !3347)
!3389 = distinct !DISubprogram(name: "df_analyze", scope: !3, file: !3, line: 1123, type: !1850, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3390)
!3390 = !{!3391, !3392, !3393, !3394}
!3391 = !DILocalVariable(name: "current_all_blocks", scope: !3389, file: !3, line: 1125, type: !742)
!3392 = !DILocalVariable(name: "everything", scope: !3389, file: !3, line: 1126, type: !720)
!3393 = !DILocalVariable(name: "i", scope: !3389, file: !3, line: 1127, type: !721)
!3394 = !DILocalVariable(name: "dflow", scope: !3395, file: !3, line: 1187, type: !728)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1186, column: 5)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1185, column: 3)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1185, column: 3)
!3398 = !DILocation(line: 1125, column: 31, scope: !3389)
!3399 = !DILocation(line: 0, scope: !3389)
!3400 = !DILocation(line: 1129, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1129, column: 7)
!3402 = !DILocation(line: 1129, column: 11, scope: !3401)
!3403 = !DILocation(line: 1129, column: 7, scope: !3389)
!3404 = !DILocation(line: 1130, column: 5, scope: !3401)
!3405 = !DILocation(line: 1131, column: 7, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1131, column: 7)
!3407 = !DILocation(line: 1131, column: 11, scope: !3406)
!3408 = !DILocation(line: 1131, column: 7, scope: !3389)
!3409 = !DILocation(line: 1132, column: 5, scope: !3406)
!3410 = !DILocation(line: 1133, column: 19, scope: !3389)
!3411 = !DILocation(line: 1133, column: 3, scope: !3389)
!3412 = !DILocation(line: 1133, column: 7, scope: !3389)
!3413 = !DILocation(line: 1133, column: 17, scope: !3389)
!3414 = !DILocation(line: 1134, column: 28, scope: !3389)
!3415 = !DILocation(line: 1134, column: 3, scope: !3389)
!3416 = !DILocation(line: 1134, column: 7, scope: !3389)
!3417 = !DILocation(line: 1134, column: 26, scope: !3389)
!3418 = !DILocation(line: 1135, column: 42, scope: !3389)
!3419 = !DILocation(line: 1135, column: 18, scope: !3389)
!3420 = !DILocation(line: 1135, column: 3, scope: !3389)
!3421 = !DILocation(line: 1135, column: 7, scope: !3389)
!3422 = !DILocation(line: 1135, column: 16, scope: !3389)
!3423 = !DILocation(line: 1136, column: 60, scope: !3389)
!3424 = !DILocation(line: 1136, column: 27, scope: !3389)
!3425 = !DILocation(line: 1136, column: 3, scope: !3389)
!3426 = !DILocation(line: 1136, column: 7, scope: !3389)
!3427 = !DILocation(line: 1136, column: 25, scope: !3389)
!3428 = !DILocation(line: 1139, column: 3, scope: !3389)
!3429 = !DILocation(line: 1143, column: 3, scope: !3389)
!3430 = !DILocation(line: 1144, column: 3, scope: !3389)
!3431 = !DILocation(line: 1146, column: 7, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1146, column: 7)
!3433 = !DILocation(line: 1146, column: 7, scope: !3389)
!3434 = !DILocation(line: 1147, column: 5, scope: !3432)
!3435 = !DILocation(line: 1150, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1150, column: 7)
!3437 = !DILocation(line: 1150, column: 11, scope: !3436)
!3438 = !DILocation(line: 1150, column: 28, scope: !3436)
!3439 = !DILocation(line: 1150, column: 7, scope: !3389)
!3440 = !DILocation(line: 1152, column: 5, scope: !3436)
!3441 = !DILocation(line: 1154, column: 8, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1154, column: 3)
!3443 = !DILocation(line: 0, scope: !3442)
!3444 = !DILocation(line: 1154, column: 19, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1154, column: 3)
!3446 = !DILocation(line: 1154, column: 23, scope: !3445)
!3447 = !DILocation(line: 1154, column: 17, scope: !3445)
!3448 = !DILocation(line: 1154, column: 3, scope: !3442)
!3449 = !DILocation(line: 1155, column: 45, scope: !3445)
!3450 = !DILocation(line: 1155, column: 41, scope: !3445)
!3451 = !DILocation(line: 1155, column: 5, scope: !3445)
!3452 = !DILocation(line: 1154, column: 34, scope: !3445)
!3453 = !DILocation(line: 1154, column: 3, scope: !3445)
!3454 = distinct !{!3454, !3448, !3455}
!3455 = !DILocation(line: 1155, column: 57, scope: !3442)
!3456 = !DILocation(line: 1166, column: 11, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1166, column: 7)
!3458 = !DILocation(line: 1166, column: 7, scope: !3457)
!3459 = !DILocation(line: 0, scope: !3457)
!3460 = !DILocation(line: 1166, column: 7, scope: !3389)
!3461 = !DILocation(line: 1169, column: 28, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1167, column: 5)
!3463 = !DILocation(line: 1169, column: 7, scope: !3462)
!3464 = !DILocation(line: 1170, column: 42, scope: !3462)
!3465 = !DILocation(line: 1170, column: 46, scope: !3462)
!3466 = !DILocation(line: 1171, column: 11, scope: !3462)
!3467 = !DILocation(line: 1171, column: 25, scope: !3462)
!3468 = !DILocation(line: 1170, column: 22, scope: !3462)
!3469 = !DILocation(line: 1170, column: 7, scope: !3462)
!3470 = !DILocation(line: 1170, column: 11, scope: !3462)
!3471 = !DILocation(line: 1170, column: 20, scope: !3462)
!3472 = !DILocation(line: 1172, column: 55, scope: !3462)
!3473 = !DILocation(line: 1173, column: 34, scope: !3462)
!3474 = !DILocation(line: 1174, column: 55, scope: !3462)
!3475 = !DILocation(line: 1172, column: 31, scope: !3462)
!3476 = !DILocation(line: 1172, column: 7, scope: !3462)
!3477 = !DILocation(line: 1172, column: 11, scope: !3462)
!3478 = !DILocation(line: 1172, column: 29, scope: !3462)
!3479 = !DILocation(line: 1175, column: 7, scope: !3462)
!3480 = !DILocation(line: 1176, column: 5, scope: !3462)
!3481 = !DILocation(line: 1180, column: 29, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1178, column: 5)
!3483 = !DILocation(line: 1185, column: 8, scope: !3397)
!3484 = !DILocation(line: 0, scope: !3397)
!3485 = !DILocation(line: 1185, column: 19, scope: !3396)
!3486 = !DILocation(line: 1185, column: 23, scope: !3396)
!3487 = !DILocation(line: 1185, column: 17, scope: !3396)
!3488 = !DILocation(line: 1185, column: 3, scope: !3397)
!3489 = !DILocation(line: 1187, column: 32, scope: !3395)
!3490 = !DILocation(line: 0, scope: !3395)
!3491 = !DILocation(line: 1188, column: 18, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1188, column: 11)
!3493 = !DILocation(line: 1188, column: 11, scope: !3492)
!3494 = !DILocation(line: 1188, column: 11, scope: !3395)
!3495 = !DILocation(line: 1190, column: 22, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1190, column: 15)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1189, column: 9)
!3498 = !DILocation(line: 1190, column: 31, scope: !3496)
!3499 = !DILocation(line: 1190, column: 35, scope: !3496)
!3500 = !DILocation(line: 0, scope: !3496)
!3501 = !DILocation(line: 1190, column: 15, scope: !3497)
!3502 = !DILocation(line: 1193, column: 37, scope: !3496)
!3503 = !DILocation(line: 1194, column: 37, scope: !3496)
!3504 = !DILocation(line: 1191, column: 13, scope: !3496)
!3505 = !DILocation(line: 1198, column: 37, scope: !3496)
!3506 = !DILocation(line: 1199, column: 37, scope: !3496)
!3507 = !DILocation(line: 1196, column: 13, scope: !3496)
!3508 = !DILocation(line: 1185, column: 46, scope: !3396)
!3509 = !DILocation(line: 1185, column: 3, scope: !3396)
!3510 = distinct !{!3510, !3488, !3511}
!3511 = !DILocation(line: 1201, column: 5, scope: !3397)
!3512 = !DILocation(line: 1203, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1203, column: 7)
!3514 = !DILocation(line: 1203, column: 7, scope: !3389)
!3515 = !DILocation(line: 1205, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 1204, column: 5)
!3517 = !DILocation(line: 1206, column: 11, scope: !3516)
!3518 = !DILocation(line: 1206, column: 29, scope: !3516)
!3519 = !DILocation(line: 1207, column: 5, scope: !3516)
!3520 = !DILocation(line: 1212, column: 1, scope: !3389)
!3521 = distinct !DISubprogram(name: "df_verify", scope: !3, file: !3, line: 1580, type: !1850, scopeLine: 1581, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!3522 = !DILocation(line: 1582, column: 3, scope: !3521)
!3523 = !DILocation(line: 1588, column: 1, scope: !3521)
!3524 = distinct !DISubprogram(name: "df_prune_to_subcfg", scope: !3, file: !3, line: 1060, type: !3525, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!7, !1829, !7, !742}
!3527 = !{!3528, !3529, !3530, !3531, !3532}
!3528 = !DILocalVariable(name: "list", arg: 1, scope: !3524, file: !3, line: 1060, type: !1829)
!3529 = !DILocalVariable(name: "len", arg: 2, scope: !3524, file: !3, line: 1060, type: !7)
!3530 = !DILocalVariable(name: "blocks", arg: 3, scope: !3524, file: !3, line: 1060, type: !742)
!3531 = !DILocalVariable(name: "act", scope: !3524, file: !3, line: 1062, type: !7)
!3532 = !DILocalVariable(name: "last", scope: !3524, file: !3, line: 1062, type: !7)
!3533 = !DILocation(line: 0, scope: !3524)
!3534 = !DILocation(line: 1064, column: 31, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 1064, column: 3)
!3536 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1064, column: 3)
!3537 = !DILocation(line: 1064, column: 8, scope: !3536)
!3538 = !DILocation(line: 0, scope: !3536)
!3539 = !DILocation(line: 1064, column: 3, scope: !3536)
!3540 = !DILocation(line: 1065, column: 31, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1065, column: 9)
!3542 = !DILocation(line: 1065, column: 9, scope: !3541)
!3543 = !DILocation(line: 1065, column: 9, scope: !3535)
!3544 = !DILocation(line: 1066, column: 22, scope: !3541)
!3545 = !DILocation(line: 1066, column: 16, scope: !3541)
!3546 = !DILocation(line: 1066, column: 7, scope: !3541)
!3547 = !DILocation(line: 1066, column: 20, scope: !3541)
!3548 = !DILocation(line: 1064, column: 41, scope: !3535)
!3549 = !DILocation(line: 1064, column: 3, scope: !3535)
!3550 = distinct !{!3550, !3539, !3551}
!3551 = !DILocation(line: 1066, column: 30, scope: !3536)
!3552 = !DILocation(line: 1068, column: 3, scope: !3524)
!3553 = distinct !DISubprogram(name: "df_get_n_blocks", scope: !3, file: !3, line: 1218, type: !3554, scopeLine: 1219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!721, !5}
!3556 = !{!3557}
!3557 = !DILocalVariable(name: "dir", arg: 1, scope: !3553, file: !3, line: 1218, type: !5)
!3558 = !DILocation(line: 0, scope: !3553)
!3559 = !DILocation(line: 1220, column: 3, scope: !3553)
!3560 = !DILocation(line: 1222, column: 7, scope: !3553)
!3561 = !DILocation(line: 1224, column: 7, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1223, column: 5)
!3563 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 1222, column: 7)
!3564 = !DILocation(line: 1225, column: 14, scope: !3562)
!3565 = !DILocation(line: 1225, column: 18, scope: !3562)
!3566 = !DILocation(line: 1225, column: 7, scope: !3562)
!3567 = !DILocation(line: 1228, column: 3, scope: !3553)
!3568 = !DILocation(line: 1229, column: 10, scope: !3553)
!3569 = !DILocation(line: 1229, column: 14, scope: !3553)
!3570 = !DILocation(line: 1229, column: 3, scope: !3553)
!3571 = !DILocation(line: 1230, column: 1, scope: !3553)
!3572 = distinct !DISubprogram(name: "df_get_postorder", scope: !3, file: !3, line: 1238, type: !3573, scopeLine: 1239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!1829, !5}
!3575 = !{!3576}
!3576 = !DILocalVariable(name: "dir", arg: 1, scope: !3572, file: !3, line: 1238, type: !5)
!3577 = !DILocation(line: 0, scope: !3572)
!3578 = !DILocation(line: 1240, column: 3, scope: !3572)
!3579 = !DILocation(line: 1242, column: 7, scope: !3572)
!3580 = !DILocation(line: 1244, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 1243, column: 5)
!3582 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1242, column: 7)
!3583 = !DILocation(line: 1245, column: 14, scope: !3581)
!3584 = !DILocation(line: 1245, column: 18, scope: !3581)
!3585 = !DILocation(line: 1245, column: 7, scope: !3581)
!3586 = !DILocation(line: 1247, column: 3, scope: !3572)
!3587 = !DILocation(line: 1248, column: 10, scope: !3572)
!3588 = !DILocation(line: 1248, column: 14, scope: !3572)
!3589 = !DILocation(line: 1248, column: 3, scope: !3572)
!3590 = !DILocation(line: 1249, column: 1, scope: !3572)
!3591 = distinct !DISubprogram(name: "df_simple_dataflow", scope: !3, file: !3, line: 1263, type: !3592, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !5, !1823, !1831, !1836, !1841, !742, !1829, !721}
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3595 = !DILocalVariable(name: "dir", arg: 1, scope: !3591, file: !3, line: 1263, type: !5)
!3596 = !DILocalVariable(name: "init_fun", arg: 2, scope: !3591, file: !3, line: 1264, type: !1823)
!3597 = !DILocalVariable(name: "con_fun_0", arg: 3, scope: !3591, file: !3, line: 1265, type: !1831)
!3598 = !DILocalVariable(name: "con_fun_n", arg: 4, scope: !3591, file: !3, line: 1266, type: !1836)
!3599 = !DILocalVariable(name: "trans_fun", arg: 5, scope: !3591, file: !3, line: 1267, type: !1841)
!3600 = !DILocalVariable(name: "blocks", arg: 6, scope: !3591, file: !3, line: 1268, type: !742)
!3601 = !DILocalVariable(name: "postorder", arg: 7, scope: !3591, file: !3, line: 1268, type: !1829)
!3602 = !DILocalVariable(name: "n_blocks", arg: 8, scope: !3591, file: !3, line: 1268, type: !721)
!3603 = !DILocation(line: 0, scope: !3591)
!3604 = !DILocation(line: 1270, column: 3, scope: !3591)
!3605 = !DILocation(line: 1271, column: 20, scope: !3591)
!3606 = !DILocation(line: 1272, column: 25, scope: !3591)
!3607 = !DILocation(line: 1273, column: 26, scope: !3591)
!3608 = !DILocation(line: 1274, column: 26, scope: !3591)
!3609 = !DILocation(line: 1275, column: 26, scope: !3591)
!3610 = !DILocation(line: 1276, column: 22, scope: !3591)
!3611 = !DILocation(line: 1277, column: 3, scope: !3591)
!3612 = !DILocation(line: 1278, column: 1, scope: !3591)
!3613 = distinct !DISubprogram(name: "df_get_bb_dirty", scope: !3, file: !3, line: 1328, type: !3614, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!720, !812}
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "bb", arg: 1, scope: !3613, file: !3, line: 1328, type: !812)
!3618 = !DILocation(line: 0, scope: !3613)
!3619 = !DILocation(line: 1330, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1330, column: 7)
!3621 = !DILocation(line: 1330, column: 10, scope: !3620)
!3622 = !DILocation(line: 1330, column: 13, scope: !3620)
!3623 = !DILocation(line: 1330, column: 7, scope: !3613)
!3624 = !DILocation(line: 1331, column: 35, scope: !3620)
!3625 = !DILocation(line: 1331, column: 71, scope: !3620)
!3626 = !DILocation(line: 1331, column: 12, scope: !3620)
!3627 = !DILocation(line: 1331, column: 5, scope: !3620)
!3628 = !DILocation(line: 0, scope: !3620)
!3629 = !DILocation(line: 1334, column: 1, scope: !3613)
!3630 = distinct !DISubprogram(name: "df_set_bb_dirty", scope: !3, file: !3, line: 1341, type: !1833, scopeLine: 1342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3631 = !{!3632, !3633, !3636}
!3632 = !DILocalVariable(name: "bb", arg: 1, scope: !3630, file: !3, line: 1341, type: !812)
!3633 = !DILocalVariable(name: "p", scope: !3634, file: !3, line: 1345, type: !721)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1344, column: 5)
!3635 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 1343, column: 7)
!3636 = !DILocalVariable(name: "dflow", scope: !3637, file: !3, line: 1348, type: !728)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1347, column: 2)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1346, column: 7)
!3639 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1346, column: 7)
!3640 = !DILocation(line: 0, scope: !3630)
!3641 = !DILocation(line: 1343, column: 7, scope: !3635)
!3642 = !DILocation(line: 1343, column: 7, scope: !3630)
!3643 = !DILocation(line: 0, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1349, column: 8)
!3645 = !DILocation(line: 1346, column: 7, scope: !3639)
!3646 = !DILocation(line: 1346, column: 23, scope: !3638)
!3647 = !DILocation(line: 0, scope: !3634)
!3648 = !DILocation(line: 1346, column: 27, scope: !3638)
!3649 = !DILocation(line: 1346, column: 21, scope: !3638)
!3650 = !DILocation(line: 1348, column: 29, scope: !3637)
!3651 = !DILocation(line: 0, scope: !3637)
!3652 = !DILocation(line: 1349, column: 15, scope: !3644)
!3653 = !DILocation(line: 1349, column: 8, scope: !3644)
!3654 = !DILocation(line: 1349, column: 8, scope: !3637)
!3655 = !DILocation(line: 1350, column: 65, scope: !3644)
!3656 = !DILocation(line: 1350, column: 6, scope: !3644)
!3657 = !DILocation(line: 1346, column: 50, scope: !3638)
!3658 = !DILocation(line: 1346, column: 7, scope: !3638)
!3659 = distinct !{!3659, !3645, !3660}
!3660 = !DILocation(line: 1351, column: 2, scope: !3639)
!3661 = !DILocation(line: 1352, column: 7, scope: !3634)
!3662 = !DILocation(line: 1353, column: 5, scope: !3634)
!3663 = !DILocation(line: 1354, column: 1, scope: !3630)
!3664 = distinct !DISubprogram(name: "df_set_bb_dirty_nonlr", scope: !3, file: !3, line: 1363, type: !1833, scopeLine: 1364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3665)
!3665 = !{!3666, !3667, !3670}
!3666 = !DILocalVariable(name: "bb", arg: 1, scope: !3664, file: !3, line: 1363, type: !812)
!3667 = !DILocalVariable(name: "p", scope: !3668, file: !3, line: 1367, type: !721)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 1366, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 1365, column: 7)
!3670 = !DILocalVariable(name: "dflow", scope: !3671, file: !3, line: 1370, type: !728)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1369, column: 2)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 1368, column: 7)
!3673 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1368, column: 7)
!3674 = !DILocation(line: 0, scope: !3664)
!3675 = !DILocation(line: 1365, column: 7, scope: !3669)
!3676 = !DILocation(line: 1365, column: 7, scope: !3664)
!3677 = !DILocation(line: 0, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1373, column: 8)
!3679 = !DILocation(line: 1368, column: 7, scope: !3673)
!3680 = !DILocation(line: 1368, column: 23, scope: !3672)
!3681 = !DILocation(line: 0, scope: !3668)
!3682 = !DILocation(line: 1368, column: 27, scope: !3672)
!3683 = !DILocation(line: 1368, column: 21, scope: !3672)
!3684 = !DILocation(line: 1370, column: 29, scope: !3671)
!3685 = !DILocation(line: 0, scope: !3671)
!3686 = !DILocation(line: 1371, column: 17, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1371, column: 8)
!3688 = !DILocation(line: 1371, column: 14, scope: !3687)
!3689 = !DILocation(line: 1371, column: 8, scope: !3671)
!3690 = !DILocation(line: 1373, column: 15, scope: !3678)
!3691 = !DILocation(line: 1373, column: 8, scope: !3678)
!3692 = !DILocation(line: 1373, column: 8, scope: !3671)
!3693 = !DILocation(line: 1374, column: 65, scope: !3678)
!3694 = !DILocation(line: 1374, column: 6, scope: !3678)
!3695 = !DILocation(line: 1375, column: 11, scope: !3671)
!3696 = !DILocation(line: 1375, column: 27, scope: !3671)
!3697 = !DILocation(line: 1376, column: 2, scope: !3672)
!3698 = !DILocation(line: 1368, column: 50, scope: !3672)
!3699 = !DILocation(line: 1368, column: 7, scope: !3672)
!3700 = distinct !{!3700, !3679, !3701}
!3701 = !DILocation(line: 1376, column: 2, scope: !3673)
!3702 = !DILocation(line: 1378, column: 1, scope: !3664)
!3703 = distinct !DISubprogram(name: "df_compact_blocks", scope: !3, file: !3, line: 1398, type: !1850, scopeLine: 1399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3715}
!3705 = !DILocalVariable(name: "i", scope: !3703, file: !3, line: 1400, type: !721)
!3706 = !DILocalVariable(name: "p", scope: !3703, file: !3, line: 1400, type: !721)
!3707 = !DILocalVariable(name: "bb", scope: !3703, file: !3, line: 1401, type: !812)
!3708 = !DILocalVariable(name: "problem_temps", scope: !3703, file: !3, line: 1402, type: !1211)
!3709 = !DILocalVariable(name: "size", scope: !3703, file: !3, line: 1403, type: !721)
!3710 = !DILocalVariable(name: "tmp", scope: !3703, file: !3, line: 1404, type: !742)
!3711 = !DILocalVariable(name: "dflow", scope: !3712, file: !3, line: 1409, type: !728)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 1408, column: 5)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1407, column: 3)
!3714 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1407, column: 3)
!3715 = !DILocalVariable(name: "bb", scope: !3716, file: !3, line: 1454, type: !812)
!3716 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 1453, column: 6)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 1452, column: 4)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1452, column: 4)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 1433, column: 2)
!3720 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1432, column: 11)
!3721 = !DILocation(line: 1403, column: 14, scope: !3703)
!3722 = !DILocation(line: 1403, column: 31, scope: !3703)
!3723 = !DILocation(line: 0, scope: !3703)
!3724 = !DILocation(line: 1404, column: 16, scope: !3703)
!3725 = !DILocation(line: 1405, column: 19, scope: !3703)
!3726 = !DILocation(line: 1407, column: 8, scope: !3714)
!3727 = !DILocation(line: 0, scope: !3714)
!3728 = !DILocation(line: 1407, column: 19, scope: !3713)
!3729 = !DILocation(line: 1407, column: 23, scope: !3713)
!3730 = !DILocation(line: 1407, column: 17, scope: !3713)
!3731 = !DILocation(line: 1407, column: 3, scope: !3714)
!3732 = !DILocation(line: 1409, column: 32, scope: !3712)
!3733 = !DILocation(line: 0, scope: !3712)
!3734 = !DILocation(line: 1413, column: 18, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1413, column: 11)
!3736 = !DILocation(line: 1413, column: 11, scope: !3735)
!3737 = !DILocation(line: 1413, column: 11, scope: !3712)
!3738 = !DILocation(line: 1415, column: 4, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 1414, column: 2)
!3740 = !DILocation(line: 1416, column: 25, scope: !3739)
!3741 = !DILocation(line: 1416, column: 4, scope: !3739)
!3742 = !DILocation(line: 1417, column: 8, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1417, column: 8)
!3744 = !DILocation(line: 1417, column: 8, scope: !3739)
!3745 = !DILocation(line: 1418, column: 29, scope: !3743)
!3746 = !DILocation(line: 1418, column: 6, scope: !3743)
!3747 = !DILocation(line: 1419, column: 8, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1419, column: 8)
!3749 = !DILocation(line: 1419, column: 8, scope: !3739)
!3750 = !DILocation(line: 1420, column: 29, scope: !3748)
!3751 = !DILocation(line: 1420, column: 6, scope: !3748)
!3752 = !DILocation(line: 1423, column: 4, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1423, column: 4)
!3754 = !DILocation(line: 1423, column: 4, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 1423, column: 4)
!3756 = !DILocation(line: 0, scope: !3739)
!3757 = !DILocation(line: 0, scope: !3753)
!3758 = !DILocation(line: 1425, column: 35, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 1425, column: 12)
!3760 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 1424, column: 6)
!3761 = !DILocation(line: 1425, column: 12, scope: !3759)
!3762 = !DILocation(line: 1425, column: 12, scope: !3760)
!3763 = !DILocation(line: 1426, column: 26, scope: !3759)
!3764 = !DILocation(line: 1426, column: 3, scope: !3759)
!3765 = !DILocation(line: 1427, column: 9, scope: !3760)
!3766 = !DILocation(line: 0, scope: !3755)
!3767 = distinct !{!3767, !3752, !3768}
!3768 = !DILocation(line: 1428, column: 6, scope: !3753)
!3769 = !DILocation(line: 1432, column: 18, scope: !3720)
!3770 = !DILocation(line: 1432, column: 27, scope: !3720)
!3771 = !DILocation(line: 1432, column: 11, scope: !3720)
!3772 = !DILocation(line: 1432, column: 11, scope: !3712)
!3773 = !DILocation(line: 1434, column: 4, scope: !3719)
!3774 = !DILocation(line: 1435, column: 34, scope: !3719)
!3775 = !DILocation(line: 1435, column: 4, scope: !3719)
!3776 = !DILocation(line: 1441, column: 4, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 1441, column: 4)
!3778 = !DILocation(line: 1441, column: 4, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 1441, column: 4)
!3780 = !DILocation(line: 0, scope: !3719)
!3781 = !DILocation(line: 0, scope: !3777)
!3782 = !DILocation(line: 1443, column: 52, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1442, column: 6)
!3784 = !DILocation(line: 1443, column: 34, scope: !3783)
!3785 = !DILocation(line: 1443, column: 8, scope: !3783)
!3786 = !DILocation(line: 1444, column: 26, scope: !3783)
!3787 = !DILocation(line: 1444, column: 8, scope: !3783)
!3788 = !DILocation(line: 1444, column: 33, scope: !3783)
!3789 = !DILocation(line: 1445, column: 9, scope: !3783)
!3790 = !DILocation(line: 0, scope: !3779)
!3791 = distinct !{!3791, !3776, !3792}
!3792 = !DILocation(line: 1446, column: 6, scope: !3777)
!3793 = !DILocation(line: 1447, column: 19, scope: !3719)
!3794 = !DILocation(line: 1447, column: 30, scope: !3719)
!3795 = !DILocation(line: 1447, column: 12, scope: !3719)
!3796 = !DILocation(line: 1448, column: 6, scope: !3719)
!3797 = !DILocation(line: 1448, column: 23, scope: !3719)
!3798 = !DILocation(line: 1448, column: 5, scope: !3719)
!3799 = !DILocation(line: 1448, column: 28, scope: !3719)
!3800 = !DILocation(line: 1447, column: 4, scope: !3719)
!3801 = !DILocation(line: 1452, column: 9, scope: !3718)
!3802 = !DILocation(line: 0, scope: !3718)
!3803 = !DILocation(line: 1452, column: 35, scope: !3717)
!3804 = !DILocation(line: 1452, column: 33, scope: !3717)
!3805 = !DILocation(line: 1452, column: 4, scope: !3718)
!3806 = !DILocation(line: 1454, column: 25, scope: !3716)
!3807 = !DILocation(line: 0, scope: !3716)
!3808 = !DILocation(line: 1455, column: 12, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1455, column: 12)
!3810 = !DILocation(line: 1455, column: 32, scope: !3809)
!3811 = !DILocation(line: 1455, column: 29, scope: !3809)
!3812 = !DILocation(line: 1456, column: 10, scope: !3809)
!3813 = !DILocation(line: 1456, column: 19, scope: !3809)
!3814 = !DILocation(line: 1456, column: 3, scope: !3809)
!3815 = !DILocation(line: 1452, column: 54, scope: !3717)
!3816 = !DILocation(line: 1452, column: 4, scope: !3717)
!3817 = distinct !{!3817, !3805, !3818}
!3818 = !DILocation(line: 1458, column: 6, scope: !3718)
!3819 = !DILocation(line: 1407, column: 46, scope: !3713)
!3820 = !DILocation(line: 1407, column: 3, scope: !3713)
!3821 = distinct !{!3821, !3731, !3822}
!3822 = !DILocation(line: 1460, column: 5, scope: !3714)
!3823 = !DILocation(line: 1464, column: 11, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1464, column: 7)
!3825 = !DILocation(line: 1464, column: 7, scope: !3824)
!3826 = !DILocation(line: 1464, column: 7, scope: !3703)
!3827 = !DILocation(line: 1466, column: 11, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1466, column: 11)
!3829 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1465, column: 5)
!3830 = !DILocation(line: 1466, column: 11, scope: !3829)
!3831 = !DILocation(line: 1467, column: 18, scope: !3828)
!3832 = !DILocation(line: 1467, column: 22, scope: !3828)
!3833 = !DILocation(line: 1467, column: 2, scope: !3828)
!3834 = !DILocation(line: 1468, column: 11, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1468, column: 11)
!3836 = !DILocation(line: 1468, column: 11, scope: !3829)
!3837 = !DILocation(line: 1469, column: 18, scope: !3835)
!3838 = !DILocation(line: 1469, column: 22, scope: !3835)
!3839 = !DILocation(line: 1469, column: 2, scope: !3835)
!3840 = !DILocation(line: 1470, column: 25, scope: !3829)
!3841 = !DILocation(line: 1470, column: 29, scope: !3829)
!3842 = !DILocation(line: 1470, column: 7, scope: !3829)
!3843 = !DILocation(line: 1471, column: 21, scope: !3829)
!3844 = !DILocation(line: 1471, column: 25, scope: !3829)
!3845 = !DILocation(line: 1471, column: 7, scope: !3829)
!3846 = !DILocation(line: 1473, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1473, column: 7)
!3848 = !DILocation(line: 1473, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1473, column: 7)
!3850 = !DILocation(line: 0, scope: !3829)
!3851 = !DILocation(line: 0, scope: !3847)
!3852 = !DILocation(line: 1475, column: 31, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 1475, column: 8)
!3854 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1474, column: 2)
!3855 = !DILocation(line: 1475, column: 8, scope: !3853)
!3856 = !DILocation(line: 1475, column: 8, scope: !3854)
!3857 = !DILocation(line: 1476, column: 22, scope: !3853)
!3858 = !DILocation(line: 1476, column: 26, scope: !3853)
!3859 = !DILocation(line: 1476, column: 6, scope: !3853)
!3860 = !DILocation(line: 1477, column: 5, scope: !3854)
!3861 = !DILocation(line: 0, scope: !3849)
!3862 = distinct !{!3862, !3846, !3863}
!3863 = !DILocation(line: 1478, column: 2, scope: !3847)
!3864 = !DILocation(line: 1481, column: 3, scope: !3703)
!3865 = !DILocation(line: 1483, column: 3, scope: !3703)
!3866 = !DILocation(line: 1486, column: 3, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1486, column: 3)
!3868 = !DILocation(line: 1486, column: 3, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1486, column: 3)
!3870 = !DILocation(line: 0, scope: !3867)
!3871 = !DILocation(line: 1488, column: 7, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 1487, column: 5)
!3873 = !DILocation(line: 1489, column: 11, scope: !3872)
!3874 = !DILocation(line: 1489, column: 17, scope: !3872)
!3875 = !DILocation(line: 1490, column: 8, scope: !3872)
!3876 = !DILocation(line: 0, scope: !3869)
!3877 = distinct !{!3877, !3866, !3878}
!3878 = !DILocation(line: 1491, column: 5, scope: !3867)
!3879 = !DILocation(line: 1493, column: 3, scope: !3703)
!3880 = !DILocation(line: 1495, column: 3, scope: !3703)
!3881 = !DILocation(line: 1495, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1495, column: 3)
!3883 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 1495, column: 3)
!3884 = !DILocation(line: 1495, column: 12, scope: !3882)
!3885 = !DILocation(line: 1495, column: 3, scope: !3883)
!3886 = !DILocation(line: 1496, column: 5, scope: !3882)
!3887 = !DILocation(line: 1495, column: 33, scope: !3882)
!3888 = !DILocation(line: 1495, column: 3, scope: !3882)
!3889 = distinct !{!3889, !3885, !3890}
!3890 = !DILocation(line: 1496, column: 5, scope: !3883)
!3891 = !DILocation(line: 1502, column: 1, scope: !3703)
!3892 = distinct !DISubprogram(name: "VEC_basic_block_base_replace", scope: !141, file: !141, line: 281, type: !3893, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3896)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!812, !3895, !7, !812}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DILocalVariable(name: "vec_", arg: 1, scope: !3892, file: !141, line: 281, type: !3895)
!3898 = !DILocalVariable(name: "ix_", arg: 2, scope: !3892, file: !141, line: 281, type: !7)
!3899 = !DILocalVariable(name: "obj_", arg: 3, scope: !3892, file: !141, line: 281, type: !812)
!3900 = !DILocalVariable(name: "old_obj_", scope: !3892, file: !141, line: 281, type: !812)
!3901 = !DILocation(line: 0, scope: !3892)
!3902 = !DILocation(line: 281, column: 1, scope: !3892)
!3903 = distinct !DISubprogram(name: "df_bb_replace", scope: !3, file: !3, line: 1509, type: !3904, scopeLine: 1510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !721, !812}
!3906 = !{!3907, !3908, !3909, !3910, !3911}
!3907 = !DILocalVariable(name: "old_index", arg: 1, scope: !3903, file: !3, line: 1509, type: !721)
!3908 = !DILocalVariable(name: "new_block", arg: 2, scope: !3903, file: !3, line: 1509, type: !812)
!3909 = !DILocalVariable(name: "new_block_index", scope: !3903, file: !3, line: 1511, type: !721)
!3910 = !DILocalVariable(name: "p", scope: !3903, file: !3, line: 1512, type: !721)
!3911 = !DILocalVariable(name: "dflow", scope: !3912, file: !3, line: 1522, type: !728)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 1521, column: 5)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 1520, column: 3)
!3914 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 1520, column: 3)
!3915 = !DILocation(line: 0, scope: !3903)
!3916 = !DILocation(line: 1511, column: 36, scope: !3903)
!3917 = !DILocation(line: 1514, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 1514, column: 7)
!3919 = !DILocation(line: 1514, column: 7, scope: !3903)
!3920 = !DILocation(line: 1515, column: 5, scope: !3918)
!3921 = !DILocation(line: 1517, column: 3, scope: !3903)
!3922 = !DILocation(line: 1518, column: 3, scope: !3903)
!3923 = !DILocation(line: 1520, column: 8, scope: !3914)
!3924 = !DILocation(line: 0, scope: !3914)
!3925 = !DILocation(line: 1520, column: 19, scope: !3913)
!3926 = !DILocation(line: 1520, column: 23, scope: !3913)
!3927 = !DILocation(line: 1520, column: 17, scope: !3913)
!3928 = !DILocation(line: 1520, column: 3, scope: !3914)
!3929 = !DILocation(line: 1522, column: 32, scope: !3912)
!3930 = !DILocation(line: 0, scope: !3912)
!3931 = !DILocation(line: 1523, column: 18, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1523, column: 11)
!3933 = !DILocation(line: 1523, column: 11, scope: !3932)
!3934 = !DILocation(line: 1523, column: 11, scope: !3912)
!3935 = !DILocation(line: 1525, column: 4, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1524, column: 2)
!3937 = !DILocation(line: 1526, column: 4, scope: !3936)
!3938 = !DILocation(line: 1528, column: 6, scope: !3936)
!3939 = !DILocation(line: 1527, column: 4, scope: !3936)
!3940 = !DILocation(line: 1529, column: 2, scope: !3936)
!3941 = !DILocation(line: 1520, column: 46, scope: !3913)
!3942 = !DILocation(line: 1520, column: 3, scope: !3913)
!3943 = distinct !{!3943, !3928, !3944}
!3944 = !DILocation(line: 1530, column: 5, scope: !3914)
!3945 = !DILocation(line: 1532, column: 3, scope: !3903)
!3946 = !DILocation(line: 1533, column: 3, scope: !3903)
!3947 = !DILocation(line: 1534, column: 20, scope: !3903)
!3948 = !DILocation(line: 1535, column: 20, scope: !3903)
!3949 = !DILocation(line: 1535, column: 3, scope: !3903)
!3950 = !DILocation(line: 1536, column: 3, scope: !3903)
!3951 = !DILocation(line: 1537, column: 1, scope: !3903)
!3952 = distinct !DISubprogram(name: "df_clear_bb_dirty", scope: !3, file: !3, line: 1384, type: !1833, scopeLine: 1385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "bb", arg: 1, scope: !3952, file: !3, line: 1384, type: !812)
!3955 = !DILocalVariable(name: "p", scope: !3952, file: !3, line: 1386, type: !721)
!3956 = !DILocalVariable(name: "dflow", scope: !3957, file: !3, line: 1389, type: !728)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 1388, column: 5)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1387, column: 3)
!3959 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 1387, column: 3)
!3960 = !DILocation(line: 0, scope: !3952)
!3961 = !DILocation(line: 0, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 1390, column: 11)
!3963 = !DILocation(line: 1387, column: 8, scope: !3959)
!3964 = !DILocation(line: 0, scope: !3959)
!3965 = !DILocation(line: 1387, column: 19, scope: !3958)
!3966 = !DILocation(line: 1387, column: 23, scope: !3958)
!3967 = !DILocation(line: 1387, column: 17, scope: !3958)
!3968 = !DILocation(line: 1387, column: 3, scope: !3959)
!3969 = !DILocation(line: 1389, column: 32, scope: !3957)
!3970 = !DILocation(line: 0, scope: !3957)
!3971 = !DILocation(line: 1390, column: 18, scope: !3962)
!3972 = !DILocation(line: 1390, column: 11, scope: !3962)
!3973 = !DILocation(line: 1390, column: 11, scope: !3957)
!3974 = !DILocation(line: 1391, column: 63, scope: !3962)
!3975 = !DILocation(line: 1391, column: 2, scope: !3962)
!3976 = !DILocation(line: 1387, column: 46, scope: !3958)
!3977 = !DILocation(line: 1387, column: 3, scope: !3958)
!3978 = distinct !{!3978, !3968, !3979}
!3979 = !DILocation(line: 1392, column: 5, scope: !3959)
!3980 = !DILocation(line: 1393, column: 1, scope: !3952)
!3981 = distinct !DISubprogram(name: "df_bb_delete", scope: !3, file: !3, line: 1545, type: !3982, scopeLine: 1546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3984)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !721}
!3984 = !{!3985, !3986, !3987, !3988, !3992}
!3985 = !DILocalVariable(name: "bb_index", arg: 1, scope: !3981, file: !3, line: 1545, type: !721)
!3986 = !DILocalVariable(name: "bb", scope: !3981, file: !3, line: 1547, type: !812)
!3987 = !DILocalVariable(name: "i", scope: !3981, file: !3, line: 1548, type: !721)
!3988 = !DILocalVariable(name: "dflow", scope: !3989, file: !3, line: 1555, type: !728)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 1554, column: 5)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 1553, column: 3)
!3991 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 1553, column: 3)
!3992 = !DILocalVariable(name: "bb_info", scope: !3993, file: !3, line: 1558, type: !725)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 1557, column: 2)
!3994 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 1556, column: 11)
!3995 = !DILocation(line: 0, scope: !3981)
!3996 = !DILocation(line: 1547, column: 20, scope: !3981)
!3997 = !DILocation(line: 1550, column: 8, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 1550, column: 7)
!3999 = !DILocation(line: 1550, column: 7, scope: !3981)
!4000 = !DILocation(line: 1553, column: 3, scope: !3991)
!4001 = !DILocation(line: 1553, column: 19, scope: !3990)
!4002 = !DILocation(line: 1553, column: 23, scope: !3990)
!4003 = !DILocation(line: 1553, column: 17, scope: !3990)
!4004 = !DILocation(line: 1555, column: 32, scope: !3989)
!4005 = !DILocation(line: 0, scope: !3989)
!4006 = !DILocation(line: 1556, column: 18, scope: !3994)
!4007 = !DILocation(line: 1556, column: 27, scope: !3994)
!4008 = !DILocation(line: 1556, column: 11, scope: !3994)
!4009 = !DILocation(line: 1556, column: 11, scope: !3989)
!4010 = !DILocation(line: 1558, column: 20, scope: !3993)
!4011 = !DILocation(line: 0, scope: !3993)
!4012 = !DILocation(line: 1559, column: 8, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1559, column: 8)
!4014 = !DILocation(line: 1559, column: 8, scope: !3993)
!4015 = !DILocation(line: 1561, column: 15, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 1560, column: 6)
!4017 = !DILocation(line: 1561, column: 24, scope: !4016)
!4018 = !DILocation(line: 1561, column: 8, scope: !4016)
!4019 = !DILocation(line: 1562, column: 8, scope: !4016)
!4020 = !DILocation(line: 1563, column: 6, scope: !4016)
!4021 = !DILocation(line: 1553, column: 46, scope: !3990)
!4022 = !DILocation(line: 1553, column: 3, scope: !3990)
!4023 = distinct !{!4023, !4000, !4024}
!4024 = !DILocation(line: 1565, column: 5, scope: !3991)
!4025 = !DILocation(line: 1566, column: 3, scope: !3981)
!4026 = !DILocation(line: 1567, column: 3, scope: !3981)
!4027 = !DILocation(line: 1568, column: 1, scope: !3981)
!4028 = distinct !DISubprogram(name: "df_bb_regno_first_def_find", scope: !3, file: !3, line: 1676, type: !4029, scopeLine: 1677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!1969, !812, !7}
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037}
!4032 = !DILocalVariable(name: "bb", arg: 1, scope: !4028, file: !3, line: 1676, type: !812)
!4033 = !DILocalVariable(name: "regno", arg: 2, scope: !4028, file: !3, line: 1676, type: !7)
!4034 = !DILocalVariable(name: "insn", scope: !4028, file: !3, line: 1678, type: !843)
!4035 = !DILocalVariable(name: "def_rec", scope: !4028, file: !3, line: 1679, type: !1968)
!4036 = !DILocalVariable(name: "uid", scope: !4028, file: !3, line: 1680, type: !7)
!4037 = !DILocalVariable(name: "def", scope: !4038, file: !3, line: 1690, type: !1969)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 1689, column: 2)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 1688, column: 7)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1688, column: 7)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1683, column: 5)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1682, column: 3)
!4043 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1682, column: 3)
!4044 = !DILocation(line: 0, scope: !4028)
!4045 = !DILocation(line: 1682, column: 3, scope: !4043)
!4046 = !DILocation(line: 0, scope: !4040)
!4047 = !DILocation(line: 0, scope: !4043)
!4048 = !DILocation(line: 1682, column: 3, scope: !4042)
!4049 = !DILocation(line: 1684, column: 12, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1684, column: 11)
!4051 = !DILocation(line: 1684, column: 11, scope: !4041)
!4052 = !DILocation(line: 1687, column: 13, scope: !4041)
!4053 = !DILocation(line: 1688, column: 22, scope: !4040)
!4054 = !DILocation(line: 1688, column: 12, scope: !4040)
!4055 = !DILocation(line: 1688, column: 46, scope: !4039)
!4056 = !DILocation(line: 1688, column: 7, scope: !4040)
!4057 = !DILocation(line: 0, scope: !4038)
!4058 = !DILocation(line: 1691, column: 8, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 1691, column: 8)
!4060 = !DILocation(line: 1691, column: 27, scope: !4059)
!4061 = !DILocation(line: 0, scope: !4039)
!4062 = !DILocation(line: 1688, column: 63, scope: !4039)
!4063 = !DILocation(line: 1688, column: 7, scope: !4039)
!4064 = distinct !{!4064, !4056, !4065}
!4065 = !DILocation(line: 1693, column: 2, scope: !4040)
!4066 = distinct !{!4066, !4045, !4067}
!4067 = !DILocation(line: 1694, column: 5, scope: !4043)
!4068 = !DILocation(line: 1696, column: 1, scope: !4028)
!4069 = distinct !DISubprogram(name: "df_bb_regno_last_def_find", scope: !3, file: !3, line: 1702, type: !4029, scopeLine: 1703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076}
!4071 = !DILocalVariable(name: "bb", arg: 1, scope: !4069, file: !3, line: 1702, type: !812)
!4072 = !DILocalVariable(name: "regno", arg: 2, scope: !4069, file: !3, line: 1702, type: !7)
!4073 = !DILocalVariable(name: "insn", scope: !4069, file: !3, line: 1704, type: !843)
!4074 = !DILocalVariable(name: "def_rec", scope: !4069, file: !3, line: 1705, type: !1968)
!4075 = !DILocalVariable(name: "uid", scope: !4069, file: !3, line: 1706, type: !7)
!4076 = !DILocalVariable(name: "def", scope: !4077, file: !3, line: 1716, type: !1969)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 1715, column: 2)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 1714, column: 7)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1714, column: 7)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 1709, column: 5)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 1708, column: 3)
!4082 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 1708, column: 3)
!4083 = !DILocation(line: 0, scope: !4069)
!4084 = !DILocation(line: 1708, column: 3, scope: !4082)
!4085 = !DILocation(line: 0, scope: !4079)
!4086 = !DILocation(line: 0, scope: !4082)
!4087 = !DILocation(line: 1708, column: 3, scope: !4081)
!4088 = !DILocation(line: 1710, column: 12, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1710, column: 11)
!4090 = !DILocation(line: 1710, column: 11, scope: !4080)
!4091 = !DILocation(line: 1713, column: 13, scope: !4080)
!4092 = !DILocation(line: 1714, column: 22, scope: !4079)
!4093 = !DILocation(line: 1714, column: 12, scope: !4079)
!4094 = !DILocation(line: 1714, column: 46, scope: !4078)
!4095 = !DILocation(line: 1714, column: 7, scope: !4079)
!4096 = !DILocation(line: 0, scope: !4077)
!4097 = !DILocation(line: 1717, column: 8, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 1717, column: 8)
!4099 = !DILocation(line: 1717, column: 27, scope: !4098)
!4100 = !DILocation(line: 0, scope: !4078)
!4101 = !DILocation(line: 1714, column: 63, scope: !4078)
!4102 = !DILocation(line: 1714, column: 7, scope: !4078)
!4103 = distinct !{!4103, !4095, !4104}
!4104 = !DILocation(line: 1719, column: 2, scope: !4079)
!4105 = distinct !{!4105, !4084, !4106}
!4106 = !DILocation(line: 1720, column: 5, scope: !4082)
!4107 = !DILocation(line: 1723, column: 1, scope: !4069)
!4108 = distinct !DISubprogram(name: "df_find_def", scope: !3, file: !3, line: 1729, type: !4109, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!1969, !843, !843}
!4111 = !{!4112, !4113, !4114, !4115, !4116}
!4112 = !DILocalVariable(name: "insn", arg: 1, scope: !4108, file: !3, line: 1729, type: !843)
!4113 = !DILocalVariable(name: "reg", arg: 2, scope: !4108, file: !3, line: 1729, type: !843)
!4114 = !DILocalVariable(name: "uid", scope: !4108, file: !3, line: 1731, type: !7)
!4115 = !DILocalVariable(name: "def_rec", scope: !4108, file: !3, line: 1732, type: !1968)
!4116 = !DILocalVariable(name: "def", scope: !4117, file: !3, line: 1741, type: !1969)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 1740, column: 5)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 1739, column: 3)
!4119 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1739, column: 3)
!4120 = !DILocation(line: 0, scope: !4108)
!4121 = !DILocation(line: 1734, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1734, column: 7)
!4123 = !DILocation(line: 1734, column: 22, scope: !4122)
!4124 = !DILocation(line: 1734, column: 7, scope: !4108)
!4125 = !DILocation(line: 1735, column: 11, scope: !4122)
!4126 = !DILocation(line: 1736, column: 3, scope: !4108)
!4127 = !DILocation(line: 1735, column: 5, scope: !4122)
!4128 = !DILocation(line: 1738, column: 9, scope: !4108)
!4129 = !DILocation(line: 1739, column: 18, scope: !4119)
!4130 = !DILocation(line: 1739, column: 8, scope: !4119)
!4131 = !DILocation(line: 0, scope: !4119)
!4132 = !DILocation(line: 1739, column: 42, scope: !4118)
!4133 = !DILocation(line: 1739, column: 3, scope: !4119)
!4134 = !DILocation(line: 0, scope: !4117)
!4135 = !DILocation(line: 1742, column: 24, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1742, column: 11)
!4137 = !DILocation(line: 1742, column: 11, scope: !4136)
!4138 = !DILocation(line: 0, scope: !4118)
!4139 = !DILocation(line: 1739, column: 59, scope: !4118)
!4140 = !DILocation(line: 1739, column: 3, scope: !4118)
!4141 = distinct !{!4141, !4133, !4142}
!4142 = !DILocation(line: 1744, column: 5, scope: !4119)
!4143 = !DILocation(line: 1747, column: 1, scope: !4108)
!4144 = distinct !DISubprogram(name: "df_reg_defined", scope: !3, file: !3, line: 1753, type: !4145, scopeLine: 1754, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!720, !843, !843}
!4147 = !{!4148, !4149}
!4148 = !DILocalVariable(name: "insn", arg: 1, scope: !4144, file: !3, line: 1753, type: !843)
!4149 = !DILocalVariable(name: "reg", arg: 2, scope: !4144, file: !3, line: 1753, type: !843)
!4150 = !DILocation(line: 0, scope: !4144)
!4151 = !DILocation(line: 1755, column: 10, scope: !4144)
!4152 = !DILocation(line: 1755, column: 34, scope: !4144)
!4153 = !DILocation(line: 1755, column: 3, scope: !4144)
!4154 = distinct !DISubprogram(name: "df_find_use", scope: !3, file: !3, line: 1763, type: !4109, scopeLine: 1764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4164}
!4156 = !DILocalVariable(name: "insn", arg: 1, scope: !4154, file: !3, line: 1763, type: !843)
!4157 = !DILocalVariable(name: "reg", arg: 2, scope: !4154, file: !3, line: 1763, type: !843)
!4158 = !DILocalVariable(name: "uid", scope: !4154, file: !3, line: 1765, type: !7)
!4159 = !DILocalVariable(name: "use_rec", scope: !4154, file: !3, line: 1766, type: !1968)
!4160 = !DILocalVariable(name: "use", scope: !4161, file: !3, line: 1775, type: !1969)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 1774, column: 5)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 1773, column: 3)
!4163 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1773, column: 3)
!4164 = !DILocalVariable(name: "use", scope: !4165, file: !3, line: 1782, type: !1969)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 1781, column: 7)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 1780, column: 5)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 1780, column: 5)
!4168 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1779, column: 7)
!4169 = !DILocation(line: 0, scope: !4154)
!4170 = !DILocation(line: 1768, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1768, column: 7)
!4172 = !DILocation(line: 1768, column: 22, scope: !4171)
!4173 = !DILocation(line: 1768, column: 7, scope: !4154)
!4174 = !DILocation(line: 1769, column: 11, scope: !4171)
!4175 = !DILocation(line: 1770, column: 3, scope: !4154)
!4176 = !DILocation(line: 1769, column: 5, scope: !4171)
!4177 = !DILocation(line: 1772, column: 9, scope: !4154)
!4178 = !DILocation(line: 1773, column: 18, scope: !4163)
!4179 = !DILocation(line: 1773, column: 8, scope: !4163)
!4180 = !DILocation(line: 0, scope: !4163)
!4181 = !DILocation(line: 1773, column: 42, scope: !4162)
!4182 = !DILocation(line: 1773, column: 3, scope: !4163)
!4183 = !DILocation(line: 0, scope: !4161)
!4184 = !DILocation(line: 1776, column: 24, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 1776, column: 11)
!4186 = !DILocation(line: 1776, column: 11, scope: !4185)
!4187 = !DILocation(line: 0, scope: !4162)
!4188 = !DILocation(line: 1773, column: 59, scope: !4162)
!4189 = !DILocation(line: 1773, column: 3, scope: !4162)
!4190 = distinct !{!4190, !4182, !4191}
!4191 = !DILocation(line: 1778, column: 5, scope: !4163)
!4192 = !DILocation(line: 1779, column: 7, scope: !4168)
!4193 = !DILocation(line: 1779, column: 11, scope: !4168)
!4194 = !DILocation(line: 1779, column: 28, scope: !4168)
!4195 = !DILocation(line: 1779, column: 7, scope: !4154)
!4196 = !DILocation(line: 1780, column: 20, scope: !4167)
!4197 = !DILocation(line: 1780, column: 10, scope: !4167)
!4198 = !DILocation(line: 0, scope: !4167)
!4199 = !DILocation(line: 1780, column: 47, scope: !4166)
!4200 = !DILocation(line: 1780, column: 5, scope: !4167)
!4201 = !DILocation(line: 0, scope: !4165)
!4202 = !DILocation(line: 1783, column: 19, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1783, column: 6)
!4204 = !DILocation(line: 1783, column: 6, scope: !4203)
!4205 = !DILocation(line: 0, scope: !4166)
!4206 = !DILocation(line: 1780, column: 64, scope: !4166)
!4207 = !DILocation(line: 1780, column: 5, scope: !4166)
!4208 = distinct !{!4208, !4200, !4209}
!4209 = !DILocation(line: 1785, column: 7, scope: !4167)
!4210 = !DILocation(line: 1787, column: 1, scope: !4154)
!4211 = distinct !DISubprogram(name: "df_reg_used", scope: !3, file: !3, line: 1793, type: !4145, scopeLine: 1794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4212)
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "insn", arg: 1, scope: !4211, file: !3, line: 1793, type: !843)
!4214 = !DILocalVariable(name: "reg", arg: 2, scope: !4211, file: !3, line: 1793, type: !843)
!4215 = !DILocation(line: 0, scope: !4211)
!4216 = !DILocation(line: 1795, column: 10, scope: !4211)
!4217 = !DILocation(line: 1795, column: 34, scope: !4211)
!4218 = !DILocation(line: 1795, column: 3, scope: !4211)
!4219 = distinct !DISubprogram(name: "df_print_regset", scope: !3, file: !3, line: 1808, type: !4220, scopeLine: 1809, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4222)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !1859, !742}
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DILocalVariable(name: "file", arg: 1, scope: !4219, file: !3, line: 1808, type: !1859)
!4224 = !DILocalVariable(name: "r", arg: 2, scope: !4219, file: !3, line: 1808, type: !742)
!4225 = !DILocalVariable(name: "i", scope: !4219, file: !3, line: 1810, type: !7)
!4226 = !DILocalVariable(name: "bi", scope: !4219, file: !3, line: 1811, type: !2603)
!4227 = !DILocation(line: 0, scope: !4219)
!4228 = !DILocation(line: 1810, column: 3, scope: !4219)
!4229 = !DILocation(line: 1811, column: 3, scope: !4219)
!4230 = !DILocation(line: 1813, column: 9, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 1813, column: 7)
!4232 = !DILocation(line: 1813, column: 7, scope: !4219)
!4233 = !DILocation(line: 1814, column: 5, scope: !4231)
!4234 = !DILocation(line: 1817, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 1817, column: 7)
!4236 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 1816, column: 5)
!4237 = !DILocation(line: 1817, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 1817, column: 7)
!4239 = !DILocation(line: 1819, column: 26, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 1818, column: 2)
!4241 = !DILocation(line: 1819, column: 4, scope: !4240)
!4242 = !DILocation(line: 1820, column: 8, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 1820, column: 8)
!4244 = !DILocation(line: 1820, column: 10, scope: !4243)
!4245 = !DILocation(line: 1820, column: 8, scope: !4240)
!4246 = !DILocation(line: 1821, column: 30, scope: !4243)
!4247 = !DILocation(line: 1821, column: 6, scope: !4243)
!4248 = distinct !{!4248, !4234, !4249}
!4249 = !DILocation(line: 1822, column: 2, scope: !4235)
!4250 = !DILocation(line: 1824, column: 3, scope: !4219)
!4251 = !DILocation(line: 1825, column: 1, scope: !4219)
!4252 = distinct !DISubprogram(name: "df_print_byte_regset", scope: !3, file: !3, line: 1833, type: !4220, scopeLine: 1834, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4261, !4265, !4266, !4269, !4270}
!4254 = !DILocalVariable(name: "file", arg: 1, scope: !4252, file: !3, line: 1833, type: !1859)
!4255 = !DILocalVariable(name: "r", arg: 2, scope: !4252, file: !3, line: 1833, type: !742)
!4256 = !DILocalVariable(name: "max_reg", scope: !4252, file: !3, line: 1835, type: !7)
!4257 = !DILocalVariable(name: "bi", scope: !4252, file: !3, line: 1836, type: !2603)
!4258 = !DILocalVariable(name: "i", scope: !4259, file: !3, line: 1842, type: !7)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1841, column: 5)
!4260 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 1838, column: 7)
!4261 = !DILocalVariable(name: "first", scope: !4262, file: !3, line: 1845, type: !7)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 1844, column: 2)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 1843, column: 7)
!4264 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 1843, column: 7)
!4265 = !DILocalVariable(name: "len", scope: !4262, file: !3, line: 1846, type: !7)
!4266 = !DILocalVariable(name: "found", scope: !4267, file: !3, line: 1850, type: !720)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1849, column: 6)
!4268 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 1848, column: 8)
!4269 = !DILocalVariable(name: "j", scope: !4267, file: !3, line: 1851, type: !7)
!4270 = !DILocalVariable(name: "sep", scope: !4271, file: !3, line: 1860, type: !726)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 1859, column: 3)
!4272 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1858, column: 12)
!4273 = !DILocation(line: 0, scope: !4252)
!4274 = !DILocation(line: 1835, column: 26, scope: !4252)
!4275 = !DILocation(line: 1836, column: 3, scope: !4252)
!4276 = !DILocation(line: 1838, column: 9, scope: !4260)
!4277 = !DILocation(line: 1838, column: 7, scope: !4252)
!4278 = !DILocation(line: 0, scope: !4267)
!4279 = !DILocation(line: 1843, column: 21, scope: !4263)
!4280 = !DILocation(line: 1843, column: 7, scope: !4264)
!4281 = !DILocation(line: 1839, column: 5, scope: !4260)
!4282 = !DILocation(line: 0, scope: !4264)
!4283 = !DILocation(line: 0, scope: !4259)
!4284 = !DILocation(line: 1845, column: 25, scope: !4262)
!4285 = !DILocation(line: 0, scope: !4262)
!4286 = !DILocation(line: 1846, column: 23, scope: !4262)
!4287 = !DILocation(line: 1848, column: 12, scope: !4268)
!4288 = !DILocation(line: 1848, column: 8, scope: !4262)
!4289 = !DILocation(line: 1851, column: 8, scope: !4267)
!4290 = !DILocation(line: 1853, column: 8, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1853, column: 8)
!4292 = !DILocation(line: 1853, column: 8, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 1853, column: 8)
!4294 = !DILocation(line: 1855, column: 13, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 1854, column: 3)
!4296 = !DILocation(line: 1855, column: 23, scope: !4295)
!4297 = !DILocation(line: 1855, column: 15, scope: !4295)
!4298 = !DILocation(line: 1856, column: 5, scope: !4295)
!4299 = !DILocation(line: 1858, column: 12, scope: !4272)
!4300 = !DILocation(line: 1858, column: 12, scope: !4267)
!4301 = !DILocation(line: 0, scope: !4271)
!4302 = !DILocation(line: 1861, column: 5, scope: !4271)
!4303 = !DILocation(line: 1862, column: 11, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 1862, column: 9)
!4305 = !DILocation(line: 1862, column: 9, scope: !4271)
!4306 = !DILocation(line: 1863, column: 31, scope: !4304)
!4307 = !DILocation(line: 1863, column: 7, scope: !4304)
!4308 = !DILocation(line: 1864, column: 5, scope: !4271)
!4309 = !DILocation(line: 1865, column: 5, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 1865, column: 5)
!4311 = !DILocation(line: 0, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 1867, column: 13)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 1866, column: 7)
!4314 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1865, column: 5)
!4315 = !DILocation(line: 1865, column: 5, scope: !4314)
!4316 = !DILocation(line: 1867, column: 13, scope: !4312)
!4317 = !DILocation(line: 1867, column: 15, scope: !4312)
!4318 = !DILocation(line: 1867, column: 13, scope: !4313)
!4319 = !DILocation(line: 1869, column: 38, scope: !4313)
!4320 = !DILocation(line: 1869, column: 9, scope: !4313)
!4321 = distinct !{!4321, !4309, !4322}
!4322 = !DILocation(line: 1871, column: 7, scope: !4310)
!4323 = !DILocation(line: 1872, column: 5, scope: !4271)
!4324 = !DILocation(line: 1873, column: 3, scope: !4271)
!4325 = !DILocation(line: 1874, column: 6, scope: !4268)
!4326 = !DILocation(line: 1874, column: 6, scope: !4267)
!4327 = !DILocation(line: 1877, column: 12, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 1877, column: 12)
!4329 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1876, column: 6)
!4330 = !DILocation(line: 1877, column: 12, scope: !4329)
!4331 = !DILocation(line: 1879, column: 5, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 1878, column: 3)
!4333 = !DILocation(line: 1880, column: 11, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1880, column: 9)
!4335 = !DILocation(line: 1880, column: 9, scope: !4332)
!4336 = !DILocation(line: 1881, column: 31, scope: !4334)
!4337 = !DILocation(line: 1881, column: 7, scope: !4334)
!4338 = !DILocation(line: 1843, column: 33, scope: !4263)
!4339 = !DILocation(line: 1843, column: 7, scope: !4263)
!4340 = distinct !{!4340, !4280, !4341}
!4341 = !DILocation(line: 1885, column: 2, scope: !4264)
!4342 = !DILocation(line: 1887, column: 3, scope: !4252)
!4343 = !DILocation(line: 1888, column: 1, scope: !4252)
!4344 = distinct !DISubprogram(name: "df_dump", scope: !3, file: !3, line: 1894, type: !1857, scopeLine: 1895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4345)
!4345 = !{!4346, !4347}
!4346 = !DILocalVariable(name: "file", arg: 1, scope: !4344, file: !3, line: 1894, type: !1859)
!4347 = !DILocalVariable(name: "bb", scope: !4344, file: !3, line: 1896, type: !812)
!4348 = !DILocation(line: 0, scope: !4344)
!4349 = !DILocation(line: 1897, column: 3, scope: !4344)
!4350 = !DILocation(line: 1899, column: 3, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 1899, column: 3)
!4352 = !DILocation(line: 0, scope: !4351)
!4353 = !DILocation(line: 1901, column: 7, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 1900, column: 5)
!4355 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 1899, column: 3)
!4356 = !DILocation(line: 1902, column: 7, scope: !4354)
!4357 = !DILocation(line: 1903, column: 7, scope: !4354)
!4358 = !DILocation(line: 1899, column: 3, scope: !4355)
!4359 = distinct !{!4359, !4350, !4360}
!4360 = !DILocation(line: 1904, column: 5, scope: !4351)
!4361 = !DILocation(line: 1906, column: 3, scope: !4344)
!4362 = !DILocation(line: 1907, column: 1, scope: !4344)
!4363 = distinct !DISubprogram(name: "df_dump_start", scope: !3, file: !3, line: 1941, type: !1857, scopeLine: 1942, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4364)
!4364 = !{!4365, !4366, !4367, !4371}
!4365 = !DILocalVariable(name: "file", arg: 1, scope: !4363, file: !3, line: 1941, type: !1859)
!4366 = !DILocalVariable(name: "i", scope: !4363, file: !3, line: 1943, type: !721)
!4367 = !DILocalVariable(name: "dflow", scope: !4368, file: !3, line: 1956, type: !728)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 1955, column: 5)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 1954, column: 3)
!4370 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 1954, column: 3)
!4371 = !DILocalVariable(name: "fun", scope: !4372, file: !3, line: 1959, type: !1855)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 1958, column: 2)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 1957, column: 11)
!4374 = !DILocation(line: 0, scope: !4363)
!4375 = !DILocation(line: 1945, column: 8, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 1945, column: 7)
!4377 = !DILocation(line: 1945, column: 15, scope: !4376)
!4378 = !DILocation(line: 1945, column: 11, scope: !4376)
!4379 = !DILocation(line: 1948, column: 30, scope: !4363)
!4380 = !DILocation(line: 1948, column: 3, scope: !4363)
!4381 = !DILocation(line: 1949, column: 3, scope: !4363)
!4382 = !DILocation(line: 1950, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 1950, column: 7)
!4384 = !DILocation(line: 1950, column: 11, scope: !4383)
!4385 = !DILocation(line: 1950, column: 7, scope: !4363)
!4386 = !DILocation(line: 1952, column: 7, scope: !4383)
!4387 = !DILocation(line: 1952, column: 30, scope: !4383)
!4388 = !DILocation(line: 1951, column: 5, scope: !4383)
!4389 = !DILocation(line: 1954, column: 8, scope: !4370)
!4390 = !DILocation(line: 0, scope: !4370)
!4391 = !DILocation(line: 1954, column: 19, scope: !4369)
!4392 = !DILocation(line: 1954, column: 23, scope: !4369)
!4393 = !DILocation(line: 1954, column: 17, scope: !4369)
!4394 = !DILocation(line: 1954, column: 3, scope: !4370)
!4395 = !DILocation(line: 1956, column: 32, scope: !4368)
!4396 = !DILocation(line: 0, scope: !4368)
!4397 = !DILocation(line: 1957, column: 18, scope: !4373)
!4398 = !DILocation(line: 1957, column: 11, scope: !4373)
!4399 = !DILocation(line: 1957, column: 11, scope: !4368)
!4400 = !DILocation(line: 1959, column: 42, scope: !4372)
!4401 = !DILocation(line: 1959, column: 51, scope: !4372)
!4402 = !DILocation(line: 0, scope: !4372)
!4403 = !DILocation(line: 1960, column: 8, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 1960, column: 8)
!4405 = !DILocation(line: 1960, column: 8, scope: !4372)
!4406 = !DILocation(line: 1961, column: 6, scope: !4404)
!4407 = !DILocation(line: 1954, column: 46, scope: !4369)
!4408 = !DILocation(line: 1954, column: 3, scope: !4369)
!4409 = distinct !{!4409, !4394, !4410}
!4410 = !DILocation(line: 1963, column: 5, scope: !4370)
!4411 = !DILocation(line: 1964, column: 1, scope: !4363)
!4412 = distinct !DISubprogram(name: "df_dump_top", scope: !3, file: !3, line: 1970, type: !1913, scopeLine: 1971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4421}
!4414 = !DILocalVariable(name: "bb", arg: 1, scope: !4412, file: !3, line: 1970, type: !812)
!4415 = !DILocalVariable(name: "file", arg: 2, scope: !4412, file: !3, line: 1970, type: !1859)
!4416 = !DILocalVariable(name: "i", scope: !4412, file: !3, line: 1972, type: !721)
!4417 = !DILocalVariable(name: "dflow", scope: !4418, file: !3, line: 1979, type: !728)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 1978, column: 5)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 1977, column: 3)
!4420 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1977, column: 3)
!4421 = !DILocalVariable(name: "bbfun", scope: !4422, file: !3, line: 1982, type: !1911)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 1981, column: 2)
!4423 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 1980, column: 11)
!4424 = !DILocation(line: 0, scope: !4412)
!4425 = !DILocation(line: 1974, column: 8, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1974, column: 7)
!4427 = !DILocation(line: 1974, column: 15, scope: !4426)
!4428 = !DILocation(line: 1974, column: 11, scope: !4426)
!4429 = !DILocation(line: 1977, column: 3, scope: !4420)
!4430 = !DILocation(line: 1977, column: 19, scope: !4419)
!4431 = !DILocation(line: 1977, column: 23, scope: !4419)
!4432 = !DILocation(line: 1977, column: 17, scope: !4419)
!4433 = !DILocation(line: 1979, column: 32, scope: !4418)
!4434 = !DILocation(line: 0, scope: !4418)
!4435 = !DILocation(line: 1980, column: 18, scope: !4423)
!4436 = !DILocation(line: 1980, column: 11, scope: !4423)
!4437 = !DILocation(line: 1980, column: 11, scope: !4418)
!4438 = !DILocation(line: 1982, column: 47, scope: !4422)
!4439 = !DILocation(line: 1982, column: 56, scope: !4422)
!4440 = !DILocation(line: 0, scope: !4422)
!4441 = !DILocation(line: 1983, column: 8, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1983, column: 8)
!4443 = !DILocation(line: 1983, column: 8, scope: !4422)
!4444 = !DILocation(line: 1984, column: 6, scope: !4442)
!4445 = !DILocation(line: 1977, column: 46, scope: !4419)
!4446 = !DILocation(line: 1977, column: 3, scope: !4419)
!4447 = distinct !{!4447, !4429, !4448}
!4448 = !DILocation(line: 1986, column: 5, scope: !4420)
!4449 = !DILocation(line: 1987, column: 1, scope: !4412)
!4450 = distinct !DISubprogram(name: "df_dump_bottom", scope: !3, file: !3, line: 1993, type: !1913, scopeLine: 1994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4451 = !{!4452, !4453, !4454, !4455, !4459}
!4452 = !DILocalVariable(name: "bb", arg: 1, scope: !4450, file: !3, line: 1993, type: !812)
!4453 = !DILocalVariable(name: "file", arg: 2, scope: !4450, file: !3, line: 1993, type: !1859)
!4454 = !DILocalVariable(name: "i", scope: !4450, file: !3, line: 1995, type: !721)
!4455 = !DILocalVariable(name: "dflow", scope: !4456, file: !3, line: 2002, type: !728)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 2001, column: 5)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 2000, column: 3)
!4458 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 2000, column: 3)
!4459 = !DILocalVariable(name: "bbfun", scope: !4460, file: !3, line: 2005, type: !1911)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 2004, column: 2)
!4461 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 2003, column: 11)
!4462 = !DILocation(line: 0, scope: !4450)
!4463 = !DILocation(line: 1997, column: 8, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 1997, column: 7)
!4465 = !DILocation(line: 1997, column: 15, scope: !4464)
!4466 = !DILocation(line: 1997, column: 11, scope: !4464)
!4467 = !DILocation(line: 2000, column: 3, scope: !4458)
!4468 = !DILocation(line: 2000, column: 19, scope: !4457)
!4469 = !DILocation(line: 2000, column: 23, scope: !4457)
!4470 = !DILocation(line: 2000, column: 17, scope: !4457)
!4471 = !DILocation(line: 2002, column: 32, scope: !4456)
!4472 = !DILocation(line: 0, scope: !4456)
!4473 = !DILocation(line: 2003, column: 18, scope: !4461)
!4474 = !DILocation(line: 2003, column: 11, scope: !4461)
!4475 = !DILocation(line: 2003, column: 11, scope: !4456)
!4476 = !DILocation(line: 2005, column: 47, scope: !4460)
!4477 = !DILocation(line: 2005, column: 56, scope: !4460)
!4478 = !DILocation(line: 0, scope: !4460)
!4479 = !DILocation(line: 2006, column: 8, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 2006, column: 8)
!4481 = !DILocation(line: 2006, column: 8, scope: !4460)
!4482 = !DILocation(line: 2007, column: 6, scope: !4480)
!4483 = !DILocation(line: 2000, column: 46, scope: !4457)
!4484 = !DILocation(line: 2000, column: 3, scope: !4457)
!4485 = distinct !{!4485, !4467, !4486}
!4486 = !DILocation(line: 2009, column: 5, scope: !4458)
!4487 = !DILocation(line: 2010, column: 1, scope: !4450)
!4488 = distinct !DISubprogram(name: "df_dump_region", scope: !3, file: !3, line: 1913, type: !1857, scopeLine: 1914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4489)
!4489 = !{!4490, !4491, !4494, !4495}
!4490 = !DILocalVariable(name: "file", arg: 1, scope: !4488, file: !3, line: 1913, type: !1859)
!4491 = !DILocalVariable(name: "bi", scope: !4492, file: !3, line: 1917, type: !2603)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 1916, column: 5)
!4493 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 1915, column: 7)
!4494 = !DILocalVariable(name: "bb_index", scope: !4492, file: !3, line: 1918, type: !7)
!4495 = !DILocalVariable(name: "bb", scope: !4496, file: !3, line: 1925, type: !812)
!4496 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 1924, column: 2)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 1923, column: 7)
!4498 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1923, column: 7)
!4499 = !DILocation(line: 0, scope: !4488)
!4500 = !DILocation(line: 1915, column: 7, scope: !4493)
!4501 = !DILocation(line: 1915, column: 11, scope: !4493)
!4502 = !DILocation(line: 1915, column: 7, scope: !4488)
!4503 = !DILocation(line: 1917, column: 7, scope: !4492)
!4504 = !DILocation(line: 1918, column: 7, scope: !4492)
!4505 = !DILocation(line: 1920, column: 7, scope: !4492)
!4506 = !DILocation(line: 1921, column: 7, scope: !4492)
!4507 = !DILocation(line: 1923, column: 7, scope: !4498)
!4508 = !DILocation(line: 0, scope: !4492)
!4509 = !DILocation(line: 1923, column: 7, scope: !4497)
!4510 = !DILocation(line: 1925, column: 21, scope: !4496)
!4511 = !DILocation(line: 0, scope: !4496)
!4512 = !DILocation(line: 1927, column: 4, scope: !4496)
!4513 = !DILocation(line: 1928, column: 4, scope: !4496)
!4514 = !DILocation(line: 1929, column: 4, scope: !4496)
!4515 = distinct !{!4515, !4507, !4516}
!4516 = !DILocation(line: 1930, column: 2, scope: !4498)
!4517 = !DILocation(line: 1931, column: 7, scope: !4492)
!4518 = !DILocation(line: 1932, column: 5, scope: !4493)
!4519 = !DILocation(line: 1932, column: 5, scope: !4492)
!4520 = !DILocation(line: 1934, column: 5, scope: !4493)
!4521 = !DILocation(line: 1935, column: 1, scope: !4488)
!4522 = distinct !DISubprogram(name: "df_refs_chain_dump", scope: !3, file: !3, line: 2014, type: !4523, scopeLine: 2015, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !1968, !720, !1859}
!4525 = !{!4526, !4527, !4528, !4529}
!4526 = !DILocalVariable(name: "ref_rec", arg: 1, scope: !4522, file: !3, line: 2014, type: !1968)
!4527 = !DILocalVariable(name: "follow_chain", arg: 2, scope: !4522, file: !3, line: 2014, type: !720)
!4528 = !DILocalVariable(name: "file", arg: 3, scope: !4522, file: !3, line: 2014, type: !1859)
!4529 = !DILocalVariable(name: "ref", scope: !4530, file: !3, line: 2019, type: !1969)
!4530 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 2018, column: 5)
!4531 = !DILocation(line: 0, scope: !4522)
!4532 = !DILocation(line: 2016, column: 3, scope: !4522)
!4533 = !DILocation(line: 0, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 2024, column: 11)
!4535 = !DILocation(line: 2017, column: 3, scope: !4522)
!4536 = !DILocation(line: 2017, column: 10, scope: !4522)
!4537 = !DILocation(line: 0, scope: !4530)
!4538 = !DILocation(line: 2021, column: 9, scope: !4530)
!4539 = !DILocation(line: 2021, column: 60, scope: !4530)
!4540 = !DILocation(line: 2021, column: 40, scope: !4530)
!4541 = !DILocation(line: 2022, column: 9, scope: !4530)
!4542 = !DILocation(line: 2023, column: 9, scope: !4530)
!4543 = !DILocation(line: 2020, column: 7, scope: !4530)
!4544 = !DILocation(line: 2026, column: 14, scope: !4530)
!4545 = distinct !{!4545, !4535, !4546}
!4546 = !DILocation(line: 2027, column: 5, scope: !4522)
!4547 = !DILocation(line: 2028, column: 3, scope: !4522)
!4548 = !DILocation(line: 2025, column: 17, scope: !4534)
!4549 = !DILocation(line: 2025, column: 2, scope: !4534)
!4550 = !DILocation(line: 2029, column: 1, scope: !4522)
!4551 = distinct !DISubprogram(name: "df_regs_chain_dump", scope: !3, file: !3, line: 2035, type: !4552, scopeLine: 2036, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !1969, !1859}
!4554 = !{!4555, !4556}
!4555 = !DILocalVariable(name: "ref", arg: 1, scope: !4551, file: !3, line: 2035, type: !1969)
!4556 = !DILocalVariable(name: "file", arg: 2, scope: !4551, file: !3, line: 2035, type: !1859)
!4557 = !DILocation(line: 0, scope: !4551)
!4558 = !DILocation(line: 2037, column: 3, scope: !4551)
!4559 = !DILocation(line: 2038, column: 3, scope: !4551)
!4560 = !DILocation(line: 2041, column: 9, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 2039, column: 5)
!4562 = !DILocation(line: 2042, column: 9, scope: !4561)
!4563 = !DILocation(line: 2043, column: 9, scope: !4561)
!4564 = !DILocation(line: 2040, column: 7, scope: !4561)
!4565 = !DILocation(line: 2044, column: 13, scope: !4561)
!4566 = distinct !{!4566, !4559, !4567}
!4567 = !DILocation(line: 2045, column: 5, scope: !4551)
!4568 = !DILocation(line: 2046, column: 3, scope: !4551)
!4569 = !DILocation(line: 2047, column: 1, scope: !4551)
!4570 = distinct !DISubprogram(name: "df_insn_debug", scope: !3, file: !3, line: 2098, type: !4571, scopeLine: 2099, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4573)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !843, !720, !1859}
!4573 = !{!4574, !4575, !4576}
!4574 = !DILocalVariable(name: "insn", arg: 1, scope: !4570, file: !3, line: 2098, type: !843)
!4575 = !DILocalVariable(name: "follow_chain", arg: 2, scope: !4570, file: !3, line: 2098, type: !720)
!4576 = !DILocalVariable(name: "file", arg: 3, scope: !4570, file: !3, line: 2098, type: !1859)
!4577 = !DILocation(line: 0, scope: !4570)
!4578 = !DILocation(line: 2100, column: 22, scope: !4570)
!4579 = !DILocation(line: 2100, column: 3, scope: !4570)
!4580 = !DILocation(line: 2101, column: 1, scope: !4570)
!4581 = distinct !DISubprogram(name: "df_insn_uid_debug", scope: !3, file: !3, line: 2064, type: !4582, scopeLine: 2066, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !7, !720, !1859}
!4584 = !{!4585, !4586, !4587}
!4585 = !DILocalVariable(name: "uid", arg: 1, scope: !4581, file: !3, line: 2064, type: !7)
!4586 = !DILocalVariable(name: "follow_chain", arg: 2, scope: !4581, file: !3, line: 2065, type: !720)
!4587 = !DILocalVariable(name: "file", arg: 3, scope: !4581, file: !3, line: 2065, type: !1859)
!4588 = !DILocation(line: 0, scope: !4581)
!4589 = !DILocation(line: 2068, column: 10, scope: !4581)
!4590 = !DILocation(line: 2067, column: 3, scope: !4581)
!4591 = !DILocation(line: 2070, column: 7, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 2070, column: 7)
!4593 = !DILocation(line: 2070, column: 7, scope: !4581)
!4594 = !DILocation(line: 2072, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 2071, column: 5)
!4596 = !DILocation(line: 2073, column: 27, scope: !4595)
!4597 = !DILocation(line: 2073, column: 7, scope: !4595)
!4598 = !DILocation(line: 2076, column: 7, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 2076, column: 7)
!4600 = !DILocation(line: 0, scope: !4599)
!4601 = !DILocation(line: 2074, column: 5, scope: !4595)
!4602 = !DILocation(line: 2076, column: 7, scope: !4581)
!4603 = !DILocation(line: 2078, column: 7, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 2077, column: 5)
!4605 = !DILocation(line: 2079, column: 27, scope: !4604)
!4606 = !DILocation(line: 2079, column: 7, scope: !4604)
!4607 = !DILocation(line: 2082, column: 7, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 2082, column: 7)
!4609 = !DILocation(line: 0, scope: !4608)
!4610 = !DILocation(line: 2080, column: 5, scope: !4604)
!4611 = !DILocation(line: 2082, column: 7, scope: !4581)
!4612 = !DILocation(line: 2084, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 2083, column: 5)
!4614 = !DILocation(line: 2085, column: 27, scope: !4613)
!4615 = !DILocation(line: 2085, column: 7, scope: !4613)
!4616 = !DILocation(line: 2088, column: 7, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 2088, column: 7)
!4618 = !DILocation(line: 0, scope: !4617)
!4619 = !DILocation(line: 2086, column: 5, scope: !4613)
!4620 = !DILocation(line: 2088, column: 7, scope: !4581)
!4621 = !DILocation(line: 2090, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 2089, column: 5)
!4623 = !DILocation(line: 2091, column: 20, scope: !4622)
!4624 = !DILocation(line: 2091, column: 7, scope: !4622)
!4625 = !DILocation(line: 2092, column: 5, scope: !4622)
!4626 = !DILocation(line: 2093, column: 3, scope: !4581)
!4627 = !DILocation(line: 2094, column: 1, scope: !4581)
!4628 = distinct !DISubprogram(name: "df_insn_debug_regno", scope: !3, file: !3, line: 2104, type: !4629, scopeLine: 2105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4631)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{null, !843, !1859}
!4631 = !{!4632, !4633, !4634}
!4632 = !DILocalVariable(name: "insn", arg: 1, scope: !4628, file: !3, line: 2104, type: !843)
!4633 = !DILocalVariable(name: "file", arg: 2, scope: !4628, file: !3, line: 2104, type: !1859)
!4634 = !DILocalVariable(name: "insn_info", scope: !4628, file: !3, line: 2106, type: !1987)
!4635 = !DILocation(line: 0, scope: !4628)
!4636 = !DILocation(line: 2106, column: 36, scope: !4628)
!4637 = !DILocation(line: 2109, column: 22, scope: !4628)
!4638 = !DILocation(line: 2109, column: 45, scope: !4628)
!4639 = !DILocation(line: 2110, column: 5, scope: !4628)
!4640 = !DILocation(line: 2108, column: 3, scope: !4628)
!4641 = !DILocation(line: 2111, column: 23, scope: !4628)
!4642 = !DILocation(line: 2111, column: 3, scope: !4628)
!4643 = !DILocation(line: 2113, column: 3, scope: !4628)
!4644 = !DILocation(line: 2114, column: 23, scope: !4628)
!4645 = !DILocation(line: 2114, column: 3, scope: !4628)
!4646 = !DILocation(line: 2116, column: 3, scope: !4628)
!4647 = !DILocation(line: 2117, column: 23, scope: !4628)
!4648 = !DILocation(line: 2117, column: 3, scope: !4628)
!4649 = !DILocation(line: 2118, column: 3, scope: !4628)
!4650 = !DILocation(line: 2119, column: 1, scope: !4628)
!4651 = distinct !DISubprogram(name: "df_regno_debug", scope: !3, file: !3, line: 2122, type: !4652, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4654)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !7, !1859}
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "regno", arg: 1, scope: !4651, file: !3, line: 2122, type: !7)
!4656 = !DILocalVariable(name: "file", arg: 2, scope: !4651, file: !3, line: 2122, type: !1859)
!4657 = !DILocation(line: 0, scope: !4651)
!4658 = !DILocation(line: 2124, column: 3, scope: !4651)
!4659 = !DILocation(line: 2125, column: 23, scope: !4651)
!4660 = !DILocation(line: 2125, column: 3, scope: !4651)
!4661 = !DILocation(line: 2126, column: 3, scope: !4651)
!4662 = !DILocation(line: 2127, column: 23, scope: !4651)
!4663 = !DILocation(line: 2127, column: 3, scope: !4651)
!4664 = !DILocation(line: 2128, column: 3, scope: !4651)
!4665 = !DILocation(line: 2129, column: 23, scope: !4651)
!4666 = !DILocation(line: 2129, column: 3, scope: !4651)
!4667 = !DILocation(line: 2130, column: 3, scope: !4651)
!4668 = !DILocation(line: 2131, column: 1, scope: !4651)
!4669 = distinct !DISubprogram(name: "df_ref_debug", scope: !3, file: !3, line: 2135, type: !4552, scopeLine: 2136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4670)
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "ref", arg: 1, scope: !4669, file: !3, line: 2135, type: !1969)
!4672 = !DILocalVariable(name: "file", arg: 2, scope: !4669, file: !3, line: 2135, type: !1859)
!4673 = !DILocation(line: 0, scope: !4669)
!4674 = !DILocation(line: 2138, column: 5, scope: !4669)
!4675 = !DILocation(line: 2139, column: 5, scope: !4669)
!4676 = !DILocation(line: 2137, column: 3, scope: !4669)
!4677 = !DILocation(line: 2141, column: 5, scope: !4669)
!4678 = !DILocation(line: 2142, column: 5, scope: !4669)
!4679 = !DILocation(line: 2143, column: 5, scope: !4669)
!4680 = !DILocation(line: 2143, column: 39, scope: !4669)
!4681 = !DILocation(line: 2144, column: 5, scope: !4669)
!4682 = !DILocation(line: 2145, column: 5, scope: !4669)
!4683 = !DILocation(line: 2140, column: 3, scope: !4669)
!4684 = !DILocation(line: 2146, column: 7, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 2146, column: 7)
!4686 = !DILocation(line: 2146, column: 7, scope: !4669)
!4687 = !DILocation(line: 2148, column: 11, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 2148, column: 11)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 2147, column: 5)
!4690 = !DILocation(line: 2148, column: 11, scope: !4689)
!4691 = !DILocation(line: 2149, column: 2, scope: !4688)
!4692 = !DILocation(line: 2151, column: 46, scope: !4688)
!4693 = !DILocation(line: 2152, column: 13, scope: !4688)
!4694 = !DILocation(line: 2152, column: 12, scope: !4688)
!4695 = !DILocation(line: 2151, column: 2, scope: !4688)
!4696 = !DILocation(line: 2155, column: 5, scope: !4685)
!4697 = !DILocation(line: 2156, column: 18, scope: !4669)
!4698 = !DILocation(line: 2156, column: 3, scope: !4669)
!4699 = !DILocation(line: 2157, column: 3, scope: !4669)
!4700 = !DILocation(line: 2158, column: 1, scope: !4669)
!4701 = distinct !DISubprogram(name: "debug_df_insn", scope: !3, file: !3, line: 2163, type: !4702, scopeLine: 2164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !843}
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "insn", arg: 1, scope: !4701, file: !3, line: 2163, type: !843)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocation(line: 2165, column: 30, scope: !4701)
!4708 = !DILocation(line: 2165, column: 3, scope: !4701)
!4709 = !DILocation(line: 2166, column: 3, scope: !4701)
!4710 = !DILocation(line: 2167, column: 1, scope: !4701)
!4711 = distinct !DISubprogram(name: "debug_df_reg", scope: !3, file: !3, line: 2171, type: !4702, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4712 = !{!4713}
!4713 = !DILocalVariable(name: "reg", arg: 1, scope: !4711, file: !3, line: 2171, type: !843)
!4714 = !DILocation(line: 0, scope: !4711)
!4715 = !DILocation(line: 2173, column: 19, scope: !4711)
!4716 = !DILocation(line: 2173, column: 32, scope: !4711)
!4717 = !DILocation(line: 2173, column: 3, scope: !4711)
!4718 = !DILocation(line: 2174, column: 1, scope: !4711)
!4719 = distinct !DISubprogram(name: "rhs_regno", scope: !567, file: !567, line: 1051, type: !4720, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4725)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!7, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !743, line: 51, baseType: !4723)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!4725 = !{!4726}
!4726 = !DILocalVariable(name: "x", arg: 1, scope: !4719, file: !567, line: 1051, type: !4722)
!4727 = !DILocation(line: 0, scope: !4719)
!4728 = !DILocation(line: 1053, column: 10, scope: !4719)
!4729 = !DILocation(line: 1053, column: 3, scope: !4719)
!4730 = distinct !DISubprogram(name: "debug_df_regno", scope: !3, file: !3, line: 2178, type: !4731, scopeLine: 2179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4733)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !7}
!4733 = !{!4734}
!4734 = !DILocalVariable(name: "regno", arg: 1, scope: !4730, file: !3, line: 2178, type: !7)
!4735 = !DILocation(line: 0, scope: !4730)
!4736 = !DILocation(line: 2180, column: 26, scope: !4730)
!4737 = !DILocation(line: 2180, column: 3, scope: !4730)
!4738 = !DILocation(line: 2181, column: 1, scope: !4730)
!4739 = distinct !DISubprogram(name: "debug_df_ref", scope: !3, file: !3, line: 2185, type: !4740, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4742)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !1969}
!4742 = !{!4743}
!4743 = !DILocalVariable(name: "ref", arg: 1, scope: !4739, file: !3, line: 2185, type: !1969)
!4744 = !DILocation(line: 0, scope: !4739)
!4745 = !DILocation(line: 2187, column: 22, scope: !4739)
!4746 = !DILocation(line: 2187, column: 3, scope: !4739)
!4747 = !DILocation(line: 2188, column: 1, scope: !4739)
!4748 = distinct !DISubprogram(name: "debug_df_defno", scope: !3, file: !3, line: 2192, type: !4731, scopeLine: 2193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4749 = !{!4750}
!4750 = !DILocalVariable(name: "defno", arg: 1, scope: !4748, file: !3, line: 2192, type: !7)
!4751 = !DILocation(line: 0, scope: !4748)
!4752 = !DILocation(line: 2194, column: 17, scope: !4748)
!4753 = !DILocation(line: 2194, column: 38, scope: !4748)
!4754 = !DILocation(line: 2194, column: 3, scope: !4748)
!4755 = !DILocation(line: 2195, column: 1, scope: !4748)
!4756 = distinct !DISubprogram(name: "debug_df_useno", scope: !3, file: !3, line: 2199, type: !4731, scopeLine: 2200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4757 = !{!4758}
!4758 = !DILocalVariable(name: "defno", arg: 1, scope: !4756, file: !3, line: 2199, type: !7)
!4759 = !DILocation(line: 0, scope: !4756)
!4760 = !DILocation(line: 2201, column: 17, scope: !4756)
!4761 = !DILocation(line: 2201, column: 38, scope: !4756)
!4762 = !DILocation(line: 2201, column: 3, scope: !4756)
!4763 = !DILocation(line: 2202, column: 1, scope: !4756)
!4764 = distinct !DISubprogram(name: "debug_df_chain", scope: !3, file: !3, line: 2206, type: !4765, scopeLine: 2207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !1981}
!4767 = !{!4768}
!4768 = !DILocalVariable(name: "link", arg: 1, scope: !4764, file: !3, line: 2206, type: !1981)
!4769 = !DILocation(line: 0, scope: !4764)
!4770 = !DILocation(line: 2208, column: 24, scope: !4764)
!4771 = !DILocation(line: 2208, column: 3, scope: !4764)
!4772 = !DILocation(line: 2209, column: 16, scope: !4764)
!4773 = !DILocation(line: 2209, column: 3, scope: !4764)
!4774 = !DILocation(line: 2210, column: 1, scope: !4764)
!4775 = distinct !DISubprogram(name: "df_worklist_propagate_forward", scope: !3, file: !3, line: 863, type: !4776, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{null, !728, !7, !1954, !742, !3199}
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785, !4792, !4793}
!4779 = !DILocalVariable(name: "dataflow", arg: 1, scope: !4775, file: !3, line: 863, type: !728)
!4780 = !DILocalVariable(name: "bb_index", arg: 2, scope: !4775, file: !3, line: 864, type: !7)
!4781 = !DILocalVariable(name: "bbindex_to_postorder", arg: 3, scope: !4775, file: !3, line: 865, type: !1954)
!4782 = !DILocalVariable(name: "pending", arg: 4, scope: !4775, file: !3, line: 866, type: !742)
!4783 = !DILocalVariable(name: "considered", arg: 5, scope: !4775, file: !3, line: 867, type: !3199)
!4784 = !DILocalVariable(name: "e", scope: !4775, file: !3, line: 869, type: !829)
!4785 = !DILocalVariable(name: "ei", scope: !4775, file: !3, line: 870, type: !4786)
!4786 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !141, line: 682, baseType: !4787)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 679, size: 128, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4787, file: !141, line: 680, baseType: !7, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !4787, file: !141, line: 681, baseType: !4791, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!4792 = !DILocalVariable(name: "bb", scope: !4775, file: !3, line: 871, type: !812)
!4793 = !DILocalVariable(name: "ob_index", scope: !4794, file: !3, line: 889, type: !7)
!4794 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 888, column: 9)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 887, column: 7)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 887, column: 7)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 884, column: 5)
!4798 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 883, column: 7)
!4799 = !DILocation(line: 0, scope: !4775)
!4800 = !DILocation(line: 869, column: 3, scope: !4775)
!4801 = !DILocation(line: 870, column: 3, scope: !4775)
!4802 = !DILocation(line: 871, column: 20, scope: !4775)
!4803 = !DILocation(line: 874, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 874, column: 7)
!4805 = !DILocation(line: 874, column: 30, scope: !4804)
!4806 = !DILocation(line: 874, column: 7, scope: !4775)
!4807 = !DILocation(line: 875, column: 5, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 875, column: 5)
!4809 = !DILocation(line: 0, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 875, column: 5)
!4811 = !DILocation(line: 0, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 877, column: 13)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 876, column: 7)
!4814 = !DILocation(line: 875, column: 5, scope: !4810)
!4815 = !DILocation(line: 877, column: 13, scope: !4812)
!4816 = !DILocation(line: 877, column: 13, scope: !4813)
!4817 = !DILocation(line: 878, column: 21, scope: !4812)
!4818 = !DILocation(line: 878, column: 30, scope: !4812)
!4819 = !DILocation(line: 878, column: 11, scope: !4812)
!4820 = distinct !{!4820, !4807, !4821}
!4821 = !DILocation(line: 879, column: 7, scope: !4808)
!4822 = !DILocation(line: 880, column: 22, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 880, column: 12)
!4824 = !DILocation(line: 880, column: 31, scope: !4823)
!4825 = !DILocation(line: 880, column: 12, scope: !4823)
!4826 = !DILocation(line: 880, column: 12, scope: !4804)
!4827 = !DILocation(line: 881, column: 5, scope: !4823)
!4828 = !DILocation(line: 883, column: 17, scope: !4798)
!4829 = !DILocation(line: 883, column: 26, scope: !4798)
!4830 = !DILocation(line: 883, column: 7, scope: !4798)
!4831 = !DILocation(line: 883, column: 7, scope: !4775)
!4832 = !DILocation(line: 887, column: 7, scope: !4796)
!4833 = !DILocation(line: 0, scope: !4795)
!4834 = !DILocation(line: 887, column: 7, scope: !4795)
!4835 = !DILocation(line: 889, column: 31, scope: !4794)
!4836 = !DILocation(line: 889, column: 34, scope: !4794)
!4837 = !DILocation(line: 889, column: 40, scope: !4794)
!4838 = !DILocation(line: 0, scope: !4794)
!4839 = !DILocation(line: 891, column: 15, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 891, column: 15)
!4841 = !DILocation(line: 891, column: 15, scope: !4794)
!4842 = !DILocation(line: 892, column: 38, scope: !4840)
!4843 = !DILocation(line: 892, column: 13, scope: !4840)
!4844 = distinct !{!4844, !4832, !4845}
!4845 = !DILocation(line: 893, column: 9, scope: !4796)
!4846 = !DILocation(line: 895, column: 1, scope: !4775)
!4847 = distinct !DISubprogram(name: "df_worklist_propagate_backward", scope: !3, file: !3, line: 902, type: !4776, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4848)
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857}
!4849 = !DILocalVariable(name: "dataflow", arg: 1, scope: !4847, file: !3, line: 902, type: !728)
!4850 = !DILocalVariable(name: "bb_index", arg: 2, scope: !4847, file: !3, line: 903, type: !7)
!4851 = !DILocalVariable(name: "bbindex_to_postorder", arg: 3, scope: !4847, file: !3, line: 904, type: !1954)
!4852 = !DILocalVariable(name: "pending", arg: 4, scope: !4847, file: !3, line: 905, type: !742)
!4853 = !DILocalVariable(name: "considered", arg: 5, scope: !4847, file: !3, line: 906, type: !3199)
!4854 = !DILocalVariable(name: "e", scope: !4847, file: !3, line: 908, type: !829)
!4855 = !DILocalVariable(name: "ei", scope: !4847, file: !3, line: 909, type: !4786)
!4856 = !DILocalVariable(name: "bb", scope: !4847, file: !3, line: 910, type: !812)
!4857 = !DILocalVariable(name: "ob_index", scope: !4858, file: !3, line: 928, type: !7)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 927, column: 9)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 926, column: 7)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 926, column: 7)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 923, column: 5)
!4862 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 922, column: 7)
!4863 = !DILocation(line: 0, scope: !4847)
!4864 = !DILocation(line: 908, column: 3, scope: !4847)
!4865 = !DILocation(line: 909, column: 3, scope: !4847)
!4866 = !DILocation(line: 910, column: 20, scope: !4847)
!4867 = !DILocation(line: 913, column: 7, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 913, column: 7)
!4869 = !DILocation(line: 913, column: 30, scope: !4868)
!4870 = !DILocation(line: 913, column: 7, scope: !4847)
!4871 = !DILocation(line: 914, column: 5, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 914, column: 5)
!4873 = !DILocation(line: 0, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 914, column: 5)
!4875 = !DILocation(line: 0, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 916, column: 13)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 915, column: 7)
!4878 = !DILocation(line: 914, column: 5, scope: !4874)
!4879 = !DILocation(line: 916, column: 13, scope: !4876)
!4880 = !DILocation(line: 916, column: 13, scope: !4877)
!4881 = !DILocation(line: 917, column: 21, scope: !4876)
!4882 = !DILocation(line: 917, column: 30, scope: !4876)
!4883 = !DILocation(line: 917, column: 11, scope: !4876)
!4884 = distinct !{!4884, !4871, !4885}
!4885 = !DILocation(line: 918, column: 7, scope: !4872)
!4886 = !DILocation(line: 919, column: 22, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 919, column: 12)
!4888 = !DILocation(line: 919, column: 31, scope: !4887)
!4889 = !DILocation(line: 919, column: 12, scope: !4887)
!4890 = !DILocation(line: 919, column: 12, scope: !4868)
!4891 = !DILocation(line: 920, column: 5, scope: !4887)
!4892 = !DILocation(line: 922, column: 17, scope: !4862)
!4893 = !DILocation(line: 922, column: 26, scope: !4862)
!4894 = !DILocation(line: 922, column: 7, scope: !4862)
!4895 = !DILocation(line: 922, column: 7, scope: !4847)
!4896 = !DILocation(line: 926, column: 7, scope: !4860)
!4897 = !DILocation(line: 0, scope: !4859)
!4898 = !DILocation(line: 926, column: 7, scope: !4859)
!4899 = !DILocation(line: 928, column: 31, scope: !4858)
!4900 = !DILocation(line: 928, column: 34, scope: !4858)
!4901 = !DILocation(line: 928, column: 39, scope: !4858)
!4902 = !DILocation(line: 0, scope: !4858)
!4903 = !DILocation(line: 930, column: 15, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 930, column: 15)
!4905 = !DILocation(line: 930, column: 15, scope: !4858)
!4906 = !DILocation(line: 931, column: 38, scope: !4904)
!4907 = !DILocation(line: 931, column: 13, scope: !4904)
!4908 = distinct !{!4908, !4896, !4909}
!4909 = !DILocation(line: 932, column: 9, scope: !4860)
!4910 = !DILocation(line: 934, column: 1, scope: !4847)
!4911 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !141, file: !141, line: 150, type: !4912, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4916)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!7, !4914}
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!4916 = !{!4917}
!4917 = !DILocalVariable(name: "vec_", arg: 1, scope: !4911, file: !141, line: 150, type: !4914)
!4918 = !DILocation(line: 0, scope: !4911)
!4919 = !DILocation(line: 150, column: 1, scope: !4911)
!4920 = distinct !DISubprogram(name: "ei_start_1", scope: !141, file: !141, line: 696, type: !4921, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4923)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!4786, !4791}
!4923 = !{!4924, !4925}
!4924 = !DILocalVariable(name: "ev", arg: 1, scope: !4920, file: !141, line: 696, type: !4791)
!4925 = !DILocalVariable(name: "i", scope: !4920, file: !141, line: 698, type: !4786)
!4926 = !DILocation(line: 0, scope: !4920)
!4927 = !DILocation(line: 700, column: 5, scope: !4920)
!4928 = !DILocation(line: 700, column: 11, scope: !4920)
!4929 = !DILocation(line: 701, column: 5, scope: !4920)
!4930 = !DILocation(line: 701, column: 15, scope: !4920)
!4931 = !DILocation(line: 703, column: 3, scope: !4920)
!4932 = distinct !DISubprogram(name: "ei_cond", scope: !141, file: !141, line: 771, type: !4933, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4936)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!720, !4786, !4935}
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!4936 = !{!4937, !4938}
!4937 = !DILocalVariable(name: "ei", arg: 1, scope: !4932, file: !141, line: 771, type: !4786)
!4938 = !DILocalVariable(name: "p", arg: 2, scope: !4932, file: !141, line: 771, type: !4935)
!4939 = !DILocation(line: 0, scope: !4932)
!4940 = !DILocation(line: 773, column: 8, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4932, file: !141, line: 773, column: 7)
!4942 = !DILocation(line: 773, column: 7, scope: !4932)
!4943 = !DILocation(line: 775, column: 12, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !141, line: 774, column: 5)
!4945 = !DILocation(line: 776, column: 7, scope: !4944)
!4946 = !DILocation(line: 781, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4941, file: !141, line: 779, column: 5)
!4948 = !DILocation(line: 0, scope: !4941)
!4949 = !DILocation(line: 783, column: 1, scope: !4932)
!4950 = distinct !DISubprogram(name: "ei_next", scope: !141, file: !141, line: 736, type: !4951, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4954)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{null, !4953}
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4954 = !{!4955}
!4955 = !DILocalVariable(name: "i", arg: 1, scope: !4950, file: !141, line: 736, type: !4953)
!4956 = !DILocation(line: 0, scope: !4950)
!4957 = !DILocation(line: 738, column: 3, scope: !4950)
!4958 = !DILocation(line: 739, column: 11, scope: !4950)
!4959 = !DILocation(line: 740, column: 1, scope: !4950)
!4960 = distinct !DISubprogram(name: "ei_end_p", scope: !141, file: !141, line: 721, type: !4961, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4963)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!720, !4786}
!4963 = !{!4964}
!4964 = !DILocalVariable(name: "i", arg: 1, scope: !4960, file: !141, line: 721, type: !4786)
!4965 = !DILocation(line: 723, column: 22, scope: !4960)
!4966 = !DILocation(line: 723, column: 19, scope: !4960)
!4967 = !DILocation(line: 723, column: 10, scope: !4960)
!4968 = !DILocation(line: 723, column: 3, scope: !4960)
!4969 = distinct !DISubprogram(name: "ei_edge", scope: !141, file: !141, line: 752, type: !4970, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4972)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!829, !4786}
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "i", arg: 1, scope: !4969, file: !141, line: 752, type: !4786)
!4974 = !DILocation(line: 754, column: 10, scope: !4969)
!4975 = !DILocation(line: 754, column: 3, scope: !4969)
!4976 = distinct !DISubprogram(name: "ei_container", scope: !141, file: !141, line: 685, type: !4977, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4979)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!817, !4786}
!4979 = !{!4980}
!4980 = !DILocalVariable(name: "i", arg: 1, scope: !4976, file: !141, line: 685, type: !4786)
!4981 = !DILocation(line: 687, column: 3, scope: !4976)
!4982 = !DILocation(line: 688, column: 10, scope: !4976)
!4983 = !DILocation(line: 688, column: 3, scope: !4976)
!4984 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !141, file: !141, line: 150, type: !4985, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4987)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!829, !4914, !7}
!4987 = !{!4988, !4989}
!4988 = !DILocalVariable(name: "vec_", arg: 1, scope: !4984, file: !141, line: 150, type: !4914)
!4989 = !DILocalVariable(name: "ix_", arg: 2, scope: !4984, file: !141, line: 150, type: !7)
!4990 = !DILocation(line: 0, scope: !4984)
!4991 = !DILocation(line: 150, column: 1, scope: !4984)
!4992 = distinct !DISubprogram(name: "df_mws_dump", scope: !3, file: !3, line: 2051, type: !4993, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4995)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !1995, !1859}
!4995 = !{!4996, !4997}
!4996 = !DILocalVariable(name: "mws", arg: 1, scope: !4992, file: !3, line: 2051, type: !1995)
!4997 = !DILocalVariable(name: "file", arg: 2, scope: !4992, file: !3, line: 2051, type: !1859)
!4998 = !DILocation(line: 0, scope: !4992)
!4999 = !DILocation(line: 2053, column: 3, scope: !4992)
!5000 = !DILocation(line: 2053, column: 10, scope: !4992)
!5001 = !DILocation(line: 2056, column: 10, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 2054, column: 5)
!5003 = !DILocation(line: 2056, column: 9, scope: !5002)
!5004 = !DILocation(line: 2057, column: 17, scope: !5002)
!5005 = !DILocation(line: 2057, column: 38, scope: !5002)
!5006 = !DILocation(line: 2055, column: 7, scope: !5002)
!5007 = !DILocation(line: 2058, column: 10, scope: !5002)
!5008 = distinct !{!5008, !4999, !5009}
!5009 = !DILocation(line: 2059, column: 5, scope: !4992)
!5010 = !DILocation(line: 2060, column: 1, scope: !4992)
