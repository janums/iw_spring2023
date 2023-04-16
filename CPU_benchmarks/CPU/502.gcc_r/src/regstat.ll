; ModuleID = 'regstat.bc'
source_filename = "regstat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
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
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.df_scan_bb_info = type { %union.df_ref_d**, %union.df_ref_d** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@regstat_n_sets_and_refs = common dso_local local_unnamed_addr global %struct.regstat_n_sets_and_refs_t* null, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"regstat.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@df_bitmap_obstack = external dso_local global %struct.bitmap_obstack, align 8
@reg_info_p = common dso_local local_unnamed_addr global %struct.reg_info_t* null, align 8, !dbg !1826
@setjmp_crosses = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1824
@max_regno = external dso_local local_unnamed_addr global i32, align 4
@reg_info_p_size = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !1828
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1834 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1848, metadata !DIExpression()), !dbg !1849
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1850
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1851
  ret i32 %call, !dbg !1852
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1853 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1857
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1858
  ret i32 %call, !dbg !1859
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1915, metadata !DIExpression()), !dbg !1916
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1917
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1917
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1917
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1917
  %cmp = icmp uge i8* %0, %1, !dbg !1917
  %conv1 = zext i1 %cmp to i64, !dbg !1917
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1917
  %tobool = icmp eq i64 %expval, 0, !dbg !1917
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1917

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1917
  br label %cond.end, !dbg !1917

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1917
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1917
  %2 = load i8, i8* %0, align 1, !dbg !1917
  %conv3 = zext i8 %2 to i32, !dbg !1917
  br label %cond.end, !dbg !1917

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1917
  ret i32 %cond, !dbg !1918
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1921, metadata !DIExpression()), !dbg !1922
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1923
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1923
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1923
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1923
  %cmp = icmp uge i8* %0, %1, !dbg !1923
  %conv1 = zext i1 %cmp to i64, !dbg !1923
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1923
  %tobool = icmp eq i64 %expval, 0, !dbg !1923
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1923

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1923
  br label %cond.end, !dbg !1923

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1923
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1923
  %2 = load i8, i8* %0, align 1, !dbg !1923
  %conv3 = zext i8 %2 to i32, !dbg !1923
  br label %cond.end, !dbg !1923

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1923
  ret i32 %cond, !dbg !1924
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1925 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1926
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1926
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1926
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1926
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1926
  %cmp = icmp uge i8* %1, %2, !dbg !1926
  %conv1 = zext i1 %cmp to i64, !dbg !1926
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1926
  %tobool = icmp eq i64 %expval, 0, !dbg !1926
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1926

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1926
  br label %cond.end, !dbg !1926

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1926
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1926
  %3 = load i8, i8* %1, align 1, !dbg !1926
  %conv3 = zext i8 %3 to i32, !dbg !1926
  br label %cond.end, !dbg !1926

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1926
  ret i32 %cond, !dbg !1927
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1928 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1932, metadata !DIExpression()), !dbg !1933
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1934
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1935
  ret i32 %call, !dbg !1936
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1937 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1941, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1942, metadata !DIExpression()), !dbg !1943
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1944
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1944
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1944
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1944
  %cmp = icmp uge i8* %0, %1, !dbg !1944
  %conv1 = zext i1 %cmp to i64, !dbg !1944
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1944
  %tobool = icmp eq i64 %expval, 0, !dbg !1944
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1944

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1944
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1944
  br label %cond.end, !dbg !1944

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1944
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1944
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1944
  store i8 %conv2, i8* %0, align 1, !dbg !1944
  %conv6 = and i32 %__c, 255, !dbg !1944
  br label %cond.end, !dbg !1944

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1944
  ret i32 %cond, !dbg !1945
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1946 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1949, metadata !DIExpression()), !dbg !1950
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1951
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1951
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1951
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1951
  %cmp = icmp uge i8* %0, %1, !dbg !1951
  %conv1 = zext i1 %cmp to i64, !dbg !1951
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1951
  %tobool = icmp eq i64 %expval, 0, !dbg !1951
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1951

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1951
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1951
  br label %cond.end, !dbg !1951

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1951
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1951
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1951
  store i8 %conv2, i8* %0, align 1, !dbg !1951
  %conv6 = and i32 %__c, 255, !dbg !1951
  br label %cond.end, !dbg !1951

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1951
  ret i32 %cond, !dbg !1952
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1955, metadata !DIExpression()), !dbg !1956
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1957
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1957
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1957
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1957
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1957
  %cmp = icmp uge i8* %1, %2, !dbg !1957
  %conv1 = zext i1 %cmp to i64, !dbg !1957
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1957
  %tobool = icmp eq i64 %expval, 0, !dbg !1957
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1957

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1957
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1957
  br label %cond.end, !dbg !1957

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1957
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1957
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1957
  store i8 %conv4, i8* %1, align 1, !dbg !1957
  %conv6 = and i32 %__c, 255, !dbg !1957
  br label %cond.end, !dbg !1957

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1957
  ret i32 %cond, !dbg !1958
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1959 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1965, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1966, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1967, metadata !DIExpression()), !dbg !1968
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1969
  ret i64 %call, !dbg !1970
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1971 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1973, metadata !DIExpression()), !dbg !1974
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1975
  %0 = load i32, i32* %_flags, align 8, !dbg !1975
  %and = lshr i32 %0, 4, !dbg !1975
  %and.lobit = and i32 %and, 1, !dbg !1975
  ret i32 %and.lobit, !dbg !1976
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1979, metadata !DIExpression()), !dbg !1980
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1981
  %0 = load i32, i32* %_flags, align 8, !dbg !1981
  %and = lshr i32 %0, 5, !dbg !1981
  %and.lobit = and i32 %and, 1, !dbg !1981
  ret i32 %and.lobit, !dbg !1982
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1986, metadata !DIExpression()), !dbg !1987
  %__c.off = add i32 %__c, 128, !dbg !1988
  %0 = icmp ult i32 %__c.off, 384, !dbg !1988
  br i1 %0, label %cond.true, label %cond.end, !dbg !1988

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1989
  %1 = load i32*, i32** %call, align 8, !dbg !1990
  %idxprom = sext i32 %__c to i64, !dbg !1991
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1991
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1991
  br label %cond.end, !dbg !1992

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1992
  ret i32 %cond, !dbg !1993
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1994 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1996, metadata !DIExpression()), !dbg !1997
  %__c.off = add i32 %__c, 128, !dbg !1998
  %0 = icmp ult i32 %__c.off, 384, !dbg !1998
  br i1 %0, label %cond.true, label %cond.end, !dbg !1998

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1999
  %1 = load i32*, i32** %call, align 8, !dbg !2000
  %idxprom = sext i32 %__c to i64, !dbg !2001
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2001
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2001
  br label %cond.end, !dbg !2002

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2002
  ret i32 %cond, !dbg !2003
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2009, metadata !DIExpression()), !dbg !2010
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2011
  %conv = trunc i64 %call to i32, !dbg !2012
  ret i32 %conv, !dbg !2013
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2014 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2018, metadata !DIExpression()), !dbg !2019
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2020
  ret i64 %call, !dbg !2021
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2027, metadata !DIExpression()), !dbg !2028
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2029
  ret i64 %call, !dbg !2030
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2031 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2037, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2038, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2039, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2040, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2041, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 0, metadata !2042, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2043, metadata !DIExpression()), !dbg !2047
  br label %while.cond, !dbg !2048

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2049
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2043, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2042, metadata !DIExpression()), !dbg !2047
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2050
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2048

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2051
  %div = lshr i64 %add, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %div, metadata !2044, metadata !DIExpression()), !dbg !2047
  %mul = mul i64 %div, %__size, !dbg !2054
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2055
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2045, metadata !DIExpression()), !dbg !2047
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %call, metadata !2046, metadata !DIExpression()), !dbg !2047
  %cmp1 = icmp slt i32 %call, 0, !dbg !2057
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2059

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2060
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2062

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2042, metadata !DIExpression()), !dbg !2047
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2047
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2043, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2042, metadata !DIExpression()), !dbg !2047
  br label %while.cond, !dbg !2048, !llvm.loop !2064

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2047
  ret i8* %retval.0, !dbg !2066
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2073, metadata !DIExpression()), !dbg !2074
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2075
  ret double %call, !dbg !2076
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2087, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %base, metadata !2088, metadata !DIExpression()), !dbg !2089
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2090
  ret i64 %call, !dbg !2091
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2098, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %base, metadata !2100, metadata !DIExpression()), !dbg !2101
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2102
  ret i64 %call, !dbg !2103
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %base, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2119
  ret i64 %call, !dbg !2120
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %base, metadata !2127, metadata !DIExpression()), !dbg !2128
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2129
  ret i64 %call, !dbg !2130
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2131 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2174
  ret i32 %call, !dbg !2175
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2179, metadata !DIExpression()), !dbg !2180
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2181
  ret i32 %call, !dbg !2182
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2183 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2188, metadata !DIExpression()), !dbg !2189
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2190
  ret i32 %call, !dbg !2191
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2196, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2199, metadata !DIExpression()), !dbg !2200
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2201
  ret i32 %call, !dbg !2202
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2203 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2209, metadata !DIExpression()), !dbg !2210
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2209, metadata !DIExpression(DW_OP_deref)), !dbg !2210
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2211
  ret i32 %call, !dbg !2212
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2213 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2217, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2218, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2220, metadata !DIExpression(DW_OP_deref)), !dbg !2221
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2222
  ret i32 %call, !dbg !2223
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2249, metadata !DIExpression()), !dbg !2250
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2251
  ret i32 %call, !dbg !2252
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2256, metadata !DIExpression()), !dbg !2257
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2258
  ret i32 %call, !dbg !2259
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2260 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2265, metadata !DIExpression()), !dbg !2266
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2267
  ret i32 %call, !dbg !2268
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2273, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2278
  ret i32 %call, !dbg !2279
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @regstat_init_n_sets_and_refs() local_unnamed_addr #4 !dbg !2280 {
entry:
  %call = tail call i32 @max_reg_num() #6, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %call, metadata !2285, metadata !DIExpression()), !dbg !2293
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2294
  %tobool = icmp eq i8 %0, 0, !dbg !2294
  br i1 %tobool, label %do.end, label %if.then, !dbg !2297

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 37) #6, !dbg !2294
  br label %do.end, !dbg !2294

do.end:                                           ; preds = %entry, %if.then
  tail call void @df_grow_reg_info() #6, !dbg !2298
  %1 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2299
  %tobool1 = icmp eq %struct.regstat_n_sets_and_refs_t* %1, null, !dbg !2299
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2299

cond.true:                                        ; preds = %do.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2299
  br label %cond.end, !dbg !2299

cond.end:                                         ; preds = %do.end, %cond.true
  %conv = zext i32 %call to i64, !dbg !2300
  %mul = shl nuw nsw i64 %conv, 3, !dbg !2300
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2300
  store i8* %call2, i8** bitcast (%struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs to i8**), align 8, !dbg !2301
  %2 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2302
  %tobool3 = icmp eq i32 %2, 0, !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2293
  br i1 %tobool3, label %for.cond30.preheader, label %for.cond.preheader, !dbg !2303

for.cond.preheader:                               ; preds = %cond.end
  %wide.trip.count4 = zext i32 %call to i64, !dbg !2304
  br label %for.cond, !dbg !2305

for.cond30.preheader:                             ; preds = %cond.end
  %wide.trip.count = zext i32 %call to i64, !dbg !2306
  br label %for.cond30, !dbg !2309

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv2 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next3, %for.end ], !dbg !2310
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !2284, metadata !DIExpression()), !dbg !2293
  %exitcond5 = icmp eq i64 %indvars.iv2, %wide.trip.count4, !dbg !2304
  br i1 %exitcond5, label %do.body54.loopexit1, label %for.body, !dbg !2305

for.body:                                         ; preds = %for.cond
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !2311
  %use_regs = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 6, !dbg !2311
  %4 = load %struct.df_reg_info**, %struct.df_reg_info*** %use_regs, align 8, !dbg !2311
  %arrayidx = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %4, i64 %indvars.iv2, !dbg !2311
  %5 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx, align 8, !dbg !2311
  %n_refs = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %5, i64 0, i32 1, !dbg !2311
  %6 = load i32, i32* %n_refs, align 8, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %6, metadata !2286, metadata !DIExpression()), !dbg !2312
  %reg_chain = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %5, i64 0, i32 0, !dbg !2313
  br label %for.cond9, !dbg !2315

for.cond9:                                        ; preds = %for.inc, %for.body
  %use_count.0 = phi i32 [ %6, %for.body ], [ %use_count.1, %for.inc ], !dbg !2312
  %use.0.in = phi %union.df_ref_d** [ %reg_chain, %for.body ], [ %next_reg, %for.inc ]
  %use.0 = load %union.df_ref_d*, %union.df_ref_d** %use.0.in, align 8, !dbg !2316
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use.0, metadata !2291, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %use_count.0, metadata !2286, metadata !DIExpression()), !dbg !2312
  %tobool10 = icmp eq %union.df_ref_d* %use.0, null, !dbg !2317
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !2317

for.body11:                                       ; preds = %for.cond9
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use.0, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2318
  %7 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !2318
  %tobool12 = icmp eq %struct.df_insn_info* %7, null, !dbg !2318
  br i1 %tobool12, label %for.inc, label %land.lhs.true, !dbg !2321

land.lhs.true:                                    ; preds = %for.body11
  %8 = bitcast %struct.df_insn_info* %7 to i32**, !dbg !2321
  %9 = load i32*, i32** %8, align 8, !dbg !2322
  %bf.load = load i32, i32* %9, align 8, !dbg !2322
  %bf.clear = and i32 %bf.load, 65535, !dbg !2322
  %cmp15 = icmp eq i32 %bf.clear, 7, !dbg !2322
  %10 = zext i1 %cmp15 to i32, !dbg !2323
  %spec.select = sub i32 %use_count.0, %10, !dbg !2323
  br label %for.inc, !dbg !2323

for.inc:                                          ; preds = %for.body11, %land.lhs.true
  %use_count.1 = phi i32 [ %use_count.0, %for.body11 ], [ %spec.select, %land.lhs.true ], !dbg !2312
  call void @llvm.dbg.value(metadata i32 %use_count.1, metadata !2286, metadata !DIExpression()), !dbg !2312
  %next_reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use.0, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2324
  br label %for.cond9, !dbg !2325, !llvm.loop !2326

for.end:                                          ; preds = %for.cond9
  %use_count.0.lcssa = phi i32 [ %use_count.0, %for.cond9 ], !dbg !2312
  call void @llvm.dbg.value(metadata i32 %use_count.0.lcssa, metadata !2286, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %use_count.0.lcssa, metadata !2286, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %use_count.0.lcssa, metadata !2286, metadata !DIExpression()), !dbg !2312
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 5, !dbg !2328
  %11 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !2328
  %arrayidx21 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %11, i64 %indvars.iv2, !dbg !2328
  %12 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx21, align 8, !dbg !2328
  %n_refs22 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %12, i64 0, i32 1, !dbg !2328
  %13 = load i32, i32* %n_refs22, align 8, !dbg !2328
  %14 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2328
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %14, i64 %indvars.iv2, i32 0, !dbg !2328
  store i32 %13, i32* %sets, align 4, !dbg !2328
  %15 = trunc i64 %indvars.iv2 to i32, !dbg !2329
  %call25 = tail call fastcc i32 @REG_N_SETS(i32 %15) #7, !dbg !2329
  %add = add nsw i32 %use_count.0.lcssa, %call25, !dbg !2329
  %16 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2329
  %refs = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %16, i64 %indvars.iv2, i32 1, !dbg !2329
  store i32 %add, i32* %refs, align 4, !dbg !2329
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !2330
  br label %for.cond, !dbg !2331, !llvm.loop !2332

for.cond30:                                       ; preds = %for.cond30.preheader, %for.body33
  %indvars.iv = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next, %for.body33 ], !dbg !2334
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2284, metadata !DIExpression()), !dbg !2293
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2306
  br i1 %exitcond, label %do.body54.loopexit, label %for.body33, !dbg !2309

for.body33:                                       ; preds = %for.cond30
  %17 = load %struct.df*, %struct.df** @df, align 8, !dbg !2335
  %def_regs34 = getelementptr inbounds %struct.df, %struct.df* %17, i64 0, i32 5, !dbg !2335
  %18 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs34, align 8, !dbg !2335
  %arrayidx36 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %18, i64 %indvars.iv, !dbg !2335
  %19 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx36, align 8, !dbg !2335
  %n_refs37 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %19, i64 0, i32 1, !dbg !2335
  %20 = load i32, i32* %n_refs37, align 8, !dbg !2335
  %21 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2335
  %sets40 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %21, i64 %indvars.iv, i32 0, !dbg !2335
  store i32 %20, i32* %sets40, align 4, !dbg !2335
  %22 = load %struct.df*, %struct.df** @df, align 8, !dbg !2337
  %use_regs41 = getelementptr inbounds %struct.df, %struct.df* %22, i64 0, i32 6, !dbg !2337
  %23 = load %struct.df_reg_info**, %struct.df_reg_info*** %use_regs41, align 8, !dbg !2337
  %arrayidx43 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %23, i64 %indvars.iv, !dbg !2337
  %24 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx43, align 8, !dbg !2337
  %n_refs44 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %24, i64 0, i32 1, !dbg !2337
  %25 = load i32, i32* %n_refs44, align 8, !dbg !2337
  %26 = trunc i64 %indvars.iv to i32, !dbg !2337
  %call45 = tail call fastcc i32 @REG_N_SETS(i32 %26) #7, !dbg !2337
  %add46 = add i32 %25, %call45, !dbg !2337
  %27 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2337
  %refs49 = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %27, i64 %indvars.iv, i32 1, !dbg !2337
  store i32 %add46, i32* %refs49, align 4, !dbg !2337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2338
  br label %for.cond30, !dbg !2339, !llvm.loop !2340

do.body54.loopexit:                               ; preds = %for.cond30
  br label %do.body54, !dbg !2342

do.body54.loopexit1:                              ; preds = %for.cond
  br label %do.body54, !dbg !2342

do.body54:                                        ; preds = %do.body54.loopexit1, %do.body54.loopexit
  %28 = load i8, i8* @timevar_enable, align 1, !dbg !2342
  %tobool55 = icmp eq i8 %28, 0, !dbg !2342
  br i1 %tobool55, label %do.end59, label %if.then56, !dbg !2345

if.then56:                                        ; preds = %do.body54
  tail call void @timevar_pop_1(i32 37) #6, !dbg !2342
  br label %do.end59, !dbg !2342

do.end59:                                         ; preds = %do.body54, %if.then56
  ret void, !dbg !2346
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @df_grow_reg_info() local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @REG_N_SETS(i32 %regno) unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2349, metadata !DIExpression()), !dbg !2350
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2351
  %idxprom = sext i32 %regno to i64, !dbg !2351
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %0, i64 %idxprom, i32 0, !dbg !2352
  %1 = load i32, i32* %sets, align 4, !dbg !2352
  ret i32 %1, !dbg !2353
}

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_n_sets_and_refs() local_unnamed_addr #4 !dbg !2354 {
entry:
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2355
  %tobool = icmp eq %struct.regstat_n_sets_and_refs_t* %0, null, !dbg !2355
  %1 = bitcast %struct.regstat_n_sets_and_refs_t* %0 to i8*, !dbg !2355
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2355

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2355
  %.pre = load i8*, i8** bitcast (%struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs to i8**), align 8, !dbg !2356
  br label %cond.end, !dbg !2355

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i8* [ %1, %entry ], [ %.pre, %cond.true ], !dbg !2356
  tail call void @free(i8* %2) #6, !dbg !2357
  store %struct.regstat_n_sets_and_refs_t* null, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !2358
  ret void, !dbg !2359
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @regstat_compute_ri() local_unnamed_addr #4 !dbg !2360 {
entry:
  %regno = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2363, metadata !DIExpression()), !dbg !2378
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !2364, metadata !DIExpression()), !dbg !2378
  %call2 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2380
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call2, metadata !2365, metadata !DIExpression()), !dbg !2378
  %call3 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2381
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call3, metadata !2366, metadata !DIExpression()), !dbg !2378
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2382
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !2367, metadata !DIExpression()), !dbg !2378
  %0 = bitcast i32* %regno to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2383
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2384
  %2 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2385
  %tobool = icmp eq %struct.reg_info_t* %2, null, !dbg !2385
  br i1 %tobool, label %do.body, label %cond.true, !dbg !2385

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2385
  br label %do.body, !dbg !2385

do.body:                                          ; preds = %entry, %cond.true
  %3 = load i8, i8* @timevar_enable, align 1, !dbg !2386
  %tobool5 = icmp eq i8 %3, 0, !dbg !2386
  br i1 %tobool5, label %do.end, label %if.then, !dbg !2389

if.then:                                          ; preds = %do.body
  tail call void @timevar_push_1(i32 37) #6, !dbg !2386
  br label %do.end, !dbg !2386

do.end:                                           ; preds = %do.body, %if.then
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2390
  store %struct.bitmap_head_def* %call6, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2391
  %call7 = tail call i32 @max_reg_num() #6, !dbg !2392
  store i32 %call7, i32* @max_regno, align 4, !dbg !2393
  %conv = sext i32 %call7 to i64, !dbg !2394
  store i64 %conv, i64* @reg_info_p_size, align 8, !dbg !2395
  %call9 = tail call i8* @xcalloc(i64 %conv, i64 28) #6, !dbg !2396
  store i8* %call9, i8** bitcast (%struct.reg_info_t** @reg_info_p to i8**), align 8, !dbg !2397
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2398
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2398
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2398
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2398
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2398
  br label %for.cond, !dbg !2398

for.cond:                                         ; preds = %for.body, %do.end
  %7 = phi %struct.control_flow_graph* [ %5, %do.end ], [ %.pre1, %for.body ], !dbg !2400
  %.pn = phi %struct.basic_block_def* [ %6, %do.end ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2402
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2362, metadata !DIExpression()), !dbg !2378
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !2400
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2400
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %8, !dbg !2400
  br i1 %cmp, label %for.end, label %for.body, !dbg !2398

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2403
  %9 = load i32, i32* %index, align 8, !dbg !2403
  tail call fastcc void @regstat_bb_compute_ri(i32 %9, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %call1, %struct.bitmap_head_def* %call2, %struct.bitmap_head_def* %call3, %struct.bitmap_head_def* %call4) #7, !dbg !2405
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2400
  %cfg11.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2406
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11.phi.trans.insert, align 8, !dbg !2400
  br label %for.cond, !dbg !2400, !llvm.loop !2407

for.end:                                          ; preds = %for.cond
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2409
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2363, metadata !DIExpression()), !dbg !2378
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !2410
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2364, metadata !DIExpression()), !dbg !2378
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call2) #6, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2365, metadata !DIExpression()), !dbg !2378
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2412
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %10, i32 53, i32* nonnull %regno) #7, !dbg !2412
  br label %for.cond14, !dbg !2412

for.cond14:                                       ; preds = %for.body17, %for.end
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  %call15 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2414
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2412
  br i1 %tobool16, label %for.end21, label %for.body17, !dbg !2412

for.body17:                                       ; preds = %for.cond14
  %11 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2416
  %12 = load i32, i32* %regno, align 4, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %12, metadata !2368, metadata !DIExpression()), !dbg !2378
  %idxprom = zext i32 %12 to i64, !dbg !2416
  %basic_block = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %11, i64 %idxprom, i32 6, !dbg !2416
  store i32 0, i32* %basic_block, align 4, !dbg !2418
  %13 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2419
  %14 = load i32, i32* %regno, align 4, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %14, metadata !2368, metadata !DIExpression()), !dbg !2378
  %idxprom18 = zext i32 %14 to i64, !dbg !2419
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %13, i64 %idxprom18, i32 2, !dbg !2419
  store i32 -1, i32* %live_length, align 4, !dbg !2420
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2368, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2369, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2414
  br label %for.cond14, !dbg !2414, !llvm.loop !2421

for.end21:                                        ; preds = %for.cond14
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call3) #6, !dbg !2423
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2366, metadata !DIExpression()), !dbg !2378
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call4) #6, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2367, metadata !DIExpression()), !dbg !2378
  %15 = load i8, i8* @timevar_enable, align 1, !dbg !2425
  %tobool23 = icmp eq i8 %15, 0, !dbg !2425
  br i1 %tobool23, label %do.end27, label %if.then24, !dbg !2428

if.then24:                                        ; preds = %for.end21
  call void @timevar_pop_1(i32 37) #6, !dbg !2425
  br label %do.end27, !dbg !2425

do.end27:                                         ; preds = %for.end21, %if.then24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2429
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2429
  ret void, !dbg !2429
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @regstat_bb_compute_ri(i32 %bb_index, %struct.bitmap_head_def* %live, %struct.bitmap_head_def* %do_not_gen, %struct.bitmap_head_def* %artificial_uses, %struct.bitmap_head_def* %local_live, %struct.bitmap_head_def* %local_processed) unnamed_addr #4 !dbg !2430 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %regno = alloca i32, align 4
  %regno45 = alloca i32, align 4
  %bi46 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !2434, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %live, metadata !2435, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %do_not_gen, metadata !2436, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %artificial_uses, metadata !2437, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %local_live, metadata !2438, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %local_processed, metadata !2439, metadata !DIExpression()), !dbg !2490
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2491
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2491
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2491
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !2491
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2491
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !2491
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2491

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !2491
  br label %cond.end, !dbg !2491

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2491
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb_index) #7, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2440, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()), !dbg !2490
  %3 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2492
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #8, !dbg !2492
  %4 = bitcast i32* %regno to i8*, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2493
  %call4 = tail call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %call) #6, !dbg !2494
  tail call void @bitmap_copy(%struct.bitmap_head_def* %live, %struct.bitmap_head_def* %call4) #6, !dbg !2495
  tail call void @bitmap_clear(%struct.bitmap_head_def* %artificial_uses) #6, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %live, i32 0, i32* nonnull %regno) #7, !dbg !2497
  br label %for.cond, !dbg !2497

for.cond:                                         ; preds = %for.body, %cond.end
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  %call5 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2499
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2497
  br i1 %tobool6, label %for.end, label %for.body, !dbg !2497

for.body:                                         ; preds = %for.cond
  %5 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2501
  %6 = load i32, i32* %regno, align 4, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %6, metadata !2446, metadata !DIExpression()), !dbg !2490
  %idxprom = zext i32 %6 to i64, !dbg !2501
  %basic_block = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %5, i64 %idxprom, i32 6, !dbg !2501
  store i32 -1, i32* %basic_block, align 4, !dbg !2502
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2499
  br label %for.cond, !dbg !2499, !llvm.loop !2503

for.end:                                          ; preds = %for.cond
  %call7 = call fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %bb_index) #7, !dbg !2505
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call7, metadata !2442, metadata !DIExpression()), !dbg !2490
  br label %for.cond8, !dbg !2506

for.cond8:                                        ; preds = %for.inc15, %for.end
  %def_rec.0 = phi %union.df_ref_d** [ %call7, %for.end ], [ %incdec.ptr, %for.inc15 ], !dbg !2507
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2442, metadata !DIExpression()), !dbg !2490
  %7 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2508
  %tobool9 = icmp eq %union.df_ref_d* %7, null, !dbg !2509
  br i1 %tobool9, label %for.end16, label %for.body10, !dbg !2509

for.body10:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %union.df_ref_d* %7, metadata !2447, metadata !DIExpression()), !dbg !2510
  %8 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %7, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2511
  %bf.load = load i32, i32* %8, align 8, !dbg !2511
  %and = and i32 %bf.load, 131072, !dbg !2513
  %cmp = icmp eq i32 %and, 0, !dbg !2514
  br i1 %cmp, label %if.then, label %for.inc15, !dbg !2515

if.then:                                          ; preds = %for.body10
  %regno13 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %7, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2516
  %9 = load i32, i32* %regno13, align 8, !dbg !2516
  %call14 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live, i32 %9) #6, !dbg !2517
  br label %for.inc15, !dbg !2517

for.inc15:                                        ; preds = %for.body10, %if.then
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2518
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2442, metadata !DIExpression()), !dbg !2490
  br label %for.cond8, !dbg !2519, !llvm.loop !2520

for.end16:                                        ; preds = %for.cond8
  %call17 = call fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %bb_index) #7, !dbg !2522
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call17, metadata !2443, metadata !DIExpression()), !dbg !2490
  br label %for.cond18, !dbg !2523

for.cond18:                                       ; preds = %for.inc32, %for.end16
  %use_rec.0 = phi %union.df_ref_d** [ %call17, %for.end16 ], [ %incdec.ptr33, %for.inc32 ], !dbg !2524
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2443, metadata !DIExpression()), !dbg !2490
  %10 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !2525
  %tobool19 = icmp eq %union.df_ref_d* %10, null, !dbg !2526
  br i1 %tobool19, label %for.end34, label %for.body20, !dbg !2526

