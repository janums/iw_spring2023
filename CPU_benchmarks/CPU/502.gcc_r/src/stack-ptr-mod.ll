; ModuleID = 'stack-ptr-mod.bc'
source_filename = "stack-ptr-mod.c"
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

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"*stack_ptr_mod\00", align 1
@pass_stack_ptr_mod = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @rest_of_handle_stack_ptr_mod, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8, !dbg !0
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@current_function_sp_is_unchanging = external dso_local local_unnamed_addr global i32, align 4
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !744 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !757, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !761
  ret i32 %call, !dbg !762
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !763 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !767
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !768
  ret i32 %call, !dbg !769
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !770 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !833, metadata !DIExpression()), !dbg !834
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !835
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !835
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !835
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !835
  %cmp = icmp uge i8* %0, %1, !dbg !835
  %conv1 = zext i1 %cmp to i64, !dbg !835
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !835
  %tobool = icmp eq i64 %expval, 0, !dbg !835
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !835

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !835
  br label %cond.end, !dbg !835

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !835
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !835
  %2 = load i8, i8* %0, align 1, !dbg !835
  %conv3 = zext i8 %2 to i32, !dbg !835
  br label %cond.end, !dbg !835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !835
  ret i32 %cond, !dbg !836
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !837 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !839, metadata !DIExpression()), !dbg !840
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !841
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !841
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !841
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !841
  %cmp = icmp uge i8* %0, %1, !dbg !841
  %conv1 = zext i1 %cmp to i64, !dbg !841
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !841
  %tobool = icmp eq i64 %expval, 0, !dbg !841
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !841

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !841
  br label %cond.end, !dbg !841

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !841
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !841
  %2 = load i8, i8* %0, align 1, !dbg !841
  %conv3 = zext i8 %2 to i32, !dbg !841
  br label %cond.end, !dbg !841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !841
  ret i32 %cond, !dbg !842
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !843 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !844
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !844
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !844
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !844
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !844
  %cmp = icmp uge i8* %1, %2, !dbg !844
  %conv1 = zext i1 %cmp to i64, !dbg !844
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !844
  %tobool = icmp eq i64 %expval, 0, !dbg !844
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !844

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !844
  br label %cond.end, !dbg !844

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !844
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !844
  %3 = load i8, i8* %1, align 1, !dbg !844
  %conv3 = zext i8 %3 to i32, !dbg !844
  br label %cond.end, !dbg !844

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !844
  ret i32 %cond, !dbg !845
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !846 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !850, metadata !DIExpression()), !dbg !851
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !852
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !853
  ret i32 %call, !dbg !854
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !855 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !859, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !860, metadata !DIExpression()), !dbg !861
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !862
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !862
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !862
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !862
  %cmp = icmp uge i8* %0, %1, !dbg !862
  %conv1 = zext i1 %cmp to i64, !dbg !862
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !862
  %tobool = icmp eq i64 %expval, 0, !dbg !862
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !862

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !862
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !862
  br label %cond.end, !dbg !862

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !862
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !862
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !862
  store i8 %conv2, i8* %0, align 1, !dbg !862
  %conv6 = and i32 %__c, 255, !dbg !862
  br label %cond.end, !dbg !862

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !862
  ret i32 %cond, !dbg !863
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !864 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !866, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !867, metadata !DIExpression()), !dbg !868
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !869
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !869
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !869
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !869
  %cmp = icmp uge i8* %0, %1, !dbg !869
  %conv1 = zext i1 %cmp to i64, !dbg !869
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !869
  %tobool = icmp eq i64 %expval, 0, !dbg !869
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !869

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !869
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !869
  br label %cond.end, !dbg !869

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !869
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !869
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !869
  store i8 %conv2, i8* %0, align 1, !dbg !869
  %conv6 = and i32 %__c, 255, !dbg !869
  br label %cond.end, !dbg !869

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !869
  ret i32 %cond, !dbg !870
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !871 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !875
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !875
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !875
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !875
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !875
  %cmp = icmp uge i8* %1, %2, !dbg !875
  %conv1 = zext i1 %cmp to i64, !dbg !875
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !875
  %tobool = icmp eq i64 %expval, 0, !dbg !875
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !875

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !875
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !875
  br label %cond.end, !dbg !875

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !875
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !875
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !875
  store i8 %conv4, i8* %1, align 1, !dbg !875
  %conv6 = and i32 %__c, 255, !dbg !875
  br label %cond.end, !dbg !875

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !875
  ret i32 %cond, !dbg !876
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !877 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64* %__n, metadata !884, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !885, metadata !DIExpression()), !dbg !886
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !887
  ret i64 %call, !dbg !888
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !889 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !891, metadata !DIExpression()), !dbg !892
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !893
  %0 = load i32, i32* %_flags, align 8, !dbg !893
  %and = lshr i32 %0, 4, !dbg !893
  %and.lobit = and i32 %and, 1, !dbg !893
  ret i32 %and.lobit, !dbg !894
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !895 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !897, metadata !DIExpression()), !dbg !898
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !899
  %0 = load i32, i32* %_flags, align 8, !dbg !899
  %and = lshr i32 %0, 5, !dbg !899
  %and.lobit = and i32 %and, 1, !dbg !899
  ret i32 %and.lobit, !dbg !900
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !901 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !904, metadata !DIExpression()), !dbg !905
  %__c.off = add i32 %__c, 128, !dbg !906
  %0 = icmp ult i32 %__c.off, 384, !dbg !906
  br i1 %0, label %cond.true, label %cond.end, !dbg !906

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !907
  %1 = load i32*, i32** %call, align 8, !dbg !908
  %idxprom = sext i32 %__c to i64, !dbg !909
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !909
  %2 = load i32, i32* %arrayidx, align 4, !dbg !909
  br label %cond.end, !dbg !910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !910
  ret i32 %cond, !dbg !911
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !914, metadata !DIExpression()), !dbg !915
  %__c.off = add i32 %__c, 128, !dbg !916
  %0 = icmp ult i32 %__c.off, 384, !dbg !916
  br i1 %0, label %cond.true, label %cond.end, !dbg !916

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !917
  %1 = load i32*, i32** %call, align 8, !dbg !918
  %idxprom = sext i32 %__c to i64, !dbg !919
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !919
  %2 = load i32, i32* %arrayidx, align 4, !dbg !919
  br label %cond.end, !dbg !920

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !920
  ret i32 %cond, !dbg !921
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !922 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !927, metadata !DIExpression()), !dbg !928
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !929
  %conv = trunc i64 %call to i32, !dbg !930
  ret i32 %conv, !dbg !931
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !932 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !936, metadata !DIExpression()), !dbg !937
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !938
  ret i64 %call, !dbg !939
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !940 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !945, metadata !DIExpression()), !dbg !946
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !947
  ret i64 %call, !dbg !948
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !949 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !960, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8* %__base, metadata !961, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !962, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %__size, metadata !963, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !964, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !965, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !966, metadata !DIExpression()), !dbg !970
  br label %while.cond, !dbg !971

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !972
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !970
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !966, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !965, metadata !DIExpression()), !dbg !970
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !973
  br i1 %cmp, label %while.body, label %cleanup, !dbg !971

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !974
  %div = lshr i64 %add, 1, !dbg !976
  call void @llvm.dbg.value(metadata i64 %div, metadata !967, metadata !DIExpression()), !dbg !970
  %mul = mul i64 %div, %__size, !dbg !977
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !978
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !968, metadata !DIExpression()), !dbg !970
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !979
  call void @llvm.dbg.value(metadata i32 %call, metadata !969, metadata !DIExpression()), !dbg !970
  %cmp1 = icmp slt i32 %call, 0, !dbg !980
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !982

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !983
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !985

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %add4, metadata !965, metadata !DIExpression()), !dbg !970
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !970
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !970
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !966, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !965, metadata !DIExpression()), !dbg !970
  br label %while.cond, !dbg !971, !llvm.loop !987

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !970
  ret i8* %retval.0, !dbg !989
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !990 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !996, metadata !DIExpression()), !dbg !997
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !998
  ret double %call, !dbg !999
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1000 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1009, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1010, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i32 %base, metadata !1011, metadata !DIExpression()), !dbg !1012
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1013
  ret i64 %call, !dbg !1014
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1015 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1021, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1022, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i32 %base, metadata !1023, metadata !DIExpression()), !dbg !1024
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1025
  ret i64 %call, !dbg !1026
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1027 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1038, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1039, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i32 %base, metadata !1040, metadata !DIExpression()), !dbg !1041
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1042
  ret i64 %call, !dbg !1043
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1044 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1048, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1049, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 %base, metadata !1050, metadata !DIExpression()), !dbg !1051
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1052
  ret i64 %call, !dbg !1053
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1054 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1096, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1097, metadata !DIExpression()), !dbg !1098
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1099
  ret i32 %call, !dbg !1100
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1101 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1103, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1104, metadata !DIExpression()), !dbg !1105
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1106
  ret i32 %call, !dbg !1107
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1108 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1112, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1113, metadata !DIExpression()), !dbg !1114
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1115
  ret i32 %call, !dbg !1116
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1117 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1121, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1122, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1123, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1124, metadata !DIExpression()), !dbg !1125
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1126
  ret i32 %call, !dbg !1127
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1128 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1132, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1133, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1134, metadata !DIExpression(DW_OP_deref)), !dbg !1135
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1136
  ret i32 %call, !dbg !1137
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1138 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1142, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1143, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1144, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1145, metadata !DIExpression(DW_OP_deref)), !dbg !1146
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1147
  ret i32 %call, !dbg !1148
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1149 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1173, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1174, metadata !DIExpression()), !dbg !1175
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1176
  ret i32 %call, !dbg !1177
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1178 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1180, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1181, metadata !DIExpression()), !dbg !1182
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1183
  ret i32 %call, !dbg !1184
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1185 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1189, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1190, metadata !DIExpression()), !dbg !1191
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1192
  ret i32 %call, !dbg !1193
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1194 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1198, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1199, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1200, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1201, metadata !DIExpression()), !dbg !1202
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1203
  ret i32 %call, !dbg !1204
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_stack_ptr_mod() #3 !dbg !1205 {
entry:
  tail call fastcc void @notice_stack_pointer_modification() #6, !dbg !1206
  ret i32 0, !dbg !1207
}

; Function Attrs: nounwind uwtable
define internal fastcc void @notice_stack_pointer_modification() unnamed_addr #3 !dbg !1208 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2269
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 20, !dbg !2270
  %bf.load = load i32, i32* %calls_alloca, align 8, !dbg !2270
  %bf.clear = lshr i32 %bf.load, 19, !dbg !2271
  %bf.clear.lobit = and i32 %bf.clear, 1, !dbg !2271
  %1 = xor i32 %bf.clear.lobit, 1, !dbg !2271
  store i32 %1, i32* @current_function_sp_is_unchanging, align 4, !dbg !2272
  %tobool1 = icmp eq i32 %1, 0, !dbg !2273
  br i1 %tobool1, label %if.end40, label %if.then, !dbg !2275

if.then:                                          ; preds = %entry
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2276
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2276
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !2276
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2276
  br label %for.cond, !dbg !2276

for.cond:                                         ; preds = %for.inc37, %if.then
  %4 = phi i32 [ %1, %if.then ], [ %.lcssa, %for.inc37 ]
  %5 = phi %struct.control_flow_graph* [ %2, %if.then ], [ %.pre1, %for.inc37 ], !dbg !2278
  %.pn = phi %struct.basic_block_def* [ %3, %if.then ], [ %bb.0, %for.inc37 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2280
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1212, metadata !DIExpression()), !dbg !2281
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2278
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2278
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2278
  br i1 %cmp, label %if.end40.loopexit, label %for.body, !dbg !2276

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2282
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2282
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2282
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 0, !dbg !2282
  br label %for.cond5, !dbg !2282

