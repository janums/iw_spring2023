; ModuleID = 'resource.bc'
source_filename = "resource.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, %struct.rtx_def*, %struct.initial_value_struct*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.rtx_def*, %struct.VEC_temp_slot_p_gc*, %struct.temp_slot*, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack*, i32, i32, i32, i32, i8* }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.sequence_stack* }
%struct.varasm_status = type { %struct.rtx_constant_pool*, i32 }
%struct.rtx_constant_pool = type opaque
%struct.incoming_args = type { i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { i8*, i8*, i8*, i8*, i8* }
%struct.rtl_eh = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.VEC_uchar_gc*, [2 x %struct.VEC_call_site_record_gc*] }
%struct.VEC_uchar_gc = type { %struct.VEC_uchar_base }
%struct.VEC_uchar_base = type { i32, i32, [1 x i8] }
%struct.VEC_call_site_record_gc = type { %struct.VEC_call_site_record_base }
%struct.VEC_call_site_record_base = type { i32, i32, [1 x %struct.call_site_record_d*] }
%struct.call_site_record_d = type opaque
%struct.initial_value_struct = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_temp_slot_p_gc = type { %struct.VEC_temp_slot_p_base }
%struct.VEC_temp_slot_p_base = type { i32, i32, [1 x %struct.temp_slot*] }
%struct.temp_slot = type opaque
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
%struct.resources = type { i8, i8, i8, i8, i64 }
%struct.target_info = type { i32, %struct.target_info*, i64, i32, i32 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
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
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"resource.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@x_rtl = external dso_local local_unnamed_addr global %struct.rtl_data, align 8
@global_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@regs_invalidated_by_call = external dso_local local_unnamed_addr global i64, align 8
@end_of_function_needs = internal global %struct.resources zeroinitializer, align 8, !dbg !0
@target_hash_table = internal unnamed_addr global %struct.target_info** null, align 8, !dbg !675
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@bb_ticks = internal unnamed_addr global i32* null, align 8, !dbg !669
@pending_dead_regs = internal global i64 0, align 8, !dbg !673
@current_live_regs = internal global i64 0, align 8, !dbg !671
@start_of_epilogue_needs = internal unnamed_addr global %struct.resources zeroinitializer, align 8, !dbg !660
@current_function_sp_is_unchanging = external dso_local local_unnamed_addr global i32, align 4
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@df = external dso_local local_unnamed_addr global %struct.df*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !681 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !694, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !695, metadata !DIExpression()), !dbg !696
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !697
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !698
  ret i32 %call, !dbg !699
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !700 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !704
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !705
  ret i32 %call, !dbg !706
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !707 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !768, metadata !DIExpression()), !dbg !769
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !770
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !770
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !770
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !770
  %cmp = icmp uge i8* %0, %1, !dbg !770
  %conv1 = zext i1 %cmp to i64, !dbg !770
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !770
  %tobool = icmp eq i64 %expval, 0, !dbg !770
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !770

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !770
  br label %cond.end, !dbg !770

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !770
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !770
  %2 = load i8, i8* %0, align 1, !dbg !770
  %conv3 = zext i8 %2 to i32, !dbg !770
  br label %cond.end, !dbg !770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !770
  ret i32 %cond, !dbg !771
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !772 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !774, metadata !DIExpression()), !dbg !775
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !776
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !776
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !776
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !776
  %cmp = icmp uge i8* %0, %1, !dbg !776
  %conv1 = zext i1 %cmp to i64, !dbg !776
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !776
  %tobool = icmp eq i64 %expval, 0, !dbg !776
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !776

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !776
  br label %cond.end, !dbg !776

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !776
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !776
  %2 = load i8, i8* %0, align 1, !dbg !776
  %conv3 = zext i8 %2 to i32, !dbg !776
  br label %cond.end, !dbg !776

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !776
  ret i32 %cond, !dbg !777
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !778 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !779
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !779
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !779
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !779
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !779
  %cmp = icmp uge i8* %1, %2, !dbg !779
  %conv1 = zext i1 %cmp to i64, !dbg !779
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !779
  %tobool = icmp eq i64 %expval, 0, !dbg !779
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !779

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !779
  br label %cond.end, !dbg !779

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !779
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !779
  %3 = load i8, i8* %1, align 1, !dbg !779
  %conv3 = zext i8 %3 to i32, !dbg !779
  br label %cond.end, !dbg !779

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !779
  ret i32 %cond, !dbg !780
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !781 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !785, metadata !DIExpression()), !dbg !786
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !788
  ret i32 %call, !dbg !789
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !790 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !794, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !795, metadata !DIExpression()), !dbg !796
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !797
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !797
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !797
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !797
  %cmp = icmp uge i8* %0, %1, !dbg !797
  %conv1 = zext i1 %cmp to i64, !dbg !797
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !797
  %tobool = icmp eq i64 %expval, 0, !dbg !797
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !797

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !797
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !797
  br label %cond.end, !dbg !797

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !797
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !797
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !797
  store i8 %conv2, i8* %0, align 1, !dbg !797
  %conv6 = and i32 %__c, 255, !dbg !797
  br label %cond.end, !dbg !797

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !797
  ret i32 %cond, !dbg !798
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !799 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !801, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !802, metadata !DIExpression()), !dbg !803
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !804
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !804
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !804
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !804
  %cmp = icmp uge i8* %0, %1, !dbg !804
  %conv1 = zext i1 %cmp to i64, !dbg !804
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !804
  %tobool = icmp eq i64 %expval, 0, !dbg !804
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !804

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !804
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !804
  br label %cond.end, !dbg !804

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !804
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !804
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !804
  store i8 %conv2, i8* %0, align 1, !dbg !804
  %conv6 = and i32 %__c, 255, !dbg !804
  br label %cond.end, !dbg !804

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !804
  ret i32 %cond, !dbg !805
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !806 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !810
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !810
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !810
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !810
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !810
  %cmp = icmp uge i8* %1, %2, !dbg !810
  %conv1 = zext i1 %cmp to i64, !dbg !810
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !810
  %tobool = icmp eq i64 %expval, 0, !dbg !810
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !810

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !810
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !810
  br label %cond.end, !dbg !810

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !810
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !810
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !810
  store i8 %conv4, i8* %1, align 1, !dbg !810
  %conv6 = and i32 %__c, 255, !dbg !810
  br label %cond.end, !dbg !810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !810
  ret i32 %cond, !dbg !811
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !812 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !818, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64* %__n, metadata !819, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !820, metadata !DIExpression()), !dbg !821
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !822
  ret i64 %call, !dbg !823
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !824 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !826, metadata !DIExpression()), !dbg !827
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !828
  %0 = load i32, i32* %_flags, align 8, !dbg !828
  %and = lshr i32 %0, 4, !dbg !828
  %and.lobit = and i32 %and, 1, !dbg !828
  ret i32 %and.lobit, !dbg !829
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !830 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !832, metadata !DIExpression()), !dbg !833
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !834
  %0 = load i32, i32* %_flags, align 8, !dbg !834
  %and = lshr i32 %0, 5, !dbg !834
  %and.lobit = and i32 %and, 1, !dbg !834
  ret i32 %and.lobit, !dbg !835
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !839, metadata !DIExpression()), !dbg !840
  %__c.off = add i32 %__c, 128, !dbg !841
  %0 = icmp ult i32 %__c.off, 384, !dbg !841
  br i1 %0, label %cond.true, label %cond.end, !dbg !841

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !842
  %1 = load i32*, i32** %call, align 8, !dbg !843
  %idxprom = sext i32 %__c to i64, !dbg !844
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !844
  %2 = load i32, i32* %arrayidx, align 4, !dbg !844
  br label %cond.end, !dbg !845

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !845
  ret i32 %cond, !dbg !846
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !847 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !849, metadata !DIExpression()), !dbg !850
  %__c.off = add i32 %__c, 128, !dbg !851
  %0 = icmp ult i32 %__c.off, 384, !dbg !851
  br i1 %0, label %cond.true, label %cond.end, !dbg !851

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !852
  %1 = load i32*, i32** %call, align 8, !dbg !853
  %idxprom = sext i32 %__c to i64, !dbg !854
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !854
  %2 = load i32, i32* %arrayidx, align 4, !dbg !854
  br label %cond.end, !dbg !855

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !855
  ret i32 %cond, !dbg !856
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !857 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !862, metadata !DIExpression()), !dbg !863
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !864
  %conv = trunc i64 %call to i32, !dbg !865
  ret i32 %conv, !dbg !866
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !867 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !871, metadata !DIExpression()), !dbg !872
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !873
  ret i64 %call, !dbg !874
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !875 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !880, metadata !DIExpression()), !dbg !881
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !882
  ret i64 %call, !dbg !883
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !884 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !895, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8* %__base, metadata !896, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !897, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %__size, metadata !898, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !899, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 0, metadata !900, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !901, metadata !DIExpression()), !dbg !905
  br label %while.cond, !dbg !906

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !907
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !905
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !901, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !900, metadata !DIExpression()), !dbg !905
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !908
  br i1 %cmp, label %while.body, label %cleanup, !dbg !906

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !909
  %div = lshr i64 %add, 1, !dbg !911
  call void @llvm.dbg.value(metadata i64 %div, metadata !902, metadata !DIExpression()), !dbg !905
  %mul = mul i64 %div, %__size, !dbg !912
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !913
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !903, metadata !DIExpression()), !dbg !905
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !914
  call void @llvm.dbg.value(metadata i32 %call, metadata !904, metadata !DIExpression()), !dbg !905
  %cmp1 = icmp slt i32 %call, 0, !dbg !915
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !917

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !918
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !920

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !921
  call void @llvm.dbg.value(metadata i64 %add4, metadata !900, metadata !DIExpression()), !dbg !905
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !905
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !905
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !901, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !900, metadata !DIExpression()), !dbg !905
  br label %while.cond, !dbg !906, !llvm.loop !922

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !905
  ret i8* %retval.0, !dbg !924
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !925 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !931, metadata !DIExpression()), !dbg !932
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !933
  ret double %call, !dbg !934
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !935 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !944, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !945, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %base, metadata !946, metadata !DIExpression()), !dbg !947
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !948
  ret i64 %call, !dbg !949
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !950 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !956, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 %base, metadata !958, metadata !DIExpression()), !dbg !959
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !960
  ret i64 %call, !dbg !961
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !962 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !973, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !974, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i32 %base, metadata !975, metadata !DIExpression()), !dbg !976
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !977
  ret i64 %call, !dbg !978
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !979 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !983, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i32 %base, metadata !985, metadata !DIExpression()), !dbg !986
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !987
  ret i64 %call, !dbg !988
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !989 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1031, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1032, metadata !DIExpression()), !dbg !1033
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1034
  ret i32 %call, !dbg !1035
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1036 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1038, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1039, metadata !DIExpression()), !dbg !1040
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1041
  ret i32 %call, !dbg !1042
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1043 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1048, metadata !DIExpression()), !dbg !1049
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1050
  ret i32 %call, !dbg !1051
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1052 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1056, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1057, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1058, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1059, metadata !DIExpression()), !dbg !1060
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1061
  ret i32 %call, !dbg !1062
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1063 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1067, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1068, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1069, metadata !DIExpression(DW_OP_deref)), !dbg !1070
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1071
  ret i32 %call, !dbg !1072
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1073 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1080, metadata !DIExpression()), !dbg !1081
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1081
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1082
  ret i32 %call, !dbg !1083
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1084 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1108, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1109, metadata !DIExpression()), !dbg !1110
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1111
  ret i32 %call, !dbg !1112
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1113 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1116, metadata !DIExpression()), !dbg !1117
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1118
  ret i32 %call, !dbg !1119
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1120 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1124, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1125, metadata !DIExpression()), !dbg !1126
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1127
  ret i32 %call, !dbg !1128
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1129 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1133, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1134, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1135, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1136, metadata !DIExpression()), !dbg !1137
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1138
  ret i32 %call, !dbg !1139
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mark_referenced_resources(%struct.rtx_def* %x, %struct.resources* %res, i8 zeroext %include_delayed_effects) local_unnamed_addr #5 !dbg !1140 {
entry:
  %memory155 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !2267
  %regs156 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !2267
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 1, !dbg !2268
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 2, !dbg !2270
  br label %tailrecurse.outer, !dbg !2271

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %entry
  %x.tr.ph = phi %struct.rtx_def* [ %x, %entry ], [ %x.tr.ph.be, %tailrecurse.outer.backedge ]
  %include_delayed_effects.tr.ph = phi i8 [ %include_delayed_effects, %entry ], [ 0, %tailrecurse.outer.backedge ]
  %tobool119 = icmp eq i8 %include_delayed_effects.tr.ph, 0, !dbg !2273
  br i1 %tobool119, label %tailrecurse.outer.split.us, label %tailrecurse.outer.tailrecurse.outer.split_crit_edge, !dbg !2274

tailrecurse.outer.tailrecurse.outer.split_crit_edge: ; preds = %tailrecurse.outer
  br label %tailrecurse, !dbg !2274

tailrecurse.outer.split.us:                       ; preds = %tailrecurse.outer
  br label %tailrecurse.us, !dbg !2274

tailrecurse.us:                                   ; preds = %sw.bb260.us, %tailrecurse.outer.split.us
  %x.tr.us = phi %struct.rtx_def* [ %2, %sw.bb260.us ], [ %x.tr.ph, %tailrecurse.outer.split.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.resources* %res, metadata !2239, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %include_delayed_effects.tr.ph, metadata !2240, metadata !DIExpression()), !dbg !2275
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.us, i64 0, i32 0, !dbg !2276
  %bf.load.us = load i32, i32* %0, align 8, !dbg !2276
  %trunc.us = trunc i32 %bf.load.us to i16, !dbg !2274
  switch i16 %trunc.us, label %sw.epilog.loopexit.us-lcssa.us [
    i16 35, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 30, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 32, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 31, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 33, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 36, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 45, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 44, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 39, label %sw.bb1.us-lcssa.us
    i16 37, label %sw.bb11.us-lcssa.us
    i16 43, label %sw.bb22.us-lcssa.us
    i16 46, label %sw.bb38.us-lcssa.us
    i16 19, label %sw.bb39.us-lcssa.us
    i16 29, label %sw.bb39.us-lcssa.us
    i16 16, label %sw.bb39.us-lcssa.us
    i16 17, label %sw.bb41.us-lcssa.us
    i16 26, label %sw.bb64.us-lcssa.us
    i16 23, label %sw.bb77.us-lcssa.us
    i16 25, label %cleanup.cont313.loopexit5.loopexit.us-lcssa.us
    i16 10, label %sw.bb118.us
    i16 8, label %sw.bb260.us
    i16 9, label %sw.bb260.us
  ], !dbg !2274

sw.bb118.us:                                      ; preds = %tailrecurse.us
  br label %sw.bb260.us, !dbg !2277

sw.bb260.us:                                      ; preds = %sw.bb118.us, %tailrecurse.us, %tailrecurse.us
  %u261.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.us, i64 0, i32 1, !dbg !2278
  %1 = getelementptr inbounds %union.u, %union.u* %u261.us, i64 1, i32 0, i32 0, i64 0, !dbg !2278
  %rt_rtx264.us = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !2278
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx264.us, align 8, !dbg !2278
  br label %tailrecurse.us, !dbg !2279

sw.epilog.loopexit.us-lcssa.us:                   ; preds = %tailrecurse.us
  %include_delayed_effects.tr.ph.lcssa147 = phi i8 [ %include_delayed_effects.tr.ph, %tailrecurse.us ]
  %x.tr.us.lcssa = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  %bf.load.us.lcssa = phi i32 [ %bf.load.us, %tailrecurse.us ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.epilog.loopexit, !dbg !2276

cleanup.cont313.loopexit5.loopexit.us-lcssa.us:   ; preds = %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us, %tailrecurse.us
  br label %cleanup.cont313.loopexit5.loopexit, !dbg !2280

sw.bb1.us-lcssa.us:                               ; preds = %tailrecurse.us
  %x.tr.us.lcssa134 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa134, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa134, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb1, !dbg !2281

sw.bb11.us-lcssa.us:                              ; preds = %tailrecurse.us
  %x.tr.us.lcssa135 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa135, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa135, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb11, !dbg !2282

sw.bb22.us-lcssa.us:                              ; preds = %tailrecurse.us
  %x.tr.us.lcssa136 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  %bf.load.us.lcssa127 = phi i32 [ %bf.load.us, %tailrecurse.us ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa136, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa136, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb22, !dbg !2283

sw.bb38.us-lcssa.us:                              ; preds = %tailrecurse.us
  br label %sw.bb38, !dbg !2284

sw.bb39.us-lcssa.us:                              ; preds = %tailrecurse.us, %tailrecurse.us, %tailrecurse.us
  %include_delayed_effects.tr.ph.lcssa151 = phi i8 [ %include_delayed_effects.tr.ph, %tailrecurse.us ], [ %include_delayed_effects.tr.ph, %tailrecurse.us ], [ %include_delayed_effects.tr.ph, %tailrecurse.us ]
  %x.tr.us.lcssa138 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ], [ %x.tr.us, %tailrecurse.us ], [ %x.tr.us, %tailrecurse.us ]
  %bf.load.us.lcssa129 = phi i32 [ %bf.load.us, %tailrecurse.us ], [ %bf.load.us, %tailrecurse.us ], [ %bf.load.us, %tailrecurse.us ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa138, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb39, !dbg !2276

sw.bb41.us-lcssa.us:                              ; preds = %tailrecurse.us
  %x.tr.us.lcssa139 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  %bf.load.us.lcssa130 = phi i32 [ %bf.load.us, %tailrecurse.us ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa139, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa139, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb41, !dbg !2285

sw.bb64.us-lcssa.us:                              ; preds = %tailrecurse.us
  %x.tr.us.lcssa140 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa140, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa140, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb64, !dbg !2286

sw.bb77.us-lcssa.us:                              ; preds = %tailrecurse.us
  %x.tr.us.lcssa141 = phi %struct.rtx_def* [ %x.tr.us, %tailrecurse.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa141, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.us.lcssa141, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb77, !dbg !2287

tailrecurse:                                      ; preds = %tailrecurse.outer.tailrecurse.outer.split_crit_edge, %sw.bb260
  %x.tr = phi %struct.rtx_def* [ %60, %sw.bb260 ], [ %x.tr.ph, %tailrecurse.outer.tailrecurse.outer.split_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.resources* %res, metadata !2239, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %include_delayed_effects.tr.ph, metadata !2240, metadata !DIExpression()), !dbg !2275
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !2276
  %bf.load = load i32, i32* %3, align 8, !dbg !2276
  %trunc = trunc i32 %bf.load to i16, !dbg !2274
  switch i16 %trunc, label %sw.epilog.loopexit.us-lcssa [
    i16 35, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 30, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 32, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 31, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 33, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 36, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 45, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 44, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 39, label %sw.bb1.us-lcssa
    i16 37, label %sw.bb11.us-lcssa
    i16 43, label %sw.bb22.us-lcssa
    i16 46, label %sw.bb38.us-lcssa
    i16 19, label %sw.bb39.us-lcssa
    i16 29, label %sw.bb39.us-lcssa
    i16 16, label %sw.bb39.us-lcssa
    i16 17, label %sw.bb41.us-lcssa
    i16 26, label %sw.bb64.us-lcssa
    i16 23, label %sw.bb77.us-lcssa
    i16 25, label %cleanup.cont313.loopexit5.loopexit.us-lcssa
    i16 10, label %sw.bb118
    i16 8, label %sw.bb260
    i16 9, label %sw.bb260
  ], !dbg !2274

sw.bb1.us-lcssa:                                  ; preds = %tailrecurse
  %x.tr.lcssa116 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa116, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa116, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb1, !dbg !2281

sw.bb1:                                           ; preds = %sw.bb1.us-lcssa.us, %sw.bb1.us-lcssa
  %x.tr.lcssa18 = phi %struct.rtx_def* [ %x.tr.lcssa116, %sw.bb1.us-lcssa ], [ %x.tr.us.lcssa134, %sw.bb1.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa18, metadata !2238, metadata !DIExpression()), !dbg !2275
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa18, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2281
  %4 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !2281
  %5 = load i32*, i32** %4, align 8, !dbg !2281
  %bf.load2 = load i32, i32* %5, align 8, !dbg !2281
  %bf.clear3 = and i32 %bf.load2, 65535, !dbg !2281
  %cmp = icmp eq i32 %bf.clear3, 37, !dbg !2281
  br i1 %cmp, label %if.else, label %if.then, !dbg !2288

if.then:                                          ; preds = %sw.bb1
  br label %tailrecurse.outer.backedge, !dbg !2289

if.else:                                          ; preds = %sw.bb1
  %x.tr.lcssa18.lcssa = phi %struct.rtx_def* [ %x.tr.lcssa18, %sw.bb1 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa18.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa18.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa18.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  %call = tail call i32 @subreg_regno(%struct.rtx_def* %x.tr.lcssa18.lcssa) #6, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %call, metadata !2246, metadata !DIExpression()), !dbg !2291
  %call8 = tail call i32 @subreg_nregs(%struct.rtx_def* %x.tr.lcssa18.lcssa) #6, !dbg !2292
  %add = add i32 %call, %call8, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %add, metadata !2250, metadata !DIExpression()), !dbg !2291
  %cmp9 = icmp ult i32 %add, 54, !dbg !2294
  br i1 %cmp9, label %cond.end, label %cond.true, !dbg !2294

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2294
  br label %cond.end, !dbg !2294

cond.end:                                         ; preds = %if.else, %cond.true
  call void @llvm.dbg.value(metadata i32 %call, metadata !2244, metadata !DIExpression()), !dbg !2275
  %6 = zext i32 %call to i64, !dbg !2295
  %7 = zext i32 %add to i64, !dbg !2295
  br label %for.cond, !dbg !2295

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body ], [ %6, %cond.end ], !dbg !2297
  call void @llvm.dbg.value(metadata i64 %indvars.iv95, metadata !2244, metadata !DIExpression()), !dbg !2275
  %cmp10 = icmp ult i64 %indvars.iv95, %7, !dbg !2298
  br i1 %cmp10, label %for.body, label %cleanup.cont313.loopexit3, !dbg !2300

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv95, !dbg !2301
  %8 = load i64, i64* %regs156, align 8, !dbg !2301
  %or = or i64 %8, %shl, !dbg !2301
  store i64 %or, i64* %regs156, align 8, !dbg !2301
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1, !dbg !2302
  br label %for.cond, !dbg !2303, !llvm.loop !2304

sw.bb11.us-lcssa:                                 ; preds = %tailrecurse
  %x.tr.lcssa117 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa117, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa117, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb11, !dbg !2282

sw.bb11:                                          ; preds = %sw.bb11.us-lcssa.us, %sw.bb11.us-lcssa
  %x.tr.lcssa19 = phi %struct.rtx_def* [ %x.tr.lcssa117, %sw.bb11.us-lcssa ], [ %x.tr.us.lcssa135, %sw.bb11.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa19, metadata !2238, metadata !DIExpression()), !dbg !2275
  %call12 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa19) #7, !dbg !2282
  %cmp13 = icmp ult i32 %call12, 53, !dbg !2282
  br i1 %cmp13, label %cond.end16, label %cond.true14, !dbg !2282

cond.true14:                                      ; preds = %sw.bb11
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2282
  br label %cond.end16, !dbg !2282

cond.end16:                                       ; preds = %sw.bb11, %cond.true14
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa19, i64 0, i32 0, !dbg !2306
  %bf.load19 = load i32, i32* %9, align 8, !dbg !2306
  %bf.lshr = lshr i32 %bf.load19, 16, !dbg !2306
  %bf.clear20 = and i32 %bf.lshr, 255, !dbg !2306
  %call21 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa19) #7, !dbg !2307
  tail call fastcc void @add_to_hard_reg_set(i64* nonnull %regs156, i32 %bf.clear20, i32 %call21) #7, !dbg !2308
  br label %cleanup.cont313, !dbg !2309

sw.bb22.us-lcssa:                                 ; preds = %tailrecurse
  %x.tr.lcssa118 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  %bf.load.lcssa108 = phi i32 [ %bf.load, %tailrecurse ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa118, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa118, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb22, !dbg !2283

sw.bb22:                                          ; preds = %sw.bb22.us-lcssa.us, %sw.bb22.us-lcssa
  %bf.load23 = phi i32 [ %bf.load.lcssa108, %sw.bb22.us-lcssa ], [ %bf.load.us.lcssa127, %sw.bb22.us-lcssa.us ], !dbg !2283
  %x.tr.lcssa20 = phi %struct.rtx_def* [ %x.tr.lcssa118, %sw.bb22.us-lcssa ], [ %x.tr.us.lcssa136, %sw.bb22.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa20, metadata !2238, metadata !DIExpression()), !dbg !2275
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa20, i64 0, i32 0, !dbg !2283
  %bf.clear25 = and i32 %bf.load23, 67108864, !dbg !2283
  %tobool = icmp eq i32 %bf.clear25, 0, !dbg !2283
  br i1 %tobool, label %if.else27, label %if.then26, !dbg !2310

if.then26:                                        ; preds = %sw.bb22
  store i8 1, i8* %unch_memory, align 1, !dbg !2311
  br label %if.end28, !dbg !2312

if.else27:                                        ; preds = %sw.bb22
  store i8 1, i8* %memory155, align 8, !dbg !2313
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %bf.load29 = load i32, i32* %10, align 8, !dbg !2314
  %bf.lshr30 = lshr i32 %bf.load29, 27, !dbg !2314
  %11 = load i8, i8* %volatil, align 2, !dbg !2315
  %12 = trunc i32 %bf.lshr30 to i8, !dbg !2315
  %13 = and i8 %12, 1, !dbg !2315
  %conv33 = or i8 %11, %13, !dbg !2315
  store i8 %conv33, i8* %volatil, align 2, !dbg !2315
  %arrayidx36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa20, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2316
  br label %tailrecurse.outer.backedge, !dbg !2317

sw.bb38.us-lcssa:                                 ; preds = %tailrecurse
  br label %sw.bb38, !dbg !2284

sw.bb38:                                          ; preds = %sw.bb38.us-lcssa.us, %sw.bb38.us-lcssa
  %cc = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 3, !dbg !2284
  store i8 1, i8* %cc, align 1, !dbg !2318
  br label %cleanup.cont313, !dbg !2319

sw.bb39.us-lcssa:                                 ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  %include_delayed_effects.tr.ph.lcssa145 = phi i8 [ %include_delayed_effects.tr.ph, %tailrecurse ], [ %include_delayed_effects.tr.ph, %tailrecurse ], [ %include_delayed_effects.tr.ph, %tailrecurse ]
  %x.tr.lcssa120 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ], [ %x.tr, %tailrecurse ], [ %x.tr, %tailrecurse ]
  %bf.load.lcssa110 = phi i32 [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], [ %bf.load, %tailrecurse ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa120, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb39, !dbg !2276

sw.bb39:                                          ; preds = %sw.bb39.us-lcssa.us, %sw.bb39.us-lcssa
  %include_delayed_effects.tr.ph156 = phi i8 [ %include_delayed_effects.tr.ph.lcssa145, %sw.bb39.us-lcssa ], [ %include_delayed_effects.tr.ph.lcssa151, %sw.bb39.us-lcssa.us ]
  %bf.load.lcssa = phi i32 [ %bf.load.lcssa110, %sw.bb39.us-lcssa ], [ %bf.load.us.lcssa129, %sw.bb39.us-lcssa.us ]
  %x.tr.lcssa22 = phi %struct.rtx_def* [ %x.tr.lcssa120, %sw.bb39.us-lcssa ], [ %x.tr.us.lcssa138, %sw.bb39.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa22, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa22, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa22, metadata !2238, metadata !DIExpression()), !dbg !2275
  store i8 1, i8* %volatil, align 2, !dbg !2320
  br label %sw.epilog, !dbg !2321

sw.bb41.us-lcssa:                                 ; preds = %tailrecurse
  %x.tr.lcssa121 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  %bf.load.lcssa111 = phi i32 [ %bf.load, %tailrecurse ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa121, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa121, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb41, !dbg !2285

sw.bb41:                                          ; preds = %sw.bb41.us-lcssa.us, %sw.bb41.us-lcssa
  %bf.load42 = phi i32 [ %bf.load.lcssa111, %sw.bb41.us-lcssa ], [ %bf.load.us.lcssa130, %sw.bb41.us-lcssa.us ], !dbg !2285
  %x.tr.lcssa23 = phi %struct.rtx_def* [ %x.tr.lcssa121, %sw.bb41.us-lcssa ], [ %x.tr.us.lcssa139, %sw.bb41.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa23, metadata !2238, metadata !DIExpression()), !dbg !2275
  %bf.lshr43 = lshr i32 %bf.load42, 27, !dbg !2285
  %14 = load i8, i8* %volatil, align 2, !dbg !2322
  %15 = trunc i32 %bf.lshr43 to i8, !dbg !2322
  %16 = and i8 %15, 1, !dbg !2322
  %conv48 = or i8 %14, %16, !dbg !2322
  store i8 %conv48, i8* %volatil, align 2, !dbg !2322
  call void @llvm.dbg.value(metadata i32 0, metadata !2242, metadata !DIExpression()), !dbg !2275
  %arrayidx52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa23, i64 0, i32 1, i32 0, i32 1, !dbg !2323
  %rt_rtvec = bitcast %struct.object_block** %arrayidx52 to %struct.rtvec_def**, !dbg !2323
  br label %for.cond49, !dbg !2326

for.cond49:                                       ; preds = %for.body55, %sw.bb41
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.body55 ], [ 0, %sw.bb41 ], !dbg !2327
  call void @llvm.dbg.value(metadata i64 %indvars.iv97, metadata !2242, metadata !DIExpression()), !dbg !2275
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2328
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i64 0, i32 0, !dbg !2328
  %18 = load i32, i32* %num_elem, align 8, !dbg !2328
  %19 = sext i32 %18 to i64, !dbg !2329
  %cmp53 = icmp slt i64 %indvars.iv97, %19, !dbg !2329
  br i1 %cmp53, label %for.body55, label %cleanup.cont313.loopexit4, !dbg !2330

for.body55:                                       ; preds = %for.cond49
  %arrayidx60 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i64 0, i32 1, i64 %indvars.iv97, !dbg !2331
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx60, align 8, !dbg !2331
  tail call void @mark_referenced_resources(%struct.rtx_def* %20, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2332
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i32 undef, metadata !2242, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2275
  br label %for.cond49, !dbg !2334, !llvm.loop !2335

sw.bb64.us-lcssa:                                 ; preds = %tailrecurse
  %x.tr.lcssa122 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa122, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa122, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb64, !dbg !2286

sw.bb64:                                          ; preds = %sw.bb64.us-lcssa.us, %sw.bb64.us-lcssa
  %x.tr.lcssa24 = phi %struct.rtx_def* [ %x.tr.lcssa122, %sw.bb64.us-lcssa ], [ %x.tr.us.lcssa140, %sw.bb64.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa24, metadata !2238, metadata !DIExpression()), !dbg !2275
  %arrayidx67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa24, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2286
  %rt_rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**, !dbg !2286
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx68, align 8, !dbg !2286
  %arrayidx71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2286
  %rt_rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**, !dbg !2286
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx72, align 8, !dbg !2286
  tail call void @mark_referenced_resources(%struct.rtx_def* %22, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2337
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa24, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2338
  br label %tailrecurse.outer.backedge, !dbg !2339

sw.bb77.us-lcssa:                                 ; preds = %tailrecurse
  %x.tr.lcssa123 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa123, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa123, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.bb77, !dbg !2287

sw.bb77:                                          ; preds = %sw.bb77.us-lcssa.us, %sw.bb77.us-lcssa
  %x.tr.lcssa25 = phi %struct.rtx_def* [ %x.tr.lcssa123, %sw.bb77.us-lcssa ], [ %x.tr.us.lcssa141, %sw.bb77.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa25, metadata !2238, metadata !DIExpression()), !dbg !2275
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa25, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2287
  %rt_rtx81 = bitcast %union.rtunion_def* %24 to %struct.rtx_def**, !dbg !2287
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx81, align 8, !dbg !2287
  tail call void @mark_referenced_resources(%struct.rtx_def* %25, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2340
  %arrayidx84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa25, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2341
  %rt_rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**, !dbg !2341
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx85, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.rtx_def* %26, metadata !2238, metadata !DIExpression()), !dbg !2275
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i64 0, i32 0, !dbg !2342
  %bf.load86 = load i32, i32* %27, align 8, !dbg !2342
  %bf.clear87 = and i32 %bf.load86, 65535, !dbg !2342
  %cmp88 = icmp eq i32 %bf.clear87, 120, !dbg !2344
  br i1 %cmp88, label %if.then94, label %lor.lhs.false, !dbg !2345

lor.lhs.false:                                    ; preds = %sw.bb77
  %cmp92 = icmp eq i32 %bf.clear87, 40, !dbg !2346
  br i1 %cmp92, label %if.then94, label %if.else95, !dbg !2347

if.then94:                                        ; preds = %lor.lhs.false, %sw.bb77
  tail call void @mark_referenced_resources(%struct.rtx_def* %26, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2348
  br label %if.end106, !dbg !2348

if.else95:                                        ; preds = %lor.lhs.false
  %cmp98 = icmp eq i32 %bf.clear87, 39, !dbg !2349
  br i1 %cmp98, label %if.then100, label %if.end106, !dbg !2351

if.then100:                                       ; preds = %if.else95
  %arrayidx103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2352
  %rt_rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**, !dbg !2352
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx104, align 8, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.rtx_def* %28, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %if.end106, !dbg !2353

if.end106:                                        ; preds = %if.else95, %if.then100, %if.then94
  %x.addr.1 = phi %struct.rtx_def* [ %26, %if.then94 ], [ %28, %if.then100 ], [ %26, %if.else95 ], !dbg !2270
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.1, metadata !2238, metadata !DIExpression()), !dbg !2275
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 0, !dbg !2354
  %bf.load107 = load i32, i32* %29, align 8, !dbg !2354
  %bf.clear108 = and i32 %bf.load107, 65535, !dbg !2354
  %cmp109 = icmp eq i32 %bf.clear108, 43, !dbg !2354
  br i1 %cmp109, label %if.then111, label %cleanup.cont313.loopexit5.loopexit6, !dbg !2355

if.then111:                                       ; preds = %if.end106
  %arrayidx114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2356
  br label %tailrecurse.outer.backedge, !dbg !2271

tailrecurse.outer.backedge:                       ; preds = %if.then111, %if.then, %sw.bb64, %if.end28
  %x.tr.ph.be.in.in = phi %union.rtunion_def* [ %arrayidx36, %if.end28 ], [ %23, %sw.bb64 ], [ %arrayidx, %if.then ], [ %arrayidx114, %if.then111 ]
  %x.tr.ph.be.in = bitcast %union.rtunion_def* %x.tr.ph.be.in.in to %struct.rtx_def**, !dbg !2270
  %x.tr.ph.be = load %struct.rtx_def*, %struct.rtx_def** %x.tr.ph.be.in, align 8, !dbg !2270
  br label %tailrecurse.outer, !dbg !2274

sw.bb118:                                         ; preds = %tailrecurse
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2357
  %rt_rtx124 = bitcast %union.rtunion_def* %30 to %struct.rtx_def**, !dbg !2357
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx124, align 8, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.rtx_def* %31, metadata !2251, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2254, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()), !dbg !2267
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2358
  %rt_rtx129 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !2358
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx129, align 8, !dbg !2358
  %cmp130 = icmp eq %struct.rtx_def* %33, %x.tr, !dbg !2360
  br i1 %cmp130, label %if.end154, label %if.then132, !dbg !2361

if.then132:                                       ; preds = %sw.bb118
  %u137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i64 0, i32 1, !dbg !2362
  %34 = getelementptr inbounds %union.u, %union.u* %u137, i64 1, i32 0, i32 0, i64 0, !dbg !2362
  %rt_rtx140 = bitcast %union.rtunion_def* %34 to %struct.rtx_def**, !dbg !2362
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx140, align 8, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.rtx_def* %35, metadata !2254, metadata !DIExpression()), !dbg !2267
  %arrayidx143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2364
  %rt_rtvec144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtvec_def**, !dbg !2364
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec144, align 8, !dbg !2364
  %num_elem145 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i64 0, i32 0, !dbg !2364
  %37 = load i32, i32* %num_elem145, align 8, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %37, metadata !2255, metadata !DIExpression()), !dbg !2267
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i64 0, i32 0, !dbg !2365
  %bf.load146 = load i32, i32* %38, align 8, !dbg !2365
  %bf.clear147 = and i32 %bf.load146, 65535, !dbg !2365
  %cmp148 = icmp eq i32 %bf.clear147, 5, !dbg !2365
  br i1 %cmp148, label %if.end154, label %cond.true150, !dbg !2365

cond.true150:                                     ; preds = %if.then132
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2365
  br label %if.end154, !dbg !2365

if.end154:                                        ; preds = %sw.bb118, %cond.true150, %if.then132
  %sequence.0 = phi %struct.rtx_def* [ null, %sw.bb118 ], [ %35, %if.then132 ], [ %35, %cond.true150 ], !dbg !2267
  %seq_size.0 = phi i32 [ 0, %sw.bb118 ], [ %37, %if.then132 ], [ %37, %cond.true150 ], !dbg !2267
  call void @llvm.dbg.value(metadata i32 %seq_size.0, metadata !2255, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sequence.0, metadata !2254, metadata !DIExpression()), !dbg !2267
  store i8 1, i8* %memory155, align 8, !dbg !2366
  %39 = load i64, i64* %regs156, align 8, !dbg !2367
  %or157 = or i64 %39, 128, !dbg !2367
  store i64 %or157, i64* %regs156, align 8, !dbg !2367
  %40 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 41), align 1, !dbg !2368
  %tobool158 = icmp eq i8 %40, 0, !dbg !2368
  br i1 %tobool158, label %if.end164, label %if.then159, !dbg !2370

if.then159:                                       ; preds = %if.end154
  %or163 = or i64 %39, 1048768, !dbg !2371
  store i64 %or163, i64* %regs156, align 8, !dbg !2371
  br label %if.end164, !dbg !2373

if.end164:                                        ; preds = %if.end154, %if.then159
  %41 = phi i64 [ %or157, %if.end154 ], [ %or163, %if.then159 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()), !dbg !2267
  br label %for.cond165, !dbg !2374

for.cond165:                                      ; preds = %for.inc178, %if.end164
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc178 ], [ 0, %if.end164 ]
  %42 = phi i64 [ %44, %for.inc178 ], [ %41, %if.end164 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv99, metadata !2256, metadata !DIExpression()), !dbg !2267
  %exitcond101 = icmp eq i64 %indvars.iv99, 53, !dbg !2376
  br i1 %exitcond101, label %for.end180, label %for.body168, !dbg !2378

for.body168:                                      ; preds = %for.cond165
  %arrayidx170 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %indvars.iv99, !dbg !2379
  %43 = load i8, i8* %arrayidx170, align 1, !dbg !2379
  %tobool171 = icmp eq i8 %43, 0, !dbg !2379
  br i1 %tobool171, label %for.inc178, label %if.then172, !dbg !2381

if.then172:                                       ; preds = %for.body168
  %shl174 = shl i64 1, %indvars.iv99, !dbg !2382
  %or176 = or i64 %42, %shl174, !dbg !2382
  store i64 %or176, i64* %regs156, align 8, !dbg !2382
  br label %for.inc178, !dbg !2382

for.inc178:                                       ; preds = %for.body168, %if.then172
  %44 = phi i64 [ %42, %for.body168 ], [ %or176, %if.then172 ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i32 undef, metadata !2256, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2267
  br label %for.cond165, !dbg !2384, !llvm.loop !2385

for.end180:                                       ; preds = %for.cond165
  %call181 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %x.tr, i32 30, %struct.rtx_def* null) #6, !dbg !2387
  %tobool182 = icmp eq %struct.rtx_def* %call181, null, !dbg !2387
  br i1 %tobool182, label %if.end185, label %if.then183, !dbg !2389

if.then183:                                       ; preds = %for.end180
  store i64 -1, i64* %regs156, align 8, !dbg !2390
  br label %if.end185, !dbg !2390

if.end185:                                        ; preds = %for.end180, %if.then183
  %u186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, !dbg !2391
  %arrayidx188 = getelementptr inbounds %union.u, %union.u* %u186, i64 1, i32 0, i32 1, !dbg !2391
  %rt_rtx189 = bitcast %struct.object_block** %arrayidx188 to %struct.rtx_def**, !dbg !2391
  %arrayidx208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %sequence.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2392
  %rt_rtvec209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtvec_def**, !dbg !2392
  %45 = sext i32 %seq_size.0 to i64, !dbg !2393
  br label %for.cond190, !dbg !2393

for.cond190:                                      ; preds = %for.inc253, %if.end185
  %link.0.in = phi %struct.rtx_def** [ %rt_rtx189, %if.end185 ], [ %rt_rtx257, %for.inc253 ]
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2394
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2257, metadata !DIExpression()), !dbg !2395
  %tobool191 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2396
  br i1 %tobool191, label %sw.bb260.loopexit, label %for.body192, !dbg !2396

for.body192:                                      ; preds = %for.cond190
  %arrayidx195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2397
  %46 = bitcast %union.rtunion_def* %arrayidx195 to i32**, !dbg !2397
  %47 = load i32*, i32** %46, align 8, !dbg !2397
  %bf.load197 = load i32, i32* %47, align 8, !dbg !2397
  %bf.clear198 = and i32 %bf.load197, 65535, !dbg !2397
  %cmp199 = icmp eq i32 %bf.clear198, 24, !dbg !2398
  br i1 %cmp199, label %for.cond202.preheader, label %for.inc253, !dbg !2399

for.cond202.preheader:                            ; preds = %for.body192
  %rt_rtx228 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**, !dbg !2400
  br label %for.cond202, !dbg !2402

for.cond202:                                      ; preds = %for.cond202.preheader, %for.inc237
  %indvars.iv102 = phi i64 [ 1, %for.cond202.preheader ], [ %indvars.iv.next103, %for.inc237 ], !dbg !2403
  call void @llvm.dbg.value(metadata i64 %indvars.iv102, metadata !2256, metadata !DIExpression()), !dbg !2267
  %cmp203 = icmp slt i64 %indvars.iv102, %45, !dbg !2404
  br i1 %cmp203, label %for.body205, label %for.end239, !dbg !2402

for.body205:                                      ; preds = %for.cond202
  %48 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec209, align 8, !dbg !2405
  %arrayidx212 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i64 0, i32 1, i64 %indvars.iv102, !dbg !2405
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx212, align 8, !dbg !2405
  %u213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i64 0, i32 1, !dbg !2405
  %50 = getelementptr inbounds %union.u, %union.u* %u213, i64 1, i32 0, i32 0, i64 0, !dbg !2405
  %rt_rtx216 = bitcast %union.rtunion_def* %50 to %struct.rtx_def**, !dbg !2405
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx216, align 8, !dbg !2405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %51, metadata !2259, metadata !DIExpression()), !dbg !2392
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i64 0, i32 0, !dbg !2406
  %bf.load217 = load i32, i32* %52, align 8, !dbg !2406
  %bf.clear218 = and i32 %bf.load217, 65535, !dbg !2406
  %cmp219 = icmp eq i32 %bf.clear218, 23, !dbg !2407
  br i1 %cmp219, label %land.lhs.true, label %if.end236, !dbg !2408

land.lhs.true:                                    ; preds = %for.body205
  %arrayidx223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2409
  %rt_rtx224 = bitcast %union.rtunion_def* %arrayidx223 to %struct.rtx_def**, !dbg !2409
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx224, align 8, !dbg !2409
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx228, align 8, !dbg !2410
  %arrayidx231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2410
  %rt_rtx232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtx_def**, !dbg !2410
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx232, align 8, !dbg !2410
  %call233 = tail call i32 @rtx_equal_p(%struct.rtx_def* %53, %struct.rtx_def* %55) #6, !dbg !2411
  %tobool234 = icmp eq i32 %call233, 0, !dbg !2411
  br i1 %tobool234, label %if.end236, label %cleanup, !dbg !2412

if.end236:                                        ; preds = %land.lhs.true, %for.body205
  br label %cleanup, !dbg !2413

cleanup:                                          ; preds = %land.lhs.true, %if.end236
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end236 ], [ false, %land.lhs.true ]
  br i1 %cleanup.dest.slot.0, label %for.inc237, label %for.end239

for.inc237:                                       ; preds = %cleanup
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 undef, metadata !2256, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2267
  br label %for.cond202, !dbg !2415, !llvm.loop !2416

for.end239:                                       ; preds = %cleanup, %for.cond202
  %cmp203.lcssa = phi i1 [ %cmp203, %cleanup ], [ %cmp203, %for.cond202 ], !dbg !2404
  call void @llvm.dbg.value(metadata i64 %indvars.iv102, metadata !2256, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %indvars.iv102, metadata !2256, metadata !DIExpression()), !dbg !2267
  br i1 %cmp203.lcssa, label %for.inc253, label %if.then242, !dbg !2418

if.then242:                                       ; preds = %for.end239
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx228, align 8, !dbg !2419
  %arrayidx249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2419
  %rt_rtx250 = bitcast %union.rtunion_def* %arrayidx249 to %struct.rtx_def**, !dbg !2419
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx250, align 8, !dbg !2419
  tail call void @mark_referenced_resources(%struct.rtx_def* %57, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2421
  br label %for.inc253, !dbg !2421

for.inc253:                                       ; preds = %for.end239, %for.body192, %if.then242
  %58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2422
  %rt_rtx257 = bitcast %union.rtunion_def* %58 to %struct.rtx_def**, !dbg !2422
  br label %for.cond190, !dbg !2423, !llvm.loop !2424

sw.bb260.loopexit:                                ; preds = %for.cond190
  br label %sw.bb260, !dbg !2278

sw.bb260:                                         ; preds = %sw.bb260.loopexit, %tailrecurse, %tailrecurse
  %u261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, !dbg !2278
  %59 = getelementptr inbounds %union.u, %union.u* %u261, i64 1, i32 0, i32 0, i64 0, !dbg !2278
  %rt_rtx264 = bitcast %union.rtunion_def* %59 to %struct.rtx_def**, !dbg !2278
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx264, align 8, !dbg !2278
  br label %tailrecurse, !dbg !2279

sw.epilog.loopexit.us-lcssa:                      ; preds = %tailrecurse
  %include_delayed_effects.tr.ph.lcssa = phi i8 [ %include_delayed_effects.tr.ph, %tailrecurse ]
  %x.tr.lcssa114 = phi %struct.rtx_def* [ %x.tr, %tailrecurse ]
  %bf.load.lcssa104 = phi i32 [ %bf.load, %tailrecurse ], !dbg !2276
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa114, metadata !2238, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa114, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.epilog.loopexit, !dbg !2276

sw.epilog.loopexit:                               ; preds = %sw.epilog.loopexit.us-lcssa.us, %sw.epilog.loopexit.us-lcssa
  %include_delayed_effects.tr.ph157 = phi i8 [ %include_delayed_effects.tr.ph.lcssa, %sw.epilog.loopexit.us-lcssa ], [ %include_delayed_effects.tr.ph.lcssa147, %sw.epilog.loopexit.us-lcssa.us ]
  %bf.load.lcssa36 = phi i32 [ %bf.load.lcssa104, %sw.epilog.loopexit.us-lcssa ], [ %bf.load.us.lcssa, %sw.epilog.loopexit.us-lcssa.us ]
  %x.tr.lcssa = phi %struct.rtx_def* [ %x.tr.lcssa114, %sw.epilog.loopexit.us-lcssa ], [ %x.tr.us.lcssa, %sw.epilog.loopexit.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa, metadata !2238, metadata !DIExpression()), !dbg !2275
  br label %sw.epilog, !dbg !2426

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb39
  %include_delayed_effects.tr.ph155 = phi i8 [ %include_delayed_effects.tr.ph157, %sw.epilog.loopexit ], [ %include_delayed_effects.tr.ph156, %sw.bb39 ]
  %x.tr26 = phi %struct.rtx_def* [ %x.tr.lcssa, %sw.epilog.loopexit ], [ %x.tr.lcssa22, %sw.bb39 ]
  %bf.clear16.in = phi i32 [ %bf.load.lcssa36, %sw.epilog.loopexit ], [ %bf.load.lcssa, %sw.bb39 ]
  %bf.clear16 = and i32 %bf.clear16.in, 65535, !dbg !2276
  %idxprom265 = zext i32 %bf.clear16 to i64, !dbg !2426
  %arrayidx266 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom265, !dbg !2426
  %61 = load i8*, i8** %arrayidx266, align 8, !dbg !2426
  call void @llvm.dbg.value(metadata i8* %61, metadata !2245, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 0, metadata !2242, metadata !DIExpression()), !dbg !2275
  %arrayidx269 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom265, !dbg !2427
  %62 = load i8, i8* %arrayidx269, align 1, !dbg !2427
  %u283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr26, i64 0, i32 1, !dbg !2430
  %fld284 = bitcast %union.u* %u283 to [1 x %union.rtunion_def]*, !dbg !2430
  %wide.trip.count = zext i8 %62 to i64, !dbg !2434
  br label %for.cond267, !dbg !2435

for.cond267:                                      ; preds = %for.inc304, %sw.epilog
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc304 ], [ 0, %sw.epilog ], !dbg !2275
  %format_ptr.0 = phi i8* [ %incdec.ptr, %for.inc304 ], [ %61, %sw.epilog ], !dbg !2275
  call void @llvm.dbg.value(metadata i64 %indvars.iv93, metadata !2242, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %format_ptr.0, metadata !2245, metadata !DIExpression()), !dbg !2275
  %exitcond = icmp eq i64 %indvars.iv93, %wide.trip.count, !dbg !2434
  br i1 %exitcond, label %cleanup.cont313.loopexit, label %for.body273, !dbg !2436

for.body273:                                      ; preds = %for.cond267
  %incdec.ptr = getelementptr inbounds i8, i8* %format_ptr.0, i64 1, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2245, metadata !DIExpression()), !dbg !2275
  %63 = load i8, i8* %format_ptr.0, align 1, !dbg !2438
  %conv274 = sext i8 %63 to i32, !dbg !2438
  switch i32 %conv274, label %for.inc304 [
    i32 101, label %sw.bb275
    i32 69, label %for.cond282.preheader
  ], !dbg !2439

for.cond282.preheader:                            ; preds = %for.body273
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i64 0, i64 %indvars.iv93, !dbg !2430
  %rt_rtvec287 = bitcast %union.rtunion_def* %arrayidx286 to %struct.rtvec_def**, !dbg !2430
  br label %for.cond282, !dbg !2440

sw.bb275:                                         ; preds = %for.body273
  %arrayidx279 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i64 0, i64 %indvars.iv93, !dbg !2441
  %rt_rtx280 = bitcast %union.rtunion_def* %arrayidx279 to %struct.rtx_def**, !dbg !2441
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx280, align 8, !dbg !2441
  tail call void @mark_referenced_resources(%struct.rtx_def* %64, %struct.resources* %res, i8 zeroext %include_delayed_effects.tr.ph155) #7, !dbg !2442
  br label %for.inc304, !dbg !2443

for.cond282:                                      ; preds = %for.cond282.preheader, %for.body291
  %indvars.iv = phi i64 [ 0, %for.cond282.preheader ], [ %indvars.iv.next, %for.body291 ], !dbg !2444
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2243, metadata !DIExpression()), !dbg !2275
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec287, align 8, !dbg !2445
  %num_elem288 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i64 0, i32 0, !dbg !2445
  %66 = load i32, i32* %num_elem288, align 8, !dbg !2445
  %67 = sext i32 %66 to i64, !dbg !2446
  %cmp289 = icmp slt i64 %indvars.iv, %67, !dbg !2446
  br i1 %cmp289, label %for.body291, label %for.inc304.loopexit, !dbg !2440

for.body291:                                      ; preds = %for.cond282
  %arrayidx299 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i64 0, i32 1, i64 %indvars.iv, !dbg !2447
  %68 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx299, align 8, !dbg !2447
  tail call void @mark_referenced_resources(%struct.rtx_def* %68, %struct.resources* %res, i8 zeroext %include_delayed_effects.tr.ph155) #7, !dbg !2448
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i32 undef, metadata !2243, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2275
  br label %for.cond282, !dbg !2450, !llvm.loop !2451

for.inc304.loopexit:                              ; preds = %for.cond282
  br label %for.inc304, !dbg !2453

for.inc304:                                       ; preds = %for.inc304.loopexit, %sw.bb275, %for.body273
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1, !dbg !2453
  call void @llvm.dbg.value(metadata i32 undef, metadata !2242, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2275
  br label %for.cond267, !dbg !2454, !llvm.loop !2455

cleanup.cont313.loopexit:                         ; preds = %for.cond267
  br label %cleanup.cont313, !dbg !2280

cleanup.cont313.loopexit3:                        ; preds = %for.cond
  br label %cleanup.cont313, !dbg !2280

cleanup.cont313.loopexit4:                        ; preds = %for.cond49
  br label %cleanup.cont313, !dbg !2280

cleanup.cont313.loopexit5.loopexit.us-lcssa:      ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  br label %cleanup.cont313.loopexit5.loopexit, !dbg !2280

cleanup.cont313.loopexit5.loopexit:               ; preds = %cleanup.cont313.loopexit5.loopexit.us-lcssa.us, %cleanup.cont313.loopexit5.loopexit.us-lcssa
  br label %cleanup.cont313.loopexit5, !dbg !2280

cleanup.cont313.loopexit5.loopexit6:              ; preds = %if.end106
  br label %cleanup.cont313.loopexit5, !dbg !2280

cleanup.cont313.loopexit5:                        ; preds = %cleanup.cont313.loopexit5.loopexit6, %cleanup.cont313.loopexit5.loopexit
  br label %cleanup.cont313, !dbg !2280

cleanup.cont313:                                  ; preds = %cleanup.cont313.loopexit5, %cleanup.cont313.loopexit4, %cleanup.cont313.loopexit3, %cleanup.cont313.loopexit, %cond.end16, %sw.bb38
  ret void, !dbg !2280
}

declare dso_local i32 @subreg_regno(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @subreg_nregs(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2457 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2464, metadata !DIExpression()), !dbg !2465
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2466
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2466
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2466
  ret i32 %0, !dbg !2467
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !2468 {
entry:
  call void @llvm.dbg.value(metadata i64* %regs, metadata !2474, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2476, metadata !DIExpression()), !dbg !2478
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %call, metadata !2477, metadata !DIExpression()), !dbg !2478
  %regs.promoted = load i64, i64* %regs, align 8, !dbg !2480
  br label %do.body, !dbg !2481

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %or, %do.body ], !dbg !2478
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !2476, metadata !DIExpression()), !dbg !2478
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !2480
  %shl = shl i64 1, %sh_prom, !dbg !2480
  %or = or i64 %0, %shl, !dbg !2480
  %inc = add i32 %regno.addr.0, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2476, metadata !DIExpression()), !dbg !2478
  %cmp = icmp ult i32 %inc, %call, !dbg !2483
  br i1 %cmp, label %do.body, label %do.end, !dbg !2480, !llvm.loop !2484

do.end:                                           ; preds = %do.body
  %or.lcssa = phi i64 [ %or, %do.body ], !dbg !2480
  store i64 %or.lcssa, i64* %regs, align 8, !dbg !2480
  ret void, !dbg !2486
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @mark_set_resources(%struct.rtx_def* %x, %struct.resources* %res, i32 %in_dest, i32 %mark_type) local_unnamed_addr #5 !dbg !2487 {
entry:
  %memory = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !2511
  %cc4 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 3, !dbg !2511
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !2511
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 1, !dbg !2512
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 2, !dbg !2512
  br label %tailrecurse.outer, !dbg !2515

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %entry
  %x.tr.ph = phi %struct.rtx_def* [ %x, %entry ], [ %x.tr.ph.be, %tailrecurse.outer.backedge ]
  %in_dest.tr.ph = phi i32 [ %in_dest, %entry ], [ %in_dest.tr.ph.be, %tailrecurse.outer.backedge ]
  %mark_type.tr.ph = phi i32 [ %mark_type, %entry ], [ 0, %tailrecurse.outer.backedge ]
  %cmp = icmp eq i32 %mark_type.tr.ph, 1, !dbg !2516
  %tobool164 = icmp eq i32 %in_dest.tr.ph, 0, !dbg !2517
  br label %tailrecurse, !dbg !2518

tailrecurse:                                      ; preds = %tailrecurse.outer, %if.then174
  %x.tr = phi %struct.rtx_def* [ %46, %if.then174 ], [ %x.tr.ph, %tailrecurse.outer ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.resources* %res, metadata !2492, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %in_dest.tr.ph, metadata !2493, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %mark_type.tr.ph, metadata !2494, metadata !DIExpression()), !dbg !2519
  br i1 %cmp, label %tailrecurse.split.us, label %tailrecurse.tailrecurse.split_crit_edge, !dbg !2518

tailrecurse.tailrecurse.split_crit_edge:          ; preds = %tailrecurse
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !2519
  %bf.load.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2520
  br label %restart, !dbg !2518

tailrecurse.split.us:                             ; preds = %tailrecurse
  %.phi.trans.insert64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !2519
  %bf.load.us.pre = load i32, i32* %.phi.trans.insert64, align 8, !dbg !2520
  br label %restart.us, !dbg !2518

restart.us:                                       ; preds = %land.lhs.true.us, %tailrecurse.split.us
  %bf.load.us = phi i32 [ %bf.load.us.pre, %tailrecurse.split.us ], [ %bf.load37.us, %land.lhs.true.us ], !dbg !2520
  %x.addr.0.us = phi %struct.rtx_def* [ %x.tr, %tailrecurse.split.us ], [ %7, %land.lhs.true.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.label(metadata !2510), !dbg !2521
  %trunc.us = trunc i32 %bf.load.us to i16, !dbg !2522
  switch i16 %trunc.us, label %sw.epilog.loopexit.us-lcssa.us [
    i16 13, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 11, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 12, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 24, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 30, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 32, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 31, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 33, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 44, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 45, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 35, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 36, label %cleanup.cont.loopexit7.us-lcssa.us
    i16 46, label %sw.bb1.us-lcssa.us
    i16 10, label %sw.bb2.us
    i16 9, label %sw.bb32.us
    i16 8, label %sw.bb32.us
    i16 23, label %sw.bb45.us-lcssa.us
    i16 25, label %sw.bb62.us-lcssa.us
    i16 5, label %for.cond68.preheader.us-lcssa.us
    i16 77, label %sw.bb104.us-lcssa.us
    i16 75, label %sw.bb104.us-lcssa.us
    i16 76, label %sw.bb104.us-lcssa.us
    i16 74, label %sw.bb104.us-lcssa.us
    i16 78, label %sw.bb109.us-lcssa.us
    i16 79, label %sw.bb109.us-lcssa.us
    i16 119, label %sw.bb130.us-lcssa.us
    i16 120, label %sw.bb130.us-lcssa.us
    i16 43, label %sw.bb143.us-lcssa.us
    i16 39, label %sw.bb163.us-lcssa.us
    i16 37, label %sw.bb194.us-lcssa.us
    i16 19, label %sw.bb210.us-lcssa.us
    i16 16, label %sw.bb210.us-lcssa.us
    i16 29, label %sw.bb212.us-lcssa.us
    i16 17, label %sw.bb214.us-lcssa.us
  ], !dbg !2522

sw.bb2.us:                                        ; preds = %restart.us
  store i8 1, i8* %memory, align 8, !dbg !2523
  store i8 1, i8* %cc4, align 1, !dbg !2524
  %0 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !2525
  %1 = load i64, i64* %regs, align 8, !dbg !2525
  %or.us = or i64 %1, %0, !dbg !2525
  store i64 %or.us, i64* %regs, align 8, !dbg !2525
  %u.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.us, i64 0, i32 1, !dbg !2526
  %arrayidx.us = getelementptr inbounds %union.u, %union.u* %u.us, i64 1, i32 0, i32 1, !dbg !2526
  %rt_rtx.us = bitcast %struct.object_block** %arrayidx.us to %struct.rtx_def**, !dbg !2526
  br label %for.cond.us, !dbg !2528

for.cond.us:                                      ; preds = %for.inc.us, %sw.bb2.us
  %link.0.in.us = phi %struct.rtx_def** [ %rt_rtx.us, %sw.bb2.us ], [ %rt_rtx26.us, %for.inc.us ]
  %link.0.us = load %struct.rtx_def*, %struct.rtx_def** %link.0.in.us, align 8, !dbg !2529
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0.us, metadata !2500, metadata !DIExpression()), !dbg !2511
  %tobool5.us = icmp eq %struct.rtx_def* %link.0.us, null, !dbg !2530
  br i1 %tobool5.us, label %for.end.us, label %for.body.us, !dbg !2530

for.body.us:                                      ; preds = %for.cond.us
  %arrayidx8.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0.us, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2531
  %2 = bitcast %union.rtunion_def* %arrayidx8.us to i32**, !dbg !2531
  %3 = load i32*, i32** %2, align 8, !dbg !2531
  %bf.load10.us = load i32, i32* %3, align 8, !dbg !2531
  %bf.clear11.us = and i32 %bf.load10.us, 65535, !dbg !2531
  %cmp12.us = icmp eq i32 %bf.clear11.us, 25, !dbg !2534
  br i1 %cmp12.us, label %if.then13.us, label %for.inc.us, !dbg !2535

if.then13.us:                                     ; preds = %for.body.us
  %arrayidx20.us = getelementptr inbounds i32, i32* %3, i64 2, !dbg !2536
  %rt_rtx21.us = bitcast i32* %arrayidx20.us to %struct.rtx_def**, !dbg !2536
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx21.us, align 8, !dbg !2536
  tail call void @mark_set_resources(%struct.rtx_def* %4, %struct.resources* %res, i32 1, i32 0) #7, !dbg !2537
  br label %for.inc.us, !dbg !2537

for.inc.us:                                       ; preds = %if.then13.us, %for.body.us
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0.us, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2538
  %rt_rtx26.us = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2538
  br label %for.cond.us, !dbg !2539, !llvm.loop !2540

for.end.us:                                       ; preds = %for.cond.us
  %call.us = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %x.addr.0.us, i32 30, %struct.rtx_def* null) #6, !dbg !2542
  %tobool27.us = icmp eq %struct.rtx_def* %call.us, null, !dbg !2542
  br i1 %tobool27.us, label %sw.bb32.us, label %if.then28.us, !dbg !2544

if.then28.us:                                     ; preds = %for.end.us
  store i64 -1, i64* %regs, align 8, !dbg !2545
  br label %sw.bb32.us, !dbg !2545

sw.bb32.us:                                       ; preds = %if.then28.us, %for.end.us, %restart.us, %restart.us
  %u33.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.us, i64 0, i32 1, !dbg !2546
  %6 = getelementptr inbounds %union.u, %union.u* %u33.us, i64 1, i32 0, i32 0, i64 0, !dbg !2546
  %rt_rtx36.us = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !2546
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx36.us, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !2491, metadata !DIExpression()), !dbg !2519
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !2547
  %bf.load37.us = load i32, i32* %8, align 8, !dbg !2547
  %bf.clear38.us = and i32 %bf.load37.us, 65535, !dbg !2547
  %cmp39.us = icmp eq i32 %bf.clear38.us, 24, !dbg !2549
  br i1 %cmp39.us, label %cleanup.cont.loopexit7.us-lcssa.us, label %land.lhs.true.us, !dbg !2550

land.lhs.true.us:                                 ; preds = %sw.bb32.us
  %cmp42.us = icmp eq i32 %bf.clear38.us, 25, !dbg !2551
  br i1 %cmp42.us, label %cleanup.cont.loopexit7.us-lcssa.us, label %restart.us, !dbg !2552

sw.epilog.loopexit.us-lcssa.us:                   ; preds = %restart.us
  %in_dest.tr.ph.lcssa301 = phi i32 [ %in_dest.tr.ph, %restart.us ]
  %mark_type.tr.ph.lcssa280 = phi i32 [ %mark_type.tr.ph, %restart.us ]
  %bf.load.us.lcssa = phi i32 [ %bf.load.us, %restart.us ], !dbg !2520
  %x.addr.0.us.lcssa = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.epilog.loopexit, !dbg !2520

cleanup.cont.loopexit7.us-lcssa.us:               ; preds = %land.lhs.true.us, %sw.bb32.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us, %restart.us
  br label %cleanup.cont.loopexit7, !dbg !2553

sw.bb1.us-lcssa.us:                               ; preds = %restart.us
  %tobool164.lcssa263 = phi i1 [ %tobool164, %restart.us ], !dbg !2517
  br label %sw.bb1, !dbg !2554

sw.bb45.us-lcssa.us:                              ; preds = %restart.us
  %x.addr.0.us.lcssa227 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa227, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa227, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb45, !dbg !2556

sw.bb62.us-lcssa.us:                              ; preds = %restart.us
  %x.addr.0.us.lcssa228 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa228, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa228, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb62, !dbg !2557

for.cond68.preheader.us-lcssa.us:                 ; preds = %restart.us
  %mark_type.tr.ph.lcssa283 = phi i32 [ %mark_type.tr.ph, %restart.us ]
  %x.addr.0.us.lcssa229 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa229, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa229, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %for.cond68.preheader, !dbg !2558

sw.bb104.us-lcssa.us:                             ; preds = %restart.us, %restart.us, %restart.us, %restart.us
  %x.addr.0.us.lcssa230 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ], [ %x.addr.0.us, %restart.us ], [ %x.addr.0.us, %restart.us ], [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa230, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb104, !dbg !2561

sw.bb109.us-lcssa.us:                             ; preds = %restart.us, %restart.us
  %x.addr.0.us.lcssa231 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ], [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa231, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa231, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa231, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa231, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb109, !dbg !2562

sw.bb130.us-lcssa.us:                             ; preds = %restart.us, %restart.us
  %x.addr.0.us.lcssa232 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ], [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa232, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa232, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa232, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa232, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb130, !dbg !2563

sw.bb143.us-lcssa.us:                             ; preds = %restart.us
  %x.addr.0.us.lcssa233 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa233, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa233, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb143, !dbg !2564

sw.bb163.us-lcssa.us:                             ; preds = %restart.us
  %x.addr.0.us.lcssa234 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa234, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa234, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb163, !dbg !2565

sw.bb194.us-lcssa.us:                             ; preds = %restart.us
  %tobool164.lcssa265 = phi i1 [ %tobool164, %restart.us ], !dbg !2517
  %x.addr.0.us.lcssa235 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa235, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa235, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb194, !dbg !2566

sw.bb210.us-lcssa.us:                             ; preds = %restart.us, %restart.us
  br label %sw.bb210, !dbg !2568

sw.bb212.us-lcssa.us:                             ; preds = %restart.us
  %in_dest.tr.ph.lcssa307 = phi i32 [ %in_dest.tr.ph, %restart.us ]
  %mark_type.tr.ph.lcssa286 = phi i32 [ %mark_type.tr.ph, %restart.us ]
  %bf.load.us.lcssa251 = phi i32 [ %bf.load.us, %restart.us ], !dbg !2520
  %x.addr.0.us.lcssa237 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa237, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa237, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb212, !dbg !2520

sw.bb214.us-lcssa.us:                             ; preds = %restart.us
  %in_dest.tr.ph.lcssa308 = phi i32 [ %in_dest.tr.ph, %restart.us ]
  %bf.load.us.lcssa252 = phi i32 [ %bf.load.us, %restart.us ], !dbg !2520
  %x.addr.0.us.lcssa238 = phi %struct.rtx_def* [ %x.addr.0.us, %restart.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa238, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.us.lcssa238, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb214, !dbg !2569

restart:                                          ; preds = %land.lhs.true, %tailrecurse.tailrecurse.split_crit_edge
  %bf.load = phi i32 [ %bf.load.pre, %tailrecurse.tailrecurse.split_crit_edge ], [ %bf.load37, %land.lhs.true ], !dbg !2520
  %x.addr.0 = phi %struct.rtx_def* [ %x.tr, %tailrecurse.tailrecurse.split_crit_edge ], [ %10, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.label(metadata !2510), !dbg !2521
  %trunc = trunc i32 %bf.load to i16, !dbg !2522
  switch i16 %trunc, label %sw.epilog.loopexit.us-lcssa [
    i16 13, label %cleanup.cont.loopexit7.us-lcssa
    i16 11, label %cleanup.cont.loopexit7.us-lcssa
    i16 12, label %cleanup.cont.loopexit7.us-lcssa
    i16 24, label %cleanup.cont.loopexit7.us-lcssa
    i16 30, label %cleanup.cont.loopexit7.us-lcssa
    i16 32, label %cleanup.cont.loopexit7.us-lcssa
    i16 31, label %cleanup.cont.loopexit7.us-lcssa
    i16 33, label %cleanup.cont.loopexit7.us-lcssa
    i16 44, label %cleanup.cont.loopexit7.us-lcssa
    i16 45, label %cleanup.cont.loopexit7.us-lcssa
    i16 35, label %cleanup.cont.loopexit7.us-lcssa
    i16 36, label %cleanup.cont.loopexit7.us-lcssa
    i16 46, label %sw.bb1.us-lcssa
    i16 10, label %sw.bb2
    i16 9, label %sw.bb32
    i16 8, label %sw.bb32
    i16 23, label %sw.bb45.us-lcssa
    i16 25, label %sw.bb62.us-lcssa
    i16 5, label %for.cond68.preheader.us-lcssa
    i16 77, label %sw.bb104.us-lcssa
    i16 75, label %sw.bb104.us-lcssa
    i16 76, label %sw.bb104.us-lcssa
    i16 74, label %sw.bb104.us-lcssa
    i16 78, label %sw.bb109.us-lcssa
    i16 79, label %sw.bb109.us-lcssa
    i16 119, label %sw.bb130.us-lcssa
    i16 120, label %sw.bb130.us-lcssa
    i16 43, label %sw.bb143.us-lcssa
    i16 39, label %sw.bb163.us-lcssa
    i16 37, label %sw.bb194.us-lcssa
    i16 19, label %sw.bb210.us-lcssa
    i16 16, label %sw.bb210.us-lcssa
    i16 29, label %sw.bb212.us-lcssa
    i16 17, label %sw.bb214.us-lcssa
  ], !dbg !2522

for.cond68.preheader.us-lcssa:                    ; preds = %restart
  %mark_type.tr.ph.lcssa275 = phi i32 [ %mark_type.tr.ph, %restart ]
  %x.addr.0.lcssa200 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa200, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa200, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %for.cond68.preheader, !dbg !2558

for.cond68.preheader:                             ; preds = %for.cond68.preheader.us-lcssa.us, %for.cond68.preheader.us-lcssa
  %mark_type.tr.ph293 = phi i32 [ %mark_type.tr.ph.lcssa275, %for.cond68.preheader.us-lcssa ], [ %mark_type.tr.ph.lcssa283, %for.cond68.preheader.us-lcssa.us ]
  %x.addr.0.lcssa28 = phi %struct.rtx_def* [ %x.addr.0.lcssa200, %for.cond68.preheader.us-lcssa ], [ %x.addr.0.us.lcssa229, %for.cond68.preheader.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa28, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa28, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2558
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**, !dbg !2558
  br label %for.cond68, !dbg !2570

sw.bb1.us-lcssa:                                  ; preds = %restart
  %tobool164.lcssa255 = phi i1 [ %tobool164, %restart ], !dbg !2517
  br label %sw.bb1, !dbg !2554

sw.bb1:                                           ; preds = %sw.bb1.us-lcssa.us, %sw.bb1.us-lcssa
  %tobool164271 = phi i1 [ %tobool164.lcssa263, %sw.bb1.us-lcssa.us ], [ %tobool164.lcssa255, %sw.bb1.us-lcssa ]
  br i1 %tobool164271, label %cleanup.cont, label %if.then, !dbg !2571

if.then:                                          ; preds = %sw.bb1
  store i8 1, i8* %cc4, align 1, !dbg !2572
  br label %cleanup.cont, !dbg !2573

sw.bb2:                                           ; preds = %restart
  br label %sw.bb32, !dbg !2574

sw.bb32:                                          ; preds = %sw.bb2, %restart, %restart
  %u33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, !dbg !2546
  %9 = getelementptr inbounds %union.u, %union.u* %u33, i64 1, i32 0, i32 0, i64 0, !dbg !2546
  %rt_rtx36 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2546
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx36, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2491, metadata !DIExpression()), !dbg !2519
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !2547
  %bf.load37 = load i32, i32* %11, align 8, !dbg !2547
  %bf.clear38 = and i32 %bf.load37, 65535, !dbg !2547
  %cmp39 = icmp eq i32 %bf.clear38, 24, !dbg !2549
  br i1 %cmp39, label %cleanup.cont.loopexit7.us-lcssa, label %land.lhs.true, !dbg !2550

land.lhs.true:                                    ; preds = %sw.bb32
  %cmp42 = icmp eq i32 %bf.clear38, 25, !dbg !2551
  br i1 %cmp42, label %cleanup.cont.loopexit7.us-lcssa, label %restart, !dbg !2552

sw.bb45.us-lcssa:                                 ; preds = %restart
  %x.addr.0.lcssa198 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa198, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa198, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb45, !dbg !2556

sw.bb45:                                          ; preds = %sw.bb45.us-lcssa.us, %sw.bb45.us-lcssa
  %x.addr.0.lcssa26 = phi %struct.rtx_def* [ %x.addr.0.lcssa198, %sw.bb45.us-lcssa ], [ %x.addr.0.us.lcssa227, %sw.bb45.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa26, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2556
  %rt_rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**, !dbg !2556
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx49, align 8, !dbg !2556
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2575

lor.rhs:                                          ; preds = %sw.bb45
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2576
  %14 = bitcast %union.rtunion_def* %13 to i32**, !dbg !2576
  %15 = load i32*, i32** %14, align 8, !dbg !2576
  %bf.load55 = load i32, i32* %15, align 8, !dbg !2576
  %bf.clear56 = and i32 %bf.load55, 65535, !dbg !2576
  %cmp57 = icmp ne i32 %bf.clear56, 26, !dbg !2577
  %phitmp = zext i1 %cmp57 to i32, !dbg !2575
  br label %lor.end, !dbg !2575

lor.end:                                          ; preds = %lor.rhs, %sw.bb45
  %16 = phi i32 [ 1, %sw.bb45 ], [ %phitmp, %lor.rhs ]
  tail call void @mark_set_resources(%struct.rtx_def* %12, %struct.resources* %res, i32 %16, i32 %mark_type.tr.ph) #7, !dbg !2578
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2579
  br label %tailrecurse.outer.backedge, !dbg !2580

sw.bb62.us-lcssa:                                 ; preds = %restart
  %x.addr.0.lcssa199 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa199, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa199, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb62, !dbg !2557

sw.bb62:                                          ; preds = %sw.bb62.us-lcssa.us, %sw.bb62.us-lcssa
  %x.addr.0.lcssa27 = phi %struct.rtx_def* [ %x.addr.0.lcssa199, %sw.bb62.us-lcssa ], [ %x.addr.0.us.lcssa228, %sw.bb62.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa27, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa27, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2557
  br label %tailrecurse.outer.backedge, !dbg !2581

for.cond68:                                       ; preds = %for.cond68.preheader, %for.inc102
  %indvars.iv189 = phi i64 [ 0, %for.cond68.preheader ], [ %indvars.iv.next190, %for.inc102 ], !dbg !2582
  call void @llvm.dbg.value(metadata i64 %indvars.iv189, metadata !2496, metadata !DIExpression()), !dbg !2519
  %18 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2583
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i64 0, i32 0, !dbg !2583
  %19 = load i32, i32* %num_elem, align 8, !dbg !2583
  %20 = sext i32 %19 to i64, !dbg !2584
  %cmp72 = icmp slt i64 %indvars.iv189, %20, !dbg !2584
  br i1 %cmp72, label %for.body73, label %cleanup.cont.loopexit4, !dbg !2570

for.body73:                                       ; preds = %for.cond68
  %arrayidx78 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i64 0, i32 1, i64 0, !dbg !2585
  %21 = bitcast %struct.rtx_def** %arrayidx78 to i32**, !dbg !2585
  %22 = load i32*, i32** %21, align 8, !dbg !2585
  %bf.load79 = load i32, i32* %22, align 8, !dbg !2585
  %bf.clear80 = and i32 %bf.load79, 67108864, !dbg !2585
  %tobool81 = icmp eq i32 %bf.clear80, 0, !dbg !2585
  br i1 %tobool81, label %for.body73.if.then93_crit_edge, label %land.lhs.true82, !dbg !2587

for.body73.if.then93_crit_edge:                   ; preds = %for.body73
  %arrayidx100.phi.trans.insert = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i64 0, i32 1, i64 %indvars.iv189, !dbg !2588
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %arrayidx100.phi.trans.insert, align 8, !dbg !2589
  br label %if.then93, !dbg !2587

land.lhs.true82:                                  ; preds = %for.body73
  %arrayidx88 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i64 0, i32 1, i64 %indvars.iv189, !dbg !2590
  %23 = bitcast %struct.rtx_def** %arrayidx88 to i32**, !dbg !2590
  %24 = load i32*, i32** %23, align 8, !dbg !2590
  %bf.load89 = load i32, i32* %24, align 8, !dbg !2590
  %bf.clear91 = and i32 %bf.load89, 268435456, !dbg !2590
  %tobool92 = icmp eq i32 %bf.clear91, 0, !dbg !2590
  %25 = bitcast i32* %24 to %struct.rtx_def*, !dbg !2591
  br i1 %tobool92, label %if.then93, label %for.inc102, !dbg !2591

if.then93:                                        ; preds = %for.body73.if.then93_crit_edge, %land.lhs.true82
  %26 = phi %struct.rtx_def* [ %.pre, %for.body73.if.then93_crit_edge ], [ %25, %land.lhs.true82 ], !dbg !2589
  tail call void @mark_set_resources(%struct.rtx_def* %26, %struct.resources* %res, i32 0, i32 %mark_type.tr.ph293) #7, !dbg !2592
  br label %for.inc102, !dbg !2592

for.inc102:                                       ; preds = %land.lhs.true82, %if.then93
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1, !dbg !2593
  call void @llvm.dbg.value(metadata i32 undef, metadata !2496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond68, !dbg !2594, !llvm.loop !2595

sw.bb104.us-lcssa:                                ; preds = %restart, %restart, %restart, %restart
  %x.addr.0.lcssa201 = phi %struct.rtx_def* [ %x.addr.0, %restart ], [ %x.addr.0, %restart ], [ %x.addr.0, %restart ], [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa201, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb104, !dbg !2561

sw.bb104:                                         ; preds = %sw.bb104.us-lcssa.us, %sw.bb104.us-lcssa
  %x.addr.0.lcssa29 = phi %struct.rtx_def* [ %x.addr.0.lcssa201, %sw.bb104.us-lcssa ], [ %x.addr.0.us.lcssa230, %sw.bb104.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa29, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa29, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa29, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa29, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa29, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2561
  br label %tailrecurse.outer.backedge, !dbg !2597

sw.bb109.us-lcssa:                                ; preds = %restart, %restart
  %x.addr.0.lcssa202 = phi %struct.rtx_def* [ %x.addr.0, %restart ], [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa202, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa202, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa202, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa202, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb109, !dbg !2562

sw.bb109:                                         ; preds = %sw.bb109.us-lcssa.us, %sw.bb109.us-lcssa
  %x.addr.0.lcssa30 = phi %struct.rtx_def* [ %x.addr.0.lcssa202, %sw.bb109.us-lcssa ], [ %x.addr.0.us.lcssa231, %sw.bb109.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa30, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa30, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa30, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2562
  %rt_rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**, !dbg !2562
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx113, align 8, !dbg !2562
  tail call void @mark_set_resources(%struct.rtx_def* %27, %struct.resources* %res, i32 1, i32 0) #7, !dbg !2598
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa30, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2599
  %rt_rtx117 = bitcast %union.rtunion_def* %28 to %struct.rtx_def**, !dbg !2599
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx117, align 8, !dbg !2599
  %arrayidx120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2599
  %rt_rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**, !dbg !2599
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx121, align 8, !dbg !2599
  tail call void @mark_set_resources(%struct.rtx_def* %30, %struct.resources* %res, i32 0, i32 0) #7, !dbg !2600
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx117, align 8, !dbg !2601
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2601
  br label %tailrecurse.outer.backedge, !dbg !2602

sw.bb130.us-lcssa:                                ; preds = %restart, %restart
  %x.addr.0.lcssa203 = phi %struct.rtx_def* [ %x.addr.0, %restart ], [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa203, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa203, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa203, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa203, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb130, !dbg !2563

sw.bb130:                                         ; preds = %sw.bb130.us-lcssa.us, %sw.bb130.us-lcssa
  %x.addr.0.lcssa31 = phi %struct.rtx_def* [ %x.addr.0.lcssa203, %sw.bb130.us-lcssa ], [ %x.addr.0.us.lcssa232, %sw.bb130.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa31, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa31, metadata !2491, metadata !DIExpression()), !dbg !2519
  %arrayidx133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa31, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2563
  %rt_rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**, !dbg !2563
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx134, align 8, !dbg !2563
  tail call void @mark_set_resources(%struct.rtx_def* %33, %struct.resources* %res, i32 %in_dest.tr.ph, i32 0) #7, !dbg !2603
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa31, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2604
  %rt_rtx138 = bitcast %union.rtunion_def* %34 to %struct.rtx_def**, !dbg !2604
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx138, align 8, !dbg !2604
  tail call void @mark_set_resources(%struct.rtx_def* %35, %struct.resources* %res, i32 0, i32 0) #7, !dbg !2605
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa31, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2606
  br label %tailrecurse.outer.backedge, !dbg !2607

sw.bb143.us-lcssa:                                ; preds = %restart
  %x.addr.0.lcssa204 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa204, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa204, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb143, !dbg !2564

sw.bb143:                                         ; preds = %sw.bb143.us-lcssa.us, %sw.bb143.us-lcssa
  %x.addr.0.lcssa32 = phi %struct.rtx_def* [ %x.addr.0.lcssa204, %sw.bb143.us-lcssa ], [ %x.addr.0.us.lcssa233, %sw.bb143.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa32, metadata !2491, metadata !DIExpression()), !dbg !2519
  br i1 %tobool164, label %if.end158, label %if.then145, !dbg !2608

if.then145:                                       ; preds = %sw.bb143
  store i8 1, i8* %memory, align 8, !dbg !2609
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa32, i64 0, i32 0, !dbg !2610
  %bf.load147 = load i32, i32* %37, align 8, !dbg !2610
  %bf.lshr148 = lshr i32 %bf.load147, 26, !dbg !2610
  %38 = load i8, i8* %unch_memory, align 1, !dbg !2611
  %39 = trunc i32 %bf.lshr148 to i8, !dbg !2611
  %40 = and i8 %39, 1, !dbg !2611
  %conv151 = or i8 %38, %40, !dbg !2611
  store i8 %conv151, i8* %unch_memory, align 1, !dbg !2611
  %bf.load152 = load i32, i32* %37, align 8, !dbg !2612
  %bf.lshr153 = lshr i32 %bf.load152, 27, !dbg !2612
  %41 = load i8, i8* %volatil, align 2, !dbg !2613
  %42 = trunc i32 %bf.lshr153 to i8, !dbg !2613
  %43 = and i8 %42, 1, !dbg !2613
  %conv157 = or i8 %41, %43, !dbg !2613
  store i8 %conv157, i8* %volatil, align 2, !dbg !2613
  br label %if.end158, !dbg !2614

if.end158:                                        ; preds = %sw.bb143, %if.then145
  %arrayidx161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa32, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2615
  br label %tailrecurse.outer.backedge, !dbg !2616

tailrecurse.outer.backedge:                       ; preds = %if.end158, %sw.bb130, %sw.bb109, %sw.bb104, %sw.bb62, %lor.end
  %x.tr.ph.be.in.in = phi %union.rtunion_def* [ %17, %lor.end ], [ %arrayidx65, %sw.bb62 ], [ %arrayidx107, %sw.bb104 ], [ %32, %sw.bb109 ], [ %36, %sw.bb130 ], [ %arrayidx161, %if.end158 ]
  %in_dest.tr.ph.be = phi i32 [ 0, %lor.end ], [ 1, %sw.bb62 ], [ 1, %sw.bb104 ], [ 0, %sw.bb109 ], [ 0, %sw.bb130 ], [ 0, %if.end158 ]
  %x.tr.ph.be.in = bitcast %union.rtunion_def* %x.tr.ph.be.in.in to %struct.rtx_def**, !dbg !2617
  %x.tr.ph.be = load %struct.rtx_def*, %struct.rtx_def** %x.tr.ph.be.in, align 8, !dbg !2617
  br label %tailrecurse.outer, !dbg !2518

sw.bb163.us-lcssa:                                ; preds = %restart
  %x.addr.0.lcssa205 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa205, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa205, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb163, !dbg !2565

sw.bb163:                                         ; preds = %sw.bb163.us-lcssa.us, %sw.bb163.us-lcssa
  %x.addr.0.lcssa33 = phi %struct.rtx_def* [ %x.addr.0.lcssa205, %sw.bb163.us-lcssa ], [ %x.addr.0.us.lcssa234, %sw.bb163.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa33, metadata !2491, metadata !DIExpression()), !dbg !2519
  br i1 %tobool164, label %cleanup.cont.loopexit8, label %if.then165, !dbg !2618

if.then165:                                       ; preds = %sw.bb163
  %arrayidx168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa33, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2619
  %44 = bitcast %union.rtunion_def* %arrayidx168 to i32**, !dbg !2619
  %45 = load i32*, i32** %44, align 8, !dbg !2619
  %bf.load170 = load i32, i32* %45, align 8, !dbg !2619
  %bf.clear171 = and i32 %bf.load170, 65535, !dbg !2619
  %cmp172 = icmp eq i32 %bf.clear171, 37, !dbg !2619
  br i1 %cmp172, label %if.else, label %if.then174, !dbg !2620

if.then174:                                       ; preds = %if.then165
  %46 = bitcast i32* %45 to %struct.rtx_def*, !dbg !2620
  br label %tailrecurse, !dbg !2515

if.else:                                          ; preds = %if.then165
  %x.addr.0.lcssa33.lcssa253 = phi %struct.rtx_def* [ %x.addr.0.lcssa33, %if.then165 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa33.lcssa253, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa33.lcssa253, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa33.lcssa253, metadata !2491, metadata !DIExpression()), !dbg !2519
  %call179 = tail call i32 @subreg_regno(%struct.rtx_def* %x.addr.0.lcssa33.lcssa253) #6, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %call179, metadata !2504, metadata !DIExpression()), !dbg !2622
  %call180 = tail call i32 @subreg_nregs(%struct.rtx_def* %x.addr.0.lcssa33.lcssa253) #6, !dbg !2623
  %add = add i32 %call179, %call180, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %add, metadata !2509, metadata !DIExpression()), !dbg !2622
  %cmp181 = icmp ult i32 %add, 54, !dbg !2625
  br i1 %cmp181, label %cond.end, label %cond.true, !dbg !2625

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 758, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2625
  br label %cond.end, !dbg !2625

cond.end:                                         ; preds = %if.else, %cond.true
  call void @llvm.dbg.value(metadata i32 %call179, metadata !2498, metadata !DIExpression()), !dbg !2519
  %47 = zext i32 %call179 to i64, !dbg !2626
  %48 = zext i32 %add to i64, !dbg !2626
  br label %for.cond183, !dbg !2626

for.cond183:                                      ; preds = %for.body186, %cond.end
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.body186 ], [ %47, %cond.end ], !dbg !2628
  call void @llvm.dbg.value(metadata i64 %indvars.iv191, metadata !2498, metadata !DIExpression()), !dbg !2519
  %cmp184 = icmp ult i64 %indvars.iv191, %48, !dbg !2629
  br i1 %cmp184, label %for.body186, label %cleanup.cont.loopexit5, !dbg !2631

for.body186:                                      ; preds = %for.cond183
  %shl = shl i64 1, %indvars.iv191, !dbg !2632
  %49 = load i64, i64* %regs, align 8, !dbg !2632
  %or188 = or i64 %49, %shl, !dbg !2632
  store i64 %or188, i64* %regs, align 8, !dbg !2632
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1, !dbg !2633
  br label %for.cond183, !dbg !2634, !llvm.loop !2635

sw.bb194.us-lcssa:                                ; preds = %restart
  %tobool164.lcssa257 = phi i1 [ %tobool164, %restart ], !dbg !2517
  %x.addr.0.lcssa206 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa206, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa206, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb194, !dbg !2566

sw.bb194:                                         ; preds = %sw.bb194.us-lcssa.us, %sw.bb194.us-lcssa
  %tobool164272 = phi i1 [ %tobool164.lcssa257, %sw.bb194.us-lcssa ], [ %tobool164.lcssa265, %sw.bb194.us-lcssa.us ]
  %x.addr.0.lcssa34 = phi %struct.rtx_def* [ %x.addr.0.lcssa206, %sw.bb194.us-lcssa ], [ %x.addr.0.us.lcssa235, %sw.bb194.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa34, metadata !2491, metadata !DIExpression()), !dbg !2519
  br i1 %tobool164272, label %cleanup.cont, label %if.then196, !dbg !2637

if.then196:                                       ; preds = %sw.bb194
  %call197 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.0.lcssa34) #7, !dbg !2638
  %cmp198 = icmp ult i32 %call197, 53, !dbg !2638
  br i1 %cmp198, label %cond.end202, label %cond.true200, !dbg !2638

cond.true200:                                     ; preds = %if.then196
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 768, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2638
  br label %cond.end202, !dbg !2638

cond.end202:                                      ; preds = %if.then196, %cond.true200
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa34, i64 0, i32 0, !dbg !2640
  %bf.load205 = load i32, i32* %50, align 8, !dbg !2640
  %bf.lshr206 = lshr i32 %bf.load205, 16, !dbg !2640
  %bf.clear207 = and i32 %bf.lshr206, 255, !dbg !2640
  %call208 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.addr.0.lcssa34) #7, !dbg !2641
  tail call fastcc void @add_to_hard_reg_set(i64* nonnull %regs, i32 %bf.clear207, i32 %call208) #7, !dbg !2642
  br label %cleanup.cont, !dbg !2643

sw.bb210.us-lcssa:                                ; preds = %restart, %restart
  br label %sw.bb210, !dbg !2568

sw.bb210:                                         ; preds = %sw.bb210.us-lcssa.us, %sw.bb210.us-lcssa
  store i8 1, i8* %volatil, align 2, !dbg !2644
  br label %cleanup.cont, !dbg !2645

sw.bb212.us-lcssa:                                ; preds = %restart
  %in_dest.tr.ph.lcssa299 = phi i32 [ %in_dest.tr.ph, %restart ]
  %mark_type.tr.ph.lcssa278 = phi i32 [ %mark_type.tr.ph, %restart ]
  %bf.load.lcssa223 = phi i32 [ %bf.load, %restart ], !dbg !2520
  %x.addr.0.lcssa208 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa208, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa208, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb212, !dbg !2520

sw.bb212:                                         ; preds = %sw.bb212.us-lcssa.us, %sw.bb212.us-lcssa
  %in_dest.tr.ph312 = phi i32 [ %in_dest.tr.ph.lcssa299, %sw.bb212.us-lcssa ], [ %in_dest.tr.ph.lcssa307, %sw.bb212.us-lcssa.us ]
  %mark_type.tr.ph291 = phi i32 [ %mark_type.tr.ph.lcssa278, %sw.bb212.us-lcssa ], [ %mark_type.tr.ph.lcssa286, %sw.bb212.us-lcssa.us ]
  %bf.load.lcssa = phi i32 [ %bf.load.lcssa223, %sw.bb212.us-lcssa ], [ %bf.load.us.lcssa251, %sw.bb212.us-lcssa.us ]
  %x.addr.0.lcssa36 = phi %struct.rtx_def* [ %x.addr.0.lcssa208, %sw.bb212.us-lcssa ], [ %x.addr.0.us.lcssa237, %sw.bb212.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa36, metadata !2491, metadata !DIExpression()), !dbg !2519
  store i8 1, i8* %volatil, align 2, !dbg !2646
  br label %sw.epilog, !dbg !2647

sw.bb214.us-lcssa:                                ; preds = %restart
  %in_dest.tr.ph.lcssa300 = phi i32 [ %in_dest.tr.ph, %restart ]
  %bf.load.lcssa224 = phi i32 [ %bf.load, %restart ], !dbg !2520
  %x.addr.0.lcssa209 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa209, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa209, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.bb214, !dbg !2569

sw.bb214:                                         ; preds = %sw.bb214.us-lcssa.us, %sw.bb214.us-lcssa
  %in_dest.tr.ph314 = phi i32 [ %in_dest.tr.ph.lcssa300, %sw.bb214.us-lcssa ], [ %in_dest.tr.ph.lcssa308, %sw.bb214.us-lcssa.us ]
  %bf.load215 = phi i32 [ %bf.load.lcssa224, %sw.bb214.us-lcssa ], [ %bf.load.us.lcssa252, %sw.bb214.us-lcssa.us ], !dbg !2569
  %x.addr.0.lcssa37 = phi %struct.rtx_def* [ %x.addr.0.lcssa209, %sw.bb214.us-lcssa ], [ %x.addr.0.us.lcssa238, %sw.bb214.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa37, metadata !2491, metadata !DIExpression()), !dbg !2519
  %bf.lshr216 = lshr i32 %bf.load215, 27, !dbg !2569
  %51 = load i8, i8* %volatil, align 2, !dbg !2648
  %52 = trunc i32 %bf.lshr216 to i8, !dbg !2648
  %53 = and i8 %52, 1, !dbg !2648
  %conv221 = or i8 %51, %53, !dbg !2648
  store i8 %conv221, i8* %volatil, align 2, !dbg !2648
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2519
  %arrayidx225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0.lcssa37, i64 0, i32 1, i32 0, i32 1, !dbg !2649
  %rt_rtvec226 = bitcast %struct.object_block** %arrayidx225 to %struct.rtvec_def**, !dbg !2649
  br label %for.cond222, !dbg !2652

for.cond222:                                      ; preds = %for.body230, %sw.bb214
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %for.body230 ], [ 0, %sw.bb214 ], !dbg !2653
  call void @llvm.dbg.value(metadata i64 %indvars.iv193, metadata !2496, metadata !DIExpression()), !dbg !2519
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec226, align 8, !dbg !2654
  %num_elem227 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i64 0, i32 0, !dbg !2654
  %55 = load i32, i32* %num_elem227, align 8, !dbg !2654
  %56 = sext i32 %55 to i64, !dbg !2655
  %cmp228 = icmp slt i64 %indvars.iv193, %56, !dbg !2655
  br i1 %cmp228, label %for.body230, label %cleanup.cont.loopexit6, !dbg !2656

for.body230:                                      ; preds = %for.cond222
  %arrayidx237 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i64 0, i32 1, i64 %indvars.iv193, !dbg !2657
  %57 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx237, align 8, !dbg !2657
  tail call void @mark_set_resources(%struct.rtx_def* %57, %struct.resources* %res, i32 %in_dest.tr.ph314, i32 0) #7, !dbg !2658
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i32 undef, metadata !2496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond222, !dbg !2660, !llvm.loop !2661

sw.epilog.loopexit.us-lcssa:                      ; preds = %restart
  %in_dest.tr.ph.lcssa = phi i32 [ %in_dest.tr.ph, %restart ]
  %mark_type.tr.ph.lcssa = phi i32 [ %mark_type.tr.ph, %restart ]
  %bf.load.lcssa210 = phi i32 [ %bf.load, %restart ], !dbg !2520
  %x.addr.0.lcssa195 = phi %struct.rtx_def* [ %x.addr.0, %restart ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa195, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa195, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.epilog.loopexit, !dbg !2520

sw.epilog.loopexit:                               ; preds = %sw.epilog.loopexit.us-lcssa.us, %sw.epilog.loopexit.us-lcssa
  %in_dest.tr.ph313 = phi i32 [ %in_dest.tr.ph.lcssa, %sw.epilog.loopexit.us-lcssa ], [ %in_dest.tr.ph.lcssa301, %sw.epilog.loopexit.us-lcssa.us ]
  %mark_type.tr.ph292 = phi i32 [ %mark_type.tr.ph.lcssa, %sw.epilog.loopexit.us-lcssa ], [ %mark_type.tr.ph.lcssa280, %sw.epilog.loopexit.us-lcssa.us ]
  %bf.load.lcssa62 = phi i32 [ %bf.load.lcssa210, %sw.epilog.loopexit.us-lcssa ], [ %bf.load.us.lcssa, %sw.epilog.loopexit.us-lcssa.us ]
  %x.addr.0.lcssa = phi %struct.rtx_def* [ %x.addr.0.lcssa195, %sw.epilog.loopexit.us-lcssa ], [ %x.addr.0.us.lcssa, %sw.epilog.loopexit.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2519
  br label %sw.epilog, !dbg !2663

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb212
  %in_dest.tr.ph311 = phi i32 [ %in_dest.tr.ph313, %sw.epilog.loopexit ], [ %in_dest.tr.ph312, %sw.bb212 ]
  %mark_type.tr.ph290 = phi i32 [ %mark_type.tr.ph292, %sw.epilog.loopexit ], [ %mark_type.tr.ph291, %sw.bb212 ]
  %x.addr.039 = phi %struct.rtx_def* [ %x.addr.0.lcssa, %sw.epilog.loopexit ], [ %x.addr.0.lcssa36, %sw.bb212 ]
  %bf.clear23.in = phi i32 [ %bf.load.lcssa62, %sw.epilog.loopexit ], [ %bf.load.lcssa, %sw.bb212 ]
  %bf.clear23 = and i32 %bf.clear23.in, 65535, !dbg !2520
  %idxprom241 = zext i32 %bf.clear23 to i64, !dbg !2663
  %arrayidx242 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom241, !dbg !2663
  %58 = load i8*, i8** %arrayidx242, align 8, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %58, metadata !2499, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2519
  %arrayidx245 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom241, !dbg !2664
  %59 = load i8, i8* %arrayidx245, align 1, !dbg !2664
  %u259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.039, i64 0, i32 1, !dbg !2667
  %fld260 = bitcast %union.u* %u259 to [1 x %union.rtunion_def]*, !dbg !2667
  %wide.trip.count = zext i8 %59 to i64, !dbg !2671
  br label %for.cond243, !dbg !2672

for.cond243:                                      ; preds = %for.inc280, %sw.epilog
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %for.inc280 ], [ 0, %sw.epilog ], !dbg !2673
  %format_ptr.0 = phi i8* [ %incdec.ptr, %for.inc280 ], [ %58, %sw.epilog ], !dbg !2519
  call void @llvm.dbg.value(metadata i8* %format_ptr.0, metadata !2499, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %indvars.iv187, metadata !2496, metadata !DIExpression()), !dbg !2519
  %exitcond = icmp eq i64 %indvars.iv187, %wide.trip.count, !dbg !2671
  br i1 %exitcond, label %cleanup.cont.loopexit, label %for.body249, !dbg !2674

for.body249:                                      ; preds = %for.cond243
  %incdec.ptr = getelementptr inbounds i8, i8* %format_ptr.0, i64 1, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2499, metadata !DIExpression()), !dbg !2519
  %60 = load i8, i8* %format_ptr.0, align 1, !dbg !2676
  %conv250 = sext i8 %60 to i32, !dbg !2676
  switch i32 %conv250, label %for.inc280 [
    i32 101, label %sw.bb251
    i32 69, label %for.cond258.preheader
  ], !dbg !2677

for.cond258.preheader:                            ; preds = %for.body249
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i64 0, i64 %indvars.iv187, !dbg !2667
  %rt_rtvec263 = bitcast %union.rtunion_def* %arrayidx262 to %struct.rtvec_def**, !dbg !2667
  br label %for.cond258, !dbg !2678

sw.bb251:                                         ; preds = %for.body249
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i64 0, i64 %indvars.iv187, !dbg !2679
  %rt_rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**, !dbg !2679
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx256, align 8, !dbg !2679
  tail call void @mark_set_resources(%struct.rtx_def* %61, %struct.resources* %res, i32 %in_dest.tr.ph311, i32 %mark_type.tr.ph290) #7, !dbg !2680
  br label %for.inc280, !dbg !2681

for.cond258:                                      ; preds = %for.cond258.preheader, %for.body267
  %indvars.iv = phi i64 [ 0, %for.cond258.preheader ], [ %indvars.iv.next, %for.body267 ], !dbg !2682
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2497, metadata !DIExpression()), !dbg !2519
  %62 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec263, align 8, !dbg !2683
  %num_elem264 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %62, i64 0, i32 0, !dbg !2683
  %63 = load i32, i32* %num_elem264, align 8, !dbg !2683
  %64 = sext i32 %63 to i64, !dbg !2684
  %cmp265 = icmp slt i64 %indvars.iv, %64, !dbg !2684
  br i1 %cmp265, label %for.body267, label %for.inc280.loopexit, !dbg !2678

for.body267:                                      ; preds = %for.cond258
  %arrayidx275 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %62, i64 0, i32 1, i64 %indvars.iv, !dbg !2685
  %65 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx275, align 8, !dbg !2685
  tail call void @mark_set_resources(%struct.rtx_def* %65, %struct.resources* %res, i32 %in_dest.tr.ph311, i32 %mark_type.tr.ph290) #7, !dbg !2686
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32 undef, metadata !2497, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond258, !dbg !2688, !llvm.loop !2689

for.inc280.loopexit:                              ; preds = %for.cond258
  br label %for.inc280, !dbg !2691

for.inc280:                                       ; preds = %for.inc280.loopexit, %sw.bb251, %for.body249
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i32 undef, metadata !2496, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2519
  br label %for.cond243, !dbg !2692, !llvm.loop !2693

cleanup.cont.loopexit:                            ; preds = %for.cond243
  br label %cleanup.cont, !dbg !2553

cleanup.cont.loopexit4:                           ; preds = %for.cond68
  br label %cleanup.cont, !dbg !2553

cleanup.cont.loopexit5:                           ; preds = %for.cond183
  br label %cleanup.cont, !dbg !2553

cleanup.cont.loopexit6:                           ; preds = %for.cond222
  br label %cleanup.cont, !dbg !2553

cleanup.cont.loopexit7.us-lcssa:                  ; preds = %land.lhs.true, %sw.bb32, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart, %restart
  br label %cleanup.cont.loopexit7, !dbg !2553

cleanup.cont.loopexit7:                           ; preds = %cleanup.cont.loopexit7.us-lcssa.us, %cleanup.cont.loopexit7.us-lcssa
  br label %cleanup.cont, !dbg !2553

cleanup.cont.loopexit8:                           ; preds = %sw.bb163
  br label %cleanup.cont, !dbg !2553

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit8, %cleanup.cont.loopexit7, %cleanup.cont.loopexit6, %cleanup.cont.loopexit5, %cleanup.cont.loopexit4, %cleanup.cont.loopexit, %sw.bb1, %sw.bb194, %sw.bb210, %if.then, %cond.end202
  ret void, !dbg !2553
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @mark_target_live_regs(%struct.rtx_def* %insns, %struct.rtx_def* %target, %struct.resources* %res) local_unnamed_addr #5 !dbg !2695 {
entry:
  %jump_target = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.resources, align 8
  %needed = alloca %struct.resources, align 8
  %extra_live = alloca i64, align 8
  %new_resources = alloca %struct.resources, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insns, metadata !2699, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !2700, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.resources* %res, metadata !2701, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 -1, metadata !2702, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.target_info* null, metadata !2704, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2706, metadata !DIExpression()), !dbg !2734
  %0 = bitcast %struct.rtx_def** %jump_target to i8*, !dbg !2735
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2735
  %1 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 0, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2736
  %2 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 0, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2736
  %cmp = icmp eq %struct.rtx_def* %target, null, !dbg !2737
  br i1 %cmp, label %if.then, label %if.else, !dbg !2739

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !2740
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 0), i64 16, i1 false), !dbg !2740
  br label %cleanup487, !dbg !2742

if.else:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @return_insn_p(%struct.rtx_def* nonnull %target) #7, !dbg !2743
  %tobool = icmp eq i8 %call, 0, !dbg !2743
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2745

if.then1:                                         ; preds = %if.else
  %4 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !2746
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 0), i64 16, i1 false), !dbg !2746
  tail call void @mark_referenced_resources(%struct.rtx_def* nonnull %target, %struct.resources* %res, i8 zeroext 0) #7, !dbg !2748
  br label %cleanup487, !dbg !2749

if.end2:                                          ; preds = %if.else
  %memory = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !2750
  store i8 1, i8* %memory, align 8, !dbg !2751
  %unch_memory = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 1, !dbg !2752
  store i8 0, i8* %unch_memory, align 1, !dbg !2753
  %volatil = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 2, !dbg !2754
  store i8 0, i8* %volatil, align 2, !dbg !2755
  %cc = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 3, !dbg !2756
  store i8 0, i8* %cc, align 1, !dbg !2757
  %5 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !2758
  %cmp3 = icmp eq %struct.target_info** %5, null, !dbg !2760
  br i1 %cmp3, label %if.end27, label %if.then4, !dbg !2761

if.then4:                                         ; preds = %if.end2
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2762
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2762
  %6 = load i32, i32* %rt_int, align 8, !dbg !2762
  %rem = srem i32 %6, 257, !dbg !2765
  %idxprom = sext i32 %rem to i64, !dbg !2766
  %arrayidx5 = getelementptr inbounds %struct.target_info*, %struct.target_info** %5, i64 %idxprom, !dbg !2766
  br label %for.cond, !dbg !2767

for.cond:                                         ; preds = %for.inc, %if.then4
  %tinfo.0.in = phi %struct.target_info** [ %arrayidx5, %if.then4 ], [ %next, %for.inc ]
  %tinfo.0 = load %struct.target_info*, %struct.target_info** %tinfo.0.in, align 8, !dbg !2768
  call void @llvm.dbg.value(metadata %struct.target_info* %tinfo.0, metadata !2704, metadata !DIExpression()), !dbg !2734
  %cond1 = icmp eq %struct.target_info* %tinfo.0, null, !dbg !2769
  br i1 %cond1, label %if.end27.loopexit, label %for.body, !dbg !2769

for.body:                                         ; preds = %for.cond
  %uid = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0, i64 0, i32 0, !dbg !2770
  %7 = load i32, i32* %uid, align 8, !dbg !2770
  %cmp11 = icmp eq i32 %7, %6, !dbg !2773
  br i1 %cmp11, label %for.end, label %for.inc, !dbg !2774

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0, i64 0, i32 1, !dbg !2775
  br label %for.cond, !dbg !2776, !llvm.loop !2777

for.end:                                          ; preds = %for.body
  %tinfo.0.lcssa8 = phi %struct.target_info* [ %tinfo.0, %for.body ], !dbg !2768
  %block = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0.lcssa8, i64 0, i32 3, !dbg !2779
  %8 = load i32, i32* %block, align 8, !dbg !2779
  %cmp15 = icmp eq i32 %8, -1, !dbg !2781
  br i1 %cmp15, label %if.end27, label %land.lhs.true16, !dbg !2782

land.lhs.true16:                                  ; preds = %for.end
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2783
  %cfg = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2783
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2783
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2783
  %11 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2783
  %tobool17 = icmp eq %struct.VEC_basic_block_gc* %11, null, !dbg !2783
  br i1 %tobool17, label %cond.end, label %cond.true, !dbg !2783

cond.true:                                        ; preds = %land.lhs.true16
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %11, i64 0, i32 0, !dbg !2783
  br label %cond.end, !dbg !2783

cond.end:                                         ; preds = %land.lhs.true16, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %land.lhs.true16 ], !dbg !2783
  %call22 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %8) #7, !dbg !2783
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call22, i64 0, i32 7, !dbg !2783
  %12 = bitcast %union.basic_block_il_dependent* %il to i32***, !dbg !2783
  %13 = load i32**, i32*** %12, align 8, !dbg !2783
  %14 = load i32*, i32** %13, align 8, !dbg !2783
  %bf.load = load i32, i32* %14, align 8, !dbg !2783
  %bf.clear = and i32 %bf.load, 134217728, !dbg !2783
  %tobool23 = icmp eq i32 %bf.clear, 0, !dbg !2783
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !2784

if.then24:                                        ; preds = %cond.end
  %15 = load i32, i32* %block, align 8, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %15, metadata !2702, metadata !DIExpression()), !dbg !2734
  br label %if.end27, !dbg !2786

if.end27.loopexit:                                ; preds = %for.cond
  br label %if.end27, !dbg !2787

if.end27:                                         ; preds = %if.end27.loopexit, %cond.end, %for.end, %if.end2, %if.then24
  %tinfo.1 = phi %struct.target_info* [ null, %if.end2 ], [ %tinfo.0.lcssa8, %if.then24 ], [ %tinfo.0.lcssa8, %cond.end ], [ %tinfo.0.lcssa8, %for.end ], [ null, %if.end27.loopexit ], !dbg !2734
  %b.1 = phi i32 [ -1, %if.end2 ], [ %15, %if.then24 ], [ -1, %cond.end ], [ -1, %for.end ], [ -1, %if.end27.loopexit ], !dbg !2789
  call void @llvm.dbg.value(metadata i32 %b.1, metadata !2702, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.target_info* %tinfo.1, metadata !2704, metadata !DIExpression()), !dbg !2734
  %cmp28 = icmp eq i32 %b.1, -1, !dbg !2787
  br i1 %cmp28, label %if.then29, label %if.end32, !dbg !2790

if.then29:                                        ; preds = %if.end27
  %16 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2791
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %16, i64 13, i32 1, !dbg !2791
  %17 = load i32, i32* %value, align 8, !dbg !2791
  %call31 = tail call fastcc i32 @find_basic_block(%struct.rtx_def* nonnull %target, i32 %17) #7, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %call31, metadata !2702, metadata !DIExpression()), !dbg !2734
  br label %if.end32, !dbg !2793

if.end32:                                         ; preds = %if.then29, %if.end27
  %b.2 = phi i32 [ %call31, %if.then29 ], [ %b.1, %if.end27 ], !dbg !2734
  call void @llvm.dbg.value(metadata i32 %b.2, metadata !2702, metadata !DIExpression()), !dbg !2734
  %18 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !2794
  %cmp33 = icmp eq %struct.target_info** %18, null, !dbg !2796
  br i1 %cmp33, label %if.end71, label %if.then34, !dbg !2797

if.then34:                                        ; preds = %if.end32
  %tobool35 = icmp eq %struct.target_info* %tinfo.1, null, !dbg !2798
  br i1 %tobool35, label %if.else47, label %if.then36, !dbg !2801

if.then36:                                        ; preds = %if.then34
  %block37 = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.1, i64 0, i32 3, !dbg !2802
  %19 = load i32, i32* %block37, align 8, !dbg !2802
  %cmp38 = icmp eq i32 %b.2, %19, !dbg !2805
  %cmp40 = icmp ne i32 %b.2, -1, !dbg !2806
  %or.cond = and i1 %cmp38, %cmp40, !dbg !2807
  br i1 %or.cond, label %land.lhs.true41, label %if.end71, !dbg !2807

land.lhs.true41:                                  ; preds = %if.then36
  %bb_tick = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.1, i64 0, i32 4, !dbg !2808
  %20 = load i32, i32* %bb_tick, align 4, !dbg !2808
  %21 = load i32*, i32** @bb_ticks, align 8, !dbg !2809
  %idxprom42 = sext i32 %b.2 to i64, !dbg !2809
  %arrayidx43 = getelementptr inbounds i32, i32* %21, i64 %idxprom42, !dbg !2809
  %22 = load i32, i32* %arrayidx43, align 4, !dbg !2809
  %cmp44 = icmp eq i32 %20, %22, !dbg !2810
  br i1 %cmp44, label %if.then45, label %if.end71, !dbg !2811

if.then45:                                        ; preds = %land.lhs.true41
  %live_regs = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.1, i64 0, i32 2, !dbg !2812
  %23 = load i64, i64* %live_regs, align 8, !dbg !2812
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !2812
  store i64 %23, i64* %regs, align 8, !dbg !2812
  br label %cleanup487, !dbg !2814

if.else47:                                        ; preds = %if.then34
  %call48 = tail call i8* @xmalloc(i64 32) #6, !dbg !2815
  %24 = bitcast i8* %call48 to %struct.target_info*, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.target_info* %24, metadata !2704, metadata !DIExpression()), !dbg !2734
  %arrayidx51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2817
  %rt_int52 = bitcast %union.rtunion_def* %arrayidx51 to i32*, !dbg !2817
  %25 = load i32, i32* %rt_int52, align 8, !dbg !2817
  %uid53 = bitcast i8* %call48 to i32*, !dbg !2818
  store i32 %25, i32* %uid53, align 8, !dbg !2819
  %block54 = getelementptr inbounds i8, i8* %call48, i64 24, !dbg !2820
  %26 = bitcast i8* %block54 to i32*, !dbg !2820
  store i32 %b.2, i32* %26, align 8, !dbg !2821
  %27 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !2822
  %28 = load i32, i32* %rt_int52, align 8, !dbg !2823
  %rem59 = srem i32 %28, 257, !dbg !2824
  %idxprom60 = sext i32 %rem59 to i64, !dbg !2822
  %arrayidx61 = getelementptr inbounds %struct.target_info*, %struct.target_info** %27, i64 %idxprom60, !dbg !2822
  %29 = bitcast %struct.target_info** %arrayidx61 to i64*, !dbg !2822
  %30 = load i64, i64* %29, align 8, !dbg !2822
  %next62 = getelementptr inbounds i8, i8* %call48, i64 8, !dbg !2825
  %31 = bitcast i8* %next62 to i64*, !dbg !2826
  store i64 %30, i64* %31, align 8, !dbg !2826
  %32 = load i32, i32* %rt_int52, align 8, !dbg !2827
  %rem67 = srem i32 %32, 257, !dbg !2828
  %idxprom68 = sext i32 %rem67 to i64, !dbg !2829
  %arrayidx69 = getelementptr inbounds %struct.target_info*, %struct.target_info** %27, i64 %idxprom68, !dbg !2829
  %33 = bitcast %struct.target_info** %arrayidx69 to i8**, !dbg !2830
  store i8* %call48, i8** %33, align 8, !dbg !2830
  br label %if.end71

if.end71:                                         ; preds = %if.end32, %if.else47, %land.lhs.true41, %if.then36
  %tinfo.3 = phi %struct.target_info* [ %tinfo.1, %if.end32 ], [ %24, %if.else47 ], [ %tinfo.1, %land.lhs.true41 ], [ %tinfo.1, %if.then36 ], !dbg !2831
  call void @llvm.dbg.value(metadata %struct.target_info* %tinfo.3, metadata !2704, metadata !DIExpression()), !dbg !2734
  store i64 0, i64* @pending_dead_regs, align 8, !dbg !2832
  %cmp72 = icmp eq i32 %b.2, -1, !dbg !2833
  br i1 %cmp72, label %if.else425, label %if.then73, !dbg !2834

if.then73:                                        ; preds = %if.end71
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2835
  %cfg75 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 1, !dbg !2835
  %35 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg75, align 8, !dbg !2835
  %x_basic_block_info76 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 2, !dbg !2835
  %36 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info76, align 8, !dbg !2835
  %tobool77 = icmp eq %struct.VEC_basic_block_gc* %36, null, !dbg !2835
  br i1 %tobool77, label %cond.end84, label %cond.true78, !dbg !2835

cond.true78:                                      ; preds = %if.then73
  %base82 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %36, i64 0, i32 0, !dbg !2835
  br label %cond.end84, !dbg !2835

cond.end84:                                       ; preds = %if.then73, %cond.true78
  %cond85 = phi %struct.VEC_basic_block_base* [ %base82, %cond.true78 ], [ null, %if.then73 ], !dbg !2835
  %call86 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond85, i32 %b.2) #7, !dbg !2835
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call86, i64 0, i32 9, !dbg !2835
  %37 = load i32, i32* %index, align 8, !dbg !2835
  %call87 = tail call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %37) #7, !dbg !2835
  %in = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call87, i64 0, i32 2, !dbg !2835
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %38, metadata !2711, metadata !DIExpression()), !dbg !2836
  store i64 0, i64* @current_live_regs, align 8, !dbg !2837
  tail call void @reg_set_to_hard_reg_set(i64* nonnull @current_live_regs, %struct.bitmap_head_def* %38) #6, !dbg !2837
  %39 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2839
  %cfg89 = getelementptr inbounds %struct.function, %struct.function* %39, i64 0, i32 1, !dbg !2839
  %40 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg89, align 8, !dbg !2839
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %40, i64 0, i32 0, !dbg !2839
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2839
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i64 0, i32 6, !dbg !2840
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2840
  %index90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 9, !dbg !2841
  %43 = load i32, i32* %index90, align 8, !dbg !2841
  %cmp91 = icmp eq i32 %b.2, %43, !dbg !2842
  br i1 %cmp91, label %cond.end110, label %cond.false93, !dbg !2843

cond.false93:                                     ; preds = %cond.end84
  %x_basic_block_info96 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %40, i64 0, i32 2, !dbg !2844
  %44 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info96, align 8, !dbg !2844
  %tobool97 = icmp eq %struct.VEC_basic_block_gc* %44, null, !dbg !2844
  br i1 %tobool97, label %cond.end104, label %cond.true98, !dbg !2844

cond.true98:                                      ; preds = %cond.false93
  %base102 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %44, i64 0, i32 0, !dbg !2844
  br label %cond.end104, !dbg !2844

cond.end104:                                      ; preds = %cond.false93, %cond.true98
  %cond105 = phi %struct.VEC_basic_block_base* [ %base102, %cond.true98 ], [ null, %cond.false93 ], !dbg !2844
  %call106 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond105, i32 %b.2) #7, !dbg !2844
  %il107 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call106, i64 0, i32 7, !dbg !2844
  %rtl108 = bitcast %union.basic_block_il_dependent* %il107 to %struct.rtl_bb_info**, !dbg !2844
  %45 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl108, align 8, !dbg !2844
  %head_109 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %45, i64 0, i32 0, !dbg !2844
  %46 = load %struct.rtx_def*, %struct.rtx_def** %head_109, align 8, !dbg !2844
  br label %cond.end110, !dbg !2843

cond.end110:                                      ; preds = %cond.end84, %cond.end104
  %cond111 = phi %struct.rtx_def* [ %46, %cond.end104 ], [ %insns, %cond.end84 ], !dbg !2843
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond111, metadata !2715, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !2716, metadata !DIExpression()), !dbg !2836
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond111, i64 0, i32 0, !dbg !2845
  %bf.load112 = load i32, i32* %47, align 8, !dbg !2845
  %bf.clear113 = and i32 %bf.load112, 65535, !dbg !2845
  %cmp114 = icmp eq i32 %bf.clear113, 8, !dbg !2845
  br i1 %cmp114, label %land.lhs.true115, label %if.end131, !dbg !2847

land.lhs.true115:                                 ; preds = %cond.end110
  %u116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond111, i64 0, i32 1, !dbg !2848
  %48 = getelementptr inbounds %union.u, %union.u* %u116, i64 1, i32 0, i32 0, i64 0, !dbg !2848
  %49 = bitcast %union.rtunion_def* %48 to i32**, !dbg !2848
  %50 = load i32*, i32** %49, align 8, !dbg !2848
  %bf.load119 = load i32, i32* %50, align 8, !dbg !2848
  %bf.clear120 = and i32 %bf.load119, 65535, !dbg !2848
  %cmp121 = icmp eq i32 %bf.clear120, 5, !dbg !2849
  br i1 %cmp121, label %if.then122, label %if.end131, !dbg !2850

if.then122:                                       ; preds = %land.lhs.true115
  %arrayidx129 = getelementptr inbounds i32, i32* %50, i64 2, !dbg !2851
  %rt_rtvec = bitcast i32* %arrayidx129 to %struct.rtvec_def**, !dbg !2851
  %51 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2851
  %arrayidx130 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %51, i64 0, i32 1, i64 0, !dbg !2851
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx130, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata %struct.rtx_def* %52, metadata !2715, metadata !DIExpression()), !dbg !2836
  br label %if.end131, !dbg !2852

if.end131:                                        ; preds = %if.then122, %land.lhs.true115, %cond.end110
  %start_insn.0 = phi %struct.rtx_def* [ %52, %if.then122 ], [ %cond111, %land.lhs.true115 ], [ %cond111, %cond.end110 ], !dbg !2836
  call void @llvm.dbg.value(metadata %struct.rtx_def* %start_insn.0, metadata !2715, metadata !DIExpression()), !dbg !2836
  %53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 0, !dbg !2853
  %bf.load132 = load i32, i32* %53, align 8, !dbg !2853
  %bf.clear133 = and i32 %bf.load132, 65535, !dbg !2853
  %cmp134 = icmp eq i32 %bf.clear133, 8, !dbg !2853
  br i1 %cmp134, label %land.lhs.true135, label %if.end149, !dbg !2855

land.lhs.true135:                                 ; preds = %if.end131
  %u136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 1, !dbg !2856
  %54 = getelementptr inbounds %union.u, %union.u* %u136, i64 1, i32 0, i32 0, i64 0, !dbg !2856
  %55 = bitcast %union.rtunion_def* %54 to i32**, !dbg !2856
  %56 = load i32*, i32** %55, align 8, !dbg !2856
  %bf.load140 = load i32, i32* %56, align 8, !dbg !2856
  %bf.clear141 = and i32 %bf.load140, 65535, !dbg !2856
  %cmp142 = icmp eq i32 %bf.clear141, 5, !dbg !2857
  br i1 %cmp142, label %if.then143, label %if.end149, !dbg !2858

if.then143:                                       ; preds = %land.lhs.true135
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2859
  %rt_rtx147 = bitcast %union.rtunion_def* %57 to %struct.rtx_def**, !dbg !2859
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx147, align 8, !dbg !2859
  %call148 = tail call %struct.rtx_def* @next_insn(%struct.rtx_def* %58) #6, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call148, metadata !2716, metadata !DIExpression()), !dbg !2836
  br label %if.end149, !dbg !2861

if.end149:                                        ; preds = %if.then143, %land.lhs.true135, %if.end131
  %stop_insn.0 = phi %struct.rtx_def* [ %call148, %if.then143 ], [ %target, %land.lhs.true135 ], [ %target, %if.end131 ], !dbg !2836
  call void @llvm.dbg.value(metadata %struct.rtx_def* %stop_insn.0, metadata !2716, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata %struct.rtx_def* %start_insn.0, metadata !2705, metadata !DIExpression()), !dbg !2734
  %59 = bitcast i64* %extra_live to i8*, !dbg !2862
  br label %for.cond150, !dbg !2863

for.cond150:                                      ; preds = %cleanup, %if.end149
  %insn.0 = phi %struct.rtx_def* [ %start_insn.0, %if.end149 ], [ %call415, %cleanup ], !dbg !2864
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2705, metadata !DIExpression()), !dbg !2734
  %cmp151 = icmp eq %struct.rtx_def* %insn.0, %stop_insn.0, !dbg !2865
  br i1 %cmp151, label %for.end416, label %for.body152, !dbg !2866

for.body152:                                      ; preds = %for.cond150
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2721, metadata !DIExpression()), !dbg !2867
  %60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2868
  %bf.load153 = load i32, i32* %60, align 8, !dbg !2868
  %bf.clear154 = and i32 %bf.load153, 65535, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %bf.clear154, metadata !2722, metadata !DIExpression()), !dbg !2867
  %cmp157 = icmp eq i32 %bf.clear154, 7, !dbg !2869
  br i1 %cmp157, label %cleanup, label %if.end159, !dbg !2871

if.end159:                                        ; preds = %for.body152
  %bf.clear154.off = add nsw i32 %bf.clear154, -8, !dbg !2872
  %switch2 = icmp ult i32 %bf.clear154.off, 3, !dbg !2872
  br i1 %switch2, label %land.lhs.true164, label %if.end237, !dbg !2872

land.lhs.true164:                                 ; preds = %if.end159
  %bf.clear167 = and i32 %bf.load153, 268435456, !dbg !2874
  %tobool168 = icmp eq i32 %bf.clear167, 0, !dbg !2874
  br i1 %tobool168, label %if.end170, label %cleanup, !dbg !2875

if.end170:                                        ; preds = %land.lhs.true164
  %cmp171 = icmp eq i32 %bf.clear154, 8, !dbg !2876
  br i1 %cmp171, label %land.lhs.true172, label %if.end237, !dbg !2878

land.lhs.true172:                                 ; preds = %if.end170
  %u173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2879
  %61 = getelementptr inbounds %union.u, %union.u* %u173, i64 1, i32 0, i32 0, i64 0, !dbg !2879
  %62 = bitcast %union.rtunion_def* %61 to i32**, !dbg !2879
  %63 = load i32*, i32** %62, align 8, !dbg !2879
  %bf.load177 = load i32, i32* %63, align 8, !dbg !2879
  %bf.clear178 = and i32 %bf.load177, 65535, !dbg !2879
  %cmp179 = icmp eq i32 %bf.clear178, 24, !dbg !2880
  br i1 %cmp179, label %land.lhs.true180, label %if.end237, !dbg !2881

land.lhs.true180:                                 ; preds = %land.lhs.true172
  %arrayidx187 = getelementptr inbounds i32, i32* %63, i64 2, !dbg !2882
  %64 = bitcast i32* %arrayidx187 to i32**, !dbg !2882
  %65 = load i32*, i32** %64, align 8, !dbg !2882
  %bf.load189 = load i32, i32* %65, align 8, !dbg !2882
  %bf.clear190 = and i32 %bf.load189, 65535, !dbg !2882
  %cmp191 = icmp eq i32 %bf.clear190, 8, !dbg !2882
  %66 = bitcast i32* %65 to %struct.rtx_def*, !dbg !2882
  br i1 %cmp191, label %if.then228, label %lor.lhs.false192, !dbg !2882

lor.lhs.false192:                                 ; preds = %land.lhs.true180
  %cmp203 = icmp eq i32 %bf.clear190, 7, !dbg !2882
  br i1 %cmp203, label %if.then228, label %lor.lhs.false204, !dbg !2882

lor.lhs.false204:                                 ; preds = %lor.lhs.false192
  %cmp215 = icmp eq i32 %bf.clear190, 9, !dbg !2882
  br i1 %cmp215, label %if.then228, label %lor.lhs.false216, !dbg !2882

lor.lhs.false216:                                 ; preds = %lor.lhs.false204
  %cmp227 = icmp eq i32 %bf.clear190, 10, !dbg !2882
  br i1 %cmp227, label %if.then228, label %if.end237, !dbg !2883

if.then228:                                       ; preds = %lor.lhs.false216, %lor.lhs.false204, %lor.lhs.false192, %land.lhs.true180
  call void @llvm.dbg.value(metadata %struct.rtx_def* %66, metadata !2721, metadata !DIExpression()), !dbg !2867
  br label %if.end237, !dbg !2884

if.end237:                                        ; preds = %if.end159, %if.then228, %lor.lhs.false216, %land.lhs.true172, %if.end170
  %bf.load238 = phi i32 [ %bf.load189, %if.then228 ], [ %bf.load153, %lor.lhs.false216 ], [ %bf.load153, %land.lhs.true172 ], [ %bf.load153, %if.end170 ], [ %bf.load153, %if.end159 ], !dbg !2885
  %real_insn.0 = phi %struct.rtx_def* [ %66, %if.then228 ], [ %insn.0, %lor.lhs.false216 ], [ %insn.0, %land.lhs.true172 ], [ %insn.0, %if.end170 ], [ %insn.0, %if.end159 ], !dbg !2867
  call void @llvm.dbg.value(metadata %struct.rtx_def* %real_insn.0, metadata !2721, metadata !DIExpression()), !dbg !2867
  %67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %real_insn.0, i64 0, i32 0, !dbg !2885
  %bf.clear239 = and i32 %bf.load238, 65535, !dbg !2885
  %cmp240 = icmp eq i32 %bf.clear239, 10, !dbg !2885
  br i1 %cmp240, label %if.then241, label %if.end252, !dbg !2887

if.then241:                                       ; preds = %if.end237
  %68 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !2888
  %neg = xor i64 %68, -1, !dbg !2888
  %69 = load i64, i64* @current_live_regs, align 8, !dbg !2888
  %and = and i64 %69, %neg, !dbg !2888
  store i64 %and, i64* @current_live_regs, align 8, !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression()), !dbg !2734
  br label %for.cond242, !dbg !2890

for.cond242:                                      ; preds = %for.inc250, %if.then241
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc250 ], [ 0, %if.then241 ]
  %70 = phi i64 [ %72, %for.inc250 ], [ %and, %if.then241 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2703, metadata !DIExpression()), !dbg !2734
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2892
  br i1 %exitcond, label %if.end252.loopexit, label %for.body244, !dbg !2894

for.body244:                                      ; preds = %for.cond242
  %arrayidx246 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %indvars.iv, !dbg !2895
  %71 = load i8, i8* %arrayidx246, align 1, !dbg !2895
  %tobool247 = icmp eq i8 %71, 0, !dbg !2895
  br i1 %tobool247, label %for.inc250, label %if.then248, !dbg !2897

if.then248:                                       ; preds = %for.body244
  %shl = shl i64 1, %indvars.iv, !dbg !2898
  %or = or i64 %70, %shl, !dbg !2898
  store i64 %or, i64* @current_live_regs, align 8, !dbg !2898
  br label %for.inc250, !dbg !2898

for.inc250:                                       ; preds = %for.body244, %if.then248
  %72 = phi i64 [ %70, %for.body244 ], [ %or, %if.then248 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i32 undef, metadata !2703, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2734
  br label %for.cond242, !dbg !2900, !llvm.loop !2901

if.end252.loopexit:                               ; preds = %for.cond242
  %bf.load253.pre = load i32, i32* %67, align 8, !dbg !2903
  br label %if.end252, !dbg !2903

if.end252:                                        ; preds = %if.end252.loopexit, %if.end237
  %bf.load398 = phi i32 [ %bf.load253.pre, %if.end252.loopexit ], [ %bf.load238, %if.end237 ], !dbg !2903
  %bf.clear254 = and i32 %bf.load398, 65535, !dbg !2903
  %cmp255 = icmp eq i32 %bf.clear254, 8, !dbg !2903
  br i1 %cmp255, label %land.lhs.true256, label %lor.lhs.false272, !dbg !2904

land.lhs.true256:                                 ; preds = %if.end252
  %u257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %real_insn.0, i64 0, i32 1, !dbg !2905
  %73 = getelementptr inbounds %union.u, %union.u* %u257, i64 1, i32 0, i32 0, i64 0, !dbg !2905
  %74 = bitcast %union.rtunion_def* %73 to i32**, !dbg !2905
  %75 = load i32*, i32** %74, align 8, !dbg !2905
  %bf.load261 = load i32, i32* %75, align 8, !dbg !2905
  %bf.clear262 = and i32 %bf.load261, 65535, !dbg !2905
  %cmp263 = icmp eq i32 %bf.clear262, 24, !dbg !2906
  br i1 %cmp263, label %lor.lhs.false272, label %land.lhs.true264, !dbg !2907

land.lhs.true264:                                 ; preds = %land.lhs.true256
  %cmp271 = icmp eq i32 %bf.clear262, 25, !dbg !2908
  br i1 %cmp271, label %lor.lhs.false272, label %if.then280, !dbg !2909

lor.lhs.false272:                                 ; preds = %land.lhs.true264, %land.lhs.true256, %if.end252
  %cmp275 = icmp eq i32 %bf.clear254, 9, !dbg !2910
  br i1 %cmp275, label %if.then280, label %lor.lhs.false276, !dbg !2911

lor.lhs.false276:                                 ; preds = %lor.lhs.false272
  %cmp279 = icmp eq i32 %bf.clear254, 10, !dbg !2912
  br i1 %cmp279, label %if.then280, label %if.else377, !dbg !2913

if.then280:                                       ; preds = %land.lhs.true264, %lor.lhs.false276, %lor.lhs.false272
  %u281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %real_insn.0, i64 0, i32 1, !dbg !2914
  %76 = getelementptr inbounds %union.u, %union.u* %u281, i64 1, i32 0, i32 0, i64 2, !dbg !2914
  br label %for.cond285, !dbg !2917

for.cond285:                                      ; preds = %for.inc321, %if.then280
  %link.0.in.in = phi %union.rtunion_def* [ %76, %if.then280 ], [ %82, %for.inc321 ]
  %link.0.in = bitcast %union.rtunion_def* %link.0.in.in to %struct.rtx_def**, !dbg !2918
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2918
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2717, metadata !DIExpression()), !dbg !2867
  %tobool286 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2919
  br i1 %tobool286, label %for.end326, label %for.body287, !dbg !2919

for.body287:                                      ; preds = %for.cond285
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 0, !dbg !2920
  %bf.load288 = load i32, i32* %77, align 8, !dbg !2920
  %bf.clear290 = and i32 %bf.load288, 16711680, !dbg !2920
  %cmp291 = icmp eq i32 %bf.clear290, 65536, !dbg !2923
  br i1 %cmp291, label %land.lhs.true292, label %for.inc321, !dbg !2924

land.lhs.true292:                                 ; preds = %for.body287
  %arrayidx295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2925
  %78 = bitcast %union.rtunion_def* %arrayidx295 to i32**, !dbg !2925
  %79 = load i32*, i32** %78, align 8, !dbg !2925
  %bf.load297 = load i32, i32* %79, align 8, !dbg !2925
  %bf.clear298 = and i32 %bf.load297, 65535, !dbg !2925
  %cmp299 = icmp eq i32 %bf.clear298, 37, !dbg !2925
  br i1 %cmp299, label %land.lhs.true300, label %for.inc321, !dbg !2926

land.lhs.true300:                                 ; preds = %land.lhs.true292
  %80 = bitcast i32* %79 to %struct.rtx_def*, !dbg !2926
  %call305 = call fastcc i32 @rhs_regno(%struct.rtx_def* %80) #7, !dbg !2927
  %cmp306 = icmp ult i32 %call305, 53, !dbg !2928
  br i1 %cmp306, label %if.then307, label %for.inc321, !dbg !2929

if.then307:                                       ; preds = %land.lhs.true300
  %81 = load i32*, i32** %78, align 8, !dbg !2930
  %bf.load312 = load i32, i32* %81, align 8, !dbg !2930
  %bf.lshr313 = lshr i32 %bf.load312, 16, !dbg !2930
  %bf.clear314 = and i32 %bf.lshr313, 255, !dbg !2930
  %.cast3 = bitcast i32* %81 to %struct.rtx_def*, !dbg !2931
  %call319 = call fastcc i32 @rhs_regno(%struct.rtx_def* %.cast3) #7, !dbg !2931
  call fastcc void @add_to_hard_reg_set(i64* nonnull @pending_dead_regs, i32 %bf.clear314, i32 %call319) #7, !dbg !2932
  br label %for.inc321, !dbg !2932

for.inc321:                                       ; preds = %for.body287, %land.lhs.true292, %land.lhs.true300, %if.then307
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2933
  br label %for.cond285, !dbg !2934, !llvm.loop !2935

for.end326:                                       ; preds = %for.cond285
  %83 = getelementptr inbounds %union.u, %union.u* %u281, i64 1, i32 0, i32 0, i64 0, !dbg !2937
  %rt_rtx330 = bitcast %union.rtunion_def* %83 to %struct.rtx_def**, !dbg !2937
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx330, align 8, !dbg !2937
  call void @note_stores(%struct.rtx_def* %84, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @update_live_status, i8* null) #6, !dbg !2938
  br label %for.cond335, !dbg !2939

for.cond335:                                      ; preds = %for.inc371, %for.end326
  %link.1.in.in = phi %union.rtunion_def* [ %76, %for.end326 ], [ %90, %for.inc371 ]
  %link.1.in = bitcast %union.rtunion_def* %link.1.in.in to %struct.rtx_def**, !dbg !2941
  %link.1 = load %struct.rtx_def*, %struct.rtx_def** %link.1.in, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.1, metadata !2717, metadata !DIExpression()), !dbg !2867
  %tobool336 = icmp eq %struct.rtx_def* %link.1, null, !dbg !2942
  br i1 %tobool336, label %cleanup.loopexit, label %for.body337, !dbg !2942

for.body337:                                      ; preds = %for.cond335
  %85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 0, !dbg !2943
  %bf.load338 = load i32, i32* %85, align 8, !dbg !2943
  %bf.clear340 = and i32 %bf.load338, 16711680, !dbg !2943
  %cmp341 = icmp eq i32 %bf.clear340, 393216, !dbg !2946
  br i1 %cmp341, label %land.lhs.true342, label %for.inc371, !dbg !2947

land.lhs.true342:                                 ; preds = %for.body337
  %arrayidx345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2948
  %86 = bitcast %union.rtunion_def* %arrayidx345 to i32**, !dbg !2948
  %87 = load i32*, i32** %86, align 8, !dbg !2948
  %bf.load347 = load i32, i32* %87, align 8, !dbg !2948
  %bf.clear348 = and i32 %bf.load347, 65535, !dbg !2948
  %cmp349 = icmp eq i32 %bf.clear348, 37, !dbg !2948
  br i1 %cmp349, label %land.lhs.true350, label %for.inc371, !dbg !2949

land.lhs.true350:                                 ; preds = %land.lhs.true342
  %88 = bitcast i32* %87 to %struct.rtx_def*, !dbg !2949
  %call355 = call fastcc i32 @rhs_regno(%struct.rtx_def* %88) #7, !dbg !2950
  %cmp356 = icmp ult i32 %call355, 53, !dbg !2951
  br i1 %cmp356, label %if.then357, label %for.inc371, !dbg !2952

if.then357:                                       ; preds = %land.lhs.true350
  %89 = load i32*, i32** %86, align 8, !dbg !2953
  %bf.load362 = load i32, i32* %89, align 8, !dbg !2953
  %bf.lshr363 = lshr i32 %bf.load362, 16, !dbg !2953
  %bf.clear364 = and i32 %bf.lshr363, 255, !dbg !2953
  %.cast = bitcast i32* %89 to %struct.rtx_def*, !dbg !2954
  %call369 = call fastcc i32 @rhs_regno(%struct.rtx_def* %.cast) #7, !dbg !2954
  call fastcc void @remove_from_hard_reg_set(i64* nonnull @current_live_regs, i32 %bf.clear364, i32 %call369) #7, !dbg !2955
  br label %for.inc371, !dbg !2955

for.inc371:                                       ; preds = %for.body337, %land.lhs.true342, %land.lhs.true350, %if.then357
  %90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2956
  br label %for.cond335, !dbg !2957, !llvm.loop !2958

if.else377:                                       ; preds = %lor.lhs.false276
  %cmp380 = icmp eq i32 %bf.clear254, 12, !dbg !2960
  br i1 %cmp380, label %if.then381, label %if.else397, !dbg !2961

if.then381:                                       ; preds = %if.else377
  %91 = load i64, i64* @pending_dead_regs, align 8, !dbg !2962
  %neg382 = xor i64 %91, -1, !dbg !2962
  %92 = load i64, i64* @current_live_regs, align 8, !dbg !2962
  %and383 = and i64 %92, %neg382, !dbg !2962
  store i64 %and383, i64* @current_live_regs, align 8, !dbg !2962
  store i64 0, i64* @pending_dead_regs, align 8, !dbg !2963
  %arrayidx386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %real_insn.0, i64 0, i32 1, i32 0, i32 1, !dbg !2964
  %rt_bb = bitcast %struct.object_block** %arrayidx386 to %struct.basic_block_def**, !dbg !2964
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %93, metadata !2723, metadata !DIExpression()), !dbg !2965
  %tobool387 = icmp eq %struct.basic_block_def* %93, null, !dbg !2966
  br i1 %tobool387, label %cleanup, label %if.then388, !dbg !2967

if.then388:                                       ; preds = %if.then381
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #8, !dbg !2968
  call void @llvm.dbg.value(metadata i64 0, metadata !2727, metadata !DIExpression()), !dbg !2862
  store i64 0, i64* %extra_live, align 8, !dbg !2969
  %index390 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i64 0, i32 9, !dbg !2969
  %94 = load i32, i32* %index390, align 8, !dbg !2969
  %call391 = call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %94) #7, !dbg !2969
  %in392 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call391, i64 0, i32 2, !dbg !2969
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in392, align 8, !dbg !2969
  call void @llvm.dbg.value(metadata i64* %extra_live, metadata !2727, metadata !DIExpression(DW_OP_deref)), !dbg !2862
  call void @reg_set_to_hard_reg_set(i64* nonnull %extra_live, %struct.bitmap_head_def* %95) #6, !dbg !2969
  %96 = load i64, i64* %extra_live, align 8, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %96, metadata !2727, metadata !DIExpression()), !dbg !2862
  %97 = load i64, i64* @current_live_regs, align 8, !dbg !2971
  %or395 = or i64 %97, %96, !dbg !2971
  store i64 %or395, i64* @current_live_regs, align 8, !dbg !2971
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #8, !dbg !2972
  br label %cleanup, !dbg !2973

if.else397:                                       ; preds = %if.else377
  %cmp400 = icmp eq i32 %bf.clear254, 13, !dbg !2974
  br i1 %cmp400, label %land.lhs.true401, label %cleanup, !dbg !2976

land.lhs.true401:                                 ; preds = %if.else397
  %u402 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %real_insn.0, i64 0, i32 1, !dbg !2977
  %98 = getelementptr inbounds %union.u, %union.u* %u402, i64 1, i32 0, i32 0, i64 0, !dbg !2977
  %rt_int405 = bitcast %union.rtunion_def* %98 to i32*, !dbg !2977
  %99 = load i32, i32* %rt_int405, align 8, !dbg !2977
  %cmp406 = icmp eq i32 %99, 6, !dbg !2978
  br i1 %cmp406, label %if.then407, label %cleanup, !dbg !2979

if.then407:                                       ; preds = %land.lhs.true401
  %100 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @start_of_epilogue_needs, i64 0, i32 4), align 8, !dbg !2980
  %101 = load i64, i64* @current_live_regs, align 8, !dbg !2980
  %or408 = or i64 %101, %100, !dbg !2980
  store i64 %or408, i64* @current_live_regs, align 8, !dbg !2980
  br label %cleanup, !dbg !2980

cleanup.loopexit:                                 ; preds = %for.cond335
  br label %cleanup, !dbg !2981

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true164, %if.then381, %if.else397, %land.lhs.true401, %if.then407, %if.then388, %for.body152
  %call415 = call fastcc %struct.rtx_def* @next_insn_no_annul(%struct.rtx_def* %insn.0) #7, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call415, metadata !2705, metadata !DIExpression()), !dbg !2734
  br label %for.cond150, !dbg !2982, !llvm.loop !2983

for.end416:                                       ; preds = %for.cond150
  %102 = load i64, i64* @current_live_regs, align 8, !dbg !2985
  %regs417 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !2985
  store i64 %102, i64* %regs417, align 8, !dbg !2985
  %cmp418 = icmp eq %struct.target_info* %tinfo.3, null, !dbg !2986
  br i1 %cmp418, label %do.body428, label %if.then419, !dbg !2988

if.then419:                                       ; preds = %for.end416
  %block420 = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.3, i64 0, i32 3, !dbg !2989
  store i32 %b.2, i32* %block420, align 8, !dbg !2991
  %103 = load i32*, i32** @bb_ticks, align 8, !dbg !2992
  %idxprom421 = sext i32 %b.2 to i64, !dbg !2992
  %arrayidx422 = getelementptr inbounds i32, i32* %103, i64 %idxprom421, !dbg !2992
  %104 = load i32, i32* %arrayidx422, align 4, !dbg !2992
  %bb_tick423 = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.3, i64 0, i32 4, !dbg !2993
  store i32 %104, i32* %bb_tick423, align 4, !dbg !2994
  br label %do.body428, !dbg !2995

if.else425:                                       ; preds = %if.end71
  %regs426 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !2996
  store i64 -1, i64* %regs426, align 8, !dbg !2996
  br label %do.body428

do.body428:                                       ; preds = %for.end416, %if.else425, %if.then419
  %cc429 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 3, !dbg !2997
  store i8 0, i8* %cc429, align 1, !dbg !2997
  %volatil430 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 2, !dbg !2997
  store i8 0, i8* %volatil430, align 2, !dbg !2997
  %unch_memory431 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 1, !dbg !2997
  store i8 0, i8* %unch_memory431, align 1, !dbg !2997
  store i8 0, i8* %1, align 8, !dbg !2997
  %regs433 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 4, !dbg !2997
  store i64 0, i64* %regs433, align 8, !dbg !2997
  %cc437 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 3, !dbg !2999
  store i8 0, i8* %cc437, align 1, !dbg !2999
  %volatil438 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 2, !dbg !2999
  store i8 0, i8* %volatil438, align 2, !dbg !2999
  %unch_memory439 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 1, !dbg !2999
  store i8 0, i8* %unch_memory439, align 1, !dbg !2999
  store i8 0, i8* %2, align 8, !dbg !2999
  %regs441 = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 4, !dbg !2999
  store i64 0, i64* %regs441, align 8, !dbg !2999
  %105 = bitcast %struct.resources* %set to i64*, !dbg !3001
  %106 = load i64, i64* %105, align 8, !dbg !3001
  call void @llvm.dbg.value(metadata %struct.rtx_def** %jump_target, metadata !2707, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  call void @llvm.dbg.value(metadata %struct.resources* %needed, metadata !2710, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  %call444 = call fastcc %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* nonnull %target, %struct.resources* %res, %struct.rtx_def** nonnull %jump_target, i32 0, i64 %106, i64 0, %struct.resources* nonnull byval(%struct.resources) align 8 %needed) #7, !dbg !3001
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call444, metadata !2706, metadata !DIExpression()), !dbg !2734
  %tobool445 = icmp eq %struct.rtx_def* %call444, null, !dbg !3002
  br i1 %tobool445, label %if.end481, label %if.then446, !dbg !3003

if.then446:                                       ; preds = %do.body428
  %107 = getelementptr inbounds %struct.resources, %struct.resources* %new_resources, i64 0, i32 0, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %107) #8, !dbg !3004
  %call448 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* nonnull %call444) #6, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call448, metadata !2733, metadata !DIExpression()), !dbg !3006
  %108 = load %struct.rtx_def*, %struct.rtx_def** %jump_target, align 8, !dbg !3007
  call void @llvm.dbg.value(metadata %struct.rtx_def* %108, metadata !2707, metadata !DIExpression()), !dbg !2734
  %call449 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %108) #6, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.resources* %new_resources, metadata !2730, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  call void @mark_target_live_regs(%struct.rtx_def* %insns, %struct.rtx_def* %call449, %struct.resources* nonnull %new_resources) #7, !dbg !3009
  store i8 0, i8* %cc429, align 1, !dbg !3010
  store i8 0, i8* %volatil430, align 2, !dbg !3010
  store i8 0, i8* %unch_memory431, align 1, !dbg !3010
  store i8 0, i8* %1, align 8, !dbg !3010
  store i64 0, i64* %regs433, align 8, !dbg !3010
  store i8 0, i8* %cc437, align 1, !dbg !3012
  store i8 0, i8* %volatil438, align 2, !dbg !3012
  store i8 0, i8* %unch_memory439, align 1, !dbg !3012
  store i8 0, i8* %2, align 8, !dbg !3012
  store i64 0, i64* %regs441, align 8, !dbg !3012
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !2705, metadata !DIExpression()), !dbg !2734
  %regs473 = getelementptr inbounds %struct.resources, %struct.resources* %new_resources, i64 0, i32 4, !dbg !3014
  br label %for.cond466, !dbg !3018

for.cond466:                                      ; preds = %for.body468, %if.then446
  %insn.1 = phi %struct.rtx_def* [ %target, %if.then446 ], [ %call476, %for.body468 ], !dbg !3019
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2705, metadata !DIExpression()), !dbg !2734
  %cmp467 = icmp eq %struct.rtx_def* %insn.1, %call448, !dbg !3020
  br i1 %cmp467, label %for.end477, label %for.body468, !dbg !3021

for.body468:                                      ; preds = %for.cond466
  call void @llvm.dbg.value(metadata %struct.resources* %needed, metadata !2710, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  call void @mark_referenced_resources(%struct.rtx_def* %insn.1, %struct.resources* nonnull %needed, i8 zeroext 1) #7, !dbg !3022
  %109 = load i64, i64* %regs441, align 8, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %109, metadata !2708, metadata !DIExpression()), !dbg !2734
  %110 = load i64, i64* %regs433, align 8, !dbg !3024
  %neg471 = xor i64 %110, -1, !dbg !3024
  %and472 = and i64 %109, %neg471, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %and472, metadata !2708, metadata !DIExpression()), !dbg !2734
  %111 = load i64, i64* %regs473, align 8, !dbg !3025
  %or474 = or i64 %111, %and472, !dbg !3025
  store i64 %or474, i64* %regs473, align 8, !dbg !3025
  call void @llvm.dbg.value(metadata %struct.resources* %set, metadata !2709, metadata !DIExpression(DW_OP_deref)), !dbg !2734
  call void @mark_set_resources(%struct.rtx_def* %insn.1, %struct.resources* nonnull %set, i32 0, i32 1) #7, !dbg !3026
  %call476 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %insn.1) #6, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call476, metadata !2705, metadata !DIExpression()), !dbg !2734
  br label %for.cond466, !dbg !3028, !llvm.loop !3029

for.end477:                                       ; preds = %for.cond466
  %112 = load i64, i64* %regs473, align 8, !dbg !3031
  %regs479 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !3031
  %113 = load i64, i64* %regs479, align 8, !dbg !3031
  %or480 = or i64 %113, %112, !dbg !3031
  store i64 %or480, i64* %regs479, align 8, !dbg !3031
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %107) #8, !dbg !3032
  br label %if.end481, !dbg !3033

if.end481:                                        ; preds = %do.body428, %for.end477
  %cmp482 = icmp eq %struct.target_info* %tinfo.3, null, !dbg !3034
  br i1 %cmp482, label %cleanup487, label %if.then483, !dbg !3036

if.then483:                                       ; preds = %if.end481
  %regs484 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !3037
  %114 = load i64, i64* %regs484, align 8, !dbg !3037
  %live_regs485 = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.3, i64 0, i32 2, !dbg !3037
  store i64 %114, i64* %live_regs485, align 8, !dbg !3037
  br label %cleanup487, !dbg !3039

cleanup487:                                       ; preds = %if.end481, %if.then483, %if.then45, %if.then1, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3040
  ret void, !dbg !3040
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @return_insn_p(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3041 {
entry:
  br label %tailrecurse, !dbg !3046

tailrecurse:                                      ; preds = %if.then15, %entry
  %insn.tr = phi %struct.rtx_def* [ %insn, %entry ], [ %8, %if.then15 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.tr, metadata !3045, metadata !DIExpression()), !dbg !3048
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.tr, i64 0, i32 0, !dbg !3049
  %bf.load = load i32, i32* %0, align 8, !dbg !3049
  %bf.clear = and i32 %bf.load, 65535, !dbg !3049
  %cmp = icmp eq i32 %bf.clear, 9, !dbg !3049
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3051

land.lhs.true:                                    ; preds = %tailrecurse
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.tr, i64 0, i32 1, !dbg !3052
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3052
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3052
  %3 = load i32*, i32** %2, align 8, !dbg !3052
  %bf.load1 = load i32, i32* %3, align 8, !dbg !3052
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !3052
  %cmp3 = icmp eq i32 %bf.clear2, 27, !dbg !3053
  br i1 %cmp3, label %return, label %if.end, !dbg !3054

if.end:                                           ; preds = %land.lhs.true, %tailrecurse
  %cmp6 = icmp eq i32 %bf.clear, 8, !dbg !3055
  br i1 %cmp6, label %land.lhs.true7, label %return, !dbg !3056

land.lhs.true7:                                   ; preds = %if.end
  %u8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.tr, i64 0, i32 1, !dbg !3057
  %4 = getelementptr inbounds %union.u, %union.u* %u8, i64 1, i32 0, i32 0, i64 0, !dbg !3057
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !3057
  %6 = load i32*, i32** %5, align 8, !dbg !3057
  %bf.load12 = load i32, i32* %6, align 8, !dbg !3057
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3057
  %cmp14 = icmp eq i32 %bf.clear13, 5, !dbg !3058
  br i1 %cmp14, label %if.then15, label %return, !dbg !3059

if.then15:                                        ; preds = %land.lhs.true7
  %arrayidx22 = getelementptr inbounds i32, i32* %6, i64 2, !dbg !3060
  %rt_rtvec = bitcast i32* %arrayidx22 to %struct.rtvec_def**, !dbg !3060
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3060
  %arrayidx23 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i64 0, i32 1, i64 0, !dbg !3060
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8, !dbg !3060
  br label %tailrecurse, !dbg !3046

return:                                           ; preds = %if.end, %land.lhs.true7, %land.lhs.true
  %retval.0 = phi i8 [ 1, %land.lhs.true ], [ 0, %land.lhs.true7 ], [ 0, %if.end ], !dbg !3048
  ret i8 %retval.0, !dbg !3061
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3062 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %land.end, !dbg !3071

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3071
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3071
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3071
  ret %struct.basic_block_def* %0, !dbg !3071
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_basic_block(%struct.rtx_def* %insn, i32 %search_limit) unnamed_addr #5 !dbg !3072 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit, metadata !3077, metadata !DIExpression()), !dbg !3078
  %call = tail call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %insn) #6, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3076, metadata !DIExpression()), !dbg !3078
  br label %for.cond, !dbg !3081

for.cond:                                         ; preds = %for.inc, %entry
  %search_limit.addr.0 = phi i32 [ %search_limit, %entry ], [ %dec, %for.inc ]
  %insn.addr.0 = phi %struct.rtx_def* [ %call, %entry ], [ %call2, %for.inc ], !dbg !3082
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0, metadata !3077, metadata !DIExpression()), !dbg !3078
  %tobool = icmp eq %struct.rtx_def* %insn.addr.0, null, !dbg !3083
  br i1 %tobool, label %for.end, label %land.lhs.true, !dbg !3085

land.lhs.true:                                    ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.0, i64 0, i32 0, !dbg !3086
  %bf.load = load i32, i32* %0, align 8, !dbg !3086
  %bf.clear = and i32 %bf.load, 65535, !dbg !3086
  %cmp = icmp ne i32 %bf.clear, 11, !dbg !3086
  %cmp1 = icmp ne i32 %search_limit.addr.0, 0, !dbg !3087
  %spec.select = and i1 %cmp1, %cmp, !dbg !3088
  br i1 %spec.select, label %for.inc, label %for.end, !dbg !3089

for.inc:                                          ; preds = %land.lhs.true
  %call2 = tail call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* nonnull %insn.addr.0) #6, !dbg !3090
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !3076, metadata !DIExpression()), !dbg !3078
  %dec = add nsw i32 %search_limit.addr.0, -1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3077, metadata !DIExpression()), !dbg !3078
  br label %for.cond, !dbg !3092, !llvm.loop !3093

for.end:                                          ; preds = %for.cond, %land.lhs.true
  %search_limit.addr.0.lcssa = phi i32 [ %search_limit.addr.0, %for.cond ], [ %search_limit.addr.0, %land.lhs.true ]
  %insn.addr.0.lcssa = phi %struct.rtx_def* [ %insn.addr.0, %for.cond ], [ %insn.addr.0, %land.lhs.true ], !dbg !3082
  %tobool.lcssa = phi i1 [ %tobool, %for.cond ], [ %tobool, %land.lhs.true ], !dbg !3083
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %search_limit.addr.0.lcssa, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3076, metadata !DIExpression()), !dbg !3078
  %cmp3 = icmp eq i32 %search_limit.addr.0.lcssa, 0, !dbg !3095
  br i1 %cmp3, label %return, label %if.else, !dbg !3097

if.else:                                          ; preds = %for.end
  br i1 %tobool.lcssa, label %if.then5, label %if.end6, !dbg !3098

if.then5:                                         ; preds = %if.else
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3099
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3099
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3099
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3099
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3099
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 6, !dbg !3101
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !3101
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !3102
  %5 = load i32, i32* %index, align 8, !dbg !3102
  br label %return, !dbg !3103

if.end6:                                          ; preds = %if.else
  %call7 = tail call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* nonnull %insn.addr.0.lcssa) #6, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call7, metadata !3076, metadata !DIExpression()), !dbg !3078
  br label %for.cond8, !dbg !3106

for.cond8:                                        ; preds = %for.inc24, %if.end6
  %insn.addr.1 = phi %struct.rtx_def* [ %call7, %if.end6 ], [ %call25, %for.inc24 ], !dbg !3107
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.1, metadata !3076, metadata !DIExpression()), !dbg !3078
  %tobool9 = icmp eq %struct.rtx_def* %insn.addr.1, null, !dbg !3108
  br i1 %tobool9, label %return.loopexit, label %land.rhs10, !dbg !3110

land.rhs10:                                       ; preds = %for.cond8
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.1, i64 0, i32 0, !dbg !3111
  %bf.load11 = load i32, i32* %6, align 8, !dbg !3111
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !3111
  %cmp13 = icmp eq i32 %bf.clear12, 12, !dbg !3111
  br i1 %cmp13, label %for.body15, label %return.loopexit, !dbg !3112

for.body15:                                       ; preds = %land.rhs10
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.1, i64 0, i32 1, i32 0, i32 1, !dbg !3113
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3113
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3113
  %tobool16 = icmp eq %struct.basic_block_def* %7, null, !dbg !3113
  br i1 %tobool16, label %for.inc24, label %if.then17, !dbg !3115

if.then17:                                        ; preds = %for.body15
  %.lcssa = phi %struct.basic_block_def* [ %7, %for.body15 ], !dbg !3113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.1, metadata !3076, metadata !DIExpression()), !dbg !3078
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3116
  %8 = load i32, i32* %index22, align 8, !dbg !3116
  br label %return, !dbg !3117

for.inc24:                                        ; preds = %for.body15
  %call25 = tail call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* nonnull %insn.addr.1) #6, !dbg !3118
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call25, metadata !3076, metadata !DIExpression()), !dbg !3078
  br label %for.cond8, !dbg !3119, !llvm.loop !3120

return.loopexit:                                  ; preds = %land.rhs10, %for.cond8
  br label %return, !dbg !3122

return:                                           ; preds = %return.loopexit, %for.end, %if.then17, %if.then5
  %retval.0 = phi i32 [ %5, %if.then5 ], [ %8, %if.then17 ], [ -1, %for.end ], [ -1, %return.loopexit ], !dbg !3078
  ret i32 %retval.0, !dbg !3122
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3123 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3129
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !3129
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3129
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3131
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3131
  %cmp = icmp ugt i32 %2, %index, !dbg !3132
  br i1 %cmp, label %if.then, label %return, !dbg !3133

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3134
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3134
  %idxprom = zext i32 %index to i64, !dbg !3135
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3135
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !3135
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !3135
  br label %return, !dbg !3136

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3137
  ret %struct.df_lr_bb_info* %retval.0, !dbg !3138
}

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @next_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @update_live_status(%struct.rtx_def* %dest, %struct.rtx_def* %x, i8* %data) #5 !dbg !3139 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3143, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3144, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %data, metadata !3145, metadata !DIExpression()), !dbg !3149
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3150
  %bf.load = load i32, i32* %0, align 8, !dbg !3150
  %bf.clear = and i32 %bf.load, 65535, !dbg !3150
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3150
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3152

land.lhs.true:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !3153
  br i1 %cmp3, label %lor.lhs.false, label %cleanup.cont, !dbg !3154

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3155
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3155
  %2 = load i32*, i32** %1, align 8, !dbg !3155
  %bf.load4 = load i32, i32* %2, align 8, !dbg !3155
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !3155
  %cmp6 = icmp eq i32 %bf.clear5, 37, !dbg !3155
  br i1 %cmp6, label %if.end, label %cleanup.cont, !dbg !3156

if.end:                                           ; preds = %lor.lhs.false, %entry
  %cmp9 = icmp eq i32 %bf.clear, 39, !dbg !3157
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !3159

if.then10:                                        ; preds = %if.end
  %call = tail call i32 @subreg_regno(%struct.rtx_def* %dest) #6, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %call, metadata !3146, metadata !DIExpression()), !dbg !3149
  %call11 = tail call i32 @subreg_nregs(%struct.rtx_def* %dest) #6, !dbg !3162
  %add = add i32 %call, %call11, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %add, metadata !3147, metadata !DIExpression()), !dbg !3149
  br label %if.end17, !dbg !3164

if.else:                                          ; preds = %if.end
  %call12 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %call12, metadata !3146, metadata !DIExpression()), !dbg !3149
  %bf.load13 = load i32, i32* %0, align 8, !dbg !3167
  %bf.lshr = lshr i32 %bf.load13, 16, !dbg !3167
  %bf.clear14 = and i32 %bf.lshr, 255, !dbg !3167
  %call15 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3167
  %call16 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear14, i32 %call15) #7, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %call16, metadata !3147, metadata !DIExpression()), !dbg !3149
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  %first_regno.0 = phi i32 [ %call, %if.then10 ], [ %call12, %if.else ], !dbg !3168
  %last_regno.0 = phi i32 [ %add, %if.then10 ], [ %call16, %if.else ], !dbg !3168
  call void @llvm.dbg.value(metadata i32 %last_regno.0, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 %first_regno.0, metadata !3146, metadata !DIExpression()), !dbg !3149
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3169
  %bf.load18 = load i32, i32* %3, align 8, !dbg !3169
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !3169
  %cmp20 = icmp eq i32 %bf.clear19, 25, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %first_regno.0, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i32 %first_regno.0, metadata !3148, metadata !DIExpression()), !dbg !3149
  br i1 %cmp20, label %for.cond.preheader, label %for.cond24.preheader, !dbg !3172

for.cond24.preheader:                             ; preds = %if.end17
  br label %for.cond24, !dbg !3173

for.cond.preheader:                               ; preds = %if.end17
  br label %for.cond, !dbg !3175

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ %first_regno.0, %for.cond.preheader ], !dbg !3177
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3148, metadata !DIExpression()), !dbg !3149
  %cmp22 = icmp slt i32 %i.0, %last_regno.0, !dbg !3178
  br i1 %cmp22, label %for.body, label %cleanup.cont.loopexit, !dbg !3175

for.body:                                         ; preds = %for.cond
  %sh_prom = zext i32 %i.0 to i64, !dbg !3180
  %shl = shl i64 1, %sh_prom, !dbg !3180
  %neg = xor i64 %shl, -1, !dbg !3180
  %4 = load i64, i64* @current_live_regs, align 8, !dbg !3180
  %and = and i64 %4, %neg, !dbg !3180
  store i64 %and, i64* @current_live_regs, align 8, !dbg !3180
  %inc = add nsw i32 %i.0, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3148, metadata !DIExpression()), !dbg !3149
  br label %for.cond, !dbg !3182, !llvm.loop !3183

for.cond24:                                       ; preds = %for.cond24.preheader, %for.body26
  %i.1 = phi i32 [ %inc34, %for.body26 ], [ %first_regno.0, %for.cond24.preheader ], !dbg !3185
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3148, metadata !DIExpression()), !dbg !3149
  %cmp25 = icmp slt i32 %i.1, %last_regno.0, !dbg !3186
  br i1 %cmp25, label %for.body26, label %cleanup.cont.loopexit1, !dbg !3173

for.body26:                                       ; preds = %for.cond24
  %sh_prom27 = zext i32 %i.1 to i64, !dbg !3188
  %shl28 = shl i64 1, %sh_prom27, !dbg !3188
  %5 = load i64, i64* @current_live_regs, align 8, !dbg !3188
  %or = or i64 %5, %shl28, !dbg !3188
  store i64 %or, i64* @current_live_regs, align 8, !dbg !3188
  %neg31 = xor i64 %shl28, -1, !dbg !3190
  %6 = load i64, i64* @pending_dead_regs, align 8, !dbg !3190
  %and32 = and i64 %6, %neg31, !dbg !3190
  store i64 %and32, i64* @pending_dead_regs, align 8, !dbg !3190
  %inc34 = add nsw i32 %i.1, 1, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !3148, metadata !DIExpression()), !dbg !3149
  br label %for.cond24, !dbg !3192, !llvm.loop !3193

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3195

cleanup.cont.loopexit1:                           ; preds = %for.cond24
  br label %cleanup.cont, !dbg !3195

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit1, %cleanup.cont.loopexit, %land.lhs.true, %lor.lhs.false
  ret void, !dbg !3195
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @remove_from_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3196 {
entry:
  call void @llvm.dbg.value(metadata i64* @current_live_regs, metadata !3198, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3199, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3200, metadata !DIExpression()), !dbg !3202
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !3203
  call void @llvm.dbg.value(metadata i32 %call, metadata !3201, metadata !DIExpression()), !dbg !3202
  %regs.promoted = load i64, i64* @current_live_regs, align 8, !dbg !3204
  br label %do.body, !dbg !3205

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %and, %do.body ], !dbg !3202
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3200, metadata !DIExpression()), !dbg !3202
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !3204
  %shl = shl i64 1, %sh_prom, !dbg !3204
  %neg = xor i64 %shl, -1, !dbg !3204
  %and = and i64 %0, %neg, !dbg !3204
  %inc = add i32 %regno.addr.0, 1, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3200, metadata !DIExpression()), !dbg !3202
  %cmp = icmp ult i32 %inc, %call, !dbg !3207
  br i1 %cmp, label %do.body, label %do.end, !dbg !3204, !llvm.loop !3208

do.end:                                           ; preds = %do.body
  %and.lcssa = phi i64 [ %and, %do.body ], !dbg !3204
  store i64 %and.lcssa, i64* @current_live_regs, align 8, !dbg !3204
  ret void, !dbg !3210
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @next_insn_no_annul(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3211 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3215, metadata !DIExpression()), !dbg !3222
  %tobool = icmp eq %struct.rtx_def* %insn, null, !dbg !3223
  br i1 %tobool, label %if.end70, label %if.then, !dbg !3224

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3225
  %bf.load = load i32, i32* %0, align 8, !dbg !3225
  %bf.clear = and i32 %bf.load, 65535, !dbg !3225
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3225
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3225

lor.lhs.false:                                    ; preds = %if.then
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3225
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3225

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3225
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3225

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3225
  br i1 %cmp11, label %land.lhs.true, label %if.end, !dbg !3226

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %if.then
  %bf.clear13 = and i32 %bf.load, 67108864, !dbg !3227
  %tobool14 = icmp eq i32 %bf.clear13, 0, !dbg !3227
  br i1 %tobool14, label %if.end, label %land.lhs.true15, !dbg !3228

land.lhs.true15:                                  ; preds = %land.lhs.true
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3229
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3229
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3229
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3229
  %rt_rtx19 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3229
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx19, align 8, !dbg !3229
  %cmp20 = icmp eq %struct.rtx_def* %4, %insn, !dbg !3230
  br i1 %cmp20, label %if.end, label %if.then21, !dbg !3231

if.then21:                                        ; preds = %land.lhs.true15
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3232
  %rt_rtx25 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3232
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx25, align 8, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3216, metadata !DIExpression()), !dbg !3233
  br label %while.cond, !dbg !3234

while.cond:                                       ; preds = %while.body, %if.then21
  %.pn = phi %struct.rtx_def* [ %6, %if.then21 ], [ %9, %while.body ]
  %next.0 = phi %struct.rtx_def* [ %6, %if.then21 ], [ %9, %while.body ], !dbg !3233
  %insn.addr.0 = phi %struct.rtx_def* [ %insn, %if.then21 ], [ %next.0, %while.body ]
  %code.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.pn, i64 0, i32 0, !dbg !3233
  %code.0.in = load i32, i32* %code.0.in.in, align 8, !dbg !3233
  %code.0 = and i32 %code.0.in, 65535, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.0, metadata !3216, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3221, metadata !DIExpression()), !dbg !3233
  %code.0.off = add nsw i32 %code.0, -8, !dbg !3235
  %switch = icmp ult i32 %code.0.off, 3, !dbg !3235
  br i1 %switch, label %land.rhs, label %if.end.loopexit, !dbg !3235

land.rhs:                                         ; preds = %while.cond
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %next.0, i64 0, i32 0, !dbg !3236
  %bf.load33 = load i32, i32* %7, align 8, !dbg !3236
  %bf.clear35 = and i32 %bf.load33, 268435456, !dbg !3236
  %tobool36 = icmp eq i32 %bf.clear35, 0, !dbg !3237
  br i1 %tobool36, label %if.end.loopexit, label %while.body, !dbg !3234

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.0, metadata !3215, metadata !DIExpression()), !dbg !3222
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %next.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3238
  %rt_rtx40 = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3238
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx40, align 8, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3216, metadata !DIExpression()), !dbg !3233
  br label %while.cond, !dbg !3234, !llvm.loop !3240

if.end.loopexit:                                  ; preds = %while.cond, %land.rhs
  %insn.addr.0.lcssa = phi %struct.rtx_def* [ %insn.addr.0, %while.cond ], [ %insn.addr.0, %land.rhs ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3222
  br label %if.end, !dbg !3242

if.end:                                           ; preds = %if.end.loopexit, %land.lhs.true15, %land.lhs.true, %lor.lhs.false8
  %insn.addr.1 = phi %struct.rtx_def* [ %insn, %land.lhs.true15 ], [ %insn, %land.lhs.true ], [ %insn, %lor.lhs.false8 ], [ %insn.addr.0.lcssa, %if.end.loopexit ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.1, metadata !3215, metadata !DIExpression()), !dbg !3222
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3242
  %rt_rtx46 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !3242
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx46, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !3215, metadata !DIExpression()), !dbg !3222
  %tobool47 = icmp eq %struct.rtx_def* %11, null, !dbg !3243
  br i1 %tobool47, label %if.end70, label %land.lhs.true48, !dbg !3245

land.lhs.true48:                                  ; preds = %if.end
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 0, !dbg !3246
  %bf.load49 = load i32, i32* %12, align 8, !dbg !3246
  %bf.clear50 = and i32 %bf.load49, 65535, !dbg !3246
  %cmp51 = icmp eq i32 %bf.clear50, 8, !dbg !3246
  br i1 %cmp51, label %land.lhs.true52, label %if.end70, !dbg !3247

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %u53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, !dbg !3248
  %13 = getelementptr inbounds %union.u, %union.u* %u53, i64 1, i32 0, i32 0, i64 0, !dbg !3248
  %14 = bitcast %union.rtunion_def* %13 to i32**, !dbg !3248
  %15 = load i32*, i32** %14, align 8, !dbg !3248
  %bf.load57 = load i32, i32* %15, align 8, !dbg !3248
  %bf.clear58 = and i32 %bf.load57, 65535, !dbg !3248
  %cmp59 = icmp eq i32 %bf.clear58, 5, !dbg !3249
  br i1 %cmp59, label %if.then60, label %if.end70, !dbg !3250

if.then60:                                        ; preds = %land.lhs.true52
  %arrayidx67 = getelementptr inbounds i32, i32* %15, i64 2, !dbg !3251
  %rt_rtvec = bitcast i32* %arrayidx67 to %struct.rtvec_def**, !dbg !3251
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3251
  %arrayidx68 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i64 0, i32 1, i64 0, !dbg !3251
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx68, align 8, !dbg !3251
  call void @llvm.dbg.value(metadata %struct.rtx_def* %17, metadata !3215, metadata !DIExpression()), !dbg !3222
  br label %if.end70, !dbg !3252

if.end70:                                         ; preds = %if.end, %entry, %land.lhs.true48, %land.lhs.true52, %if.then60
  %insn.addr.3 = phi %struct.rtx_def* [ null, %entry ], [ %17, %if.then60 ], [ %11, %land.lhs.true52 ], [ %11, %land.lhs.true48 ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.3, metadata !3215, metadata !DIExpression()), !dbg !3222
  ret %struct.rtx_def* %insn.addr.3, !dbg !3253
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %target, %struct.resources* %res, %struct.rtx_def** %jump_target, i32 %jump_count, i64 %set.coerce0, i64 %set.coerce1, %struct.resources* byval(%struct.resources) align 8 %needed) unnamed_addr #5 !dbg !3254 {
entry:
  %set = alloca %struct.resources, align 8
  %target_set = alloca %struct.resources, align 8
  %target_res = alloca %struct.resources, align 8
  %fallthrough_res = alloca %struct.resources, align 8
  %0 = bitcast %struct.resources* %set to i64*
  store i64 %set.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 4
  store i64 %set.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !3259, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.resources* %res, metadata !3260, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def** %jump_target, metadata !3261, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i32 %jump_count, metadata !3262, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.declare(metadata %struct.resources* %needed, metadata !3264, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3268, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target, metadata !3266, metadata !DIExpression()), !dbg !3284
  %regs = getelementptr inbounds %struct.resources, %struct.resources* %needed, i64 0, i32 4, !dbg !3286
  %regs3 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 4, !dbg !3286
  %2 = getelementptr inbounds %struct.resources, %struct.resources* %target_set, i64 0, i32 0, !dbg !3288
  %3 = getelementptr inbounds %struct.resources, %struct.resources* %target_res, i64 0, i32 0, !dbg !3288
  %4 = getelementptr inbounds %struct.resources, %struct.resources* %fallthrough_res, i64 0, i32 0, !dbg !3288
  %5 = getelementptr inbounds %struct.resources, %struct.resources* %set, i64 0, i32 0, !dbg !3289
  %6 = getelementptr inbounds %struct.resources, %struct.resources* %res, i64 0, i32 0, !dbg !3288
  %regs257 = getelementptr inbounds %struct.resources, %struct.resources* %target_set, i64 0, i32 4, !dbg !3288
  %regs262 = getelementptr inbounds %struct.resources, %struct.resources* %target_res, i64 0, i32 4, !dbg !3288
  %regs269 = getelementptr inbounds %struct.resources, %struct.resources* %fallthrough_res, i64 0, i32 4, !dbg !3288
  %7 = bitcast %struct.resources* %target_set to i64*, !dbg !3288
  %tobool138 = icmp eq %struct.rtx_def** %jump_target, null, !dbg !3292
  %8 = bitcast %struct.rtx_def** %jump_target to i64*, !dbg !3292
  br label %for.cond, !dbg !3297

for.cond:                                         ; preds = %cleanup296, %entry
  %jump_insn.0 = phi %struct.rtx_def* [ null, %entry ], [ %jump_insn.3, %cleanup296 ], !dbg !3298
  %insn.0 = phi %struct.rtx_def* [ %target, %entry ], [ %next.1, %cleanup296 ], !dbg !3299
  %jump_count.addr.0 = phi i32 [ %jump_count, %entry ], [ %jump_count.addr.2, %cleanup296 ]
  call void @llvm.dbg.value(metadata i32 %jump_count.addr.0, metadata !3262, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3266, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %jump_insn.0, metadata !3268, metadata !DIExpression()), !dbg !3284
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3300
  br i1 %tobool, label %for.end298, label %for.body, !dbg !3300

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3270, metadata !DIExpression()), !dbg !3301
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3302
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3302
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3267, metadata !DIExpression()), !dbg !3284
  %call = call zeroext i8 @can_throw_internal(%struct.rtx_def* nonnull %insn.0) #6, !dbg !3303
  %tobool1 = icmp eq i8 %call, 0, !dbg !3303
  br i1 %tobool1, label %if.end, label %cleanup296, !dbg !3305

if.end:                                           ; preds = %for.body
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3306
  %bf.load = load i32, i32* %11, align 8, !dbg !3306
  %trunc = trunc i32 %bf.load to i16, !dbg !3307
  switch i16 %trunc, label %sw.epilog [
    i16 12, label %sw.bb
    i16 11, label %cleanup296
    i16 13, label %cleanup296
    i16 8, label %sw.bb6
  ], !dbg !3307

sw.bb:                                            ; preds = %if.end
  %12 = load i64, i64* %regs, align 8, !dbg !3308
  %13 = load i64, i64* @pending_dead_regs, align 8, !dbg !3308
  %.not12 = xor i64 %13, -1, !dbg !3309
  %neg2 = or i64 %12, %.not12, !dbg !3309
  %14 = load i64, i64* %regs3, align 8, !dbg !3309
  %and4 = and i64 %14, %neg2, !dbg !3309
  store i64 %and4, i64* %regs3, align 8, !dbg !3309
  store i64 0, i64* @pending_dead_regs, align 8, !dbg !3310
  br label %cleanup296, !dbg !3311

sw.bb6:                                           ; preds = %if.end
  %u7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3312
  %15 = getelementptr inbounds %union.u, %union.u* %u7, i64 1, i32 0, i32 0, i64 0, !dbg !3312
  %16 = bitcast %union.rtunion_def* %15 to i32**, !dbg !3312
  %17 = load i32*, i32** %16, align 8, !dbg !3312
  %bf.load11 = load i32, i32* %17, align 8, !dbg !3312
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !3312
  %cmp = icmp eq i32 %bf.clear12, 24, !dbg !3314
  br i1 %cmp, label %if.then13, label %if.else, !dbg !3315

if.then13:                                        ; preds = %sw.bb6
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !3316
  %18 = bitcast i32* %arrayidx20 to i32**, !dbg !3316
  %19 = load i32*, i32** %18, align 8, !dbg !3316
  %bf.load22 = load i32, i32* %19, align 8, !dbg !3316
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !3316
  %cmp24 = icmp eq i32 %bf.clear23, 8, !dbg !3316
  %20 = bitcast i32* %19 to %struct.rtx_def*, !dbg !3316
  br i1 %cmp24, label %if.then60, label %lor.lhs.false, !dbg !3316

lor.lhs.false:                                    ; preds = %if.then13
  %cmp35 = icmp eq i32 %bf.clear23, 7, !dbg !3316
  br i1 %cmp35, label %if.then60, label %lor.lhs.false36, !dbg !3316

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %cmp47 = icmp eq i32 %bf.clear23, 9, !dbg !3316
  br i1 %cmp47, label %if.then60, label %lor.lhs.false48, !dbg !3316

lor.lhs.false48:                                  ; preds = %lor.lhs.false36
  %cmp59 = icmp eq i32 %bf.clear23, 10, !dbg !3316
  br i1 %cmp59, label %if.then60, label %cleanup296, !dbg !3319

if.then60:                                        ; preds = %lor.lhs.false48, %lor.lhs.false36, %lor.lhs.false, %if.then13
  call void @mark_set_resources(%struct.rtx_def* %20, %struct.resources* %res, i32 0, i32 1) #7, !dbg !3320
  br label %cleanup296, !dbg !3320

if.else:                                          ; preds = %sw.bb6
  %cmp76 = icmp eq i32 %bf.clear12, 25, !dbg !3321
  br i1 %cmp76, label %cleanup296, label %if.else78, !dbg !3323

if.else78:                                        ; preds = %if.else
  %cmp85 = icmp eq i32 %bf.clear12, 5, !dbg !3324
  br i1 %cmp85, label %for.cond87.preheader, label %sw.epilog, !dbg !3326

for.cond87.preheader:                             ; preds = %if.else78
  %arrayidx94 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !3327
  %rt_rtvec = bitcast i32* %arrayidx94 to %struct.rtvec_def**, !dbg !3327
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3327
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 0, !dbg !3327
  %22 = load i32, i32* %num_elem, align 8, !dbg !3327
  %23 = sext i32 %22 to i64, !dbg !3331
  br label %for.cond87, !dbg !3331

for.cond87:                                       ; preds = %for.cond87.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond87.preheader ], [ %indvars.iv.next, %for.inc ]
  %bf.load114.pre.pre = phi i32 [ %bf.load, %for.cond87.preheader ], [ %bf.load106, %for.inc ]
  %this_jump_insn.0 = phi %struct.rtx_def* [ %insn.0, %for.cond87.preheader ], [ %24, %for.inc ], !dbg !3301
  call void @llvm.dbg.value(metadata %struct.rtx_def* %this_jump_insn.0, metadata !3270, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3269, metadata !DIExpression()), !dbg !3284
  %cmp95 = icmp slt i64 %indvars.iv, %23, !dbg !3332
  br i1 %cmp95, label %for.body96, label %for.cond87.sw.epilog.loopexit_crit_edge, !dbg !3331

for.cond87.sw.epilog.loopexit_crit_edge:          ; preds = %for.cond87
  %bf.load114.pre.pre.lcssa = phi i32 [ %bf.load114.pre.pre, %for.cond87 ]
  %this_jump_insn.0.lcssa = phi %struct.rtx_def* [ %this_jump_insn.0, %for.cond87 ], !dbg !3301
  call void @llvm.dbg.value(metadata %struct.rtx_def* %this_jump_insn.0.lcssa, metadata !3270, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %struct.rtx_def* %this_jump_insn.0.lcssa, metadata !3270, metadata !DIExpression()), !dbg !3301
  br label %sw.epilog.loopexit, !dbg !3331

for.body96:                                       ; preds = %for.cond87
  %arrayidx105 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv, !dbg !3333
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx105, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !3270, metadata !DIExpression()), !dbg !3301
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 0, !dbg !3335
  %bf.load106 = load i32, i32* %25, align 8, !dbg !3335
  %bf.clear107 = and i32 %bf.load106, 65535, !dbg !3335
  %cmp108 = icmp eq i32 %bf.clear107, 9, !dbg !3335
  br i1 %cmp108, label %sw.epilog.loopexit.loopexit, label %for.inc, !dbg !3337

for.inc:                                          ; preds = %for.body96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3338
  call void @llvm.dbg.value(metadata i32 undef, metadata !3269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  br label %for.cond87, !dbg !3339, !llvm.loop !3340

sw.epilog.loopexit.loopexit:                      ; preds = %for.body96
  %.lcssa = phi %struct.rtx_def* [ %24, %for.body96 ], !dbg !3333
  %bf.load106.lcssa = phi i32 [ %bf.load106, %for.body96 ], !dbg !3335
  br label %sw.epilog.loopexit, !dbg !3342

sw.epilog.loopexit:                               ; preds = %sw.epilog.loopexit.loopexit, %for.cond87.sw.epilog.loopexit_crit_edge
  %bf.load114.pre = phi i32 [ %bf.load114.pre.pre.lcssa, %for.cond87.sw.epilog.loopexit_crit_edge ], [ %bf.load106.lcssa, %sw.epilog.loopexit.loopexit ], !dbg !3342
  %this_jump_insn.3.ph = phi %struct.rtx_def* [ %this_jump_insn.0.lcssa, %for.cond87.sw.epilog.loopexit_crit_edge ], [ %.lcssa, %sw.epilog.loopexit.loopexit ]
  br label %sw.epilog, !dbg !3342

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.end, %if.else78
  %bf.load114 = phi i32 [ %bf.load, %if.end ], [ %bf.load, %if.else78 ], [ %bf.load114.pre, %sw.epilog.loopexit ], !dbg !3342
  %this_jump_insn.3 = phi %struct.rtx_def* [ %insn.0, %if.end ], [ %insn.0, %if.else78 ], [ %this_jump_insn.3.ph, %sw.epilog.loopexit ], !dbg !3301
  call void @llvm.dbg.value(metadata %struct.rtx_def* %this_jump_insn.3, metadata !3270, metadata !DIExpression()), !dbg !3301
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %this_jump_insn.3, i64 0, i32 0, !dbg !3342
  %bf.clear115 = and i32 %bf.load114, 65535, !dbg !3342
  %cmp116 = icmp eq i32 %bf.clear115, 9, !dbg !3342
  br i1 %cmp116, label %if.then117, label %if.end288, !dbg !3343

if.then117:                                       ; preds = %sw.epilog
  %inc118 = add nsw i32 %jump_count.addr.0, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %inc118, metadata !3262, metadata !DIExpression()), !dbg !3284
  %cmp119 = icmp slt i32 %jump_count.addr.0, 10, !dbg !3345
  br i1 %cmp119, label %if.then120, label %cleanup296, !dbg !3346

if.then120:                                       ; preds = %if.then117
  %call121 = call i32 @any_uncondjump_p(%struct.rtx_def* %this_jump_insn.3) #6, !dbg !3347
  %tobool122 = icmp eq i32 %call121, 0, !dbg !3347
  br i1 %tobool122, label %lor.lhs.false123, label %if.then131, !dbg !3348

lor.lhs.false123:                                 ; preds = %if.then120
  %u124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %this_jump_insn.3, i64 0, i32 1, !dbg !3349
  %27 = getelementptr inbounds %union.u, %union.u* %u124, i64 1, i32 0, i32 0, i64 0, !dbg !3349
  %28 = bitcast %union.rtunion_def* %27 to i32**, !dbg !3349
  %29 = load i32*, i32** %28, align 8, !dbg !3349
  %bf.load128 = load i32, i32* %29, align 8, !dbg !3349
  %bf.clear129 = and i32 %bf.load128, 65535, !dbg !3349
  %cmp130 = icmp eq i32 %bf.clear129, 27, !dbg !3350
  br i1 %cmp130, label %if.then131, label %if.else146, !dbg !3351

if.then131:                                       ; preds = %if.then120, %lor.lhs.false123
  %u132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %this_jump_insn.3, i64 0, i32 1, !dbg !3352
  %arrayidx134 = getelementptr inbounds %union.u, %union.u* %u132, i64 1, i32 0, i32 1, !dbg !3352
  %rt_rtx135 = bitcast %struct.object_block** %arrayidx134 to %struct.rtx_def**, !dbg !3352
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx135, align 8, !dbg !3352
  call void @llvm.dbg.value(metadata %struct.rtx_def* %30, metadata !3267, metadata !DIExpression()), !dbg !3284
  %cmp136 = icmp eq %struct.rtx_def* %jump_insn.0, null, !dbg !3353
  %31 = ptrtoint %struct.rtx_def* %30 to i64, !dbg !3354
  br i1 %cmp136, label %if.then137, label %if.end288, !dbg !3354

if.then137:                                       ; preds = %if.then131
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3268, metadata !DIExpression()), !dbg !3284
  br i1 %tobool138, label %if.end288, label %if.then139, !dbg !3355

if.then139:                                       ; preds = %if.then137
  store i64 %31, i64* %8, align 8, !dbg !3356
  br label %if.end288, !dbg !3357

if.else146:                                       ; preds = %lor.lhs.false123
  %call147 = call i32 @any_condjump_p(%struct.rtx_def* %this_jump_insn.3) #6, !dbg !3358
  %tobool148 = icmp eq i32 %call147, 0, !dbg !3358
  br i1 %tobool148, label %cleanup296, label %if.then149, !dbg !3359

if.then149:                                       ; preds = %if.else146
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3360
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3360
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3361
  %add = add nsw i32 %jump_count.addr.0, 5, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %add, metadata !3262, metadata !DIExpression()), !dbg !3284
  %cmp150 = icmp sgt i32 %add, 9, !dbg !3363
  br i1 %cmp150, label %cleanup, label %if.end152, !dbg !3365

if.end152:                                        ; preds = %if.then149
  call void @mark_referenced_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %needed, i8 zeroext 1) #7, !dbg !3366
  %u153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3367
  %32 = getelementptr inbounds %union.u, %union.u* %u153, i64 1, i32 0, i32 0, i64 0, !dbg !3367
  %33 = bitcast %union.rtunion_def* %32 to i32**, !dbg !3367
  %34 = load i32*, i32** %33, align 8, !dbg !3367
  %bf.load157 = load i32, i32* %34, align 8, !dbg !3367
  %bf.clear158 = and i32 %bf.load157, 65535, !dbg !3367
  %cmp159 = icmp eq i32 %bf.clear158, 5, !dbg !3368
  %35 = bitcast i32* %34 to %struct.rtx_def*, !dbg !3369
  br i1 %cmp159, label %land.lhs.true, label %if.else255, !dbg !3369

land.lhs.true:                                    ; preds = %if.end152
  %bf.load160 = load i32, i32* %26, align 8, !dbg !3370
  %bf.clear161 = and i32 %bf.load160, 67108864, !dbg !3370
  %tobool162 = icmp eq i32 %bf.clear161, 0, !dbg !3370
  br i1 %tobool162, label %if.else255, label %for.cond164.preheader, !dbg !3371

for.cond164.preheader:                            ; preds = %land.lhs.true
  %rt_rtx168 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !3372
  br label %for.cond164, !dbg !3375

for.cond164:                                      ; preds = %for.cond164.preheader, %for.body175
  %indvars.iv8 = phi i64 [ 1, %for.cond164.preheader ], [ %indvars.iv.next9, %for.body175 ]
  %36 = phi %struct.rtx_def* [ %35, %for.cond164.preheader ], [ %.pre, %for.body175 ]
  %37 = phi %struct.rtx_def* [ %35, %for.cond164.preheader ], [ %.pre, %for.body175 ]
  %38 = phi %struct.rtx_def* [ %35, %for.cond164.preheader ], [ %.pre, %for.body175 ], !dbg !3376
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3269, metadata !DIExpression()), !dbg !3284
  %arrayidx171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3376
  %rt_rtvec172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtvec_def**, !dbg !3376
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec172, align 8, !dbg !3376
  %num_elem173 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i64 0, i32 0, !dbg !3376
  %40 = load i32, i32* %num_elem173, align 8, !dbg !3376
  %41 = sext i32 %40 to i64, !dbg !3377
  %cmp174 = icmp slt i64 %indvars.iv8, %41, !dbg !3377
  br i1 %cmp174, label %for.body175, label %for.end206, !dbg !3375

for.body175:                                      ; preds = %for.cond164
  %arrayidx182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3378
  %rt_rtvec183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtvec_def**, !dbg !3378
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec183, align 8, !dbg !3378
  %arrayidx186 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i64 0, i32 1, i64 %indvars.iv8, !dbg !3378
  %43 = bitcast %struct.rtx_def** %arrayidx186 to i32**, !dbg !3378
  %44 = load i32*, i32** %43, align 8, !dbg !3378
  %bf.load187 = load i32, i32* %44, align 8, !dbg !3378
  %bf.clear189.lobit = and i32 %bf.load187, 268435456, !dbg !3379
  %arrayidx197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3380
  %rt_rtvec198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtvec_def**, !dbg !3380
  %45 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec198, align 8, !dbg !3380
  %arrayidx201 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %45, i64 0, i32 1, i64 %indvars.iv8, !dbg !3380
  %46 = bitcast %struct.rtx_def** %arrayidx201 to i32**, !dbg !3380
  %47 = load i32*, i32** %46, align 8, !dbg !3380
  %bf.load202 = load i32, i32* %47, align 8, !dbg !3381
  %bf.clear203 = and i32 %bf.load202, -268435457, !dbg !3381
  %48 = or i32 %bf.clear189.lobit, %bf.clear203, !dbg !3381
  %bf.set = xor i32 %48, 268435456, !dbg !3381
  store i32 %bf.set, i32* %47, align 8, !dbg !3381
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx168, align 8, !dbg !3376
  br label %for.cond164, !dbg !3383, !llvm.loop !3384

for.end206:                                       ; preds = %for.cond164
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.resources* %target_set, metadata !3274, metadata !DIExpression(DW_OP_deref)), !dbg !3288
  call void @mark_set_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %target_set, i32 0, i32 1) #7, !dbg !3387
  call void @llvm.dbg.value(metadata i32 1, metadata !3269, metadata !DIExpression()), !dbg !3284
  br label %for.cond207, !dbg !3388

for.cond207:                                      ; preds = %for.body218, %for.end206
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.body218 ], [ 1, %for.end206 ], !dbg !3390
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !3269, metadata !DIExpression()), !dbg !3284
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx168, align 8, !dbg !3391
  %arrayidx214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3391
  %rt_rtvec215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtvec_def**, !dbg !3391
  %50 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec215, align 8, !dbg !3391
  %num_elem216 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %50, i64 0, i32 0, !dbg !3391
  %51 = load i32, i32* %num_elem216, align 8, !dbg !3391
  %52 = sext i32 %51 to i64, !dbg !3393
  %cmp217 = icmp slt i64 %indvars.iv10, %52, !dbg !3393
  br i1 %cmp217, label %for.body218, label %for.end254, !dbg !3394

for.body218:                                      ; preds = %for.cond207
  %arrayidx229 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %50, i64 0, i32 1, i64 %indvars.iv10, !dbg !3395
  %53 = bitcast %struct.rtx_def** %arrayidx229 to i32**, !dbg !3395
  %54 = load i32*, i32** %53, align 8, !dbg !3395
  %bf.load230 = load i32, i32* %54, align 8, !dbg !3395
  %bf.set251 = xor i32 %bf.load230, 268435456, !dbg !3396
  store i32 %bf.set251, i32* %54, align 8, !dbg !3396
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !3397
  call void @llvm.dbg.value(metadata i32 undef, metadata !3269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3284
  br label %for.cond207, !dbg !3398, !llvm.loop !3399

for.end254:                                       ; preds = %for.cond207
  call void @llvm.dbg.value(metadata %struct.resources* %set, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3284
  call void @mark_set_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %set, i32 0, i32 1) #7, !dbg !3401
  br label %if.end256, !dbg !3402

if.else255:                                       ; preds = %land.lhs.true, %if.end152
  call void @llvm.dbg.value(metadata %struct.resources* %set, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3284
  call void @mark_set_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %set, i32 0, i32 1) #7, !dbg !3403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !3405
  br label %if.end256

if.end256:                                        ; preds = %if.else255, %for.end254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 %6, i64 16, i1 false), !dbg !3406
  %55 = load i64, i64* %regs257, align 8, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %55, metadata !3265, metadata !DIExpression()), !dbg !3284
  %56 = load i64, i64* %regs, align 8, !dbg !3408
  %.not1 = xor i64 %55, -1, !dbg !3409
  %neg261 = or i64 %56, %.not1, !dbg !3409
  %57 = load i64, i64* %regs262, align 8, !dbg !3409
  %and263 = and i64 %57, %neg261, !dbg !3409
  store i64 %and263, i64* %regs262, align 8, !dbg !3409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 %6, i64 16, i1 false), !dbg !3410
  %58 = load i64, i64* %1, align 8, !dbg !3411
  call void @llvm.dbg.value(metadata i64 %58, metadata !3265, metadata !DIExpression()), !dbg !3284
  %.not2 = xor i64 %58, -1, !dbg !3412
  %neg268 = or i64 %56, %.not2, !dbg !3412
  %59 = load i64, i64* %regs269, align 8, !dbg !3412
  %and270 = and i64 %59, %neg268, !dbg !3412
  store i64 %and270, i64* %regs269, align 8, !dbg !3412
  %arrayidx273 = getelementptr inbounds %union.u, %union.u* %u124, i64 1, i32 0, i32 1, !dbg !3413
  %rt_rtx274 = bitcast %struct.object_block** %arrayidx273 to %struct.rtx_def**, !dbg !3413
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx274, align 8, !dbg !3413
  %61 = load i64, i64* %7, align 8, !dbg !3414
  call void @llvm.dbg.value(metadata %struct.resources* %target_res, metadata !3282, metadata !DIExpression(DW_OP_deref)), !dbg !3288
  %call275 = call fastcc %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %60, %struct.resources* nonnull %target_res, %struct.rtx_def** null, i32 %add, i64 %61, i64 %55, %struct.resources* nonnull byval(%struct.resources) align 8 %needed) #7, !dbg !3414
  %62 = load i64, i64* %0, align 8, !dbg !3415
  %63 = load i64, i64* %1, align 8, !dbg !3415
  call void @llvm.dbg.value(metadata %struct.resources* %fallthrough_res, metadata !3283, metadata !DIExpression(DW_OP_deref)), !dbg !3288
  %call276 = call fastcc %struct.rtx_def* @find_dead_or_set_registers(%struct.rtx_def* %10, %struct.resources* nonnull %fallthrough_res, %struct.rtx_def** null, i32 %add, i64 %62, i64 %63, %struct.resources* nonnull byval(%struct.resources) align 8 %needed) #7, !dbg !3415
  %64 = load i64, i64* %regs262, align 8, !dbg !3416
  %65 = load i64, i64* %regs269, align 8, !dbg !3416
  %or = or i64 %65, %64, !dbg !3416
  store i64 %or, i64* %regs269, align 8, !dbg !3416
  %66 = load i64, i64* %regs3, align 8, !dbg !3417
  %and281 = and i64 %66, %or, !dbg !3417
  store i64 %and281, i64* %regs3, align 8, !dbg !3417
  br label %cleanup, !dbg !3418

cleanup:                                          ; preds = %if.then149, %if.end256
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !3419
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3419
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3419
  br label %cleanup296

if.end288:                                        ; preds = %if.then137, %if.then131, %if.then139, %sw.epilog
  %jump_insn.2 = phi %struct.rtx_def* [ %jump_insn.0, %sw.epilog ], [ %jump_insn.0, %if.then131 ], [ %insn.0, %if.then139 ], [ %insn.0, %if.then137 ], !dbg !3284
  %next.0 = phi %struct.rtx_def* [ %10, %sw.epilog ], [ %30, %if.then131 ], [ %30, %if.then139 ], [ %30, %if.then137 ], !dbg !3301
  %jump_count.addr.1 = phi i32 [ %jump_count.addr.0, %sw.epilog ], [ %inc118, %if.then131 ], [ %inc118, %if.then139 ], [ %inc118, %if.then137 ]
  call void @llvm.dbg.value(metadata i32 %jump_count.addr.1, metadata !3262, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.0, metadata !3267, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %jump_insn.2, metadata !3268, metadata !DIExpression()), !dbg !3284
  call void @mark_referenced_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %needed, i8 zeroext 1) #7, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.resources* %set, metadata !3263, metadata !DIExpression(DW_OP_deref)), !dbg !3284
  call void @mark_set_resources(%struct.rtx_def* nonnull %insn.0, %struct.resources* nonnull %set, i32 0, i32 1) #7, !dbg !3421
  %67 = load i64, i64* %1, align 8, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %67, metadata !3265, metadata !DIExpression()), !dbg !3284
  %68 = load i64, i64* %regs, align 8, !dbg !3423
  %.not = xor i64 %67, -1, !dbg !3424
  %neg293 = or i64 %68, %.not, !dbg !3424
  %69 = load i64, i64* %regs3, align 8, !dbg !3424
  %and295 = and i64 %69, %neg293, !dbg !3424
  store i64 %and295, i64* %regs3, align 8, !dbg !3424
  br label %cleanup296, !dbg !3425

cleanup296:                                       ; preds = %if.else146, %for.body, %if.then117, %if.else, %lor.lhs.false48, %if.then60, %if.end, %if.end, %if.end288, %cleanup, %sw.bb
  %jump_insn.3 = phi %struct.rtx_def* [ %jump_insn.2, %if.end288 ], [ %jump_insn.0, %cleanup ], [ %jump_insn.0, %sw.bb ], [ %jump_insn.0, %for.body ], [ %jump_insn.0, %if.end ], [ %jump_insn.0, %if.end ], [ %jump_insn.0, %if.then60 ], [ %jump_insn.0, %lor.lhs.false48 ], [ %jump_insn.0, %if.else ], [ %jump_insn.0, %if.else146 ], [ null, %if.then117 ], !dbg !3284
  %next.1 = phi %struct.rtx_def* [ %next.0, %if.end288 ], [ %10, %cleanup ], [ %10, %sw.bb ], [ %10, %for.body ], [ %10, %if.end ], [ %10, %if.end ], [ %10, %if.then60 ], [ %10, %lor.lhs.false48 ], [ %10, %if.else ], [ %10, %if.else146 ], [ %10, %if.then117 ], !dbg !3301
  %jump_count.addr.2 = phi i32 [ %jump_count.addr.1, %if.end288 ], [ %add, %cleanup ], [ %jump_count.addr.0, %sw.bb ], [ %jump_count.addr.0, %for.body ], [ %jump_count.addr.0, %if.end ], [ %jump_count.addr.0, %if.end ], [ %jump_count.addr.0, %if.then60 ], [ %jump_count.addr.0, %lor.lhs.false48 ], [ %jump_count.addr.0, %if.else ], [ %inc118, %if.else146 ], [ %inc118, %if.then117 ]
  %cleanup.dest.slot.1 = phi i1 [ false, %if.end288 ], [ true, %cleanup ], [ false, %sw.bb ], [ true, %for.body ], [ false, %if.end ], [ false, %if.end ], [ false, %if.then60 ], [ false, %lor.lhs.false48 ], [ false, %if.else ], [ true, %if.else146 ], [ true, %if.then117 ]
  call void @llvm.dbg.value(metadata i32 %jump_count.addr.2, metadata !3262, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next.1, metadata !3267, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %jump_insn.3, metadata !3268, metadata !DIExpression()), !dbg !3284
  br i1 %cleanup.dest.slot.1, label %for.end298, label %for.cond, !llvm.loop !3426

for.end298:                                       ; preds = %for.cond, %cleanup296
  %jump_insn.4 = phi %struct.rtx_def* [ %jump_insn.3, %cleanup296 ], [ %jump_insn.0, %for.cond ], !dbg !3298
  call void @llvm.dbg.value(metadata %struct.rtx_def* %jump_insn.4, metadata !3268, metadata !DIExpression()), !dbg !3284
  ret %struct.rtx_def* %jump_insn.4, !dbg !3428
}

declare dso_local %struct.rtx_def* @next_active_insn(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_resource_info(%struct.rtx_def* %epilogue_insn) local_unnamed_addr #5 !dbg !3429 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %epilogue_insn, metadata !3433, metadata !DIExpression()), !dbg !3436
  store i8 0, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 3), align 1, !dbg !3437
  store i8 1, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 0), align 8, !dbg !3438
  store i8 0, i8* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 1), align 1, !dbg !3439
  store i64 0, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3440
  %0 = load i8, i8* getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 41), align 1, !dbg !3441
  %tobool = icmp eq i8 %0, 0, !dbg !3441
  br i1 %tobool, label %if.else, label %if.then, !dbg !3443

if.then:                                          ; preds = %entry
  store i64 1048640, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3444
  %1 = load i32, i32* @current_function_sp_is_unchanging, align 4, !dbg !3446
  %tobool2 = icmp eq i32 %1, 0, !dbg !3446
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !3448

if.then3:                                         ; preds = %if.then
  store i64 1048768, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3449
  br label %if.end6, !dbg !3449

if.else:                                          ; preds = %entry
  store i64 128, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3450
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then3, %if.else
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.rtl_data, %struct.rtl_data* @x_rtl, i64 0, i32 7), align 8, !dbg !3451
  %cmp = icmp eq %struct.rtx_def* %2, null, !dbg !3453
  br i1 %cmp, label %if.end8, label %if.then7, !dbg !3454

if.then7:                                         ; preds = %if.end6
  tail call void @mark_referenced_resources(%struct.rtx_def* nonnull %2, %struct.resources* nonnull @end_of_function_needs, i8 zeroext 1) #7, !dbg !3455
  br label %if.end8, !dbg !3455

if.end8:                                          ; preds = %if.end6, %if.then7
  call void @llvm.dbg.value(metadata i32 0, metadata !3434, metadata !DIExpression()), !dbg !3436
  br label %for.cond, !dbg !3456

for.cond:                                         ; preds = %for.inc, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end8 ], !dbg !3458
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3434, metadata !DIExpression()), !dbg !3436
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !3459
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3461

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i64 0, i64 %indvars.iv, !dbg !3462
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3462
  %tobool10 = icmp eq i8 %3, 0, !dbg !3462
  br i1 %tobool10, label %for.inc, label %if.then11, !dbg !3464

if.then11:                                        ; preds = %for.body
  %shl = shl i64 1, %indvars.iv, !dbg !3465
  %4 = load i64, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3465
  %or12 = or i64 %4, %shl, !dbg !3465
  store i64 %or12, i64* getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 4), align 8, !dbg !3465
  br label %for.inc, !dbg !3465

for.inc:                                          ; preds = %for.body, %if.then11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3466
  call void @llvm.dbg.value(metadata i32 undef, metadata !3434, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3436
  br label %for.cond, !dbg !3467, !llvm.loop !3468

for.end:                                          ; preds = %for.cond
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds (%struct.resources, %struct.resources* @start_of_epilogue_needs, i64 0, i32 0), i8* align 8 getelementptr inbounds (%struct.resources, %struct.resources* @end_of_function_needs, i64 0, i32 0), i64 16, i1 false), !dbg !3470
  br label %while.cond, !dbg !3471

while.cond:                                       ; preds = %while.body, %for.end
  %epilogue_insn.addr.0 = phi %struct.rtx_def* [ %epilogue_insn, %for.end ], [ %call, %while.body ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %epilogue_insn.addr.0, metadata !3433, metadata !DIExpression()), !dbg !3436
  %call = tail call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %epilogue_insn.addr.0) #6, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3433, metadata !DIExpression()), !dbg !3436
  %tobool14 = icmp eq %struct.rtx_def* %call, null, !dbg !3471
  br i1 %tobool14, label %while.end, label %while.body, !dbg !3471

while.body:                                       ; preds = %while.cond
  tail call void @mark_set_resources(%struct.rtx_def* nonnull %call, %struct.resources* nonnull @end_of_function_needs, i32 0, i32 1) #7, !dbg !3473
  %call15 = tail call fastcc zeroext i8 @return_insn_p(%struct.rtx_def* nonnull %call) #7, !dbg !3475
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3475
  br i1 %tobool16, label %while.cond, label %while.end, !dbg !3477, !llvm.loop !3478

while.end:                                        ; preds = %while.body, %while.cond
  %call19 = tail call i8* @xcalloc(i64 257, i64 8) #6, !dbg !3480
  store i8* %call19, i8** bitcast (%struct.target_info*** @target_hash_table to i8**), align 8, !dbg !3481
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3482
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3482
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3482
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 5, !dbg !3482
  %7 = load i32, i32* %x_last_basic_block, align 8, !dbg !3482
  %conv = sext i32 %7 to i64, !dbg !3482
  %call20 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !3482
  store i8* %call20, i8** bitcast (i32** @bb_ticks to i8**), align 8, !dbg !3483
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3484
  %cfg22 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3484
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !3484
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3484
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3484
  br label %for.cond23, !dbg !3484

for.cond23:                                       ; preds = %for.inc37, %while.end
  %.pre1 = phi %struct.control_flow_graph* [ %9, %while.end ], [ %.pre, %for.inc37 ]
  %11 = phi %struct.control_flow_graph* [ %9, %while.end ], [ %.pre, %for.inc37 ], !dbg !3486
  %.pn = phi %struct.basic_block_def* [ %10, %while.end ], [ %bb.0, %for.inc37 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3488
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3488
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3435, metadata !DIExpression()), !dbg !3436
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !3486
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3486
  %cmp26 = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !3486
  br i1 %cmp26, label %for.end39, label %for.body28, !dbg !3484

for.body28:                                       ; preds = %for.cond23
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3489
  %13 = bitcast %union.basic_block_il_dependent* %il to i32***, !dbg !3489
  %14 = load i32**, i32*** %13, align 8, !dbg !3489
  %15 = load i32*, i32** %14, align 8, !dbg !3489
  %bf.load = load i32, i32* %15, align 8, !dbg !3489
  %bf.clear = and i32 %bf.load, 65535, !dbg !3489
  %cmp29 = icmp eq i32 %bf.clear, 12, !dbg !3489
  br i1 %cmp29, label %if.then31, label %for.inc37, !dbg !3491

if.then31:                                        ; preds = %for.body28
  %arrayidx35 = getelementptr inbounds i32, i32* %15, i64 8, !dbg !3492
  %rt_bb = bitcast i32* %arrayidx35 to %struct.basic_block_def**, !dbg !3492
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %rt_bb, align 8, !dbg !3493
  %.pre.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !3486
  br label %for.inc37, !dbg !3492

for.inc37:                                        ; preds = %for.body28, %if.then31
  %.pre = phi %struct.control_flow_graph* [ %.pre1, %for.body28 ], [ %.pre.pre, %if.then31 ], !dbg !3486
  br label %for.cond23, !dbg !3486, !llvm.loop !3494

for.end39:                                        ; preds = %for.cond23
  ret void, !dbg !3496
}

declare dso_local %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_resource_info() local_unnamed_addr #5 !dbg !3497 {
entry:
  %0 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !3511
  %cmp = icmp eq %struct.target_info** %0, null, !dbg !3512
  br i1 %cmp, label %if.end, label %for.cond.preheader, !dbg !3513

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !3514

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3515
  %1 = phi %struct.target_info** [ %0, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !3515
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3502, metadata !DIExpression()), !dbg !3515
  %exitcond = icmp eq i64 %indvars.iv, 257, !dbg !3516
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3514

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.target_info*, %struct.target_info** %1, i64 %indvars.iv, !dbg !3517
  %2 = load %struct.target_info*, %struct.target_info** %arrayidx, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.target_info* %2, metadata !3505, metadata !DIExpression()), !dbg !3518
  br label %while.cond, !dbg !3519

while.cond:                                       ; preds = %while.body, %for.body
  %.in = phi %struct.target_info* [ %2, %for.body ], [ %4, %while.body ]
  %ti.0 = phi %struct.target_info* [ %2, %for.body ], [ %4, %while.body ], !dbg !3518
  call void @llvm.dbg.value(metadata %struct.target_info* %ti.0, metadata !3505, metadata !DIExpression()), !dbg !3518
  %tobool = icmp eq %struct.target_info* %ti.0, null, !dbg !3519
  br i1 %tobool, label %for.inc, label %while.body, !dbg !3519

while.body:                                       ; preds = %while.cond
  %3 = bitcast %struct.target_info* %.in to i8*, !dbg !3518
  %next2 = getelementptr inbounds %struct.target_info, %struct.target_info* %ti.0, i64 0, i32 1, !dbg !3520
  %4 = load %struct.target_info*, %struct.target_info** %next2, align 8, !dbg !3520
  call void @llvm.dbg.value(metadata %struct.target_info* %4, metadata !3509, metadata !DIExpression()), !dbg !3521
  tail call void @free(i8* %3) #6, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.target_info* %4, metadata !3505, metadata !DIExpression()), !dbg !3518
  br label %while.cond, !dbg !3519, !llvm.loop !3523

for.inc:                                          ; preds = %while.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3525
  call void @llvm.dbg.value(metadata i32 undef, metadata !3502, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3515
  %.pre = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !3515
  br label %for.cond, !dbg !3526, !llvm.loop !3527

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.target_info** [ %1, %for.cond ], !dbg !3515
  %5 = bitcast %struct.target_info** %.lcssa to i8*, !dbg !3529
  tail call void @free(i8* %5) #6, !dbg !3530
  store %struct.target_info** null, %struct.target_info*** @target_hash_table, align 8, !dbg !3531
  br label %if.end, !dbg !3532

if.end:                                           ; preds = %entry, %for.end
  %6 = load i32*, i32** @bb_ticks, align 8, !dbg !3533
  %cmp3 = icmp eq i32* %6, null, !dbg !3535
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !3536

if.then4:                                         ; preds = %if.end
  %7 = bitcast i32* %6 to i8*, !dbg !3536
  tail call void @free(i8* nonnull %7) #6, !dbg !3537
  store i32* null, i32** @bb_ticks, align 8, !dbg !3539
  br label %if.end5, !dbg !3540

if.end5:                                          ; preds = %if.end, %if.then4
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3541
  %cfg = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3541
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3541
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3541
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3541
  br label %for.cond6, !dbg !3541

for.cond6:                                        ; preds = %for.inc18, %if.end5
  %.pre12 = phi %struct.control_flow_graph* [ %9, %if.end5 ], [ %.pre1, %for.inc18 ]
  %11 = phi %struct.control_flow_graph* [ %9, %if.end5 ], [ %.pre1, %for.inc18 ], !dbg !3543
  %.pn = phi %struct.basic_block_def* [ %10, %if.end5 ], [ %bb.0, %for.inc18 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3545
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3501, metadata !DIExpression()), !dbg !3546
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !3543
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3543
  %cmp9 = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !3543
  br i1 %cmp9, label %for.end20, label %for.body10, !dbg !3541

for.body10:                                       ; preds = %for.cond6
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3547
  %13 = bitcast %union.basic_block_il_dependent* %il to i32***, !dbg !3547
  %14 = load i32**, i32*** %13, align 8, !dbg !3547
  %15 = load i32*, i32** %14, align 8, !dbg !3547
  %bf.load = load i32, i32* %15, align 8, !dbg !3547
  %bf.clear = and i32 %bf.load, 65535, !dbg !3547
  %cmp11 = icmp eq i32 %bf.clear, 12, !dbg !3547
  br i1 %cmp11, label %if.then12, label %for.inc18, !dbg !3549

if.then12:                                        ; preds = %for.body10
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 8, !dbg !3550
  %rt_bb = bitcast i32* %arrayidx16 to %struct.basic_block_def**, !dbg !3550
  store %struct.basic_block_def* null, %struct.basic_block_def** %rt_bb, align 8, !dbg !3551
  %.pre1.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3543
  br label %for.inc18, !dbg !3550

for.inc18:                                        ; preds = %for.body10, %if.then12
  %.pre1 = phi %struct.control_flow_graph* [ %.pre12, %for.body10 ], [ %.pre1.pre, %if.then12 ], !dbg !3543
  br label %for.cond6, !dbg !3543, !llvm.loop !3552

for.end20:                                        ; preds = %for.cond6
  ret void, !dbg !3554
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clear_hashed_info_for_insn(%struct.rtx_def* %insn) local_unnamed_addr #5 !dbg !3555 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3557, metadata !DIExpression()), !dbg !3559
  %0 = load %struct.target_info**, %struct.target_info*** @target_hash_table, align 8, !dbg !3560
  %cmp = icmp eq %struct.target_info** %0, null, !dbg !3562
  br i1 %cmp, label %if.end11, label %if.then, !dbg !3563

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3564
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3564
  %1 = load i32, i32* %rt_int, align 8, !dbg !3564
  %rem = srem i32 %1, 257, !dbg !3567
  %idxprom = sext i32 %rem to i64, !dbg !3568
  %arrayidx1 = getelementptr inbounds %struct.target_info*, %struct.target_info** %0, i64 %idxprom, !dbg !3568
  br label %for.cond, !dbg !3569

for.cond:                                         ; preds = %for.inc, %if.then
  %tinfo.0.in = phi %struct.target_info** [ %arrayidx1, %if.then ], [ %next, %for.inc ]
  %tinfo.0 = load %struct.target_info*, %struct.target_info** %tinfo.0.in, align 8, !dbg !3570
  call void @llvm.dbg.value(metadata %struct.target_info* %tinfo.0, metadata !3558, metadata !DIExpression()), !dbg !3559
  %cond = icmp eq %struct.target_info* %tinfo.0, null, !dbg !3571
  br i1 %cond, label %if.end11.loopexit, label %for.body, !dbg !3571

for.body:                                         ; preds = %for.cond
  %uid = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0, i64 0, i32 0, !dbg !3572
  %2 = load i32, i32* %uid, align 8, !dbg !3572
  %cmp6 = icmp eq i32 %2, %1, !dbg !3575
  br i1 %cmp6, label %for.end, label %for.inc, !dbg !3576

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0, i64 0, i32 1, !dbg !3577
  br label %for.cond, !dbg !3578, !llvm.loop !3579

for.end:                                          ; preds = %for.body
  %tinfo.0.lcssa3 = phi %struct.target_info* [ %tinfo.0, %for.body ], !dbg !3570
  %block = getelementptr inbounds %struct.target_info, %struct.target_info* %tinfo.0.lcssa3, i64 0, i32 3, !dbg !3581
  store i32 -1, i32* %block, align 8, !dbg !3583
  br label %if.end11, !dbg !3584

if.end11.loopexit:                                ; preds = %for.cond
  br label %if.end11, !dbg !3585

if.end11:                                         ; preds = %if.end11.loopexit, %entry, %for.end
  ret void, !dbg !3585
}

; Function Attrs: nounwind uwtable
define dso_local void @incr_ticks_for_insn(%struct.rtx_def* %insn) local_unnamed_addr #5 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3588, metadata !DIExpression()), !dbg !3590
  %0 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3591
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %0, i64 13, i32 1, !dbg !3591
  %1 = load i32, i32* %value, align 8, !dbg !3591
  %call = tail call fastcc i32 @find_basic_block(%struct.rtx_def* %insn, i32 %1) #7, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %call, metadata !3589, metadata !DIExpression()), !dbg !3590
  %cmp = icmp eq i32 %call, -1, !dbg !3593
  br i1 %cmp, label %if.end, label %if.then, !dbg !3595

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** @bb_ticks, align 8, !dbg !3596
  %idxprom = sext i32 %call to i64, !dbg !3596
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !3596
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !3597
  %inc = add nsw i32 %3, 1, !dbg !3597
  store i32 %inc, i32* %arrayidx1, align 4, !dbg !3597
  br label %if.end, !dbg !3596

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3598
}

; Function Attrs: nounwind uwtable
define dso_local void @mark_end_of_function_resources(%struct.rtx_def* %trial, i8 zeroext %include_delayed_effects) local_unnamed_addr #5 !dbg !3599 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %trial, metadata !3603, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i8 %include_delayed_effects, metadata !3604, metadata !DIExpression()), !dbg !3605
  tail call void @mark_referenced_resources(%struct.rtx_def* %trial, %struct.resources* nonnull @end_of_function_needs, i8 zeroext %include_delayed_effects) #7, !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3608 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3612, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3613, metadata !DIExpression()), !dbg !3614
  %idxprom = zext i32 %regno to i64, !dbg !3615
  %idxprom1 = sext i32 %mode to i64, !dbg !3615
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3615
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3615
  %conv = zext i8 %0 to i32, !dbg !3615
  %add = add i32 %conv, %regno, !dbg !3616
  ret i32 %add, !dbg !3617
}

declare dso_local %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @any_uncondjump_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #2

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
!llvm.module.flags = !{!677, !678, !679}
!llvm.ident = !{!680}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "end_of_function_needs", scope: !2, file: !3, line: 59, type: !662, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !566, globals: !659, nameTableKind: None)
!3 = !DIFile(filename: "resource.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !527, !532}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !6, line: 7, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!9 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!133 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !135, line: 30, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !142, line: 363, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !142, line: 355, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !153, line: 474, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !158, line: 280, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !158, line: 1817, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !158, line: 1805, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !158, line: 39, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!192 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!289 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!290 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!291 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!292 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!293 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!294 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!295 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!296 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!298 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!300 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!301 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!302 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!303 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!304 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!305 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!307 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!308 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!309 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!310 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!311 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!312 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!313 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!314 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!316 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!317 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!318 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!320 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!321 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!323 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!324 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!325 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!326 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!327 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!328 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!329 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!330 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!331 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!332 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!333 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!334 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!335 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!337 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!338 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!339 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!340 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!341 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!342 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!343 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!358 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!359 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!361 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!377 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!378 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!379 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!380 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!381 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!382 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !385, line: 45, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!387 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!475 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!476 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!477 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!478 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!479 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!480 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!481 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!482 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!483 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!484 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!485 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!486 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!487 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!488 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!489 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!490 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!491 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!492 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!493 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!494 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!495 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!496 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!497 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!498 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!499 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!500 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!501 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!502 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!503 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!504 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!505 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!506 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!507 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!508 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!509 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!510 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!511 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!512 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!513 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!514 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!515 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!516 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!517 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!518 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!519 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!521 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!522 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!524 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!525 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!526 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mark_resource_type", file: !528, line: 43, baseType: !7, size: 32, elements: !529)
!528 = !DIFile(filename: "./resource.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!529 = !{!530, !531}
!530 = !DIEnumerator(name: "MARK_SRC_DEST", value: 0, isUnsigned: true)
!531 = !DIEnumerator(name: "MARK_SRC_DEST_CALL", value: 1, isUnsigned: true)
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !385, line: 836, baseType: !7, size: 32, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!534 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!535 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!536 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!537 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!538 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!539 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!540 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!541 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!542 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!543 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!544 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!545 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!546 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!547 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!548 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!549 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!550 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!551 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!552 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!553 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!554 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!555 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!556 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!557 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!558 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!559 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!560 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!561 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!562 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!563 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!564 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!565 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!566 = !{!567, !568, !569, !570, !573, !574, !384, !576, !5, !579, !532, !587, !588, !589}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!569 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !577, line: 42, baseType: !578)
!577 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!578 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "target_info", file: !3, line: 44, size: 256, elements: !581)
!581 = !{!582, !583, !584, !585, !586}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !580, file: !3, line: 46, baseType: !569, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !3, line: 47, baseType: !579, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "live_regs", scope: !580, file: !3, line: 48, baseType: !576, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !580, file: !3, line: 49, baseType: !569, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bb_tick", scope: !580, file: !3, line: 50, baseType: !569, size: 32, offset: 224)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !591, line: 826, size: 256, elements: !592)
!591 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!592 = !{!593, !656, !657, !658}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !590, file: !591, line: 829, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !595, line: 47, baseType: !596)
!595 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !598, line: 75, size: 256, elements: !599)
!598 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !{!600, !614, !615, !616}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !597, file: !598, line: 76, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !598, line: 68, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !598, line: 63, size: 320, elements: !604)
!604 = !{!605, !607, !608, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !598, line: 64, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !603, file: !598, line: 65, baseType: !606, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !603, file: !598, line: 66, baseType: !7, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !603, file: !598, line: 67, baseType: !610, size: 128, offset: 192)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !612)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !598, line: 29, baseType: !578)
!612 = !{!613}
!613 = !DISubrange(count: 2)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !597, file: !598, line: 77, baseType: !601, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !597, file: !598, line: 78, baseType: !7, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !597, file: !598, line: 79, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !598, line: 49, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !598, line: 45, size: 832, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !619, file: !598, line: 46, baseType: !606, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !619, file: !598, line: 47, baseType: !596, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !619, file: !598, line: 48, baseType: !624, size: 704, offset: 128)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !625, line: 164, size: 704, elements: !626)
!625 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!626 = !{!627, !629, !639, !640, !641, !642, !643, !644, !648, !652, !653, !654, !655}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !624, file: !625, line: 166, baseType: !628, size: 64)
!628 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !624, file: !625, line: 167, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !625, line: 157, size: 192, elements: !632)
!632 = !{!633, !634, !635}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !631, file: !625, line: 159, baseType: !571, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !631, file: !625, line: 160, baseType: !630, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !631, file: !625, line: 161, baseType: !636, size: 32, offset: 128)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 32, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 4)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !624, file: !625, line: 168, baseType: !571, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !624, file: !625, line: 169, baseType: !571, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !624, file: !625, line: 170, baseType: !571, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !624, file: !625, line: 171, baseType: !628, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !624, file: !625, line: 172, baseType: !569, size: 32, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !624, file: !625, line: 176, baseType: !645, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!630, !573, !628}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !624, file: !625, line: 177, baseType: !649, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !573, !630}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !624, file: !625, line: 178, baseType: !573, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !624, file: !625, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !624, file: !625, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !624, file: !625, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !590, file: !591, line: 831, baseType: !594, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !590, file: !591, line: 834, baseType: !594, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !590, file: !591, line: 835, baseType: !594, size: 64, offset: 192)
!659 = !{!660, !0, !669, !671, !673, !675}
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "start_of_epilogue_needs", scope: !2, file: !3, line: 56, type: !662, isLocal: true, isDefinition: true)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resources", file: !528, line: 33, size: 128, elements: !663)
!663 = !{!664, !665, !666, !667, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !662, file: !528, line: 35, baseType: !572, size: 8)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "unch_memory", scope: !662, file: !528, line: 36, baseType: !572, size: 8, offset: 8)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !662, file: !528, line: 37, baseType: !572, size: 8, offset: 16)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cc", scope: !662, file: !528, line: 38, baseType: !572, size: 8, offset: 24)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !662, file: !528, line: 39, baseType: !576, size: 64, offset: 64)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "bb_ticks", scope: !2, file: !3, line: 69, type: !588, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "current_live_regs", scope: !2, file: !3, line: 74, type: !576, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "pending_dead_regs", scope: !2, file: !3, line: 79, type: !576, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "target_hash_table", scope: !2, file: !3, line: 62, type: !587, isLocal: true, isDefinition: true)
!677 = !{i32 2, !"Dwarf Version", i32 4}
!678 = !{i32 2, !"Debug Info Version", i32 3}
!679 = !{i32 1, !"wchar_size", i32 4}
!680 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!681 = distinct !DISubprogram(name: "vprintf", scope: !682, file: !682, line: 39, type: !683, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !693)
!682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!683 = !DISubroutineType(types: !684)
!684 = !{!569, !685, !686}
!685 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !574)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !688)
!688 = !{!689, !690, !691, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !687, file: !3, baseType: !7, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !687, file: !3, baseType: !7, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !687, file: !3, baseType: !573, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !687, file: !3, baseType: !573, size: 64, offset: 128)
!693 = !{!694, !695}
!694 = !DILocalVariable(name: "__fmt", arg: 1, scope: !681, file: !682, line: 39, type: !685)
!695 = !DILocalVariable(name: "__arg", arg: 2, scope: !681, file: !682, line: 39, type: !686)
!696 = !DILocation(line: 0, scope: !681)
!697 = !DILocation(line: 41, column: 20, scope: !681)
!698 = !DILocation(line: 41, column: 10, scope: !681)
!699 = !DILocation(line: 41, column: 3, scope: !681)
!700 = distinct !DISubprogram(name: "getchar", scope: !682, file: !682, line: 47, type: !701, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!569}
!703 = !{}
!704 = !DILocation(line: 49, column: 16, scope: !700)
!705 = !DILocation(line: 49, column: 10, scope: !700)
!706 = !DILocation(line: 49, column: 3, scope: !700)
!707 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !682, file: !682, line: 56, type: !708, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!708 = !DISubroutineType(types: !709)
!709 = !{!569, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !712, line: 7, baseType: !713)
!712 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !714, line: 49, size: 1728, elements: !715)
!714 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !731, !733, !734, !735, !738, !740, !742, !746, !749, !751, !754, !757, !758, !759, !762, !763}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !713, file: !714, line: 51, baseType: !569, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !713, file: !714, line: 54, baseType: !571, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !713, file: !714, line: 55, baseType: !571, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !713, file: !714, line: 56, baseType: !571, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !713, file: !714, line: 57, baseType: !571, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !713, file: !714, line: 58, baseType: !571, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !713, file: !714, line: 59, baseType: !571, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !713, file: !714, line: 60, baseType: !571, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !713, file: !714, line: 61, baseType: !571, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !713, file: !714, line: 64, baseType: !571, size: 64, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !713, file: !714, line: 65, baseType: !571, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !713, file: !714, line: 66, baseType: !571, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !713, file: !714, line: 68, baseType: !729, size: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !714, line: 36, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !713, file: !714, line: 70, baseType: !732, size: 64, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !713, file: !714, line: 72, baseType: !569, size: 32, offset: 896)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !713, file: !714, line: 73, baseType: !569, size: 32, offset: 928)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !713, file: !714, line: 74, baseType: !736, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !737, line: 152, baseType: !628)
!737 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !713, file: !714, line: 77, baseType: !739, size: 16, offset: 1024)
!739 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !713, file: !714, line: 78, baseType: !741, size: 8, offset: 1040)
!741 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !713, file: !714, line: 79, baseType: !743, size: 8, offset: 1048)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 8, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 1)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !713, file: !714, line: 81, baseType: !747, size: 64, offset: 1088)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !714, line: 43, baseType: null)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !713, file: !714, line: 89, baseType: !750, size: 64, offset: 1152)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !737, line: 153, baseType: !628)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !713, file: !714, line: 91, baseType: !752, size: 64, offset: 1216)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !714, line: 37, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !713, file: !714, line: 92, baseType: !755, size: 64, offset: 1280)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !714, line: 38, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !713, file: !714, line: 93, baseType: !732, size: 64, offset: 1344)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !713, file: !714, line: 94, baseType: !573, size: 64, offset: 1408)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !713, file: !714, line: 95, baseType: !760, size: 64, offset: 1472)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !761, line: 46, baseType: !578)
!761 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !713, file: !714, line: 96, baseType: !569, size: 32, offset: 1536)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !713, file: !714, line: 98, baseType: !764, size: 160, offset: 1568)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 160, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 20)
!767 = !{!768}
!768 = !DILocalVariable(name: "__fp", arg: 1, scope: !707, file: !682, line: 56, type: !710)
!769 = !DILocation(line: 0, scope: !707)
!770 = !DILocation(line: 58, column: 10, scope: !707)
!771 = !DILocation(line: 58, column: 3, scope: !707)
!772 = distinct !DISubprogram(name: "getc_unlocked", scope: !682, file: !682, line: 66, type: !708, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!773 = !{!774}
!774 = !DILocalVariable(name: "__fp", arg: 1, scope: !772, file: !682, line: 66, type: !710)
!775 = !DILocation(line: 0, scope: !772)
!776 = !DILocation(line: 68, column: 10, scope: !772)
!777 = !DILocation(line: 68, column: 3, scope: !772)
!778 = distinct !DISubprogram(name: "getchar_unlocked", scope: !682, file: !682, line: 73, type: !701, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !703)
!779 = !DILocation(line: 75, column: 10, scope: !778)
!780 = !DILocation(line: 75, column: 3, scope: !778)
!781 = distinct !DISubprogram(name: "putchar", scope: !682, file: !682, line: 82, type: !782, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{!569, !569}
!784 = !{!785}
!785 = !DILocalVariable(name: "__c", arg: 1, scope: !781, file: !682, line: 82, type: !569)
!786 = !DILocation(line: 0, scope: !781)
!787 = !DILocation(line: 84, column: 21, scope: !781)
!788 = !DILocation(line: 84, column: 10, scope: !781)
!789 = !DILocation(line: 84, column: 3, scope: !781)
!790 = distinct !DISubprogram(name: "fputc_unlocked", scope: !682, file: !682, line: 91, type: !791, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!569, !569, !710}
!793 = !{!794, !795}
!794 = !DILocalVariable(name: "__c", arg: 1, scope: !790, file: !682, line: 91, type: !569)
!795 = !DILocalVariable(name: "__stream", arg: 2, scope: !790, file: !682, line: 91, type: !710)
!796 = !DILocation(line: 0, scope: !790)
!797 = !DILocation(line: 93, column: 10, scope: !790)
!798 = !DILocation(line: 93, column: 3, scope: !790)
!799 = distinct !DISubprogram(name: "putc_unlocked", scope: !682, file: !682, line: 101, type: !791, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!800 = !{!801, !802}
!801 = !DILocalVariable(name: "__c", arg: 1, scope: !799, file: !682, line: 101, type: !569)
!802 = !DILocalVariable(name: "__stream", arg: 2, scope: !799, file: !682, line: 101, type: !710)
!803 = !DILocation(line: 0, scope: !799)
!804 = !DILocation(line: 103, column: 10, scope: !799)
!805 = !DILocation(line: 103, column: 3, scope: !799)
!806 = distinct !DISubprogram(name: "putchar_unlocked", scope: !682, file: !682, line: 108, type: !782, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !807)
!807 = !{!808}
!808 = !DILocalVariable(name: "__c", arg: 1, scope: !806, file: !682, line: 108, type: !569)
!809 = !DILocation(line: 0, scope: !806)
!810 = !DILocation(line: 110, column: 10, scope: !806)
!811 = !DILocation(line: 110, column: 3, scope: !806)
!812 = distinct !DISubprogram(name: "getline", scope: !682, file: !682, line: 118, type: !813, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !570, !816, !710}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !737, line: 193, baseType: !628)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!817 = !{!818, !819, !820}
!818 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !812, file: !682, line: 118, type: !570)
!819 = !DILocalVariable(name: "__n", arg: 2, scope: !812, file: !682, line: 118, type: !816)
!820 = !DILocalVariable(name: "__stream", arg: 3, scope: !812, file: !682, line: 118, type: !710)
!821 = !DILocation(line: 0, scope: !812)
!822 = !DILocation(line: 120, column: 10, scope: !812)
!823 = !DILocation(line: 120, column: 3, scope: !812)
!824 = distinct !DISubprogram(name: "feof_unlocked", scope: !682, file: !682, line: 128, type: !708, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!825 = !{!826}
!826 = !DILocalVariable(name: "__stream", arg: 1, scope: !824, file: !682, line: 128, type: !710)
!827 = !DILocation(line: 0, scope: !824)
!828 = !DILocation(line: 130, column: 10, scope: !824)
!829 = !DILocation(line: 130, column: 3, scope: !824)
!830 = distinct !DISubprogram(name: "ferror_unlocked", scope: !682, file: !682, line: 135, type: !708, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!831 = !{!832}
!832 = !DILocalVariable(name: "__stream", arg: 1, scope: !830, file: !682, line: 135, type: !710)
!833 = !DILocation(line: 0, scope: !830)
!834 = !DILocation(line: 137, column: 10, scope: !830)
!835 = !DILocation(line: 137, column: 3, scope: !830)
!836 = distinct !DISubprogram(name: "tolower", scope: !837, file: !837, line: 207, type: !782, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!837 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!838 = !{!839}
!839 = !DILocalVariable(name: "__c", arg: 1, scope: !836, file: !837, line: 207, type: !569)
!840 = !DILocation(line: 0, scope: !836)
!841 = !DILocation(line: 209, column: 22, scope: !836)
!842 = !DILocation(line: 209, column: 39, scope: !836)
!843 = !DILocation(line: 209, column: 38, scope: !836)
!844 = !DILocation(line: 209, column: 37, scope: !836)
!845 = !DILocation(line: 209, column: 10, scope: !836)
!846 = !DILocation(line: 209, column: 3, scope: !836)
!847 = distinct !DISubprogram(name: "toupper", scope: !837, file: !837, line: 213, type: !782, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!848 = !{!849}
!849 = !DILocalVariable(name: "__c", arg: 1, scope: !847, file: !837, line: 213, type: !569)
!850 = !DILocation(line: 0, scope: !847)
!851 = !DILocation(line: 215, column: 22, scope: !847)
!852 = !DILocation(line: 215, column: 39, scope: !847)
!853 = !DILocation(line: 215, column: 38, scope: !847)
!854 = !DILocation(line: 215, column: 37, scope: !847)
!855 = !DILocation(line: 215, column: 10, scope: !847)
!856 = !DILocation(line: 215, column: 3, scope: !847)
!857 = distinct !DISubprogram(name: "atoi", scope: !858, file: !858, line: 361, type: !859, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!858 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!859 = !DISubroutineType(types: !860)
!860 = !{!569, !574}
!861 = !{!862}
!862 = !DILocalVariable(name: "__nptr", arg: 1, scope: !857, file: !858, line: 361, type: !574)
!863 = !DILocation(line: 0, scope: !857)
!864 = !DILocation(line: 363, column: 16, scope: !857)
!865 = !DILocation(line: 363, column: 10, scope: !857)
!866 = !DILocation(line: 363, column: 3, scope: !857)
!867 = distinct !DISubprogram(name: "atol", scope: !858, file: !858, line: 366, type: !868, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!628, !574}
!870 = !{!871}
!871 = !DILocalVariable(name: "__nptr", arg: 1, scope: !867, file: !858, line: 366, type: !574)
!872 = !DILocation(line: 0, scope: !867)
!873 = !DILocation(line: 368, column: 10, scope: !867)
!874 = !DILocation(line: 368, column: 3, scope: !867)
!875 = distinct !DISubprogram(name: "atoll", scope: !858, file: !858, line: 373, type: !876, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!876 = !DISubroutineType(types: !877)
!877 = !{!878, !574}
!878 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!879 = !{!880}
!880 = !DILocalVariable(name: "__nptr", arg: 1, scope: !875, file: !858, line: 373, type: !574)
!881 = !DILocation(line: 0, scope: !875)
!882 = !DILocation(line: 375, column: 10, scope: !875)
!883 = !DILocation(line: 375, column: 3, scope: !875)
!884 = distinct !DISubprogram(name: "bsearch", scope: !885, file: !885, line: 20, type: !886, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!885 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!886 = !DISubroutineType(types: !887)
!887 = !{!573, !888, !888, !760, !760, !890}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !858, line: 808, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!569, !888, !888}
!894 = !{!895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!895 = !DILocalVariable(name: "__key", arg: 1, scope: !884, file: !885, line: 20, type: !888)
!896 = !DILocalVariable(name: "__base", arg: 2, scope: !884, file: !885, line: 20, type: !888)
!897 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !884, file: !885, line: 20, type: !760)
!898 = !DILocalVariable(name: "__size", arg: 4, scope: !884, file: !885, line: 20, type: !760)
!899 = !DILocalVariable(name: "__compar", arg: 5, scope: !884, file: !885, line: 21, type: !890)
!900 = !DILocalVariable(name: "__l", scope: !884, file: !885, line: 23, type: !760)
!901 = !DILocalVariable(name: "__u", scope: !884, file: !885, line: 23, type: !760)
!902 = !DILocalVariable(name: "__idx", scope: !884, file: !885, line: 23, type: !760)
!903 = !DILocalVariable(name: "__p", scope: !884, file: !885, line: 24, type: !888)
!904 = !DILocalVariable(name: "__comparison", scope: !884, file: !885, line: 25, type: !569)
!905 = !DILocation(line: 0, scope: !884)
!906 = !DILocation(line: 29, column: 3, scope: !884)
!907 = !DILocation(line: 27, column: 7, scope: !884)
!908 = !DILocation(line: 29, column: 14, scope: !884)
!909 = !DILocation(line: 31, column: 20, scope: !910)
!910 = distinct !DILexicalBlock(scope: !884, file: !885, line: 30, column: 5)
!911 = !DILocation(line: 31, column: 27, scope: !910)
!912 = !DILocation(line: 32, column: 56, scope: !910)
!913 = !DILocation(line: 32, column: 47, scope: !910)
!914 = !DILocation(line: 33, column: 22, scope: !910)
!915 = !DILocation(line: 34, column: 24, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !885, line: 34, column: 11)
!917 = !DILocation(line: 34, column: 11, scope: !910)
!918 = !DILocation(line: 36, column: 29, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !885, line: 36, column: 16)
!920 = !DILocation(line: 36, column: 16, scope: !916)
!921 = !DILocation(line: 37, column: 14, scope: !919)
!922 = distinct !{!922, !906, !923}
!923 = !DILocation(line: 40, column: 5, scope: !884)
!924 = !DILocation(line: 43, column: 1, scope: !884)
!925 = distinct !DISubprogram(name: "atof", scope: !926, file: !926, line: 25, type: !927, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !574}
!929 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!930 = !{!931}
!931 = !DILocalVariable(name: "__nptr", arg: 1, scope: !925, file: !926, line: 25, type: !574)
!932 = !DILocation(line: 0, scope: !925)
!933 = !DILocation(line: 27, column: 10, scope: !925)
!934 = !DILocation(line: 27, column: 3, scope: !925)
!935 = distinct !DISubprogram(name: "strtoimax", scope: !936, file: !936, line: 324, type: !937, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!936 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!937 = !DISubroutineType(types: !938)
!938 = !{!939, !685, !942, !569}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !940, line: 101, baseType: !941)
!940 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !737, line: 72, baseType: !628)
!942 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !570)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(name: "nptr", arg: 1, scope: !935, file: !936, line: 324, type: !685)
!945 = !DILocalVariable(name: "endptr", arg: 2, scope: !935, file: !936, line: 324, type: !942)
!946 = !DILocalVariable(name: "base", arg: 3, scope: !935, file: !936, line: 324, type: !569)
!947 = !DILocation(line: 0, scope: !935)
!948 = !DILocation(line: 327, column: 10, scope: !935)
!949 = !DILocation(line: 327, column: 3, scope: !935)
!950 = distinct !DISubprogram(name: "strtoumax", scope: !936, file: !936, line: 336, type: !951, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !955)
!951 = !DISubroutineType(types: !952)
!952 = !{!953, !685, !942, !569}
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !940, line: 102, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !737, line: 73, baseType: !578)
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "nptr", arg: 1, scope: !950, file: !936, line: 336, type: !685)
!957 = !DILocalVariable(name: "endptr", arg: 2, scope: !950, file: !936, line: 336, type: !942)
!958 = !DILocalVariable(name: "base", arg: 3, scope: !950, file: !936, line: 336, type: !569)
!959 = !DILocation(line: 0, scope: !950)
!960 = !DILocation(line: 339, column: 10, scope: !950)
!961 = !DILocation(line: 339, column: 3, scope: !950)
!962 = distinct !DISubprogram(name: "wcstoimax", scope: !936, file: !936, line: 348, type: !963, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !972)
!963 = !DISubroutineType(types: !964)
!964 = !{!939, !965, !969, !569}
!965 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !936, line: 34, baseType: !569)
!969 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!972 = !{!973, !974, !975}
!973 = !DILocalVariable(name: "nptr", arg: 1, scope: !962, file: !936, line: 348, type: !965)
!974 = !DILocalVariable(name: "endptr", arg: 2, scope: !962, file: !936, line: 348, type: !969)
!975 = !DILocalVariable(name: "base", arg: 3, scope: !962, file: !936, line: 348, type: !569)
!976 = !DILocation(line: 0, scope: !962)
!977 = !DILocation(line: 351, column: 10, scope: !962)
!978 = !DILocation(line: 351, column: 3, scope: !962)
!979 = distinct !DISubprogram(name: "wcstoumax", scope: !936, file: !936, line: 362, type: !980, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!953, !965, !969, !569}
!982 = !{!983, !984, !985}
!983 = !DILocalVariable(name: "nptr", arg: 1, scope: !979, file: !936, line: 362, type: !965)
!984 = !DILocalVariable(name: "endptr", arg: 2, scope: !979, file: !936, line: 362, type: !969)
!985 = !DILocalVariable(name: "base", arg: 3, scope: !979, file: !936, line: 362, type: !569)
!986 = !DILocation(line: 0, scope: !979)
!987 = !DILocation(line: 365, column: 10, scope: !979)
!988 = !DILocation(line: 365, column: 3, scope: !979)
!989 = distinct !DISubprogram(name: "stat", scope: !990, file: !990, line: 453, type: !991, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!990 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!991 = !DISubroutineType(types: !992)
!992 = !{!569, !574, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !995, line: 46, size: 1152, elements: !996)
!995 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!996 = !{!997, !999, !1001, !1003, !1005, !1007, !1009, !1010, !1011, !1012, !1014, !1016, !1024, !1025, !1026}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !994, file: !995, line: 48, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !737, line: 145, baseType: !578)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !994, file: !995, line: 53, baseType: !1000, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !737, line: 148, baseType: !578)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !994, file: !995, line: 61, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !737, line: 151, baseType: !578)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !994, file: !995, line: 62, baseType: !1004, size: 32, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !737, line: 150, baseType: !7)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !994, file: !995, line: 64, baseType: !1006, size: 32, offset: 224)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !737, line: 146, baseType: !7)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !994, file: !995, line: 65, baseType: !1008, size: 32, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !737, line: 147, baseType: !7)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !994, file: !995, line: 67, baseType: !569, size: 32, offset: 288)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !994, file: !995, line: 69, baseType: !998, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !994, file: !995, line: 74, baseType: !736, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !994, file: !995, line: 78, baseType: !1013, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !737, line: 174, baseType: !628)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !994, file: !995, line: 80, baseType: !1015, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !737, line: 179, baseType: !628)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !994, file: !995, line: 91, baseType: !1017, size: 128, offset: 576)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1018, line: 10, size: 128, elements: !1019)
!1018 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1019 = !{!1020, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1017, file: !1018, line: 12, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !737, line: 160, baseType: !628)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1017, file: !1018, line: 16, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !737, line: 196, baseType: !628)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !994, file: !995, line: 92, baseType: !1017, size: 128, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !994, file: !995, line: 93, baseType: !1017, size: 128, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !994, file: !995, line: 106, baseType: !1027, size: 192, offset: 960)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 192, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 3)
!1030 = !{!1031, !1032}
!1031 = !DILocalVariable(name: "__path", arg: 1, scope: !989, file: !990, line: 453, type: !574)
!1032 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !989, file: !990, line: 453, type: !993)
!1033 = !DILocation(line: 0, scope: !989)
!1034 = !DILocation(line: 455, column: 10, scope: !989)
!1035 = !DILocation(line: 455, column: 3, scope: !989)
!1036 = distinct !DISubprogram(name: "lstat", scope: !990, file: !990, line: 460, type: !991, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1037 = !{!1038, !1039}
!1038 = !DILocalVariable(name: "__path", arg: 1, scope: !1036, file: !990, line: 460, type: !574)
!1039 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1036, file: !990, line: 460, type: !993)
!1040 = !DILocation(line: 0, scope: !1036)
!1041 = !DILocation(line: 462, column: 10, scope: !1036)
!1042 = !DILocation(line: 462, column: 3, scope: !1036)
!1043 = distinct !DISubprogram(name: "fstat", scope: !990, file: !990, line: 467, type: !1044, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!569, !569, !993}
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "__fd", arg: 1, scope: !1043, file: !990, line: 467, type: !569)
!1048 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1043, file: !990, line: 467, type: !993)
!1049 = !DILocation(line: 0, scope: !1043)
!1050 = !DILocation(line: 469, column: 10, scope: !1043)
!1051 = !DILocation(line: 469, column: 3, scope: !1043)
!1052 = distinct !DISubprogram(name: "fstatat", scope: !990, file: !990, line: 474, type: !1053, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!569, !569, !574, !993, !569}
!1055 = !{!1056, !1057, !1058, !1059}
!1056 = !DILocalVariable(name: "__fd", arg: 1, scope: !1052, file: !990, line: 474, type: !569)
!1057 = !DILocalVariable(name: "__filename", arg: 2, scope: !1052, file: !990, line: 474, type: !574)
!1058 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1052, file: !990, line: 474, type: !993)
!1059 = !DILocalVariable(name: "__flag", arg: 4, scope: !1052, file: !990, line: 474, type: !569)
!1060 = !DILocation(line: 0, scope: !1052)
!1061 = !DILocation(line: 477, column: 10, scope: !1052)
!1062 = !DILocation(line: 477, column: 3, scope: !1052)
!1063 = distinct !DISubprogram(name: "mknod", scope: !990, file: !990, line: 483, type: !1064, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!569, !574, !1004, !998}
!1066 = !{!1067, !1068, !1069}
!1067 = !DILocalVariable(name: "__path", arg: 1, scope: !1063, file: !990, line: 483, type: !574)
!1068 = !DILocalVariable(name: "__mode", arg: 2, scope: !1063, file: !990, line: 483, type: !1004)
!1069 = !DILocalVariable(name: "__dev", arg: 3, scope: !1063, file: !990, line: 483, type: !998)
!1070 = !DILocation(line: 0, scope: !1063)
!1071 = !DILocation(line: 485, column: 10, scope: !1063)
!1072 = !DILocation(line: 485, column: 3, scope: !1063)
!1073 = distinct !DISubprogram(name: "mknodat", scope: !990, file: !990, line: 491, type: !1074, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!569, !569, !574, !1004, !998}
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DILocalVariable(name: "__fd", arg: 1, scope: !1073, file: !990, line: 491, type: !569)
!1078 = !DILocalVariable(name: "__path", arg: 2, scope: !1073, file: !990, line: 491, type: !574)
!1079 = !DILocalVariable(name: "__mode", arg: 3, scope: !1073, file: !990, line: 491, type: !1004)
!1080 = !DILocalVariable(name: "__dev", arg: 4, scope: !1073, file: !990, line: 491, type: !998)
!1081 = !DILocation(line: 0, scope: !1073)
!1082 = !DILocation(line: 494, column: 10, scope: !1073)
!1083 = !DILocation(line: 494, column: 3, scope: !1073)
!1084 = distinct !DISubprogram(name: "stat64", scope: !990, file: !990, line: 502, type: !1085, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!569, !574, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !995, line: 119, size: 1152, elements: !1089)
!1089 = !{!1090, !1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1103, !1104, !1105, !1106}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1088, file: !995, line: 121, baseType: !998, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1088, file: !995, line: 123, baseType: !1092, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !737, line: 149, baseType: !578)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1088, file: !995, line: 124, baseType: !1002, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1088, file: !995, line: 125, baseType: !1004, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1088, file: !995, line: 132, baseType: !1006, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1088, file: !995, line: 133, baseType: !1008, size: 32, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1088, file: !995, line: 135, baseType: !569, size: 32, offset: 288)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1088, file: !995, line: 136, baseType: !998, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1088, file: !995, line: 137, baseType: !736, size: 64, offset: 384)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1088, file: !995, line: 143, baseType: !1013, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1088, file: !995, line: 144, baseType: !1102, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !737, line: 180, baseType: !628)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1088, file: !995, line: 152, baseType: !1017, size: 128, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1088, file: !995, line: 153, baseType: !1017, size: 128, offset: 704)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1088, file: !995, line: 154, baseType: !1017, size: 128, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1088, file: !995, line: 164, baseType: !1027, size: 192, offset: 960)
!1107 = !{!1108, !1109}
!1108 = !DILocalVariable(name: "__path", arg: 1, scope: !1084, file: !990, line: 502, type: !574)
!1109 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1084, file: !990, line: 502, type: !1087)
!1110 = !DILocation(line: 0, scope: !1084)
!1111 = !DILocation(line: 504, column: 10, scope: !1084)
!1112 = !DILocation(line: 504, column: 3, scope: !1084)
!1113 = distinct !DISubprogram(name: "lstat64", scope: !990, file: !990, line: 509, type: !1085, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "__path", arg: 1, scope: !1113, file: !990, line: 509, type: !574)
!1116 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1113, file: !990, line: 509, type: !1087)
!1117 = !DILocation(line: 0, scope: !1113)
!1118 = !DILocation(line: 511, column: 10, scope: !1113)
!1119 = !DILocation(line: 511, column: 3, scope: !1113)
!1120 = distinct !DISubprogram(name: "fstat64", scope: !990, file: !990, line: 516, type: !1121, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!569, !569, !1087}
!1123 = !{!1124, !1125}
!1124 = !DILocalVariable(name: "__fd", arg: 1, scope: !1120, file: !990, line: 516, type: !569)
!1125 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1120, file: !990, line: 516, type: !1087)
!1126 = !DILocation(line: 0, scope: !1120)
!1127 = !DILocation(line: 518, column: 10, scope: !1120)
!1128 = !DILocation(line: 518, column: 3, scope: !1120)
!1129 = distinct !DISubprogram(name: "fstatat64", scope: !990, file: !990, line: 523, type: !1130, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!569, !569, !574, !1087, !569}
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DILocalVariable(name: "__fd", arg: 1, scope: !1129, file: !990, line: 523, type: !569)
!1134 = !DILocalVariable(name: "__filename", arg: 2, scope: !1129, file: !990, line: 523, type: !574)
!1135 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1129, file: !990, line: 523, type: !1087)
!1136 = !DILocalVariable(name: "__flag", arg: 4, scope: !1129, file: !990, line: 523, type: !569)
!1137 = !DILocation(line: 0, scope: !1129)
!1138 = !DILocation(line: 526, column: 10, scope: !1129)
!1139 = !DILocation(line: 526, column: 3, scope: !1129)
!1140 = distinct !DISubprogram(name: "mark_referenced_resources", scope: !3, file: !3, line: 205, type: !1141, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1143, !2236, !568}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !595, line: 50, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !385, line: 240, size: 384, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1145, file: !385, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1145, file: !385, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1145, file: !385, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1145, file: !385, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1145, file: !385, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1145, file: !385, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1145, file: !385, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1145, file: !385, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1145, file: !385, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1145, file: !385, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1145, file: !385, line: 321, baseType: !1158, size: 320, offset: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !385, line: 315, size: 320, elements: !1159)
!1159 = !{!1160, !2171, !2173, !2234, !2235}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1158, file: !385, line: 316, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 64, elements: !744)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !385, line: 183, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !385, line: 166, size: 64, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1177, !1178, !1190, !1193, !1194, !2149, !2150, !2161, !2168}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1163, file: !385, line: 168, baseType: !569, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1163, file: !385, line: 169, baseType: !7, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1163, file: !385, line: 170, baseType: !574, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1163, file: !385, line: 171, baseType: !1143, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1163, file: !385, line: 172, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !595, line: 53, baseType: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !385, line: 359, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1172, file: !385, line: 360, baseType: !569, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1172, file: !385, line: 361, baseType: !1176, size: 64, offset: 64)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 64, elements: !744)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1163, file: !385, line: 173, baseType: !5, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1163, file: !385, line: 174, baseType: !1179, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !385, line: 133, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 115, size: 32, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1180, file: !385, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1180, file: !385, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1180, file: !385, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1180, file: !385, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1180, file: !385, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1180, file: !385, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1180, file: !385, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1180, file: !385, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1163, file: !385, line: 175, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !385, line: 175, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1163, file: !385, line: 176, baseType: !596, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1163, file: !385, line: 177, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !595, line: 56, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !1198)
!1198 = !{!1199, !1232, !1238, !1249, !1266, !1277, !1282, !1288, !1294, !1307, !1319, !1357, !1362, !1390, !1398, !1399, !1404, !1413, !1419, !1424, !1428, !1432, !1786, !1835, !1841, !1847, !1854, !1880, !1894, !1911, !1923, !1945, !1960, !2131}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1197, file: !158, line: 3372, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1200, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1200, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1200, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1200, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1200, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1200, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1200, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1200, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1200, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1200, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1200, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1200, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1200, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1200, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1200, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1200, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1200, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1200, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1200, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1200, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1200, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1200, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1200, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1200, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1200, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1200, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1200, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1200, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1200, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1200, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !158, line: 3373, baseType: !1233, size: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1233, file: !158, line: 403, baseType: !1200, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1233, file: !158, line: 404, baseType: !1195, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1233, file: !158, line: 405, baseType: !1195, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1197, file: !158, line: 3374, baseType: !1239, size: 320)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1239, file: !158, line: 1385, baseType: !1233, size: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1239, file: !158, line: 1386, baseType: !1243, size: 128, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1244, line: 58, baseType: !1245)
!1244 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1244, line: 54, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1245, file: !1244, line: 56, baseType: !578, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1245, file: !1244, line: 57, baseType: !628, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1197, file: !158, line: 3375, baseType: !1250, size: 256)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !158, line: 1398, baseType: !1233, size: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1250, file: !158, line: 1399, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1256, line: 52, size: 256, elements: !1257)
!1256 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1255, file: !1256, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1255, file: !1256, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1255, file: !1256, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1255, file: !1256, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1255, file: !1256, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1255, file: !1256, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1255, file: !1256, line: 62, baseType: !1265, size: 192, offset: 64)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 192, elements: !1028)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1197, file: !158, line: 3376, baseType: !1267, size: 256)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1267, file: !158, line: 1409, baseType: !1233, size: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1267, file: !158, line: 1410, baseType: !1271, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1273, line: 27, size: 192, elements: !1274)
!1273 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1272, file: !1273, line: 29, baseType: !1243, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1272, file: !1273, line: 30, baseType: !5, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1197, file: !158, line: 3377, baseType: !1278, size: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1278, file: !158, line: 1438, baseType: !1233, size: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1278, file: !158, line: 1439, baseType: !1195, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1197, file: !158, line: 3378, baseType: !1283, size: 256)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1283, file: !158, line: 1419, baseType: !1233, size: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1283, file: !158, line: 1420, baseType: !569, size: 32, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1283, file: !158, line: 1421, baseType: !743, size: 8, offset: 224)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1197, file: !158, line: 3379, baseType: !1289, size: 320)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1289, file: !158, line: 1429, baseType: !1233, size: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1289, file: !158, line: 1430, baseType: !1195, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1289, file: !158, line: 1431, baseType: !1195, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1197, file: !158, line: 3380, baseType: !1295, size: 320)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1295, file: !158, line: 1461, baseType: !1233, size: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1295, file: !158, line: 1462, baseType: !1299, size: 128, offset: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1300, line: 31, size: 128, elements: !1301)
!1300 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1301 = !{!1302, !1305, !1306}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1299, file: !1300, line: 32, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1299, file: !1300, line: 33, baseType: !7, size: 32, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1299, file: !1300, line: 34, baseType: !7, size: 32, offset: 96)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1197, file: !158, line: 3381, baseType: !1308, size: 384)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !1309)
!1309 = !{!1310, !1311, !1316, !1317, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1308, file: !158, line: 2508, baseType: !1233, size: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1308, file: !158, line: 2509, baseType: !1312, size: 32, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1313, line: 58, baseType: !1314)
!1313 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1315, line: 44, baseType: !7)
!1315 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1308, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1308, file: !158, line: 2511, baseType: !1195, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1308, file: !158, line: 2512, baseType: !1195, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1197, file: !158, line: 3382, baseType: !1320, size: 896)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !158, line: 2653, baseType: !1308, size: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1320, file: !158, line: 2654, baseType: !1195, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1320, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1320, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1320, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1320, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1320, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1320, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1320, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1320, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1320, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1320, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1320, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1320, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1320, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1320, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1320, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1320, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1320, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1320, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1320, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1320, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1320, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1320, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1320, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1320, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1320, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1320, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1320, file: !158, line: 2705, baseType: !1195, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1320, file: !158, line: 2706, baseType: !1195, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1320, file: !158, line: 2707, baseType: !1195, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1320, file: !158, line: 2708, baseType: !1195, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1320, file: !158, line: 2711, baseType: !1355, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1197, file: !158, line: 3383, baseType: !1358, size: 960)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1358, file: !158, line: 2757, baseType: !1320, size: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1358, file: !158, line: 2758, baseType: !1143, size: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1197, file: !158, line: 3384, baseType: !1363, size: 1472)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !1364)
!1364 = !{!1365, !1386, !1387, !1388, !1389}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !158, line: 3115, baseType: !1366, size: 1216)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1366, file: !158, line: 2985, baseType: !1358, size: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1366, file: !158, line: 2986, baseType: !1195, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1366, file: !158, line: 2987, baseType: !1195, size: 64, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1366, file: !158, line: 2988, baseType: !1195, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1366, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1366, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1366, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1366, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1366, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1366, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1366, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1366, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1366, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1366, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1366, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1366, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1366, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1366, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1363, file: !158, line: 3117, baseType: !1195, size: 64, offset: 1216)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1363, file: !158, line: 3119, baseType: !1195, size: 64, offset: 1280)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1363, file: !158, line: 3121, baseType: !1195, size: 64, offset: 1344)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1363, file: !158, line: 3123, baseType: !1195, size: 64, offset: 1408)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1197, file: !158, line: 3385, baseType: !1391, size: 1088)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !1392)
!1392 = !{!1393, !1394, !1395}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1391, file: !158, line: 2875, baseType: !1358, size: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1391, file: !158, line: 2876, baseType: !1143, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1391, file: !158, line: 2877, baseType: !1396, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1197, file: !158, line: 3386, baseType: !1366, size: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1197, file: !158, line: 3387, baseType: !1400, size: 1280)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !158, line: 3094, baseType: !1366, size: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1400, file: !158, line: 3095, baseType: !1396, size: 64, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1197, file: !158, line: 3388, baseType: !1405, size: 1216)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !158, line: 2825, baseType: !1320, size: 896)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1405, file: !158, line: 2827, baseType: !1195, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1405, file: !158, line: 2828, baseType: !1195, size: 64, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1405, file: !158, line: 2829, baseType: !1195, size: 64, offset: 1024)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1405, file: !158, line: 2830, baseType: !1195, size: 64, offset: 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1405, file: !158, line: 2831, baseType: !1195, size: 64, offset: 1152)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1197, file: !158, line: 3389, baseType: !1414, size: 1024)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1414, file: !158, line: 2851, baseType: !1358, size: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1414, file: !158, line: 2852, baseType: !569, size: 32, offset: 960)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1414, file: !158, line: 2853, baseType: !569, size: 32, offset: 992)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1197, file: !158, line: 3390, baseType: !1420, size: 1024)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1420, file: !158, line: 2858, baseType: !1358, size: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1420, file: !158, line: 2859, baseType: !1396, size: 64, offset: 960)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1197, file: !158, line: 3391, baseType: !1425, size: 960)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1425, file: !158, line: 2863, baseType: !1358, size: 960)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1197, file: !158, line: 3392, baseType: !1429, size: 1472)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1429, file: !158, line: 3305, baseType: !1363, size: 1472)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1197, file: !158, line: 3393, baseType: !1433, size: 1792)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !1434)
!1434 = !{!1435, !1436, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1433, file: !158, line: 3249, baseType: !1363, size: 1472)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1433, file: !158, line: 3251, baseType: !1437, size: 64, offset: 1472)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1439, line: 463, size: 1152, elements: !1440)
!1439 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1440 = !{!1441, !1598, !1702, !1703, !1706, !1709, !1710, !1711, !1712, !1713, !1714, !1738, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1438, file: !1439, line: 464, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !1444)
!1444 = !{!1445, !1494, !1507, !1521, !1566, !1579}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1443, file: !135, line: 197, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1482, !1491, !1492, !1493}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1448, file: !135, line: 119, baseType: !1447, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1448, file: !135, line: 122, baseType: !1447, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1448, file: !135, line: 123, baseType: !1447, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1448, file: !135, line: 126, baseType: !569, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1448, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1448, file: !135, line: 165, baseType: !1456, size: 192, offset: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !1457)
!1457 = !{!1458, !1471, !1477}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1456, file: !135, line: 137, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !1460)
!1460 = !{!1461, !1470}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1459, file: !135, line: 135, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1463, file: !135, line: 96, baseType: !1462, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1463, file: !135, line: 97, baseType: !1462, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1463, file: !135, line: 101, baseType: !1195, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1463, file: !135, line: 106, baseType: !1195, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1463, file: !135, line: 111, baseType: !1195, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1459, file: !135, line: 136, baseType: !1462, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1456, file: !135, line: 151, baseType: !1472, size: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1473)
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1472, file: !135, line: 141, baseType: !1195, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1472, file: !135, line: 145, baseType: !1195, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1472, file: !135, line: 150, baseType: !569, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1456, file: !135, line: 164, baseType: !1478, size: 128)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1478, file: !135, line: 161, baseType: !1195, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1478, file: !135, line: 163, baseType: !1312, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1448, file: !135, line: 168, baseType: !1483, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1484, file: !135, line: 70, baseType: !1483, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1484, file: !135, line: 73, baseType: !1447, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1484, file: !135, line: 78, baseType: !1195, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1484, file: !135, line: 85, baseType: !1143, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1484, file: !135, line: 88, baseType: !569, size: 32, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1448, file: !135, line: 173, baseType: !1143, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1448, file: !135, line: 173, baseType: !1143, size: 64, offset: 576)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1448, file: !135, line: 177, baseType: !568, size: 8, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1443, file: !135, line: 200, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1497, file: !135, line: 185, baseType: !1500, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1501, file: !135, line: 184, baseType: !7, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1501, file: !135, line: 184, baseType: !1506, size: 64, offset: 64)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1446, size: 64, elements: !744)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1443, file: !135, line: 203, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1510, file: !135, line: 189, baseType: !1513, size: 128)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1515)
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1514, file: !135, line: 188, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1514, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1514, file: !135, line: 188, baseType: !1519, size: 64, offset: 64)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1520, size: 64, elements: !744)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1483)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1443, file: !135, line: 207, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1523, line: 144, baseType: !1524)
!1523 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1523, line: 100, size: 896, elements: !1526)
!1526 = !{!1527, !1533, !1535, !1540, !1542, !1543, !1544, !1545, !1546, !1547, !1552, !1554, !1555, !1560, !1565}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1525, file: !1523, line: 102, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1523, line: 52, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1532, !888}
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1523, line: 47, baseType: !7)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1525, file: !1523, line: 105, baseType: !1534, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1523, line: 59, baseType: !891)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1525, file: !1523, line: 108, baseType: !1536, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1523, line: 63, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !573}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1525, file: !1523, line: 111, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1525, file: !1523, line: 114, baseType: !760, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1525, file: !1523, line: 117, baseType: !760, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1525, file: !1523, line: 120, baseType: !760, size: 64, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1525, file: !1523, line: 124, baseType: !7, size: 32, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1525, file: !1523, line: 128, baseType: !7, size: 32, offset: 480)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1525, file: !1523, line: 131, baseType: !1548, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1523, line: 75, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!573, !760, !760}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1525, file: !1523, line: 132, baseType: !1553, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1523, line: 78, baseType: !1537)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1525, file: !1523, line: 135, baseType: !573, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1525, file: !1523, line: 136, baseType: !1556, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1523, line: 82, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!573, !573, !760, !760}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1525, file: !1523, line: 137, baseType: !1561, size: 64, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1523, line: 83, baseType: !1562)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !573, !573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1525, file: !1523, line: 141, baseType: !7, size: 32, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1443, file: !135, line: 211, baseType: !1567, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1569, file: !158, line: 183, baseType: !1572, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1573, file: !158, line: 182, baseType: !7, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1573, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1573, file: !158, line: 182, baseType: !1578, size: 64, offset: 64)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1195, size: 64, elements: !744)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1443, file: !135, line: 220, baseType: !1580, size: 64, offset: 320)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1581)
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1580, file: !135, line: 218, baseType: !1567, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1580, file: !135, line: 219, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1586, line: 29, baseType: !1587)
!1586 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1586, line: 29, size: 96, elements: !1588)
!1588 = !{!1589}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1587, file: !1586, line: 29, baseType: !1590, size: 96)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1586, line: 27, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1586, line: 27, size: 96, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1591, file: !1586, line: 27, baseType: !7, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1591, file: !1586, line: 27, baseType: !7, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1591, file: !1586, line: 27, baseType: !1596, size: 8, offset: 64)
!1596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1597, size: 8, elements: !744)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1586, line: 26, baseType: !568)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1438, file: !1439, line: 467, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1601)
!1601 = !{!1602, !1677, !1678, !1691, !1692, !1693, !1694, !1695, !1696, !1698, !1700, !1701}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1600, file: !142, line: 377, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !595, line: 111, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !1606)
!1606 = !{!1607, !1642, !1643, !1644, !1647, !1651, !1652, !1653, !1671, !1672, !1673, !1674, !1675, !1676}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1605, file: !142, line: 219, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1610, file: !142, line: 151, baseType: !1613, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !1615)
!1615 = !{!1616, !1617, !1618}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1614, file: !142, line: 150, baseType: !7, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1614, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1614, file: !142, line: 150, baseType: !1619, size: 64, offset: 64)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1620, size: 64, elements: !744)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !595, line: 108, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1634, !1635, !1636, !1637, !1638, !1639, !1640}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1622, file: !142, line: 124, baseType: !1604, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1622, file: !142, line: 125, baseType: !1604, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1622, file: !142, line: 131, baseType: !1627, size: 64, offset: 128)
!1627 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !1628)
!1628 = !{!1629, !1633}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1627, file: !142, line: 129, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !595, line: 66, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !595, line: 65, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1627, file: !142, line: 130, baseType: !1143, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1622, file: !142, line: 134, baseType: !573, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1622, file: !142, line: 137, baseType: !1195, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1622, file: !142, line: 138, baseType: !1312, size: 32, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1622, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !142, line: 144, baseType: !569, size: 32, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1622, file: !142, line: 145, baseType: !569, size: 32, offset: 416)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1622, file: !142, line: 146, baseType: !1641, size: 64, offset: 448)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !628)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1605, file: !142, line: 220, baseType: !1608, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1605, file: !142, line: 223, baseType: !573, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1605, file: !142, line: 226, baseType: !1645, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !142, line: 185, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1605, file: !142, line: 229, baseType: !1648, size: 128, offset: 256)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1649, size: 128, elements: !612)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1605, file: !142, line: 232, baseType: !1604, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1605, file: !142, line: 233, baseType: !1604, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1605, file: !142, line: 238, baseType: !1654, size: 64, offset: 512)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1655)
!1655 = !{!1656, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1654, file: !142, line: 236, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1658, file: !142, line: 275, baseType: !1630, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1658, file: !142, line: 278, baseType: !1630, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1654, file: !142, line: 237, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1664, file: !142, line: 261, baseType: !1143, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1664, file: !142, line: 262, baseType: !1143, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1664, file: !142, line: 266, baseType: !1143, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1664, file: !142, line: 267, baseType: !1143, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1664, file: !142, line: 270, baseType: !569, size: 32, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1605, file: !142, line: 241, baseType: !1641, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1605, file: !142, line: 244, baseType: !569, size: 32, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1605, file: !142, line: 247, baseType: !569, size: 32, offset: 672)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1605, file: !142, line: 250, baseType: !569, size: 32, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1605, file: !142, line: 253, baseType: !569, size: 32, offset: 736)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !142, line: 256, baseType: !569, size: 32, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1600, file: !142, line: 378, baseType: !1603, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1600, file: !142, line: 381, baseType: !1679, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1681, file: !142, line: 282, baseType: !1684, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1685, file: !142, line: 281, baseType: !7, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1685, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1685, file: !142, line: 281, baseType: !1690, size: 64, offset: 64)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1603, size: 64, elements: !744)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1600, file: !142, line: 384, baseType: !569, size: 32, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1600, file: !142, line: 387, baseType: !569, size: 32, offset: 224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1600, file: !142, line: 390, baseType: !569, size: 32, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1600, file: !142, line: 394, baseType: !1679, size: 64, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1600, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1600, file: !142, line: 399, baseType: !1697, size: 64, offset: 416)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !612)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1600, file: !142, line: 402, baseType: !1699, size: 64, offset: 480)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !612)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1600, file: !142, line: 406, baseType: !569, size: 32, offset: 544)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1600, file: !142, line: 409, baseType: !569, size: 32, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1438, file: !1439, line: 470, baseType: !1631, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1438, file: !1439, line: 473, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1439, line: 166, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1438, file: !1439, line: 476, baseType: !1707, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1439, line: 476, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1438, file: !1439, line: 479, baseType: !1522, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1438, file: !1439, line: 484, baseType: !1195, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1438, file: !1439, line: 488, baseType: !1195, size: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1438, file: !1439, line: 493, baseType: !1195, size: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1438, file: !1439, line: 496, baseType: !1195, size: 64, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1438, file: !1439, line: 501, baseType: !1715, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1717)
!1717 = !{!1718, !1721, !1722, !1723, !1724, !1726, !1727, !1732, !1733, !1734, !1735, !1736, !1737}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1716, file: !153, line: 2356, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1716, file: !153, line: 2357, baseType: !574, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1716, file: !153, line: 2358, baseType: !569, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1716, file: !153, line: 2359, baseType: !569, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1716, file: !153, line: 2360, baseType: !1725, size: 128, offset: 192)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 128, elements: !637)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1716, file: !153, line: 2364, baseType: !569, size: 32, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1716, file: !153, line: 2367, baseType: !1728, size: 128, offset: 384)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1729)
!1729 = !{!1730, !1731}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1728, file: !153, line: 2351, baseType: !1143, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1728, file: !153, line: 2352, baseType: !628, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1716, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1716, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1716, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1716, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1716, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1716, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1438, file: !1439, line: 504, baseType: !1739, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1439, line: 504, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1438, file: !1439, line: 507, baseType: !1522, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1438, file: !1439, line: 510, baseType: !569, size: 32, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1438, file: !1439, line: 513, baseType: !569, size: 32, offset: 864)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1438, file: !1439, line: 516, baseType: !1312, size: 32, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1438, file: !1439, line: 519, baseType: !1312, size: 32, offset: 928)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1438, file: !1439, line: 522, baseType: !7, size: 32, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1438, file: !1439, line: 523, baseType: !7, size: 32, offset: 992)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1438, file: !1439, line: 528, baseType: !574, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1438, file: !1439, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1438, file: !1439, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1438, file: !1439, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1438, file: !1439, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1438, file: !1439, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1438, file: !1439, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1438, file: !1439, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1438, file: !1439, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1438, file: !1439, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1438, file: !1439, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1438, file: !1439, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1438, file: !1439, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1438, file: !1439, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1438, file: !1439, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1438, file: !1439, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1438, file: !1439, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1433, file: !158, line: 3254, baseType: !1195, size: 64, offset: 1536)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1433, file: !158, line: 3257, baseType: !1195, size: 64, offset: 1600)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1433, file: !158, line: 3258, baseType: !1195, size: 64, offset: 1664)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1433, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1433, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1433, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1433, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1433, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1433, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1433, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1433, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1433, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1433, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1433, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1433, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1433, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1433, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1433, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1433, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1433, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1433, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !158, line: 3394, baseType: !1787, size: 1344)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1814, !1815, !1816, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1787, file: !158, line: 2280, baseType: !1233, size: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1787, file: !158, line: 2281, baseType: !1195, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1787, file: !158, line: 2282, baseType: !1195, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1787, file: !158, line: 2283, baseType: !1195, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1787, file: !158, line: 2284, baseType: !1195, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1787, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1787, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1787, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1787, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1787, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1787, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1787, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1787, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1787, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1787, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1787, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1787, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1787, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1787, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1787, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1787, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1787, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1787, file: !158, line: 2306, baseType: !1812, size: 32, offset: 544)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1813, line: 31, baseType: !569)
!1813 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1787, file: !158, line: 2307, baseType: !1195, size: 64, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1787, file: !158, line: 2308, baseType: !1195, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1787, file: !158, line: 2314, baseType: !1817, size: 64, offset: 704)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1817, file: !158, line: 2310, baseType: !569, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1817, file: !158, line: 2311, baseType: !574, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1817, file: !158, line: 2312, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !158, line: 2315, baseType: !1195, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1787, file: !158, line: 2316, baseType: !1195, size: 64, offset: 832)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1787, file: !158, line: 2317, baseType: !1195, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1787, file: !158, line: 2318, baseType: !1195, size: 64, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1787, file: !158, line: 2319, baseType: !1195, size: 64, offset: 1024)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1787, file: !158, line: 2320, baseType: !1195, size: 64, offset: 1088)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1787, file: !158, line: 2321, baseType: !1195, size: 64, offset: 1152)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1787, file: !158, line: 2322, baseType: !1195, size: 64, offset: 1216)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1787, file: !158, line: 2324, baseType: !1833, size: 64, offset: 1280)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1197, file: !158, line: 3395, baseType: !1836, size: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1836, file: !158, line: 1470, baseType: !1233, size: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1836, file: !158, line: 1471, baseType: !1195, size: 64, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1836, file: !158, line: 1472, baseType: !1195, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1197, file: !158, line: 3396, baseType: !1842, size: 320)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1842, file: !158, line: 1483, baseType: !1233, size: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1842, file: !158, line: 1484, baseType: !569, size: 32, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1842, file: !158, line: 1485, baseType: !1578, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1197, file: !158, line: 3397, baseType: !1848, size: 384)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1853}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1848, file: !158, line: 1830, baseType: !1233, size: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1848, file: !158, line: 1831, baseType: !1312, size: 32, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1848, file: !158, line: 1832, baseType: !1195, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1848, file: !158, line: 1835, baseType: !1578, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1197, file: !158, line: 3398, baseType: !1855, size: 704)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1863, !1864, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1855, file: !158, line: 1899, baseType: !1233, size: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1855, file: !158, line: 1902, baseType: !1195, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1855, file: !158, line: 1905, baseType: !1860, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !595, line: 58, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !595, line: 57, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1855, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1855, file: !158, line: 1911, baseType: !1865, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1855, file: !158, line: 1914, baseType: !1868, size: 256, offset: 448)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1869)
!1869 = !{!1870, !1872, !1873, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1868, file: !158, line: 1884, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1868, file: !158, line: 1885, baseType: !1871, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1868, file: !158, line: 1891, baseType: !1874, size: 64, offset: 128)
!1874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !158, line: 1891, size: 64, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1874, file: !158, line: 1891, baseType: !1860, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1874, file: !158, line: 1891, baseType: !1195, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1868, file: !158, line: 1892, baseType: !1879, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1197, file: !158, line: 3399, baseType: !1881, size: 704)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1881, file: !158, line: 2009, baseType: !1233, size: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1881, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1881, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1881, file: !158, line: 2014, baseType: !1312, size: 32, offset: 224)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1881, file: !158, line: 2016, baseType: !1195, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1881, file: !158, line: 2017, baseType: !1567, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1881, file: !158, line: 2019, baseType: !1195, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1881, file: !158, line: 2020, baseType: !1195, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1881, file: !158, line: 2021, baseType: !1195, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1881, file: !158, line: 2022, baseType: !1195, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1881, file: !158, line: 2023, baseType: !1195, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1197, file: !158, line: 3400, baseType: !1895, size: 832)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1895, file: !158, line: 2431, baseType: !1233, size: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1895, file: !158, line: 2433, baseType: !1195, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1895, file: !158, line: 2434, baseType: !1195, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1895, file: !158, line: 2435, baseType: !1195, size: 64, offset: 320)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1895, file: !158, line: 2436, baseType: !1195, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1895, file: !158, line: 2437, baseType: !1567, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1895, file: !158, line: 2438, baseType: !1195, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1895, file: !158, line: 2440, baseType: !1195, size: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1895, file: !158, line: 2441, baseType: !1195, size: 64, offset: 640)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1895, file: !158, line: 2443, baseType: !1907, size: 128, offset: 704)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1908, file: !158, line: 182, baseType: !1572, size: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1197, file: !158, line: 3401, baseType: !1912, size: 320)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1913)
!1913 = !{!1914, !1915, !1922}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1912, file: !158, line: 3329, baseType: !1233, size: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1912, file: !158, line: 3330, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1917, file: !158, line: 3322, baseType: !1916, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1917, file: !158, line: 3323, baseType: !1916, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1917, file: !158, line: 3324, baseType: !1195, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1912, file: !158, line: 3331, baseType: !1916, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1197, file: !158, line: 3402, baseType: !1924, size: 256)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1924, file: !158, line: 1541, baseType: !1233, size: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1924, file: !158, line: 1542, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1931)
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1930, file: !158, line: 1538, baseType: !1933, size: 192)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1935)
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1934, file: !158, line: 1537, baseType: !7, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1934, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1934, file: !158, line: 1537, baseType: !1939, size: 128, offset: 64)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1940, size: 128, elements: !744)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1941, file: !158, line: 1533, baseType: !1195, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1941, file: !158, line: 1534, baseType: !1195, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1197, file: !158, line: 3403, baseType: !1946, size: 512)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1957, !1958, !1959}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1946, file: !158, line: 1939, baseType: !1233, size: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1946, file: !158, line: 1940, baseType: !1312, size: 32, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1946, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1946, file: !158, line: 1946, baseType: !1952, size: 32, offset: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1953)
!1953 = !{!1954, !1955, !1956}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1952, file: !158, line: 1943, baseType: !176, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1952, file: !158, line: 1944, baseType: !183, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1952, file: !158, line: 1945, baseType: !190, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1946, file: !158, line: 1950, baseType: !1630, size: 64, offset: 320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1946, file: !158, line: 1951, baseType: !1630, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1946, file: !158, line: 1953, baseType: !1578, size: 64, offset: 448)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1197, file: !158, line: 3404, baseType: !1961, size: 1664)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1961, file: !158, line: 3338, baseType: !1233, size: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1961, file: !158, line: 3341, baseType: !1965, size: 1472, offset: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1966, line: 410, size: 1472, elements: !1967)
!1966 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1965, file: !1966, line: 412, baseType: !569, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1965, file: !1966, line: 413, baseType: !569, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1965, file: !1966, line: 414, baseType: !569, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1965, file: !1966, line: 415, baseType: !569, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1965, file: !1966, line: 416, baseType: !569, size: 32, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1965, file: !1966, line: 417, baseType: !569, size: 32, offset: 160)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1965, file: !1966, line: 418, baseType: !568, size: 8, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1965, file: !1966, line: 419, baseType: !568, size: 8, offset: 200)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1965, file: !1966, line: 420, baseType: !741, size: 8, offset: 208)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1965, file: !1966, line: 421, baseType: !741, size: 8, offset: 216)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1965, file: !1966, line: 422, baseType: !741, size: 8, offset: 224)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1965, file: !1966, line: 423, baseType: !741, size: 8, offset: 232)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1965, file: !1966, line: 424, baseType: !741, size: 8, offset: 240)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1965, file: !1966, line: 425, baseType: !741, size: 8, offset: 248)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1965, file: !1966, line: 426, baseType: !741, size: 8, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1965, file: !1966, line: 427, baseType: !741, size: 8, offset: 264)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1965, file: !1966, line: 428, baseType: !741, size: 8, offset: 272)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1965, file: !1966, line: 429, baseType: !741, size: 8, offset: 280)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1965, file: !1966, line: 430, baseType: !741, size: 8, offset: 288)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1965, file: !1966, line: 431, baseType: !741, size: 8, offset: 296)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1965, file: !1966, line: 432, baseType: !741, size: 8, offset: 304)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1965, file: !1966, line: 433, baseType: !741, size: 8, offset: 312)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1965, file: !1966, line: 434, baseType: !741, size: 8, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1965, file: !1966, line: 435, baseType: !741, size: 8, offset: 328)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1965, file: !1966, line: 436, baseType: !741, size: 8, offset: 336)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1965, file: !1966, line: 437, baseType: !741, size: 8, offset: 344)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1965, file: !1966, line: 438, baseType: !741, size: 8, offset: 352)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1965, file: !1966, line: 439, baseType: !741, size: 8, offset: 360)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1965, file: !1966, line: 440, baseType: !741, size: 8, offset: 368)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1965, file: !1966, line: 441, baseType: !741, size: 8, offset: 376)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1965, file: !1966, line: 442, baseType: !741, size: 8, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1965, file: !1966, line: 443, baseType: !741, size: 8, offset: 392)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1965, file: !1966, line: 444, baseType: !741, size: 8, offset: 400)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1965, file: !1966, line: 445, baseType: !741, size: 8, offset: 408)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1965, file: !1966, line: 446, baseType: !741, size: 8, offset: 416)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1965, file: !1966, line: 447, baseType: !741, size: 8, offset: 424)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1965, file: !1966, line: 448, baseType: !741, size: 8, offset: 432)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1965, file: !1966, line: 449, baseType: !741, size: 8, offset: 440)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1965, file: !1966, line: 450, baseType: !741, size: 8, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1965, file: !1966, line: 451, baseType: !741, size: 8, offset: 456)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1965, file: !1966, line: 452, baseType: !741, size: 8, offset: 464)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1965, file: !1966, line: 453, baseType: !741, size: 8, offset: 472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1965, file: !1966, line: 454, baseType: !741, size: 8, offset: 480)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1965, file: !1966, line: 455, baseType: !741, size: 8, offset: 488)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1965, file: !1966, line: 456, baseType: !741, size: 8, offset: 496)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1965, file: !1966, line: 457, baseType: !741, size: 8, offset: 504)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1965, file: !1966, line: 458, baseType: !741, size: 8, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1965, file: !1966, line: 459, baseType: !741, size: 8, offset: 520)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1965, file: !1966, line: 460, baseType: !741, size: 8, offset: 528)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1965, file: !1966, line: 461, baseType: !741, size: 8, offset: 536)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1965, file: !1966, line: 462, baseType: !741, size: 8, offset: 544)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1965, file: !1966, line: 463, baseType: !741, size: 8, offset: 552)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1965, file: !1966, line: 464, baseType: !741, size: 8, offset: 560)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1965, file: !1966, line: 465, baseType: !741, size: 8, offset: 568)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1965, file: !1966, line: 466, baseType: !741, size: 8, offset: 576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1965, file: !1966, line: 467, baseType: !741, size: 8, offset: 584)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1965, file: !1966, line: 468, baseType: !741, size: 8, offset: 592)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1965, file: !1966, line: 469, baseType: !741, size: 8, offset: 600)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1965, file: !1966, line: 470, baseType: !741, size: 8, offset: 608)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1965, file: !1966, line: 471, baseType: !741, size: 8, offset: 616)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1965, file: !1966, line: 472, baseType: !741, size: 8, offset: 624)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1965, file: !1966, line: 473, baseType: !741, size: 8, offset: 632)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1965, file: !1966, line: 474, baseType: !741, size: 8, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1965, file: !1966, line: 475, baseType: !741, size: 8, offset: 648)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1965, file: !1966, line: 476, baseType: !741, size: 8, offset: 656)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1965, file: !1966, line: 477, baseType: !741, size: 8, offset: 664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1965, file: !1966, line: 478, baseType: !741, size: 8, offset: 672)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1965, file: !1966, line: 479, baseType: !741, size: 8, offset: 680)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1965, file: !1966, line: 480, baseType: !741, size: 8, offset: 688)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1965, file: !1966, line: 481, baseType: !741, size: 8, offset: 696)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1965, file: !1966, line: 482, baseType: !741, size: 8, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1965, file: !1966, line: 483, baseType: !741, size: 8, offset: 712)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1965, file: !1966, line: 484, baseType: !741, size: 8, offset: 720)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1965, file: !1966, line: 485, baseType: !741, size: 8, offset: 728)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1965, file: !1966, line: 486, baseType: !741, size: 8, offset: 736)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1965, file: !1966, line: 487, baseType: !741, size: 8, offset: 744)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1965, file: !1966, line: 488, baseType: !741, size: 8, offset: 752)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1965, file: !1966, line: 489, baseType: !741, size: 8, offset: 760)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1965, file: !1966, line: 490, baseType: !741, size: 8, offset: 768)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1965, file: !1966, line: 491, baseType: !741, size: 8, offset: 776)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1965, file: !1966, line: 492, baseType: !741, size: 8, offset: 784)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1965, file: !1966, line: 493, baseType: !741, size: 8, offset: 792)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1965, file: !1966, line: 494, baseType: !741, size: 8, offset: 800)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1965, file: !1966, line: 495, baseType: !741, size: 8, offset: 808)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1965, file: !1966, line: 496, baseType: !741, size: 8, offset: 816)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1965, file: !1966, line: 497, baseType: !741, size: 8, offset: 824)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1965, file: !1966, line: 498, baseType: !741, size: 8, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1965, file: !1966, line: 499, baseType: !741, size: 8, offset: 840)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1965, file: !1966, line: 500, baseType: !741, size: 8, offset: 848)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1965, file: !1966, line: 501, baseType: !741, size: 8, offset: 856)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1965, file: !1966, line: 502, baseType: !741, size: 8, offset: 864)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1965, file: !1966, line: 503, baseType: !741, size: 8, offset: 872)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1965, file: !1966, line: 504, baseType: !741, size: 8, offset: 880)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1965, file: !1966, line: 505, baseType: !741, size: 8, offset: 888)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1965, file: !1966, line: 506, baseType: !741, size: 8, offset: 896)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1965, file: !1966, line: 507, baseType: !741, size: 8, offset: 904)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1965, file: !1966, line: 508, baseType: !741, size: 8, offset: 912)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1965, file: !1966, line: 509, baseType: !741, size: 8, offset: 920)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1965, file: !1966, line: 510, baseType: !741, size: 8, offset: 928)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1965, file: !1966, line: 511, baseType: !741, size: 8, offset: 936)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1965, file: !1966, line: 512, baseType: !741, size: 8, offset: 944)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1965, file: !1966, line: 513, baseType: !741, size: 8, offset: 952)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1965, file: !1966, line: 514, baseType: !741, size: 8, offset: 960)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1965, file: !1966, line: 515, baseType: !741, size: 8, offset: 968)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1965, file: !1966, line: 516, baseType: !741, size: 8, offset: 976)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1965, file: !1966, line: 517, baseType: !741, size: 8, offset: 984)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1965, file: !1966, line: 518, baseType: !741, size: 8, offset: 992)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1965, file: !1966, line: 519, baseType: !741, size: 8, offset: 1000)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1965, file: !1966, line: 520, baseType: !741, size: 8, offset: 1008)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1965, file: !1966, line: 521, baseType: !741, size: 8, offset: 1016)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1965, file: !1966, line: 522, baseType: !741, size: 8, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1965, file: !1966, line: 523, baseType: !741, size: 8, offset: 1032)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1965, file: !1966, line: 524, baseType: !741, size: 8, offset: 1040)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1965, file: !1966, line: 525, baseType: !741, size: 8, offset: 1048)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1965, file: !1966, line: 526, baseType: !741, size: 8, offset: 1056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1965, file: !1966, line: 527, baseType: !741, size: 8, offset: 1064)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1965, file: !1966, line: 528, baseType: !741, size: 8, offset: 1072)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1965, file: !1966, line: 529, baseType: !741, size: 8, offset: 1080)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1965, file: !1966, line: 530, baseType: !741, size: 8, offset: 1088)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1965, file: !1966, line: 531, baseType: !741, size: 8, offset: 1096)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1965, file: !1966, line: 532, baseType: !741, size: 8, offset: 1104)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1965, file: !1966, line: 533, baseType: !741, size: 8, offset: 1112)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1965, file: !1966, line: 534, baseType: !741, size: 8, offset: 1120)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1965, file: !1966, line: 535, baseType: !741, size: 8, offset: 1128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1965, file: !1966, line: 536, baseType: !741, size: 8, offset: 1136)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1965, file: !1966, line: 537, baseType: !741, size: 8, offset: 1144)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1965, file: !1966, line: 538, baseType: !741, size: 8, offset: 1152)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1965, file: !1966, line: 539, baseType: !741, size: 8, offset: 1160)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1965, file: !1966, line: 540, baseType: !741, size: 8, offset: 1168)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1965, file: !1966, line: 541, baseType: !741, size: 8, offset: 1176)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1965, file: !1966, line: 542, baseType: !741, size: 8, offset: 1184)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1965, file: !1966, line: 543, baseType: !741, size: 8, offset: 1192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1965, file: !1966, line: 544, baseType: !741, size: 8, offset: 1200)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1965, file: !1966, line: 545, baseType: !741, size: 8, offset: 1208)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1965, file: !1966, line: 546, baseType: !741, size: 8, offset: 1216)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1965, file: !1966, line: 547, baseType: !741, size: 8, offset: 1224)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1965, file: !1966, line: 548, baseType: !741, size: 8, offset: 1232)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1965, file: !1966, line: 549, baseType: !741, size: 8, offset: 1240)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1965, file: !1966, line: 550, baseType: !741, size: 8, offset: 1248)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1965, file: !1966, line: 551, baseType: !741, size: 8, offset: 1256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1965, file: !1966, line: 552, baseType: !741, size: 8, offset: 1264)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1965, file: !1966, line: 553, baseType: !741, size: 8, offset: 1272)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1965, file: !1966, line: 554, baseType: !741, size: 8, offset: 1280)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1965, file: !1966, line: 555, baseType: !741, size: 8, offset: 1288)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1965, file: !1966, line: 556, baseType: !741, size: 8, offset: 1296)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1965, file: !1966, line: 557, baseType: !741, size: 8, offset: 1304)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1965, file: !1966, line: 558, baseType: !741, size: 8, offset: 1312)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1965, file: !1966, line: 559, baseType: !741, size: 8, offset: 1320)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1965, file: !1966, line: 560, baseType: !741, size: 8, offset: 1328)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1965, file: !1966, line: 561, baseType: !741, size: 8, offset: 1336)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1965, file: !1966, line: 562, baseType: !741, size: 8, offset: 1344)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1965, file: !1966, line: 563, baseType: !741, size: 8, offset: 1352)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1965, file: !1966, line: 564, baseType: !741, size: 8, offset: 1360)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1965, file: !1966, line: 565, baseType: !741, size: 8, offset: 1368)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1965, file: !1966, line: 566, baseType: !741, size: 8, offset: 1376)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1965, file: !1966, line: 567, baseType: !741, size: 8, offset: 1384)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1965, file: !1966, line: 568, baseType: !741, size: 8, offset: 1392)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1965, file: !1966, line: 569, baseType: !741, size: 8, offset: 1400)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1965, file: !1966, line: 570, baseType: !741, size: 8, offset: 1408)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1965, file: !1966, line: 571, baseType: !741, size: 8, offset: 1416)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1965, file: !1966, line: 572, baseType: !741, size: 8, offset: 1424)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1965, file: !1966, line: 573, baseType: !741, size: 8, offset: 1432)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1965, file: !1966, line: 574, baseType: !741, size: 8, offset: 1440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1197, file: !158, line: 3405, baseType: !2132, size: 384)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2132, file: !158, line: 3353, baseType: !1233, size: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2132, file: !158, line: 3356, baseType: !2136, size: 192, offset: 192)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1966, line: 578, size: 192, elements: !2137)
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2136, file: !1966, line: 580, baseType: !569, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2136, file: !1966, line: 581, baseType: !569, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2136, file: !1966, line: 582, baseType: !569, size: 32, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2136, file: !1966, line: 583, baseType: !569, size: 32, offset: 96)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2136, file: !1966, line: 584, baseType: !568, size: 8, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2136, file: !1966, line: 585, baseType: !568, size: 8, offset: 136)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2136, file: !1966, line: 586, baseType: !568, size: 8, offset: 144)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2136, file: !1966, line: 587, baseType: !568, size: 8, offset: 152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2136, file: !1966, line: 588, baseType: !568, size: 8, offset: 160)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2136, file: !1966, line: 589, baseType: !568, size: 8, offset: 168)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2136, file: !1966, line: 590, baseType: !568, size: 8, offset: 176)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1163, file: !385, line: 178, baseType: !1604, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1163, file: !385, line: 179, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !385, line: 150, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !385, line: 142, size: 320, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !2153, file: !385, line: 144, baseType: !1195, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2153, file: !385, line: 145, baseType: !1143, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2153, file: !385, line: 146, baseType: !1143, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2153, file: !385, line: 147, baseType: !1812, size: 32, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2153, file: !385, line: 148, baseType: !7, size: 32, offset: 224)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !2153, file: !385, line: 149, baseType: !568, size: 8, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1163, file: !385, line: 180, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !385, line: 162, baseType: !2164)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !385, line: 159, size: 128, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2164, file: !385, line: 160, baseType: !1195, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2164, file: !385, line: 161, baseType: !628, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1163, file: !385, line: 181, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !385, line: 181, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1158, file: !385, line: 317, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 64, elements: !744)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1158, file: !385, line: 318, baseType: !2174, size: 320)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !385, line: 188, size: 320, elements: !2175)
!2175 = !{!2176, !2178, !2233}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !2174, file: !385, line: 190, baseType: !2177, size: 192)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 192, elements: !1028)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2174, file: !385, line: 193, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !385, line: 206, size: 320, elements: !2181)
!2181 = !{!2182, !2218, !2219, !2220, !2232}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !2180, file: !385, line: 208, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !595, line: 62, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !2186, line: 538, size: 256, elements: !2187)
!2186 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2187 = !{!2188, !2192, !2198, !2209}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2185, file: !2186, line: 539, baseType: !2189, size: 32)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !2186, line: 482, size: 32, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2186, line: 484, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !2185, file: !2186, line: 540, baseType: !2193, size: 192)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !2186, line: 488, size: 192, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2193, file: !2186, line: 489, baseType: !2189, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2193, file: !2186, line: 492, baseType: !574, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2193, file: !2186, line: 496, baseType: !1195, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !2185, file: !2186, line: 541, baseType: !2199, size: 256)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !2186, line: 504, size: 256, elements: !2200)
!2200 = !{!2201, !2202, !2207, !2208}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2199, file: !2186, line: 505, baseType: !2189, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2199, file: !2186, line: 509, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !2186, line: 501, baseType: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !888}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2199, file: !2186, line: 510, baseType: !888, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2199, file: !2186, line: 513, baseType: !2183, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !2185, file: !2186, line: 542, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !2186, line: 530, size: 128, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2210, file: !2186, line: 531, baseType: !2189, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2210, file: !2186, line: 534, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !2186, line: 525, baseType: !2215)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!568, !1195, !574, !578, !578}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2180, file: !385, line: 211, baseType: !7, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2180, file: !385, line: 214, baseType: !628, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2180, file: !385, line: 224, baseType: !2221, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !385, line: 202, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !385, line: 202, size: 128, elements: !2224)
!2224 = !{!2225}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2223, file: !385, line: 202, baseType: !2226, size: 128)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !385, line: 200, baseType: !2227)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !385, line: 200, size: 128, elements: !2228)
!2228 = !{!2229, !2230, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2227, file: !385, line: 200, baseType: !7, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2227, file: !385, line: 200, baseType: !7, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2227, file: !385, line: 200, baseType: !1176, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !2180, file: !385, line: 234, baseType: !2221, size: 64, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2174, file: !385, line: 197, baseType: !628, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1158, file: !385, line: 319, baseType: !1255, size: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1158, file: !385, line: 320, baseType: !1272, size: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2250, !2251, !2254, !2255, !2256, !2257, !2259}
!2238 = !DILocalVariable(name: "x", arg: 1, scope: !1140, file: !3, line: 205, type: !1143)
!2239 = !DILocalVariable(name: "res", arg: 2, scope: !1140, file: !3, line: 205, type: !2236)
!2240 = !DILocalVariable(name: "include_delayed_effects", arg: 3, scope: !1140, file: !3, line: 206, type: !568)
!2241 = !DILocalVariable(name: "code", scope: !1140, file: !3, line: 208, type: !384)
!2242 = !DILocalVariable(name: "i", scope: !1140, file: !3, line: 209, type: !569)
!2243 = !DILocalVariable(name: "j", scope: !1140, file: !3, line: 209, type: !569)
!2244 = !DILocalVariable(name: "r", scope: !1140, file: !3, line: 210, type: !7)
!2245 = !DILocalVariable(name: "format_ptr", scope: !1140, file: !3, line: 211, type: !574)
!2246 = !DILocalVariable(name: "regno", scope: !2247, file: !3, line: 232, type: !7)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 231, column: 2)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 228, column: 11)
!2249 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 216, column: 5)
!2250 = !DILocalVariable(name: "last_regno", scope: !2247, file: !3, line: 233, type: !7)
!2251 = !DILocalVariable(name: "insn", scope: !2252, file: !3, line: 319, type: !1143)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 311, column: 2)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 310, column: 11)
!2254 = !DILocalVariable(name: "sequence", scope: !2252, file: !3, line: 320, type: !1143)
!2255 = !DILocalVariable(name: "seq_size", scope: !2252, file: !3, line: 321, type: !569)
!2256 = !DILocalVariable(name: "i", scope: !2252, file: !3, line: 322, type: !569)
!2257 = !DILocalVariable(name: "link", scope: !2258, file: !3, line: 358, type: !1143)
!2258 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 357, column: 4)
!2259 = !DILocalVariable(name: "slot_pat", scope: !2260, file: !3, line: 367, type: !1143)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 366, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 365, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 365, column: 5)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 364, column: 3)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 363, column: 12)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 360, column: 6)
!2266 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 360, column: 6)
!2267 = !DILocation(line: 0, scope: !2252)
!2268 = !DILocation(line: 0, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 249, column: 11)
!2270 = !DILocation(line: 0, scope: !2249)
!2271 = !DILocation(line: 303, column: 2, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 302, column: 11)
!2273 = !DILocation(line: 0, scope: !2253)
!2274 = !DILocation(line: 215, column: 3, scope: !1140)
!2275 = !DILocation(line: 0, scope: !1140)
!2276 = !DILocation(line: 208, column: 24, scope: !1140)
!2277 = !DILocation(line: 310, column: 11, scope: !2249)
!2278 = !DILocation(line: 392, column: 34, scope: !2249)
!2279 = !DILocation(line: 392, column: 7, scope: !2249)
!2280 = !DILocation(line: 414, column: 1, scope: !1140)
!2281 = !DILocation(line: 228, column: 12, scope: !2248)
!2282 = !DILocation(line: 242, column: 7, scope: !2249)
!2283 = !DILocation(line: 249, column: 11, scope: !2269)
!2284 = !DILocation(line: 260, column: 12, scope: !2249)
!2285 = !DILocation(line: 271, column: 23, scope: !2249)
!2286 = !DILocation(line: 285, column: 34, scope: !2249)
!2287 = !DILocation(line: 294, column: 34, scope: !2249)
!2288 = !DILocation(line: 228, column: 11, scope: !2249)
!2289 = !DILocation(line: 229, column: 2, scope: !2248)
!2290 = !DILocation(line: 232, column: 25, scope: !2247)
!2291 = !DILocation(line: 0, scope: !2247)
!2292 = !DILocation(line: 233, column: 38, scope: !2247)
!2293 = !DILocation(line: 233, column: 36, scope: !2247)
!2294 = !DILocation(line: 235, column: 4, scope: !2247)
!2295 = !DILocation(line: 236, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 236, column: 4)
!2297 = !DILocation(line: 0, scope: !2296)
!2298 = !DILocation(line: 236, column: 22, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 236, column: 4)
!2300 = !DILocation(line: 236, column: 4, scope: !2296)
!2301 = !DILocation(line: 237, column: 6, scope: !2299)
!2302 = !DILocation(line: 236, column: 37, scope: !2299)
!2303 = !DILocation(line: 236, column: 4, scope: !2299)
!2304 = distinct !{!2304, !2300, !2305}
!2305 = !DILocation(line: 237, column: 6, scope: !2296)
!2306 = !DILocation(line: 243, column: 40, scope: !2249)
!2307 = !DILocation(line: 243, column: 54, scope: !2249)
!2308 = !DILocation(line: 243, column: 7, scope: !2249)
!2309 = !DILocation(line: 244, column: 7, scope: !2249)
!2310 = !DILocation(line: 249, column: 11, scope: !2249)
!2311 = !DILocation(line: 250, column: 19, scope: !2269)
!2312 = !DILocation(line: 250, column: 2, scope: !2269)
!2313 = !DILocation(line: 252, column: 14, scope: !2269)
!2314 = !DILocation(line: 253, column: 23, scope: !2249)
!2315 = !DILocation(line: 253, column: 20, scope: !2249)
!2316 = !DILocation(line: 256, column: 34, scope: !2249)
!2317 = !DILocation(line: 256, column: 7, scope: !2249)
!2318 = !DILocation(line: 260, column: 15, scope: !2249)
!2319 = !DILocation(line: 261, column: 7, scope: !2249)
!2320 = !DILocation(line: 267, column: 20, scope: !2249)
!2321 = !DILocation(line: 268, column: 7, scope: !2249)
!2322 = !DILocation(line: 271, column: 20, scope: !2249)
!2323 = !DILocation(line: 0, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 278, column: 7)
!2325 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 278, column: 7)
!2326 = !DILocation(line: 278, column: 12, scope: !2325)
!2327 = !DILocation(line: 0, scope: !2325)
!2328 = !DILocation(line: 278, column: 23, scope: !2324)
!2329 = !DILocation(line: 278, column: 21, scope: !2324)
!2330 = !DILocation(line: 278, column: 7, scope: !2325)
!2331 = !DILocation(line: 279, column: 29, scope: !2324)
!2332 = !DILocation(line: 279, column: 2, scope: !2324)
!2333 = !DILocation(line: 278, column: 55, scope: !2324)
!2334 = !DILocation(line: 278, column: 7, scope: !2324)
!2335 = distinct !{!2335, !2330, !2336}
!2336 = !DILocation(line: 279, column: 66, scope: !2325)
!2337 = !DILocation(line: 285, column: 7, scope: !2249)
!2338 = !DILocation(line: 286, column: 34, scope: !2249)
!2339 = !DILocation(line: 286, column: 7, scope: !2249)
!2340 = !DILocation(line: 294, column: 7, scope: !2249)
!2341 = !DILocation(line: 296, column: 11, scope: !2249)
!2342 = !DILocation(line: 297, column: 11, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 297, column: 11)
!2344 = !DILocation(line: 297, column: 24, scope: !2343)
!2345 = !DILocation(line: 298, column: 4, scope: !2343)
!2346 = !DILocation(line: 298, column: 20, scope: !2343)
!2347 = !DILocation(line: 297, column: 11, scope: !2249)
!2348 = !DILocation(line: 299, column: 2, scope: !2343)
!2349 = !DILocation(line: 300, column: 29, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 300, column: 16)
!2351 = !DILocation(line: 300, column: 16, scope: !2343)
!2352 = !DILocation(line: 301, column: 6, scope: !2350)
!2353 = !DILocation(line: 301, column: 2, scope: !2350)
!2354 = !DILocation(line: 302, column: 11, scope: !2272)
!2355 = !DILocation(line: 302, column: 11, scope: !2249)
!2356 = !DILocation(line: 303, column: 29, scope: !2272)
!2357 = !DILocation(line: 319, column: 15, scope: !2252)
!2358 = !DILocation(line: 325, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 325, column: 8)
!2360 = !DILocation(line: 325, column: 25, scope: !2359)
!2361 = !DILocation(line: 325, column: 8, scope: !2252)
!2362 = !DILocation(line: 327, column: 19, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 326, column: 6)
!2364 = !DILocation(line: 328, column: 19, scope: !2363)
!2365 = !DILocation(line: 329, column: 8, scope: !2363)
!2366 = !DILocation(line: 332, column: 16, scope: !2252)
!2367 = !DILocation(line: 333, column: 4, scope: !2252)
!2368 = !DILocation(line: 334, column: 8, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 334, column: 8)
!2370 = !DILocation(line: 334, column: 8, scope: !2252)
!2371 = !DILocation(line: 338, column: 8, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 335, column: 6)
!2373 = !DILocation(line: 340, column: 6, scope: !2372)
!2374 = !DILocation(line: 342, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 342, column: 4)
!2376 = !DILocation(line: 342, column: 18, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 342, column: 4)
!2378 = !DILocation(line: 342, column: 4, scope: !2375)
!2379 = !DILocation(line: 343, column: 10, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 343, column: 10)
!2381 = !DILocation(line: 343, column: 10, scope: !2377)
!2382 = !DILocation(line: 344, column: 8, scope: !2380)
!2383 = !DILocation(line: 342, column: 44, scope: !2377)
!2384 = !DILocation(line: 342, column: 4, scope: !2377)
!2385 = distinct !{!2385, !2378, !2386}
!2386 = !DILocation(line: 344, column: 8, scope: !2375)
!2387 = !DILocation(line: 354, column: 8, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 354, column: 8)
!2389 = !DILocation(line: 354, column: 8, scope: !2252)
!2390 = !DILocation(line: 355, column: 6, scope: !2388)
!2391 = !DILocation(line: 360, column: 18, scope: !2266)
!2392 = !DILocation(line: 0, scope: !2260)
!2393 = !DILocation(line: 360, column: 11, scope: !2266)
!2394 = !DILocation(line: 0, scope: !2266)
!2395 = !DILocation(line: 0, scope: !2258)
!2396 = !DILocation(line: 360, column: 6, scope: !2266)
!2397 = !DILocation(line: 363, column: 12, scope: !2264)
!2398 = !DILocation(line: 363, column: 38, scope: !2264)
!2399 = !DILocation(line: 363, column: 12, scope: !2265)
!2400 = !DILocation(line: 0, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 368, column: 13)
!2402 = !DILocation(line: 365, column: 5, scope: !2262)
!2403 = !DILocation(line: 0, scope: !2262)
!2404 = !DILocation(line: 365, column: 19, scope: !2261)
!2405 = !DILocation(line: 367, column: 24, scope: !2260)
!2406 = !DILocation(line: 368, column: 13, scope: !2401)
!2407 = !DILocation(line: 368, column: 33, scope: !2401)
!2408 = !DILocation(line: 369, column: 6, scope: !2401)
!2409 = !DILocation(line: 369, column: 22, scope: !2401)
!2410 = !DILocation(line: 370, column: 8, scope: !2401)
!2411 = !DILocation(line: 369, column: 9, scope: !2401)
!2412 = !DILocation(line: 368, column: 13, scope: !2260)
!2413 = !DILocation(line: 372, column: 7, scope: !2261)
!2414 = !DILocation(line: 365, column: 32, scope: !2261)
!2415 = !DILocation(line: 365, column: 5, scope: !2261)
!2416 = distinct !{!2416, !2402, !2417}
!2417 = !DILocation(line: 372, column: 7, scope: !2262)
!2418 = !DILocation(line: 373, column: 9, scope: !2263)
!2419 = !DILocation(line: 374, column: 34, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 373, column: 9)
!2421 = !DILocation(line: 374, column: 7, scope: !2420)
!2422 = !DILocation(line: 362, column: 11, scope: !2265)
!2423 = !DILocation(line: 360, column: 6, scope: !2265)
!2424 = distinct !{!2424, !2396, !2425}
!2425 = !DILocation(line: 376, column: 3, scope: !2266)
!2426 = !DILocation(line: 400, column: 16, scope: !1140)
!2427 = !DILocation(line: 0, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 401, column: 3)
!2429 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 401, column: 3)
!2430 = !DILocation(line: 0, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 409, column: 2)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 409, column: 2)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 403, column: 7)
!2434 = !DILocation(line: 401, column: 17, scope: !2428)
!2435 = !DILocation(line: 401, column: 8, scope: !2429)
!2436 = !DILocation(line: 401, column: 3, scope: !2429)
!2437 = !DILocation(line: 402, column: 24, scope: !2428)
!2438 = !DILocation(line: 402, column: 13, scope: !2428)
!2439 = !DILocation(line: 402, column: 5, scope: !2428)
!2440 = !DILocation(line: 409, column: 2, scope: !2432)
!2441 = !DILocation(line: 405, column: 29, scope: !2433)
!2442 = !DILocation(line: 405, column: 2, scope: !2433)
!2443 = !DILocation(line: 406, column: 2, scope: !2433)
!2444 = !DILocation(line: 0, scope: !2432)
!2445 = !DILocation(line: 409, column: 18, scope: !2431)
!2446 = !DILocation(line: 409, column: 16, scope: !2431)
!2447 = !DILocation(line: 410, column: 31, scope: !2431)
!2448 = !DILocation(line: 410, column: 4, scope: !2431)
!2449 = !DILocation(line: 409, column: 35, scope: !2431)
!2450 = !DILocation(line: 409, column: 2, scope: !2431)
!2451 = distinct !{!2451, !2440, !2452}
!2452 = !DILocation(line: 411, column: 33, scope: !2432)
!2453 = !DILocation(line: 401, column: 43, scope: !2428)
!2454 = !DILocation(line: 401, column: 3, scope: !2428)
!2455 = distinct !{!2455, !2436, !2456}
!2456 = !DILocation(line: 413, column: 7, scope: !2429)
!2457 = distinct !DISubprogram(name: "rhs_regno", scope: !385, file: !385, line: 1051, type: !2458, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2463)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!7, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !595, line: 51, baseType: !2461)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "x", arg: 1, scope: !2457, file: !385, line: 1051, type: !2460)
!2465 = !DILocation(line: 0, scope: !2457)
!2466 = !DILocation(line: 1053, column: 10, scope: !2457)
!2467 = !DILocation(line: 1053, column: 3, scope: !2457)
!2468 = distinct !DISubprogram(name: "add_to_hard_reg_set", scope: !2469, file: !2469, line: 307, type: !2470, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2473)
!2469 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472, !5, !7}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DILocalVariable(name: "regs", arg: 1, scope: !2468, file: !2469, line: 307, type: !2472)
!2475 = !DILocalVariable(name: "mode", arg: 2, scope: !2468, file: !2469, line: 307, type: !5)
!2476 = !DILocalVariable(name: "regno", arg: 3, scope: !2468, file: !2469, line: 308, type: !7)
!2477 = !DILocalVariable(name: "end_regno", scope: !2468, file: !2469, line: 310, type: !7)
!2478 = !DILocation(line: 0, scope: !2468)
!2479 = !DILocation(line: 312, column: 15, scope: !2468)
!2480 = !DILocation(line: 314, column: 5, scope: !2468)
!2481 = !DILocation(line: 313, column: 3, scope: !2468)
!2482 = !DILocation(line: 315, column: 10, scope: !2468)
!2483 = !DILocation(line: 315, column: 18, scope: !2468)
!2484 = distinct !{!2484, !2481, !2485}
!2485 = !DILocation(line: 315, column: 29, scope: !2468)
!2486 = !DILocation(line: 316, column: 1, scope: !2468)
!2487 = distinct !DISubprogram(name: "mark_set_resources", scope: !3, file: !3, line: 614, type: !2488, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !1143, !2236, !569, !527}
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2504, !2509, !2510}
!2491 = !DILocalVariable(name: "x", arg: 1, scope: !2487, file: !3, line: 614, type: !1143)
!2492 = !DILocalVariable(name: "res", arg: 2, scope: !2487, file: !3, line: 614, type: !2236)
!2493 = !DILocalVariable(name: "in_dest", arg: 3, scope: !2487, file: !3, line: 614, type: !569)
!2494 = !DILocalVariable(name: "mark_type", arg: 4, scope: !2487, file: !3, line: 615, type: !527)
!2495 = !DILocalVariable(name: "code", scope: !2487, file: !3, line: 617, type: !384)
!2496 = !DILocalVariable(name: "i", scope: !2487, file: !3, line: 618, type: !569)
!2497 = !DILocalVariable(name: "j", scope: !2487, file: !3, line: 618, type: !569)
!2498 = !DILocalVariable(name: "r", scope: !2487, file: !3, line: 619, type: !7)
!2499 = !DILocalVariable(name: "format_ptr", scope: !2487, file: !3, line: 620, type: !574)
!2500 = !DILocalVariable(name: "link", scope: !2501, file: !3, line: 655, type: !1143)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 654, column: 2)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 653, column: 11)
!2503 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 627, column: 5)
!2504 = !DILocalVariable(name: "regno", scope: !2505, file: !3, line: 755, type: !7)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 754, column: 6)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 751, column: 8)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 750, column: 2)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 749, column: 11)
!2509 = !DILocalVariable(name: "last_regno", scope: !2505, file: !3, line: 756, type: !7)
!2510 = !DILabel(scope: !2487, name: "restart", file: !3, line: 622)
!2511 = !DILocation(line: 0, scope: !2501)
!2512 = !DILocation(line: 0, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 739, column: 2)
!2514 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 738, column: 11)
!2515 = !DILocation(line: 752, column: 6, scope: !2506)
!2516 = !DILocation(line: 0, scope: !2502)
!2517 = !DILocation(line: 0, scope: !2508)
!2518 = !DILocation(line: 620, column: 3, scope: !2487)
!2519 = !DILocation(line: 0, scope: !2487)
!2520 = !DILocation(line: 624, column: 10, scope: !2487)
!2521 = !DILocation(line: 622, column: 2, scope: !2487)
!2522 = !DILocation(line: 626, column: 3, scope: !2487)
!2523 = !DILocation(line: 657, column: 26, scope: !2501)
!2524 = !DILocation(line: 657, column: 12, scope: !2501)
!2525 = !DILocation(line: 659, column: 4, scope: !2501)
!2526 = !DILocation(line: 661, column: 16, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 661, column: 4)
!2528 = !DILocation(line: 661, column: 9, scope: !2527)
!2529 = !DILocation(line: 0, scope: !2527)
!2530 = !DILocation(line: 661, column: 4, scope: !2527)
!2531 = !DILocation(line: 663, column: 10, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 663, column: 10)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 661, column: 4)
!2534 = !DILocation(line: 663, column: 36, scope: !2532)
!2535 = !DILocation(line: 663, column: 10, scope: !2533)
!2536 = !DILocation(line: 664, column: 28, scope: !2532)
!2537 = !DILocation(line: 664, column: 8, scope: !2532)
!2538 = !DILocation(line: 662, column: 22, scope: !2533)
!2539 = !DILocation(line: 661, column: 4, scope: !2533)
!2540 = distinct !{!2540, !2530, !2541}
!2541 = !DILocation(line: 665, column: 20, scope: !2527)
!2542 = !DILocation(line: 669, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 669, column: 8)
!2544 = !DILocation(line: 669, column: 8, scope: !2501)
!2545 = !DILocation(line: 670, column: 6, scope: !2543)
!2546 = !DILocation(line: 687, column: 11, scope: !2503)
!2547 = !DILocation(line: 688, column: 11, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 688, column: 11)
!2549 = !DILocation(line: 688, column: 24, scope: !2548)
!2550 = !DILocation(line: 688, column: 31, scope: !2548)
!2551 = !DILocation(line: 688, column: 47, scope: !2548)
!2552 = !DILocation(line: 688, column: 11, scope: !2503)
!2553 = !DILocation(line: 814, column: 1, scope: !2487)
!2554 = !DILocation(line: 644, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 644, column: 11)
!2556 = !DILocation(line: 697, column: 27, scope: !2503)
!2557 = !DILocation(line: 706, column: 27, scope: !2503)
!2558 = !DILocation(line: 0, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 710, column: 7)
!2560 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 710, column: 7)
!2561 = !DILocation(line: 720, column: 27, scope: !2503)
!2562 = !DILocation(line: 725, column: 27, scope: !2503)
!2563 = !DILocation(line: 732, column: 27, scope: !2503)
!2564 = !DILocation(line: 738, column: 11, scope: !2514)
!2565 = !DILocation(line: 749, column: 11, scope: !2508)
!2566 = !DILocation(line: 766, column: 11, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 766, column: 11)
!2568 = !DILocation(line: 776, column: 12, scope: !2503)
!2569 = !DILocation(line: 784, column: 23, scope: !2503)
!2570 = !DILocation(line: 710, column: 7, scope: !2560)
!2571 = !DILocation(line: 644, column: 11, scope: !2503)
!2572 = !DILocation(line: 645, column: 10, scope: !2555)
!2573 = !DILocation(line: 645, column: 2, scope: !2555)
!2574 = !DILocation(line: 653, column: 11, scope: !2503)
!2575 = !DILocation(line: 699, column: 7, scope: !2503)
!2576 = !DILocation(line: 699, column: 10, scope: !2503)
!2577 = !DILocation(line: 699, column: 33, scope: !2503)
!2578 = !DILocation(line: 697, column: 7, scope: !2503)
!2579 = !DILocation(line: 702, column: 27, scope: !2503)
!2580 = !DILocation(line: 702, column: 7, scope: !2503)
!2581 = !DILocation(line: 706, column: 7, scope: !2503)
!2582 = !DILocation(line: 0, scope: !2560)
!2583 = !DILocation(line: 710, column: 23, scope: !2559)
!2584 = !DILocation(line: 710, column: 21, scope: !2559)
!2585 = !DILocation(line: 711, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 711, column: 6)
!2587 = !DILocation(line: 712, column: 9, scope: !2586)
!2588 = !DILocation(line: 0, scope: !2586)
!2589 = !DILocation(line: 713, column: 24, scope: !2586)
!2590 = !DILocation(line: 712, column: 12, scope: !2586)
!2591 = !DILocation(line: 711, column: 6, scope: !2559)
!2592 = !DILocation(line: 713, column: 4, scope: !2586)
!2593 = !DILocation(line: 710, column: 40, scope: !2559)
!2594 = !DILocation(line: 710, column: 7, scope: !2559)
!2595 = distinct !{!2595, !2570, !2596}
!2596 = !DILocation(line: 713, column: 60, scope: !2560)
!2597 = !DILocation(line: 720, column: 7, scope: !2503)
!2598 = !DILocation(line: 725, column: 7, scope: !2503)
!2599 = !DILocation(line: 726, column: 27, scope: !2503)
!2600 = !DILocation(line: 726, column: 7, scope: !2503)
!2601 = !DILocation(line: 727, column: 27, scope: !2503)
!2602 = !DILocation(line: 727, column: 7, scope: !2503)
!2603 = !DILocation(line: 732, column: 7, scope: !2503)
!2604 = !DILocation(line: 733, column: 27, scope: !2503)
!2605 = !DILocation(line: 733, column: 7, scope: !2503)
!2606 = !DILocation(line: 734, column: 27, scope: !2503)
!2607 = !DILocation(line: 734, column: 7, scope: !2503)
!2608 = !DILocation(line: 738, column: 11, scope: !2503)
!2609 = !DILocation(line: 740, column: 16, scope: !2513)
!2610 = !DILocation(line: 741, column: 24, scope: !2513)
!2611 = !DILocation(line: 741, column: 21, scope: !2513)
!2612 = !DILocation(line: 742, column: 20, scope: !2513)
!2613 = !DILocation(line: 742, column: 17, scope: !2513)
!2614 = !DILocation(line: 743, column: 2, scope: !2513)
!2615 = !DILocation(line: 745, column: 27, scope: !2503)
!2616 = !DILocation(line: 745, column: 7, scope: !2503)
!2617 = !DILocation(line: 0, scope: !2503)
!2618 = !DILocation(line: 749, column: 11, scope: !2503)
!2619 = !DILocation(line: 751, column: 9, scope: !2506)
!2620 = !DILocation(line: 751, column: 8, scope: !2507)
!2621 = !DILocation(line: 755, column: 29, scope: !2505)
!2622 = !DILocation(line: 0, scope: !2505)
!2623 = !DILocation(line: 756, column: 42, scope: !2505)
!2624 = !DILocation(line: 756, column: 40, scope: !2505)
!2625 = !DILocation(line: 758, column: 8, scope: !2505)
!2626 = !DILocation(line: 759, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 759, column: 8)
!2628 = !DILocation(line: 0, scope: !2627)
!2629 = !DILocation(line: 759, column: 26, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 759, column: 8)
!2631 = !DILocation(line: 759, column: 8, scope: !2627)
!2632 = !DILocation(line: 760, column: 3, scope: !2630)
!2633 = !DILocation(line: 759, column: 41, scope: !2630)
!2634 = !DILocation(line: 759, column: 8, scope: !2630)
!2635 = distinct !{!2635, !2631, !2636}
!2636 = !DILocation(line: 760, column: 3, scope: !2627)
!2637 = !DILocation(line: 766, column: 11, scope: !2503)
!2638 = !DILocation(line: 768, column: 4, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 767, column: 2)
!2640 = !DILocation(line: 769, column: 37, scope: !2639)
!2641 = !DILocation(line: 769, column: 51, scope: !2639)
!2642 = !DILocation(line: 769, column: 4, scope: !2639)
!2643 = !DILocation(line: 770, column: 2, scope: !2639)
!2644 = !DILocation(line: 776, column: 20, scope: !2503)
!2645 = !DILocation(line: 777, column: 7, scope: !2503)
!2646 = !DILocation(line: 780, column: 20, scope: !2503)
!2647 = !DILocation(line: 781, column: 7, scope: !2503)
!2648 = !DILocation(line: 784, column: 20, scope: !2503)
!2649 = !DILocation(line: 0, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 791, column: 7)
!2651 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 791, column: 7)
!2652 = !DILocation(line: 791, column: 12, scope: !2651)
!2653 = !DILocation(line: 0, scope: !2651)
!2654 = !DILocation(line: 791, column: 23, scope: !2650)
!2655 = !DILocation(line: 791, column: 21, scope: !2650)
!2656 = !DILocation(line: 791, column: 7, scope: !2651)
!2657 = !DILocation(line: 792, column: 22, scope: !2650)
!2658 = !DILocation(line: 792, column: 2, scope: !2650)
!2659 = !DILocation(line: 791, column: 55, scope: !2650)
!2660 = !DILocation(line: 791, column: 7, scope: !2650)
!2661 = distinct !{!2661, !2656, !2662}
!2662 = !DILocation(line: 793, column: 21, scope: !2651)
!2663 = !DILocation(line: 801, column: 16, scope: !2487)
!2664 = !DILocation(line: 0, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 802, column: 3)
!2666 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 802, column: 3)
!2667 = !DILocation(line: 0, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 810, column: 2)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 810, column: 2)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 804, column: 7)
!2671 = !DILocation(line: 802, column: 17, scope: !2665)
!2672 = !DILocation(line: 802, column: 8, scope: !2666)
!2673 = !DILocation(line: 0, scope: !2666)
!2674 = !DILocation(line: 802, column: 3, scope: !2666)
!2675 = !DILocation(line: 803, column: 24, scope: !2665)
!2676 = !DILocation(line: 803, column: 13, scope: !2665)
!2677 = !DILocation(line: 803, column: 5, scope: !2665)
!2678 = !DILocation(line: 810, column: 2, scope: !2669)
!2679 = !DILocation(line: 806, column: 22, scope: !2670)
!2680 = !DILocation(line: 806, column: 2, scope: !2670)
!2681 = !DILocation(line: 807, column: 2, scope: !2670)
!2682 = !DILocation(line: 0, scope: !2669)
!2683 = !DILocation(line: 810, column: 18, scope: !2668)
!2684 = !DILocation(line: 810, column: 16, scope: !2668)
!2685 = !DILocation(line: 811, column: 24, scope: !2668)
!2686 = !DILocation(line: 811, column: 4, scope: !2668)
!2687 = !DILocation(line: 810, column: 35, scope: !2668)
!2688 = !DILocation(line: 810, column: 2, scope: !2668)
!2689 = distinct !{!2689, !2678, !2690}
!2690 = !DILocation(line: 811, column: 66, scope: !2669)
!2691 = !DILocation(line: 802, column: 43, scope: !2665)
!2692 = !DILocation(line: 802, column: 3, scope: !2665)
!2693 = distinct !{!2693, !2674, !2694}
!2694 = !DILocation(line: 813, column: 7, scope: !2666)
!2695 = distinct !DISubprogram(name: "mark_target_live_regs", scope: !3, file: !3, line: 869, type: !2696, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !1143, !1143, !2236}
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2715, !2716, !2717, !2721, !2722, !2723, !2727, !2730, !2733}
!2699 = !DILocalVariable(name: "insns", arg: 1, scope: !2695, file: !3, line: 869, type: !1143)
!2700 = !DILocalVariable(name: "target", arg: 2, scope: !2695, file: !3, line: 869, type: !1143)
!2701 = !DILocalVariable(name: "res", arg: 3, scope: !2695, file: !3, line: 869, type: !2236)
!2702 = !DILocalVariable(name: "b", scope: !2695, file: !3, line: 871, type: !569)
!2703 = !DILocalVariable(name: "i", scope: !2695, file: !3, line: 872, type: !7)
!2704 = !DILocalVariable(name: "tinfo", scope: !2695, file: !3, line: 873, type: !579)
!2705 = !DILocalVariable(name: "insn", scope: !2695, file: !3, line: 874, type: !1143)
!2706 = !DILocalVariable(name: "jump_insn", scope: !2695, file: !3, line: 875, type: !1143)
!2707 = !DILocalVariable(name: "jump_target", scope: !2695, file: !3, line: 876, type: !1143)
!2708 = !DILocalVariable(name: "scratch", scope: !2695, file: !3, line: 877, type: !576)
!2709 = !DILocalVariable(name: "set", scope: !2695, file: !3, line: 878, type: !662)
!2710 = !DILocalVariable(name: "needed", scope: !2695, file: !3, line: 878, type: !662)
!2711 = !DILocalVariable(name: "regs_live", scope: !2712, file: !3, line: 952, type: !2714)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 951, column: 5)
!2713 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 950, column: 7)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset", file: !142, line: 37, baseType: !594)
!2715 = !DILocalVariable(name: "start_insn", scope: !2712, file: !3, line: 953, type: !1143)
!2716 = !DILocalVariable(name: "stop_insn", scope: !2712, file: !3, line: 953, type: !1143)
!2717 = !DILocalVariable(name: "link", scope: !2718, file: !3, line: 975, type: !1143)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 974, column: 2)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 972, column: 7)
!2720 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 972, column: 7)
!2721 = !DILocalVariable(name: "real_insn", scope: !2718, file: !3, line: 976, type: !1143)
!2722 = !DILocalVariable(name: "code", scope: !2718, file: !3, line: 977, type: !384)
!2723 = !DILocalVariable(name: "bb", scope: !2724, file: !3, line: 1044, type: !1603)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 1043, column: 6)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1042, column: 13)
!2726 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 1015, column: 8)
!2727 = !DILocalVariable(name: "extra_live", scope: !2728, file: !3, line: 1057, type: !576)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1056, column: 3)
!2729 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 1055, column: 12)
!2730 = !DILocalVariable(name: "new_resources", scope: !2731, file: !3, line: 1097, type: !662)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 1096, column: 5)
!2732 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1095, column: 7)
!2733 = !DILocalVariable(name: "stop_insn", scope: !2731, file: !3, line: 1098, type: !1143)
!2734 = !DILocation(line: 0, scope: !2695)
!2735 = !DILocation(line: 876, column: 3, scope: !2695)
!2736 = !DILocation(line: 878, column: 3, scope: !2695)
!2737 = !DILocation(line: 881, column: 14, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 881, column: 7)
!2739 = !DILocation(line: 881, column: 7, scope: !2695)
!2740 = !DILocation(line: 883, column: 14, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 882, column: 5)
!2742 = !DILocation(line: 884, column: 7, scope: !2741)
!2743 = !DILocation(line: 888, column: 12, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 888, column: 12)
!2745 = !DILocation(line: 888, column: 12, scope: !2738)
!2746 = !DILocation(line: 890, column: 14, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 889, column: 5)
!2748 = !DILocation(line: 891, column: 7, scope: !2747)
!2749 = !DILocation(line: 892, column: 7, scope: !2747)
!2750 = !DILocation(line: 896, column: 8, scope: !2695)
!2751 = !DILocation(line: 896, column: 15, scope: !2695)
!2752 = !DILocation(line: 897, column: 23, scope: !2695)
!2753 = !DILocation(line: 897, column: 35, scope: !2695)
!2754 = !DILocation(line: 897, column: 8, scope: !2695)
!2755 = !DILocation(line: 897, column: 16, scope: !2695)
!2756 = !DILocation(line: 898, column: 8, scope: !2695)
!2757 = !DILocation(line: 898, column: 11, scope: !2695)
!2758 = !DILocation(line: 901, column: 7, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 901, column: 7)
!2760 = !DILocation(line: 901, column: 25, scope: !2759)
!2761 = !DILocation(line: 901, column: 7, scope: !2695)
!2762 = !DILocation(line: 903, column: 38, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 903, column: 7)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 902, column: 5)
!2765 = !DILocation(line: 903, column: 56, scope: !2763)
!2766 = !DILocation(line: 903, column: 20, scope: !2763)
!2767 = !DILocation(line: 903, column: 12, scope: !2763)
!2768 = !DILocation(line: 0, scope: !2763)
!2769 = !DILocation(line: 903, column: 7, scope: !2763)
!2770 = !DILocation(line: 905, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 905, column: 6)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 903, column: 7)
!2773 = !DILocation(line: 905, column: 17, scope: !2771)
!2774 = !DILocation(line: 905, column: 6, scope: !2772)
!2775 = !DILocation(line: 904, column: 27, scope: !2772)
!2776 = !DILocation(line: 903, column: 7, scope: !2772)
!2777 = distinct !{!2777, !2769, !2778}
!2778 = !DILocation(line: 906, column: 4, scope: !2763)
!2779 = !DILocation(line: 911, column: 27, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 911, column: 11)
!2781 = !DILocation(line: 911, column: 33, scope: !2780)
!2782 = !DILocation(line: 912, column: 4, scope: !2780)
!2783 = !DILocation(line: 912, column: 9, scope: !2780)
!2784 = !DILocation(line: 911, column: 11, scope: !2764)
!2785 = !DILocation(line: 913, column: 13, scope: !2780)
!2786 = !DILocation(line: 913, column: 2, scope: !2780)
!2787 = !DILocation(line: 916, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 916, column: 7)
!2789 = !DILocation(line: 871, column: 7, scope: !2695)
!2790 = !DILocation(line: 916, column: 7, scope: !2695)
!2791 = !DILocation(line: 917, column: 35, scope: !2788)
!2792 = !DILocation(line: 917, column: 9, scope: !2788)
!2793 = !DILocation(line: 917, column: 5, scope: !2788)
!2794 = !DILocation(line: 919, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 919, column: 7)
!2796 = !DILocation(line: 919, column: 25, scope: !2795)
!2797 = !DILocation(line: 919, column: 7, scope: !2695)
!2798 = !DILocation(line: 921, column: 11, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 921, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 920, column: 5)
!2801 = !DILocation(line: 921, column: 11, scope: !2800)
!2802 = !DILocation(line: 925, column: 20, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 925, column: 8)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 922, column: 2)
!2805 = !DILocation(line: 925, column: 10, scope: !2803)
!2806 = !DILocation(line: 925, column: 31, scope: !2803)
!2807 = !DILocation(line: 925, column: 26, scope: !2803)
!2808 = !DILocation(line: 925, column: 47, scope: !2803)
!2809 = !DILocation(line: 925, column: 58, scope: !2803)
!2810 = !DILocation(line: 925, column: 55, scope: !2803)
!2811 = !DILocation(line: 925, column: 8, scope: !2804)
!2812 = !DILocation(line: 927, column: 8, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 926, column: 6)
!2814 = !DILocation(line: 928, column: 8, scope: !2813)
!2815 = !DILocation(line: 935, column: 12, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 932, column: 2)
!2817 = !DILocation(line: 936, column: 17, scope: !2816)
!2818 = !DILocation(line: 936, column: 11, scope: !2816)
!2819 = !DILocation(line: 936, column: 15, scope: !2816)
!2820 = !DILocation(line: 937, column: 11, scope: !2816)
!2821 = !DILocation(line: 937, column: 17, scope: !2816)
!2822 = !DILocation(line: 939, column: 8, scope: !2816)
!2823 = !DILocation(line: 939, column: 26, scope: !2816)
!2824 = !DILocation(line: 939, column: 44, scope: !2816)
!2825 = !DILocation(line: 938, column: 11, scope: !2816)
!2826 = !DILocation(line: 939, column: 6, scope: !2816)
!2827 = !DILocation(line: 940, column: 22, scope: !2816)
!2828 = !DILocation(line: 940, column: 40, scope: !2816)
!2829 = !DILocation(line: 940, column: 4, scope: !2816)
!2830 = !DILocation(line: 940, column: 61, scope: !2816)
!2831 = !DILocation(line: 903, column: 18, scope: !2763)
!2832 = !DILocation(line: 944, column: 3, scope: !2695)
!2833 = !DILocation(line: 950, column: 9, scope: !2713)
!2834 = !DILocation(line: 950, column: 7, scope: !2695)
!2835 = !DILocation(line: 952, column: 26, scope: !2712)
!2836 = !DILocation(line: 0, scope: !2712)
!2837 = !DILocation(line: 956, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 956, column: 7)
!2839 = !DILocation(line: 960, column: 26, scope: !2712)
!2840 = !DILocation(line: 960, column: 43, scope: !2712)
!2841 = !DILocation(line: 960, column: 52, scope: !2712)
!2842 = !DILocation(line: 960, column: 23, scope: !2712)
!2843 = !DILocation(line: 960, column: 21, scope: !2712)
!2844 = !DILocation(line: 961, column: 15, scope: !2712)
!2845 = !DILocation(line: 964, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 964, column: 11)
!2847 = !DILocation(line: 965, column: 4, scope: !2846)
!2848 = !DILocation(line: 965, column: 7, scope: !2846)
!2849 = !DILocation(line: 965, column: 39, scope: !2846)
!2850 = !DILocation(line: 964, column: 11, scope: !2712)
!2851 = !DILocation(line: 966, column: 15, scope: !2846)
!2852 = !DILocation(line: 966, column: 2, scope: !2846)
!2853 = !DILocation(line: 968, column: 11, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 968, column: 11)
!2855 = !DILocation(line: 969, column: 4, scope: !2854)
!2856 = !DILocation(line: 969, column: 7, scope: !2854)
!2857 = !DILocation(line: 969, column: 38, scope: !2854)
!2858 = !DILocation(line: 968, column: 11, scope: !2712)
!2859 = !DILocation(line: 970, column: 25, scope: !2854)
!2860 = !DILocation(line: 970, column: 14, scope: !2854)
!2861 = !DILocation(line: 970, column: 2, scope: !2854)
!2862 = !DILocation(line: 0, scope: !2728)
!2863 = !DILocation(line: 972, column: 12, scope: !2720)
!2864 = !DILocation(line: 0, scope: !2720)
!2865 = !DILocation(line: 972, column: 36, scope: !2719)
!2866 = !DILocation(line: 972, column: 7, scope: !2720)
!2867 = !DILocation(line: 0, scope: !2718)
!2868 = !DILocation(line: 977, column: 25, scope: !2718)
!2869 = !DILocation(line: 979, column: 8, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 979, column: 8)
!2871 = !DILocation(line: 979, column: 8, scope: !2718)
!2872 = !DILocation(line: 985, column: 22, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 985, column: 8)
!2874 = !DILocation(line: 986, column: 11, scope: !2873)
!2875 = !DILocation(line: 985, column: 8, scope: !2718)
!2876 = !DILocation(line: 991, column: 13, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 991, column: 8)
!2878 = !DILocation(line: 991, column: 21, scope: !2877)
!2879 = !DILocation(line: 991, column: 24, scope: !2877)
!2880 = !DILocation(line: 991, column: 50, scope: !2877)
!2881 = !DILocation(line: 992, column: 8, scope: !2877)
!2882 = !DILocation(line: 992, column: 11, scope: !2877)
!2883 = !DILocation(line: 991, column: 8, scope: !2718)
!2884 = !DILocation(line: 993, column: 8, scope: !2877)
!2885 = !DILocation(line: 995, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 995, column: 8)
!2887 = !DILocation(line: 995, column: 8, scope: !2718)
!2888 = !DILocation(line: 1000, column: 8, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 996, column: 6)
!2890 = !DILocation(line: 1005, column: 13, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1005, column: 8)
!2892 = !DILocation(line: 1005, column: 22, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1005, column: 8)
!2894 = !DILocation(line: 1005, column: 8, scope: !2891)
!2895 = !DILocation(line: 1006, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 1006, column: 7)
!2897 = !DILocation(line: 1006, column: 7, scope: !2893)
!2898 = !DILocation(line: 1007, column: 5, scope: !2896)
!2899 = !DILocation(line: 1005, column: 48, scope: !2893)
!2900 = !DILocation(line: 1005, column: 8, scope: !2893)
!2901 = distinct !{!2901, !2894, !2902}
!2902 = !DILocation(line: 1007, column: 5, scope: !2891)
!2903 = !DILocation(line: 1015, column: 9, scope: !2726)
!2904 = !DILocation(line: 1016, column: 9, scope: !2726)
!2905 = !DILocation(line: 1016, column: 12, scope: !2726)
!2906 = !DILocation(line: 1016, column: 43, scope: !2726)
!2907 = !DILocation(line: 1017, column: 9, scope: !2726)
!2908 = !DILocation(line: 1017, column: 43, scope: !2726)
!2909 = !DILocation(line: 1018, column: 8, scope: !2726)
!2910 = !DILocation(line: 1018, column: 11, scope: !2726)
!2911 = !DILocation(line: 1019, column: 8, scope: !2726)
!2912 = !DILocation(line: 1019, column: 11, scope: !2726)
!2913 = !DILocation(line: 1015, column: 8, scope: !2718)
!2914 = !DILocation(line: 1021, column: 20, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1021, column: 8)
!2916 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1020, column: 6)
!2917 = !DILocation(line: 1021, column: 13, scope: !2915)
!2918 = !DILocation(line: 0, scope: !2915)
!2919 = !DILocation(line: 1021, column: 8, scope: !2915)
!2920 = !DILocation(line: 1022, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1022, column: 7)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1021, column: 8)
!2923 = !DILocation(line: 1022, column: 28, scope: !2921)
!2924 = !DILocation(line: 1023, column: 7, scope: !2921)
!2925 = !DILocation(line: 1023, column: 10, scope: !2921)
!2926 = !DILocation(line: 1024, column: 7, scope: !2921)
!2927 = !DILocation(line: 1024, column: 10, scope: !2921)
!2928 = !DILocation(line: 1024, column: 33, scope: !2921)
!2929 = !DILocation(line: 1022, column: 7, scope: !2922)
!2930 = !DILocation(line: 1026, column: 11, scope: !2921)
!2931 = !DILocation(line: 1027, column: 11, scope: !2921)
!2932 = !DILocation(line: 1025, column: 5, scope: !2921)
!2933 = !DILocation(line: 1021, column: 56, scope: !2922)
!2934 = !DILocation(line: 1021, column: 8, scope: !2922)
!2935 = distinct !{!2935, !2919, !2936}
!2936 = !DILocation(line: 1027, column: 33, scope: !2915)
!2937 = !DILocation(line: 1029, column: 21, scope: !2916)
!2938 = !DILocation(line: 1029, column: 8, scope: !2916)
!2939 = !DILocation(line: 1033, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 1033, column: 8)
!2941 = !DILocation(line: 0, scope: !2940)
!2942 = !DILocation(line: 1033, column: 8, scope: !2940)
!2943 = !DILocation(line: 1034, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 1034, column: 7)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1033, column: 8)
!2946 = !DILocation(line: 1034, column: 28, scope: !2944)
!2947 = !DILocation(line: 1035, column: 7, scope: !2944)
!2948 = !DILocation(line: 1035, column: 10, scope: !2944)
!2949 = !DILocation(line: 1036, column: 7, scope: !2944)
!2950 = !DILocation(line: 1036, column: 10, scope: !2944)
!2951 = !DILocation(line: 1036, column: 33, scope: !2944)
!2952 = !DILocation(line: 1034, column: 7, scope: !2945)
!2953 = !DILocation(line: 1038, column: 9, scope: !2944)
!2954 = !DILocation(line: 1039, column: 9, scope: !2944)
!2955 = !DILocation(line: 1037, column: 5, scope: !2944)
!2956 = !DILocation(line: 1033, column: 56, scope: !2945)
!2957 = !DILocation(line: 1033, column: 8, scope: !2945)
!2958 = distinct !{!2958, !2942, !2959}
!2959 = !DILocation(line: 1039, column: 31, scope: !2940)
!2960 = !DILocation(line: 1042, column: 13, scope: !2725)
!2961 = !DILocation(line: 1042, column: 13, scope: !2726)
!2962 = !DILocation(line: 1048, column: 8, scope: !2724)
!2963 = !DILocation(line: 1049, column: 8, scope: !2724)
!2964 = !DILocation(line: 1054, column: 13, scope: !2724)
!2965 = !DILocation(line: 0, scope: !2724)
!2966 = !DILocation(line: 1055, column: 12, scope: !2729)
!2967 = !DILocation(line: 1055, column: 12, scope: !2724)
!2968 = !DILocation(line: 1057, column: 5, scope: !2728)
!2969 = !DILocation(line: 1059, column: 5, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 1059, column: 5)
!2971 = !DILocation(line: 1060, column: 5, scope: !2728)
!2972 = !DILocation(line: 1061, column: 3, scope: !2729)
!2973 = !DILocation(line: 1061, column: 3, scope: !2728)
!2974 = !DILocation(line: 1067, column: 13, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 1067, column: 13)
!2976 = !DILocation(line: 1068, column: 6, scope: !2975)
!2977 = !DILocation(line: 1068, column: 9, scope: !2975)
!2978 = !DILocation(line: 1068, column: 31, scope: !2975)
!2979 = !DILocation(line: 1067, column: 13, scope: !2725)
!2980 = !DILocation(line: 1069, column: 6, scope: !2975)
!2981 = !DILocation(line: 973, column: 12, scope: !2719)
!2982 = !DILocation(line: 972, column: 7, scope: !2719)
!2983 = distinct !{!2983, !2866, !2984}
!2984 = !DILocation(line: 1070, column: 2, scope: !2720)
!2985 = !DILocation(line: 1072, column: 7, scope: !2712)
!2986 = !DILocation(line: 1073, column: 17, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1073, column: 11)
!2988 = !DILocation(line: 1073, column: 11, scope: !2712)
!2989 = !DILocation(line: 1075, column: 11, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1074, column: 2)
!2991 = !DILocation(line: 1075, column: 17, scope: !2990)
!2992 = !DILocation(line: 1076, column: 21, scope: !2990)
!2993 = !DILocation(line: 1076, column: 11, scope: !2990)
!2994 = !DILocation(line: 1076, column: 19, scope: !2990)
!2995 = !DILocation(line: 1077, column: 2, scope: !2990)
!2996 = !DILocation(line: 1082, column: 5, scope: !2713)
!2997 = !DILocation(line: 1084, column: 3, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1084, column: 3)
!2999 = !DILocation(line: 1085, column: 3, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1085, column: 3)
!3001 = !DILocation(line: 1087, column: 15, scope: !2695)
!3002 = !DILocation(line: 1095, column: 7, scope: !2732)
!3003 = !DILocation(line: 1095, column: 7, scope: !2695)
!3004 = !DILocation(line: 1097, column: 7, scope: !2731)
!3005 = !DILocation(line: 1098, column: 23, scope: !2731)
!3006 = !DILocation(line: 0, scope: !2731)
!3007 = !DILocation(line: 1100, column: 55, scope: !2731)
!3008 = !DILocation(line: 1100, column: 37, scope: !2731)
!3009 = !DILocation(line: 1100, column: 7, scope: !2731)
!3010 = !DILocation(line: 1102, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1102, column: 7)
!3012 = !DILocation(line: 1103, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1103, column: 7)
!3014 = !DILocation(line: 0, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1107, column: 2)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 1106, column: 7)
!3017 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1106, column: 7)
!3018 = !DILocation(line: 1106, column: 12, scope: !3017)
!3019 = !DILocation(line: 0, scope: !3017)
!3020 = !DILocation(line: 1106, column: 32, scope: !3016)
!3021 = !DILocation(line: 1106, column: 7, scope: !3017)
!3022 = !DILocation(line: 1108, column: 4, scope: !3015)
!3023 = !DILocation(line: 1110, column: 4, scope: !3015)
!3024 = !DILocation(line: 1111, column: 4, scope: !3015)
!3025 = !DILocation(line: 1112, column: 4, scope: !3015)
!3026 = !DILocation(line: 1114, column: 4, scope: !3015)
!3027 = !DILocation(line: 1106, column: 53, scope: !3016)
!3028 = !DILocation(line: 1106, column: 7, scope: !3016)
!3029 = distinct !{!3029, !3021, !3030}
!3030 = !DILocation(line: 1115, column: 2, scope: !3017)
!3031 = !DILocation(line: 1117, column: 7, scope: !2731)
!3032 = !DILocation(line: 1118, column: 5, scope: !2732)
!3033 = !DILocation(line: 1118, column: 5, scope: !2731)
!3034 = !DILocation(line: 1120, column: 13, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1120, column: 7)
!3036 = !DILocation(line: 1120, column: 7, scope: !2695)
!3037 = !DILocation(line: 1122, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1121, column: 5)
!3039 = !DILocation(line: 1123, column: 5, scope: !3038)
!3040 = !DILocation(line: 1124, column: 1, scope: !2695)
!3041 = distinct !DISubprogram(name: "return_insn_p", scope: !3, file: !3, line: 819, type: !3042, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!568, !2460}
!3044 = !{!3045}
!3045 = !DILocalVariable(name: "insn", arg: 1, scope: !3041, file: !3, line: 819, type: !2460)
!3046 = !DILocation(line: 825, column: 12, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 824, column: 7)
!3048 = !DILocation(line: 0, scope: !3041)
!3049 = !DILocation(line: 821, column: 7, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 821, column: 7)
!3051 = !DILocation(line: 821, column: 21, scope: !3050)
!3052 = !DILocation(line: 821, column: 24, scope: !3050)
!3053 = !DILocation(line: 821, column: 50, scope: !3050)
!3054 = !DILocation(line: 821, column: 7, scope: !3041)
!3055 = !DILocation(line: 824, column: 7, scope: !3047)
!3056 = !DILocation(line: 824, column: 29, scope: !3047)
!3057 = !DILocation(line: 824, column: 32, scope: !3047)
!3058 = !DILocation(line: 824, column: 58, scope: !3047)
!3059 = !DILocation(line: 824, column: 7, scope: !3041)
!3060 = !DILocation(line: 825, column: 27, scope: !3047)
!3061 = !DILocation(line: 828, column: 1, scope: !3041)
!3062 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !142, file: !142, line: 281, type: !3063, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!1603, !3065, !7}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!3067 = !{!3068, !3069}
!3068 = !DILocalVariable(name: "vec_", arg: 1, scope: !3062, file: !142, line: 281, type: !3065)
!3069 = !DILocalVariable(name: "ix_", arg: 2, scope: !3062, file: !142, line: 281, type: !7)
!3070 = !DILocation(line: 0, scope: !3062)
!3071 = !DILocation(line: 281, column: 1, scope: !3062)
!3072 = distinct !DISubprogram(name: "find_basic_block", scope: !3, file: !3, line: 136, type: !3073, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!569, !1143, !569}
!3075 = !{!3076, !3077}
!3076 = !DILocalVariable(name: "insn", arg: 1, scope: !3072, file: !3, line: 136, type: !1143)
!3077 = !DILocalVariable(name: "search_limit", arg: 2, scope: !3072, file: !3, line: 136, type: !569)
!3078 = !DILocation(line: 0, scope: !3072)
!3079 = !DILocation(line: 140, column: 15, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 140, column: 3)
!3081 = !DILocation(line: 140, column: 8, scope: !3080)
!3082 = !DILocation(line: 0, scope: !3080)
!3083 = !DILocation(line: 141, column: 8, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 140, column: 3)
!3085 = !DILocation(line: 141, column: 13, scope: !3084)
!3086 = !DILocation(line: 141, column: 17, scope: !3084)
!3087 = !DILocation(line: 141, column: 50, scope: !3084)
!3088 = !DILocation(line: 141, column: 34, scope: !3084)
!3089 = !DILocation(line: 140, column: 3, scope: !3080)
!3090 = !DILocation(line: 142, column: 15, scope: !3084)
!3091 = !DILocation(line: 142, column: 41, scope: !3084)
!3092 = !DILocation(line: 140, column: 3, scope: !3084)
!3093 = distinct !{!3093, !3089, !3094}
!3094 = !DILocation(line: 143, column: 5, scope: !3080)
!3095 = !DILocation(line: 146, column: 20, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 146, column: 7)
!3097 = !DILocation(line: 146, column: 7, scope: !3072)
!3098 = !DILocation(line: 150, column: 12, scope: !3096)
!3099 = !DILocation(line: 151, column: 12, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 150, column: 12)
!3101 = !DILocation(line: 151, column: 29, scope: !3100)
!3102 = !DILocation(line: 151, column: 38, scope: !3100)
!3103 = !DILocation(line: 151, column: 5, scope: !3100)
!3104 = !DILocation(line: 155, column: 15, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 155, column: 3)
!3106 = !DILocation(line: 155, column: 8, scope: !3105)
!3107 = !DILocation(line: 0, scope: !3105)
!3108 = !DILocation(line: 156, column: 8, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 155, column: 3)
!3110 = !DILocation(line: 156, column: 13, scope: !3109)
!3111 = !DILocation(line: 156, column: 16, scope: !3109)
!3112 = !DILocation(line: 155, column: 3, scope: !3105)
!3113 = !DILocation(line: 158, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 158, column: 9)
!3115 = !DILocation(line: 158, column: 9, scope: !3109)
!3116 = !DILocation(line: 159, column: 37, scope: !3114)
!3117 = !DILocation(line: 159, column: 7, scope: !3114)
!3118 = !DILocation(line: 157, column: 15, scope: !3109)
!3119 = !DILocation(line: 155, column: 3, scope: !3109)
!3120 = distinct !{!3120, !3112, !3121}
!3121 = !DILocation(line: 159, column: 37, scope: !3105)
!3122 = !DILocation(line: 162, column: 1, scope: !3072)
!3123 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !591, file: !591, line: 1052, type: !3124, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!589, !7}
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "index", arg: 1, scope: !3123, file: !591, line: 1052, type: !7)
!3128 = !DILocation(line: 0, scope: !3123)
!3129 = !DILocation(line: 1054, column: 15, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !591, line: 1054, column: 7)
!3131 = !DILocation(line: 1054, column: 22, scope: !3130)
!3132 = !DILocation(line: 1054, column: 13, scope: !3130)
!3133 = !DILocation(line: 1054, column: 7, scope: !3123)
!3134 = !DILocation(line: 1055, column: 44, scope: !3130)
!3135 = !DILocation(line: 1055, column: 37, scope: !3130)
!3136 = !DILocation(line: 1055, column: 5, scope: !3130)
!3137 = !DILocation(line: 0, scope: !3130)
!3138 = !DILocation(line: 1058, column: 1, scope: !3123)
!3139 = distinct !DISubprogram(name: "update_live_status", scope: !3, file: !3, line: 92, type: !3140, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !1143, !2460, !573}
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148}
!3143 = !DILocalVariable(name: "dest", arg: 1, scope: !3139, file: !3, line: 92, type: !1143)
!3144 = !DILocalVariable(name: "x", arg: 2, scope: !3139, file: !3, line: 92, type: !2460)
!3145 = !DILocalVariable(name: "data", arg: 3, scope: !3139, file: !3, line: 92, type: !573)
!3146 = !DILocalVariable(name: "first_regno", scope: !3139, file: !3, line: 94, type: !569)
!3147 = !DILocalVariable(name: "last_regno", scope: !3139, file: !3, line: 94, type: !569)
!3148 = !DILocalVariable(name: "i", scope: !3139, file: !3, line: 95, type: !569)
!3149 = !DILocation(line: 0, scope: !3139)
!3150 = !DILocation(line: 97, column: 8, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 97, column: 7)
!3152 = !DILocation(line: 98, column: 7, scope: !3151)
!3153 = !DILocation(line: 98, column: 27, scope: !3151)
!3154 = !DILocation(line: 98, column: 37, scope: !3151)
!3155 = !DILocation(line: 98, column: 41, scope: !3151)
!3156 = !DILocation(line: 97, column: 7, scope: !3139)
!3157 = !DILocation(line: 101, column: 23, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 101, column: 7)
!3159 = !DILocation(line: 101, column: 7, scope: !3139)
!3160 = !DILocation(line: 103, column: 21, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 102, column: 5)
!3162 = !DILocation(line: 104, column: 34, scope: !3161)
!3163 = !DILocation(line: 104, column: 32, scope: !3161)
!3164 = !DILocation(line: 106, column: 5, scope: !3161)
!3165 = !DILocation(line: 109, column: 21, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 108, column: 5)
!3167 = !DILocation(line: 110, column: 20, scope: !3166)
!3168 = !DILocation(line: 0, scope: !3158)
!3169 = !DILocation(line: 113, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 113, column: 7)
!3171 = !DILocation(line: 113, column: 20, scope: !3170)
!3172 = !DILocation(line: 113, column: 7, scope: !3139)
!3173 = !DILocation(line: 117, column: 5, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 117, column: 5)
!3175 = !DILocation(line: 114, column: 5, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 114, column: 5)
!3177 = !DILocation(line: 0, scope: !3176)
!3178 = !DILocation(line: 114, column: 29, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 114, column: 5)
!3180 = !DILocation(line: 115, column: 7, scope: !3179)
!3181 = !DILocation(line: 114, column: 44, scope: !3179)
!3182 = !DILocation(line: 114, column: 5, scope: !3179)
!3183 = distinct !{!3183, !3175, !3184}
!3184 = !DILocation(line: 115, column: 7, scope: !3176)
!3185 = !DILocation(line: 0, scope: !3174)
!3186 = !DILocation(line: 117, column: 29, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 117, column: 5)
!3188 = !DILocation(line: 119, column: 2, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 118, column: 7)
!3190 = !DILocation(line: 120, column: 2, scope: !3189)
!3191 = !DILocation(line: 117, column: 44, scope: !3187)
!3192 = !DILocation(line: 117, column: 5, scope: !3187)
!3193 = distinct !{!3193, !3173, !3194}
!3194 = !DILocation(line: 121, column: 7, scope: !3174)
!3195 = !DILocation(line: 122, column: 1, scope: !3139)
!3196 = distinct !DISubprogram(name: "remove_from_hard_reg_set", scope: !2469, file: !2469, line: 321, type: !2470, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3197 = !{!3198, !3199, !3200, !3201}
!3198 = !DILocalVariable(name: "regs", arg: 1, scope: !3196, file: !2469, line: 321, type: !2472)
!3199 = !DILocalVariable(name: "mode", arg: 2, scope: !3196, file: !2469, line: 321, type: !5)
!3200 = !DILocalVariable(name: "regno", arg: 3, scope: !3196, file: !2469, line: 322, type: !7)
!3201 = !DILocalVariable(name: "end_regno", scope: !3196, file: !2469, line: 324, type: !7)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocation(line: 326, column: 15, scope: !3196)
!3204 = !DILocation(line: 328, column: 5, scope: !3196)
!3205 = !DILocation(line: 327, column: 3, scope: !3196)
!3206 = !DILocation(line: 329, column: 10, scope: !3196)
!3207 = !DILocation(line: 329, column: 18, scope: !3196)
!3208 = distinct !{!3208, !3205, !3209}
!3209 = !DILocation(line: 329, column: 29, scope: !3196)
!3210 = !DILocation(line: 330, column: 1, scope: !3196)
!3211 = distinct !DISubprogram(name: "next_insn_no_annul", scope: !3, file: !3, line: 168, type: !3212, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!1143, !1143}
!3214 = !{!3215, !3216, !3221}
!3215 = !DILocalVariable(name: "insn", arg: 1, scope: !3211, file: !3, line: 168, type: !1143)
!3216 = !DILocalVariable(name: "next", scope: !3217, file: !3, line: 178, type: !1143)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 177, column: 2)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 174, column: 11)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 171, column: 5)
!3220 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 170, column: 7)
!3221 = !DILocalVariable(name: "code", scope: !3217, file: !3, line: 179, type: !384)
!3222 = !DILocation(line: 0, scope: !3211)
!3223 = !DILocation(line: 170, column: 7, scope: !3220)
!3224 = !DILocation(line: 170, column: 7, scope: !3211)
!3225 = !DILocation(line: 174, column: 11, scope: !3218)
!3226 = !DILocation(line: 175, column: 4, scope: !3218)
!3227 = !DILocation(line: 175, column: 7, scope: !3218)
!3228 = !DILocation(line: 176, column: 4, scope: !3218)
!3229 = !DILocation(line: 176, column: 7, scope: !3218)
!3230 = !DILocation(line: 176, column: 36, scope: !3218)
!3231 = !DILocation(line: 174, column: 11, scope: !3219)
!3232 = !DILocation(line: 178, column: 15, scope: !3217)
!3233 = !DILocation(line: 0, scope: !3217)
!3234 = !DILocation(line: 181, column: 4, scope: !3217)
!3235 = !DILocation(line: 181, column: 25, scope: !3217)
!3236 = !DILocation(line: 182, column: 7, scope: !3217)
!3237 = !DILocation(line: 182, column: 4, scope: !3217)
!3238 = !DILocation(line: 185, column: 15, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 183, column: 6)
!3240 = distinct !{!3240, !3234, !3241}
!3241 = !DILocation(line: 187, column: 6, scope: !3217)
!3242 = !DILocation(line: 190, column: 14, scope: !3219)
!3243 = !DILocation(line: 191, column: 11, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 191, column: 11)
!3245 = !DILocation(line: 191, column: 16, scope: !3244)
!3246 = !DILocation(line: 191, column: 19, scope: !3244)
!3247 = !DILocation(line: 192, column: 4, scope: !3244)
!3248 = !DILocation(line: 192, column: 7, scope: !3244)
!3249 = !DILocation(line: 192, column: 33, scope: !3244)
!3250 = !DILocation(line: 191, column: 11, scope: !3219)
!3251 = !DILocation(line: 193, column: 9, scope: !3244)
!3252 = !DILocation(line: 193, column: 2, scope: !3244)
!3253 = !DILocation(line: 196, column: 3, scope: !3211)
!3254 = distinct !DISubprogram(name: "find_dead_or_set_registers", scope: !3, file: !3, line: 422, type: !3255, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3258)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!1143, !1143, !2236, !3257, !569, !662, !662}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3274, !3282, !3283}
!3259 = !DILocalVariable(name: "target", arg: 1, scope: !3254, file: !3, line: 422, type: !1143)
!3260 = !DILocalVariable(name: "res", arg: 2, scope: !3254, file: !3, line: 422, type: !2236)
!3261 = !DILocalVariable(name: "jump_target", arg: 3, scope: !3254, file: !3, line: 423, type: !3257)
!3262 = !DILocalVariable(name: "jump_count", arg: 4, scope: !3254, file: !3, line: 423, type: !569)
!3263 = !DILocalVariable(name: "set", arg: 5, scope: !3254, file: !3, line: 424, type: !662)
!3264 = !DILocalVariable(name: "needed", arg: 6, scope: !3254, file: !3, line: 424, type: !662)
!3265 = !DILocalVariable(name: "scratch", scope: !3254, file: !3, line: 426, type: !576)
!3266 = !DILocalVariable(name: "insn", scope: !3254, file: !3, line: 427, type: !1143)
!3267 = !DILocalVariable(name: "next", scope: !3254, file: !3, line: 427, type: !1143)
!3268 = !DILocalVariable(name: "jump_insn", scope: !3254, file: !3, line: 428, type: !1143)
!3269 = !DILocalVariable(name: "i", scope: !3254, file: !3, line: 429, type: !569)
!3270 = !DILocalVariable(name: "this_jump_insn", scope: !3271, file: !3, line: 433, type: !1143)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 432, column: 5)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 431, column: 3)
!3273 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 431, column: 3)
!3274 = !DILocalVariable(name: "target_set", scope: !3275, file: !3, line: 507, type: !662)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 506, column: 3)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 505, column: 17)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 494, column: 12)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 493, column: 6)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 492, column: 8)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 491, column: 2)
!3281 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 490, column: 11)
!3282 = !DILocalVariable(name: "target_res", scope: !3275, file: !3, line: 507, type: !662)
!3283 = !DILocalVariable(name: "fallthrough_res", scope: !3275, file: !3, line: 508, type: !662)
!3284 = !DILocation(line: 0, scope: !3254)
!3285 = !DILocation(line: 424, column: 47, scope: !3254)
!3286 = !DILocation(line: 0, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 445, column: 2)
!3288 = !DILocation(line: 0, scope: !3275)
!3289 = !DILocation(line: 0, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 534, column: 7)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 532, column: 9)
!3292 = !DILocation(line: 0, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 501, column: 13)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 499, column: 7)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 498, column: 9)
!3296 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 496, column: 3)
!3297 = !DILocation(line: 431, column: 8, scope: !3273)
!3298 = !DILocation(line: 428, column: 7, scope: !3254)
!3299 = !DILocation(line: 0, scope: !3273)
!3300 = !DILocation(line: 431, column: 3, scope: !3273)
!3301 = !DILocation(line: 0, scope: !3271)
!3302 = !DILocation(line: 435, column: 14, scope: !3271)
!3303 = !DILocation(line: 441, column: 11, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 441, column: 11)
!3305 = !DILocation(line: 441, column: 11, scope: !3271)
!3306 = !DILocation(line: 444, column: 15, scope: !3271)
!3307 = !DILocation(line: 444, column: 7, scope: !3271)
!3308 = !DILocation(line: 449, column: 4, scope: !3287)
!3309 = !DILocation(line: 450, column: 4, scope: !3287)
!3310 = !DILocation(line: 451, column: 4, scope: !3287)
!3311 = !DILocation(line: 453, column: 4, scope: !3287)
!3312 = !DILocation(line: 460, column: 8, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 460, column: 8)
!3314 = !DILocation(line: 460, column: 34, scope: !3313)
!3315 = !DILocation(line: 460, column: 8, scope: !3287)
!3316 = !DILocation(line: 465, column: 12, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 465, column: 12)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 461, column: 6)
!3319 = !DILocation(line: 465, column: 12, scope: !3318)
!3320 = !DILocation(line: 466, column: 3, scope: !3317)
!3321 = !DILocation(line: 472, column: 39, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 472, column: 13)
!3323 = !DILocation(line: 472, column: 13, scope: !3313)
!3324 = !DILocation(line: 474, column: 39, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 474, column: 13)
!3326 = !DILocation(line: 474, column: 13, scope: !3322)
!3327 = !DILocation(line: 0, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 478, column: 8)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 478, column: 8)
!3330 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 475, column: 6)
!3331 = !DILocation(line: 478, column: 8, scope: !3329)
!3332 = !DILocation(line: 478, column: 22, scope: !3328)
!3333 = !DILocation(line: 480, column: 22, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 479, column: 3)
!3335 = !DILocation(line: 481, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 481, column: 9)
!3337 = !DILocation(line: 481, column: 9, scope: !3334)
!3338 = !DILocation(line: 478, column: 54, scope: !3328)
!3339 = !DILocation(line: 478, column: 8, scope: !3328)
!3340 = distinct !{!3340, !3331, !3341}
!3341 = !DILocation(line: 483, column: 3, scope: !3329)
!3342 = !DILocation(line: 490, column: 11, scope: !3281)
!3343 = !DILocation(line: 490, column: 11, scope: !3271)
!3344 = !DILocation(line: 492, column: 18, scope: !3279)
!3345 = !DILocation(line: 492, column: 21, scope: !3279)
!3346 = !DILocation(line: 492, column: 8, scope: !3280)
!3347 = !DILocation(line: 494, column: 12, scope: !3277)
!3348 = !DILocation(line: 495, column: 5, scope: !3277)
!3349 = !DILocation(line: 495, column: 8, scope: !3277)
!3350 = !DILocation(line: 495, column: 44, scope: !3277)
!3351 = !DILocation(line: 494, column: 12, scope: !3278)
!3352 = !DILocation(line: 497, column: 12, scope: !3296)
!3353 = !DILocation(line: 498, column: 19, scope: !3295)
!3354 = !DILocation(line: 498, column: 9, scope: !3296)
!3355 = !DILocation(line: 501, column: 13, scope: !3294)
!3356 = !DILocation(line: 502, column: 17, scope: !3293)
!3357 = !DILocation(line: 502, column: 4, scope: !3293)
!3358 = !DILocation(line: 505, column: 17, scope: !3276)
!3359 = !DILocation(line: 505, column: 17, scope: !3277)
!3360 = !DILocation(line: 507, column: 5, scope: !3275)
!3361 = !DILocation(line: 508, column: 5, scope: !3275)
!3362 = !DILocation(line: 518, column: 16, scope: !3275)
!3363 = !DILocation(line: 519, column: 20, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 519, column: 9)
!3365 = !DILocation(line: 519, column: 9, scope: !3275)
!3366 = !DILocation(line: 522, column: 5, scope: !3275)
!3367 = !DILocation(line: 532, column: 9, scope: !3291)
!3368 = !DILocation(line: 532, column: 35, scope: !3291)
!3369 = !DILocation(line: 533, column: 9, scope: !3291)
!3370 = !DILocation(line: 533, column: 12, scope: !3291)
!3371 = !DILocation(line: 532, column: 9, scope: !3275)
!3372 = !DILocation(line: 0, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 535, column: 9)
!3374 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 535, column: 9)
!3375 = !DILocation(line: 535, column: 9, scope: !3374)
!3376 = !DILocation(line: 535, column: 25, scope: !3373)
!3377 = !DILocation(line: 535, column: 23, scope: !3373)
!3378 = !DILocation(line: 537, column: 10, scope: !3373)
!3379 = !DILocation(line: 537, column: 8, scope: !3373)
!3380 = !DILocation(line: 536, column: 4, scope: !3373)
!3381 = !DILocation(line: 537, column: 6, scope: !3373)
!3382 = !DILocation(line: 535, column: 55, scope: !3373)
!3383 = !DILocation(line: 535, column: 9, scope: !3373)
!3384 = distinct !{!3384, !3375, !3385}
!3385 = !DILocation(line: 537, column: 10, scope: !3374)
!3386 = !DILocation(line: 539, column: 22, scope: !3290)
!3387 = !DILocation(line: 540, column: 9, scope: !3290)
!3388 = !DILocation(line: 543, column: 14, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 543, column: 9)
!3390 = !DILocation(line: 0, scope: !3389)
!3391 = !DILocation(line: 543, column: 25, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 543, column: 9)
!3393 = !DILocation(line: 543, column: 23, scope: !3392)
!3394 = !DILocation(line: 543, column: 9, scope: !3389)
!3395 = !DILocation(line: 545, column: 10, scope: !3392)
!3396 = !DILocation(line: 545, column: 6, scope: !3392)
!3397 = !DILocation(line: 543, column: 55, scope: !3392)
!3398 = !DILocation(line: 543, column: 9, scope: !3392)
!3399 = distinct !{!3399, !3394, !3400}
!3400 = !DILocation(line: 545, column: 10, scope: !3389)
!3401 = !DILocation(line: 547, column: 9, scope: !3290)
!3402 = !DILocation(line: 548, column: 7, scope: !3290)
!3403 = !DILocation(line: 551, column: 9, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 550, column: 7)
!3405 = !DILocation(line: 552, column: 22, scope: !3404)
!3406 = !DILocation(line: 555, column: 18, scope: !3275)
!3407 = !DILocation(line: 556, column: 5, scope: !3275)
!3408 = !DILocation(line: 557, column: 5, scope: !3275)
!3409 = !DILocation(line: 558, column: 5, scope: !3275)
!3410 = !DILocation(line: 560, column: 23, scope: !3275)
!3411 = !DILocation(line: 561, column: 5, scope: !3275)
!3412 = !DILocation(line: 563, column: 5, scope: !3275)
!3413 = !DILocation(line: 565, column: 33, scope: !3275)
!3414 = !DILocation(line: 565, column: 5, scope: !3275)
!3415 = !DILocation(line: 568, column: 5, scope: !3275)
!3416 = !DILocation(line: 571, column: 5, scope: !3275)
!3417 = !DILocation(line: 572, column: 5, scope: !3275)
!3418 = !DILocation(line: 573, column: 5, scope: !3275)
!3419 = !DILocation(line: 574, column: 3, scope: !3276)
!3420 = !DILocation(line: 588, column: 7, scope: !3271)
!3421 = !DILocation(line: 589, column: 7, scope: !3271)
!3422 = !DILocation(line: 591, column: 7, scope: !3271)
!3423 = !DILocation(line: 592, column: 7, scope: !3271)
!3424 = !DILocation(line: 593, column: 7, scope: !3271)
!3425 = !DILocation(line: 594, column: 5, scope: !3272)
!3426 = distinct !{!3426, !3300, !3427}
!3427 = !DILocation(line: 594, column: 5, scope: !3273)
!3428 = !DILocation(line: 596, column: 3, scope: !3254)
!3429 = distinct !DISubprogram(name: "init_resource_info", scope: !3, file: !3, line: 1130, type: !3430, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !1143}
!3432 = !{!3433, !3434, !3435}
!3433 = !DILocalVariable(name: "epilogue_insn", arg: 1, scope: !3429, file: !3, line: 1130, type: !1143)
!3434 = !DILocalVariable(name: "i", scope: !3429, file: !3, line: 1132, type: !569)
!3435 = !DILocalVariable(name: "bb", scope: !3429, file: !3, line: 1133, type: !1603)
!3436 = !DILocation(line: 0, scope: !3429)
!3437 = !DILocation(line: 1142, column: 28, scope: !3429)
!3438 = !DILocation(line: 1143, column: 32, scope: !3429)
!3439 = !DILocation(line: 1144, column: 37, scope: !3429)
!3440 = !DILocation(line: 1145, column: 3, scope: !3429)
!3441 = !DILocation(line: 1147, column: 7, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1147, column: 7)
!3443 = !DILocation(line: 1147, column: 7, scope: !3429)
!3444 = !DILocation(line: 1151, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1148, column: 5)
!3446 = !DILocation(line: 1154, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1153, column: 11)
!3448 = !DILocation(line: 1153, column: 11, scope: !3445)
!3449 = !DILocation(line: 1155, column: 2, scope: !3447)
!3450 = !DILocation(line: 1158, column: 5, scope: !3442)
!3451 = !DILocation(line: 1160, column: 13, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1160, column: 7)
!3453 = !DILocation(line: 1160, column: 24, scope: !3452)
!3454 = !DILocation(line: 1160, column: 7, scope: !3429)
!3455 = !DILocation(line: 1161, column: 5, scope: !3452)
!3456 = !DILocation(line: 1164, column: 8, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1164, column: 3)
!3458 = !DILocation(line: 0, scope: !3457)
!3459 = !DILocation(line: 1164, column: 17, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 1164, column: 3)
!3461 = !DILocation(line: 1164, column: 3, scope: !3457)
!3462 = !DILocation(line: 1165, column: 9, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 1165, column: 9)
!3464 = !DILocation(line: 1165, column: 9, scope: !3460)
!3465 = !DILocation(line: 1170, column: 7, scope: !3463)
!3466 = !DILocation(line: 1164, column: 43, scope: !3460)
!3467 = !DILocation(line: 1164, column: 3, scope: !3460)
!3468 = distinct !{!3468, !3461, !3469}
!3469 = !DILocation(line: 1170, column: 7, scope: !3457)
!3470 = !DILocation(line: 1189, column: 29, scope: !3429)
!3471 = !DILocation(line: 1191, column: 3, scope: !3429)
!3472 = !DILocation(line: 1191, column: 27, scope: !3429)
!3473 = !DILocation(line: 1193, column: 7, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1192, column: 5)
!3475 = !DILocation(line: 1195, column: 11, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1195, column: 11)
!3477 = !DILocation(line: 1195, column: 11, scope: !3474)
!3478 = distinct !{!3478, !3471, !3479}
!3479 = !DILocation(line: 1197, column: 5, scope: !3429)
!3480 = !DILocation(line: 1200, column: 23, scope: !3429)
!3481 = !DILocation(line: 1200, column: 21, scope: !3429)
!3482 = !DILocation(line: 1201, column: 14, scope: !3429)
!3483 = !DILocation(line: 1201, column: 12, scope: !3429)
!3484 = !DILocation(line: 1204, column: 3, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 1204, column: 3)
!3486 = !DILocation(line: 1204, column: 3, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1204, column: 3)
!3488 = !DILocation(line: 0, scope: !3485)
!3489 = !DILocation(line: 1205, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1205, column: 9)
!3491 = !DILocation(line: 1205, column: 9, scope: !3487)
!3492 = !DILocation(line: 1206, column: 7, scope: !3490)
!3493 = !DILocation(line: 1206, column: 37, scope: !3490)
!3494 = distinct !{!3494, !3484, !3495}
!3495 = !DILocation(line: 1206, column: 39, scope: !3485)
!3496 = !DILocation(line: 1207, column: 1, scope: !3429)
!3497 = distinct !DISubprogram(name: "free_resource_info", scope: !3, file: !3, line: 1213, type: !3498, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null}
!3500 = !{!3501, !3502, !3505, !3509}
!3501 = !DILocalVariable(name: "bb", scope: !3497, file: !3, line: 1215, type: !1603)
!3502 = !DILocalVariable(name: "i", scope: !3503, file: !3, line: 1219, type: !569)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1218, column: 5)
!3504 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1217, column: 7)
!3505 = !DILocalVariable(name: "ti", scope: !3506, file: !3, line: 1223, type: !579)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1222, column: 2)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1221, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 1221, column: 7)
!3509 = !DILocalVariable(name: "next", scope: !3510, file: !3, line: 1227, type: !579)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 1226, column: 6)
!3511 = !DILocation(line: 1217, column: 7, scope: !3504)
!3512 = !DILocation(line: 1217, column: 25, scope: !3504)
!3513 = !DILocation(line: 1217, column: 7, scope: !3497)
!3514 = !DILocation(line: 1221, column: 7, scope: !3508)
!3515 = !DILocation(line: 0, scope: !3503)
!3516 = !DILocation(line: 1221, column: 21, scope: !3507)
!3517 = !DILocation(line: 1223, column: 29, scope: !3506)
!3518 = !DILocation(line: 0, scope: !3506)
!3519 = !DILocation(line: 1225, column: 4, scope: !3506)
!3520 = !DILocation(line: 1227, column: 39, scope: !3510)
!3521 = !DILocation(line: 0, scope: !3510)
!3522 = !DILocation(line: 1228, column: 8, scope: !3510)
!3523 = distinct !{!3523, !3519, !3524}
!3524 = !DILocation(line: 1230, column: 6, scope: !3506)
!3525 = !DILocation(line: 1221, column: 42, scope: !3507)
!3526 = !DILocation(line: 1221, column: 7, scope: !3507)
!3527 = distinct !{!3527, !3514, !3528}
!3528 = !DILocation(line: 1231, column: 2, scope: !3508)
!3529 = !DILocation(line: 1233, column: 13, scope: !3503)
!3530 = !DILocation(line: 1233, column: 7, scope: !3503)
!3531 = !DILocation(line: 1234, column: 25, scope: !3503)
!3532 = !DILocation(line: 1235, column: 5, scope: !3503)
!3533 = !DILocation(line: 1237, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1237, column: 7)
!3535 = !DILocation(line: 1237, column: 16, scope: !3534)
!3536 = !DILocation(line: 1237, column: 7, scope: !3497)
!3537 = !DILocation(line: 1239, column: 7, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1238, column: 5)
!3539 = !DILocation(line: 1240, column: 16, scope: !3538)
!3540 = !DILocation(line: 1241, column: 5, scope: !3538)
!3541 = !DILocation(line: 1243, column: 3, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1243, column: 3)
!3543 = !DILocation(line: 1243, column: 3, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1243, column: 3)
!3545 = !DILocation(line: 0, scope: !3542)
!3546 = !DILocation(line: 0, scope: !3497)
!3547 = !DILocation(line: 1244, column: 9, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1244, column: 9)
!3549 = !DILocation(line: 1244, column: 9, scope: !3544)
!3550 = !DILocation(line: 1245, column: 7, scope: !3548)
!3551 = !DILocation(line: 1245, column: 37, scope: !3548)
!3552 = distinct !{!3552, !3541, !3553}
!3553 = !DILocation(line: 1245, column: 39, scope: !3542)
!3554 = !DILocation(line: 1246, column: 1, scope: !3497)
!3555 = distinct !DISubprogram(name: "clear_hashed_info_for_insn", scope: !3, file: !3, line: 1251, type: !3430, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "insn", arg: 1, scope: !3555, file: !3, line: 1251, type: !1143)
!3558 = !DILocalVariable(name: "tinfo", scope: !3555, file: !3, line: 1253, type: !579)
!3559 = !DILocation(line: 0, scope: !3555)
!3560 = !DILocation(line: 1255, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1255, column: 7)
!3562 = !DILocation(line: 1255, column: 25, scope: !3561)
!3563 = !DILocation(line: 1255, column: 7, scope: !3555)
!3564 = !DILocation(line: 1257, column: 38, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1257, column: 7)
!3566 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1256, column: 5)
!3567 = !DILocation(line: 1257, column: 54, scope: !3565)
!3568 = !DILocation(line: 1257, column: 20, scope: !3565)
!3569 = !DILocation(line: 1257, column: 12, scope: !3565)
!3570 = !DILocation(line: 0, scope: !3565)
!3571 = !DILocation(line: 1257, column: 7, scope: !3565)
!3572 = !DILocation(line: 1259, column: 13, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 1259, column: 6)
!3574 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1257, column: 7)
!3575 = !DILocation(line: 1259, column: 17, scope: !3573)
!3576 = !DILocation(line: 1259, column: 6, scope: !3574)
!3577 = !DILocation(line: 1258, column: 27, scope: !3574)
!3578 = !DILocation(line: 1257, column: 7, scope: !3574)
!3579 = distinct !{!3579, !3571, !3580}
!3580 = !DILocation(line: 1260, column: 4, scope: !3565)
!3581 = !DILocation(line: 1263, column: 9, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1262, column: 11)
!3583 = !DILocation(line: 1263, column: 15, scope: !3582)
!3584 = !DILocation(line: 1263, column: 2, scope: !3582)
!3585 = !DILocation(line: 1265, column: 1, scope: !3555)
!3586 = distinct !DISubprogram(name: "incr_ticks_for_insn", scope: !3, file: !3, line: 1270, type: !3430, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "insn", arg: 1, scope: !3586, file: !3, line: 1270, type: !1143)
!3589 = !DILocalVariable(name: "b", scope: !3586, file: !3, line: 1272, type: !569)
!3590 = !DILocation(line: 0, scope: !3586)
!3591 = !DILocation(line: 1272, column: 35, scope: !3586)
!3592 = !DILocation(line: 1272, column: 11, scope: !3586)
!3593 = !DILocation(line: 1274, column: 9, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1274, column: 7)
!3595 = !DILocation(line: 1274, column: 7, scope: !3586)
!3596 = !DILocation(line: 1275, column: 5, scope: !3594)
!3597 = !DILocation(line: 1275, column: 16, scope: !3594)
!3598 = !DILocation(line: 1276, column: 1, scope: !3586)
!3599 = distinct !DISubprogram(name: "mark_end_of_function_resources", scope: !3, file: !3, line: 1281, type: !3600, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !1143, !568}
!3602 = !{!3603, !3604}
!3603 = !DILocalVariable(name: "trial", arg: 1, scope: !3599, file: !3, line: 1281, type: !1143)
!3604 = !DILocalVariable(name: "include_delayed_effects", arg: 2, scope: !3599, file: !3, line: 1281, type: !568)
!3605 = !DILocation(line: 0, scope: !3599)
!3606 = !DILocation(line: 1283, column: 3, scope: !3599)
!3607 = !DILocation(line: 1285, column: 1, scope: !3599)
!3608 = distinct !DISubprogram(name: "end_hard_regno", scope: !2469, file: !2469, line: 290, type: !3609, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!7, !5, !7}
!3611 = !{!3612, !3613}
!3612 = !DILocalVariable(name: "mode", arg: 1, scope: !3608, file: !2469, line: 290, type: !5)
!3613 = !DILocalVariable(name: "regno", arg: 2, scope: !3608, file: !2469, line: 290, type: !7)
!3614 = !DILocation(line: 0, scope: !3608)
!3615 = !DILocation(line: 292, column: 18, scope: !3608)
!3616 = !DILocation(line: 292, column: 16, scope: !3608)
!3617 = !DILocation(line: 292, column: 3, scope: !3608)