for.body20:                                       ; preds = %for.cond18
  call void @llvm.dbg.value(metadata %union.df_ref_d* %10, metadata !2451, metadata !DIExpression()), !dbg !2527
  %11 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %10, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2528
  %bf.load22 = load i32, i32* %11, align 8, !dbg !2528
  %and24 = and i32 %bf.load22, 131072, !dbg !2530
  %cmp25 = icmp eq i32 %and24, 0, !dbg !2531
  br i1 %cmp25, label %if.then26, label %for.inc32, !dbg !2532

if.then26:                                        ; preds = %for.body20
  %regno28 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %10, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2533
  %12 = load i32, i32* %regno28, align 8, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %12, metadata !2446, metadata !DIExpression()), !dbg !2490
  store i32 %12, i32* %regno, align 4, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %12, metadata !2446, metadata !DIExpression()), !dbg !2490
  %call29 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live, i32 %12) #6, !dbg !2536
  %13 = load i32, i32* %regno, align 4, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %13, metadata !2446, metadata !DIExpression()), !dbg !2490
  %call30 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %artificial_uses, i32 %13) #6, !dbg !2538
  br label %for.inc32, !dbg !2539

for.inc32:                                        ; preds = %for.body20, %if.then26
  %incdec.ptr33 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !2540
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr33, metadata !2443, metadata !DIExpression()), !dbg !2490
  br label %for.cond18, !dbg !2541, !llvm.loop !2542

for.end34:                                        ; preds = %for.cond18
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !2544
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2544
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2544
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 1, !dbg !2544
  %15 = bitcast i32* %regno45 to i8*, !dbg !2545
  %16 = bitcast %struct.bitmap_iterator* %bi46 to i8*, !dbg !2545
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !2546
  %index282 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !2550
  br label %for.cond35, !dbg !2544

for.cond35:                                       ; preds = %cleanup, %for.end34
  %insn.0.in = phi %struct.rtx_def** [ %end_, %for.end34 ], [ %rt_rtx398, %cleanup ]
  %luid.0 = phi i32 [ 0, %for.end34 ], [ %luid.1, %cleanup ], !dbg !2555
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %luid.0, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2441, metadata !DIExpression()), !dbg !2490
  %tobool36 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2557
  br i1 %tobool36, label %for.end399, label %land.rhs, !dbg !2557

land.rhs:                                         ; preds = %for.cond35
  %17 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2557
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %17, i64 0, i32 0, !dbg !2557
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2557
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2557
  %rt_rtx = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !2557
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2557
  %cmp40 = icmp eq %struct.rtx_def* %insn.0, %20, !dbg !2557
  br i1 %cmp40, label %for.end399, label %for.body41, !dbg !2544

for.body41:                                       ; preds = %land.rhs
  %arrayidx44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2558
  %rt_int = bitcast %union.rtunion_def* %arrayidx44 to i32*, !dbg !2558
  %21 = load i32, i32* %rt_int, align 8, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %21, metadata !2455, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #8, !dbg !2559
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #8, !dbg !2560
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2561
  %bf.load47 = load i32, i32* %22, align 8, !dbg !2561
  %bf.clear = and i32 %bf.load47, 65535, !dbg !2561
  %cmp48 = icmp eq i32 %bf.clear, 8, !dbg !2561
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false, !dbg !2561

lor.lhs.false:                                    ; preds = %for.body41
  %cmp51 = icmp eq i32 %bf.clear, 7, !dbg !2561
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false52, !dbg !2561

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %cmp55 = icmp eq i32 %bf.clear, 9, !dbg !2561
  br i1 %cmp55, label %land.lhs.true, label %lor.lhs.false56, !dbg !2561

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %cmp59 = icmp eq i32 %bf.clear, 10, !dbg !2561
  br i1 %cmp59, label %land.lhs.true, label %cleanup, !dbg !2561

land.lhs.true:                                    ; preds = %lor.lhs.false56, %lor.lhs.false52, %lor.lhs.false, %for.body41
  %cmp62 = icmp eq i32 %bf.clear, 7, !dbg !2561
  br i1 %cmp62, label %cleanup, label %if.end64, !dbg !2563

if.end64:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi46, %struct.bitmap_head_def* %local_live, i32 0, i32* nonnull %regno45) #7, !dbg !2564
  br label %for.cond65, !dbg !2564

for.cond65:                                       ; preds = %for.body68, %if.end64
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  %call66 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2566
  %tobool67 = icmp eq i8 %call66, 0, !dbg !2564
  br i1 %tobool67, label %for.end72, label %for.body68, !dbg !2564

for.body68:                                       ; preds = %for.cond65
  %23 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2568
  %24 = load i32, i32* %regno45, align 4, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %24, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom69 = zext i32 %24 to i64, !dbg !2568
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %23, i64 %idxprom69, i32 2, !dbg !2568
  %25 = load i32, i32* %live_length, align 4, !dbg !2570
  %inc = add nsw i32 %25, 1, !dbg !2570
  store i32 %inc, i32* %live_length, align 4, !dbg !2570
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2566
  br label %for.cond65, !dbg !2566, !llvm.loop !2571

for.end72:                                        ; preds = %for.cond65
  call void @llvm.dbg.value(metadata i32 %inc73, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @bitmap_clear(%struct.bitmap_head_def* %do_not_gen) #6, !dbg !2573
  %u74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2574
  %26 = getelementptr inbounds %union.u, %union.u* %u74, i64 1, i32 0, i32 0, i64 2, !dbg !2574
  br label %while.cond, !dbg !2575

while.cond:                                       ; preds = %if.end91, %for.end72
  %link.0.in.in = phi %union.rtunion_def* [ %26, %for.end72 ], [ %31, %if.end91 ]
  %link.0.in = bitcast %union.rtunion_def* %link.0.in.in to %struct.rtx_def**, !dbg !2545
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2462, metadata !DIExpression()), !dbg !2545
  %tobool78 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2575
  br i1 %tobool78, label %while.end, label %while.body, !dbg !2575

while.body:                                       ; preds = %while.cond
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 0, !dbg !2576
  %bf.load79 = load i32, i32* %27, align 8, !dbg !2576
  %bf.clear80 = and i32 %bf.load79, 16711680, !dbg !2576
  %cmp81 = icmp eq i32 %bf.clear80, 65536, !dbg !2579
  br i1 %cmp81, label %if.then82, label %if.end91, !dbg !2580

if.then82:                                        ; preds = %while.body
  %28 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2581
  %arrayidx85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2581
  %rt_rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**, !dbg !2581
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx86, align 8, !dbg !2581
  %call87 = call fastcc i32 @rhs_regno(%struct.rtx_def* %29) #7, !dbg !2581
  %idxprom88 = zext i32 %call87 to i64, !dbg !2581
  %deaths = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %28, i64 %idxprom88, i32 1, !dbg !2581
  %30 = load i32, i32* %deaths, align 4, !dbg !2582
  %inc90 = add nsw i32 %30, 1, !dbg !2582
  store i32 %inc90, i32* %deaths, align 4, !dbg !2582
  br label %if.end91, !dbg !2581

if.end91:                                         ; preds = %if.then82, %while.body
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2583
  br label %while.cond, !dbg !2575, !llvm.loop !2584

while.end:                                        ; preds = %while.cond
  %inc73 = add nsw i32 %luid.0, 1, !dbg !2586
  %bf.load96 = load i32, i32* %22, align 8, !dbg !2587
  %bf.clear97 = and i32 %bf.load96, 65535, !dbg !2587
  %cmp98 = icmp eq i32 %bf.clear97, 10, !dbg !2587
  br i1 %cmp98, label %if.then99, label %if.end144, !dbg !2588

if.then99:                                        ; preds = %while.end
  %call100 = call zeroext i8 @can_throw_internal(%struct.rtx_def* nonnull %insn.0) #6, !dbg !2589
  call void @llvm.dbg.value(metadata i8 %call100, metadata !2463, metadata !DIExpression()), !dbg !2590
  %call101 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* nonnull %insn.0, i32 30, %struct.rtx_def* null) #6, !dbg !2591
  %cmp102 = icmp eq %struct.rtx_def* %call101, null, !dbg !2592
  call void @llvm.dbg.value(metadata i1 %cmp102, metadata !2466, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi46, %struct.bitmap_head_def* %live, i32 0, i32* nonnull %regno45) #7, !dbg !2593
  %tobool132 = icmp eq i8 %call100, 0, !dbg !2594
  br i1 %tobool132, label %if.then99.split.us, label %if.then99.if.then99.split_crit_edge, !dbg !2593

if.then99.if.then99.split_crit_edge:              ; preds = %if.then99
  br label %for.cond104, !dbg !2593

if.then99.split.us:                               ; preds = %if.then99
  br label %for.cond104.us, !dbg !2593

for.cond104.us:                                   ; preds = %for.inc142.us, %if.then99.split.us
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  %call105.us = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2596
  %tobool106.us = icmp eq i8 %call105.us, 0, !dbg !2593
  br i1 %tobool106.us, label %if.end144.loopexit.us-lcssa.us, label %for.body107.us, !dbg !2593

for.body107.us:                                   ; preds = %for.cond104.us
  %32 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2597
  %33 = load i32, i32* %regno45, align 4, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %33, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom108.us = zext i32 %33 to i64, !dbg !2597
  %calls_crossed.us = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %32, i64 %idxprom108.us, i32 3, !dbg !2597
  %34 = load i32, i32* %calls_crossed.us, align 4, !dbg !2598
  %inc110.us = add nsw i32 %34, 1, !dbg !2598
  store i32 %inc110.us, i32* %calls_crossed.us, align 4, !dbg !2598
  %35 = load i32, i32* @optimize_size, align 4, !dbg !2599
  %tobool111.us = icmp eq i32 %35, 0, !dbg !2599
  br i1 %tobool111.us, label %lor.lhs.false112.us, label %cond.end128.us, !dbg !2599

lor.lhs.false112.us:                              ; preds = %for.body107.us
  %36 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2599
  %tobool113.us = icmp eq i32 %36, 0, !dbg !2599
  br i1 %tobool113.us, label %cond.false119.us, label %land.lhs.true114.us, !dbg !2599

land.lhs.true114.us:                              ; preds = %lor.lhs.false112.us
  %37 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2599
  %cfg116.us = getelementptr inbounds %struct.function, %struct.function* %37, i64 0, i32 1, !dbg !2599
  %38 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg116.us, align 8, !dbg !2599
  %x_entry_block_ptr.us = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %38, i64 0, i32 0, !dbg !2599
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr.us, align 8, !dbg !2599
  %count.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i64 0, i32 8, !dbg !2599
  %40 = load i64, i64* %count.us, align 8, !dbg !2599
  %tobool117.us = icmp eq i64 %40, 0, !dbg !2599
  br i1 %tobool117.us, label %cond.end128.us, label %cond.false119.us, !dbg !2599

cond.false119.us:                                 ; preds = %land.lhs.true114.us, %lor.lhs.false112.us
  %41 = load i32, i32* %frequency, align 8, !dbg !2599
  %.off2.us = add i32 %41, 9, !dbg !2599
  %42 = icmp ugt i32 %.off2.us, 18, !dbg !2599
  br i1 %42, label %cond.true121.us, label %cond.end128.us, !dbg !2599

cond.true121.us:                                  ; preds = %cond.false119.us
  %div124.us = sdiv i32 %41, 10, !dbg !2599
  br label %cond.end128.us, !dbg !2599

cond.end128.us:                                   ; preds = %cond.true121.us, %cond.false119.us, %land.lhs.true114.us, %for.body107.us
  %cond129.us = phi i32 [ 1000, %land.lhs.true114.us ], [ 1000, %for.body107.us ], [ %div124.us, %cond.true121.us ], [ 1, %cond.false119.us ], !dbg !2599
  %43 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2600
  %44 = load i32, i32* %regno45, align 4, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %44, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom130.us = zext i32 %44 to i64, !dbg !2600
  %freq_calls_crossed.us = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %43, i64 %idxprom130.us, i32 4, !dbg !2600
  %45 = load i32, i32* %freq_calls_crossed.us, align 4, !dbg !2601
  %add.us = add nsw i32 %45, %cond129.us, !dbg !2601
  store i32 %add.us, i32* %freq_calls_crossed.us, align 4, !dbg !2601
  br i1 %cmp102, label %for.inc142.us, label %if.then139.us, !dbg !2602

if.then139.us:                                    ; preds = %cond.end128.us
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2603
  %47 = load i32, i32* %regno45, align 4, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %47, metadata !2459, metadata !DIExpression()), !dbg !2545
  %call140.us = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %46, i32 %47) #6, !dbg !2606
  br label %for.inc142.us, !dbg !2606

for.inc142.us:                                    ; preds = %if.then139.us, %cond.end128.us
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2596
  br label %for.cond104.us, !dbg !2596, !llvm.loop !2607

if.end144.loopexit.us-lcssa.us:                   ; preds = %for.cond104.us
  br label %if.end144.loopexit, !dbg !2609

for.cond104:                                      ; preds = %for.inc142, %if.then99.if.then99.split_crit_edge
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  %call105 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2596
  %tobool106 = icmp eq i8 %call105, 0, !dbg !2593
  br i1 %tobool106, label %if.end144.loopexit.us-lcssa, label %for.body107, !dbg !2593

for.body107:                                      ; preds = %for.cond104
  %48 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2597
  %49 = load i32, i32* %regno45, align 4, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %49, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom108 = zext i32 %49 to i64, !dbg !2597
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %48, i64 %idxprom108, i32 3, !dbg !2597
  %50 = load i32, i32* %calls_crossed, align 4, !dbg !2598
  %inc110 = add nsw i32 %50, 1, !dbg !2598
  store i32 %inc110, i32* %calls_crossed, align 4, !dbg !2598
  %51 = load i32, i32* @optimize_size, align 4, !dbg !2599
  %tobool111 = icmp eq i32 %51, 0, !dbg !2599
  br i1 %tobool111, label %lor.lhs.false112, label %cond.end128, !dbg !2599

lor.lhs.false112:                                 ; preds = %for.body107
  %52 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2599
  %tobool113 = icmp eq i32 %52, 0, !dbg !2599
  br i1 %tobool113, label %cond.false119, label %land.lhs.true114, !dbg !2599

land.lhs.true114:                                 ; preds = %lor.lhs.false112
  %53 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2599
  %cfg116 = getelementptr inbounds %struct.function, %struct.function* %53, i64 0, i32 1, !dbg !2599
  %54 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg116, align 8, !dbg !2599
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %54, i64 0, i32 0, !dbg !2599
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2599
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i64 0, i32 8, !dbg !2599
  %56 = load i64, i64* %count, align 8, !dbg !2599
  %tobool117 = icmp eq i64 %56, 0, !dbg !2599
  br i1 %tobool117, label %cond.end128, label %cond.false119, !dbg !2599

cond.false119:                                    ; preds = %land.lhs.true114, %lor.lhs.false112
  %57 = load i32, i32* %frequency, align 8, !dbg !2599
  %.off2 = add i32 %57, 9, !dbg !2599
  %58 = icmp ugt i32 %.off2, 18, !dbg !2599
  br i1 %58, label %cond.true121, label %cond.end128, !dbg !2599

cond.true121:                                     ; preds = %cond.false119
  %div124 = sdiv i32 %57, 10, !dbg !2599
  br label %cond.end128, !dbg !2599

cond.end128:                                      ; preds = %land.lhs.true114, %for.body107, %cond.true121, %cond.false119
  %cond129 = phi i32 [ 1000, %land.lhs.true114 ], [ 1000, %for.body107 ], [ %div124, %cond.true121 ], [ 1, %cond.false119 ], !dbg !2599
  %59 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2600
  %60 = load i32, i32* %regno45, align 4, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %60, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom130 = zext i32 %60 to i64, !dbg !2600
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %59, i64 %idxprom130, i32 4, !dbg !2600
  %61 = load i32, i32* %freq_calls_crossed, align 4, !dbg !2601
  %add = add nsw i32 %61, %cond129, !dbg !2601
  store i32 %add, i32* %freq_calls_crossed, align 4, !dbg !2601
  %62 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2610
  %63 = load i32, i32* %regno45, align 4, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %63, metadata !2459, metadata !DIExpression()), !dbg !2545
  %idxprom134 = zext i32 %63 to i64, !dbg !2610
  %throw_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %62, i64 %idxprom134, i32 5, !dbg !2610
  %64 = load i32, i32* %throw_calls_crossed, align 4, !dbg !2611
  %inc136 = add nsw i32 %64, 1, !dbg !2611
  store i32 %inc136, i32* %throw_calls_crossed, align 4, !dbg !2611
  br i1 %cmp102, label %for.inc142, label %if.then139, !dbg !2602

if.then139:                                       ; preds = %cond.end128
  %65 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2603
  %66 = load i32, i32* %regno45, align 4, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %66, metadata !2459, metadata !DIExpression()), !dbg !2545
  %call140 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %65, i32 %66) #6, !dbg !2606
  br label %for.inc142, !dbg !2606

for.inc142:                                       ; preds = %cond.end128, %if.then139
  call void @llvm.dbg.value(metadata i32* %regno45, metadata !2459, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi46, metadata !2460, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi46, i32* nonnull %regno45) #7, !dbg !2596
  br label %for.cond104, !dbg !2596, !llvm.loop !2607

if.end144.loopexit.us-lcssa:                      ; preds = %for.cond104
  br label %if.end144.loopexit, !dbg !2609

if.end144.loopexit:                               ; preds = %if.end144.loopexit.us-lcssa.us, %if.end144.loopexit.us-lcssa
  br label %if.end144, !dbg !2609

if.end144:                                        ; preds = %if.end144.loopexit, %while.end
  %67 = load %struct.df*, %struct.df** @df, align 8, !dbg !2609
  %insns = getelementptr inbounds %struct.df, %struct.df* %67, i64 0, i32 10, !dbg !2609
  %68 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2609
  %idxprom145 = zext i32 %21 to i64, !dbg !2609
  %arrayidx146 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %68, i64 %idxprom145, !dbg !2609
  %69 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx146, align 8, !dbg !2609
  %mw_hardregs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %69, i64 0, i32 4, !dbg !2609
  %70 = load %struct.df_mw_hardreg**, %struct.df_mw_hardreg*** %mw_hardregs, align 8, !dbg !2609
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %70, metadata !2461, metadata !DIExpression()), !dbg !2545
  br label %for.cond147, !dbg !2612

for.cond147:                                      ; preds = %for.inc180, %if.end144
  %mws_rec.0 = phi %struct.df_mw_hardreg** [ %70, %if.end144 ], [ %incdec.ptr181, %for.inc180 ], !dbg !2613
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %mws_rec.0, metadata !2461, metadata !DIExpression()), !dbg !2545
  %71 = load %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %mws_rec.0, align 8, !dbg !2614
  %tobool148 = icmp eq %struct.df_mw_hardreg* %71, null, !dbg !2615
  br i1 %tobool148, label %for.end182, label %for.body149, !dbg !2615

for.body149:                                      ; preds = %for.cond147
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg* %71, metadata !2467, metadata !DIExpression()), !dbg !2616
  %type = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %71, i64 0, i32 1, !dbg !2617
  %bf.load150 = load i32, i32* %type, align 8, !dbg !2617
  %bf.clear151 = and i32 %bf.load150, 65535, !dbg !2617
  %cmp152 = icmp eq i32 %bf.clear151, 0, !dbg !2617
  br i1 %cmp152, label %if.then154, label %for.inc180, !dbg !2618

if.then154:                                       ; preds = %for.body149
  call void @llvm.dbg.value(metadata i8 1, metadata !2471, metadata !DIExpression()), !dbg !2619
  %start_regno = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %71, i64 0, i32 2, !dbg !2620
  %72 = load i32, i32* %start_regno, align 4, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %72, metadata !2474, metadata !DIExpression()), !dbg !2619
  %end_regno = getelementptr inbounds %struct.df_mw_hardreg, %struct.df_mw_hardreg* %71, i64 0, i32 3, !dbg !2622
  br label %for.cond155, !dbg !2624

for.cond155:                                      ; preds = %for.inc166, %if.then154
  %r.0 = phi i32 [ %72, %if.then154 ], [ %inc167, %for.inc166 ], !dbg !2625
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !2474, metadata !DIExpression()), !dbg !2619
  %73 = load i32, i32* %end_regno, align 8, !dbg !2626
  %cmp156 = icmp ugt i32 %r.0, %73, !dbg !2627
  br i1 %cmp156, label %for.end168, label %for.body158, !dbg !2628

for.body158:                                      ; preds = %for.cond155
  %call159 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %live, i32 %r.0) #6, !dbg !2629
  %tobool160 = icmp eq i32 %call159, 0, !dbg !2629
  br i1 %tobool160, label %lor.lhs.false161, label %for.end168, !dbg !2631

lor.lhs.false161:                                 ; preds = %for.body158
  %call162 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %artificial_uses, i32 %r.0) #6, !dbg !2632
  %tobool163 = icmp eq i32 %call162, 0, !dbg !2632
  br i1 %tobool163, label %for.inc166, label %for.end168, !dbg !2633

for.inc166:                                       ; preds = %lor.lhs.false161
  %inc167 = add i32 %r.0, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %inc167, metadata !2474, metadata !DIExpression()), !dbg !2619
  br label %for.cond155, !dbg !2635, !llvm.loop !2636

for.end168:                                       ; preds = %lor.lhs.false161, %for.body158, %for.cond155
  %all_dead.0 = phi i1 [ true, %for.cond155 ], [ false, %lor.lhs.false161 ], [ false, %for.body158 ]
  br i1 %all_dead.0, label %if.then170, label %for.inc180, !dbg !2638

if.then170:                                       ; preds = %for.end168
  %74 = load i32, i32* %start_regno, align 4, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %74, metadata !2475, metadata !DIExpression()), !dbg !2640
  %call173 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %do_not_gen, i32 %74) #6, !dbg !2641
  %75 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2642
  %idxprom174 = zext i32 %74 to i64, !dbg !2642
  %live_length176 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %75, i64 %idxprom174, i32 2, !dbg !2642
  %76 = load i32, i32* %live_length176, align 4, !dbg !2643
  %inc177 = add nsw i32 %76, 1, !dbg !2643
  store i32 %inc177, i32* %live_length176, align 4, !dbg !2643
  br label %for.inc180, !dbg !2644

for.inc180:                                       ; preds = %for.body149, %if.then170, %for.end168
  %incdec.ptr181 = getelementptr inbounds %struct.df_mw_hardreg*, %struct.df_mw_hardreg** %mws_rec.0, i64 1, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.df_mw_hardreg** %incdec.ptr181, metadata !2461, metadata !DIExpression()), !dbg !2545
  br label %for.cond147, !dbg !2646, !llvm.loop !2647

for.end182:                                       ; preds = %for.cond147
  %77 = load %struct.df*, %struct.df** @df, align 8, !dbg !2649
  %insns183 = getelementptr inbounds %struct.df, %struct.df* %77, i64 0, i32 10, !dbg !2649
  %78 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns183, align 8, !dbg !2649
  %arrayidx185 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %78, i64 %idxprom145, !dbg !2649
  %79 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx185, align 8, !dbg !2649
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %79, i64 0, i32 1, !dbg !2649
  %80 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !2649
  call void @llvm.dbg.value(metadata %union.df_ref_d** %80, metadata !2442, metadata !DIExpression()), !dbg !2490
  br label %for.cond186, !dbg !2650

for.cond186:                                      ; preds = %for.inc309, %for.end182
  %def_rec.1 = phi %union.df_ref_d** [ %80, %for.end182 ], [ %incdec.ptr310, %for.inc309 ], !dbg !2651
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.1, metadata !2442, metadata !DIExpression()), !dbg !2490
  %81 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.1, align 8, !dbg !2652
  %tobool187 = icmp eq %union.df_ref_d* %81, null, !dbg !2653
  br i1 %tobool187, label %for.end311, label %for.body188, !dbg !2653

for.body188:                                      ; preds = %for.cond186
  call void @llvm.dbg.value(metadata %union.df_ref_d* %81, metadata !2478, metadata !DIExpression()), !dbg !2654
  %bf.load190 = load i32, i32* %22, align 8, !dbg !2655
  %bf.clear191 = and i32 %bf.load190, 65535, !dbg !2655
  %cmp192 = icmp eq i32 %bf.clear191, 10, !dbg !2655
  br i1 %cmp192, label %lor.lhs.false194, label %if.then200, !dbg !2656

lor.lhs.false194:                                 ; preds = %for.body188
  %82 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %81, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2657
  %bf.load196 = load i32, i32* %82, align 8, !dbg !2657
  %and198 = and i32 %bf.load196, 12582912, !dbg !2658
  %tobool199 = icmp eq i32 %and198, 0, !dbg !2658
  br i1 %tobool199, label %if.then200, label %for.inc309, !dbg !2659

if.then200:                                       ; preds = %lor.lhs.false194, %for.body188
  %regno202 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %81, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2660
  %83 = load i32, i32* %regno202, align 8, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %83, metadata !2482, metadata !DIExpression()), !dbg !2661
  %call203 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %live, i32 %83) #6, !dbg !2662
  %tobool204 = icmp eq i32 %call203, 0, !dbg !2662
  br i1 %tobool204, label %if.else223, label %if.then205, !dbg !2664

if.then205:                                       ; preds = %if.then200
  %call206 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %local_processed, i32 %83) #6, !dbg !2665
  %tobool207 = icmp eq i32 %call206, 0, !dbg !2665
  br i1 %tobool207, label %if.else, label %if.then208, !dbg !2668

if.then208:                                       ; preds = %if.then205
  %84 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %81, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2669
  %bf.load210 = load i32, i32* %84, align 8, !dbg !2669
  %and212 = and i32 %bf.load210, 1114112, !dbg !2672
  %tobool213 = icmp eq i32 %and212, 0, !dbg !2672
  br i1 %tobool213, label %if.then214, label %if.end238, !dbg !2673

if.then214:                                       ; preds = %if.then208
  %call215 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %local_live, i32 %83) #6, !dbg !2674
  br label %if.end238, !dbg !2674

if.else:                                          ; preds = %if.then205
  %call217 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %local_processed, i32 %83) #6, !dbg !2675
  %85 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2677
  %idxprom218 = zext i32 %83 to i64, !dbg !2677
  %live_length220 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %85, i64 %idxprom218, i32 2, !dbg !2677
  %86 = load i32, i32* %live_length220, align 4, !dbg !2678
  %add221 = add nsw i32 %86, %inc73, !dbg !2678
  store i32 %add221, i32* %live_length220, align 4, !dbg !2678
  br label %if.end238

if.else223:                                       ; preds = %if.then200
  %87 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %81, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2679
  %bf.load225 = load i32, i32* %87, align 8, !dbg !2679
  %and227 = and i32 %bf.load225, 268435456, !dbg !2681
  %tobool228 = icmp eq i32 %and227, 0, !dbg !2681
  br i1 %tobool228, label %land.lhs.true229, label %if.end238, !dbg !2682

land.lhs.true229:                                 ; preds = %if.else223
  %call230 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %artificial_uses, i32 %83) #6, !dbg !2683
  %tobool231 = icmp eq i32 %call230, 0, !dbg !2683
  br i1 %tobool231, label %if.then232, label %if.end238, !dbg !2684

if.then232:                                       ; preds = %land.lhs.true229
  %88 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2685
  %idxprom233 = zext i32 %83 to i64, !dbg !2685
  %live_length235 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %88, i64 %idxprom233, i32 2, !dbg !2685
  %89 = load i32, i32* %live_length235, align 4, !dbg !2687
  %inc236 = add nsw i32 %89, 1, !dbg !2687
  store i32 %inc236, i32* %live_length235, align 4, !dbg !2687
  br label %if.end238, !dbg !2688

if.end238:                                        ; preds = %if.then208, %land.lhs.true229, %if.else223, %if.then232, %if.else, %if.then214
  %cmp239 = icmp ugt i32 %83, 52, !dbg !2689
  br i1 %cmp239, label %if.then241, label %if.end291, !dbg !2690

if.then241:                                       ; preds = %if.end238
  %90 = load i32, i32* @optimize_size, align 4, !dbg !2691
  %tobool242 = icmp eq i32 %90, 0, !dbg !2691
  br i1 %tobool242, label %lor.lhs.false243, label %cond.end264, !dbg !2691

lor.lhs.false243:                                 ; preds = %if.then241
  %91 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2691
  %tobool244 = icmp eq i32 %91, 0, !dbg !2691
  br i1 %tobool244, label %cond.false252, label %land.lhs.true245, !dbg !2691