for.cond5:                                        ; preds = %for.inc, %for.body
  %8 = phi i32 [ %4, %for.body ], [ %17, %for.inc ]
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx36, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2284
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2268, metadata !DIExpression()), !dbg !2281
  %tobool6 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2285
  br i1 %tobool6, label %for.inc37, label %land.rhs, !dbg !2285

land.rhs:                                         ; preds = %for.cond5
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2285
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 1, !dbg !2285
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2285
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2285
  %rt_rtx = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !2285
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2285
  %cmp9 = icmp eq %struct.rtx_def* %insn.0, %12, !dbg !2285
  br i1 %cmp9, label %for.inc37, label %for.body10, !dbg !2282

for.body10:                                       ; preds = %land.rhs
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2287
  %bf.load11 = load i32, i32* %13, align 8, !dbg !2287
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !2287
  %cmp13 = icmp eq i32 %bf.clear12, 8, !dbg !2287
  br i1 %cmp13, label %if.then25, label %lor.lhs.false, !dbg !2287

lor.lhs.false:                                    ; preds = %for.body10
  %cmp16 = icmp eq i32 %bf.clear12, 7, !dbg !2287
  br i1 %cmp16, label %if.then25, label %lor.lhs.false17, !dbg !2287

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %bf.clear12, 9, !dbg !2287
  br i1 %cmp20, label %if.then25, label %lor.lhs.false21, !dbg !2287

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %cmp24 = icmp eq i32 %bf.clear12, 10, !dbg !2287
  br i1 %cmp24, label %if.then25, label %for.inc, !dbg !2290

if.then25:                                        ; preds = %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false, %for.body10
  %u26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2291
  %14 = getelementptr inbounds %union.u, %union.u* %u26, i64 1, i32 0, i32 0, i64 0, !dbg !2291
  %rt_rtx29 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**, !dbg !2291
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx29, align 8, !dbg !2291
  tail call void @note_stores(%struct.rtx_def* %15, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @notice_stack_pointer_modification_1, i8* null) #5, !dbg !2293
  %16 = load i32, i32* @current_function_sp_is_unchanging, align 4, !dbg !2294
  %tobool30 = icmp eq i32 %16, 0, !dbg !2294
  br i1 %tobool30, label %cleanup.cont.loopexit, label %for.inc, !dbg !2296

for.inc:                                          ; preds = %if.then25, %lor.lhs.false21
  %17 = phi i32 [ %16, %if.then25 ], [ %8, %lor.lhs.false21 ]
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2285
  %rt_rtx36 = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !2285
  br label %for.cond5, !dbg !2285, !llvm.loop !2297

for.inc37:                                        ; preds = %land.rhs, %for.cond5
  %.lcssa = phi i32 [ %8, %land.rhs ], [ %8, %for.cond5 ]
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2278
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2299
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !2278
  br label %for.cond, !dbg !2278, !llvm.loop !2300

if.end40.loopexit:                                ; preds = %for.cond
  %.lcssa6 = phi i32 [ %4, %for.cond ]
  br label %if.end40, !dbg !2302

if.end40:                                         ; preds = %if.end40.loopexit, %entry
  %19 = phi i32 [ %.lcssa6, %if.end40.loopexit ], [ 0, %entry ], !dbg !2304
  %20 = load %struct.df*, %struct.df** @df, align 8, !dbg !2302
  %tobool41 = icmp ne %struct.df* %20, null, !dbg !2302
  %tobool42 = icmp ne i32 %19, 0, !dbg !2304
  %or.cond = and i1 %tobool41, %tobool42, !dbg !2305
  br i1 %or.cond, label %if.then43, label %cleanup.cont, !dbg !2305

if.then43:                                        ; preds = %if.end40
  tail call void @df_update_exit_block_uses() #5, !dbg !2306
  br label %cleanup.cont, !dbg !2306

cleanup.cont.loopexit:                            ; preds = %if.then25
  br label %cleanup.cont, !dbg !2307

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then43, %if.end40
  ret void, !dbg !2307
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @notice_stack_pointer_modification_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #3 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %data, metadata !2317, metadata !DIExpression()), !dbg !2318
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2319
  %cmp = icmp eq %struct.rtx_def* %0, %x, !dbg !2321
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2322

lor.lhs.false:                                    ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2323
  %bf.load = load i32, i32* %1, align 8, !dbg !2323
  %bf.clear = and i32 %bf.load, 65535, !dbg !2323
  %cmp1 = icmp eq i32 %bf.clear, 43, !dbg !2323
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2324

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2325
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !2325
  %3 = load i32*, i32** %2, align 8, !dbg !2325
  %bf.load2 = load i32, i32* %3, align 8, !dbg !2325
  %bf.clear3 = and i32 %bf.load2, 65535, !dbg !2325
  %idxprom = zext i32 %bf.clear3 to i64, !dbg !2325
  %arrayidx4 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !2325
  %4 = load i32, i32* %arrayidx4, align 4, !dbg !2325
  %cmp5 = icmp eq i32 %4, 12, !dbg !2326
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2327

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx13 = getelementptr inbounds i32, i32* %3, i64 2, !dbg !2328
  %rt_rtx14 = bitcast i32* %arrayidx13 to %struct.rtx_def**, !dbg !2328
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx14, align 8, !dbg !2328
  %cmp15 = icmp eq %struct.rtx_def* %5, %0, !dbg !2329
  br i1 %cmp15, label %if.then, label %if.end, !dbg !2330

if.then:                                          ; preds = %land.lhs.true6, %entry
  store i32 0, i32* @current_function_sp_is_unchanging, align 4, !dbg !2331
  br label %if.end, !dbg !2332

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %lor.lhs.false
  ret void, !dbg !2333
}