land.lhs.true245:                                 ; preds = %lor.lhs.false243
  %92 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2691
  %cfg247 = getelementptr inbounds %struct.function, %struct.function* %92, i64 0, i32 1, !dbg !2691
  %93 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg247, align 8, !dbg !2691
  %x_entry_block_ptr248 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %93, i64 0, i32 0, !dbg !2691
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr248, align 8, !dbg !2691
  %count249 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i64 0, i32 8, !dbg !2691
  %95 = load i64, i64* %count249, align 8, !dbg !2691
  %tobool250 = icmp eq i64 %95, 0, !dbg !2691
  br i1 %tobool250, label %cond.end264, label %cond.false252, !dbg !2691

cond.false252:                                    ; preds = %land.lhs.true245, %lor.lhs.false243
  %96 = load i32, i32* %frequency, align 8, !dbg !2691
  %.off1 = add i32 %96, 9, !dbg !2691
  %97 = icmp ugt i32 %.off1, 18, !dbg !2691
  br i1 %97, label %cond.true257, label %cond.end264, !dbg !2691

cond.true257:                                     ; preds = %cond.false252
  %div260 = sdiv i32 %96, 10, !dbg !2691
  br label %cond.end264, !dbg !2691

cond.end264:                                      ; preds = %land.lhs.true245, %if.then241, %cond.true257, %cond.false252
  %cond265 = phi i32 [ 1000, %land.lhs.true245 ], [ 1000, %if.then241 ], [ %div260, %cond.true257 ], [ 1, %cond.false252 ], !dbg !2691
  %98 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2692
  %idxprom266 = zext i32 %83 to i64, !dbg !2692
  %freq = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %98, i64 %idxprom266, i32 0, !dbg !2692
  %99 = load i32, i32* %freq, align 4, !dbg !2693
  %add268 = add nsw i32 %99, %cond265, !dbg !2693
  store i32 %add268, i32* %freq, align 4, !dbg !2693
  %100 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2694
  %basic_block271 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %100, i64 %idxprom266, i32 6, !dbg !2694
  %101 = load i32, i32* %basic_block271, align 4, !dbg !2694
  %cmp272 = icmp eq i32 %101, 0, !dbg !2695
  br i1 %cmp272, label %if.then274, label %if.else278, !dbg !2696

if.then274:                                       ; preds = %cond.end264
  %102 = load i32, i32* %index282, align 8, !dbg !2697
  store i32 %102, i32* %basic_block271, align 4, !dbg !2698
  br label %if.end291, !dbg !2699

if.else278:                                       ; preds = %cond.end264
  %103 = load i32, i32* %index282, align 8, !dbg !2700
  %cmp283 = icmp eq i32 %101, %103, !dbg !2701
  br i1 %cmp283, label %if.end291, label %if.then285, !dbg !2702

if.then285:                                       ; preds = %if.else278
  store i32 -1, i32* %basic_block271, align 4, !dbg !2703
  br label %if.end291, !dbg !2704

if.end291:                                        ; preds = %if.else278, %if.then274, %if.then285, %if.end238
  %104 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %81, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2705
  %bf.load293 = load i32, i32* %104, align 8, !dbg !2705
  %and295 = and i32 %bf.load293, 12582912, !dbg !2707
  %tobool296 = icmp eq i32 %and295, 0, !dbg !2707
  br i1 %tobool296, label %if.then297, label %if.end299, !dbg !2708

if.then297:                                       ; preds = %if.end291
  %call298 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %do_not_gen, i32 %83) #6, !dbg !2709
  %bf.load301.pre = load i32, i32* %104, align 8, !dbg !2710
  br label %if.end299, !dbg !2709

if.end299:                                        ; preds = %if.end291, %if.then297
  %bf.load301 = phi i32 [ %bf.load293, %if.end291 ], [ %bf.load301.pre, %if.then297 ], !dbg !2710
  %and303 = and i32 %bf.load301, 1114112, !dbg !2712
  %tobool304 = icmp eq i32 %and303, 0, !dbg !2712
  br i1 %tobool304, label %if.then305, label %for.inc309, !dbg !2713

if.then305:                                       ; preds = %if.end299
  %call306 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live, i32 %83) #6, !dbg !2714
  br label %for.inc309, !dbg !2714

for.inc309:                                       ; preds = %lor.lhs.false194, %if.end299, %if.then305
  %incdec.ptr310 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.1, i64 1, !dbg !2715
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr310, metadata !2442, metadata !DIExpression()), !dbg !2490
  br label %for.cond186, !dbg !2716, !llvm.loop !2717

for.end311:                                       ; preds = %for.cond186
  %105 = load %struct.df*, %struct.df** @df, align 8, !dbg !2719
  %insns312 = getelementptr inbounds %struct.df, %struct.df* %105, i64 0, i32 10, !dbg !2719
  %106 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns312, align 8, !dbg !2719
  %arrayidx314 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %106, i64 %idxprom145, !dbg !2719
  %107 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx314, align 8, !dbg !2719
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %107, i64 0, i32 2, !dbg !2719
  %108 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata %union.df_ref_d** %108, metadata !2443, metadata !DIExpression()), !dbg !2490
  br label %for.cond315, !dbg !2720

for.cond315:                                      ; preds = %for.inc387, %for.end311
  %use_rec.1 = phi %union.df_ref_d** [ %108, %for.end311 ], [ %incdec.ptr388, %for.inc387 ], !dbg !2721
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !2443, metadata !DIExpression()), !dbg !2490
  %109 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !2722
  %tobool316 = icmp eq %union.df_ref_d* %109, null, !dbg !2723
  br i1 %tobool316, label %cleanup.loopexit, label %for.body317, !dbg !2723

for.body317:                                      ; preds = %for.cond315
  %regno320 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %109, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2724
  %110 = load i32, i32* %regno320, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %110, metadata !2489, metadata !DIExpression()), !dbg !2725
  %cmp321 = icmp ugt i32 %110, 52, !dbg !2726
  br i1 %cmp321, label %if.then323, label %if.end375, !dbg !2728

if.then323:                                       ; preds = %for.body317
  %111 = load i32, i32* @optimize_size, align 4, !dbg !2729
  %tobool324 = icmp eq i32 %111, 0, !dbg !2729
  br i1 %tobool324, label %lor.lhs.false325, label %cond.end346, !dbg !2729

lor.lhs.false325:                                 ; preds = %if.then323
  %112 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2729
  %tobool326 = icmp eq i32 %112, 0, !dbg !2729
  br i1 %tobool326, label %cond.false334, label %land.lhs.true327, !dbg !2729

land.lhs.true327:                                 ; preds = %lor.lhs.false325
  %113 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2729
  %cfg329 = getelementptr inbounds %struct.function, %struct.function* %113, i64 0, i32 1, !dbg !2729
  %114 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg329, align 8, !dbg !2729
  %x_entry_block_ptr330 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %114, i64 0, i32 0, !dbg !2729
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr330, align 8, !dbg !2729
  %count331 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i64 0, i32 8, !dbg !2729
  %116 = load i64, i64* %count331, align 8, !dbg !2729
  %tobool332 = icmp eq i64 %116, 0, !dbg !2729
  br i1 %tobool332, label %cond.end346, label %cond.false334, !dbg !2729

cond.false334:                                    ; preds = %land.lhs.true327, %lor.lhs.false325
  %117 = load i32, i32* %frequency, align 8, !dbg !2729
  %.off = add i32 %117, 9, !dbg !2729
  %118 = icmp ugt i32 %.off, 18, !dbg !2729
  br i1 %118, label %cond.true339, label %cond.end346, !dbg !2729

cond.true339:                                     ; preds = %cond.false334
  %div342 = sdiv i32 %117, 10, !dbg !2729
  br label %cond.end346, !dbg !2729

cond.end346:                                      ; preds = %land.lhs.true327, %if.then323, %cond.true339, %cond.false334
  %cond347 = phi i32 [ 1000, %land.lhs.true327 ], [ 1000, %if.then323 ], [ %div342, %cond.true339 ], [ 1, %cond.false334 ], !dbg !2729
  %119 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2731
  %idxprom348 = zext i32 %110 to i64, !dbg !2731
  %freq350 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %119, i64 %idxprom348, i32 0, !dbg !2731
  %120 = load i32, i32* %freq350, align 4, !dbg !2732
  %add351 = add nsw i32 %120, %cond347, !dbg !2732
  store i32 %add351, i32* %freq350, align 4, !dbg !2732
  %121 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2733
  %basic_block354 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %121, i64 %idxprom348, i32 6, !dbg !2733
  %122 = load i32, i32* %basic_block354, align 4, !dbg !2733
  %cmp355 = icmp eq i32 %122, 0, !dbg !2735
  br i1 %cmp355, label %if.then357, label %if.else362, !dbg !2736

if.then357:                                       ; preds = %cond.end346
  %123 = load i32, i32* %index282, align 8, !dbg !2737
  store i32 %123, i32* %basic_block354, align 4, !dbg !2738
  br label %if.end375, !dbg !2739

if.else362:                                       ; preds = %cond.end346
  %124 = load i32, i32* %index282, align 8, !dbg !2740
  %cmp367 = icmp eq i32 %122, %124, !dbg !2742
  br i1 %cmp367, label %if.end375, label %if.then369, !dbg !2743

if.then369:                                       ; preds = %if.else362
  store i32 -1, i32* %basic_block354, align 4, !dbg !2744
  br label %if.end375, !dbg !2745

if.end375:                                        ; preds = %if.else362, %if.then357, %if.then369, %for.body317
  %call376 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %live, i32 %110) #6, !dbg !2746
  %tobool377 = icmp eq i32 %call376, 0, !dbg !2746
  br i1 %tobool377, label %if.then378, label %for.inc387, !dbg !2748

if.then378:                                       ; preds = %if.end375
  %call379 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live, i32 %110) #6, !dbg !2749
  %125 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2751
  %idxprom380 = zext i32 %110 to i64, !dbg !2751
  %live_length382 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %125, i64 %idxprom380, i32 2, !dbg !2751
  %126 = load i32, i32* %live_length382, align 4, !dbg !2752
  %inc383 = add nsw i32 %126, 1, !dbg !2752
  store i32 %inc383, i32* %live_length382, align 4, !dbg !2752
  %call384 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %local_live, i32 %110) #6, !dbg !2753
  %call385 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %local_processed, i32 %110) #6, !dbg !2754
  br label %for.inc387, !dbg !2755

for.inc387:                                       ; preds = %if.end375, %if.then378
  %incdec.ptr388 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !2756
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr388, metadata !2443, metadata !DIExpression()), !dbg !2490
  br label %for.cond315, !dbg !2757, !llvm.loop !2758

cleanup.loopexit:                                 ; preds = %for.cond315
  br label %cleanup, !dbg !2760

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false56, %land.lhs.true
  %luid.1 = phi i32 [ %luid.0, %land.lhs.true ], [ %luid.0, %lor.lhs.false56 ], [ %inc73, %cleanup.loopexit ], !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.1, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #8, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #8, !dbg !2760
  %127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2557
  %rt_rtx398 = bitcast %union.rtunion_def* %127 to %struct.rtx_def**, !dbg !2557
  br label %for.cond35, !dbg !2557, !llvm.loop !2761

for.end399:                                       ; preds = %land.rhs, %for.cond35
  %luid.0.lcssa = phi i32 [ %luid.0, %land.rhs ], [ %luid.0, %for.cond35 ], !dbg !2555
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %luid.0.lcssa, metadata !2444, metadata !DIExpression()), !dbg !2490
  %call400 = call zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def* %live, %struct.bitmap_head_def* %local_processed) #6, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %live, i32 0, i32* nonnull %regno) #7, !dbg !2764
  br label %for.cond401, !dbg !2764

for.cond401:                                      ; preds = %for.body404, %for.end399
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  %call402 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2766
  %tobool403 = icmp eq i8 %call402, 0, !dbg !2764
  br i1 %tobool403, label %for.end410, label %for.body404, !dbg !2764

for.body404:                                      ; preds = %for.cond401
  %128 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2768
  %129 = load i32, i32* %regno, align 4, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %129, metadata !2446, metadata !DIExpression()), !dbg !2490
  %idxprom405 = zext i32 %129 to i64, !dbg !2768
  %live_length407 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %128, i64 %idxprom405, i32 2, !dbg !2768
  %130 = load i32, i32* %live_length407, align 4, !dbg !2769
  %add408 = add nsw i32 %130, %luid.0.lcssa, !dbg !2769
  store i32 %add408, i32* %live_length407, align 4, !dbg !2769
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2445, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2446, metadata !DIExpression(DW_OP_deref)), !dbg !2490
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno) #7, !dbg !2766
  br label %for.cond401, !dbg !2766, !llvm.loop !2770

for.end410:                                       ; preds = %for.cond401
  call void @bitmap_clear(%struct.bitmap_head_def* %local_processed) #6, !dbg !2772
  call void @bitmap_clear(%struct.bitmap_head_def* %local_live) #6, !dbg !2773
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #8, !dbg !2774
  ret void, !dbg !2774
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2775 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %start_bit, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2787, metadata !DIExpression()), !dbg !2788
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2789
  %1 = load i64, i64* %0, align 8, !dbg !2789
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2790
  store i64 %1, i64* %2, align 8, !dbg !2790
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2791
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2792
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2793
  %div = lshr i32 %start_bit, 7, !dbg !2796
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2798
  br label %while.body, !dbg !2798

while.body:                                       ; preds = %entry, %if.end5
  %4 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %5 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %6 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %.in = phi i64 [ %1, %entry ], [ %11, %if.end5 ]
  %7 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ]
  %8 = phi %struct.bitmap_element_def* [ %3, %entry ], [ %12, %if.end5 ], !dbg !2799
  %9 = inttoptr i64 %.in to i64*, !dbg !2798
  %tobool = icmp eq %struct.bitmap_element_def* %8, null, !dbg !2800
  br i1 %tobool, label %if.then, label %if.end, !dbg !2801

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2802
  br label %while.end, !dbg !2804

if.end:                                           ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i64 0, i32 2, !dbg !2805
  %10 = load i32, i32* %indx, align 8, !dbg !2805
  %cmp = icmp ult i32 %10, %div, !dbg !2806
  br i1 %cmp, label %if.end5, label %while.end.loopexit, !dbg !2807

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %9, align 8, !dbg !2808
  store i64 %11, i64* %2, align 8, !dbg !2809
  %12 = inttoptr i64 %11 to %struct.bitmap_element_def*, !dbg !2798
  br label %while.body, !dbg !2798, !llvm.loop !2810

while.end.loopexit:                               ; preds = %if.end
  %.lcssa11 = phi %struct.bitmap_element_def* [ %4, %if.end ]
  %.lcssa9 = phi %struct.bitmap_element_def* [ %5, %if.end ]
  %.lcssa7 = phi %struct.bitmap_element_def* [ %6, %if.end ]
  br label %while.end, !dbg !2812

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %13 = phi %struct.bitmap_element_def* [ %.lcssa11, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %14 = phi %struct.bitmap_element_def* [ %.lcssa9, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %15 = phi %struct.bitmap_element_def* [ %.lcssa7, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2812
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2814
  %16 = load i32, i32* %indx9, align 8, !dbg !2814
  %cmp11 = icmp eq i32 %16, %div, !dbg !2815
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2816

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 2, !dbg !2817
  %17 = load i32, i32* %indx14, align 8, !dbg !2817
  %mul = shl i32 %17, 7, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2786, metadata !DIExpression()), !dbg !2788
  br label %if.end15, !dbg !2819

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ %start_bit, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2786, metadata !DIExpression()), !dbg !2788
  %div16 = lshr i32 %start_bit.addr.0, 6, !dbg !2820
  %rem = and i32 %div16, 1, !dbg !2821
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2822
  store i32 %rem, i32* %word_no, align 8, !dbg !2823
  %idxprom = zext i32 %rem to i64, !dbg !2824
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 3, i64 %idxprom, !dbg !2824
  %18 = load i64, i64* %arrayidx, align 8, !dbg !2824
  %rem20 = and i32 %start_bit.addr.0, 63, !dbg !2825
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2826
  %sh_prom = zext i32 %rem20 to i64, !dbg !2827
  %shr = lshr i64 %18, %sh_prom, !dbg !2827
  store i64 %shr, i64* %bits21, align 8, !dbg !2827
  %tobool23 = icmp eq i64 %shr, 0, !dbg !2828
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2828
  %add = add i32 %start_bit.addr.0, %lnot.ext, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %add, metadata !2786, metadata !DIExpression()), !dbg !2788
  store i32 %add, i32* %bit_no, align 4, !dbg !2830
  ret void, !dbg !2831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2832 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2836, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2837, metadata !DIExpression()), !dbg !2841
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2842
  %0 = load i64, i64* %bits, align 8, !dbg !2842
  %tobool = icmp eq i64 %0, 0, !dbg !2843
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2844

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2845
  br label %next_bit, !dbg !2848

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2838), !dbg !2849
  br label %while.cond, !dbg !2848

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2850
  %and = and i64 %2, 1, !dbg !2851
  %tobool2 = icmp eq i64 %and, 0, !dbg !2852
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2848

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2853
  store i64 %shr, i64* %bits, align 8, !dbg !2853
  %3 = load i32, i32* %bit_no, align 4, !dbg !2855
  %add = add i32 %3, 1, !dbg !2855
  store i32 %add, i32* %bit_no, align 4, !dbg !2855
  %.pre = load i64, i64* %bits, align 8, !dbg !2850
  br label %while.cond, !dbg !2848, !llvm.loop !2856

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2858
  %sub = add i32 %4, 63, !dbg !2859
  %div = and i32 %sub, -64, !dbg !2860
  store i32 %div, i32* %bit_no, align 4, !dbg !2861
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2862
  %5 = load i32, i32* %word_no, align 8, !dbg !2863
  %inc = add i32 %5, 1, !dbg !2863
  store i32 %inc, i32* %word_no, align 8, !dbg !2863
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2864
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2864
  br label %while.body6, !dbg !2865

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2866

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2867
  %cmp = icmp eq i32 %8, 2, !dbg !2868
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2864
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2866

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2845
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2845
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2845
  store i64 %10, i64* %bits, align 8, !dbg !2869
  %tobool14 = icmp eq i64 %10, 0, !dbg !2870
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2872

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2873
  %add17 = add i32 %11, 64, !dbg !2873
  store i32 %add17, i32* %bit_no, align 4, !dbg !2873
  %12 = load i32, i32* %word_no, align 8, !dbg !2874
  %inc19 = add i32 %12, 1, !dbg !2874
  store i32 %inc19, i32* %word_no, align 8, !dbg !2874
  br label %while.cond7, !dbg !2866, !llvm.loop !2875

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2864
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2877
  %14 = load i64, i64* %13, align 8, !dbg !2877
  store i64 %14, i64* %6, align 8, !dbg !2878
  %tobool24 = icmp eq i64 %14, 0, !dbg !2879
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2881

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2881
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2882
  %16 = load i32, i32* %indx, align 8, !dbg !2882
  %mul28 = shl i32 %16, 7, !dbg !2883
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2884
  store i32 0, i32* %word_no, align 8, !dbg !2885
  br label %while.body6, !dbg !2865, !llvm.loop !2886

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2888

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2888

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2841
  ret i8 %retval.0, !dbg !2888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2889 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2894, metadata !DIExpression()), !dbg !2895
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2896
  %0 = load i64, i64* %bits, align 8, !dbg !2897
  %shr = lshr i64 %0, 1, !dbg !2897
  store i64 %shr, i64* %bits, align 8, !dbg !2897
  %1 = load i32, i32* %bit_no, align 4, !dbg !2898
  %add = add i32 %1, 1, !dbg !2898
  store i32 %add, i32* %bit_no, align 4, !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_ri() local_unnamed_addr #4 !dbg !2900 {
entry:
  %0 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2901
  %tobool = icmp eq %struct.reg_info_t* %0, null, !dbg !2901
  %1 = bitcast %struct.reg_info_t* %0 to i8*, !dbg !2901
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2901

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2901
  %.pre = load i8*, i8** bitcast (%struct.reg_info_t** @reg_info_p to i8**), align 8, !dbg !2902
  br label %cond.end, !dbg !2901

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i8* [ %1, %entry ], [ %.pre, %cond.true ], !dbg !2902
  store i64 0, i64* @reg_info_p_size, align 8, !dbg !2903
  tail call void @free(i8* %2) #6, !dbg !2904
  store %struct.reg_info_t* null, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2905
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2906
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %3) #6, !dbg !2906
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2906
  ret void, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @regstat_get_setjmp_crosses() local_unnamed_addr #4 !dbg !2908 {
entry:
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @setjmp_crosses, align 8, !dbg !2911
  ret %struct.bitmap_head_def* %0, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local void @regstat_compute_calls_crossed() local_unnamed_addr #4 !dbg !2913 {
entry:
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @df_bitmap_obstack) #6, !dbg !2917
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2916, metadata !DIExpression()), !dbg !2918
  %0 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !2919
  %tobool = icmp eq %struct.reg_info_t* %0, null, !dbg !2919
  br i1 %tobool, label %do.body, label %cond.true, !dbg !2919

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 501, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2919
  br label %do.body, !dbg !2919

do.body:                                          ; preds = %entry, %cond.true
  %1 = load i8, i8* @timevar_enable, align 1, !dbg !2920
  %tobool1 = icmp eq i8 %1, 0, !dbg !2920
  br i1 %tobool1, label %do.end, label %if.then, !dbg !2923

if.then:                                          ; preds = %do.body
  tail call void @timevar_push_1(i32 37) #6, !dbg !2920
  br label %do.end, !dbg !2920

do.end:                                           ; preds = %do.body, %if.then
  %call2 = tail call i32 @max_reg_num() #6, !dbg !2924
  store i32 %call2, i32* @max_regno, align 4, !dbg !2925
  %conv = sext i32 %call2 to i64, !dbg !2926
  store i64 %conv, i64* @reg_info_p_size, align 8, !dbg !2927
  %call4 = tail call i8* @xcalloc(i64 %conv, i64 28) #6, !dbg !2928
  store i8* %call4, i8** bitcast (%struct.reg_info_t** @reg_info_p to i8**), align 8, !dbg !2929
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2930
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2930
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2930
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2930
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2930
  br label %for.cond, !dbg !2930

for.cond:                                         ; preds = %for.body, %do.end
  %5 = phi %struct.control_flow_graph* [ %3, %do.end ], [ %.pre1, %for.body ], !dbg !2932
  %.pn = phi %struct.basic_block_def* [ %4, %do.end ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2934
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2915, metadata !DIExpression()), !dbg !2918
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2932
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2932
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !2932
  br i1 %cmp, label %for.end, label %for.body, !dbg !2930

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2935
  %7 = load i32, i32* %index, align 8, !dbg !2935
  tail call fastcc void @regstat_bb_compute_calls_crossed(i32 %7, %struct.bitmap_head_def* %call) #7, !dbg !2937
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2932
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2938
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !2932
  br label %for.cond, !dbg !2932, !llvm.loop !2939

for.end:                                          ; preds = %for.cond
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2916, metadata !DIExpression()), !dbg !2918
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !2942
  %tobool10 = icmp eq i8 %8, 0, !dbg !2942
  br i1 %tobool10, label %do.end14, label %if.then11, !dbg !2945

if.then11:                                        ; preds = %for.end
  tail call void @timevar_pop_1(i32 37) #6, !dbg !2942
  br label %do.end14, !dbg !2942

do.end14:                                         ; preds = %for.end, %if.then11
  ret void, !dbg !2946
}

; Function Attrs: nounwind uwtable
define internal fastcc void @regstat_bb_compute_calls_crossed(i32 %bb_index, %struct.bitmap_head_def* %live) unnamed_addr #4 !dbg !2947 {
entry:
  %regno36 = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !2951, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %live, metadata !2952, metadata !DIExpression()), !dbg !2981
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2982
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2982
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2982
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !2982
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2982
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !2982
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2982

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !2982
  br label %cond.end, !dbg !2982

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2982
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb_index) #7, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2953, metadata !DIExpression()), !dbg !2981
  %call4 = tail call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %call) #6, !dbg !2983
  tail call void @bitmap_copy(%struct.bitmap_head_def* %live, %struct.bitmap_head_def* %call4) #6, !dbg !2984
  %call5 = tail call fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %bb_index) #7, !dbg !2985
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call5, metadata !2955, metadata !DIExpression()), !dbg !2981
  br label %for.cond, !dbg !2986

for.cond:                                         ; preds = %for.inc, %cond.end
  %def_rec.0 = phi %union.df_ref_d** [ %call5, %cond.end ], [ %incdec.ptr, %for.inc ], !dbg !2987
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !2955, metadata !DIExpression()), !dbg !2981
  %3 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !2988
  %tobool6 = icmp eq %union.df_ref_d* %3, null, !dbg !2989
  br i1 %tobool6, label %for.end, label %for.body, !dbg !2989

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %3, metadata !2957, metadata !DIExpression()), !dbg !2990
  %4 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2991
  %bf.load = load i32, i32* %4, align 8, !dbg !2991
  %and = and i32 %bf.load, 131072, !dbg !2993
  %cmp = icmp eq i32 %and, 0, !dbg !2994
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2995

if.then:                                          ; preds = %for.body
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %3, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2996
  %5 = load i32, i32* %regno, align 8, !dbg !2996
  %call9 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live, i32 %5) #6, !dbg !2997
  br label %for.inc, !dbg !2997

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !2998
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2955, metadata !DIExpression()), !dbg !2981
  br label %for.cond, !dbg !2999, !llvm.loop !3000

for.end:                                          ; preds = %for.cond
  %call10 = tail call fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %bb_index) #7, !dbg !3002
  call void @llvm.dbg.value(metadata %union.df_ref_d** %call10, metadata !2956, metadata !DIExpression()), !dbg !2981
  br label %for.cond11, !dbg !3003

for.cond11:                                       ; preds = %for.inc24, %for.end
  %use_rec.0 = phi %union.df_ref_d** [ %call10, %for.end ], [ %incdec.ptr25, %for.inc24 ], !dbg !3004
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !2956, metadata !DIExpression()), !dbg !2981
  %6 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !3005
  %tobool12 = icmp eq %union.df_ref_d* %6, null, !dbg !3006
  br i1 %tobool12, label %for.end26, label %for.body13, !dbg !3006

for.body13:                                       ; preds = %for.cond11
  call void @llvm.dbg.value(metadata %union.df_ref_d* %6, metadata !2961, metadata !DIExpression()), !dbg !3007
  %7 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3008
  %bf.load15 = load i32, i32* %7, align 8, !dbg !3008
  %and17 = and i32 %bf.load15, 131072, !dbg !3010
  %cmp18 = icmp eq i32 %and17, 0, !dbg !3011
  br i1 %cmp18, label %if.then19, label %for.inc24, !dbg !3012

if.then19:                                        ; preds = %for.body13
  %regno21 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3013
  %8 = load i32, i32* %regno21, align 8, !dbg !3013
  %call22 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live, i32 %8) #6, !dbg !3014
  br label %for.inc24, !dbg !3014

for.inc24:                                        ; preds = %for.body13, %if.then19
  %incdec.ptr25 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !3015
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr25, metadata !2956, metadata !DIExpression()), !dbg !2981
  br label %for.cond11, !dbg !3016, !llvm.loop !3017

for.end26:                                        ; preds = %for.cond11
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !3019
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3019
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3019
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 1, !dbg !3019
  %10 = bitcast i32* %regno36 to i8*, !dbg !3020
  %11 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3021
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3022
  br label %for.cond27, !dbg !3019

for.cond27:                                       ; preds = %cleanup, %for.end26
  %insn.0.in = phi %struct.rtx_def** [ %end_, %for.end26 ], [ %rt_rtx132, %cleanup ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3026
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2954, metadata !DIExpression()), !dbg !2981
  %tobool28 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3027
  br i1 %tobool28, label %for.end133, label %land.rhs, !dbg !3027

land.rhs:                                         ; preds = %for.cond27
  %12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3027
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 0, !dbg !3027
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3027
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3027
  %rt_rtx = bitcast %union.rtunion_def* %14 to %struct.rtx_def**, !dbg !3027
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3027
  %cmp31 = icmp eq %struct.rtx_def* %insn.0, %15, !dbg !3027
  br i1 %cmp31, label %for.end133, label %for.body32, !dbg !3019