declare dso_local void @df_update_exit_block_uses() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!740, !741, !742}
!llvm.ident = !{!743}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_stack_ptr_mod", scope: !2, file: !3, line: 94, type: !714, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !703, globals: !713, nameTableKind: None)
!3 = !DIFile(filename: "stack-ptr-mod.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560}
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
!703 = !{!704, !705, !706, !707, !710, !711, !560}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!706 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!713 = !{!0}
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !714, file: !6, line: 164, baseType: !717, size: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !718)
!718 = !{!719, !720, !721, !725, !729, !731, !732, !733, !735, !736, !737, !738, !739}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !6, line: 117, baseType: !5, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !6, line: 121, baseType: !711, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !717, file: !6, line: 125, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!705}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !717, file: !6, line: 130, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!7}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !717, file: !6, line: 133, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !6, line: 136, baseType: !730, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !717, file: !6, line: 139, baseType: !706, size: 32, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !717, file: !6, line: 143, baseType: !734, size: 32, offset: 416)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !717, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !717, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !717, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !717, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !717, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!740 = !{i32 2, !"Dwarf Version", i32 4}
!741 = !{i32 2, !"Debug Info Version", i32 3}
!742 = !{i32 1, !"wchar_size", i32 4}
!743 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!744 = distinct !DISubprogram(name: "vprintf", scope: !745, file: !745, line: 39, type: !746, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!745 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!746 = !DISubroutineType(types: !747)
!747 = !{!706, !748, !749}
!748 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !751)
!751 = !{!752, !753, !754, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !750, file: !3, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !750, file: !3, baseType: !7, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !750, file: !3, baseType: !710, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !750, file: !3, baseType: !710, size: 64, offset: 128)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "__fmt", arg: 1, scope: !744, file: !745, line: 39, type: !748)
!758 = !DILocalVariable(name: "__arg", arg: 2, scope: !744, file: !745, line: 39, type: !749)
!759 = !DILocation(line: 0, scope: !744)
!760 = !DILocation(line: 41, column: 20, scope: !744)
!761 = !DILocation(line: 41, column: 10, scope: !744)
!762 = !DILocation(line: 41, column: 3, scope: !744)
!763 = distinct !DISubprogram(name: "getchar", scope: !745, file: !745, line: 47, type: !764, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!706}
!766 = !{}
!767 = !DILocation(line: 49, column: 16, scope: !763)
!768 = !DILocation(line: 49, column: 10, scope: !763)
!769 = !DILocation(line: 49, column: 3, scope: !763)
!770 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !745, file: !745, line: 56, type: !771, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!771 = !DISubroutineType(types: !772)
!772 = !{!706, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !775, line: 7, baseType: !776)
!775 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !777, line: 49, size: 1728, elements: !778)
!777 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !794, !796, !797, !798, !802, !804, !806, !810, !813, !815, !818, !821, !822, !823, !827, !828}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !776, file: !777, line: 51, baseType: !706, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !776, file: !777, line: 54, baseType: !708, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !776, file: !777, line: 55, baseType: !708, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !776, file: !777, line: 56, baseType: !708, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !776, file: !777, line: 57, baseType: !708, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !776, file: !777, line: 58, baseType: !708, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !776, file: !777, line: 59, baseType: !708, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !776, file: !777, line: 60, baseType: !708, size: 64, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !776, file: !777, line: 61, baseType: !708, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !776, file: !777, line: 64, baseType: !708, size: 64, offset: 576)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !776, file: !777, line: 65, baseType: !708, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !776, file: !777, line: 66, baseType: !708, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !776, file: !777, line: 68, baseType: !792, size: 64, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !777, line: 36, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !776, file: !777, line: 70, baseType: !795, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !776, file: !777, line: 72, baseType: !706, size: 32, offset: 896)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !776, file: !777, line: 73, baseType: !706, size: 32, offset: 928)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !776, file: !777, line: 74, baseType: !799, size: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !800, line: 152, baseType: !801)
!800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!801 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !776, file: !777, line: 77, baseType: !803, size: 16, offset: 1024)
!803 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !776, file: !777, line: 78, baseType: !805, size: 8, offset: 1040)
!805 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !776, file: !777, line: 79, baseType: !807, size: 8, offset: 1048)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 8, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 1)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !776, file: !777, line: 81, baseType: !811, size: 64, offset: 1088)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !777, line: 43, baseType: null)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !776, file: !777, line: 89, baseType: !814, size: 64, offset: 1152)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !800, line: 153, baseType: !801)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !776, file: !777, line: 91, baseType: !816, size: 64, offset: 1216)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !777, line: 37, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !776, file: !777, line: 92, baseType: !819, size: 64, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !777, line: 38, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !776, file: !777, line: 93, baseType: !795, size: 64, offset: 1344)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !776, file: !777, line: 94, baseType: !710, size: 64, offset: 1408)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !776, file: !777, line: 95, baseType: !824, size: 64, offset: 1472)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !825, line: 46, baseType: !826)
!825 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!826 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !776, file: !777, line: 96, baseType: !706, size: 32, offset: 1536)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !776, file: !777, line: 98, baseType: !829, size: 160, offset: 1568)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 160, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 20)
!832 = !{!833}
!833 = !DILocalVariable(name: "__fp", arg: 1, scope: !770, file: !745, line: 56, type: !773)
!834 = !DILocation(line: 0, scope: !770)
!835 = !DILocation(line: 58, column: 10, scope: !770)
!836 = !DILocation(line: 58, column: 3, scope: !770)
!837 = distinct !DISubprogram(name: "getc_unlocked", scope: !745, file: !745, line: 66, type: !771, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!838 = !{!839}
!839 = !DILocalVariable(name: "__fp", arg: 1, scope: !837, file: !745, line: 66, type: !773)
!840 = !DILocation(line: 0, scope: !837)
!841 = !DILocation(line: 68, column: 10, scope: !837)
!842 = !DILocation(line: 68, column: 3, scope: !837)
!843 = distinct !DISubprogram(name: "getchar_unlocked", scope: !745, file: !745, line: 73, type: !764, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!844 = !DILocation(line: 75, column: 10, scope: !843)
!845 = !DILocation(line: 75, column: 3, scope: !843)
!846 = distinct !DISubprogram(name: "putchar", scope: !745, file: !745, line: 82, type: !847, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!706, !706}
!849 = !{!850}
!850 = !DILocalVariable(name: "__c", arg: 1, scope: !846, file: !745, line: 82, type: !706)
!851 = !DILocation(line: 0, scope: !846)
!852 = !DILocation(line: 84, column: 21, scope: !846)
!853 = !DILocation(line: 84, column: 10, scope: !846)
!854 = !DILocation(line: 84, column: 3, scope: !846)
!855 = distinct !DISubprogram(name: "fputc_unlocked", scope: !745, file: !745, line: 91, type: !856, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!706, !706, !773}
!858 = !{!859, !860}
!859 = !DILocalVariable(name: "__c", arg: 1, scope: !855, file: !745, line: 91, type: !706)
!860 = !DILocalVariable(name: "__stream", arg: 2, scope: !855, file: !745, line: 91, type: !773)
!861 = !DILocation(line: 0, scope: !855)
!862 = !DILocation(line: 93, column: 10, scope: !855)
!863 = !DILocation(line: 93, column: 3, scope: !855)
!864 = distinct !DISubprogram(name: "putc_unlocked", scope: !745, file: !745, line: 101, type: !856, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!865 = !{!866, !867}
!866 = !DILocalVariable(name: "__c", arg: 1, scope: !864, file: !745, line: 101, type: !706)
!867 = !DILocalVariable(name: "__stream", arg: 2, scope: !864, file: !745, line: 101, type: !773)
!868 = !DILocation(line: 0, scope: !864)
!869 = !DILocation(line: 103, column: 10, scope: !864)
!870 = !DILocation(line: 103, column: 3, scope: !864)
!871 = distinct !DISubprogram(name: "putchar_unlocked", scope: !745, file: !745, line: 108, type: !847, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!872 = !{!873}
!873 = !DILocalVariable(name: "__c", arg: 1, scope: !871, file: !745, line: 108, type: !706)
!874 = !DILocation(line: 0, scope: !871)
!875 = !DILocation(line: 110, column: 10, scope: !871)
!876 = !DILocation(line: 110, column: 3, scope: !871)
!877 = distinct !DISubprogram(name: "getline", scope: !745, file: !745, line: 118, type: !878, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !707, !881, !773}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !800, line: 193, baseType: !801)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!882 = !{!883, !884, !885}
!883 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !877, file: !745, line: 118, type: !707)
!884 = !DILocalVariable(name: "__n", arg: 2, scope: !877, file: !745, line: 118, type: !881)
!885 = !DILocalVariable(name: "__stream", arg: 3, scope: !877, file: !745, line: 118, type: !773)
!886 = !DILocation(line: 0, scope: !877)
!887 = !DILocation(line: 120, column: 10, scope: !877)
!888 = !DILocation(line: 120, column: 3, scope: !877)
!889 = distinct !DISubprogram(name: "feof_unlocked", scope: !745, file: !745, line: 128, type: !771, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !890)
!890 = !{!891}
!891 = !DILocalVariable(name: "__stream", arg: 1, scope: !889, file: !745, line: 128, type: !773)
!892 = !DILocation(line: 0, scope: !889)
!893 = !DILocation(line: 130, column: 10, scope: !889)
!894 = !DILocation(line: 130, column: 3, scope: !889)
!895 = distinct !DISubprogram(name: "ferror_unlocked", scope: !745, file: !745, line: 135, type: !771, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !896)
!896 = !{!897}
!897 = !DILocalVariable(name: "__stream", arg: 1, scope: !895, file: !745, line: 135, type: !773)
!898 = !DILocation(line: 0, scope: !895)
!899 = !DILocation(line: 137, column: 10, scope: !895)
!900 = !DILocation(line: 137, column: 3, scope: !895)
!901 = distinct !DISubprogram(name: "tolower", scope: !902, file: !902, line: 207, type: !847, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!902 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!903 = !{!904}
!904 = !DILocalVariable(name: "__c", arg: 1, scope: !901, file: !902, line: 207, type: !706)
!905 = !DILocation(line: 0, scope: !901)
!906 = !DILocation(line: 209, column: 22, scope: !901)
!907 = !DILocation(line: 209, column: 39, scope: !901)
!908 = !DILocation(line: 209, column: 38, scope: !901)
!909 = !DILocation(line: 209, column: 37, scope: !901)
!910 = !DILocation(line: 209, column: 10, scope: !901)
!911 = !DILocation(line: 209, column: 3, scope: !901)
!912 = distinct !DISubprogram(name: "toupper", scope: !902, file: !902, line: 213, type: !847, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!913 = !{!914}
!914 = !DILocalVariable(name: "__c", arg: 1, scope: !912, file: !902, line: 213, type: !706)
!915 = !DILocation(line: 0, scope: !912)
!916 = !DILocation(line: 215, column: 22, scope: !912)
!917 = !DILocation(line: 215, column: 39, scope: !912)
!918 = !DILocation(line: 215, column: 38, scope: !912)
!919 = !DILocation(line: 215, column: 37, scope: !912)
!920 = !DILocation(line: 215, column: 10, scope: !912)
!921 = !DILocation(line: 215, column: 3, scope: !912)
!922 = distinct !DISubprogram(name: "atoi", scope: !923, file: !923, line: 361, type: !924, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !926)
!923 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!924 = !DISubroutineType(types: !925)
!925 = !{!706, !711}
!926 = !{!927}
!927 = !DILocalVariable(name: "__nptr", arg: 1, scope: !922, file: !923, line: 361, type: !711)
!928 = !DILocation(line: 0, scope: !922)
!929 = !DILocation(line: 363, column: 16, scope: !922)
!930 = !DILocation(line: 363, column: 10, scope: !922)
!931 = !DILocation(line: 363, column: 3, scope: !922)
!932 = distinct !DISubprogram(name: "atol", scope: !923, file: !923, line: 366, type: !933, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!801, !711}
!935 = !{!936}
!936 = !DILocalVariable(name: "__nptr", arg: 1, scope: !932, file: !923, line: 366, type: !711)
!937 = !DILocation(line: 0, scope: !932)
!938 = !DILocation(line: 368, column: 10, scope: !932)
!939 = !DILocation(line: 368, column: 3, scope: !932)
!940 = distinct !DISubprogram(name: "atoll", scope: !923, file: !923, line: 373, type: !941, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!941 = !DISubroutineType(types: !942)
!942 = !{!943, !711}
!943 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!944 = !{!945}
!945 = !DILocalVariable(name: "__nptr", arg: 1, scope: !940, file: !923, line: 373, type: !711)
!946 = !DILocation(line: 0, scope: !940)
!947 = !DILocation(line: 375, column: 10, scope: !940)
!948 = !DILocation(line: 375, column: 3, scope: !940)
!949 = distinct !DISubprogram(name: "bsearch", scope: !950, file: !950, line: 20, type: !951, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !959)
!950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!951 = !DISubroutineType(types: !952)
!952 = !{!710, !953, !953, !824, !824, !955}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !923, line: 808, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!706, !953, !953}
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!960 = !DILocalVariable(name: "__key", arg: 1, scope: !949, file: !950, line: 20, type: !953)
!961 = !DILocalVariable(name: "__base", arg: 2, scope: !949, file: !950, line: 20, type: !953)
!962 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !949, file: !950, line: 20, type: !824)
!963 = !DILocalVariable(name: "__size", arg: 4, scope: !949, file: !950, line: 20, type: !824)
!964 = !DILocalVariable(name: "__compar", arg: 5, scope: !949, file: !950, line: 21, type: !955)
!965 = !DILocalVariable(name: "__l", scope: !949, file: !950, line: 23, type: !824)
!966 = !DILocalVariable(name: "__u", scope: !949, file: !950, line: 23, type: !824)
!967 = !DILocalVariable(name: "__idx", scope: !949, file: !950, line: 23, type: !824)
!968 = !DILocalVariable(name: "__p", scope: !949, file: !950, line: 24, type: !953)
!969 = !DILocalVariable(name: "__comparison", scope: !949, file: !950, line: 25, type: !706)
!970 = !DILocation(line: 0, scope: !949)
!971 = !DILocation(line: 29, column: 3, scope: !949)
!972 = !DILocation(line: 27, column: 7, scope: !949)
!973 = !DILocation(line: 29, column: 14, scope: !949)
!974 = !DILocation(line: 31, column: 20, scope: !975)
!975 = distinct !DILexicalBlock(scope: !949, file: !950, line: 30, column: 5)
!976 = !DILocation(line: 31, column: 27, scope: !975)
!977 = !DILocation(line: 32, column: 56, scope: !975)
!978 = !DILocation(line: 32, column: 47, scope: !975)
!979 = !DILocation(line: 33, column: 22, scope: !975)
!980 = !DILocation(line: 34, column: 24, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !950, line: 34, column: 11)
!982 = !DILocation(line: 34, column: 11, scope: !975)
!983 = !DILocation(line: 36, column: 29, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !950, line: 36, column: 16)
!985 = !DILocation(line: 36, column: 16, scope: !981)
!986 = !DILocation(line: 37, column: 14, scope: !984)
!987 = distinct !{!987, !971, !988}
!988 = !DILocation(line: 40, column: 5, scope: !949)
!989 = !DILocation(line: 43, column: 1, scope: !949)
!990 = distinct !DISubprogram(name: "atof", scope: !991, file: !991, line: 25, type: !992, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!992 = !DISubroutineType(types: !993)
!993 = !{!994, !711}
!994 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!995 = !{!996}
!996 = !DILocalVariable(name: "__nptr", arg: 1, scope: !990, file: !991, line: 25, type: !711)
!997 = !DILocation(line: 0, scope: !990)
!998 = !DILocation(line: 27, column: 10, scope: !990)
!999 = !DILocation(line: 27, column: 3, scope: !990)
!1000 = distinct !DISubprogram(name: "strtoimax", scope: !1001, file: !1001, line: 324, type: !1002, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1001 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!1004, !748, !1007, !706}
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1005, line: 101, baseType: !1006)
!1005 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !800, line: 72, baseType: !801)
!1007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !707)
!1008 = !{!1009, !1010, !1011}
!1009 = !DILocalVariable(name: "nptr", arg: 1, scope: !1000, file: !1001, line: 324, type: !748)
!1010 = !DILocalVariable(name: "endptr", arg: 2, scope: !1000, file: !1001, line: 324, type: !1007)
!1011 = !DILocalVariable(name: "base", arg: 3, scope: !1000, file: !1001, line: 324, type: !706)
!1012 = !DILocation(line: 0, scope: !1000)
!1013 = !DILocation(line: 327, column: 10, scope: !1000)
!1014 = !DILocation(line: 327, column: 3, scope: !1000)
!1015 = distinct !DISubprogram(name: "strtoumax", scope: !1001, file: !1001, line: 336, type: !1016, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!1018, !748, !1007, !706}
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1005, line: 102, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !800, line: 73, baseType: !826)
!1020 = !{!1021, !1022, !1023}
!1021 = !DILocalVariable(name: "nptr", arg: 1, scope: !1015, file: !1001, line: 336, type: !748)
!1022 = !DILocalVariable(name: "endptr", arg: 2, scope: !1015, file: !1001, line: 336, type: !1007)
!1023 = !DILocalVariable(name: "base", arg: 3, scope: !1015, file: !1001, line: 336, type: !706)
!1024 = !DILocation(line: 0, scope: !1015)
!1025 = !DILocation(line: 339, column: 10, scope: !1015)
!1026 = !DILocation(line: 339, column: 3, scope: !1015)
!1027 = distinct !DISubprogram(name: "wcstoimax", scope: !1001, file: !1001, line: 348, type: !1028, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!1004, !1030, !1034, !706}
!1030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1031)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1001, line: 34, baseType: !706)
!1034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1037 = !{!1038, !1039, !1040}
!1038 = !DILocalVariable(name: "nptr", arg: 1, scope: !1027, file: !1001, line: 348, type: !1030)
!1039 = !DILocalVariable(name: "endptr", arg: 2, scope: !1027, file: !1001, line: 348, type: !1034)
!1040 = !DILocalVariable(name: "base", arg: 3, scope: !1027, file: !1001, line: 348, type: !706)
!1041 = !DILocation(line: 0, scope: !1027)
!1042 = !DILocation(line: 351, column: 10, scope: !1027)
!1043 = !DILocation(line: 351, column: 3, scope: !1027)
!1044 = distinct !DISubprogram(name: "wcstoumax", scope: !1001, file: !1001, line: 362, type: !1045, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1018, !1030, !1034, !706}
!1047 = !{!1048, !1049, !1050}
!1048 = !DILocalVariable(name: "nptr", arg: 1, scope: !1044, file: !1001, line: 362, type: !1030)
!1049 = !DILocalVariable(name: "endptr", arg: 2, scope: !1044, file: !1001, line: 362, type: !1034)
!1050 = !DILocalVariable(name: "base", arg: 3, scope: !1044, file: !1001, line: 362, type: !706)
!1051 = !DILocation(line: 0, scope: !1044)
!1052 = !DILocation(line: 365, column: 10, scope: !1044)
!1053 = !DILocation(line: 365, column: 3, scope: !1044)
!1054 = distinct !DISubprogram(name: "stat", scope: !1055, file: !1055, line: 453, type: !1056, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1095)
!1055 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!706, !711, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1060, line: 46, size: 1152, elements: !1061)
!1060 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1061 = !{!1062, !1064, !1066, !1068, !1070, !1072, !1074, !1075, !1076, !1077, !1079, !1081, !1089, !1090, !1091}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1059, file: !1060, line: 48, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !800, line: 145, baseType: !826)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1059, file: !1060, line: 53, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !800, line: 148, baseType: !826)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1059, file: !1060, line: 61, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !800, line: 151, baseType: !826)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1059, file: !1060, line: 62, baseType: !1069, size: 32, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !800, line: 150, baseType: !7)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1059, file: !1060, line: 64, baseType: !1071, size: 32, offset: 224)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !800, line: 146, baseType: !7)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1059, file: !1060, line: 65, baseType: !1073, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !800, line: 147, baseType: !7)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1059, file: !1060, line: 67, baseType: !706, size: 32, offset: 288)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1059, file: !1060, line: 69, baseType: !1063, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1059, file: !1060, line: 74, baseType: !799, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1059, file: !1060, line: 78, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !800, line: 174, baseType: !801)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1059, file: !1060, line: 80, baseType: !1080, size: 64, offset: 512)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !800, line: 179, baseType: !801)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1059, file: !1060, line: 91, baseType: !1082, size: 128, offset: 576)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1083, line: 10, size: 128, elements: !1084)
!1083 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1084 = !{!1085, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1082, file: !1083, line: 12, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !800, line: 160, baseType: !801)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1082, file: !1083, line: 16, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !800, line: 196, baseType: !801)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1059, file: !1060, line: 92, baseType: !1082, size: 128, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1059, file: !1060, line: 93, baseType: !1082, size: 128, offset: 832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1059, file: !1060, line: 106, baseType: !1092, size: 192, offset: 960)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 192, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 3)
!1095 = !{!1096, !1097}
!1096 = !DILocalVariable(name: "__path", arg: 1, scope: !1054, file: !1055, line: 453, type: !711)
!1097 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1054, file: !1055, line: 453, type: !1058)
!1098 = !DILocation(line: 0, scope: !1054)
!1099 = !DILocation(line: 455, column: 10, scope: !1054)
!1100 = !DILocation(line: 455, column: 3, scope: !1054)
!1101 = distinct !DISubprogram(name: "lstat", scope: !1055, file: !1055, line: 460, type: !1056, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1102 = !{!1103, !1104}
!1103 = !DILocalVariable(name: "__path", arg: 1, scope: !1101, file: !1055, line: 460, type: !711)
!1104 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1101, file: !1055, line: 460, type: !1058)
!1105 = !DILocation(line: 0, scope: !1101)
!1106 = !DILocation(line: 462, column: 10, scope: !1101)
!1107 = !DILocation(line: 462, column: 3, scope: !1101)
!1108 = distinct !DISubprogram(name: "fstat", scope: !1055, file: !1055, line: 467, type: !1109, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!706, !706, !1058}
!1111 = !{!1112, !1113}
!1112 = !DILocalVariable(name: "__fd", arg: 1, scope: !1108, file: !1055, line: 467, type: !706)
!1113 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1108, file: !1055, line: 467, type: !1058)
!1114 = !DILocation(line: 0, scope: !1108)
!1115 = !DILocation(line: 469, column: 10, scope: !1108)
!1116 = !DILocation(line: 469, column: 3, scope: !1108)
!1117 = distinct !DISubprogram(name: "fstatat", scope: !1055, file: !1055, line: 474, type: !1118, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!706, !706, !711, !1058, !706}
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DILocalVariable(name: "__fd", arg: 1, scope: !1117, file: !1055, line: 474, type: !706)
!1122 = !DILocalVariable(name: "__filename", arg: 2, scope: !1117, file: !1055, line: 474, type: !711)
!1123 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1117, file: !1055, line: 474, type: !1058)
!1124 = !DILocalVariable(name: "__flag", arg: 4, scope: !1117, file: !1055, line: 474, type: !706)
!1125 = !DILocation(line: 0, scope: !1117)
!1126 = !DILocation(line: 477, column: 10, scope: !1117)
!1127 = !DILocation(line: 477, column: 3, scope: !1117)
!1128 = distinct !DISubprogram(name: "mknod", scope: !1055, file: !1055, line: 483, type: !1129, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!706, !711, !1069, !1063}
!1131 = !{!1132, !1133, !1134}
!1132 = !DILocalVariable(name: "__path", arg: 1, scope: !1128, file: !1055, line: 483, type: !711)
!1133 = !DILocalVariable(name: "__mode", arg: 2, scope: !1128, file: !1055, line: 483, type: !1069)
!1134 = !DILocalVariable(name: "__dev", arg: 3, scope: !1128, file: !1055, line: 483, type: !1063)
!1135 = !DILocation(line: 0, scope: !1128)
!1136 = !DILocation(line: 485, column: 10, scope: !1128)
!1137 = !DILocation(line: 485, column: 3, scope: !1128)
!1138 = distinct !DISubprogram(name: "mknodat", scope: !1055, file: !1055, line: 491, type: !1139, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!706, !706, !711, !1069, !1063}
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DILocalVariable(name: "__fd", arg: 1, scope: !1138, file: !1055, line: 491, type: !706)
!1143 = !DILocalVariable(name: "__path", arg: 2, scope: !1138, file: !1055, line: 491, type: !711)
!1144 = !DILocalVariable(name: "__mode", arg: 3, scope: !1138, file: !1055, line: 491, type: !1069)
!1145 = !DILocalVariable(name: "__dev", arg: 4, scope: !1138, file: !1055, line: 491, type: !1063)
!1146 = !DILocation(line: 0, scope: !1138)
!1147 = !DILocation(line: 494, column: 10, scope: !1138)
!1148 = !DILocation(line: 494, column: 3, scope: !1138)
!1149 = distinct !DISubprogram(name: "stat64", scope: !1055, file: !1055, line: 502, type: !1150, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1172)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!706, !711, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1060, line: 119, size: 1152, elements: !1154)
!1154 = !{!1155, !1156, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1168, !1169, !1170, !1171}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1153, file: !1060, line: 121, baseType: !1063, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1153, file: !1060, line: 123, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !800, line: 149, baseType: !826)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1153, file: !1060, line: 124, baseType: !1067, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1153, file: !1060, line: 125, baseType: !1069, size: 32, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1153, file: !1060, line: 132, baseType: !1071, size: 32, offset: 224)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1153, file: !1060, line: 133, baseType: !1073, size: 32, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1153, file: !1060, line: 135, baseType: !706, size: 32, offset: 288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1153, file: !1060, line: 136, baseType: !1063, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1153, file: !1060, line: 137, baseType: !799, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1153, file: !1060, line: 143, baseType: !1078, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1153, file: !1060, line: 144, baseType: !1167, size: 64, offset: 512)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !800, line: 180, baseType: !801)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1153, file: !1060, line: 152, baseType: !1082, size: 128, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1153, file: !1060, line: 153, baseType: !1082, size: 128, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1153, file: !1060, line: 154, baseType: !1082, size: 128, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1153, file: !1060, line: 164, baseType: !1092, size: 192, offset: 960)
!1172 = !{!1173, !1174}
!1173 = !DILocalVariable(name: "__path", arg: 1, scope: !1149, file: !1055, line: 502, type: !711)
!1174 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1149, file: !1055, line: 502, type: !1152)
!1175 = !DILocation(line: 0, scope: !1149)
!1176 = !DILocation(line: 504, column: 10, scope: !1149)
!1177 = !DILocation(line: 504, column: 3, scope: !1149)
!1178 = distinct !DISubprogram(name: "lstat64", scope: !1055, file: !1055, line: 509, type: !1150, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "__path", arg: 1, scope: !1178, file: !1055, line: 509, type: !711)
!1181 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1178, file: !1055, line: 509, type: !1152)
!1182 = !DILocation(line: 0, scope: !1178)
!1183 = !DILocation(line: 511, column: 10, scope: !1178)
!1184 = !DILocation(line: 511, column: 3, scope: !1178)
!1185 = distinct !DISubprogram(name: "fstat64", scope: !1055, file: !1055, line: 516, type: !1186, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!706, !706, !1152}
!1188 = !{!1189, !1190}
!1189 = !DILocalVariable(name: "__fd", arg: 1, scope: !1185, file: !1055, line: 516, type: !706)
!1190 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1185, file: !1055, line: 516, type: !1152)
!1191 = !DILocation(line: 0, scope: !1185)
!1192 = !DILocation(line: 518, column: 10, scope: !1185)
!1193 = !DILocation(line: 518, column: 3, scope: !1185)
!1194 = distinct !DISubprogram(name: "fstatat64", scope: !1055, file: !1055, line: 523, type: !1195, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!706, !706, !711, !1152, !706}
!1197 = !{!1198, !1199, !1200, !1201}
!1198 = !DILocalVariable(name: "__fd", arg: 1, scope: !1194, file: !1055, line: 523, type: !706)
!1199 = !DILocalVariable(name: "__filename", arg: 2, scope: !1194, file: !1055, line: 523, type: !711)
!1200 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1194, file: !1055, line: 523, type: !1152)
!1201 = !DILocalVariable(name: "__flag", arg: 4, scope: !1194, file: !1055, line: 523, type: !706)
!1202 = !DILocation(line: 0, scope: !1194)
!1203 = !DILocation(line: 526, column: 10, scope: !1194)
!1204 = !DILocation(line: 526, column: 3, scope: !1194)
!1205 = distinct !DISubprogram(name: "rest_of_handle_stack_ptr_mod", scope: !3, file: !3, line: 88, type: !727, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !766)
!1206 = !DILocation(line: 90, column: 3, scope: !1205)
!1207 = !DILocation(line: 91, column: 3, scope: !1205)
!1208 = distinct !DISubprogram(name: "notice_stack_pointer_modification", scope: !3, file: !3, line: 53, type: !1209, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null}
!1211 = !{!1212, !2268}
!1212 = !DILocalVariable(name: "bb", scope: !1208, file: !3, line: 55, type: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1214, line: 111, baseType: !1215)
!1214 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1217)
!1217 = !{!1218, !2233, !2234, !2235, !2238, !2242, !2243, !2244, !2262, !2263, !2264, !2265, !2266, !2267}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1216, file: !318, line: 219, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1221, file: !318, line: 151, baseType: !1224, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1225, file: !318, line: 150, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1225, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1225, file: !318, line: 150, baseType: !1230, size: 64, offset: 64)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 64, elements: !808)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1214, line: 108, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1234)
!1234 = !{!1235, !1236, !1237, !2225, !2226, !2227, !2228, !2229, !2230, !2231}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1233, file: !318, line: 124, baseType: !1215, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1233, file: !318, line: 125, baseType: !1215, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1233, file: !318, line: 131, baseType: !1238, size: 64, offset: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1239)
!1239 = !{!1240, !1244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1238, file: !318, line: 129, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1214, line: 66, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1214, line: 65, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1238, file: !318, line: 130, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1214, line: 50, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !561, line: 240, size: 384, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1247, file: !561, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1247, file: !561, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1247, file: !561, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1247, file: !561, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1247, file: !561, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1247, file: !561, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1247, file: !561, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1247, file: !561, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1247, file: !561, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1247, file: !561, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1247, file: !561, line: 321, baseType: !1260, size: 320, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !561, line: 315, size: 320, elements: !1261)
!1261 = !{!1262, !2160, !2162, !2223, !2224}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1260, file: !561, line: 316, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1264, size: 64, elements: !808)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !561, line: 183, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !561, line: 166, size: 64, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1279, !1280, !1292, !1295, !1355, !2138, !2139, !2150, !2157}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1265, file: !561, line: 168, baseType: !706, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1265, file: !561, line: 169, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1265, file: !561, line: 170, baseType: !711, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1265, file: !561, line: 171, baseType: !1245, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1265, file: !561, line: 172, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1214, line: 53, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !561, line: 359, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1274, file: !561, line: 360, baseType: !706, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1274, file: !561, line: 361, baseType: !1278, size: 64, offset: 64)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 64, elements: !808)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1265, file: !561, line: 173, baseType: !189, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1265, file: !561, line: 174, baseType: !1281, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !561, line: 133, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 115, size: 32, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1282, file: !561, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1282, file: !561, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1282, file: !561, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1282, file: !561, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1282, file: !561, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1282, file: !561, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1282, file: !561, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1282, file: !561, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1265, file: !561, line: 175, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !561, line: 175, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1265, file: !561, line: 176, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1298, line: 75, size: 256, elements: !1299)
!1298 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1299 = !{!1300, !1314, !1315, !1316}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1297, file: !1298, line: 76, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1298, line: 68, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1298, line: 63, size: 320, elements: !1304)
!1304 = !{!1305, !1307, !1308, !1309}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1303, file: !1298, line: 64, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1303, file: !1298, line: 65, baseType: !1306, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1303, file: !1298, line: 66, baseType: !7, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1303, file: !1298, line: 67, baseType: !1310, size: 128, offset: 192)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 128, elements: !1312)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1298, line: 29, baseType: !826)
!1312 = !{!1313}
!1313 = !DISubrange(count: 2)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1297, file: !1298, line: 77, baseType: !1301, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1297, file: !1298, line: 78, baseType: !7, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1297, file: !1298, line: 79, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1298, line: 49, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1298, line: 45, size: 832, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1319, file: !1298, line: 46, baseType: !1306, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1319, file: !1298, line: 47, baseType: !1296, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1319, file: !1298, line: 48, baseType: !1324, size: 704, offset: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1325, line: 164, size: 704, elements: !1326)
!1325 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1326 = !{!1327, !1328, !1338, !1339, !1340, !1341, !1342, !1343, !1347, !1351, !1352, !1353, !1354}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1324, file: !1325, line: 166, baseType: !801, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1324, file: !1325, line: 167, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1325, line: 157, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1330, file: !1325, line: 159, baseType: !708, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1330, file: !1325, line: 160, baseType: !1329, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1330, file: !1325, line: 161, baseType: !1335, size: 32, offset: 128)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 32, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 4)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1324, file: !1325, line: 168, baseType: !708, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1324, file: !1325, line: 169, baseType: !708, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1324, file: !1325, line: 170, baseType: !708, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1324, file: !1325, line: 171, baseType: !801, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1324, file: !1325, line: 172, baseType: !706, size: 32, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1324, file: !1325, line: 176, baseType: !1344, size: 64, offset: 448)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1329, !710, !801}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1324, file: !1325, line: 177, baseType: !1348, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !710, !1329}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1324, file: !1325, line: 178, baseType: !710, size: 64, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1324, file: !1325, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1324, file: !1325, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1324, file: !1325, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1265, file: !561, line: 177, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1214, line: 56, baseType: !1357)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !1359)
!1359 = !{!1360, !1393, !1399, !1410, !1427, !1438, !1443, !1449, !1455, !1468, !1480, !1518, !1523, !1551, !1559, !1560, !1565, !1574, !1580, !1585, !1589, !1593, !1763, !1812, !1818, !1825, !1832, !1858, !1883, !1900, !1912, !1934, !1949, !2120}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1358, file: !334, line: 3372, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1361, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1361, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1361, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1361, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1361, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1361, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1361, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1361, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1361, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1361, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1361, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1361, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1361, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1361, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1361, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1361, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1361, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1361, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1361, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1361, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1361, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1361, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1361, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1361, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1361, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1361, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1361, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1361, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1361, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1361, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1358, file: !334, line: 3373, baseType: !1394, size: 192)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1394, file: !334, line: 403, baseType: !1361, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1394, file: !334, line: 404, baseType: !1356, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1394, file: !334, line: 405, baseType: !1356, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1358, file: !334, line: 3374, baseType: !1400, size: 320)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1400, file: !334, line: 1385, baseType: !1394, size: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1400, file: !334, line: 1386, baseType: !1404, size: 128, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1405, line: 58, baseType: !1406)
!1405 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 54, size: 128, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1406, file: !1405, line: 56, baseType: !826, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1406, file: !1405, line: 57, baseType: !801, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1358, file: !334, line: 3375, baseType: !1411, size: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !334, line: 1398, baseType: !1394, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1411, file: !334, line: 1399, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1417, line: 52, size: 256, elements: !1418)
!1417 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1416, file: !1417, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1416, file: !1417, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1416, file: !1417, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1416, file: !1417, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1416, file: !1417, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1416, file: !1417, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1416, file: !1417, line: 62, baseType: !1426, size: 192, offset: 64)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 192, elements: !1093)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1358, file: !334, line: 3376, baseType: !1428, size: 256)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !1429)
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1428, file: !334, line: 1409, baseType: !1394, size: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1428, file: !334, line: 1410, baseType: !1432, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1434, line: 27, size: 192, elements: !1435)
!1434 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1433, file: !1434, line: 29, baseType: !1404, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1433, file: !1434, line: 30, baseType: !189, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1358, file: !334, line: 3377, baseType: !1439, size: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1439, file: !334, line: 1438, baseType: !1394, size: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1439, file: !334, line: 1439, baseType: !1356, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1358, file: !334, line: 3378, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !1445)
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1444, file: !334, line: 1419, baseType: !1394, size: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1444, file: !334, line: 1420, baseType: !706, size: 32, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1444, file: !334, line: 1421, baseType: !807, size: 8, offset: 224)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1358, file: !334, line: 3379, baseType: !1450, size: 320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1450, file: !334, line: 1429, baseType: !1394, size: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1450, file: !334, line: 1430, baseType: !1356, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1450, file: !334, line: 1431, baseType: !1356, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1358, file: !334, line: 3380, baseType: !1456, size: 320)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1456, file: !334, line: 1461, baseType: !1394, size: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1456, file: !334, line: 1462, baseType: !1460, size: 128, offset: 192)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1461, line: 31, size: 128, elements: !1462)
!1461 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1462 = !{!1463, !1466, !1467}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1460, file: !1461, line: 32, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1460, file: !1461, line: 33, baseType: !7, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1460, file: !1461, line: 34, baseType: !7, size: 32, offset: 96)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1358, file: !334, line: 3381, baseType: !1469, size: 384)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !1470)
!1470 = !{!1471, !1472, !1477, !1478, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1469, file: !334, line: 2508, baseType: !1394, size: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1469, file: !334, line: 2509, baseType: !1473, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1474, line: 58, baseType: !1475)
!1474 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1476, line: 44, baseType: !7)
!1476 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1469, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1469, file: !334, line: 2511, baseType: !1356, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1469, file: !334, line: 2512, baseType: !1356, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1358, file: !334, line: 3382, baseType: !1481, size: 896)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1481, file: !334, line: 2653, baseType: !1469, size: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1481, file: !334, line: 2654, baseType: !1356, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1481, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1481, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1481, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1481, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1481, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1481, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1481, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1481, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1481, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1481, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1481, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1481, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1481, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1481, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1481, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1481, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1481, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1481, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1481, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1481, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1481, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1481, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1481, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1481, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1481, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1481, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1481, file: !334, line: 2705, baseType: !1356, size: 64, offset: 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1481, file: !334, line: 2706, baseType: !1356, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1481, file: !334, line: 2707, baseType: !1356, size: 64, offset: 704)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1481, file: !334, line: 2708, baseType: !1356, size: 64, offset: 768)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1481, file: !334, line: 2711, baseType: !1516, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1358, file: !334, line: 3383, baseType: !1519, size: 960)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1519, file: !334, line: 2757, baseType: !1481, size: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1519, file: !334, line: 2758, baseType: !1245, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1358, file: !334, line: 3384, baseType: !1524, size: 1472)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1525)
!1525 = !{!1526, !1547, !1548, !1549, !1550}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1524, file: !334, line: 3115, baseType: !1527, size: 1216)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1527, file: !334, line: 2985, baseType: !1519, size: 960)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1527, file: !334, line: 2986, baseType: !1356, size: 64, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1527, file: !334, line: 2987, baseType: !1356, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1527, file: !334, line: 2988, baseType: !1356, size: 64, offset: 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1527, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1527, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1527, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1527, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1527, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1527, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1527, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1527, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1527, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1527, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1527, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1527, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1527, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1527, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1524, file: !334, line: 3117, baseType: !1356, size: 64, offset: 1216)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1524, file: !334, line: 3119, baseType: !1356, size: 64, offset: 1280)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1524, file: !334, line: 3121, baseType: !1356, size: 64, offset: 1344)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1524, file: !334, line: 3123, baseType: !1356, size: 64, offset: 1408)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1358, file: !334, line: 3385, baseType: !1552, size: 1088)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1552, file: !334, line: 2875, baseType: !1519, size: 960)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1552, file: !334, line: 2876, baseType: !1245, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1552, file: !334, line: 2877, baseType: !1557, size: 64, offset: 1024)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !334, line: 2856, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1358, file: !334, line: 3386, baseType: !1527, size: 1216)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1358, file: !334, line: 3387, baseType: !1561, size: 1280)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1561, file: !334, line: 3094, baseType: !1527, size: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1561, file: !334, line: 3095, baseType: !1557, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1358, file: !334, line: 3388, baseType: !1566, size: 1216)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1566, file: !334, line: 2825, baseType: !1481, size: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1566, file: !334, line: 2827, baseType: !1356, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1566, file: !334, line: 2828, baseType: !1356, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1566, file: !334, line: 2829, baseType: !1356, size: 64, offset: 1024)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1566, file: !334, line: 2830, baseType: !1356, size: 64, offset: 1088)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1566, file: !334, line: 2831, baseType: !1356, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1358, file: !334, line: 3389, baseType: !1575, size: 1024)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !334, line: 2851, baseType: !1519, size: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1575, file: !334, line: 2852, baseType: !706, size: 32, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1575, file: !334, line: 2853, baseType: !706, size: 32, offset: 992)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1358, file: !334, line: 3390, baseType: !1581, size: 1024)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1581, file: !334, line: 2858, baseType: !1519, size: 960)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1581, file: !334, line: 2859, baseType: !1557, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1358, file: !334, line: 3391, baseType: !1586, size: 960)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1587)
!1587 = !{!1588}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1586, file: !334, line: 2863, baseType: !1519, size: 960)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1358, file: !334, line: 3392, baseType: !1590, size: 1472)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1590, file: !334, line: 3305, baseType: !1524, size: 1472)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1358, file: !334, line: 3393, baseType: !1594, size: 1792)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1595)
!1595 = !{!1596, !1597, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1594, file: !334, line: 3249, baseType: !1524, size: 1472)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1594, file: !334, line: 3251, baseType: !1598, size: 64, offset: 1472)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1600, line: 463, size: 1152, elements: !1601)
!1600 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1601 = !{!1602, !1605, !1635, !1636, !1639, !1642, !1687, !1688, !1689, !1690, !1691, !1715, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1599, file: !1600, line: 464, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1600, line: 464, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1599, file: !1600, line: 467, baseType: !1606, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1624, !1625, !1626, !1627, !1628, !1629, !1631, !1633, !1634}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1607, file: !318, line: 377, baseType: !1213, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1607, file: !318, line: 378, baseType: !1213, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1607, file: !318, line: 381, baseType: !1612, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1614, file: !318, line: 282, baseType: !1617, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1619)
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1618, file: !318, line: 281, baseType: !7, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1618, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1618, file: !318, line: 281, baseType: !1623, size: 64, offset: 64)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1213, size: 64, elements: !808)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1607, file: !318, line: 384, baseType: !706, size: 32, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1607, file: !318, line: 387, baseType: !706, size: 32, offset: 224)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1607, file: !318, line: 390, baseType: !706, size: 32, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1607, file: !318, line: 394, baseType: !1612, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1607, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1607, file: !318, line: 399, baseType: !1630, size: 64, offset: 416)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1312)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1607, file: !318, line: 402, baseType: !1632, size: 64, offset: 480)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1312)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1607, file: !318, line: 406, baseType: !706, size: 32, offset: 544)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1607, file: !318, line: 409, baseType: !706, size: 32, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1599, file: !1600, line: 470, baseType: !1242, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1599, file: !1600, line: 473, baseType: !1637, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1600, line: 166, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1599, file: !1600, line: 476, baseType: !1640, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1600, line: 476, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1599, file: !1600, line: 479, baseType: !1643, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1644, line: 144, baseType: !1645)
!1644 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1644, line: 100, size: 896, elements: !1647)
!1647 = !{!1648, !1654, !1656, !1661, !1663, !1664, !1665, !1666, !1667, !1668, !1673, !1675, !1676, !1681, !1686}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1646, file: !1644, line: 102, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1644, line: 52, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1653, !953}
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1644, line: 47, baseType: !7)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1646, file: !1644, line: 105, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1644, line: 59, baseType: !956)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1646, file: !1644, line: 108, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1644, line: 63, baseType: !1658)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !710}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1646, file: !1644, line: 111, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1646, file: !1644, line: 114, baseType: !824, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1646, file: !1644, line: 117, baseType: !824, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1646, file: !1644, line: 120, baseType: !824, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1646, file: !1644, line: 124, baseType: !7, size: 32, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1646, file: !1644, line: 128, baseType: !7, size: 32, offset: 480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1646, file: !1644, line: 131, baseType: !1669, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1644, line: 75, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!710, !824, !824}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1646, file: !1644, line: 132, baseType: !1674, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1644, line: 78, baseType: !1658)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1646, file: !1644, line: 135, baseType: !710, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1646, file: !1644, line: 136, baseType: !1677, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1644, line: 82, baseType: !1678)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!710, !710, !824, !824}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1646, file: !1644, line: 137, baseType: !1682, size: 64, offset: 768)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1644, line: 83, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !710, !710}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1646, file: !1644, line: 141, baseType: !7, size: 32, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1599, file: !1600, line: 484, baseType: !1356, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1599, file: !1600, line: 488, baseType: !1356, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1599, file: !1600, line: 493, baseType: !1356, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1599, file: !1600, line: 496, baseType: !1356, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1599, file: !1600, line: 501, baseType: !1692, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1694)
!1694 = !{!1695, !1698, !1699, !1700, !1701, !1703, !1704, !1709, !1710, !1711, !1712, !1713, !1714}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1693, file: !329, line: 2356, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1693, file: !329, line: 2357, baseType: !711, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1693, file: !329, line: 2358, baseType: !706, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1693, file: !329, line: 2359, baseType: !706, size: 32, offset: 160)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1693, file: !329, line: 2360, baseType: !1702, size: 128, offset: 192)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 128, elements: !1336)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1693, file: !329, line: 2364, baseType: !706, size: 32, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1693, file: !329, line: 2367, baseType: !1705, size: 128, offset: 384)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1705, file: !329, line: 2351, baseType: !1245, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1705, file: !329, line: 2352, baseType: !801, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1693, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1693, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1693, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1693, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1693, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1693, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1599, file: !1600, line: 504, baseType: !1716, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1600, line: 504, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1599, file: !1600, line: 507, baseType: !1643, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1599, file: !1600, line: 510, baseType: !706, size: 32, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1599, file: !1600, line: 513, baseType: !706, size: 32, offset: 864)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1599, file: !1600, line: 516, baseType: !1473, size: 32, offset: 896)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1599, file: !1600, line: 519, baseType: !1473, size: 32, offset: 928)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1599, file: !1600, line: 522, baseType: !7, size: 32, offset: 960)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1599, file: !1600, line: 523, baseType: !7, size: 32, offset: 992)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1599, file: !1600, line: 528, baseType: !711, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1599, file: !1600, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1599, file: !1600, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1599, file: !1600, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1599, file: !1600, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1599, file: !1600, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1599, file: !1600, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1599, file: !1600, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1599, file: !1600, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1599, file: !1600, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1599, file: !1600, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1599, file: !1600, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1599, file: !1600, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1599, file: !1600, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1599, file: !1600, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1599, file: !1600, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1599, file: !1600, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1594, file: !334, line: 3254, baseType: !1356, size: 64, offset: 1536)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1594, file: !334, line: 3257, baseType: !1356, size: 64, offset: 1600)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1594, file: !334, line: 3258, baseType: !1356, size: 64, offset: 1664)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1594, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1594, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1594, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1594, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1594, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1594, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1594, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1594, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1594, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1594, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1594, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1594, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1594, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1594, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1594, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1594, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1594, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1594, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1358, file: !334, line: 3394, baseType: !1764, size: 1344)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1791, !1792, !1793, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1764, file: !334, line: 2280, baseType: !1394, size: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1764, file: !334, line: 2281, baseType: !1356, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1764, file: !334, line: 2282, baseType: !1356, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1764, file: !334, line: 2283, baseType: !1356, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1764, file: !334, line: 2284, baseType: !1356, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1764, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1764, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1764, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1764, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1764, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1764, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1764, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1764, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1764, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1764, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1764, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1764, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1764, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1764, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1764, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1764, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1764, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1764, file: !334, line: 2306, baseType: !1789, size: 32, offset: 544)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1790, line: 31, baseType: !706)
!1790 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1764, file: !334, line: 2307, baseType: !1356, size: 64, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1764, file: !334, line: 2308, baseType: !1356, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1764, file: !334, line: 2314, baseType: !1794, size: 64, offset: 704)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1794, file: !334, line: 2310, baseType: !706, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1794, file: !334, line: 2311, baseType: !711, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1794, file: !334, line: 2312, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1764, file: !334, line: 2315, baseType: !1356, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1764, file: !334, line: 2316, baseType: !1356, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1764, file: !334, line: 2317, baseType: !1356, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1764, file: !334, line: 2318, baseType: !1356, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1764, file: !334, line: 2319, baseType: !1356, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1764, file: !334, line: 2320, baseType: !1356, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1764, file: !334, line: 2321, baseType: !1356, size: 64, offset: 1152)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1764, file: !334, line: 2322, baseType: !1356, size: 64, offset: 1216)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1764, file: !334, line: 2324, baseType: !1810, size: 64, offset: 1280)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1358, file: !334, line: 3395, baseType: !1813, size: 320)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1813, file: !334, line: 1470, baseType: !1394, size: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1813, file: !334, line: 1471, baseType: !1356, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1813, file: !334, line: 1472, baseType: !1356, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1358, file: !334, line: 3396, baseType: !1819, size: 320)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1820)
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1819, file: !334, line: 1483, baseType: !1394, size: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1819, file: !334, line: 1484, baseType: !706, size: 32, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1819, file: !334, line: 1485, baseType: !1824, size: 64, offset: 256)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 64, elements: !808)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1358, file: !334, line: 3397, baseType: !1826, size: 384)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1826, file: !334, line: 1830, baseType: !1394, size: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1826, file: !334, line: 1831, baseType: !1473, size: 32, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1826, file: !334, line: 1832, baseType: !1356, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1826, file: !334, line: 1835, baseType: !1824, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1358, file: !334, line: 3398, baseType: !1833, size: 704)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1841, !1842, !1845}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1833, file: !334, line: 1899, baseType: !1394, size: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1833, file: !334, line: 1902, baseType: !1356, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1833, file: !334, line: 1905, baseType: !1838, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1214, line: 58, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1214, line: 57, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1833, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1833, file: !334, line: 1911, baseType: !1843, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !334, line: 1876, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1833, file: !334, line: 1914, baseType: !1846, size: 256, offset: 448)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1847)
!1847 = !{!1848, !1850, !1851, !1856}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1846, file: !334, line: 1884, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1846, file: !334, line: 1885, baseType: !1849, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1846, file: !334, line: 1891, baseType: !1852, size: 64, offset: 128)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !334, line: 1891, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1852, file: !334, line: 1891, baseType: !1838, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1852, file: !334, line: 1891, baseType: !1356, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1846, file: !334, line: 1892, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1358, file: !334, line: 3399, baseType: !1859, size: 704)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1878, !1879, !1880, !1881, !1882}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1859, file: !334, line: 2009, baseType: !1394, size: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1859, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1859, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1859, file: !334, line: 2014, baseType: !1473, size: 32, offset: 224)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1859, file: !334, line: 2016, baseType: !1356, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1859, file: !334, line: 2017, baseType: !1867, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1869, file: !334, line: 183, baseType: !1872, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1874)
!1874 = !{!1875, !1876, !1877}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1873, file: !334, line: 182, baseType: !7, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1873, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1873, file: !334, line: 182, baseType: !1824, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1859, file: !334, line: 2019, baseType: !1356, size: 64, offset: 384)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1859, file: !334, line: 2020, baseType: !1356, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1859, file: !334, line: 2021, baseType: !1356, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1859, file: !334, line: 2022, baseType: !1356, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1859, file: !334, line: 2023, baseType: !1356, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1358, file: !334, line: 3400, baseType: !1884, size: 832)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1884, file: !334, line: 2431, baseType: !1394, size: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1884, file: !334, line: 2433, baseType: !1356, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1884, file: !334, line: 2434, baseType: !1356, size: 64, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1884, file: !334, line: 2435, baseType: !1356, size: 64, offset: 320)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1884, file: !334, line: 2436, baseType: !1356, size: 64, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1884, file: !334, line: 2437, baseType: !1867, size: 64, offset: 448)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1884, file: !334, line: 2438, baseType: !1356, size: 64, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1884, file: !334, line: 2440, baseType: !1356, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1884, file: !334, line: 2441, baseType: !1356, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1884, file: !334, line: 2443, baseType: !1896, size: 128, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1897, file: !334, line: 182, baseType: !1872, size: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1358, file: !334, line: 3401, baseType: !1901, size: 320)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1902)
!1902 = !{!1903, !1904, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1901, file: !334, line: 3329, baseType: !1394, size: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1901, file: !334, line: 3330, baseType: !1905, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1906, file: !334, line: 3322, baseType: !1905, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1906, file: !334, line: 3323, baseType: !1905, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1906, file: !334, line: 3324, baseType: !1356, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1901, file: !334, line: 3331, baseType: !1905, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1358, file: !334, line: 3402, baseType: !1913, size: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1913, file: !334, line: 1541, baseType: !1394, size: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1913, file: !334, line: 1542, baseType: !1917, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1920)
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1919, file: !334, line: 1538, baseType: !1922, size: 192)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1924)
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1923, file: !334, line: 1537, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1923, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1923, file: !334, line: 1537, baseType: !1928, size: 128, offset: 64)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 128, elements: !808)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1930)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1931)
!1931 = !{!1932, !1933}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1930, file: !334, line: 1533, baseType: !1356, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1930, file: !334, line: 1534, baseType: !1356, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1358, file: !334, line: 3403, baseType: !1935, size: 512)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1936)
!1936 = !{!1937, !1938, !1939, !1940, !1946, !1947, !1948}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1935, file: !334, line: 1939, baseType: !1394, size: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1935, file: !334, line: 1940, baseType: !1473, size: 32, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1935, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1935, file: !334, line: 1946, baseType: !1941, size: 32, offset: 256)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1942)
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1941, file: !334, line: 1943, baseType: !352, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1941, file: !334, line: 1944, baseType: !359, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1941, file: !334, line: 1945, baseType: !366, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1935, file: !334, line: 1950, baseType: !1241, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1935, file: !334, line: 1951, baseType: !1241, size: 64, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1935, file: !334, line: 1953, baseType: !1824, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1358, file: !334, line: 3404, baseType: !1950, size: 1664)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1950, file: !334, line: 3338, baseType: !1394, size: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1950, file: !334, line: 3341, baseType: !1954, size: 1472, offset: 192)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1955, line: 410, size: 1472, elements: !1956)
!1955 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1954, file: !1955, line: 412, baseType: !706, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1954, file: !1955, line: 413, baseType: !706, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1954, file: !1955, line: 414, baseType: !706, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1954, file: !1955, line: 415, baseType: !706, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1954, file: !1955, line: 416, baseType: !706, size: 32, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1954, file: !1955, line: 417, baseType: !706, size: 32, offset: 160)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1954, file: !1955, line: 418, baseType: !705, size: 8, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1954, file: !1955, line: 419, baseType: !705, size: 8, offset: 200)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1954, file: !1955, line: 420, baseType: !805, size: 8, offset: 208)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1954, file: !1955, line: 421, baseType: !805, size: 8, offset: 216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1954, file: !1955, line: 422, baseType: !805, size: 8, offset: 224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1954, file: !1955, line: 423, baseType: !805, size: 8, offset: 232)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1954, file: !1955, line: 424, baseType: !805, size: 8, offset: 240)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1954, file: !1955, line: 425, baseType: !805, size: 8, offset: 248)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1954, file: !1955, line: 426, baseType: !805, size: 8, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1954, file: !1955, line: 427, baseType: !805, size: 8, offset: 264)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1954, file: !1955, line: 428, baseType: !805, size: 8, offset: 272)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1954, file: !1955, line: 429, baseType: !805, size: 8, offset: 280)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1954, file: !1955, line: 430, baseType: !805, size: 8, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1954, file: !1955, line: 431, baseType: !805, size: 8, offset: 296)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1954, file: !1955, line: 432, baseType: !805, size: 8, offset: 304)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1954, file: !1955, line: 433, baseType: !805, size: 8, offset: 312)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1954, file: !1955, line: 434, baseType: !805, size: 8, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1954, file: !1955, line: 435, baseType: !805, size: 8, offset: 328)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1954, file: !1955, line: 436, baseType: !805, size: 8, offset: 336)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1954, file: !1955, line: 437, baseType: !805, size: 8, offset: 344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1954, file: !1955, line: 438, baseType: !805, size: 8, offset: 352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1954, file: !1955, line: 439, baseType: !805, size: 8, offset: 360)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1954, file: !1955, line: 440, baseType: !805, size: 8, offset: 368)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1954, file: !1955, line: 441, baseType: !805, size: 8, offset: 376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1954, file: !1955, line: 442, baseType: !805, size: 8, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1954, file: !1955, line: 443, baseType: !805, size: 8, offset: 392)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1954, file: !1955, line: 444, baseType: !805, size: 8, offset: 400)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1954, file: !1955, line: 445, baseType: !805, size: 8, offset: 408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1954, file: !1955, line: 446, baseType: !805, size: 8, offset: 416)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1954, file: !1955, line: 447, baseType: !805, size: 8, offset: 424)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1954, file: !1955, line: 448, baseType: !805, size: 8, offset: 432)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1954, file: !1955, line: 449, baseType: !805, size: 8, offset: 440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1954, file: !1955, line: 450, baseType: !805, size: 8, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1954, file: !1955, line: 451, baseType: !805, size: 8, offset: 456)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1954, file: !1955, line: 452, baseType: !805, size: 8, offset: 464)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1954, file: !1955, line: 453, baseType: !805, size: 8, offset: 472)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1954, file: !1955, line: 454, baseType: !805, size: 8, offset: 480)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1954, file: !1955, line: 455, baseType: !805, size: 8, offset: 488)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1954, file: !1955, line: 456, baseType: !805, size: 8, offset: 496)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1954, file: !1955, line: 457, baseType: !805, size: 8, offset: 504)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1954, file: !1955, line: 458, baseType: !805, size: 8, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1954, file: !1955, line: 459, baseType: !805, size: 8, offset: 520)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1954, file: !1955, line: 460, baseType: !805, size: 8, offset: 528)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1954, file: !1955, line: 461, baseType: !805, size: 8, offset: 536)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1954, file: !1955, line: 462, baseType: !805, size: 8, offset: 544)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1954, file: !1955, line: 463, baseType: !805, size: 8, offset: 552)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1954, file: !1955, line: 464, baseType: !805, size: 8, offset: 560)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1954, file: !1955, line: 465, baseType: !805, size: 8, offset: 568)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1954, file: !1955, line: 466, baseType: !805, size: 8, offset: 576)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1954, file: !1955, line: 467, baseType: !805, size: 8, offset: 584)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1954, file: !1955, line: 468, baseType: !805, size: 8, offset: 592)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1954, file: !1955, line: 469, baseType: !805, size: 8, offset: 600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1954, file: !1955, line: 470, baseType: !805, size: 8, offset: 608)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1954, file: !1955, line: 471, baseType: !805, size: 8, offset: 616)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1954, file: !1955, line: 472, baseType: !805, size: 8, offset: 624)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1954, file: !1955, line: 473, baseType: !805, size: 8, offset: 632)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1954, file: !1955, line: 474, baseType: !805, size: 8, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1954, file: !1955, line: 475, baseType: !805, size: 8, offset: 648)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1954, file: !1955, line: 476, baseType: !805, size: 8, offset: 656)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1954, file: !1955, line: 477, baseType: !805, size: 8, offset: 664)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1954, file: !1955, line: 478, baseType: !805, size: 8, offset: 672)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1954, file: !1955, line: 479, baseType: !805, size: 8, offset: 680)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1954, file: !1955, line: 480, baseType: !805, size: 8, offset: 688)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1954, file: !1955, line: 481, baseType: !805, size: 8, offset: 696)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1954, file: !1955, line: 482, baseType: !805, size: 8, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1954, file: !1955, line: 483, baseType: !805, size: 8, offset: 712)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1954, file: !1955, line: 484, baseType: !805, size: 8, offset: 720)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1954, file: !1955, line: 485, baseType: !805, size: 8, offset: 728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1954, file: !1955, line: 486, baseType: !805, size: 8, offset: 736)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1954, file: !1955, line: 487, baseType: !805, size: 8, offset: 744)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1954, file: !1955, line: 488, baseType: !805, size: 8, offset: 752)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1954, file: !1955, line: 489, baseType: !805, size: 8, offset: 760)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1954, file: !1955, line: 490, baseType: !805, size: 8, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1954, file: !1955, line: 491, baseType: !805, size: 8, offset: 776)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1954, file: !1955, line: 492, baseType: !805, size: 8, offset: 784)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1954, file: !1955, line: 493, baseType: !805, size: 8, offset: 792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1954, file: !1955, line: 494, baseType: !805, size: 8, offset: 800)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1954, file: !1955, line: 495, baseType: !805, size: 8, offset: 808)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1954, file: !1955, line: 496, baseType: !805, size: 8, offset: 816)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1954, file: !1955, line: 497, baseType: !805, size: 8, offset: 824)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1954, file: !1955, line: 498, baseType: !805, size: 8, offset: 832)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1954, file: !1955, line: 499, baseType: !805, size: 8, offset: 840)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1954, file: !1955, line: 500, baseType: !805, size: 8, offset: 848)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1954, file: !1955, line: 501, baseType: !805, size: 8, offset: 856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1954, file: !1955, line: 502, baseType: !805, size: 8, offset: 864)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1954, file: !1955, line: 503, baseType: !805, size: 8, offset: 872)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1954, file: !1955, line: 504, baseType: !805, size: 8, offset: 880)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1954, file: !1955, line: 505, baseType: !805, size: 8, offset: 888)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1954, file: !1955, line: 506, baseType: !805, size: 8, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1954, file: !1955, line: 507, baseType: !805, size: 8, offset: 904)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1954, file: !1955, line: 508, baseType: !805, size: 8, offset: 912)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1954, file: !1955, line: 509, baseType: !805, size: 8, offset: 920)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1954, file: !1955, line: 510, baseType: !805, size: 8, offset: 928)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1954, file: !1955, line: 511, baseType: !805, size: 8, offset: 936)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1954, file: !1955, line: 512, baseType: !805, size: 8, offset: 944)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1954, file: !1955, line: 513, baseType: !805, size: 8, offset: 952)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1954, file: !1955, line: 514, baseType: !805, size: 8, offset: 960)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1954, file: !1955, line: 515, baseType: !805, size: 8, offset: 968)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1954, file: !1955, line: 516, baseType: !805, size: 8, offset: 976)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1954, file: !1955, line: 517, baseType: !805, size: 8, offset: 984)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1954, file: !1955, line: 518, baseType: !805, size: 8, offset: 992)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1954, file: !1955, line: 519, baseType: !805, size: 8, offset: 1000)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1954, file: !1955, line: 520, baseType: !805, size: 8, offset: 1008)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1954, file: !1955, line: 521, baseType: !805, size: 8, offset: 1016)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1954, file: !1955, line: 522, baseType: !805, size: 8, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1954, file: !1955, line: 523, baseType: !805, size: 8, offset: 1032)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1954, file: !1955, line: 524, baseType: !805, size: 8, offset: 1040)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1954, file: !1955, line: 525, baseType: !805, size: 8, offset: 1048)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1954, file: !1955, line: 526, baseType: !805, size: 8, offset: 1056)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1954, file: !1955, line: 527, baseType: !805, size: 8, offset: 1064)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1954, file: !1955, line: 528, baseType: !805, size: 8, offset: 1072)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1954, file: !1955, line: 529, baseType: !805, size: 8, offset: 1080)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1954, file: !1955, line: 530, baseType: !805, size: 8, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1954, file: !1955, line: 531, baseType: !805, size: 8, offset: 1096)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1954, file: !1955, line: 532, baseType: !805, size: 8, offset: 1104)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1954, file: !1955, line: 533, baseType: !805, size: 8, offset: 1112)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1954, file: !1955, line: 534, baseType: !805, size: 8, offset: 1120)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1954, file: !1955, line: 535, baseType: !805, size: 8, offset: 1128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1954, file: !1955, line: 536, baseType: !805, size: 8, offset: 1136)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1954, file: !1955, line: 537, baseType: !805, size: 8, offset: 1144)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1954, file: !1955, line: 538, baseType: !805, size: 8, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1954, file: !1955, line: 539, baseType: !805, size: 8, offset: 1160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1954, file: !1955, line: 540, baseType: !805, size: 8, offset: 1168)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1954, file: !1955, line: 541, baseType: !805, size: 8, offset: 1176)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1954, file: !1955, line: 542, baseType: !805, size: 8, offset: 1184)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1954, file: !1955, line: 543, baseType: !805, size: 8, offset: 1192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1954, file: !1955, line: 544, baseType: !805, size: 8, offset: 1200)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1954, file: !1955, line: 545, baseType: !805, size: 8, offset: 1208)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1954, file: !1955, line: 546, baseType: !805, size: 8, offset: 1216)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1954, file: !1955, line: 547, baseType: !805, size: 8, offset: 1224)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1954, file: !1955, line: 548, baseType: !805, size: 8, offset: 1232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1954, file: !1955, line: 549, baseType: !805, size: 8, offset: 1240)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1954, file: !1955, line: 550, baseType: !805, size: 8, offset: 1248)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1954, file: !1955, line: 551, baseType: !805, size: 8, offset: 1256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1954, file: !1955, line: 552, baseType: !805, size: 8, offset: 1264)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1954, file: !1955, line: 553, baseType: !805, size: 8, offset: 1272)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1954, file: !1955, line: 554, baseType: !805, size: 8, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1954, file: !1955, line: 555, baseType: !805, size: 8, offset: 1288)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1954, file: !1955, line: 556, baseType: !805, size: 8, offset: 1296)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1954, file: !1955, line: 557, baseType: !805, size: 8, offset: 1304)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1954, file: !1955, line: 558, baseType: !805, size: 8, offset: 1312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1954, file: !1955, line: 559, baseType: !805, size: 8, offset: 1320)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1954, file: !1955, line: 560, baseType: !805, size: 8, offset: 1328)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1954, file: !1955, line: 561, baseType: !805, size: 8, offset: 1336)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1954, file: !1955, line: 562, baseType: !805, size: 8, offset: 1344)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1954, file: !1955, line: 563, baseType: !805, size: 8, offset: 1352)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1954, file: !1955, line: 564, baseType: !805, size: 8, offset: 1360)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1954, file: !1955, line: 565, baseType: !805, size: 8, offset: 1368)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1954, file: !1955, line: 566, baseType: !805, size: 8, offset: 1376)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1954, file: !1955, line: 567, baseType: !805, size: 8, offset: 1384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1954, file: !1955, line: 568, baseType: !805, size: 8, offset: 1392)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1954, file: !1955, line: 569, baseType: !805, size: 8, offset: 1400)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1954, file: !1955, line: 570, baseType: !805, size: 8, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1954, file: !1955, line: 571, baseType: !805, size: 8, offset: 1416)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1954, file: !1955, line: 572, baseType: !805, size: 8, offset: 1424)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1954, file: !1955, line: 573, baseType: !805, size: 8, offset: 1432)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1954, file: !1955, line: 574, baseType: !805, size: 8, offset: 1440)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1358, file: !334, line: 3405, baseType: !2121, size: 384)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2121, file: !334, line: 3353, baseType: !1394, size: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2121, file: !334, line: 3356, baseType: !2125, size: 192, offset: 192)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1955, line: 578, size: 192, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2125, file: !1955, line: 580, baseType: !706, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2125, file: !1955, line: 581, baseType: !706, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2125, file: !1955, line: 582, baseType: !706, size: 32, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2125, file: !1955, line: 583, baseType: !706, size: 32, offset: 96)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2125, file: !1955, line: 584, baseType: !705, size: 8, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2125, file: !1955, line: 585, baseType: !705, size: 8, offset: 136)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2125, file: !1955, line: 586, baseType: !705, size: 8, offset: 144)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2125, file: !1955, line: 587, baseType: !705, size: 8, offset: 152)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2125, file: !1955, line: 588, baseType: !705, size: 8, offset: 160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2125, file: !1955, line: 589, baseType: !705, size: 8, offset: 168)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2125, file: !1955, line: 590, baseType: !705, size: 8, offset: 176)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1265, file: !561, line: 178, baseType: !1215, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1265, file: !561, line: 179, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !561, line: 150, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !561, line: 142, size: 320, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !2142, file: !561, line: 144, baseType: !1356, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2142, file: !561, line: 145, baseType: !1245, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2142, file: !561, line: 146, baseType: !1245, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2142, file: !561, line: 147, baseType: !1789, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2142, file: !561, line: 148, baseType: !7, size: 32, offset: 224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !2142, file: !561, line: 149, baseType: !705, size: 8, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1265, file: !561, line: 180, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !561, line: 162, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !561, line: 159, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2153, file: !561, line: 160, baseType: !1356, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2153, file: !561, line: 161, baseType: !801, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1265, file: !561, line: 181, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !561, line: 181, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1260, file: !561, line: 317, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 64, elements: !808)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1260, file: !561, line: 318, baseType: !2163, size: 320)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !561, line: 188, size: 320, elements: !2164)
!2164 = !{!2165, !2167, !2222}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !2163, file: !561, line: 190, baseType: !2166, size: 192)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1264, size: 192, elements: !1093)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2163, file: !561, line: 193, baseType: !2168, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !561, line: 206, size: 320, elements: !2170)
!2170 = !{!2171, !2207, !2208, !2209, !2221}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !2169, file: !561, line: 208, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1214, line: 62, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !2175, line: 538, size: 256, elements: !2176)
!2175 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2176 = !{!2177, !2181, !2187, !2198}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2174, file: !2175, line: 539, baseType: !2178, size: 32)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !2175, line: 482, size: 32, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2175, line: 484, baseType: !7, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !2174, file: !2175, line: 540, baseType: !2182, size: 192)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !2175, line: 488, size: 192, elements: !2183)
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2182, file: !2175, line: 489, baseType: !2178, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2182, file: !2175, line: 492, baseType: !711, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2182, file: !2175, line: 496, baseType: !1356, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !2174, file: !2175, line: 541, baseType: !2188, size: 256)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !2175, line: 504, size: 256, elements: !2189)
!2189 = !{!2190, !2191, !2196, !2197}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2188, file: !2175, line: 505, baseType: !2178, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2188, file: !2175, line: 509, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !2175, line: 501, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !953}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2188, file: !2175, line: 510, baseType: !953, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2188, file: !2175, line: 513, baseType: !2172, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !2174, file: !2175, line: 542, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !2175, line: 530, size: 128, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2199, file: !2175, line: 531, baseType: !2178, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2199, file: !2175, line: 534, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !2175, line: 525, baseType: !2204)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!705, !1356, !711, !826, !826}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2169, file: !561, line: 211, baseType: !7, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2169, file: !561, line: 214, baseType: !801, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2169, file: !561, line: 224, baseType: !2210, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !561, line: 202, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !561, line: 202, size: 128, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2212, file: !561, line: 202, baseType: !2215, size: 128)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !561, line: 200, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !561, line: 200, size: 128, elements: !2217)
!2217 = !{!2218, !2219, !2220}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2216, file: !561, line: 200, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2216, file: !561, line: 200, baseType: !7, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2216, file: !561, line: 200, baseType: !1278, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !2169, file: !561, line: 234, baseType: !2210, size: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2163, file: !561, line: 197, baseType: !801, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1260, file: !561, line: 319, baseType: !1416, size: 256)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1260, file: !561, line: 320, baseType: !1433, size: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1233, file: !318, line: 134, baseType: !710, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1233, file: !318, line: 137, baseType: !1356, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1233, file: !318, line: 138, baseType: !1473, size: 32, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1233, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !318, line: 144, baseType: !706, size: 32, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1233, file: !318, line: 145, baseType: !706, size: 32, offset: 416)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1233, file: !318, line: 146, baseType: !2232, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !801)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1216, file: !318, line: 220, baseType: !1219, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1216, file: !318, line: 223, baseType: !710, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1216, file: !318, line: 226, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1216, file: !318, line: 229, baseType: !2239, size: 128, offset: 256)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, size: 128, elements: !1312)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1216, file: !318, line: 232, baseType: !1215, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1216, file: !318, line: 233, baseType: !1215, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1216, file: !318, line: 238, baseType: !2245, size: 64, offset: 512)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !2246)
!2246 = !{!2247, !2253}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !2245, file: !318, line: 236, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !2250)
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2249, file: !318, line: 275, baseType: !1241, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !2249, file: !318, line: 278, baseType: !1241, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2245, file: !318, line: 237, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !2255, file: !318, line: 261, baseType: !1245, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !2255, file: !318, line: 262, baseType: !1245, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2255, file: !318, line: 266, baseType: !1245, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !2255, file: !318, line: 267, baseType: !1245, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2255, file: !318, line: 270, baseType: !706, size: 32, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !318, line: 241, baseType: !2232, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1216, file: !318, line: 244, baseType: !706, size: 32, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1216, file: !318, line: 247, baseType: !706, size: 32, offset: 672)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1216, file: !318, line: 250, baseType: !706, size: 32, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1216, file: !318, line: 253, baseType: !706, size: 32, offset: 736)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !318, line: 256, baseType: !706, size: 32, offset: 768)
!2268 = !DILocalVariable(name: "insn", scope: !1208, file: !3, line: 56, type: !1245)
!2269 = !DILocation(line: 60, column: 40, scope: !1208)
!2270 = !DILocation(line: 60, column: 46, scope: !1208)
!2271 = !DILocation(line: 60, column: 39, scope: !1208)
!2272 = !DILocation(line: 60, column: 37, scope: !1208)
!2273 = !DILocation(line: 61, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 61, column: 7)
!2275 = !DILocation(line: 61, column: 7, scope: !1208)
!2276 = !DILocation(line: 62, column: 5, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 62, column: 5)
!2278 = !DILocation(line: 62, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 62, column: 5)
!2280 = !DILocation(line: 0, scope: !2277)
!2281 = !DILocation(line: 0, scope: !1208)
!2282 = !DILocation(line: 63, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 63, column: 7)
!2284 = !DILocation(line: 0, scope: !2283)
!2285 = !DILocation(line: 63, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 63, column: 7)
!2287 = !DILocation(line: 65, column: 8, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 65, column: 8)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 64, column: 9)
!2290 = !DILocation(line: 65, column: 8, scope: !2289)
!2291 = !DILocation(line: 68, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 66, column: 6)
!2293 = !DILocation(line: 68, column: 8, scope: !2292)
!2294 = !DILocation(line: 71, column: 14, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 71, column: 12)
!2296 = !DILocation(line: 71, column: 12, scope: !2292)
!2297 = distinct !{!2297, !2282, !2298}
!2298 = !DILocation(line: 74, column: 2, scope: !2283)
!2299 = !DILocation(line: 0, scope: !2279)
!2300 = distinct !{!2300, !2276, !2301}
!2301 = !DILocation(line: 74, column: 2, scope: !2277)
!2302 = !DILocation(line: 79, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 79, column: 7)
!2304 = !DILocation(line: 79, column: 13, scope: !2303)
!2305 = !DILocation(line: 79, column: 10, scope: !2303)
!2306 = !DILocation(line: 80, column: 5, scope: !2303)
!2307 = !DILocation(line: 81, column: 1, scope: !1208)
!2308 = distinct !DISubprogram(name: "notice_stack_pointer_modification_1", scope: !3, file: !3, line: 39, type: !2309, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !1245, !2311, !710}
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !1214, line: 51, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!2314 = !{!2315, !2316, !2317}
!2315 = !DILocalVariable(name: "x", arg: 1, scope: !2308, file: !3, line: 39, type: !1245)
!2316 = !DILocalVariable(name: "pat", arg: 2, scope: !2308, file: !3, line: 39, type: !2311)
!2317 = !DILocalVariable(name: "data", arg: 3, scope: !2308, file: !3, line: 40, type: !710)
!2318 = !DILocation(line: 0, scope: !2308)
!2319 = !DILocation(line: 42, column: 12, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 42, column: 7)
!2321 = !DILocation(line: 42, column: 9, scope: !2320)
!2322 = !DILocation(line: 46, column: 7, scope: !2320)
!2323 = !DILocation(line: 46, column: 11, scope: !2320)
!2324 = !DILocation(line: 47, column: 4, scope: !2320)
!2325 = !DILocation(line: 47, column: 7, scope: !2320)
!2326 = !DILocation(line: 47, column: 46, scope: !2320)
!2327 = !DILocation(line: 48, column: 4, scope: !2320)
!2328 = !DILocation(line: 48, column: 7, scope: !2320)
!2329 = !DILocation(line: 48, column: 29, scope: !2320)
!2330 = !DILocation(line: 42, column: 7, scope: !2308)
!2331 = !DILocation(line: 49, column: 39, scope: !2320)
!2332 = !DILocation(line: 49, column: 5, scope: !2320)
!2333 = !DILocation(line: 50, column: 1, scope: !2308)