for.body32:                                       ; preds = %land.rhs
  %arrayidx35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3028
  %rt_int = bitcast %union.rtunion_def* %arrayidx35 to i32*, !dbg !3028
  %16 = load i32, i32* %rt_int, align 8, !dbg !3028
  call void @llvm.dbg.value(metadata i32 %16, metadata !2965, metadata !DIExpression()), !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8, !dbg !3029
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3030
  %bf.load37 = load i32, i32* %17, align 8, !dbg !3030
  %bf.clear = and i32 %bf.load37, 65535, !dbg !3030
  %cmp38 = icmp eq i32 %bf.clear, 8, !dbg !3030
  br i1 %cmp38, label %if.end51, label %lor.lhs.false, !dbg !3030

lor.lhs.false:                                    ; preds = %for.body32
  %cmp41 = icmp eq i32 %bf.clear, 7, !dbg !3030
  br i1 %cmp41, label %if.end51, label %lor.lhs.false42, !dbg !3030

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %cmp45 = icmp eq i32 %bf.clear, 9, !dbg !3030
  br i1 %cmp45, label %if.end51, label %lor.lhs.false46, !dbg !3030

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %cmp49 = icmp eq i32 %bf.clear, 10, !dbg !3030
  br i1 %cmp49, label %if.end51, label %cleanup, !dbg !3032

if.end51:                                         ; preds = %lor.lhs.false46, %lor.lhs.false42, %lor.lhs.false, %for.body32
  %cmp54 = icmp eq i32 %bf.clear, 10, !dbg !3033
  br i1 %cmp54, label %if.then55, label %if.end83, !dbg !3034

if.then55:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #8, !dbg !3035
  call void @llvm.dbg.value(metadata i32* %regno36, metadata !2969, metadata !DIExpression(DW_OP_deref)), !dbg !3020
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %live, i32 0, i32* nonnull %regno36) #7, !dbg !3036
  br label %for.cond56, !dbg !3036

for.cond56:                                       ; preds = %cond.end77, %if.then55
  call void @llvm.dbg.value(metadata i32* %regno36, metadata !2969, metadata !DIExpression(DW_OP_deref)), !dbg !3020
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call57 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno36) #7, !dbg !3037
  %tobool58 = icmp eq i8 %call57, 0, !dbg !3036
  br i1 %tobool58, label %for.end82, label %for.body59, !dbg !3036

for.body59:                                       ; preds = %for.cond56
  %18 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3038
  %19 = load i32, i32* %regno36, align 4, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %19, metadata !2969, metadata !DIExpression()), !dbg !3020
  %idxprom = zext i32 %19 to i64, !dbg !3038
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %18, i64 %idxprom, i32 3, !dbg !3038
  %20 = load i32, i32* %calls_crossed, align 4, !dbg !3039
  %inc = add nsw i32 %20, 1, !dbg !3039
  store i32 %inc, i32* %calls_crossed, align 4, !dbg !3039
  %21 = load i32, i32* @optimize_size, align 4, !dbg !3040
  %tobool61 = icmp eq i32 %21, 0, !dbg !3040
  br i1 %tobool61, label %lor.lhs.false62, label %cond.end77, !dbg !3040

lor.lhs.false62:                                  ; preds = %for.body59
  %22 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3040
  %tobool63 = icmp eq i32 %22, 0, !dbg !3040
  br i1 %tobool63, label %cond.false68, label %land.lhs.true, !dbg !3040

land.lhs.true:                                    ; preds = %lor.lhs.false62
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3040
  %cfg65 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !3040
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg65, align 8, !dbg !3040
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 0, !dbg !3040
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3040
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 8, !dbg !3040
  %26 = load i64, i64* %count, align 8, !dbg !3040
  %tobool66 = icmp eq i64 %26, 0, !dbg !3040
  br i1 %tobool66, label %cond.end77, label %cond.false68, !dbg !3040

cond.false68:                                     ; preds = %land.lhs.true, %lor.lhs.false62
  %27 = load i32, i32* %frequency, align 8, !dbg !3040
  %.off = add i32 %27, 9, !dbg !3040
  %28 = icmp ugt i32 %.off, 18, !dbg !3040
  br i1 %28, label %cond.true70, label %cond.end77, !dbg !3040

cond.true70:                                      ; preds = %cond.false68
  %div73 = sdiv i32 %27, 10, !dbg !3040
  br label %cond.end77, !dbg !3040

cond.end77:                                       ; preds = %land.lhs.true, %for.body59, %cond.true70, %cond.false68
  %cond78 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %for.body59 ], [ %div73, %cond.true70 ], [ 1, %cond.false68 ], !dbg !3040
  %29 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3041
  %30 = load i32, i32* %regno36, align 4, !dbg !3041
  call void @llvm.dbg.value(metadata i32 %30, metadata !2969, metadata !DIExpression()), !dbg !3020
  %idxprom79 = zext i32 %30 to i64, !dbg !3041
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %29, i64 %idxprom79, i32 4, !dbg !3041
  %31 = load i32, i32* %freq_calls_crossed, align 4, !dbg !3042
  %add = add nsw i32 %31, %cond78, !dbg !3042
  store i32 %add, i32* %freq_calls_crossed, align 4, !dbg !3042
  call void @llvm.dbg.value(metadata i32* %regno36, metadata !2969, metadata !DIExpression(DW_OP_deref)), !dbg !3020
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %regno36) #7, !dbg !3037
  br label %for.cond56, !dbg !3037, !llvm.loop !3043

for.end82:                                        ; preds = %for.cond56
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #8, !dbg !3045
  br label %if.end83, !dbg !3046

if.end83:                                         ; preds = %for.end82, %if.end51
  %32 = load %struct.df*, %struct.df** @df, align 8, !dbg !3047
  %insns = getelementptr inbounds %struct.df, %struct.df* %32, i64 0, i32 10, !dbg !3047
  %33 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3047
  %idxprom84 = zext i32 %16 to i64, !dbg !3047
  %arrayidx85 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %33, i64 %idxprom84, !dbg !3047
  %34 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx85, align 8, !dbg !3047
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %34, i64 0, i32 1, !dbg !3047
  %35 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3047
  call void @llvm.dbg.value(metadata %union.df_ref_d** %35, metadata !2955, metadata !DIExpression()), !dbg !2981
  br label %for.cond86, !dbg !3048

for.cond86:                                       ; preds = %for.inc111, %if.end83
  %def_rec.1 = phi %union.df_ref_d** [ %35, %if.end83 ], [ %incdec.ptr112, %for.inc111 ], !dbg !3049
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.1, metadata !2955, metadata !DIExpression()), !dbg !2981
  %36 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.1, align 8, !dbg !3050
  %tobool87 = icmp eq %union.df_ref_d* %36, null, !dbg !3051
  br i1 %tobool87, label %for.end113, label %for.body88, !dbg !3051

for.body88:                                       ; preds = %for.cond86
  call void @llvm.dbg.value(metadata %union.df_ref_d* %36, metadata !2973, metadata !DIExpression()), !dbg !3052
  %bf.load90 = load i32, i32* %17, align 8, !dbg !3053
  %bf.clear91 = and i32 %bf.load90, 65535, !dbg !3053
  %cmp92 = icmp eq i32 %bf.clear91, 10, !dbg !3053
  br i1 %cmp92, label %lor.lhs.false93, label %for.body88.if.then99_crit_edge, !dbg !3055

for.body88.if.then99_crit_edge:                   ; preds = %for.body88
  %.phi.trans.insert = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %36, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3056
  %bf.load101.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3059
  br label %if.then99, !dbg !3055

lor.lhs.false93:                                  ; preds = %for.body88
  %37 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %36, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3060
  %bf.load95 = load i32, i32* %37, align 8, !dbg !3060
  %and97 = and i32 %bf.load95, 12582912, !dbg !3061
  %tobool98 = icmp eq i32 %and97, 0, !dbg !3061
  br i1 %tobool98, label %if.then99, label %for.inc111, !dbg !3062

if.then99:                                        ; preds = %for.body88.if.then99_crit_edge, %lor.lhs.false93
  %bf.load101 = phi i32 [ %bf.load101.pre, %for.body88.if.then99_crit_edge ], [ %bf.load95, %lor.lhs.false93 ], !dbg !3059
  %and103 = and i32 %bf.load101, 1114112, !dbg !3063
  %tobool104 = icmp eq i32 %and103, 0, !dbg !3063
  br i1 %tobool104, label %if.then105, label %for.inc111, !dbg !3064

if.then105:                                       ; preds = %if.then99
  %regno107 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %36, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3065
  %38 = load i32, i32* %regno107, align 8, !dbg !3065
  %call108 = call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %live, i32 %38) #6, !dbg !3066
  br label %for.inc111, !dbg !3066

for.inc111:                                       ; preds = %lor.lhs.false93, %if.then99, %if.then105
  %incdec.ptr112 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.1, i64 1, !dbg !3067
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr112, metadata !2955, metadata !DIExpression()), !dbg !2981
  br label %for.cond86, !dbg !3068, !llvm.loop !3069

for.end113:                                       ; preds = %for.cond86
  %39 = load %struct.df*, %struct.df** @df, align 8, !dbg !3071
  %insns114 = getelementptr inbounds %struct.df, %struct.df* %39, i64 0, i32 10, !dbg !3071
  %40 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns114, align 8, !dbg !3071
  %arrayidx116 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %40, i64 %idxprom84, !dbg !3071
  %41 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx116, align 8, !dbg !3071
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %41, i64 0, i32 2, !dbg !3071
  %42 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !3071
  call void @llvm.dbg.value(metadata %union.df_ref_d** %42, metadata !2956, metadata !DIExpression()), !dbg !2981
  br label %for.cond117, !dbg !3072

for.cond117:                                      ; preds = %for.body119, %for.end113
  %use_rec.1 = phi %union.df_ref_d** [ %42, %for.end113 ], [ %incdec.ptr125, %for.body119 ], !dbg !3073
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !2956, metadata !DIExpression()), !dbg !2981
  %43 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !3074
  %tobool118 = icmp eq %union.df_ref_d* %43, null, !dbg !3075
  br i1 %tobool118, label %cleanup.loopexit, label %for.body119, !dbg !3075

for.body119:                                      ; preds = %for.cond117
  %regno122 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %43, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3076
  %44 = load i32, i32* %regno122, align 8, !dbg !3076
  %call123 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live, i32 %44) #6, !dbg !3077
  %incdec.ptr125 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !3078
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr125, metadata !2956, metadata !DIExpression()), !dbg !2981
  br label %for.cond117, !dbg !3079, !llvm.loop !3080

cleanup.loopexit:                                 ; preds = %for.cond117
  br label %cleanup, !dbg !3082

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !3082
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3027
  %rt_rtx132 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**, !dbg !3027
  br label %for.cond27, !dbg !3027, !llvm.loop !3083

for.end133:                                       ; preds = %land.rhs, %for.cond27
  ret void, !dbg !3085
}

; Function Attrs: nounwind uwtable
define dso_local void @regstat_free_calls_crossed() local_unnamed_addr #4 !dbg !3086 {
entry:
  %0 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3087
  %tobool = icmp eq %struct.reg_info_t* %0, null, !dbg !3087
  %1 = bitcast %struct.reg_info_t* %0 to i8*, !dbg !3087
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3087

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3087
  %.pre = load i8*, i8** bitcast (%struct.reg_info_t** @reg_info_p to i8**), align 8, !dbg !3088
  br label %cond.end, !dbg !3087

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i8* [ %1, %entry ], [ %.pre, %cond.true ], !dbg !3088
  store i64 0, i64* @reg_info_p_size, align 8, !dbg !3089
  tail call void @free(i8* %2) #6, !dbg !3090
  store %struct.reg_info_t* null, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3091
  ret void, !dbg !3092
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3093 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3099, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3100, metadata !DIExpression()), !dbg !3101
  br label %land.end, !dbg !3102

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3102
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3102
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3102
  ret %struct.basic_block_def* %0, !dbg !3102
}

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %bb_index) unnamed_addr #0 !dbg !3103 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !3107, metadata !DIExpression()), !dbg !3108
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #7, !dbg !3109
  %artificial_defs = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 0, !dbg !3110
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_defs, align 8, !dbg !3110
  ret %union.df_ref_d** %0, !dbg !3111
}

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %bb_index) unnamed_addr #0 !dbg !3112 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !3114, metadata !DIExpression()), !dbg !3115
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #7, !dbg !3116
  %artificial_uses = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 1, !dbg !3117
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_uses, align 8, !dbg !3117
  ret %union.df_ref_d** %0, !dbg !3118
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3119 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3126, metadata !DIExpression()), !dbg !3127
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3128
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3128
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3128
  ret i32 %0, !dbg !3129
}

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3130 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3134, metadata !DIExpression()), !dbg !3135
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3136
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 0, !dbg !3136
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3136
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3138
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3138
  %cmp = icmp ugt i32 %2, %index, !dbg !3139
  br i1 %cmp, label %if.then, label %return, !dbg !3140

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3141
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3141
  %idxprom = zext i32 %index to i64, !dbg !3142
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3142
  %4 = bitcast i8** %arrayidx3 to %struct.df_scan_bb_info**, !dbg !3142
  %5 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %4, align 8, !dbg !3142
  br label %return, !dbg !3143

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_scan_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3144
  ret %struct.df_scan_bb_info* %retval.0, !dbg !3145
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

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
!llvm.module.flags = !{!1830, !1831, !1832}
!llvm.ident = !{!1833}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "regstat_n_sets_and_refs", scope: !2, file: !3, line: 39, type: !571, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561, globals: !1823, nameTableKind: None)
!3 = !DIFile(filename: "regstat.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !527}
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
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !385, line: 836, baseType: !7, size: 32, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!529 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!530 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!531 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!532 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!533 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!534 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!535 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!536 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!537 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!538 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!539 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!540 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!541 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!542 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!543 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!544 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!545 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!546 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!547 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!548 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!549 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!550 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!551 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!552 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!553 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!554 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!555 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!556 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!557 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!558 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!559 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!560 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!561 = !{!562, !563, !564, !565, !568, !569, !571, !384, !577, !587, !527, !5, !650}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!564 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regstat_n_sets_and_refs_t", file: !573, line: 69, size: 64, elements: !574)
!573 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sets", scope: !572, file: !573, line: 71, baseType: !564, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !572, file: !573, line: 72, baseType: !564, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_info_t", file: !573, line: 113, size: 224, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !578, file: !573, line: 115, baseType: !564, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "deaths", scope: !578, file: !573, line: 116, baseType: !564, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "live_length", scope: !578, file: !573, line: 117, baseType: !564, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "calls_crossed", scope: !578, file: !573, line: 118, baseType: !564, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "freq_calls_crossed", scope: !578, file: !573, line: 119, baseType: !564, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "throw_calls_crossed", scope: !578, file: !573, line: 120, baseType: !564, size: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "basic_block", scope: !578, file: !573, line: 121, baseType: !564, size: 32, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !588, line: 47, baseType: !589)
!588 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !591, line: 75, size: 256, elements: !592)
!591 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!592 = !{!593, !608, !609, !610}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !590, file: !591, line: 76, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !591, line: 68, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !591, line: 63, size: 320, elements: !597)
!597 = !{!598, !600, !601, !602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !591, line: 64, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !596, file: !591, line: 65, baseType: !599, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !596, file: !591, line: 66, baseType: !7, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !596, file: !591, line: 67, baseType: !603, size: 128, offset: 192)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !606)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !591, line: 29, baseType: !605)
!605 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!606 = !{!607}
!607 = !DISubrange(count: 2)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !590, file: !591, line: 77, baseType: !594, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !590, file: !591, line: 78, baseType: !7, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !590, file: !591, line: 79, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !591, line: 49, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !591, line: 45, size: 832, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !613, file: !591, line: 46, baseType: !599, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !613, file: !591, line: 47, baseType: !589, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !613, file: !591, line: 48, baseType: !618, size: 704, offset: 128)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !619, line: 164, size: 704, elements: !620)
!619 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!620 = !{!621, !623, !633, !634, !635, !636, !637, !638, !642, !646, !647, !648, !649}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !618, file: !619, line: 166, baseType: !622, size: 64)
!622 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !618, file: !619, line: 167, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !619, line: 157, size: 192, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !625, file: !619, line: 159, baseType: !566, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !625, file: !619, line: 160, baseType: !624, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !625, file: !619, line: 161, baseType: !630, size: 32, offset: 128)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 4)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !618, file: !619, line: 168, baseType: !566, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !618, file: !619, line: 169, baseType: !566, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !618, file: !619, line: 170, baseType: !566, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !618, file: !619, line: 171, baseType: !622, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !618, file: !619, line: 172, baseType: !564, size: 32, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !618, file: !619, line: 176, baseType: !639, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!624, !568, !622}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !618, file: !619, line: 177, baseType: !643, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !568, !624}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !618, file: !619, line: 178, baseType: !568, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !618, file: !619, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !618, file: !619, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !618, file: !619, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_scan_bb_info", file: !652, line: 771, size: 128, elements: !653)
!652 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!653 = !{!654, !1822}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_defs", scope: !651, file: !652, line: 782, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !652, line: 429, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !652, line: 422, size: 704, elements: !659)
!659 = !{!660, !1804, !1810, !1815}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !652, line: 424, baseType: !661, size: 512)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !652, line: 356, size: 512, elements: !662)
!662 = !{!663, !664, !665, !666, !1773, !1779, !1799, !1800, !1801, !1802, !1803}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !661, file: !652, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !652, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !652, line: 364, baseType: !564, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !661, file: !652, line: 365, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !588, line: 50, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !385, line: 240, size: 384, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !669, file: !385, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !669, file: !385, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !669, file: !385, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !669, file: !385, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !669, file: !385, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !669, file: !385, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !669, file: !385, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !669, file: !385, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !669, file: !385, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !669, file: !385, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !669, file: !385, line: 321, baseType: !682, size: 320, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !385, line: 315, size: 320, elements: !683)
!683 = !{!684, !1708, !1710, !1771, !1772}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !682, file: !385, line: 316, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 64, elements: !701)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !385, line: 183, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !385, line: 166, size: 64, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !703, !704, !716, !719, !720, !1686, !1687, !1698, !1705}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !687, file: !385, line: 168, baseType: !564, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !687, file: !385, line: 169, baseType: !7, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !687, file: !385, line: 170, baseType: !569, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !687, file: !385, line: 171, baseType: !667, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !687, file: !385, line: 172, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !588, line: 53, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !385, line: 359, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !696, file: !385, line: 360, baseType: !564, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !696, file: !385, line: 361, baseType: !700, size: 64, offset: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 1)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !687, file: !385, line: 173, baseType: !5, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !687, file: !385, line: 174, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !385, line: 133, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 115, size: 32, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !706, file: !385, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !706, file: !385, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !706, file: !385, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !706, file: !385, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !706, file: !385, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !706, file: !385, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !706, file: !385, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !706, file: !385, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !687, file: !385, line: 175, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !385, line: 175, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !687, file: !385, line: 176, baseType: !589, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !687, file: !385, line: 177, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !588, line: 56, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !724)
!724 = !{!725, !758, !764, !775, !794, !805, !810, !817, !823, !836, !848, !886, !891, !919, !927, !928, !933, !942, !948, !953, !957, !961, !1322, !1371, !1377, !1383, !1390, !1416, !1430, !1447, !1459, !1481, !1496, !1668}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !723, file: !158, line: 3372, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !726, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !726, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !726, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !726, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !726, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !726, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !726, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !726, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !726, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !726, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !726, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !726, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !726, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !726, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !726, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !726, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !726, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !726, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !726, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !726, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !726, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !726, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !726, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !726, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !726, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !726, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !726, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !726, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !726, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !726, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !723, file: !158, line: 3373, baseType: !759, size: 192)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !759, file: !158, line: 403, baseType: !726, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !759, file: !158, line: 404, baseType: !721, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !158, line: 405, baseType: !721, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !723, file: !158, line: 3374, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !158, line: 1385, baseType: !759, size: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !765, file: !158, line: 1386, baseType: !769, size: 128, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !770, line: 58, baseType: !771)
!770 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 54, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !771, file: !770, line: 56, baseType: !605, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !771, file: !770, line: 57, baseType: !622, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !723, file: !158, line: 3375, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !158, line: 1398, baseType: !759, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !776, file: !158, line: 1399, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !782, line: 52, size: 256, elements: !783)
!782 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!783 = !{!784, !785, !786, !787, !788, !789, !790}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !781, file: !782, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !781, file: !782, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !781, file: !782, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !781, file: !782, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !781, file: !782, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !781, file: !782, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !781, file: !782, line: 62, baseType: !791, size: 192, offset: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 3)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !723, file: !158, line: 3376, baseType: !795, size: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !795, file: !158, line: 1409, baseType: !759, size: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !795, file: !158, line: 1410, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !801, line: 27, size: 192, elements: !802)
!801 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !800, file: !801, line: 29, baseType: !769, size: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !800, file: !801, line: 30, baseType: !5, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !723, file: !158, line: 3377, baseType: !806, size: 256)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !806, file: !158, line: 1438, baseType: !759, size: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !806, file: !158, line: 1439, baseType: !721, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !723, file: !158, line: 3378, baseType: !811, size: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !812)
!812 = !{!813, !814, !815}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !811, file: !158, line: 1419, baseType: !759, size: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !811, file: !158, line: 1420, baseType: !564, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !811, file: !158, line: 1421, baseType: !816, size: 8, offset: 224)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 8, elements: !701)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !723, file: !158, line: 3379, baseType: !818, size: 320)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !819)
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !818, file: !158, line: 1429, baseType: !759, size: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !818, file: !158, line: 1430, baseType: !721, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !818, file: !158, line: 1431, baseType: !721, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !723, file: !158, line: 3380, baseType: !824, size: 320)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !824, file: !158, line: 1461, baseType: !759, size: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !824, file: !158, line: 1462, baseType: !828, size: 128, offset: 192)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !829, line: 31, size: 128, elements: !830)
!829 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!830 = !{!831, !834, !835}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !828, file: !829, line: 32, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !828, file: !829, line: 33, baseType: !7, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !828, file: !829, line: 34, baseType: !7, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !723, file: !158, line: 3381, baseType: !837, size: 384)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !838)
!838 = !{!839, !840, !845, !846, !847}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !837, file: !158, line: 2508, baseType: !759, size: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !837, file: !158, line: 2509, baseType: !841, size: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !842, line: 58, baseType: !843)
!842 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !844, line: 44, baseType: !7)
!844 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !837, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !158, line: 2511, baseType: !721, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !837, file: !158, line: 2512, baseType: !721, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !723, file: !158, line: 3382, baseType: !849, size: 896)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !849, file: !158, line: 2653, baseType: !837, size: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !849, file: !158, line: 2654, baseType: !721, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !849, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !849, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !849, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !849, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !849, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !849, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !849, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !849, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !849, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !849, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !849, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !849, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !849, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !849, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !849, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !849, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !849, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !849, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !849, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !849, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !849, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !849, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !849, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !849, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !849, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !849, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !849, file: !158, line: 2705, baseType: !721, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !849, file: !158, line: 2706, baseType: !721, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !849, file: !158, line: 2707, baseType: !721, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !849, file: !158, line: 2708, baseType: !721, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !849, file: !158, line: 2711, baseType: !884, size: 64, offset: 832)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !723, file: !158, line: 3383, baseType: !887, size: 960)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !887, file: !158, line: 2757, baseType: !849, size: 896)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !887, file: !158, line: 2758, baseType: !667, size: 64, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !723, file: !158, line: 3384, baseType: !892, size: 1472)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !893)
!893 = !{!894, !915, !916, !917, !918}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !158, line: 3115, baseType: !895, size: 1216)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !895, file: !158, line: 2985, baseType: !887, size: 960)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !895, file: !158, line: 2986, baseType: !721, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !895, file: !158, line: 2987, baseType: !721, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !895, file: !158, line: 2988, baseType: !721, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !895, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !895, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !895, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !895, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !895, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !895, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !895, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !895, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !895, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !895, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !895, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !895, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !895, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !895, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !892, file: !158, line: 3117, baseType: !721, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !892, file: !158, line: 3119, baseType: !721, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !892, file: !158, line: 3121, baseType: !721, size: 64, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !892, file: !158, line: 3123, baseType: !721, size: 64, offset: 1408)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !723, file: !158, line: 3385, baseType: !920, size: 1088)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !920, file: !158, line: 2875, baseType: !887, size: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !920, file: !158, line: 2876, baseType: !667, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !920, file: !158, line: 2877, baseType: !925, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !723, file: !158, line: 3386, baseType: !895, size: 1216)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !723, file: !158, line: 3387, baseType: !929, size: 1280)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !929, file: !158, line: 3094, baseType: !895, size: 1216)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !929, file: !158, line: 3095, baseType: !925, size: 64, offset: 1216)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !723, file: !158, line: 3388, baseType: !934, size: 1216)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !934, file: !158, line: 2825, baseType: !849, size: 896)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !934, file: !158, line: 2827, baseType: !721, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !934, file: !158, line: 2828, baseType: !721, size: 64, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !934, file: !158, line: 2829, baseType: !721, size: 64, offset: 1024)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !934, file: !158, line: 2830, baseType: !721, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !934, file: !158, line: 2831, baseType: !721, size: 64, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !723, file: !158, line: 3389, baseType: !943, size: 1024)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !943, file: !158, line: 2851, baseType: !887, size: 960)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !943, file: !158, line: 2852, baseType: !564, size: 32, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !943, file: !158, line: 2853, baseType: !564, size: 32, offset: 992)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !723, file: !158, line: 3390, baseType: !949, size: 1024)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !949, file: !158, line: 2858, baseType: !887, size: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !949, file: !158, line: 2859, baseType: !925, size: 64, offset: 960)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !723, file: !158, line: 3391, baseType: !954, size: 960)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !954, file: !158, line: 2863, baseType: !887, size: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !723, file: !158, line: 3392, baseType: !958, size: 1472)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !158, line: 3305, baseType: !892, size: 1472)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !723, file: !158, line: 3393, baseType: !962, size: 1792)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !963)
!963 = !{!964, !965, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !158, line: 3249, baseType: !892, size: 1472)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !962, file: !158, line: 3251, baseType: !966, size: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !968, line: 463, size: 1152, elements: !969)
!968 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!969 = !{!970, !1134, !1238, !1239, !1242, !1245, !1246, !1247, !1248, !1249, !1250, !1274, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !967, file: !968, line: 464, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !973)
!973 = !{!974, !1023, !1036, !1050, !1102, !1115}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !972, file: !135, line: 197, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !1011, !1020, !1021, !1022}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !977, file: !135, line: 119, baseType: !976, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !977, file: !135, line: 122, baseType: !976, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !977, file: !135, line: 123, baseType: !976, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !977, file: !135, line: 126, baseType: !564, size: 32, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !977, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !977, file: !135, line: 165, baseType: !985, size: 192, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !986)
!986 = !{!987, !1000, !1006}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !985, file: !135, line: 137, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !989)
!989 = !{!990, !999}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !988, file: !135, line: 135, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !992, file: !135, line: 96, baseType: !991, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !992, file: !135, line: 97, baseType: !991, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !992, file: !135, line: 101, baseType: !721, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !992, file: !135, line: 106, baseType: !721, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !992, file: !135, line: 111, baseType: !721, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !988, file: !135, line: 136, baseType: !991, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !985, file: !135, line: 151, baseType: !1001, size: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1001, file: !135, line: 141, baseType: !721, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1001, file: !135, line: 145, baseType: !721, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1001, file: !135, line: 150, baseType: !564, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !985, file: !135, line: 164, baseType: !1007, size: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1007, file: !135, line: 161, baseType: !721, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1007, file: !135, line: 163, baseType: !841, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !977, file: !135, line: 168, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1013, file: !135, line: 70, baseType: !1012, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1013, file: !135, line: 73, baseType: !976, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1013, file: !135, line: 78, baseType: !721, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1013, file: !135, line: 85, baseType: !667, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1013, file: !135, line: 88, baseType: !564, size: 32, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !977, file: !135, line: 173, baseType: !667, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !977, file: !135, line: 173, baseType: !667, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !977, file: !135, line: 177, baseType: !563, size: 8, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !972, file: !135, line: 200, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1026, file: !135, line: 185, baseType: !1029, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1030, file: !135, line: 184, baseType: !7, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1030, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1030, file: !135, line: 184, baseType: !1035, size: 64, offset: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 64, elements: !701)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !972, file: !135, line: 203, baseType: !1037, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1039, file: !135, line: 189, baseType: !1042, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1043, file: !135, line: 188, baseType: !7, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1043, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1043, file: !135, line: 188, baseType: !1048, size: 64, offset: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 64, elements: !701)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1012)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !972, file: !135, line: 207, baseType: !1051, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1052, line: 144, baseType: !1053)
!1052 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1052, line: 100, size: 896, elements: !1055)
!1055 = !{!1056, !1064, !1069, !1074, !1076, !1079, !1080, !1081, !1082, !1083, !1088, !1090, !1091, !1096, !1101}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1054, file: !1052, line: 102, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1052, line: 52, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1052, line: 47, baseType: !7)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1054, file: !1052, line: 105, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1052, line: 59, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!564, !1062, !1062}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1054, file: !1052, line: 108, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1052, line: 63, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !568}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1054, file: !1052, line: 111, baseType: !1075, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1054, file: !1052, line: 114, baseType: !1077, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1078, line: 46, baseType: !605)
!1078 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1054, file: !1052, line: 117, baseType: !1077, size: 64, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1054, file: !1052, line: 120, baseType: !1077, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1054, file: !1052, line: 124, baseType: !7, size: 32, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1054, file: !1052, line: 128, baseType: !7, size: 32, offset: 480)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1054, file: !1052, line: 131, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1052, line: 75, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!568, !1077, !1077}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1054, file: !1052, line: 132, baseType: !1089, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1052, line: 78, baseType: !1071)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1054, file: !1052, line: 135, baseType: !568, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1054, file: !1052, line: 136, baseType: !1092, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1052, line: 82, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!568, !568, !1077, !1077}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1054, file: !1052, line: 137, baseType: !1097, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1052, line: 83, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !568, !568}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1054, file: !1052, line: 141, baseType: !7, size: 32, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !972, file: !135, line: 211, baseType: !1103, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1105, file: !158, line: 183, baseType: !1108, size: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1110)
!1110 = !{!1111, !1112, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1109, file: !158, line: 182, baseType: !7, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1109, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1109, file: !158, line: 182, baseType: !1114, size: 64, offset: 64)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 64, elements: !701)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !972, file: !135, line: 220, baseType: !1116, size: 64, offset: 320)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1116, file: !135, line: 218, baseType: !1103, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1116, file: !135, line: 219, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1122, line: 29, baseType: !1123)
!1122 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1122, line: 29, size: 96, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1123, file: !1122, line: 29, baseType: !1126, size: 96)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1122, line: 27, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1122, line: 27, size: 96, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1127, file: !1122, line: 27, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1127, file: !1122, line: 27, baseType: !7, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1127, file: !1122, line: 27, baseType: !1132, size: 8, offset: 64)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 8, elements: !701)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1122, line: 26, baseType: !563)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !967, file: !968, line: 467, baseType: !1135, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1137)
!1137 = !{!1138, !1213, !1214, !1227, !1228, !1229, !1230, !1231, !1232, !1234, !1236, !1237}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1136, file: !142, line: 377, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !588, line: 111, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !1142)
!1142 = !{!1143, !1178, !1179, !1180, !1183, !1187, !1188, !1189, !1207, !1208, !1209, !1210, !1211, !1212}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1141, file: !142, line: 219, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1146, file: !142, line: 151, baseType: !1149, size: 128)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1150, file: !142, line: 150, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1150, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1150, file: !142, line: 150, baseType: !1155, size: 64, offset: 64)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 64, elements: !701)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !588, line: 108, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1158, file: !142, line: 124, baseType: !1140, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1158, file: !142, line: 125, baseType: !1140, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1158, file: !142, line: 131, baseType: !1163, size: 64, offset: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !1164)
!1164 = !{!1165, !1169}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1163, file: !142, line: 129, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !588, line: 66, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !588, line: 65, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1163, file: !142, line: 130, baseType: !667, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1158, file: !142, line: 134, baseType: !568, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1158, file: !142, line: 137, baseType: !721, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1158, file: !142, line: 138, baseType: !841, size: 32, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1158, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !142, line: 144, baseType: !564, size: 32, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1158, file: !142, line: 145, baseType: !564, size: 32, offset: 416)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1158, file: !142, line: 146, baseType: !1177, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !622)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1141, file: !142, line: 220, baseType: !1144, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1141, file: !142, line: 223, baseType: !568, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1141, file: !142, line: 226, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !142, line: 185, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1141, file: !142, line: 229, baseType: !1184, size: 128, offset: 256)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 128, elements: !606)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1141, file: !142, line: 232, baseType: !1140, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1141, file: !142, line: 233, baseType: !1140, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1141, file: !142, line: 238, baseType: !1190, size: 64, offset: 512)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1191)
!1191 = !{!1192, !1198}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1190, file: !142, line: 236, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1194, file: !142, line: 275, baseType: !1166, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1194, file: !142, line: 278, baseType: !1166, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1190, file: !142, line: 237, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1200, file: !142, line: 261, baseType: !667, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1200, file: !142, line: 262, baseType: !667, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1200, file: !142, line: 266, baseType: !667, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1200, file: !142, line: 267, baseType: !667, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1200, file: !142, line: 270, baseType: !564, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1141, file: !142, line: 241, baseType: !1177, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1141, file: !142, line: 244, baseType: !564, size: 32, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1141, file: !142, line: 247, baseType: !564, size: 32, offset: 672)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1141, file: !142, line: 250, baseType: !564, size: 32, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1141, file: !142, line: 253, baseType: !564, size: 32, offset: 736)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !142, line: 256, baseType: !564, size: 32, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1136, file: !142, line: 378, baseType: !1139, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1136, file: !142, line: 381, baseType: !1215, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1217, file: !142, line: 282, baseType: !1220, size: 128)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1222)
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1221, file: !142, line: 281, baseType: !7, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1221, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1221, file: !142, line: 281, baseType: !1226, size: 64, offset: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 64, elements: !701)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1136, file: !142, line: 384, baseType: !564, size: 32, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1136, file: !142, line: 387, baseType: !564, size: 32, offset: 224)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1136, file: !142, line: 390, baseType: !564, size: 32, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1136, file: !142, line: 394, baseType: !1215, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1136, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1136, file: !142, line: 399, baseType: !1233, size: 64, offset: 416)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !606)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1136, file: !142, line: 402, baseType: !1235, size: 64, offset: 480)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !606)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1136, file: !142, line: 406, baseType: !564, size: 32, offset: 544)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1136, file: !142, line: 409, baseType: !564, size: 32, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !967, file: !968, line: 470, baseType: !1167, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !967, file: !968, line: 473, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !968, line: 166, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !967, file: !968, line: 476, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !968, line: 476, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !967, file: !968, line: 479, baseType: !1051, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !967, file: !968, line: 484, baseType: !721, size: 64, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !967, file: !968, line: 488, baseType: !721, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !967, file: !968, line: 493, baseType: !721, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !967, file: !968, line: 496, baseType: !721, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !967, file: !968, line: 501, baseType: !1251, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1253)
!1253 = !{!1254, !1257, !1258, !1259, !1260, !1262, !1263, !1268, !1269, !1270, !1271, !1272, !1273}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1252, file: !153, line: 2356, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1252, file: !153, line: 2357, baseType: !569, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1252, file: !153, line: 2358, baseType: !564, size: 32, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1252, file: !153, line: 2359, baseType: !564, size: 32, offset: 160)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1252, file: !153, line: 2360, baseType: !1261, size: 128, offset: 192)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 128, elements: !631)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1252, file: !153, line: 2364, baseType: !564, size: 32, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1252, file: !153, line: 2367, baseType: !1264, size: 128, offset: 384)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1264, file: !153, line: 2351, baseType: !667, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1264, file: !153, line: 2352, baseType: !622, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1252, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1252, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1252, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1252, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1252, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1252, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !967, file: !968, line: 504, baseType: !1275, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !968, line: 504, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !967, file: !968, line: 507, baseType: !1051, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !967, file: !968, line: 510, baseType: !564, size: 32, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !967, file: !968, line: 513, baseType: !564, size: 32, offset: 864)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !967, file: !968, line: 516, baseType: !841, size: 32, offset: 896)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !967, file: !968, line: 519, baseType: !841, size: 32, offset: 928)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !967, file: !968, line: 522, baseType: !7, size: 32, offset: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !967, file: !968, line: 523, baseType: !7, size: 32, offset: 992)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !967, file: !968, line: 528, baseType: !569, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !967, file: !968, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !967, file: !968, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !967, file: !968, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !967, file: !968, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !967, file: !968, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !967, file: !968, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !967, file: !968, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !967, file: !968, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !967, file: !968, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !967, file: !968, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !967, file: !968, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !967, file: !968, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !967, file: !968, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !967, file: !968, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !967, file: !968, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !967, file: !968, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !962, file: !158, line: 3254, baseType: !721, size: 64, offset: 1536)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !962, file: !158, line: 3257, baseType: !721, size: 64, offset: 1600)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !962, file: !158, line: 3258, baseType: !721, size: 64, offset: 1664)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !962, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !962, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !962, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !962, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !962, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !962, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !962, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !962, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !962, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !962, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !962, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !962, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !962, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !962, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !962, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !962, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !962, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !962, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !158, line: 3394, baseType: !1323, size: 1344)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1350, !1351, !1352, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1323, file: !158, line: 2280, baseType: !759, size: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1323, file: !158, line: 2281, baseType: !721, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1323, file: !158, line: 2282, baseType: !721, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1323, file: !158, line: 2283, baseType: !721, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1323, file: !158, line: 2284, baseType: !721, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1323, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1323, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1323, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1323, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1323, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1323, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1323, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1323, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1323, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1323, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1323, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1323, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1323, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1323, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1323, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1323, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1323, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1323, file: !158, line: 2306, baseType: !1348, size: 32, offset: 544)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1349, line: 31, baseType: !564)
!1349 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1323, file: !158, line: 2307, baseType: !721, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1323, file: !158, line: 2308, baseType: !721, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1323, file: !158, line: 2314, baseType: !1353, size: 64, offset: 704)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1353, file: !158, line: 2310, baseType: !564, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1353, file: !158, line: 2311, baseType: !569, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1353, file: !158, line: 2312, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !158, line: 2315, baseType: !721, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1323, file: !158, line: 2316, baseType: !721, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1323, file: !158, line: 2317, baseType: !721, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1323, file: !158, line: 2318, baseType: !721, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1323, file: !158, line: 2319, baseType: !721, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1323, file: !158, line: 2320, baseType: !721, size: 64, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1323, file: !158, line: 2321, baseType: !721, size: 64, offset: 1152)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1323, file: !158, line: 2322, baseType: !721, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1323, file: !158, line: 2324, baseType: !1369, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !723, file: !158, line: 3395, baseType: !1372, size: 320)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1373)
!1373 = !{!1374, !1375, !1376}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1372, file: !158, line: 1470, baseType: !759, size: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1372, file: !158, line: 1471, baseType: !721, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1372, file: !158, line: 1472, baseType: !721, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !723, file: !158, line: 3396, baseType: !1378, size: 320)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1378, file: !158, line: 1483, baseType: !759, size: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1378, file: !158, line: 1484, baseType: !564, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1378, file: !158, line: 1485, baseType: !1114, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !723, file: !158, line: 3397, baseType: !1384, size: 384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1384, file: !158, line: 1830, baseType: !759, size: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1384, file: !158, line: 1831, baseType: !841, size: 32, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1384, file: !158, line: 1832, baseType: !721, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1384, file: !158, line: 1835, baseType: !1114, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !723, file: !158, line: 3398, baseType: !1391, size: 704)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1399, !1400, !1403}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1391, file: !158, line: 1899, baseType: !759, size: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1391, file: !158, line: 1902, baseType: !721, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1391, file: !158, line: 1905, baseType: !1396, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !588, line: 58, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !588, line: 57, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1391, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1391, file: !158, line: 1911, baseType: !1401, size: 64, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1391, file: !158, line: 1914, baseType: !1404, size: 256, offset: 448)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1405)
!1405 = !{!1406, !1408, !1409, !1414}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1404, file: !158, line: 1884, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1404, file: !158, line: 1885, baseType: !1407, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1404, file: !158, line: 1891, baseType: !1410, size: 64, offset: 128)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !158, line: 1891, size: 64, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1410, file: !158, line: 1891, baseType: !1396, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1410, file: !158, line: 1891, baseType: !721, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1404, file: !158, line: 1892, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !723, file: !158, line: 3399, baseType: !1417, size: 704)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1417, file: !158, line: 2009, baseType: !759, size: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1417, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1417, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1417, file: !158, line: 2014, baseType: !841, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1417, file: !158, line: 2016, baseType: !721, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1417, file: !158, line: 2017, baseType: !1103, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1417, file: !158, line: 2019, baseType: !721, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1417, file: !158, line: 2020, baseType: !721, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1417, file: !158, line: 2021, baseType: !721, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1417, file: !158, line: 2022, baseType: !721, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1417, file: !158, line: 2023, baseType: !721, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !723, file: !158, line: 3400, baseType: !1431, size: 832)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1431, file: !158, line: 2431, baseType: !759, size: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1431, file: !158, line: 2433, baseType: !721, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1431, file: !158, line: 2434, baseType: !721, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1431, file: !158, line: 2435, baseType: !721, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1431, file: !158, line: 2436, baseType: !721, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1431, file: !158, line: 2437, baseType: !1103, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1431, file: !158, line: 2438, baseType: !721, size: 64, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1431, file: !158, line: 2440, baseType: !721, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1431, file: !158, line: 2441, baseType: !721, size: 64, offset: 640)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1431, file: !158, line: 2443, baseType: !1443, size: 128, offset: 704)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1444, file: !158, line: 182, baseType: !1108, size: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !723, file: !158, line: 3401, baseType: !1448, size: 320)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1449)
!1449 = !{!1450, !1451, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !158, line: 3329, baseType: !759, size: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1448, file: !158, line: 3330, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1453, file: !158, line: 3322, baseType: !1452, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1453, file: !158, line: 3323, baseType: !1452, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1453, file: !158, line: 3324, baseType: !721, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1448, file: !158, line: 3331, baseType: !1452, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !723, file: !158, line: 3402, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1460, file: !158, line: 1541, baseType: !759, size: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1460, file: !158, line: 1542, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1466, file: !158, line: 1538, baseType: !1469, size: 192)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1471)
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1470, file: !158, line: 1537, baseType: !7, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1470, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1470, file: !158, line: 1537, baseType: !1475, size: 128, offset: 64)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 128, elements: !701)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1477, file: !158, line: 1533, baseType: !721, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1477, file: !158, line: 1534, baseType: !721, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !723, file: !158, line: 3403, baseType: !1482, size: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1493, !1494, !1495}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1482, file: !158, line: 1939, baseType: !759, size: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1482, file: !158, line: 1940, baseType: !841, size: 32, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1482, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1482, file: !158, line: 1946, baseType: !1488, size: 32, offset: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1488, file: !158, line: 1943, baseType: !176, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1488, file: !158, line: 1944, baseType: !183, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1488, file: !158, line: 1945, baseType: !190, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1482, file: !158, line: 1950, baseType: !1166, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1482, file: !158, line: 1951, baseType: !1166, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1482, file: !158, line: 1953, baseType: !1114, size: 64, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !723, file: !158, line: 3404, baseType: !1497, size: 1664)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !158, line: 3338, baseType: !759, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1497, file: !158, line: 3341, baseType: !1501, size: 1472, offset: 192)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1502, line: 410, size: 1472, elements: !1503)
!1502 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1501, file: !1502, line: 412, baseType: !564, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1501, file: !1502, line: 413, baseType: !564, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1501, file: !1502, line: 414, baseType: !564, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1501, file: !1502, line: 415, baseType: !564, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1501, file: !1502, line: 416, baseType: !564, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1501, file: !1502, line: 417, baseType: !564, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1501, file: !1502, line: 418, baseType: !563, size: 8, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1501, file: !1502, line: 419, baseType: !563, size: 8, offset: 200)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1501, file: !1502, line: 420, baseType: !1513, size: 8, offset: 208)
!1513 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1501, file: !1502, line: 421, baseType: !1513, size: 8, offset: 216)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1501, file: !1502, line: 422, baseType: !1513, size: 8, offset: 224)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1501, file: !1502, line: 423, baseType: !1513, size: 8, offset: 232)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1501, file: !1502, line: 424, baseType: !1513, size: 8, offset: 240)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1501, file: !1502, line: 425, baseType: !1513, size: 8, offset: 248)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1501, file: !1502, line: 426, baseType: !1513, size: 8, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1501, file: !1502, line: 427, baseType: !1513, size: 8, offset: 264)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1501, file: !1502, line: 428, baseType: !1513, size: 8, offset: 272)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1501, file: !1502, line: 429, baseType: !1513, size: 8, offset: 280)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1501, file: !1502, line: 430, baseType: !1513, size: 8, offset: 288)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1501, file: !1502, line: 431, baseType: !1513, size: 8, offset: 296)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1501, file: !1502, line: 432, baseType: !1513, size: 8, offset: 304)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1501, file: !1502, line: 433, baseType: !1513, size: 8, offset: 312)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1501, file: !1502, line: 434, baseType: !1513, size: 8, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1501, file: !1502, line: 435, baseType: !1513, size: 8, offset: 328)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1501, file: !1502, line: 436, baseType: !1513, size: 8, offset: 336)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1501, file: !1502, line: 437, baseType: !1513, size: 8, offset: 344)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1501, file: !1502, line: 438, baseType: !1513, size: 8, offset: 352)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1501, file: !1502, line: 439, baseType: !1513, size: 8, offset: 360)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1501, file: !1502, line: 440, baseType: !1513, size: 8, offset: 368)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1501, file: !1502, line: 441, baseType: !1513, size: 8, offset: 376)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1501, file: !1502, line: 442, baseType: !1513, size: 8, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1501, file: !1502, line: 443, baseType: !1513, size: 8, offset: 392)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1501, file: !1502, line: 444, baseType: !1513, size: 8, offset: 400)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1501, file: !1502, line: 445, baseType: !1513, size: 8, offset: 408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1501, file: !1502, line: 446, baseType: !1513, size: 8, offset: 416)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1501, file: !1502, line: 447, baseType: !1513, size: 8, offset: 424)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1501, file: !1502, line: 448, baseType: !1513, size: 8, offset: 432)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1501, file: !1502, line: 449, baseType: !1513, size: 8, offset: 440)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1501, file: !1502, line: 450, baseType: !1513, size: 8, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1501, file: !1502, line: 451, baseType: !1513, size: 8, offset: 456)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1501, file: !1502, line: 452, baseType: !1513, size: 8, offset: 464)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1501, file: !1502, line: 453, baseType: !1513, size: 8, offset: 472)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1501, file: !1502, line: 454, baseType: !1513, size: 8, offset: 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1501, file: !1502, line: 455, baseType: !1513, size: 8, offset: 488)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1501, file: !1502, line: 456, baseType: !1513, size: 8, offset: 496)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1501, file: !1502, line: 457, baseType: !1513, size: 8, offset: 504)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1501, file: !1502, line: 458, baseType: !1513, size: 8, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1501, file: !1502, line: 459, baseType: !1513, size: 8, offset: 520)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1501, file: !1502, line: 460, baseType: !1513, size: 8, offset: 528)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1501, file: !1502, line: 461, baseType: !1513, size: 8, offset: 536)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1501, file: !1502, line: 462, baseType: !1513, size: 8, offset: 544)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1501, file: !1502, line: 463, baseType: !1513, size: 8, offset: 552)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1501, file: !1502, line: 464, baseType: !1513, size: 8, offset: 560)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1501, file: !1502, line: 465, baseType: !1513, size: 8, offset: 568)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1501, file: !1502, line: 466, baseType: !1513, size: 8, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1501, file: !1502, line: 467, baseType: !1513, size: 8, offset: 584)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1501, file: !1502, line: 468, baseType: !1513, size: 8, offset: 592)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1501, file: !1502, line: 469, baseType: !1513, size: 8, offset: 600)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1501, file: !1502, line: 470, baseType: !1513, size: 8, offset: 608)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1501, file: !1502, line: 471, baseType: !1513, size: 8, offset: 616)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1501, file: !1502, line: 472, baseType: !1513, size: 8, offset: 624)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1501, file: !1502, line: 473, baseType: !1513, size: 8, offset: 632)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1501, file: !1502, line: 474, baseType: !1513, size: 8, offset: 640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1501, file: !1502, line: 475, baseType: !1513, size: 8, offset: 648)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1501, file: !1502, line: 476, baseType: !1513, size: 8, offset: 656)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1501, file: !1502, line: 477, baseType: !1513, size: 8, offset: 664)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1501, file: !1502, line: 478, baseType: !1513, size: 8, offset: 672)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1501, file: !1502, line: 479, baseType: !1513, size: 8, offset: 680)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1501, file: !1502, line: 480, baseType: !1513, size: 8, offset: 688)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1501, file: !1502, line: 481, baseType: !1513, size: 8, offset: 696)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1501, file: !1502, line: 482, baseType: !1513, size: 8, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1501, file: !1502, line: 483, baseType: !1513, size: 8, offset: 712)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1501, file: !1502, line: 484, baseType: !1513, size: 8, offset: 720)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1501, file: !1502, line: 485, baseType: !1513, size: 8, offset: 728)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1501, file: !1502, line: 486, baseType: !1513, size: 8, offset: 736)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1501, file: !1502, line: 487, baseType: !1513, size: 8, offset: 744)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1501, file: !1502, line: 488, baseType: !1513, size: 8, offset: 752)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1501, file: !1502, line: 489, baseType: !1513, size: 8, offset: 760)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1501, file: !1502, line: 490, baseType: !1513, size: 8, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1501, file: !1502, line: 491, baseType: !1513, size: 8, offset: 776)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1501, file: !1502, line: 492, baseType: !1513, size: 8, offset: 784)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1501, file: !1502, line: 493, baseType: !1513, size: 8, offset: 792)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1501, file: !1502, line: 494, baseType: !1513, size: 8, offset: 800)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1501, file: !1502, line: 495, baseType: !1513, size: 8, offset: 808)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1501, file: !1502, line: 496, baseType: !1513, size: 8, offset: 816)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1501, file: !1502, line: 497, baseType: !1513, size: 8, offset: 824)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1501, file: !1502, line: 498, baseType: !1513, size: 8, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1501, file: !1502, line: 499, baseType: !1513, size: 8, offset: 840)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1501, file: !1502, line: 500, baseType: !1513, size: 8, offset: 848)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1501, file: !1502, line: 501, baseType: !1513, size: 8, offset: 856)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1501, file: !1502, line: 502, baseType: !1513, size: 8, offset: 864)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1501, file: !1502, line: 503, baseType: !1513, size: 8, offset: 872)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1501, file: !1502, line: 504, baseType: !1513, size: 8, offset: 880)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1501, file: !1502, line: 505, baseType: !1513, size: 8, offset: 888)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1501, file: !1502, line: 506, baseType: !1513, size: 8, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1501, file: !1502, line: 507, baseType: !1513, size: 8, offset: 904)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1501, file: !1502, line: 508, baseType: !1513, size: 8, offset: 912)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1501, file: !1502, line: 509, baseType: !1513, size: 8, offset: 920)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1501, file: !1502, line: 510, baseType: !1513, size: 8, offset: 928)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1501, file: !1502, line: 511, baseType: !1513, size: 8, offset: 936)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1501, file: !1502, line: 512, baseType: !1513, size: 8, offset: 944)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1501, file: !1502, line: 513, baseType: !1513, size: 8, offset: 952)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1501, file: !1502, line: 514, baseType: !1513, size: 8, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1501, file: !1502, line: 515, baseType: !1513, size: 8, offset: 968)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1501, file: !1502, line: 516, baseType: !1513, size: 8, offset: 976)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1501, file: !1502, line: 517, baseType: !1513, size: 8, offset: 984)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1501, file: !1502, line: 518, baseType: !1513, size: 8, offset: 992)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1501, file: !1502, line: 519, baseType: !1513, size: 8, offset: 1000)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1501, file: !1502, line: 520, baseType: !1513, size: 8, offset: 1008)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1501, file: !1502, line: 521, baseType: !1513, size: 8, offset: 1016)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1501, file: !1502, line: 522, baseType: !1513, size: 8, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1501, file: !1502, line: 523, baseType: !1513, size: 8, offset: 1032)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1501, file: !1502, line: 524, baseType: !1513, size: 8, offset: 1040)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1501, file: !1502, line: 525, baseType: !1513, size: 8, offset: 1048)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1501, file: !1502, line: 526, baseType: !1513, size: 8, offset: 1056)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1501, file: !1502, line: 527, baseType: !1513, size: 8, offset: 1064)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1501, file: !1502, line: 528, baseType: !1513, size: 8, offset: 1072)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1501, file: !1502, line: 529, baseType: !1513, size: 8, offset: 1080)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1501, file: !1502, line: 530, baseType: !1513, size: 8, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1501, file: !1502, line: 531, baseType: !1513, size: 8, offset: 1096)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1501, file: !1502, line: 532, baseType: !1513, size: 8, offset: 1104)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1501, file: !1502, line: 533, baseType: !1513, size: 8, offset: 1112)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1501, file: !1502, line: 534, baseType: !1513, size: 8, offset: 1120)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1501, file: !1502, line: 535, baseType: !1513, size: 8, offset: 1128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1501, file: !1502, line: 536, baseType: !1513, size: 8, offset: 1136)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1501, file: !1502, line: 537, baseType: !1513, size: 8, offset: 1144)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1501, file: !1502, line: 538, baseType: !1513, size: 8, offset: 1152)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1501, file: !1502, line: 539, baseType: !1513, size: 8, offset: 1160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1501, file: !1502, line: 540, baseType: !1513, size: 8, offset: 1168)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1501, file: !1502, line: 541, baseType: !1513, size: 8, offset: 1176)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1501, file: !1502, line: 542, baseType: !1513, size: 8, offset: 1184)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1501, file: !1502, line: 543, baseType: !1513, size: 8, offset: 1192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1501, file: !1502, line: 544, baseType: !1513, size: 8, offset: 1200)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1501, file: !1502, line: 545, baseType: !1513, size: 8, offset: 1208)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1501, file: !1502, line: 546, baseType: !1513, size: 8, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1501, file: !1502, line: 547, baseType: !1513, size: 8, offset: 1224)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1501, file: !1502, line: 548, baseType: !1513, size: 8, offset: 1232)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1501, file: !1502, line: 549, baseType: !1513, size: 8, offset: 1240)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1501, file: !1502, line: 550, baseType: !1513, size: 8, offset: 1248)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1501, file: !1502, line: 551, baseType: !1513, size: 8, offset: 1256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1501, file: !1502, line: 552, baseType: !1513, size: 8, offset: 1264)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1501, file: !1502, line: 553, baseType: !1513, size: 8, offset: 1272)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1501, file: !1502, line: 554, baseType: !1513, size: 8, offset: 1280)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1501, file: !1502, line: 555, baseType: !1513, size: 8, offset: 1288)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1501, file: !1502, line: 556, baseType: !1513, size: 8, offset: 1296)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1501, file: !1502, line: 557, baseType: !1513, size: 8, offset: 1304)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1501, file: !1502, line: 558, baseType: !1513, size: 8, offset: 1312)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1501, file: !1502, line: 559, baseType: !1513, size: 8, offset: 1320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1501, file: !1502, line: 560, baseType: !1513, size: 8, offset: 1328)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1501, file: !1502, line: 561, baseType: !1513, size: 8, offset: 1336)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1501, file: !1502, line: 562, baseType: !1513, size: 8, offset: 1344)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1501, file: !1502, line: 563, baseType: !1513, size: 8, offset: 1352)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1501, file: !1502, line: 564, baseType: !1513, size: 8, offset: 1360)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1501, file: !1502, line: 565, baseType: !1513, size: 8, offset: 1368)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1501, file: !1502, line: 566, baseType: !1513, size: 8, offset: 1376)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1501, file: !1502, line: 567, baseType: !1513, size: 8, offset: 1384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1501, file: !1502, line: 568, baseType: !1513, size: 8, offset: 1392)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1501, file: !1502, line: 569, baseType: !1513, size: 8, offset: 1400)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1501, file: !1502, line: 570, baseType: !1513, size: 8, offset: 1408)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1501, file: !1502, line: 571, baseType: !1513, size: 8, offset: 1416)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1501, file: !1502, line: 572, baseType: !1513, size: 8, offset: 1424)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1501, file: !1502, line: 573, baseType: !1513, size: 8, offset: 1432)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1501, file: !1502, line: 574, baseType: !1513, size: 8, offset: 1440)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !723, file: !158, line: 3405, baseType: !1669, size: 384)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1669, file: !158, line: 3353, baseType: !759, size: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1669, file: !158, line: 3356, baseType: !1673, size: 192, offset: 192)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1502, line: 578, size: 192, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1673, file: !1502, line: 580, baseType: !564, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1673, file: !1502, line: 581, baseType: !564, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1673, file: !1502, line: 582, baseType: !564, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1673, file: !1502, line: 583, baseType: !564, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1673, file: !1502, line: 584, baseType: !563, size: 8, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1673, file: !1502, line: 585, baseType: !563, size: 8, offset: 136)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1673, file: !1502, line: 586, baseType: !563, size: 8, offset: 144)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1673, file: !1502, line: 587, baseType: !563, size: 8, offset: 152)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1673, file: !1502, line: 588, baseType: !563, size: 8, offset: 160)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1673, file: !1502, line: 589, baseType: !563, size: 8, offset: 168)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1673, file: !1502, line: 590, baseType: !563, size: 8, offset: 176)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !687, file: !385, line: 178, baseType: !1140, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !687, file: !385, line: 179, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !385, line: 150, baseType: !1690)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !385, line: 142, size: 320, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1690, file: !385, line: 144, baseType: !721, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1690, file: !385, line: 145, baseType: !667, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1690, file: !385, line: 146, baseType: !667, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1690, file: !385, line: 147, baseType: !1348, size: 32, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1690, file: !385, line: 148, baseType: !7, size: 32, offset: 224)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1690, file: !385, line: 149, baseType: !563, size: 8, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !687, file: !385, line: 180, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !385, line: 162, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !385, line: 159, size: 128, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1701, file: !385, line: 160, baseType: !721, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1701, file: !385, line: 161, baseType: !622, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !687, file: !385, line: 181, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !385, line: 181, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !682, file: !385, line: 317, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 64, elements: !701)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !682, file: !385, line: 318, baseType: !1711, size: 320)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !385, line: 188, size: 320, elements: !1712)
!1712 = !{!1713, !1715, !1770}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1711, file: !385, line: 190, baseType: !1714, size: 192)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 192, elements: !792)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1711, file: !385, line: 193, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !385, line: 206, size: 320, elements: !1718)
!1718 = !{!1719, !1755, !1756, !1757, !1769}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1717, file: !385, line: 208, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !588, line: 62, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1723, line: 538, size: 256, elements: !1724)
!1723 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1724 = !{!1725, !1729, !1735, !1746}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1722, file: !1723, line: 539, baseType: !1726, size: 32)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1723, line: 482, size: 32, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !1723, line: 484, baseType: !7, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1722, file: !1723, line: 540, baseType: !1730, size: 192)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1723, line: 488, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1730, file: !1723, line: 489, baseType: !1726, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1730, file: !1723, line: 492, baseType: !569, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1730, file: !1723, line: 496, baseType: !721, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1722, file: !1723, line: 541, baseType: !1736, size: 256)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1723, line: 504, size: 256, elements: !1737)
!1737 = !{!1738, !1739, !1744, !1745}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1736, file: !1723, line: 505, baseType: !1726, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1736, file: !1723, line: 509, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1723, line: 501, baseType: !1741)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !1062}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1736, file: !1723, line: 510, baseType: !1062, size: 64, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1736, file: !1723, line: 513, baseType: !1720, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1722, file: !1723, line: 542, baseType: !1747, size: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1723, line: 530, size: 128, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1747, file: !1723, line: 531, baseType: !1726, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1747, file: !1723, line: 534, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1723, line: 525, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!563, !721, !569, !605, !605}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1717, file: !385, line: 211, baseType: !7, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1717, file: !385, line: 214, baseType: !622, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1717, file: !385, line: 224, baseType: !1758, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !385, line: 202, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !385, line: 202, size: 128, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1760, file: !385, line: 202, baseType: !1763, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !385, line: 200, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !385, line: 200, size: 128, elements: !1765)
!1765 = !{!1766, !1767, !1768}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1764, file: !385, line: 200, baseType: !7, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1764, file: !385, line: 200, baseType: !7, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1764, file: !385, line: 200, baseType: !700, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1717, file: !385, line: 234, baseType: !1758, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1711, file: !385, line: 197, baseType: !622, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !682, file: !385, line: 319, baseType: !781, size: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !682, file: !385, line: 320, baseType: !800, size: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !661, file: !652, line: 366, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !652, line: 449, size: 128, elements: !1776)
!1776 = !{!1777, !1778}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1775, file: !652, line: 451, baseType: !656, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1775, file: !652, line: 452, baseType: !1774, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !661, file: !652, line: 370, baseType: !1780, size: 64, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !652, line: 433, size: 384, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1798}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1781, file: !652, line: 435, baseType: !667, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !1781, file: !652, line: 436, baseType: !655, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1781, file: !652, line: 437, baseType: !655, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !1781, file: !652, line: 439, baseType: !655, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !1781, file: !652, line: 440, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !652, line: 339, size: 192, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !1790, file: !652, line: 341, baseType: !667, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1790, file: !652, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !652, line: 346, baseType: !564, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !1790, file: !652, line: 347, baseType: !7, size: 32, offset: 96)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !1790, file: !652, line: 348, baseType: !7, size: 32, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !1790, file: !652, line: 349, baseType: !7, size: 32, offset: 160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1781, file: !652, line: 444, baseType: !564, size: 32, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !661, file: !652, line: 374, baseType: !657, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !661, file: !652, line: 375, baseType: !657, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !661, file: !652, line: 376, baseType: !7, size: 32, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !661, file: !652, line: 379, baseType: !564, size: 32, offset: 416)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !661, file: !652, line: 382, baseType: !7, size: 32, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !658, file: !652, line: 425, baseType: !1805, size: 576)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !652, line: 398, size: 576, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1805, file: !652, line: 400, baseType: !661, size: 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1805, file: !652, line: 405, baseType: !1809, size: 64, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !658, file: !652, line: 426, baseType: !1811, size: 576)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !652, line: 388, size: 576, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1811, file: !652, line: 390, baseType: !661, size: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1811, file: !652, line: 394, baseType: !1139, size: 64, offset: 512)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !658, file: !652, line: 427, baseType: !1816, size: 704)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !652, line: 413, size: 704, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1816, file: !652, line: 415, baseType: !1805, size: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1816, file: !652, line: 416, baseType: !564, size: 32, offset: 576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1816, file: !652, line: 417, baseType: !564, size: 32, offset: 608)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1816, file: !652, line: 418, baseType: !5, size: 32, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_uses", scope: !651, file: !652, line: 788, baseType: !655, size: 64, offset: 64)
!1823 = !{!0, !1824, !1826, !1828}
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(name: "setjmp_crosses", scope: !2, file: !3, line: 109, type: !587, isLocal: true, isDefinition: true)
!1826 = !DIGlobalVariableExpression(var: !1827, expr: !DIExpression())
!1827 = distinct !DIGlobalVariable(name: "reg_info_p", scope: !2, file: !3, line: 110, type: !577, isLocal: false, isDefinition: true)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(name: "reg_info_p_size", scope: !2, file: !3, line: 113, type: !1077, isLocal: false, isDefinition: true)
!1830 = !{i32 2, !"Dwarf Version", i32 4}
!1831 = !{i32 2, !"Debug Info Version", i32 3}
!1832 = !{i32 1, !"wchar_size", i32 4}
!1833 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1834 = distinct !DISubprogram(name: "vprintf", scope: !1835, file: !1835, line: 39, type: !1836, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1846)
!1835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!564, !1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !569)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1840, file: !3, baseType: !7, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1840, file: !3, baseType: !7, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1840, file: !3, baseType: !568, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1840, file: !3, baseType: !568, size: 64, offset: 128)
!1846 = !{!1847, !1848}
!1847 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1834, file: !1835, line: 39, type: !1838)
!1848 = !DILocalVariable(name: "__arg", arg: 2, scope: !1834, file: !1835, line: 39, type: !1839)
!1849 = !DILocation(line: 0, scope: !1834)
!1850 = !DILocation(line: 41, column: 20, scope: !1834)
!1851 = !DILocation(line: 41, column: 10, scope: !1834)
!1852 = !DILocation(line: 41, column: 3, scope: !1834)
!1853 = distinct !DISubprogram(name: "getchar", scope: !1835, file: !1835, line: 47, type: !1854, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!564}
!1856 = !{}
!1857 = !DILocation(line: 49, column: 16, scope: !1853)
!1858 = !DILocation(line: 49, column: 10, scope: !1853)
!1859 = !DILocation(line: 49, column: 3, scope: !1853)
!1860 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1835, file: !1835, line: 56, type: !1861, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1914)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!564, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1865, line: 7, baseType: !1866)
!1865 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1867, line: 49, size: 1728, elements: !1868)
!1867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1884, !1886, !1887, !1888, !1891, !1893, !1894, !1895, !1898, !1900, !1903, !1906, !1907, !1908, !1909, !1910}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1866, file: !1867, line: 51, baseType: !564, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1866, file: !1867, line: 54, baseType: !566, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1866, file: !1867, line: 55, baseType: !566, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1866, file: !1867, line: 56, baseType: !566, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1866, file: !1867, line: 57, baseType: !566, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1866, file: !1867, line: 58, baseType: !566, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1866, file: !1867, line: 59, baseType: !566, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1866, file: !1867, line: 60, baseType: !566, size: 64, offset: 448)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1866, file: !1867, line: 61, baseType: !566, size: 64, offset: 512)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1866, file: !1867, line: 64, baseType: !566, size: 64, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1866, file: !1867, line: 65, baseType: !566, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1866, file: !1867, line: 66, baseType: !566, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1866, file: !1867, line: 68, baseType: !1882, size: 64, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1867, line: 36, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1866, file: !1867, line: 70, baseType: !1885, size: 64, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1866, file: !1867, line: 72, baseType: !564, size: 32, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1866, file: !1867, line: 73, baseType: !564, size: 32, offset: 928)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1866, file: !1867, line: 74, baseType: !1889, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1890, line: 152, baseType: !622)
!1890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1866, file: !1867, line: 77, baseType: !1892, size: 16, offset: 1024)
!1892 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1866, file: !1867, line: 78, baseType: !1513, size: 8, offset: 1040)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1866, file: !1867, line: 79, baseType: !816, size: 8, offset: 1048)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1866, file: !1867, line: 81, baseType: !1896, size: 64, offset: 1088)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1867, line: 43, baseType: null)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1866, file: !1867, line: 89, baseType: !1899, size: 64, offset: 1152)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1890, line: 153, baseType: !622)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1866, file: !1867, line: 91, baseType: !1901, size: 64, offset: 1216)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1867, line: 37, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1866, file: !1867, line: 92, baseType: !1904, size: 64, offset: 1280)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1867, line: 38, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1866, file: !1867, line: 93, baseType: !1885, size: 64, offset: 1344)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1866, file: !1867, line: 94, baseType: !568, size: 64, offset: 1408)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1866, file: !1867, line: 95, baseType: !1077, size: 64, offset: 1472)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1866, file: !1867, line: 96, baseType: !564, size: 32, offset: 1536)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1866, file: !1867, line: 98, baseType: !1911, size: 160, offset: 1568)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 160, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 20)
!1914 = !{!1915}
!1915 = !DILocalVariable(name: "__fp", arg: 1, scope: !1860, file: !1835, line: 56, type: !1863)
!1916 = !DILocation(line: 0, scope: !1860)
!1917 = !DILocation(line: 58, column: 10, scope: !1860)
!1918 = !DILocation(line: 58, column: 3, scope: !1860)
!1919 = distinct !DISubprogram(name: "getc_unlocked", scope: !1835, file: !1835, line: 66, type: !1861, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1920)
!1920 = !{!1921}
!1921 = !DILocalVariable(name: "__fp", arg: 1, scope: !1919, file: !1835, line: 66, type: !1863)
!1922 = !DILocation(line: 0, scope: !1919)
!1923 = !DILocation(line: 68, column: 10, scope: !1919)
!1924 = !DILocation(line: 68, column: 3, scope: !1919)
!1925 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1835, file: !1835, line: 73, type: !1854, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1926 = !DILocation(line: 75, column: 10, scope: !1925)
!1927 = !DILocation(line: 75, column: 3, scope: !1925)
!1928 = distinct !DISubprogram(name: "putchar", scope: !1835, file: !1835, line: 82, type: !1929, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!564, !564}
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "__c", arg: 1, scope: !1928, file: !1835, line: 82, type: !564)
!1933 = !DILocation(line: 0, scope: !1928)
!1934 = !DILocation(line: 84, column: 21, scope: !1928)
!1935 = !DILocation(line: 84, column: 10, scope: !1928)
!1936 = !DILocation(line: 84, column: 3, scope: !1928)
!1937 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1835, file: !1835, line: 91, type: !1938, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!564, !564, !1863}
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "__c", arg: 1, scope: !1937, file: !1835, line: 91, type: !564)
!1942 = !DILocalVariable(name: "__stream", arg: 2, scope: !1937, file: !1835, line: 91, type: !1863)
!1943 = !DILocation(line: 0, scope: !1937)
!1944 = !DILocation(line: 93, column: 10, scope: !1937)
!1945 = !DILocation(line: 93, column: 3, scope: !1937)
!1946 = distinct !DISubprogram(name: "putc_unlocked", scope: !1835, file: !1835, line: 101, type: !1938, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "__c", arg: 1, scope: !1946, file: !1835, line: 101, type: !564)
!1949 = !DILocalVariable(name: "__stream", arg: 2, scope: !1946, file: !1835, line: 101, type: !1863)
!1950 = !DILocation(line: 0, scope: !1946)
!1951 = !DILocation(line: 103, column: 10, scope: !1946)
!1952 = !DILocation(line: 103, column: 3, scope: !1946)
!1953 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1835, file: !1835, line: 108, type: !1929, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "__c", arg: 1, scope: !1953, file: !1835, line: 108, type: !564)
!1956 = !DILocation(line: 0, scope: !1953)
!1957 = !DILocation(line: 110, column: 10, scope: !1953)
!1958 = !DILocation(line: 110, column: 3, scope: !1953)
!1959 = distinct !DISubprogram(name: "getline", scope: !1835, file: !1835, line: 118, type: !1960, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1962, !565, !1963, !1863}
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1890, line: 193, baseType: !622)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1964 = !{!1965, !1966, !1967}
!1965 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1959, file: !1835, line: 118, type: !565)
!1966 = !DILocalVariable(name: "__n", arg: 2, scope: !1959, file: !1835, line: 118, type: !1963)
!1967 = !DILocalVariable(name: "__stream", arg: 3, scope: !1959, file: !1835, line: 118, type: !1863)
!1968 = !DILocation(line: 0, scope: !1959)
!1969 = !DILocation(line: 120, column: 10, scope: !1959)
!1970 = !DILocation(line: 120, column: 3, scope: !1959)
!1971 = distinct !DISubprogram(name: "feof_unlocked", scope: !1835, file: !1835, line: 128, type: !1861, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "__stream", arg: 1, scope: !1971, file: !1835, line: 128, type: !1863)
!1974 = !DILocation(line: 0, scope: !1971)
!1975 = !DILocation(line: 130, column: 10, scope: !1971)
!1976 = !DILocation(line: 130, column: 3, scope: !1971)
!1977 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1835, file: !1835, line: 135, type: !1861, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "__stream", arg: 1, scope: !1977, file: !1835, line: 135, type: !1863)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocation(line: 137, column: 10, scope: !1977)
!1982 = !DILocation(line: 137, column: 3, scope: !1977)
!1983 = distinct !DISubprogram(name: "tolower", scope: !1984, file: !1984, line: 207, type: !1929, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1984 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "__c", arg: 1, scope: !1983, file: !1984, line: 207, type: !564)
!1987 = !DILocation(line: 0, scope: !1983)
!1988 = !DILocation(line: 209, column: 22, scope: !1983)
!1989 = !DILocation(line: 209, column: 39, scope: !1983)
!1990 = !DILocation(line: 209, column: 38, scope: !1983)
!1991 = !DILocation(line: 209, column: 37, scope: !1983)
!1992 = !DILocation(line: 209, column: 10, scope: !1983)
!1993 = !DILocation(line: 209, column: 3, scope: !1983)
!1994 = distinct !DISubprogram(name: "toupper", scope: !1984, file: !1984, line: 213, type: !1929, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "__c", arg: 1, scope: !1994, file: !1984, line: 213, type: !564)
!1997 = !DILocation(line: 0, scope: !1994)
!1998 = !DILocation(line: 215, column: 22, scope: !1994)
!1999 = !DILocation(line: 215, column: 39, scope: !1994)
!2000 = !DILocation(line: 215, column: 38, scope: !1994)
!2001 = !DILocation(line: 215, column: 37, scope: !1994)
!2002 = !DILocation(line: 215, column: 10, scope: !1994)
!2003 = !DILocation(line: 215, column: 3, scope: !1994)
!2004 = distinct !DISubprogram(name: "atoi", scope: !2005, file: !2005, line: 361, type: !2006, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2005 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!564, !569}
!2008 = !{!2009}
!2009 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2004, file: !2005, line: 361, type: !569)
!2010 = !DILocation(line: 0, scope: !2004)
!2011 = !DILocation(line: 363, column: 16, scope: !2004)
!2012 = !DILocation(line: 363, column: 10, scope: !2004)
!2013 = !DILocation(line: 363, column: 3, scope: !2004)
!2014 = distinct !DISubprogram(name: "atol", scope: !2005, file: !2005, line: 366, type: !2015, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!622, !569}
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2014, file: !2005, line: 366, type: !569)
!2019 = !DILocation(line: 0, scope: !2014)
!2020 = !DILocation(line: 368, column: 10, scope: !2014)
!2021 = !DILocation(line: 368, column: 3, scope: !2014)
!2022 = distinct !DISubprogram(name: "atoll", scope: !2005, file: !2005, line: 373, type: !2023, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2026)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!2025, !569}
!2025 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2022, file: !2005, line: 373, type: !569)
!2028 = !DILocation(line: 0, scope: !2022)
!2029 = !DILocation(line: 375, column: 10, scope: !2022)
!2030 = !DILocation(line: 375, column: 3, scope: !2022)
!2031 = distinct !DISubprogram(name: "bsearch", scope: !2032, file: !2032, line: 20, type: !2033, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!568, !1062, !1062, !1077, !1077, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2005, line: 808, baseType: !1066)
!2036 = !{!2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!2037 = !DILocalVariable(name: "__key", arg: 1, scope: !2031, file: !2032, line: 20, type: !1062)
!2038 = !DILocalVariable(name: "__base", arg: 2, scope: !2031, file: !2032, line: 20, type: !1062)
!2039 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2031, file: !2032, line: 20, type: !1077)
!2040 = !DILocalVariable(name: "__size", arg: 4, scope: !2031, file: !2032, line: 20, type: !1077)
!2041 = !DILocalVariable(name: "__compar", arg: 5, scope: !2031, file: !2032, line: 21, type: !2035)
!2042 = !DILocalVariable(name: "__l", scope: !2031, file: !2032, line: 23, type: !1077)
!2043 = !DILocalVariable(name: "__u", scope: !2031, file: !2032, line: 23, type: !1077)
!2044 = !DILocalVariable(name: "__idx", scope: !2031, file: !2032, line: 23, type: !1077)
!2045 = !DILocalVariable(name: "__p", scope: !2031, file: !2032, line: 24, type: !1062)
!2046 = !DILocalVariable(name: "__comparison", scope: !2031, file: !2032, line: 25, type: !564)
!2047 = !DILocation(line: 0, scope: !2031)
!2048 = !DILocation(line: 29, column: 3, scope: !2031)
!2049 = !DILocation(line: 27, column: 7, scope: !2031)
!2050 = !DILocation(line: 29, column: 14, scope: !2031)
!2051 = !DILocation(line: 31, column: 20, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2031, file: !2032, line: 30, column: 5)
!2053 = !DILocation(line: 31, column: 27, scope: !2052)
!2054 = !DILocation(line: 32, column: 56, scope: !2052)
!2055 = !DILocation(line: 32, column: 47, scope: !2052)
!2056 = !DILocation(line: 33, column: 22, scope: !2052)
!2057 = !DILocation(line: 34, column: 24, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !2032, line: 34, column: 11)
!2059 = !DILocation(line: 34, column: 11, scope: !2052)
!2060 = !DILocation(line: 36, column: 29, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !2032, line: 36, column: 16)
!2062 = !DILocation(line: 36, column: 16, scope: !2058)
!2063 = !DILocation(line: 37, column: 14, scope: !2061)
!2064 = distinct !{!2064, !2048, !2065}
!2065 = !DILocation(line: 40, column: 5, scope: !2031)
!2066 = !DILocation(line: 43, column: 1, scope: !2031)
!2067 = distinct !DISubprogram(name: "atof", scope: !2068, file: !2068, line: 25, type: !2069, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2068 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!2071, !569}
!2071 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2067, file: !2068, line: 25, type: !569)
!2074 = !DILocation(line: 0, scope: !2067)
!2075 = !DILocation(line: 27, column: 10, scope: !2067)
!2076 = !DILocation(line: 27, column: 3, scope: !2067)
!2077 = distinct !DISubprogram(name: "strtoimax", scope: !2078, file: !2078, line: 324, type: !2079, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2078 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2081, !1838, !2084, !564}
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2082, line: 101, baseType: !2083)
!2082 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1890, line: 72, baseType: !622)
!2084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !565)
!2085 = !{!2086, !2087, !2088}
!2086 = !DILocalVariable(name: "nptr", arg: 1, scope: !2077, file: !2078, line: 324, type: !1838)
!2087 = !DILocalVariable(name: "endptr", arg: 2, scope: !2077, file: !2078, line: 324, type: !2084)
!2088 = !DILocalVariable(name: "base", arg: 3, scope: !2077, file: !2078, line: 324, type: !564)
!2089 = !DILocation(line: 0, scope: !2077)
!2090 = !DILocation(line: 327, column: 10, scope: !2077)
!2091 = !DILocation(line: 327, column: 3, scope: !2077)
!2092 = distinct !DISubprogram(name: "strtoumax", scope: !2078, file: !2078, line: 336, type: !2093, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2095, !1838, !2084, !564}
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2082, line: 102, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1890, line: 73, baseType: !605)
!2097 = !{!2098, !2099, !2100}
!2098 = !DILocalVariable(name: "nptr", arg: 1, scope: !2092, file: !2078, line: 336, type: !1838)
!2099 = !DILocalVariable(name: "endptr", arg: 2, scope: !2092, file: !2078, line: 336, type: !2084)
!2100 = !DILocalVariable(name: "base", arg: 3, scope: !2092, file: !2078, line: 336, type: !564)
!2101 = !DILocation(line: 0, scope: !2092)
!2102 = !DILocation(line: 339, column: 10, scope: !2092)
!2103 = !DILocation(line: 339, column: 3, scope: !2092)
!2104 = distinct !DISubprogram(name: "wcstoimax", scope: !2078, file: !2078, line: 348, type: !2105, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!2081, !2107, !2111, !564}
!2107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2108)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2078, line: 34, baseType: !564)
!2111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2112)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2114 = !{!2115, !2116, !2117}
!2115 = !DILocalVariable(name: "nptr", arg: 1, scope: !2104, file: !2078, line: 348, type: !2107)
!2116 = !DILocalVariable(name: "endptr", arg: 2, scope: !2104, file: !2078, line: 348, type: !2111)
!2117 = !DILocalVariable(name: "base", arg: 3, scope: !2104, file: !2078, line: 348, type: !564)
!2118 = !DILocation(line: 0, scope: !2104)
!2119 = !DILocation(line: 351, column: 10, scope: !2104)
!2120 = !DILocation(line: 351, column: 3, scope: !2104)
!2121 = distinct !DISubprogram(name: "wcstoumax", scope: !2078, file: !2078, line: 362, type: !2122, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2095, !2107, !2111, !564}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "nptr", arg: 1, scope: !2121, file: !2078, line: 362, type: !2107)
!2126 = !DILocalVariable(name: "endptr", arg: 2, scope: !2121, file: !2078, line: 362, type: !2111)
!2127 = !DILocalVariable(name: "base", arg: 3, scope: !2121, file: !2078, line: 362, type: !564)
!2128 = !DILocation(line: 0, scope: !2121)
!2129 = !DILocation(line: 365, column: 10, scope: !2121)
!2130 = !DILocation(line: 365, column: 3, scope: !2121)
!2131 = distinct !DISubprogram(name: "stat", scope: !2132, file: !2132, line: 453, type: !2133, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!564, !569, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2137, line: 46, size: 1152, elements: !2138)
!2137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2138 = !{!2139, !2141, !2143, !2145, !2147, !2149, !2151, !2152, !2153, !2154, !2156, !2158, !2166, !2167, !2168}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2136, file: !2137, line: 48, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1890, line: 145, baseType: !605)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2136, file: !2137, line: 53, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1890, line: 148, baseType: !605)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2136, file: !2137, line: 61, baseType: !2144, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1890, line: 151, baseType: !605)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2136, file: !2137, line: 62, baseType: !2146, size: 32, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1890, line: 150, baseType: !7)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2136, file: !2137, line: 64, baseType: !2148, size: 32, offset: 224)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1890, line: 146, baseType: !7)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2136, file: !2137, line: 65, baseType: !2150, size: 32, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1890, line: 147, baseType: !7)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2136, file: !2137, line: 67, baseType: !564, size: 32, offset: 288)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2136, file: !2137, line: 69, baseType: !2140, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2136, file: !2137, line: 74, baseType: !1889, size: 64, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2136, file: !2137, line: 78, baseType: !2155, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1890, line: 174, baseType: !622)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2136, file: !2137, line: 80, baseType: !2157, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1890, line: 179, baseType: !622)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2136, file: !2137, line: 91, baseType: !2159, size: 128, offset: 576)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2160, line: 10, size: 128, elements: !2161)
!2160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2161 = !{!2162, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2159, file: !2160, line: 12, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1890, line: 160, baseType: !622)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2159, file: !2160, line: 16, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1890, line: 196, baseType: !622)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2136, file: !2137, line: 92, baseType: !2159, size: 128, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2136, file: !2137, line: 93, baseType: !2159, size: 128, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2136, file: !2137, line: 106, baseType: !2169, size: 192, offset: 960)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2165, size: 192, elements: !792)
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "__path", arg: 1, scope: !2131, file: !2132, line: 453, type: !569)
!2172 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2131, file: !2132, line: 453, type: !2135)
!2173 = !DILocation(line: 0, scope: !2131)
!2174 = !DILocation(line: 455, column: 10, scope: !2131)
!2175 = !DILocation(line: 455, column: 3, scope: !2131)
!2176 = distinct !DISubprogram(name: "lstat", scope: !2132, file: !2132, line: 460, type: !2133, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2177)
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "__path", arg: 1, scope: !2176, file: !2132, line: 460, type: !569)
!2179 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2176, file: !2132, line: 460, type: !2135)
!2180 = !DILocation(line: 0, scope: !2176)
!2181 = !DILocation(line: 462, column: 10, scope: !2176)
!2182 = !DILocation(line: 462, column: 3, scope: !2176)
!2183 = distinct !DISubprogram(name: "fstat", scope: !2132, file: !2132, line: 467, type: !2184, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!564, !564, !2135}
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "__fd", arg: 1, scope: !2183, file: !2132, line: 467, type: !564)
!2188 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2183, file: !2132, line: 467, type: !2135)
!2189 = !DILocation(line: 0, scope: !2183)
!2190 = !DILocation(line: 469, column: 10, scope: !2183)
!2191 = !DILocation(line: 469, column: 3, scope: !2183)
!2192 = distinct !DISubprogram(name: "fstatat", scope: !2132, file: !2132, line: 474, type: !2193, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!564, !564, !569, !2135, !564}
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DILocalVariable(name: "__fd", arg: 1, scope: !2192, file: !2132, line: 474, type: !564)
!2197 = !DILocalVariable(name: "__filename", arg: 2, scope: !2192, file: !2132, line: 474, type: !569)
!2198 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2192, file: !2132, line: 474, type: !2135)
!2199 = !DILocalVariable(name: "__flag", arg: 4, scope: !2192, file: !2132, line: 474, type: !564)
!2200 = !DILocation(line: 0, scope: !2192)
!2201 = !DILocation(line: 477, column: 10, scope: !2192)
!2202 = !DILocation(line: 477, column: 3, scope: !2192)
!2203 = distinct !DISubprogram(name: "mknod", scope: !2132, file: !2132, line: 483, type: !2204, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!564, !569, !2146, !2140}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "__path", arg: 1, scope: !2203, file: !2132, line: 483, type: !569)
!2208 = !DILocalVariable(name: "__mode", arg: 2, scope: !2203, file: !2132, line: 483, type: !2146)
!2209 = !DILocalVariable(name: "__dev", arg: 3, scope: !2203, file: !2132, line: 483, type: !2140)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocation(line: 485, column: 10, scope: !2203)
!2212 = !DILocation(line: 485, column: 3, scope: !2203)
!2213 = distinct !DISubprogram(name: "mknodat", scope: !2132, file: !2132, line: 491, type: !2214, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!564, !564, !569, !2146, !2140}
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "__fd", arg: 1, scope: !2213, file: !2132, line: 491, type: !564)
!2218 = !DILocalVariable(name: "__path", arg: 2, scope: !2213, file: !2132, line: 491, type: !569)
!2219 = !DILocalVariable(name: "__mode", arg: 3, scope: !2213, file: !2132, line: 491, type: !2146)
!2220 = !DILocalVariable(name: "__dev", arg: 4, scope: !2213, file: !2132, line: 491, type: !2140)
!2221 = !DILocation(line: 0, scope: !2213)
!2222 = !DILocation(line: 494, column: 10, scope: !2213)
!2223 = !DILocation(line: 494, column: 3, scope: !2213)
!2224 = distinct !DISubprogram(name: "stat64", scope: !2132, file: !2132, line: 502, type: !2225, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!564, !569, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2137, line: 119, size: 1152, elements: !2229)
!2229 = !{!2230, !2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2243, !2244, !2245, !2246}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2228, file: !2137, line: 121, baseType: !2140, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2228, file: !2137, line: 123, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1890, line: 149, baseType: !605)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2228, file: !2137, line: 124, baseType: !2144, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2228, file: !2137, line: 125, baseType: !2146, size: 32, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2228, file: !2137, line: 132, baseType: !2148, size: 32, offset: 224)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2228, file: !2137, line: 133, baseType: !2150, size: 32, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2228, file: !2137, line: 135, baseType: !564, size: 32, offset: 288)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2228, file: !2137, line: 136, baseType: !2140, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2228, file: !2137, line: 137, baseType: !1889, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2228, file: !2137, line: 143, baseType: !2155, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2228, file: !2137, line: 144, baseType: !2242, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1890, line: 180, baseType: !622)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2228, file: !2137, line: 152, baseType: !2159, size: 128, offset: 576)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2228, file: !2137, line: 153, baseType: !2159, size: 128, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2228, file: !2137, line: 154, baseType: !2159, size: 128, offset: 832)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2228, file: !2137, line: 164, baseType: !2169, size: 192, offset: 960)
!2247 = !{!2248, !2249}
!2248 = !DILocalVariable(name: "__path", arg: 1, scope: !2224, file: !2132, line: 502, type: !569)
!2249 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2224, file: !2132, line: 502, type: !2227)
!2250 = !DILocation(line: 0, scope: !2224)
!2251 = !DILocation(line: 504, column: 10, scope: !2224)
!2252 = !DILocation(line: 504, column: 3, scope: !2224)
!2253 = distinct !DISubprogram(name: "lstat64", scope: !2132, file: !2132, line: 509, type: !2225, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "__path", arg: 1, scope: !2253, file: !2132, line: 509, type: !569)
!2256 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2253, file: !2132, line: 509, type: !2227)
!2257 = !DILocation(line: 0, scope: !2253)
!2258 = !DILocation(line: 511, column: 10, scope: !2253)
!2259 = !DILocation(line: 511, column: 3, scope: !2253)
!2260 = distinct !DISubprogram(name: "fstat64", scope: !2132, file: !2132, line: 516, type: !2261, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!564, !564, !2227}
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "__fd", arg: 1, scope: !2260, file: !2132, line: 516, type: !564)
!2265 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2260, file: !2132, line: 516, type: !2227)
!2266 = !DILocation(line: 0, scope: !2260)
!2267 = !DILocation(line: 518, column: 10, scope: !2260)
!2268 = !DILocation(line: 518, column: 3, scope: !2260)
!2269 = distinct !DISubprogram(name: "fstatat64", scope: !2132, file: !2132, line: 523, type: !2270, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!564, !564, !569, !2227, !564}
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "__fd", arg: 1, scope: !2269, file: !2132, line: 523, type: !564)
!2274 = !DILocalVariable(name: "__filename", arg: 2, scope: !2269, file: !2132, line: 523, type: !569)
!2275 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2269, file: !2132, line: 523, type: !2227)
!2276 = !DILocalVariable(name: "__flag", arg: 4, scope: !2269, file: !2132, line: 523, type: !564)
!2277 = !DILocation(line: 0, scope: !2269)
!2278 = !DILocation(line: 526, column: 10, scope: !2269)
!2279 = !DILocation(line: 526, column: 3, scope: !2269)
!2280 = distinct !DISubprogram(name: "regstat_init_n_sets_and_refs", scope: !3, file: !3, line: 53, type: !2281, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null}
!2283 = !{!2284, !2285, !2286, !2291}
!2284 = !DILocalVariable(name: "i", scope: !2280, file: !3, line: 55, type: !7)
!2285 = !DILocalVariable(name: "max_regno", scope: !2280, file: !3, line: 56, type: !7)
!2286 = !DILocalVariable(name: "use_count", scope: !2287, file: !3, line: 67, type: !564)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 66, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 65, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 65, column: 5)
!2290 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 64, column: 7)
!2291 = !DILocalVariable(name: "use", scope: !2287, file: !3, line: 68, type: !656)
!2292 = !DILocation(line: 56, column: 28, scope: !2280)
!2293 = !DILocation(line: 0, scope: !2280)
!2294 = !DILocation(line: 58, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 58, column: 3)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 58, column: 3)
!2297 = !DILocation(line: 58, column: 3, scope: !2296)
!2298 = !DILocation(line: 59, column: 3, scope: !2280)
!2299 = !DILocation(line: 60, column: 3, scope: !2280)
!2300 = !DILocation(line: 62, column: 29, scope: !2280)
!2301 = !DILocation(line: 62, column: 27, scope: !2280)
!2302 = !DILocation(line: 64, column: 7, scope: !2290)
!2303 = !DILocation(line: 64, column: 7, scope: !2280)
!2304 = !DILocation(line: 65, column: 19, scope: !2288)
!2305 = !DILocation(line: 65, column: 5, scope: !2289)
!2306 = !DILocation(line: 80, column: 19, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 80, column: 5)
!2308 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 80, column: 5)
!2309 = !DILocation(line: 80, column: 5, scope: !2308)
!2310 = !DILocation(line: 0, scope: !2289)
!2311 = !DILocation(line: 70, column: 14, scope: !2287)
!2312 = !DILocation(line: 0, scope: !2287)
!2313 = !DILocation(line: 71, column: 13, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 71, column: 2)
!2315 = !DILocation(line: 71, column: 7, scope: !2314)
!2316 = !DILocation(line: 0, scope: !2314)
!2317 = !DILocation(line: 71, column: 2, scope: !2314)
!2318 = !DILocation(line: 72, column: 8, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 72, column: 8)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 71, column: 2)
!2321 = !DILocation(line: 72, column: 31, scope: !2319)
!2322 = !DILocation(line: 72, column: 34, scope: !2319)
!2323 = !DILocation(line: 72, column: 8, scope: !2320)
!2324 = !DILocation(line: 71, column: 46, scope: !2320)
!2325 = !DILocation(line: 71, column: 2, scope: !2320)
!2326 = distinct !{!2326, !2317, !2327}
!2327 = !DILocation(line: 73, column: 15, scope: !2314)
!2328 = !DILocation(line: 76, column: 2, scope: !2287)
!2329 = !DILocation(line: 77, column: 2, scope: !2287)
!2330 = !DILocation(line: 65, column: 33, scope: !2288)
!2331 = !DILocation(line: 65, column: 5, scope: !2288)
!2332 = distinct !{!2332, !2305, !2333}
!2333 = !DILocation(line: 78, column: 7, scope: !2289)
!2334 = !DILocation(line: 0, scope: !2308)
!2335 = !DILocation(line: 82, column: 2, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 81, column: 7)
!2337 = !DILocation(line: 83, column: 2, scope: !2336)
!2338 = !DILocation(line: 80, column: 33, scope: !2307)
!2339 = !DILocation(line: 80, column: 5, scope: !2307)
!2340 = distinct !{!2340, !2309, !2341}
!2341 = !DILocation(line: 84, column: 7, scope: !2308)
!2342 = !DILocation(line: 85, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 85, column: 3)
!2344 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 85, column: 3)
!2345 = !DILocation(line: 85, column: 3, scope: !2344)
!2346 = !DILocation(line: 87, column: 1, scope: !2280)
!2347 = distinct !DISubprogram(name: "REG_N_SETS", scope: !573, file: !573, line: 90, type: !1929, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2348)
!2348 = !{!2349}
!2349 = !DILocalVariable(name: "regno", arg: 1, scope: !2347, file: !573, line: 90, type: !564)
!2350 = !DILocation(line: 0, scope: !2347)
!2351 = !DILocation(line: 92, column: 10, scope: !2347)
!2352 = !DILocation(line: 92, column: 41, scope: !2347)
!2353 = !DILocation(line: 92, column: 3, scope: !2347)
!2354 = distinct !DISubprogram(name: "regstat_free_n_sets_and_refs", scope: !3, file: !3, line: 93, type: !2281, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!2355 = !DILocation(line: 95, column: 3, scope: !2354)
!2356 = !DILocation(line: 96, column: 9, scope: !2354)
!2357 = !DILocation(line: 96, column: 3, scope: !2354)
!2358 = !DILocation(line: 97, column: 27, scope: !2354)
!2359 = !DILocation(line: 98, column: 1, scope: !2354)
!2360 = distinct !DISubprogram(name: "regstat_compute_ri", scope: !3, file: !3, line: 343, type: !2281, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369}
!2362 = !DILocalVariable(name: "bb", scope: !2360, file: !3, line: 345, type: !1139)
!2363 = !DILocalVariable(name: "live", scope: !2360, file: !3, line: 346, type: !587)
!2364 = !DILocalVariable(name: "do_not_gen", scope: !2360, file: !3, line: 347, type: !587)
!2365 = !DILocalVariable(name: "artificial_uses", scope: !2360, file: !3, line: 348, type: !587)
!2366 = !DILocalVariable(name: "local_live", scope: !2360, file: !3, line: 349, type: !587)
!2367 = !DILocalVariable(name: "local_processed", scope: !2360, file: !3, line: 350, type: !587)
!2368 = !DILocalVariable(name: "regno", scope: !2360, file: !3, line: 351, type: !7)
!2369 = !DILocalVariable(name: "bi", scope: !2360, file: !3, line: 352, type: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !591, line: 218, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 203, size: 256, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2371, file: !591, line: 206, baseType: !594, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2371, file: !591, line: 209, baseType: !594, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2371, file: !591, line: 212, baseType: !7, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2371, file: !591, line: 217, baseType: !604, size: 64, offset: 192)
!2377 = !DILocation(line: 346, column: 17, scope: !2360)
!2378 = !DILocation(line: 0, scope: !2360)
!2379 = !DILocation(line: 347, column: 23, scope: !2360)
!2380 = !DILocation(line: 348, column: 28, scope: !2360)
!2381 = !DILocation(line: 349, column: 23, scope: !2360)
!2382 = !DILocation(line: 350, column: 28, scope: !2360)
!2383 = !DILocation(line: 351, column: 3, scope: !2360)
!2384 = !DILocation(line: 352, column: 3, scope: !2360)
!2385 = !DILocation(line: 356, column: 3, scope: !2360)
!2386 = !DILocation(line: 358, column: 3, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 358, column: 3)
!2388 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 358, column: 3)
!2389 = !DILocation(line: 358, column: 3, scope: !2388)
!2390 = !DILocation(line: 359, column: 20, scope: !2360)
!2391 = !DILocation(line: 359, column: 18, scope: !2360)
!2392 = !DILocation(line: 360, column: 15, scope: !2360)
!2393 = !DILocation(line: 360, column: 13, scope: !2360)
!2394 = !DILocation(line: 361, column: 21, scope: !2360)
!2395 = !DILocation(line: 361, column: 19, scope: !2360)
!2396 = !DILocation(line: 362, column: 16, scope: !2360)
!2397 = !DILocation(line: 362, column: 14, scope: !2360)
!2398 = !DILocation(line: 364, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 364, column: 3)
!2400 = !DILocation(line: 364, column: 3, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 364, column: 3)
!2402 = !DILocation(line: 0, scope: !2399)
!2403 = !DILocation(line: 366, column: 34, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 365, column: 5)
!2405 = !DILocation(line: 366, column: 7, scope: !2404)
!2406 = !DILocation(line: 0, scope: !2401)
!2407 = distinct !{!2407, !2398, !2408}
!2408 = !DILocation(line: 368, column: 5, scope: !2399)
!2409 = !DILocation(line: 370, column: 3, scope: !2360)
!2410 = !DILocation(line: 371, column: 3, scope: !2360)
!2411 = !DILocation(line: 372, column: 3, scope: !2360)
!2412 = !DILocation(line: 375, column: 3, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 375, column: 3)
!2414 = !DILocation(line: 375, column: 3, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 375, column: 3)
!2416 = !DILocation(line: 377, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 376, column: 5)
!2418 = !DILocation(line: 377, column: 31, scope: !2417)
!2419 = !DILocation(line: 378, column: 7, scope: !2417)
!2420 = !DILocation(line: 378, column: 31, scope: !2417)
!2421 = distinct !{!2421, !2412, !2422}
!2422 = !DILocation(line: 379, column: 5, scope: !2413)
!2423 = !DILocation(line: 381, column: 3, scope: !2360)
!2424 = !DILocation(line: 382, column: 3, scope: !2360)
!2425 = !DILocation(line: 383, column: 3, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 383, column: 3)
!2427 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 383, column: 3)
!2428 = !DILocation(line: 383, column: 3, scope: !2427)
!2429 = !DILocation(line: 384, column: 1, scope: !2360)
!2430 = distinct !DISubprogram(name: "regstat_bb_compute_ri", scope: !3, file: !3, line: 120, type: !2431, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !7, !587, !587, !587, !587, !587}
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2451, !2455, !2459, !2460, !2461, !2462, !2463, !2466, !2467, !2471, !2474, !2475, !2478, !2482, !2485, !2489}
!2434 = !DILocalVariable(name: "bb_index", arg: 1, scope: !2430, file: !3, line: 120, type: !7)
!2435 = !DILocalVariable(name: "live", arg: 2, scope: !2430, file: !3, line: 121, type: !587)
!2436 = !DILocalVariable(name: "do_not_gen", arg: 3, scope: !2430, file: !3, line: 121, type: !587)
!2437 = !DILocalVariable(name: "artificial_uses", arg: 4, scope: !2430, file: !3, line: 121, type: !587)
!2438 = !DILocalVariable(name: "local_live", arg: 5, scope: !2430, file: !3, line: 122, type: !587)
!2439 = !DILocalVariable(name: "local_processed", arg: 6, scope: !2430, file: !3, line: 122, type: !587)
!2440 = !DILocalVariable(name: "bb", scope: !2430, file: !3, line: 124, type: !1139)
!2441 = !DILocalVariable(name: "insn", scope: !2430, file: !3, line: 125, type: !667)
!2442 = !DILocalVariable(name: "def_rec", scope: !2430, file: !3, line: 126, type: !655)
!2443 = !DILocalVariable(name: "use_rec", scope: !2430, file: !3, line: 127, type: !655)
!2444 = !DILocalVariable(name: "luid", scope: !2430, file: !3, line: 128, type: !564)
!2445 = !DILocalVariable(name: "bi", scope: !2430, file: !3, line: 129, type: !2370)
!2446 = !DILocalVariable(name: "regno", scope: !2430, file: !3, line: 130, type: !7)
!2447 = !DILocalVariable(name: "def", scope: !2448, file: !3, line: 144, type: !656)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 143, column: 5)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 142, column: 3)
!2450 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 142, column: 3)
!2451 = !DILocalVariable(name: "use", scope: !2452, file: !3, line: 151, type: !656)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 150, column: 5)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 149, column: 3)
!2454 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 149, column: 3)
!2455 = !DILocalVariable(name: "uid", scope: !2456, file: !3, line: 162, type: !7)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 161, column: 5)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 160, column: 3)
!2458 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 160, column: 3)
!2459 = !DILocalVariable(name: "regno", scope: !2456, file: !3, line: 163, type: !7)
!2460 = !DILocalVariable(name: "bi", scope: !2456, file: !3, line: 164, type: !2370)
!2461 = !DILocalVariable(name: "mws_rec", scope: !2456, file: !3, line: 165, type: !1788)
!2462 = !DILocalVariable(name: "link", scope: !2456, file: !3, line: 166, type: !667)
!2463 = !DILocalVariable(name: "can_throw", scope: !2464, file: !3, line: 193, type: !563)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 192, column: 2)
!2465 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 191, column: 11)
!2466 = !DILocalVariable(name: "set_jump", scope: !2464, file: !3, line: 194, type: !563)
!2467 = !DILocalVariable(name: "mws", scope: !2468, file: !3, line: 222, type: !1789)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 221, column: 2)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 220, column: 7)
!2470 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 220, column: 7)
!2471 = !DILocalVariable(name: "all_dead", scope: !2472, file: !3, line: 225, type: !563)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 224, column: 6)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 223, column: 8)
!2474 = !DILocalVariable(name: "r", scope: !2472, file: !3, line: 226, type: !7)
!2475 = !DILocalVariable(name: "regno", scope: !2476, file: !3, line: 238, type: !7)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 237, column: 3)
!2477 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 236, column: 12)
!2478 = !DILocalVariable(name: "def", scope: !2479, file: !3, line: 250, type: !656)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 249, column: 2)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 248, column: 7)
!2481 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 248, column: 7)
!2482 = !DILocalVariable(name: "dregno", scope: !2483, file: !3, line: 254, type: !7)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 253, column: 6)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 251, column: 8)
!2485 = !DILocalVariable(name: "use", scope: !2486, file: !3, line: 299, type: !656)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 298, column: 2)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 297, column: 7)
!2488 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 297, column: 7)
!2489 = !DILocalVariable(name: "uregno", scope: !2486, file: !3, line: 300, type: !7)
!2490 = !DILocation(line: 0, scope: !2430)
!2491 = !DILocation(line: 124, column: 20, scope: !2430)
!2492 = !DILocation(line: 129, column: 3, scope: !2430)
!2493 = !DILocation(line: 130, column: 3, scope: !2430)
!2494 = !DILocation(line: 132, column: 22, scope: !2430)
!2495 = !DILocation(line: 132, column: 3, scope: !2430)
!2496 = !DILocation(line: 133, column: 3, scope: !2430)
!2497 = !DILocation(line: 137, column: 3, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 137, column: 3)
!2499 = !DILocation(line: 137, column: 3, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 137, column: 3)
!2501 = !DILocation(line: 138, column: 5, scope: !2500)
!2502 = !DILocation(line: 138, column: 29, scope: !2500)
!2503 = distinct !{!2503, !2497, !2504}
!2504 = !DILocation(line: 138, column: 31, scope: !2498)
!2505 = !DILocation(line: 142, column: 18, scope: !2450)
!2506 = !DILocation(line: 142, column: 8, scope: !2450)
!2507 = !DILocation(line: 0, scope: !2450)
!2508 = !DILocation(line: 142, column: 53, scope: !2449)
!2509 = !DILocation(line: 142, column: 3, scope: !2450)
!2510 = !DILocation(line: 0, scope: !2448)
!2511 = !DILocation(line: 145, column: 12, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 145, column: 11)
!2513 = !DILocation(line: 145, column: 31, scope: !2512)
!2514 = !DILocation(line: 145, column: 48, scope: !2512)
!2515 = !DILocation(line: 145, column: 11, scope: !2448)
!2516 = !DILocation(line: 146, column: 26, scope: !2512)
!2517 = !DILocation(line: 146, column: 2, scope: !2512)
!2518 = !DILocation(line: 142, column: 70, scope: !2449)
!2519 = !DILocation(line: 142, column: 3, scope: !2449)
!2520 = distinct !{!2520, !2509, !2521}
!2521 = !DILocation(line: 147, column: 5, scope: !2450)
!2522 = !DILocation(line: 149, column: 18, scope: !2454)
!2523 = !DILocation(line: 149, column: 8, scope: !2454)
!2524 = !DILocation(line: 0, scope: !2454)
!2525 = !DILocation(line: 149, column: 53, scope: !2453)
!2526 = !DILocation(line: 149, column: 3, scope: !2454)
!2527 = !DILocation(line: 0, scope: !2452)
!2528 = !DILocation(line: 152, column: 12, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 152, column: 11)
!2530 = !DILocation(line: 152, column: 31, scope: !2529)
!2531 = !DILocation(line: 152, column: 48, scope: !2529)
!2532 = !DILocation(line: 152, column: 11, scope: !2452)
!2533 = !DILocation(line: 154, column: 12, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 153, column: 2)
!2535 = !DILocation(line: 154, column: 10, scope: !2534)
!2536 = !DILocation(line: 155, column: 4, scope: !2534)
!2537 = !DILocation(line: 156, column: 37, scope: !2534)
!2538 = !DILocation(line: 156, column: 4, scope: !2534)
!2539 = !DILocation(line: 157, column: 2, scope: !2534)
!2540 = !DILocation(line: 149, column: 70, scope: !2453)
!2541 = !DILocation(line: 149, column: 3, scope: !2453)
!2542 = distinct !{!2542, !2526, !2543}
!2543 = !DILocation(line: 158, column: 5, scope: !2454)
!2544 = !DILocation(line: 160, column: 3, scope: !2458)
!2545 = !DILocation(line: 0, scope: !2456)
!2546 = !DILocation(line: 0, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 196, column: 6)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 195, column: 4)
!2549 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 195, column: 4)
!2550 = !DILocation(line: 0, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 284, column: 14)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 282, column: 9)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 280, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 279, column: 12)
!2555 = !DILocation(line: 128, column: 7, scope: !2430)
!2556 = !DILocation(line: 0, scope: !2458)
!2557 = !DILocation(line: 160, column: 3, scope: !2457)
!2558 = !DILocation(line: 162, column: 26, scope: !2456)
!2559 = !DILocation(line: 163, column: 7, scope: !2456)
!2560 = !DILocation(line: 164, column: 7, scope: !2456)
!2561 = !DILocation(line: 168, column: 12, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 168, column: 11)
!2563 = !DILocation(line: 168, column: 11, scope: !2456)
!2564 = !DILocation(line: 174, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 174, column: 7)
!2566 = !DILocation(line: 174, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 174, column: 7)
!2568 = !DILocation(line: 176, column: 4, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 175, column: 2)
!2570 = !DILocation(line: 176, column: 27, scope: !2569)
!2571 = distinct !{!2571, !2564, !2572}
!2572 = !DILocation(line: 177, column: 2, scope: !2565)
!2573 = !DILocation(line: 180, column: 7, scope: !2456)
!2574 = !DILocation(line: 182, column: 14, scope: !2456)
!2575 = !DILocation(line: 183, column: 7, scope: !2456)
!2576 = !DILocation(line: 185, column: 8, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 185, column: 8)
!2578 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 184, column: 2)
!2579 = !DILocation(line: 185, column: 29, scope: !2577)
!2580 = !DILocation(line: 185, column: 8, scope: !2578)
!2581 = !DILocation(line: 186, column: 6, scope: !2577)
!2582 = !DILocation(line: 186, column: 42, scope: !2577)
!2583 = !DILocation(line: 187, column: 11, scope: !2578)
!2584 = distinct !{!2584, !2575, !2585}
!2585 = !DILocation(line: 188, column: 2, scope: !2456)
!2586 = !DILocation(line: 178, column: 11, scope: !2456)
!2587 = !DILocation(line: 191, column: 11, scope: !2465)
!2588 = !DILocation(line: 191, column: 11, scope: !2456)
!2589 = !DILocation(line: 193, column: 21, scope: !2464)
!2590 = !DILocation(line: 0, scope: !2464)
!2591 = !DILocation(line: 194, column: 21, scope: !2464)
!2592 = !DILocation(line: 194, column: 60, scope: !2464)
!2593 = !DILocation(line: 195, column: 4, scope: !2549)
!2594 = !DILocation(line: 0, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 199, column: 12)
!2596 = !DILocation(line: 195, column: 4, scope: !2548)
!2597 = !DILocation(line: 197, column: 8, scope: !2547)
!2598 = !DILocation(line: 197, column: 35, scope: !2547)
!2599 = !DILocation(line: 198, column: 42, scope: !2547)
!2600 = !DILocation(line: 198, column: 8, scope: !2547)
!2601 = !DILocation(line: 198, column: 39, scope: !2547)
!2602 = !DILocation(line: 213, column: 12, scope: !2547)
!2603 = !DILocation(line: 214, column: 19, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 213, column: 12)
!2605 = !DILocation(line: 214, column: 35, scope: !2604)
!2606 = !DILocation(line: 214, column: 3, scope: !2604)
!2607 = distinct !{!2607, !2593, !2608}
!2608 = !DILocation(line: 215, column: 6, scope: !2549)
!2609 = !DILocation(line: 220, column: 22, scope: !2470)
!2610 = !DILocation(line: 200, column: 3, scope: !2595)
!2611 = !DILocation(line: 200, column: 39, scope: !2595)
!2612 = !DILocation(line: 220, column: 12, scope: !2470)
!2613 = !DILocation(line: 0, scope: !2470)
!2614 = !DILocation(line: 220, column: 45, scope: !2469)
!2615 = !DILocation(line: 220, column: 7, scope: !2470)
!2616 = !DILocation(line: 0, scope: !2468)
!2617 = !DILocation(line: 223, column: 8, scope: !2473)
!2618 = !DILocation(line: 223, column: 8, scope: !2468)
!2619 = !DILocation(line: 0, scope: !2472)
!2620 = !DILocation(line: 228, column: 20, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 228, column: 8)
!2622 = !DILocation(line: 0, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 228, column: 8)
!2624 = !DILocation(line: 228, column: 13, scope: !2621)
!2625 = !DILocation(line: 0, scope: !2621)
!2626 = !DILocation(line: 228, column: 43, scope: !2623)
!2627 = !DILocation(line: 228, column: 35, scope: !2623)
!2628 = !DILocation(line: 228, column: 8, scope: !2621)
!2629 = !DILocation(line: 229, column: 8, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 229, column: 7)
!2631 = !DILocation(line: 230, column: 7, scope: !2630)
!2632 = !DILocation(line: 230, column: 10, scope: !2630)
!2633 = !DILocation(line: 229, column: 7, scope: !2623)
!2634 = !DILocation(line: 228, column: 55, scope: !2623)
!2635 = !DILocation(line: 228, column: 8, scope: !2623)
!2636 = distinct !{!2636, !2628, !2637}
!2637 = !DILocation(line: 234, column: 5, scope: !2621)
!2638 = !DILocation(line: 236, column: 12, scope: !2472)
!2639 = !DILocation(line: 238, column: 31, scope: !2476)
!2640 = !DILocation(line: 0, scope: !2476)
!2641 = !DILocation(line: 239, column: 5, scope: !2476)
!2642 = !DILocation(line: 241, column: 5, scope: !2476)
!2643 = !DILocation(line: 241, column: 28, scope: !2476)
!2644 = !DILocation(line: 242, column: 3, scope: !2476)
!2645 = !DILocation(line: 220, column: 62, scope: !2469)
!2646 = !DILocation(line: 220, column: 7, scope: !2469)
!2647 = distinct !{!2647, !2615, !2648}
!2648 = !DILocation(line: 244, column: 2, scope: !2470)
!2649 = !DILocation(line: 248, column: 22, scope: !2481)
!2650 = !DILocation(line: 248, column: 12, scope: !2481)
!2651 = !DILocation(line: 0, scope: !2481)
!2652 = !DILocation(line: 248, column: 46, scope: !2480)
!2653 = !DILocation(line: 248, column: 7, scope: !2481)
!2654 = !DILocation(line: 0, scope: !2479)
!2655 = !DILocation(line: 251, column: 10, scope: !2484)
!2656 = !DILocation(line: 252, column: 8, scope: !2484)
!2657 = !DILocation(line: 252, column: 14, scope: !2484)
!2658 = !DILocation(line: 252, column: 33, scope: !2484)
!2659 = !DILocation(line: 251, column: 8, scope: !2479)
!2660 = !DILocation(line: 254, column: 30, scope: !2483)
!2661 = !DILocation(line: 0, scope: !2483)
!2662 = !DILocation(line: 256, column: 12, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 256, column: 12)
!2664 = !DILocation(line: 256, column: 12, scope: !2483)
!2665 = !DILocation(line: 262, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 262, column: 9)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 257, column: 3)
!2668 = !DILocation(line: 262, column: 9, scope: !2667)
!2669 = !DILocation(line: 264, column: 15, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 264, column: 13)
!2671 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 263, column: 7)
!2672 = !DILocation(line: 264, column: 34, scope: !2670)
!2673 = !DILocation(line: 264, column: 13, scope: !2671)
!2674 = !DILocation(line: 265, column: 4, scope: !2670)
!2675 = !DILocation(line: 269, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 268, column: 7)
!2677 = !DILocation(line: 270, column: 9, scope: !2676)
!2678 = !DILocation(line: 270, column: 34, scope: !2676)
!2679 = !DILocation(line: 273, column: 20, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 273, column: 17)
!2681 = !DILocation(line: 273, column: 39, scope: !2680)
!2682 = !DILocation(line: 274, column: 10, scope: !2680)
!2683 = !DILocation(line: 274, column: 15, scope: !2680)
!2684 = !DILocation(line: 273, column: 17, scope: !2663)
!2685 = !DILocation(line: 276, column: 5, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 275, column: 3)
!2687 = !DILocation(line: 276, column: 29, scope: !2686)
!2688 = !DILocation(line: 277, column: 3, scope: !2686)
!2689 = !DILocation(line: 279, column: 19, scope: !2554)
!2690 = !DILocation(line: 279, column: 12, scope: !2483)
!2691 = !DILocation(line: 281, column: 26, scope: !2553)
!2692 = !DILocation(line: 281, column: 5, scope: !2553)
!2693 = !DILocation(line: 281, column: 23, scope: !2553)
!2694 = !DILocation(line: 282, column: 9, scope: !2552)
!2695 = !DILocation(line: 282, column: 34, scope: !2552)
!2696 = !DILocation(line: 282, column: 9, scope: !2553)
!2697 = !DILocation(line: 283, column: 38, scope: !2552)
!2698 = !DILocation(line: 283, column: 32, scope: !2552)
!2699 = !DILocation(line: 283, column: 7, scope: !2552)
!2700 = !DILocation(line: 284, column: 46, scope: !2551)
!2701 = !DILocation(line: 284, column: 39, scope: !2551)
!2702 = !DILocation(line: 284, column: 14, scope: !2552)
!2703 = !DILocation(line: 285, column: 32, scope: !2551)
!2704 = !DILocation(line: 285, column: 7, scope: !2551)
!2705 = !DILocation(line: 288, column: 14, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 288, column: 12)
!2707 = !DILocation(line: 288, column: 33, scope: !2706)
!2708 = !DILocation(line: 288, column: 12, scope: !2483)
!2709 = !DILocation(line: 289, column: 3, scope: !2706)
!2710 = !DILocation(line: 292, column: 14, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 292, column: 12)
!2712 = !DILocation(line: 292, column: 33, scope: !2711)
!2713 = !DILocation(line: 292, column: 12, scope: !2483)
!2714 = !DILocation(line: 293, column: 3, scope: !2711)
!2715 = !DILocation(line: 248, column: 63, scope: !2480)
!2716 = !DILocation(line: 248, column: 7, scope: !2480)
!2717 = distinct !{!2717, !2653, !2718}
!2718 = !DILocation(line: 295, column: 2, scope: !2481)
!2719 = !DILocation(line: 297, column: 22, scope: !2488)
!2720 = !DILocation(line: 297, column: 12, scope: !2488)
!2721 = !DILocation(line: 0, scope: !2488)
!2722 = !DILocation(line: 297, column: 46, scope: !2487)
!2723 = !DILocation(line: 297, column: 7, scope: !2488)
!2724 = !DILocation(line: 300, column: 26, scope: !2486)
!2725 = !DILocation(line: 0, scope: !2486)
!2726 = !DILocation(line: 302, column: 15, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 302, column: 8)
!2728 = !DILocation(line: 302, column: 8, scope: !2486)
!2729 = !DILocation(line: 304, column: 29, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 303, column: 6)
!2731 = !DILocation(line: 304, column: 8, scope: !2730)
!2732 = !DILocation(line: 304, column: 26, scope: !2730)
!2733 = !DILocation(line: 305, column: 12, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 305, column: 12)
!2735 = !DILocation(line: 305, column: 37, scope: !2734)
!2736 = !DILocation(line: 305, column: 12, scope: !2730)
!2737 = !DILocation(line: 306, column: 34, scope: !2734)
!2738 = !DILocation(line: 306, column: 28, scope: !2734)
!2739 = !DILocation(line: 306, column: 3, scope: !2734)
!2740 = !DILocation(line: 307, column: 49, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 307, column: 17)
!2742 = !DILocation(line: 307, column: 42, scope: !2741)
!2743 = !DILocation(line: 307, column: 17, scope: !2734)
!2744 = !DILocation(line: 308, column: 28, scope: !2741)
!2745 = !DILocation(line: 308, column: 3, scope: !2741)
!2746 = !DILocation(line: 311, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 311, column: 8)
!2748 = !DILocation(line: 311, column: 8, scope: !2486)
!2749 = !DILocation(line: 314, column: 8, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 312, column: 6)
!2751 = !DILocation(line: 323, column: 8, scope: !2750)
!2752 = !DILocation(line: 323, column: 33, scope: !2750)
!2753 = !DILocation(line: 324, column: 8, scope: !2750)
!2754 = !DILocation(line: 325, column: 8, scope: !2750)
!2755 = !DILocation(line: 326, column: 6, scope: !2750)
!2756 = !DILocation(line: 297, column: 63, scope: !2487)
!2757 = !DILocation(line: 297, column: 7, scope: !2487)
!2758 = distinct !{!2758, !2723, !2759}
!2759 = !DILocation(line: 327, column: 2, scope: !2488)
!2760 = !DILocation(line: 328, column: 5, scope: !2457)
!2761 = distinct !{!2761, !2544, !2762}
!2762 = !DILocation(line: 328, column: 5, scope: !2458)
!2763 = !DILocation(line: 332, column: 3, scope: !2430)
!2764 = !DILocation(line: 333, column: 3, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 333, column: 3)
!2766 = !DILocation(line: 333, column: 3, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 333, column: 3)
!2768 = !DILocation(line: 334, column: 5, scope: !2767)
!2769 = !DILocation(line: 334, column: 29, scope: !2767)
!2770 = distinct !{!2770, !2764, !2771}
!2771 = !DILocation(line: 334, column: 32, scope: !2765)
!2772 = !DILocation(line: 336, column: 3, scope: !2430)
!2773 = !DILocation(line: 337, column: 3, scope: !2430)
!2774 = !DILocation(line: 338, column: 1, scope: !2430)
!2775 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !591, file: !591, line: 224, type: !2776, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2783)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2778, !2779, !7, !2782}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !588, line: 48, baseType: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DILocalVariable(name: "bi", arg: 1, scope: !2775, file: !591, line: 224, type: !2778)
!2785 = !DILocalVariable(name: "map", arg: 2, scope: !2775, file: !591, line: 224, type: !2779)
!2786 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2775, file: !591, line: 225, type: !7)
!2787 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2775, file: !591, line: 225, type: !2782)
!2788 = !DILocation(line: 0, scope: !2775)
!2789 = !DILocation(line: 227, column: 19, scope: !2775)
!2790 = !DILocation(line: 227, column: 12, scope: !2775)
!2791 = !DILocation(line: 228, column: 7, scope: !2775)
!2792 = !DILocation(line: 228, column: 12, scope: !2775)
!2793 = !DILocation(line: 0, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !591, line: 233, column: 11)
!2795 = distinct !DILexicalBlock(scope: !2775, file: !591, line: 232, column: 5)
!2796 = !DILocation(line: 0, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2795, file: !591, line: 239, column: 11)
!2798 = !DILocation(line: 231, column: 3, scope: !2775)
!2799 = !DILocation(line: 233, column: 16, scope: !2794)
!2800 = !DILocation(line: 233, column: 12, scope: !2794)
!2801 = !DILocation(line: 233, column: 11, scope: !2795)
!2802 = !DILocation(line: 235, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2794, file: !591, line: 234, column: 2)
!2804 = !DILocation(line: 236, column: 4, scope: !2803)
!2805 = !DILocation(line: 239, column: 21, scope: !2797)
!2806 = !DILocation(line: 239, column: 26, scope: !2797)
!2807 = !DILocation(line: 239, column: 11, scope: !2795)
!2808 = !DILocation(line: 241, column: 28, scope: !2795)
!2809 = !DILocation(line: 241, column: 16, scope: !2795)
!2810 = distinct !{!2810, !2798, !2811}
!2811 = !DILocation(line: 242, column: 5, scope: !2775)
!2812 = !DILocation(line: 245, column: 11, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2775, file: !591, line: 245, column: 7)
!2814 = !DILocation(line: 245, column: 17, scope: !2813)
!2815 = !DILocation(line: 245, column: 22, scope: !2813)
!2816 = !DILocation(line: 245, column: 7, scope: !2775)
!2817 = !DILocation(line: 246, column: 27, scope: !2813)
!2818 = !DILocation(line: 246, column: 32, scope: !2813)
!2819 = !DILocation(line: 246, column: 5, scope: !2813)
!2820 = !DILocation(line: 249, column: 27, scope: !2775)
!2821 = !DILocation(line: 249, column: 46, scope: !2775)
!2822 = !DILocation(line: 249, column: 7, scope: !2775)
!2823 = !DILocation(line: 249, column: 15, scope: !2775)
!2824 = !DILocation(line: 250, column: 14, scope: !2775)
!2825 = !DILocation(line: 251, column: 26, scope: !2775)
!2826 = !DILocation(line: 251, column: 7, scope: !2775)
!2827 = !DILocation(line: 251, column: 12, scope: !2775)
!2828 = !DILocation(line: 257, column: 16, scope: !2775)
!2829 = !DILocation(line: 257, column: 13, scope: !2775)
!2830 = !DILocation(line: 259, column: 11, scope: !2775)
!2831 = !DILocation(line: 260, column: 1, scope: !2775)
!2832 = distinct !DISubprogram(name: "bmp_iter_set", scope: !591, file: !591, line: 393, type: !2833, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!563, !2778, !2782}
!2835 = !{!2836, !2837, !2838}
!2836 = !DILocalVariable(name: "bi", arg: 1, scope: !2832, file: !591, line: 393, type: !2778)
!2837 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2832, file: !591, line: 393, type: !2782)
!2838 = !DILabel(scope: !2839, name: "next_bit", file: !591, line: 398)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !591, line: 397, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2832, file: !591, line: 396, column: 7)
!2841 = !DILocation(line: 0, scope: !2832)
!2842 = !DILocation(line: 396, column: 11, scope: !2840)
!2843 = !DILocation(line: 396, column: 7, scope: !2840)
!2844 = !DILocation(line: 396, column: 7, scope: !2832)
!2845 = !DILocation(line: 419, column: 15, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !591, line: 418, column: 2)
!2847 = distinct !DILexicalBlock(scope: !2832, file: !591, line: 415, column: 5)
!2848 = !DILocation(line: 399, column: 7, scope: !2839)
!2849 = !DILocation(line: 398, column: 5, scope: !2839)
!2850 = !DILocation(line: 399, column: 20, scope: !2839)
!2851 = !DILocation(line: 399, column: 25, scope: !2839)
!2852 = !DILocation(line: 399, column: 14, scope: !2839)
!2853 = !DILocation(line: 401, column: 13, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2839, file: !591, line: 400, column: 2)
!2855 = !DILocation(line: 402, column: 12, scope: !2854)
!2856 = distinct !{!2856, !2848, !2857}
!2857 = !DILocation(line: 403, column: 2, scope: !2839)
!2858 = !DILocation(line: 410, column: 15, scope: !2832)
!2859 = !DILocation(line: 410, column: 42, scope: !2832)
!2860 = !DILocation(line: 411, column: 26, scope: !2832)
!2861 = !DILocation(line: 410, column: 11, scope: !2832)
!2862 = !DILocation(line: 412, column: 7, scope: !2832)
!2863 = !DILocation(line: 412, column: 14, scope: !2832)
!2864 = !DILocation(line: 0, scope: !2847)
!2865 = !DILocation(line: 414, column: 3, scope: !2832)
!2866 = !DILocation(line: 417, column: 7, scope: !2847)
!2867 = !DILocation(line: 417, column: 18, scope: !2847)
!2868 = !DILocation(line: 417, column: 26, scope: !2847)
!2869 = !DILocation(line: 419, column: 13, scope: !2846)
!2870 = !DILocation(line: 420, column: 8, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2846, file: !591, line: 420, column: 8)
!2872 = !DILocation(line: 420, column: 8, scope: !2846)
!2873 = !DILocation(line: 422, column: 12, scope: !2846)
!2874 = !DILocation(line: 423, column: 15, scope: !2846)
!2875 = distinct !{!2875, !2866, !2876}
!2876 = !DILocation(line: 424, column: 2, scope: !2847)
!2877 = !DILocation(line: 427, column: 28, scope: !2847)
!2878 = !DILocation(line: 427, column: 16, scope: !2847)
!2879 = !DILocation(line: 428, column: 12, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2847, file: !591, line: 428, column: 11)
!2881 = !DILocation(line: 428, column: 11, scope: !2847)
!2882 = !DILocation(line: 430, column: 27, scope: !2847)
!2883 = !DILocation(line: 430, column: 32, scope: !2847)
!2884 = !DILocation(line: 430, column: 15, scope: !2847)
!2885 = !DILocation(line: 431, column: 19, scope: !2847)
!2886 = distinct !{!2886, !2865, !2887}
!2887 = !DILocation(line: 432, column: 5, scope: !2832)
!2888 = !DILocation(line: 433, column: 1, scope: !2832)
!2889 = distinct !DISubprogram(name: "bmp_iter_next", scope: !591, file: !591, line: 382, type: !2890, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2778, !2782}
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "bi", arg: 1, scope: !2889, file: !591, line: 382, type: !2778)
!2894 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2889, file: !591, line: 382, type: !2782)
!2895 = !DILocation(line: 0, scope: !2889)
!2896 = !DILocation(line: 384, column: 7, scope: !2889)
!2897 = !DILocation(line: 384, column: 12, scope: !2889)
!2898 = !DILocation(line: 385, column: 11, scope: !2889)
!2899 = !DILocation(line: 386, column: 1, scope: !2889)
!2900 = distinct !DISubprogram(name: "regstat_free_ri", scope: !3, file: !3, line: 390, type: !2281, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!2901 = !DILocation(line: 392, column: 3, scope: !2900)
!2902 = !DILocation(line: 394, column: 9, scope: !2900)
!2903 = !DILocation(line: 393, column: 19, scope: !2900)
!2904 = !DILocation(line: 394, column: 3, scope: !2900)
!2905 = !DILocation(line: 395, column: 14, scope: !2900)
!2906 = !DILocation(line: 397, column: 3, scope: !2900)
!2907 = !DILocation(line: 398, column: 1, scope: !2900)
!2908 = distinct !DISubprogram(name: "regstat_get_setjmp_crosses", scope: !3, file: !3, line: 405, type: !2909, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!587}
!2911 = !DILocation(line: 407, column: 10, scope: !2908)
!2912 = !DILocation(line: 407, column: 3, scope: !2908)
!2913 = distinct !DISubprogram(name: "regstat_compute_calls_crossed", scope: !3, file: !3, line: 495, type: !2281, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2914)
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "bb", scope: !2913, file: !3, line: 497, type: !1139)
!2916 = !DILocalVariable(name: "live", scope: !2913, file: !3, line: 498, type: !587)
!2917 = !DILocation(line: 498, column: 17, scope: !2913)
!2918 = !DILocation(line: 0, scope: !2913)
!2919 = !DILocation(line: 501, column: 3, scope: !2913)
!2920 = !DILocation(line: 503, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 503, column: 3)
!2922 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 503, column: 3)
!2923 = !DILocation(line: 503, column: 3, scope: !2922)
!2924 = !DILocation(line: 504, column: 15, scope: !2913)
!2925 = !DILocation(line: 504, column: 13, scope: !2913)
!2926 = !DILocation(line: 505, column: 21, scope: !2913)
!2927 = !DILocation(line: 505, column: 19, scope: !2913)
!2928 = !DILocation(line: 506, column: 16, scope: !2913)
!2929 = !DILocation(line: 506, column: 14, scope: !2913)
!2930 = !DILocation(line: 508, column: 3, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 508, column: 3)
!2932 = !DILocation(line: 508, column: 3, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 508, column: 3)
!2934 = !DILocation(line: 0, scope: !2931)
!2935 = !DILocation(line: 510, column: 45, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 509, column: 5)
!2937 = !DILocation(line: 510, column: 7, scope: !2936)
!2938 = !DILocation(line: 0, scope: !2933)
!2939 = distinct !{!2939, !2930, !2940}
!2940 = !DILocation(line: 511, column: 5, scope: !2931)
!2941 = !DILocation(line: 513, column: 3, scope: !2913)
!2942 = !DILocation(line: 514, column: 3, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 514, column: 3)
!2944 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 514, column: 3)
!2945 = !DILocation(line: 514, column: 3, scope: !2944)
!2946 = !DILocation(line: 515, column: 1, scope: !2913)
!2947 = distinct !DISubprogram(name: "regstat_bb_compute_calls_crossed", scope: !3, file: !3, line: 426, type: !2948, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !7, !587}
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2961, !2965, !2969, !2970, !2973, !2977}
!2951 = !DILocalVariable(name: "bb_index", arg: 1, scope: !2947, file: !3, line: 426, type: !7)
!2952 = !DILocalVariable(name: "live", arg: 2, scope: !2947, file: !3, line: 426, type: !587)
!2953 = !DILocalVariable(name: "bb", scope: !2947, file: !3, line: 428, type: !1139)
!2954 = !DILocalVariable(name: "insn", scope: !2947, file: !3, line: 429, type: !667)
!2955 = !DILocalVariable(name: "def_rec", scope: !2947, file: !3, line: 430, type: !655)
!2956 = !DILocalVariable(name: "use_rec", scope: !2947, file: !3, line: 431, type: !655)
!2957 = !DILocalVariable(name: "def", scope: !2958, file: !3, line: 439, type: !656)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 438, column: 5)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 437, column: 3)
!2960 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 437, column: 3)
!2961 = !DILocalVariable(name: "use", scope: !2962, file: !3, line: 446, type: !656)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 445, column: 5)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 444, column: 3)
!2964 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 444, column: 3)
!2965 = !DILocalVariable(name: "uid", scope: !2966, file: !3, line: 453, type: !7)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 452, column: 5)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 451, column: 3)
!2968 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 451, column: 3)
!2969 = !DILocalVariable(name: "regno", scope: !2966, file: !3, line: 454, type: !7)
!2970 = !DILocalVariable(name: "bi", scope: !2971, file: !3, line: 462, type: !2370)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 461, column: 2)
!2972 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 460, column: 11)
!2973 = !DILocalVariable(name: "def", scope: !2974, file: !3, line: 474, type: !656)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 473, column: 2)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 472, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 472, column: 7)
!2977 = !DILocalVariable(name: "use", scope: !2978, file: !3, line: 486, type: !656)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 485, column: 2)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 484, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 484, column: 7)
!2981 = !DILocation(line: 0, scope: !2947)
!2982 = !DILocation(line: 428, column: 20, scope: !2947)
!2983 = !DILocation(line: 433, column: 22, scope: !2947)
!2984 = !DILocation(line: 433, column: 3, scope: !2947)
!2985 = !DILocation(line: 437, column: 18, scope: !2960)
!2986 = !DILocation(line: 437, column: 8, scope: !2960)
!2987 = !DILocation(line: 0, scope: !2960)
!2988 = !DILocation(line: 437, column: 53, scope: !2959)
!2989 = !DILocation(line: 437, column: 3, scope: !2960)
!2990 = !DILocation(line: 0, scope: !2958)
!2991 = !DILocation(line: 440, column: 12, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 440, column: 11)
!2993 = !DILocation(line: 440, column: 31, scope: !2992)
!2994 = !DILocation(line: 440, column: 48, scope: !2992)
!2995 = !DILocation(line: 440, column: 11, scope: !2958)
!2996 = !DILocation(line: 441, column: 26, scope: !2992)
!2997 = !DILocation(line: 441, column: 2, scope: !2992)
!2998 = !DILocation(line: 437, column: 70, scope: !2959)
!2999 = !DILocation(line: 437, column: 3, scope: !2959)
!3000 = distinct !{!3000, !2989, !3001}
!3001 = !DILocation(line: 442, column: 5, scope: !2960)
!3002 = !DILocation(line: 444, column: 18, scope: !2964)
!3003 = !DILocation(line: 444, column: 8, scope: !2964)
!3004 = !DILocation(line: 0, scope: !2964)
!3005 = !DILocation(line: 444, column: 53, scope: !2963)
!3006 = !DILocation(line: 444, column: 3, scope: !2964)
!3007 = !DILocation(line: 0, scope: !2962)
!3008 = !DILocation(line: 447, column: 12, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 447, column: 11)
!3010 = !DILocation(line: 447, column: 31, scope: !3009)
!3011 = !DILocation(line: 447, column: 48, scope: !3009)
!3012 = !DILocation(line: 447, column: 11, scope: !2962)
!3013 = !DILocation(line: 448, column: 24, scope: !3009)
!3014 = !DILocation(line: 448, column: 2, scope: !3009)
!3015 = !DILocation(line: 444, column: 70, scope: !2963)
!3016 = !DILocation(line: 444, column: 3, scope: !2963)
!3017 = distinct !{!3017, !3006, !3018}
!3018 = !DILocation(line: 449, column: 5, scope: !2964)
!3019 = !DILocation(line: 451, column: 3, scope: !2968)
!3020 = !DILocation(line: 0, scope: !2966)
!3021 = !DILocation(line: 0, scope: !2971)
!3022 = !DILocation(line: 0, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 464, column: 6)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 463, column: 4)
!3025 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 463, column: 4)
!3026 = !DILocation(line: 0, scope: !2968)
!3027 = !DILocation(line: 451, column: 3, scope: !2967)
!3028 = !DILocation(line: 453, column: 26, scope: !2966)
!3029 = !DILocation(line: 454, column: 7, scope: !2966)
!3030 = !DILocation(line: 456, column: 12, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 456, column: 11)
!3032 = !DILocation(line: 456, column: 11, scope: !2966)
!3033 = !DILocation(line: 460, column: 11, scope: !2972)
!3034 = !DILocation(line: 460, column: 11, scope: !2966)
!3035 = !DILocation(line: 462, column: 4, scope: !2971)
!3036 = !DILocation(line: 463, column: 4, scope: !3025)
!3037 = !DILocation(line: 463, column: 4, scope: !3024)
!3038 = !DILocation(line: 465, column: 8, scope: !3023)
!3039 = !DILocation(line: 465, column: 35, scope: !3023)
!3040 = !DILocation(line: 466, column: 42, scope: !3023)
!3041 = !DILocation(line: 466, column: 8, scope: !3023)
!3042 = !DILocation(line: 466, column: 39, scope: !3023)
!3043 = distinct !{!3043, !3036, !3044}
!3044 = !DILocation(line: 467, column: 6, scope: !3025)
!3045 = !DILocation(line: 468, column: 2, scope: !2972)
!3046 = !DILocation(line: 468, column: 2, scope: !2971)
!3047 = !DILocation(line: 472, column: 22, scope: !2976)
!3048 = !DILocation(line: 472, column: 12, scope: !2976)
!3049 = !DILocation(line: 0, scope: !2976)
!3050 = !DILocation(line: 472, column: 46, scope: !2975)
!3051 = !DILocation(line: 472, column: 7, scope: !2976)
!3052 = !DILocation(line: 0, scope: !2974)
!3053 = !DILocation(line: 475, column: 10, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 475, column: 8)
!3055 = !DILocation(line: 476, column: 8, scope: !3054)
!3056 = !DILocation(line: 0, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 479, column: 12)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 477, column: 6)
!3059 = !DILocation(line: 479, column: 14, scope: !3057)
!3060 = !DILocation(line: 476, column: 14, scope: !3054)
!3061 = !DILocation(line: 476, column: 33, scope: !3054)
!3062 = !DILocation(line: 475, column: 8, scope: !2974)
!3063 = !DILocation(line: 479, column: 33, scope: !3057)
!3064 = !DILocation(line: 479, column: 12, scope: !3058)
!3065 = !DILocation(line: 480, column: 27, scope: !3057)
!3066 = !DILocation(line: 480, column: 3, scope: !3057)
!3067 = !DILocation(line: 472, column: 63, scope: !2975)
!3068 = !DILocation(line: 472, column: 7, scope: !2975)
!3069 = distinct !{!3069, !3051, !3070}
!3070 = !DILocation(line: 482, column: 2, scope: !2976)
!3071 = !DILocation(line: 484, column: 22, scope: !2980)
!3072 = !DILocation(line: 484, column: 12, scope: !2980)
!3073 = !DILocation(line: 0, scope: !2980)
!3074 = !DILocation(line: 484, column: 46, scope: !2979)
!3075 = !DILocation(line: 484, column: 7, scope: !2980)
!3076 = !DILocation(line: 487, column: 26, scope: !2978)
!3077 = !DILocation(line: 487, column: 4, scope: !2978)
!3078 = !DILocation(line: 484, column: 63, scope: !2979)
!3079 = !DILocation(line: 484, column: 7, scope: !2979)
!3080 = distinct !{!3080, !3075, !3081}
!3081 = !DILocation(line: 488, column: 2, scope: !2980)
!3082 = !DILocation(line: 489, column: 5, scope: !2967)
!3083 = distinct !{!3083, !3019, !3084}
!3084 = !DILocation(line: 489, column: 5, scope: !2968)
!3085 = !DILocation(line: 490, column: 1, scope: !2947)
!3086 = distinct !DISubprogram(name: "regstat_free_calls_crossed", scope: !3, file: !3, line: 521, type: !2281, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!3087 = !DILocation(line: 523, column: 3, scope: !3086)
!3088 = !DILocation(line: 525, column: 9, scope: !3086)
!3089 = !DILocation(line: 524, column: 19, scope: !3086)
!3090 = !DILocation(line: 525, column: 3, scope: !3086)
!3091 = !DILocation(line: 526, column: 14, scope: !3086)
!3092 = !DILocation(line: 527, column: 1, scope: !3086)
!3093 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !142, file: !142, line: 281, type: !3094, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3098)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!1139, !3096, !7}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "vec_", arg: 1, scope: !3093, file: !142, line: 281, type: !3096)
!3100 = !DILocalVariable(name: "ix_", arg: 2, scope: !3093, file: !142, line: 281, type: !7)
!3101 = !DILocation(line: 0, scope: !3093)
!3102 = !DILocation(line: 281, column: 1, scope: !3093)
!3103 = distinct !DISubprogram(name: "df_get_artificial_defs", scope: !652, file: !652, line: 1090, type: !3104, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!655, !7}
!3106 = !{!3107}
!3107 = !DILocalVariable(name: "bb_index", arg: 1, scope: !3103, file: !652, line: 1090, type: !7)
!3108 = !DILocation(line: 0, scope: !3103)
!3109 = !DILocation(line: 1092, column: 10, scope: !3103)
!3110 = !DILocation(line: 1092, column: 42, scope: !3103)
!3111 = !DILocation(line: 1092, column: 3, scope: !3103)
!3112 = distinct !DISubprogram(name: "df_get_artificial_uses", scope: !652, file: !652, line: 1099, type: !3104, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3113)
!3113 = !{!3114}
!3114 = !DILocalVariable(name: "bb_index", arg: 1, scope: !3112, file: !652, line: 1099, type: !7)
!3115 = !DILocation(line: 0, scope: !3112)
!3116 = !DILocation(line: 1101, column: 10, scope: !3112)
!3117 = !DILocation(line: 1101, column: 42, scope: !3112)
!3118 = !DILocation(line: 1101, column: 3, scope: !3112)
!3119 = distinct !DISubprogram(name: "rhs_regno", scope: !385, file: !385, line: 1051, type: !3120, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3125)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!7, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !588, line: 51, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!3125 = !{!3126}
!3126 = !DILocalVariable(name: "x", arg: 1, scope: !3119, file: !385, line: 1051, type: !3122)
!3127 = !DILocation(line: 0, scope: !3119)
!3128 = !DILocation(line: 1053, column: 10, scope: !3119)
!3129 = !DILocation(line: 1053, column: 3, scope: !3119)
!3130 = distinct !DISubprogram(name: "df_scan_get_bb_info", scope: !652, file: !652, line: 1034, type: !3131, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!650, !7}
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "index", arg: 1, scope: !3130, file: !652, line: 1034, type: !7)
!3135 = !DILocation(line: 0, scope: !3130)
!3136 = !DILocation(line: 1036, column: 15, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3130, file: !652, line: 1036, column: 7)
!3138 = !DILocation(line: 1036, column: 24, scope: !3137)
!3139 = !DILocation(line: 1036, column: 13, scope: !3137)
!3140 = !DILocation(line: 1036, column: 7, scope: !3130)
!3141 = !DILocation(line: 1037, column: 48, scope: !3137)
!3142 = !DILocation(line: 1037, column: 39, scope: !3137)
!3143 = !DILocation(line: 1037, column: 5, scope: !3137)
!3144 = !DILocation(line: 0, scope: !3137)
!3145 = !DILocation(line: 1040, column: 1, scope: !3130)
