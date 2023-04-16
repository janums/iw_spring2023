; ModuleID = 'lto-symtab.bc'
source_filename = "lto-symtab.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.ggc_cache_tab = type { %struct.htab**, i64, i64, void (i8*)*, void (i8*)*, i32 (i8*)* }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
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
%struct.rtx_def = type opaque
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
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.pointer_map_t = type opaque
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type opaque
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.lto_symtab_entry_def = type { %union.tree_node*, %union.tree_node*, %struct.cgraph_node*, %struct.lto_file_decl_data*, i32, %struct.lto_symtab_entry_def* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@.str = private unnamed_addr constant [13 x i8] c"lto-symtab.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lto_symtab_identifiers = internal global %struct.htab* null, align 8, !dbg !0
@gt_ggc_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { %struct.htab** @lto_symtab_identifiers, i64 1, i64 8, void (i8*)* @gt_ggc_mx_lto_symtab_entry_def, void (i8*)* @gt_pch_nx_lto_symtab_entry_def, i32 (i8*)* @lto_symtab_entry_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16, !dbg !1612
@gt_pch_rc_gt_lto_symtab_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.htab** @lto_symtab_identifiers to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_P20lto_symtab_entry_def4htab, void (i8*)* @gt_pch_n_P20lto_symtab_entry_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1631
@lto_global_var_decls = common dso_local global %struct.VEC_tree_gc* null, align 8, !dbg !1642
@.str.2 = private unnamed_addr constant [36 x i8] c"variable %qD redeclared as function\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"function %qD redeclared as variable\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"previously declared here\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%qD has already been defined\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"previously defined here\00", align 1
@flag_no_common = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"type of %qD does not match original declaration\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"alignment of %qD is bigger than original declaration\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1648 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1661, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1662, metadata !DIExpression()), !dbg !1663
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1664
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1665
  ret i32 %call, !dbg !1666
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1667 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1671
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1672
  ret i32 %call, !dbg !1673
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1674 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1728, metadata !DIExpression()), !dbg !1729
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1730
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1730
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1730
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1730
  %cmp = icmp uge i8* %0, %1, !dbg !1730
  %conv1 = zext i1 %cmp to i64, !dbg !1730
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1730
  %tobool = icmp eq i64 %expval, 0, !dbg !1730
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1730

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1730
  br label %cond.end, !dbg !1730

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1730
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1730
  %2 = load i8, i8* %0, align 1, !dbg !1730
  %conv3 = zext i8 %2 to i32, !dbg !1730
  br label %cond.end, !dbg !1730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1730
  ret i32 %cond, !dbg !1731
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1732 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1734, metadata !DIExpression()), !dbg !1735
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1736
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1736
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1736
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1736
  %cmp = icmp uge i8* %0, %1, !dbg !1736
  %conv1 = zext i1 %cmp to i64, !dbg !1736
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1736
  %tobool = icmp eq i64 %expval, 0, !dbg !1736
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1736

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1736
  br label %cond.end, !dbg !1736

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1736
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1736
  %2 = load i8, i8* %0, align 1, !dbg !1736
  %conv3 = zext i8 %2 to i32, !dbg !1736
  br label %cond.end, !dbg !1736

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1736
  ret i32 %cond, !dbg !1737
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1738 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1739
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1739
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1739
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1739
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1739
  %cmp = icmp uge i8* %1, %2, !dbg !1739
  %conv1 = zext i1 %cmp to i64, !dbg !1739
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1739
  %tobool = icmp eq i64 %expval, 0, !dbg !1739
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1739

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1739
  br label %cond.end, !dbg !1739

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1739
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1739
  %3 = load i8, i8* %1, align 1, !dbg !1739
  %conv3 = zext i8 %3 to i32, !dbg !1739
  br label %cond.end, !dbg !1739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1739
  ret i32 %cond, !dbg !1740
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1741 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1745, metadata !DIExpression()), !dbg !1746
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1747
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1748
  ret i32 %call, !dbg !1749
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1754, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1755, metadata !DIExpression()), !dbg !1756
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1757
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1757
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1757
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1757
  %cmp = icmp uge i8* %0, %1, !dbg !1757
  %conv1 = zext i1 %cmp to i64, !dbg !1757
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1757
  %tobool = icmp eq i64 %expval, 0, !dbg !1757
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1757

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1757
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1757
  br label %cond.end, !dbg !1757

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1757
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1757
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1757
  store i8 %conv2, i8* %0, align 1, !dbg !1757
  %conv6 = and i32 %__c, 255, !dbg !1757
  br label %cond.end, !dbg !1757

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1757
  ret i32 %cond, !dbg !1758
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1762, metadata !DIExpression()), !dbg !1763
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1764
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1764
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1764
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1764
  %cmp = icmp uge i8* %0, %1, !dbg !1764
  %conv1 = zext i1 %cmp to i64, !dbg !1764
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1764
  %tobool = icmp eq i64 %expval, 0, !dbg !1764
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1764

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1764
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1764
  br label %cond.end, !dbg !1764

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1764
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1764
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1764
  store i8 %conv2, i8* %0, align 1, !dbg !1764
  %conv6 = and i32 %__c, 255, !dbg !1764
  br label %cond.end, !dbg !1764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1764
  ret i32 %cond, !dbg !1765
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1766 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1768, metadata !DIExpression()), !dbg !1769
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1770
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1770
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1770
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1770
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1770
  %cmp = icmp uge i8* %1, %2, !dbg !1770
  %conv1 = zext i1 %cmp to i64, !dbg !1770
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1770
  %tobool = icmp eq i64 %expval, 0, !dbg !1770
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1770

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1770
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1770
  br label %cond.end, !dbg !1770

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1770
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1770
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1770
  store i8 %conv4, i8* %1, align 1, !dbg !1770
  %conv6 = and i32 %__c, 255, !dbg !1770
  br label %cond.end, !dbg !1770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1770
  ret i32 %cond, !dbg !1771
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1772 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1780, metadata !DIExpression()), !dbg !1781
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1782
  ret i64 %call, !dbg !1783
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1784 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1786, metadata !DIExpression()), !dbg !1787
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1788
  %0 = load i32, i32* %_flags, align 8, !dbg !1788
  %and = lshr i32 %0, 4, !dbg !1788
  %and.lobit = and i32 %and, 1, !dbg !1788
  ret i32 %and.lobit, !dbg !1789
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1790 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1792, metadata !DIExpression()), !dbg !1793
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1794
  %0 = load i32, i32* %_flags, align 8, !dbg !1794
  %and = lshr i32 %0, 5, !dbg !1794
  %and.lobit = and i32 %and, 1, !dbg !1794
  ret i32 %and.lobit, !dbg !1795
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1796 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1799, metadata !DIExpression()), !dbg !1800
  %__c.off = add i32 %__c, 128, !dbg !1801
  %0 = icmp ult i32 %__c.off, 384, !dbg !1801
  br i1 %0, label %cond.true, label %cond.end, !dbg !1801

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1802
  %1 = load i32*, i32** %call, align 8, !dbg !1803
  %idxprom = sext i32 %__c to i64, !dbg !1804
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1804
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1804
  br label %cond.end, !dbg !1805

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1805
  ret i32 %cond, !dbg !1806
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1807 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1809, metadata !DIExpression()), !dbg !1810
  %__c.off = add i32 %__c, 128, !dbg !1811
  %0 = icmp ult i32 %__c.off, 384, !dbg !1811
  br i1 %0, label %cond.true, label %cond.end, !dbg !1811

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1812
  %1 = load i32*, i32** %call, align 8, !dbg !1813
  %idxprom = sext i32 %__c to i64, !dbg !1814
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1814
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1814
  br label %cond.end, !dbg !1815

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1815
  ret i32 %cond, !dbg !1816
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1817 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1822, metadata !DIExpression()), !dbg !1823
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1824
  %conv = trunc i64 %call to i32, !dbg !1825
  ret i32 %conv, !dbg !1826
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1827 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1833
  ret i64 %call, !dbg !1834
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1840, metadata !DIExpression()), !dbg !1841
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1842
  ret i64 %call, !dbg !1843
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1850, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1851, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1852, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1853, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1854, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 0, metadata !1855, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1856, metadata !DIExpression()), !dbg !1860
  br label %while.cond, !dbg !1861

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1862
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1856, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1855, metadata !DIExpression()), !dbg !1860
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1863
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1861

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1864
  %div = lshr i64 %add, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %div, metadata !1857, metadata !DIExpression()), !dbg !1860
  %mul = mul i64 %div, %__size, !dbg !1867
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1858, metadata !DIExpression()), !dbg !1860
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %call, metadata !1859, metadata !DIExpression()), !dbg !1860
  %cmp1 = icmp slt i32 %call, 0, !dbg !1870
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1872

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1873
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1875

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1855, metadata !DIExpression()), !dbg !1860
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1860
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1856, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1855, metadata !DIExpression()), !dbg !1860
  br label %while.cond, !dbg !1861, !llvm.loop !1877

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1860
  ret i8* %retval.0, !dbg !1879
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1886, metadata !DIExpression()), !dbg !1887
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1888
  ret double %call, !dbg !1889
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1890 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1899, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %base, metadata !1901, metadata !DIExpression()), !dbg !1902
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1903
  ret i64 %call, !dbg !1904
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1911, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i32 %base, metadata !1913, metadata !DIExpression()), !dbg !1914
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1915
  ret i64 %call, !dbg !1916
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1928, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1929, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %base, metadata !1930, metadata !DIExpression()), !dbg !1931
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1932
  ret i64 %call, !dbg !1933
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1934 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1938, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %base, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1942
  ret i64 %call, !dbg !1943
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1989
  ret i32 %call, !dbg !1990
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1994, metadata !DIExpression()), !dbg !1995
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1996
  ret i32 %call, !dbg !1997
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2003, metadata !DIExpression()), !dbg !2004
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2005
  ret i32 %call, !dbg !2006
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2011, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2012, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2014, metadata !DIExpression()), !dbg !2015
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2016
  ret i32 %call, !dbg !2017
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2018 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2024, metadata !DIExpression(DW_OP_deref)), !dbg !2025
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2026
  ret i32 %call, !dbg !2027
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2028 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2035, metadata !DIExpression(DW_OP_deref)), !dbg !2036
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2037
  ret i32 %call, !dbg !2038
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2064, metadata !DIExpression()), !dbg !2065
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2066
  ret i32 %call, !dbg !2067
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2071, metadata !DIExpression()), !dbg !2072
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2073
  ret i32 %call, !dbg !2074
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2080, metadata !DIExpression()), !dbg !2081
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2082
  ret i32 %call, !dbg !2083
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2091, metadata !DIExpression()), !dbg !2092
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2093
  ret i32 %call, !dbg !2094
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_symtab_register_decl(%union.tree_node* %decl, i32 %resolution, %struct.lto_file_decl_data* %file_data) local_unnamed_addr #4 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %resolution, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2102, metadata !DIExpression()), !dbg !2105
  %tobool = icmp eq %union.tree_node* %decl, null, !dbg !2106
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !2106

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2106
  %bf.load = load i64, i64* %0, align 8, !dbg !2106
  %bf.cast7 = and i64 %bf.load, 134217728, !dbg !2106
  %tobool1 = icmp eq i64 %bf.cast7, 0, !dbg !2106
  br i1 %tobool1, label %cond.true, label %land.lhs.true2, !dbg !2106

land.lhs.true2:                                   ; preds = %land.lhs.true
  %bf.cast68 = and i64 %bf.load, 65535, !dbg !2106
  %cmp = icmp eq i64 %bf.cast68, 32, !dbg !2106
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false, !dbg !2106

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %cmp11 = icmp eq i64 %bf.cast68, 29, !dbg !2106
  br i1 %cmp11, label %land.lhs.true12, label %cond.true, !dbg !2106

land.lhs.true12:                                  ; preds = %lor.lhs.false, %land.lhs.true2
  %arrayidx17 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast68, i64 13, !dbg !2106
  %1 = load i8, i8* %arrayidx17, align 1, !dbg !2106
  %tobool18 = icmp eq i8 %1, 0, !dbg !2106
  br i1 %tobool18, label %cond.true, label %land.lhs.true19, !dbg !2106

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2106
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2106
  %cmp20 = icmp eq %union.tree_node* %2, null, !dbg !2106
  br i1 %cmp20, label %cond.true, label %cond.end, !dbg !2106

cond.true:                                        ; preds = %land.lhs.true19, %land.lhs.true12, %land.lhs.true, %entry, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2106
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2107
  %bf.load23.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2109
  br label %cond.end, !dbg !2106

cond.end:                                         ; preds = %land.lhs.true19, %cond.true
  %bf.load45 = phi i64 [ %bf.load, %land.lhs.true19 ], [ %bf.load23.pre, %cond.true ], !dbg !2109
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2109
  %bf.cast251 = and i64 %bf.load45, 65535, !dbg !2110
  %cmp26 = icmp eq i64 %bf.cast251, 32, !dbg !2110
  br i1 %cmp26, label %land.lhs.true28, label %if.end, !dbg !2111

land.lhs.true28:                                  ; preds = %cond.end
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2112
  %4 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2112
  %tobool29 = icmp eq %union.tree_node* %4, null, !dbg !2112
  br i1 %tobool29, label %if.end, label %if.then, !dbg !2113

if.then:                                          ; preds = %land.lhs.true28
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2114
  %5 = bitcast i40* %decl_flag_1 to i64*, !dbg !2114
  %bf.load31 = load i64, i64* %5, align 8, !dbg !2114
  %bf.cast344 = and i64 %bf.load31, 33554432, !dbg !2114
  %tobool35 = icmp eq i64 %bf.cast344, 0, !dbg !2114
  br i1 %tobool35, label %if.end, label %lor.lhs.false36, !dbg !2114

lor.lhs.false36:                                  ; preds = %if.then
  %bf.cast415 = and i64 %bf.load45, 67108864, !dbg !2114
  %tobool42 = icmp eq i64 %bf.cast415, 0, !dbg !2114
  br i1 %tobool42, label %cond.true50, label %land.lhs.true43, !dbg !2114

land.lhs.true43:                                  ; preds = %lor.lhs.false36
  %bf.cast486 = and i64 %bf.load45, 1048576, !dbg !2114
  %tobool49 = icmp eq i64 %bf.cast486, 0, !dbg !2114
  br i1 %tobool49, label %cond.true50, label %if.end, !dbg !2114

cond.true50:                                      ; preds = %land.lhs.true43, %lor.lhs.false36
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2114
  %bf.load55.pre = load i64, i64* %3, align 8, !dbg !2115
  br label %if.end, !dbg !2114

if.end:                                           ; preds = %land.lhs.true43, %if.then, %land.lhs.true28, %cond.true50, %cond.end
  %bf.load55 = phi i64 [ %bf.load45, %land.lhs.true43 ], [ %bf.load45, %if.then ], [ %bf.load45, %land.lhs.true28 ], [ %bf.load55.pre, %cond.true50 ], [ %bf.load45, %cond.end ], !dbg !2115
  %bf.cast572 = and i64 %bf.load55, 65535, !dbg !2117
  %cmp58 = icmp eq i64 %bf.cast572, 29, !dbg !2117
  br i1 %cmp58, label %if.then60, label %if.end71, !dbg !2118

if.then60:                                        ; preds = %if.end
  %abstract_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2119
  %6 = bitcast i40* %abstract_flag to i64*, !dbg !2119
  %bf.load62 = load i64, i64* %6, align 8, !dbg !2119
  %bf.cast653 = and i64 %bf.load62, 2048, !dbg !2119
  %tobool66 = icmp eq i64 %bf.cast653, 0, !dbg !2119
  br i1 %tobool66, label %if.end71, label %cond.true67, !dbg !2119

cond.true67:                                      ; preds = %if.then60
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2119
  br label %if.end71, !dbg !2119

if.end71:                                         ; preds = %if.then60, %cond.true67, %if.end
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 48) #6, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %call, metadata !2103, metadata !DIExpression()), !dbg !2105
  %call72 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2121
  %id = bitcast i8* %call to %union.tree_node**, !dbg !2122
  store %union.tree_node* %call72, %union.tree_node** %id, align 8, !dbg !2123
  %decl73 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2124
  %7 = bitcast i8* %decl73 to %union.tree_node**, !dbg !2124
  store %union.tree_node* %decl, %union.tree_node** %7, align 8, !dbg !2125
  %resolution74 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2126
  %8 = bitcast i8* %resolution74 to i32*, !dbg !2126
  store i32 %resolution, i32* %8, align 8, !dbg !2127
  %file_data75 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2128
  %9 = bitcast i8* %file_data75 to %struct.lto_file_decl_data**, !dbg !2128
  store %struct.lto_file_decl_data* %file_data, %struct.lto_file_decl_data** %9, align 8, !dbg !2129
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #7, !dbg !2130
  %10 = load %struct.htab*, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2131
  %call76 = tail call i8** @htab_find_slot(%struct.htab* %10, i8* %call, i32 1) #6, !dbg !2132
  call void @llvm.dbg.value(metadata i8** %call76, metadata !2104, metadata !DIExpression()), !dbg !2105
  %11 = bitcast i8** %call76 to i64*, !dbg !2133
  %12 = load i64, i64* %11, align 8, !dbg !2133
  %next = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2134
  %13 = bitcast i8* %next to i64*, !dbg !2135
  store i64 %12, i64* %13, align 8, !dbg !2135
  store i8* %call, i8** %call76, align 8, !dbg !2136
  ret void, !dbg !2137
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_symtab_maybe_init_hash_table() unnamed_addr #4 !dbg !2138 {
entry:
  %0 = load %struct.htab*, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2141
  %tobool = icmp eq %struct.htab* %0, null, !dbg !2141
  br i1 %tobool, label %if.end, label %return, !dbg !2143

if.end:                                           ; preds = %entry
  %call = tail call %struct.htab* @htab_create_alloc(i64 1021, i32 (i8*)* nonnull @lto_symtab_entry_hash, i32 (i8*, i8*)* nonnull @lto_symtab_entry_eq, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !2144
  store %struct.htab* %call, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2145
  br label %return, !dbg !2146

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2146
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lto_symtab_get_resolution(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2151, metadata !DIExpression()), !dbg !2153
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2154
  %bf.load = load i64, i64* %0, align 8, !dbg !2154
  %bf.cast = and i64 %bf.load, 65535, !dbg !2154
  %arrayidx1 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast, i64 13, !dbg !2154
  %1 = load i8, i8* %arrayidx1, align 1, !dbg !2154
  %tobool = icmp eq i8 %1, 0, !dbg !2154
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !2154

land.lhs.true:                                    ; preds = %entry
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2154
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2154
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2154
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2154

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2154
  br label %cond.end, !dbg !2154

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2155
  %call3 = tail call fastcc %struct.lto_symtab_entry_def* @lto_symtab_get(%union.tree_node* %call) #7, !dbg !2156
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %call3, metadata !2152, metadata !DIExpression()), !dbg !2153
  br label %while.cond, !dbg !2157

while.cond:                                       ; preds = %while.body, %cond.end
  %e.0 = phi %struct.lto_symtab_entry_def* [ %call3, %cond.end ], [ %4, %while.body ], !dbg !2153
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0, metadata !2152, metadata !DIExpression()), !dbg !2153
  %cond1 = icmp eq %struct.lto_symtab_entry_def* %e.0, null, !dbg !2158
  br i1 %cond1, label %cleanup.loopexit, label %land.rhs, !dbg !2158

land.rhs:                                         ; preds = %while.cond
  %decl5 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 1, !dbg !2159
  %3 = load %union.tree_node*, %union.tree_node** %decl5, align 8, !dbg !2159
  %cmp6 = icmp eq %union.tree_node* %3, %decl, !dbg !2160
  br i1 %cmp6, label %while.end, label %while.body, !dbg !2157

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 5, !dbg !2161
  %4 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next, align 8, !dbg !2161
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %4, metadata !2152, metadata !DIExpression()), !dbg !2153
  br label %while.cond, !dbg !2157, !llvm.loop !2162

while.end:                                        ; preds = %land.rhs
  %e.0.lcssa4 = phi %struct.lto_symtab_entry_def* [ %e.0, %land.rhs ], !dbg !2153
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0.lcssa4, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0.lcssa4, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0.lcssa4, metadata !2152, metadata !DIExpression()), !dbg !2153
  %resolution = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0.lcssa4, i64 0, i32 4, !dbg !2163
  %5 = load i32, i32* %resolution, align 8, !dbg !2163
  br label %cleanup, !dbg !2164

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup, !dbg !2165

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  %retval.0 = phi i32 [ %5, %while.end ], [ 0, %cleanup.loopexit ], !dbg !2153
  ret i32 %retval.0, !dbg !2165
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.lto_symtab_entry_def* @lto_symtab_get(%union.tree_node* %id) unnamed_addr #4 !dbg !2166 {
entry:
  %temp = alloca %struct.lto_symtab_entry_def, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %id, metadata !2170, metadata !DIExpression()), !dbg !2173
  %0 = bitcast %struct.lto_symtab_entry_def* %temp to i8*, !dbg !2174
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8, !dbg !2174
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #7, !dbg !2175
  %id1 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %temp, i64 0, i32 0, !dbg !2176
  store %union.tree_node* %id, %union.tree_node** %id1, align 8, !dbg !2177
  %1 = load %struct.htab*, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2178
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !2179
  call void @llvm.dbg.value(metadata i8** %call, metadata !2172, metadata !DIExpression()), !dbg !2173
  %tobool = icmp eq i8** %call, null, !dbg !2180
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2180

cond.true:                                        ; preds = %entry
  %2 = bitcast i8** %call to %struct.lto_symtab_entry_def**, !dbg !2181
  %3 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %2, align 8, !dbg !2181
  br label %cond.end, !dbg !2180

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.lto_symtab_entry_def* [ %3, %cond.true ], [ null, %entry ], !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8, !dbg !2182
  ret %struct.lto_symtab_entry_def* %cond, !dbg !2183
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_symtab_merge_decls() local_unnamed_addr #4 !dbg !2184 {
entry:
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #7, !dbg !2185
  %0 = load %struct.htab*, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2186
  tail call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* nonnull @lto_symtab_merge_decls_1, i8* null) #6, !dbg !2187
  ret void, !dbg !2188
}

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lto_symtab_merge_decls_1(i8** %slot, i8* %data) #4 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !2193, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8* %data, metadata !2194, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2198
  tail call fastcc void @lto_symtab_resolve_symbols(i8** %slot) #7, !dbg !2199
  %0 = bitcast i8** %slot to %struct.lto_symtab_entry_def**, !dbg !2200
  br label %for.cond, !dbg !2202

for.cond:                                         ; preds = %for.inc, %entry
  %prevailing.0.in = phi %struct.lto_symtab_entry_def** [ %0, %entry ], [ %next, %for.inc ]
  %prevailing.0 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %prevailing.0.in, align 8, !dbg !2203
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.0, metadata !2196, metadata !DIExpression()), !dbg !2198
  %cond4 = icmp eq %struct.lto_symtab_entry_def* %prevailing.0, null, !dbg !2204
  br i1 %cond4, label %if.then17.loopexit, label %land.lhs.true, !dbg !2204

land.lhs.true:                                    ; preds = %for.cond
  %resolution = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.0, i64 0, i32 4, !dbg !2206
  %1 = load i32, i32* %resolution, align 8, !dbg !2206
  %cmp = icmp eq i32 %1, 3, !dbg !2207
  br i1 %cmp, label %for.end, label %land.rhs, !dbg !2208

land.rhs:                                         ; preds = %land.lhs.true
  %cmp2 = icmp eq i32 %1, 2, !dbg !2209
  br i1 %cmp2, label %for.end, label %for.inc, !dbg !2210

for.inc:                                          ; preds = %land.rhs
  %next = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.0, i64 0, i32 5, !dbg !2211
  br label %for.cond, !dbg !2212, !llvm.loop !2213

for.end:                                          ; preds = %land.rhs, %land.lhs.true
  %prevailing.0.lcssa31 = phi %struct.lto_symtab_entry_def* [ %prevailing.0, %land.rhs ], [ %prevailing.0, %land.lhs.true ], !dbg !2203
  br label %for.cond5, !dbg !2215

for.cond5:                                        ; preds = %for.inc13, %for.end
  %prevailing.0.pn = phi %struct.lto_symtab_entry_def* [ %prevailing.0.lcssa31, %for.end ], [ %e.0, %for.inc13 ]
  %e.0.in = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.0.pn, i64 0, i32 5, !dbg !2218
  %e.0 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.0.in, align 8, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0, metadata !2195, metadata !DIExpression()), !dbg !2198
  %tobool6 = icmp eq %struct.lto_symtab_entry_def* %e.0, null, !dbg !2219
  br i1 %tobool6, label %if.end, label %for.body7, !dbg !2219

for.body7:                                        ; preds = %for.cond5
  %resolution8 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 4, !dbg !2220
  %2 = load i32, i32* %resolution8, align 8, !dbg !2220
  %cmp9 = icmp eq i32 %2, 3, !dbg !2220
  br i1 %cmp9, label %cond.true, label %land.lhs.true10, !dbg !2220

land.lhs.true10:                                  ; preds = %for.body7
  %cmp12 = icmp eq i32 %2, 2, !dbg !2220
  br i1 %cmp12, label %cond.true, label %for.inc13, !dbg !2220

cond.true:                                        ; preds = %land.lhs.true10, %for.body7
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2220
  br label %for.inc13, !dbg !2220

for.inc13:                                        ; preds = %land.lhs.true10, %cond.true
  br label %for.cond5, !dbg !2222, !llvm.loop !2223

if.end:                                           ; preds = %for.cond5
  %.pre18 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %0, align 8, !dbg !2225
  br label %if.end52, !dbg !2227

if.then17.loopexit:                               ; preds = %for.cond
  %3 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %0, align 8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %3, metadata !2196, metadata !DIExpression()), !dbg !2198
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %3, i64 0, i32 1, !dbg !2231
  %4 = bitcast %union.tree_node** %decl to i64**, !dbg !2231
  %5 = load i64*, i64** %4, align 8, !dbg !2231
  %bf.load = load i64, i64* %5, align 8, !dbg !2231
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !2233
  %cmp18 = icmp eq i64 %bf.cast6, 29, !dbg !2233
  br i1 %cmp18, label %while.cond.preheader, label %if.end26, !dbg !2234

while.cond.preheader:                             ; preds = %if.then17.loopexit
  br label %while.cond, !dbg !2235

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %prevailing.1 = phi %struct.lto_symtab_entry_def* [ %7, %while.body ], [ %3, %while.cond.preheader ], !dbg !2236
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1, metadata !2196, metadata !DIExpression()), !dbg !2198
  %node = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.1, i64 0, i32 2, !dbg !2237
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !2237
  %tobool20 = icmp eq %struct.cgraph_node* %6, null, !dbg !2238
  br i1 %tobool20, label %land.rhs21, label %if.end26.loopexit, !dbg !2239

land.rhs21:                                       ; preds = %while.cond
  %next22 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.1, i64 0, i32 5, !dbg !2240
  %7 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next22, align 8, !dbg !2240
  %tobool23 = icmp eq %struct.lto_symtab_entry_def* %7, null, !dbg !2239
  br i1 %tobool23, label %if.end26.loopexit, label %while.body, !dbg !2235

while.body:                                       ; preds = %land.rhs21
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %7, metadata !2196, metadata !DIExpression()), !dbg !2198
  br label %while.cond, !dbg !2235, !llvm.loop !2241

if.end26.loopexit:                                ; preds = %while.cond, %land.rhs21
  %prevailing.1.lcssa = phi %struct.lto_symtab_entry_def* [ %prevailing.1, %while.cond ], [ %prevailing.1, %land.rhs21 ], !dbg !2236
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.1.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  %decl27.phi.trans.insert = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.1.lcssa, i64 0, i32 1, !dbg !2243
  %.phi.trans.insert = bitcast %union.tree_node** %decl27.phi.trans.insert to i64**, !dbg !2243
  %.pre = load i64*, i64** %.phi.trans.insert, align 8, !dbg !2245
  %bf.load29.pre = load i64, i64* %.pre, align 8, !dbg !2245
  br label %if.end26, !dbg !2245

if.end26:                                         ; preds = %if.end26.loopexit, %if.then17.loopexit
  %bf.load29 = phi i64 [ %bf.load, %if.then17.loopexit ], [ %bf.load29.pre, %if.end26.loopexit ], !dbg !2245
  %prevailing.2 = phi %struct.lto_symtab_entry_def* [ %3, %if.then17.loopexit ], [ %prevailing.1.lcssa, %if.end26.loopexit ], !dbg !2246
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.2, metadata !2196, metadata !DIExpression()), !dbg !2198
  %bf.cast317 = and i64 %bf.load29, 65535, !dbg !2247
  %cmp32 = icmp eq i64 %bf.cast317, 32, !dbg !2247
  br i1 %cmp32, label %while.cond34.preheader, label %if.end52, !dbg !2248

while.cond34.preheader:                           ; preds = %if.end26
  br label %while.cond34, !dbg !2249

while.cond34:                                     ; preds = %while.cond34.preheader, %while.body48
  %bf.load37 = phi i64 [ %bf.load37.pre, %while.body48 ], [ %bf.load29, %while.cond34.preheader ], !dbg !2250
  %prevailing.3 = phi %struct.lto_symtab_entry_def* [ %11, %while.body48 ], [ %prevailing.2, %while.cond34.preheader ], !dbg !2236
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3, metadata !2196, metadata !DIExpression()), !dbg !2198
  %bf.cast3912 = and i64 %bf.load37, 1048576, !dbg !2250
  %tobool40 = icmp eq i64 %bf.cast3912, 0, !dbg !2250
  br i1 %tobool40, label %land.rhs44, label %land.lhs.true41, !dbg !2251

land.lhs.true41:                                  ; preds = %while.cond34
  %decl35 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.3, i64 0, i32 1, !dbg !2250
  %8 = bitcast %union.tree_node** %decl35 to %struct.tree_decl_common**, !dbg !2252
  %9 = load %struct.tree_decl_common*, %struct.tree_decl_common** %8, align 8, !dbg !2252
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %9, i64 0, i32 5, !dbg !2252
  %10 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2252
  %tobool43 = icmp eq %union.tree_node* %10, null, !dbg !2252
  br i1 %tobool43, label %land.rhs44, label %if.end52.loopexit, !dbg !2253

land.rhs44:                                       ; preds = %land.lhs.true41, %while.cond34
  %next45 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.3, i64 0, i32 5, !dbg !2254
  %11 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next45, align 8, !dbg !2254
  %tobool46 = icmp eq %struct.lto_symtab_entry_def* %11, null, !dbg !2253
  br i1 %tobool46, label %if.end52.loopexit, label %while.body48, !dbg !2249

while.body48:                                     ; preds = %land.rhs44
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %11, metadata !2196, metadata !DIExpression()), !dbg !2198
  %decl35.phi.trans.insert = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %11, i64 0, i32 1, !dbg !2243
  %.phi.trans.insert15 = bitcast %union.tree_node** %decl35.phi.trans.insert to i64**, !dbg !2243
  %.pre16 = load i64*, i64** %.phi.trans.insert15, align 8, !dbg !2250
  %bf.load37.pre = load i64, i64* %.pre16, align 8, !dbg !2250
  br label %while.cond34, !dbg !2249, !llvm.loop !2255

if.end52.loopexit:                                ; preds = %land.rhs44, %land.lhs.true41
  %prevailing.3.lcssa = phi %struct.lto_symtab_entry_def* [ %prevailing.3, %land.rhs44 ], [ %prevailing.3, %land.lhs.true41 ], !dbg !2236
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3.lcssa, metadata !2196, metadata !DIExpression()), !dbg !2198
  br label %if.end52, !dbg !2225

if.end52:                                         ; preds = %if.end, %if.end52.loopexit, %if.end26
  %12 = phi %struct.lto_symtab_entry_def* [ %.pre18, %if.end ], [ %3, %if.end26 ], [ %3, %if.end52.loopexit ], !dbg !2225
  %prevailing.5 = phi %struct.lto_symtab_entry_def* [ %prevailing.0.lcssa31, %if.end ], [ %prevailing.2, %if.end26 ], [ %prevailing.3.lcssa, %if.end52.loopexit ], !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.5, metadata !2196, metadata !DIExpression()), !dbg !2198
  %cmp53 = icmp eq %struct.lto_symtab_entry_def* %12, %prevailing.5, !dbg !2257
  br i1 %cmp53, label %if.end65, label %if.then54, !dbg !2258

if.then54:                                        ; preds = %if.end52
  br label %for.cond55, !dbg !2259

for.cond55:                                       ; preds = %for.inc59, %if.then54
  %e.1 = phi %struct.lto_symtab_entry_def* [ %12, %if.then54 ], [ %13, %for.inc59 ], !dbg !2262
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.1, metadata !2195, metadata !DIExpression()), !dbg !2198
  %next56 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.1, i64 0, i32 5, !dbg !2263
  %13 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next56, align 8, !dbg !2263
  %cmp57 = icmp eq %struct.lto_symtab_entry_def* %13, %prevailing.5, !dbg !2265
  br i1 %cmp57, label %for.end61, label %for.inc59, !dbg !2266

for.inc59:                                        ; preds = %for.cond55
  br label %for.cond55, !dbg !2267, !llvm.loop !2268

for.end61:                                        ; preds = %for.cond55
  %next56.lcssa = phi %struct.lto_symtab_entry_def** [ %next56, %for.cond55 ], !dbg !2263
  %next62 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.5, i64 0, i32 5, !dbg !2270
  %14 = bitcast %struct.lto_symtab_entry_def** %next62 to i64*, !dbg !2270
  %15 = load i64, i64* %14, align 8, !dbg !2270
  %16 = bitcast %struct.lto_symtab_entry_def** %next56.lcssa to i64*, !dbg !2271
  store i64 %15, i64* %16, align 8, !dbg !2271
  %17 = bitcast i8** %slot to i64*, !dbg !2272
  %18 = load i64, i64* %17, align 8, !dbg !2272
  store i64 %18, i64* %14, align 8, !dbg !2273
  store %struct.lto_symtab_entry_def* %prevailing.5, %struct.lto_symtab_entry_def** %0, align 8, !dbg !2274
  br label %if.end65, !dbg !2275

if.end65:                                         ; preds = %if.end52, %for.end61
  %decl66 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.5, i64 0, i32 1, !dbg !2276
  %19 = bitcast %union.tree_node** %decl66 to i64**, !dbg !2276
  %20 = load i64*, i64** %19, align 8, !dbg !2276
  %bf.load68 = load i64, i64* %20, align 8, !dbg !2276
  %bf.cast708 = and i64 %bf.load68, 65535, !dbg !2278
  %cmp71 = icmp eq i64 %bf.cast708, 32, !dbg !2278
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !2279

if.then72:                                        ; preds = %if.end65
  %21 = bitcast i64* %20 to %union.tree_node*, !dbg !2279
  %call = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @lto_global_var_decls, %union.tree_node* %21) #7, !dbg !2280
  br label %if.end74, !dbg !2280

if.end74:                                         ; preds = %if.then72, %if.end65
  br label %for.cond76, !dbg !2281

for.cond76:                                       ; preds = %for.inc124, %if.end74
  %prevailing.5.pn = phi %struct.lto_symtab_entry_def* [ %prevailing.5, %if.end74 ], [ %e.2, %for.inc124 ]
  %diagnosed_p.0 = phi i8 [ 0, %if.end74 ], [ %diagnosed_p.1, %for.inc124 ], !dbg !2283
  %e.2.in = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.5.pn, i64 0, i32 5, !dbg !2284
  %e.2 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.2.in, align 8, !dbg !2284
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.2, metadata !2195, metadata !DIExpression()), !dbg !2198
  %tobool77 = icmp eq %struct.lto_symtab_entry_def* %e.2, null, !dbg !2285
  br i1 %tobool77, label %for.end126, label %for.body78, !dbg !2285

for.body78:                                       ; preds = %for.cond76
  %22 = load i64*, i64** %19, align 8, !dbg !2286
  %bf.load81 = load i64, i64* %22, align 8, !dbg !2286
  %decl84 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.2, i64 0, i32 1, !dbg !2290
  %23 = bitcast %union.tree_node** %decl84 to i64**, !dbg !2290
  %24 = load i64*, i64** %23, align 8, !dbg !2290
  %bf.load86 = load i64, i64* %24, align 8, !dbg !2290
  %25 = xor i64 %bf.load81, %bf.load86, !dbg !2291
  %26 = and i64 %25, 65535, !dbg !2291
  %cmp89 = icmp eq i64 %26, 0, !dbg !2291
  %27 = bitcast i64* %24 to %struct.tree_decl_minimal*, !dbg !2292
  %28 = bitcast i64* %22 to %union.tree_node*, !dbg !2292
  br i1 %cmp89, label %for.inc124, label %if.end91, !dbg !2292

if.end91:                                         ; preds = %for.body78
  %29 = trunc i64 %bf.load81 to i16, !dbg !2293
  switch i16 %29, label %sw.default [
    i16 32, label %sw.bb
    i16 29, label %sw.bb109
  ], !dbg !2294

sw.bb:                                            ; preds = %if.end91
  %bf.cast10111 = and i64 %bf.load86, 65535, !dbg !2295
  %cmp102 = icmp eq i64 %bf.cast10111, 29, !dbg !2295
  br i1 %cmp102, label %sw.bb.cond.end105_crit_edge, label %cond.true103, !dbg !2295

sw.bb.cond.end105_crit_edge:                      ; preds = %sw.bb
  br label %cond.end105, !dbg !2295

cond.true103:                                     ; preds = %sw.bb
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 601, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2295
  %.phi.trans.insert23 = bitcast %union.tree_node** %decl84 to %struct.tree_decl_minimal**, !dbg !2297
  %.pre24 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %.phi.trans.insert23, align 8, !dbg !2298
  %.pre25 = load %union.tree_node*, %union.tree_node** %decl66, align 8, !dbg !2299
  br label %cond.end105, !dbg !2295

cond.end105:                                      ; preds = %sw.bb.cond.end105_crit_edge, %cond.true103
  %30 = phi %union.tree_node* [ %28, %sw.bb.cond.end105_crit_edge ], [ %.pre25, %cond.true103 ], !dbg !2299
  %31 = phi %struct.tree_decl_minimal* [ %27, %sw.bb.cond.end105_crit_edge ], [ %.pre24, %cond.true103 ], !dbg !2298
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %31, i64 0, i32 1, !dbg !2298
  %32 = load i32, i32* %locus, align 8, !dbg !2298
  tail call void (i32, i8*, ...) @error_at(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %union.tree_node* %30) #6, !dbg !2300
  br label %for.inc124, !dbg !2301

sw.bb109:                                         ; preds = %if.end91
  %bf.cast11410 = and i64 %bf.load86, 65535, !dbg !2302
  %cmp115 = icmp eq i64 %bf.cast11410, 32, !dbg !2302
  br i1 %cmp115, label %sw.bb109.cond.end118_crit_edge, label %cond.true116, !dbg !2302

sw.bb109.cond.end118_crit_edge:                   ; preds = %sw.bb109
  br label %cond.end118, !dbg !2302

cond.true116:                                     ; preds = %sw.bb109
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 607, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2302
  %.phi.trans.insert20 = bitcast %union.tree_node** %decl84 to %struct.tree_decl_minimal**, !dbg !2297
  %.pre21 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %.phi.trans.insert20, align 8, !dbg !2303
  %.pre22 = load %union.tree_node*, %union.tree_node** %decl66, align 8, !dbg !2304
  br label %cond.end118, !dbg !2302

cond.end118:                                      ; preds = %sw.bb109.cond.end118_crit_edge, %cond.true116
  %33 = phi %union.tree_node* [ %28, %sw.bb109.cond.end118_crit_edge ], [ %.pre22, %cond.true116 ], !dbg !2304
  %34 = phi %struct.tree_decl_minimal* [ %27, %sw.bb109.cond.end118_crit_edge ], [ %.pre21, %cond.true116 ], !dbg !2303
  %locus122 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %34, i64 0, i32 1, !dbg !2303
  %35 = load i32, i32* %locus122, align 8, !dbg !2303
  tail call void (i32, i8*, ...) @error_at(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %union.tree_node* %33) #6, !dbg !2305
  br label %for.inc124, !dbg !2306

sw.default:                                       ; preds = %if.end91
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 613, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2307
  br label %for.inc124, !dbg !2308

for.inc124:                                       ; preds = %cond.end105, %cond.end118, %sw.default, %for.body78
  %diagnosed_p.1 = phi i8 [ %diagnosed_p.0, %for.body78 ], [ 1, %sw.default ], [ 1, %cond.end118 ], [ 1, %cond.end105 ], !dbg !2198
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.1, metadata !2197, metadata !DIExpression()), !dbg !2198
  br label %for.cond76, !dbg !2309, !llvm.loop !2310

for.end126:                                       ; preds = %for.cond76
  %diagnosed_p.0.lcssa = phi i8 [ %diagnosed_p.0, %for.cond76 ], !dbg !2283
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2197, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2197, metadata !DIExpression()), !dbg !2198
  %tobool127 = icmp eq i8 %diagnosed_p.0.lcssa, 0, !dbg !2312
  br i1 %tobool127, label %if.end132, label %if.then128, !dbg !2314

if.then128:                                       ; preds = %for.end126
  %36 = bitcast %union.tree_node** %decl66 to %struct.tree_decl_minimal**, !dbg !2315
  %37 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %36, align 8, !dbg !2315
  %locus131 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %37, i64 0, i32 1, !dbg !2315
  %38 = load i32, i32* %locus131, align 8, !dbg !2315
  tail call void (i32, i8*, ...) @inform(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2316
  br label %if.end132, !dbg !2316

if.end132:                                        ; preds = %for.end126, %if.then128
  br label %for.cond133, !dbg !2317

for.cond133:                                      ; preds = %for.body135, %if.end132
  %e.3.in = phi %struct.lto_symtab_entry_def** [ %0, %if.end132 ], [ %next142, %for.body135 ]
  %e.3 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.3.in, align 8, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.3, metadata !2195, metadata !DIExpression()), !dbg !2198
  %tobool134 = icmp eq %struct.lto_symtab_entry_def* %e.3, null, !dbg !2320
  br i1 %tobool134, label %for.end143, label %for.body135, !dbg !2320

for.body135:                                      ; preds = %for.cond133
  %decl136 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.3, i64 0, i32 1, !dbg !2321
  %39 = bitcast %union.tree_node** %decl136 to %struct.tree_common**, !dbg !2321
  %40 = load %struct.tree_common*, %struct.tree_common** %39, align 8, !dbg !2321
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %40, i64 0, i32 2, !dbg !2321
  %41 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2321
  %call137 = tail call %union.tree_node* @gimple_register_type(%union.tree_node* %41) #6, !dbg !2323
  %42 = load %struct.tree_common*, %struct.tree_common** %39, align 8, !dbg !2324
  %type140 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %42, i64 0, i32 2, !dbg !2324
  store %union.tree_node* %call137, %union.tree_node** %type140, align 8, !dbg !2325
  %next142 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.3, i64 0, i32 5, !dbg !2326
  br label %for.cond133, !dbg !2327, !llvm.loop !2328

for.end143:                                       ; preds = %for.cond133
  tail call fastcc void @lto_symtab_merge_decls_2(i8** %slot) #7, !dbg !2330
  %43 = load i64*, i64** %19, align 8, !dbg !2331
  %bf.load146 = load i64, i64* %43, align 8, !dbg !2331
  %bf.cast1489 = and i64 %bf.load146, 65535, !dbg !2333
  %cmp149 = icmp eq i64 %bf.cast1489, 29, !dbg !2333
  br i1 %cmp149, label %if.end152, label %if.then150, !dbg !2334

if.then150:                                       ; preds = %for.end143
  %next151 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.5, i64 0, i32 5, !dbg !2335
  store %struct.lto_symtab_entry_def* null, %struct.lto_symtab_entry_def** %next151, align 8, !dbg !2336
  br label %if.end152, !dbg !2337

if.end152:                                        ; preds = %for.end143, %if.then150
  ret i32 1, !dbg !2338
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_symtab_merge_cgraph_nodes() local_unnamed_addr #4 !dbg !2339 {
entry:
  tail call fastcc void @lto_symtab_maybe_init_hash_table() #7, !dbg !2340
  %0 = load %struct.htab*, %struct.htab** @lto_symtab_identifiers, align 8, !dbg !2341
  tail call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* nonnull @lto_symtab_merge_cgraph_nodes_1, i8* null) #6, !dbg !2342
  ret void, !dbg !2343
}

; Function Attrs: nounwind uwtable
define internal i32 @lto_symtab_merge_cgraph_nodes_1(i8** %slot, i8* %data) #4 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !2346, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %data, metadata !2347, metadata !DIExpression()), !dbg !2358
  %0 = bitcast i8** %slot to %struct.lto_symtab_entry_def**, !dbg !2359
  %1 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %0, align 8, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %1, metadata !2349, metadata !DIExpression()), !dbg !2358
  %next = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %1, i64 0, i32 5, !dbg !2360
  %2 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next, align 8, !dbg !2360
  %tobool = icmp eq %struct.lto_symtab_entry_def* %2, null, !dbg !2362
  br i1 %tobool, label %cleanup34, label %if.end, !dbg !2363

if.end:                                           ; preds = %entry
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %1, i64 0, i32 1, !dbg !2364
  %3 = bitcast %union.tree_node** %decl to i64**, !dbg !2364
  %4 = load i64*, i64** %3, align 8, !dbg !2364
  %bf.load = load i64, i64* %4, align 8, !dbg !2364
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2364
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2364
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2364

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2364
  br label %cond.end, !dbg !2364

cond.end:                                         ; preds = %if.end, %cond.true
  %node28 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %1, i64 0, i32 2, !dbg !2365
  br label %for.cond, !dbg !2366

for.cond:                                         ; preds = %for.inc30, %cond.end
  %.pn = phi %struct.lto_symtab_entry_def* [ %1, %cond.end ], [ %e.0, %for.inc30 ]
  %e.0.in = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %.pn, i64 0, i32 5, !dbg !2367
  %e.0 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.0.in, align 8, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0, metadata !2348, metadata !DIExpression()), !dbg !2358
  %tobool2 = icmp eq %struct.lto_symtab_entry_def* %e.0, null, !dbg !2368
  br i1 %tobool2, label %for.end32, label %for.body, !dbg !2368

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 2, !dbg !2369
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !2369
  %cmp3 = icmp eq %struct.cgraph_node* %5, null, !dbg !2370
  br i1 %cmp3, label %for.inc30, label %if.then4, !dbg !2371

if.then4:                                         ; preds = %for.body
  %decl6 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 0, !dbg !2372
  %6 = load %union.tree_node*, %union.tree_node** %decl6, align 8, !dbg !2372
  %decl7 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 1, !dbg !2373
  %7 = load %union.tree_node*, %union.tree_node** %decl7, align 8, !dbg !2373
  %cmp8 = icmp eq %union.tree_node* %6, %7, !dbg !2374
  br i1 %cmp8, label %if.end26, label %land.lhs.true, !dbg !2375

land.lhs.true:                                    ; preds = %if.then4
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 13, !dbg !2376
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !2376
  %tobool10 = icmp eq %struct.cgraph_node* %8, null, !dbg !2377
  br i1 %tobool10, label %if.end26, label %if.then11, !dbg !2378

if.then11:                                        ; preds = %land.lhs.true
  br label %for.cond14, !dbg !2379

for.cond14:                                       ; preds = %for.inc, %if.then11
  %alias.0 = phi %struct.cgraph_node* [ %8, %if.then11 ], [ %alias.0.pre, %for.inc ], !dbg !2381
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !2350, metadata !DIExpression()), !dbg !2382
  %cond = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !2383
  br i1 %cond, label %cleanup.loopexit, label %for.body16, !dbg !2383

for.body16:                                       ; preds = %for.cond14
  %decl17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 0, !dbg !2384
  %9 = load %union.tree_node*, %union.tree_node** %decl17, align 8, !dbg !2384
  %cmp19 = icmp eq %union.tree_node* %9, %7, !dbg !2387
  br i1 %cmp19, label %for.end, label %for.inc, !dbg !2388

for.inc:                                          ; preds = %for.body16
  %next22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !2389
  %alias.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next22, align 8, !dbg !2381
  br label %for.cond14, !dbg !2390, !llvm.loop !2391

for.end:                                          ; preds = %for.body16
  %alias.0.lcssa5 = phi %struct.cgraph_node* [ %alias.0, %for.body16 ], !dbg !2381
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa5, metadata !2350, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa5, metadata !2350, metadata !DIExpression()), !dbg !2382
  tail call void @cgraph_remove_same_body_alias(%struct.cgraph_node* nonnull %alias.0.lcssa5) #6, !dbg !2393
  br label %cleanup, !dbg !2396

cleanup.loopexit:                                 ; preds = %for.cond14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %cleanup.dest.slot.0 = phi i1 [ false, %for.end ], [ true, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end26_crit_edge, label %for.inc30

cleanup.if.end26_crit_edge:                       ; preds = %cleanup
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !2397
  br label %if.end26

if.end26:                                         ; preds = %cleanup.if.end26_crit_edge, %land.lhs.true, %if.then4
  %10 = phi %struct.cgraph_node* [ %.pre, %cleanup.if.end26_crit_edge ], [ %5, %land.lhs.true ], [ %5, %if.then4 ], !dbg !2397
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %node28, align 8, !dbg !2398
  tail call fastcc void @lto_cgraph_replace_node(%struct.cgraph_node* %10, %struct.cgraph_node* %11) #7, !dbg !2399
  br label %for.inc30, !dbg !2400

for.inc30:                                        ; preds = %for.body, %if.end26, %cleanup
  br label %for.cond, !dbg !2401, !llvm.loop !2402

for.end32:                                        ; preds = %for.cond
  store %struct.lto_symtab_entry_def* null, %struct.lto_symtab_entry_def** %next, align 8, !dbg !2404
  br label %cleanup34, !dbg !2405

cleanup34:                                        ; preds = %entry, %for.end32
  ret i32 1, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lto_symtab_prevailing_decl(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2411, metadata !DIExpression()), !dbg !2413
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2414
  %bf.load = load i64, i64* %0, align 8, !dbg !2414
  %bf.cast1 = and i64 %bf.load, 134217728, !dbg !2414
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2414
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2416

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i8 @is_builtin_fn(%union.tree_node* %decl) #6, !dbg !2417
  %tobool1 = icmp eq i8 %call, 0, !dbg !2417
  br i1 %tobool1, label %if.end, label %cleanup, !dbg !2418

if.end:                                           ; preds = %lor.lhs.false
  %bf.load3 = load i64, i64* %0, align 8, !dbg !2419
  %bf.cast52 = and i64 %bf.load3, 65535, !dbg !2421
  %cmp = icmp eq i64 %bf.cast52, 29, !dbg !2421
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !2422

land.lhs.true:                                    ; preds = %if.end
  %abstract_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2423
  %1 = bitcast i40* %abstract_flag to i64*, !dbg !2423
  %bf.load7 = load i64, i64* %1, align 8, !dbg !2423
  %bf.cast103 = and i64 %bf.load7, 2048, !dbg !2423
  %tobool11 = icmp eq i64 %bf.cast103, 0, !dbg !2423
  br i1 %tobool11, label %if.end13, label %cleanup, !dbg !2424

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %arrayidx18 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast52, i64 13, !dbg !2425
  %2 = load i8, i8* %arrayidx18, align 1, !dbg !2425
  %tobool20 = icmp eq i8 %2, 0, !dbg !2425
  br i1 %tobool20, label %cond.true, label %land.lhs.true21, !dbg !2425

land.lhs.true21:                                  ; preds = %if.end13
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2425
  %3 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2425
  %cmp22 = icmp eq %union.tree_node* %3, null, !dbg !2425
  br i1 %cmp22, label %cond.true, label %cond.end, !dbg !2425

cond.true:                                        ; preds = %land.lhs.true21, %if.end13
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 712, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2425
  br label %cond.end, !dbg !2425

cond.end:                                         ; preds = %land.lhs.true21, %cond.true
  %call24 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2426
  %call25 = tail call fastcc %struct.lto_symtab_entry_def* @lto_symtab_get(%union.tree_node* %call24) #7, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %call25, metadata !2412, metadata !DIExpression()), !dbg !2413
  %tobool26 = icmp eq %struct.lto_symtab_entry_def* %call25, null, !dbg !2428
  br i1 %tobool26, label %cleanup, label %if.end28, !dbg !2430

if.end28:                                         ; preds = %cond.end
  %decl29 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %call25, i64 0, i32 1, !dbg !2431
  %4 = load %union.tree_node*, %union.tree_node** %decl29, align 8, !dbg !2431
  br label %cleanup, !dbg !2432

cleanup:                                          ; preds = %land.lhs.true, %cond.end, %lor.lhs.false, %entry, %if.end28
  %retval.0 = phi %union.tree_node* [ %4, %if.end28 ], [ %decl, %lor.lhs.false ], [ %decl, %entry ], [ %decl, %land.lhs.true ], [ null, %cond.end ], !dbg !2413
  ret %union.tree_node* %retval.0, !dbg !2433
}

declare dso_local zeroext i8 @is_builtin_fn(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_lto_symtab_entry_def(i8* %x_p) #4 !dbg !2434 {
entry:
  br label %tailrecurse, !dbg !2439

tailrecurse:                                      ; preds = %if.then22, %entry
  %x_p.tr = phi i8* [ %x_p, %entry ], [ %10, %if.then22 ]
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !2436, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !2437, metadata !DIExpression()), !dbg !2444
  %cmp = icmp ne i8* %x_p.tr, null, !dbg !2445
  %cmp1 = icmp ne i8* %x_p.tr, inttoptr (i64 1 to i8*), !dbg !2445
  %or.cond = and i1 %cmp, %cmp1, !dbg !2445
  br i1 %or.cond, label %land.lhs.true2, label %if.end27, !dbg !2445

land.lhs.true2:                                   ; preds = %tailrecurse
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p.tr) #6, !dbg !2445
  %tobool = icmp eq i32 %call, 0, !dbg !2445
  br i1 %tobool, label %do.body, label %if.end27, !dbg !2446

do.body:                                          ; preds = %land.lhs.true2
  %id = bitcast i8* %x_p.tr to %union.tree_node**, !dbg !2447
  %0 = load %union.tree_node*, %union.tree_node** %id, align 8, !dbg !2447
  %cmp3 = icmp eq %union.tree_node* %0, null, !dbg !2447
  br i1 %cmp3, label %do.body6, label %if.then4, !dbg !2450

if.then4:                                         ; preds = %do.body
  %1 = bitcast %union.tree_node* %0 to i8*, !dbg !2450
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %1) #6, !dbg !2447
  br label %do.body6, !dbg !2447

do.body6:                                         ; preds = %do.body, %if.then4
  %decl = getelementptr inbounds i8, i8* %x_p.tr, i64 8, !dbg !2451
  %2 = bitcast i8* %decl to %union.tree_node**, !dbg !2451
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2451
  %cmp7 = icmp eq %union.tree_node* %3, null, !dbg !2451
  br i1 %cmp7, label %do.body13, label %if.then8, !dbg !2454

if.then8:                                         ; preds = %do.body6
  %4 = bitcast %union.tree_node* %3 to i8*, !dbg !2454
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %4) #6, !dbg !2451
  br label %do.body13, !dbg !2451

do.body13:                                        ; preds = %do.body6, %if.then8
  %node = getelementptr inbounds i8, i8* %x_p.tr, i64 16, !dbg !2455
  %5 = bitcast i8* %node to %struct.cgraph_node**, !dbg !2455
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8, !dbg !2455
  %cmp14 = icmp eq %struct.cgraph_node* %6, null, !dbg !2455
  br i1 %cmp14, label %do.body20, label %if.then15, !dbg !2458

if.then15:                                        ; preds = %do.body13
  %7 = bitcast %struct.cgraph_node* %6 to i8*, !dbg !2458
  tail call void @gt_ggc_mx_cgraph_node(i8* nonnull %7) #6, !dbg !2455
  br label %do.body20, !dbg !2455

do.body20:                                        ; preds = %do.body13, %if.then15
  %next = getelementptr inbounds i8, i8* %x_p.tr, i64 40, !dbg !2439
  %8 = bitcast i8* %next to %struct.lto_symtab_entry_def**, !dbg !2439
  %9 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %8, align 8, !dbg !2439
  %cmp21 = icmp eq %struct.lto_symtab_entry_def* %9, null, !dbg !2439
  br i1 %cmp21, label %if.end27, label %if.then22, !dbg !2459

if.then22:                                        ; preds = %do.body20
  %10 = bitcast %struct.lto_symtab_entry_def* %9 to i8*, !dbg !2459
  br label %tailrecurse, !dbg !2439

if.end27:                                         ; preds = %do.body20, %land.lhs.true2, %tailrecurse
  ret void, !dbg !2460
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_cgraph_node(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_m_P20lto_symtab_entry_def4htab(i8* %x_p) #4 !dbg !2461 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2463, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2464, metadata !DIExpression()), !dbg !2474
  %cmp = icmp ne i8* %x_p, null, !dbg !2475
  %cmp1 = icmp ne i8* %x_p, inttoptr (i64 1 to i8*), !dbg !2475
  %or.cond = and i1 %cmp, %cmp1, !dbg !2475
  br i1 %or.cond, label %land.lhs.true2, label %if.end22, !dbg !2475

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p) #6, !dbg !2475
  %tobool = icmp eq i32 %call, 0, !dbg !2475
  br i1 %tobool, label %if.then, label %if.end22, !dbg !2476

if.then:                                          ; preds = %land.lhs.true2
  %entries = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !2477
  %0 = bitcast i8* %entries to i8***, !dbg !2477
  %1 = load i8**, i8*** %0, align 8, !dbg !2477
  %cmp3 = icmp eq i8** %1, null, !dbg !2478
  br i1 %cmp3, label %if.end22, label %for.cond.preheader, !dbg !2479

for.cond.preheader:                               ; preds = %if.then
  %size = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !2480
  %2 = bitcast i8* %size to i64*, !dbg !2480
  br label %for.cond, !dbg !2483

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi i8** [ %.pre, %for.inc ], [ %1, %for.cond.preheader ]
  %3 = phi i8** [ %.pre, %for.inc ], [ %1, %for.cond.preheader ], !dbg !2484
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2485
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2466, metadata !DIExpression()), !dbg !2484
  %4 = load i64, i64* %2, align 8, !dbg !2486
  %cmp5 = icmp eq i64 %i0.0, %4, !dbg !2487
  br i1 %cmp5, label %do.body11, label %do.body, !dbg !2483

do.body:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %i0.0, !dbg !2488
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !2488
  %cmp7 = icmp eq i8* %5, null, !dbg !2488
  br i1 %cmp7, label %for.inc, label %if.then8, !dbg !2492

if.then8:                                         ; preds = %do.body
  tail call void @gt_ggc_mx_lto_symtab_entry_def(i8* nonnull %5) #7, !dbg !2488
  %.pre.pre = load i8**, i8*** %0, align 8, !dbg !2484
  br label %for.inc, !dbg !2488

for.inc:                                          ; preds = %do.body, %if.then8
  %.pre = phi i8** [ %.pre1, %do.body ], [ %.pre.pre, %if.then8 ], !dbg !2484
  %inc = add i64 %i0.0, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2466, metadata !DIExpression()), !dbg !2484
  br label %for.cond, !dbg !2494, !llvm.loop !2495

do.body11:                                        ; preds = %for.cond
  %.lcssa = phi i8** [ %3, %for.cond ], !dbg !2484
  call void @llvm.dbg.value(metadata i8** %.lcssa, metadata !2471, metadata !DIExpression()), !dbg !2497
  %switch = icmp ult i8** %.lcssa, inttoptr (i64 2 to i8**), !dbg !2498
  br i1 %switch, label %if.end22, label %if.then16, !dbg !2498

if.then16:                                        ; preds = %do.body11
  %6 = bitcast i8** %.lcssa to i8*, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %6, metadata !2471, metadata !DIExpression()), !dbg !2497
  %call17 = tail call i32 @ggc_set_mark(i8* %6) #6, !dbg !2498
  br label %if.end22, !dbg !2498

if.end22:                                         ; preds = %if.then, %land.lhs.true2, %do.body11, %if.then16, %entry
  ret void, !dbg !2501
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_lto_symtab_entry_def(i8* %x_p) #4 !dbg !2502 {
entry:
  br label %tailrecurse, !dbg !2506

tailrecurse:                                      ; preds = %if.then19, %entry
  %x_p.tr = phi i8* [ %x_p, %entry ], [ %10, %if.then19 ]
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !2504, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %x_p.tr, metadata !2505, metadata !DIExpression()), !dbg !2511
  %call = tail call i32 @gt_pch_note_object(i8* %x_p.tr, i8* %x_p.tr, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_20lto_symtab_entry_def, i32 55) #6, !dbg !2512
  %tobool = icmp eq i32 %call, 0, !dbg !2512
  br i1 %tobool, label %if.end24, label %do.body, !dbg !2513

do.body:                                          ; preds = %tailrecurse
  %id = bitcast i8* %x_p.tr to %union.tree_node**, !dbg !2514
  %0 = load %union.tree_node*, %union.tree_node** %id, align 8, !dbg !2514
  %cmp = icmp eq %union.tree_node* %0, null, !dbg !2514
  br i1 %cmp, label %do.body3, label %if.then1, !dbg !2517

if.then1:                                         ; preds = %do.body
  %1 = bitcast %union.tree_node* %0 to i8*, !dbg !2517
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %1) #6, !dbg !2514
  br label %do.body3, !dbg !2514

do.body3:                                         ; preds = %do.body, %if.then1
  %decl = getelementptr inbounds i8, i8* %x_p.tr, i64 8, !dbg !2518
  %2 = bitcast i8* %decl to %union.tree_node**, !dbg !2518
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2518
  %cmp4 = icmp eq %union.tree_node* %3, null, !dbg !2518
  br i1 %cmp4, label %do.body10, label %if.then5, !dbg !2521

if.then5:                                         ; preds = %do.body3
  %4 = bitcast %union.tree_node* %3 to i8*, !dbg !2521
  tail call void @gt_pch_nx_lang_tree_node(i8* nonnull %4) #6, !dbg !2518
  br label %do.body10, !dbg !2518

do.body10:                                        ; preds = %do.body3, %if.then5
  %node = getelementptr inbounds i8, i8* %x_p.tr, i64 16, !dbg !2522
  %5 = bitcast i8* %node to %struct.cgraph_node**, !dbg !2522
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8, !dbg !2522
  %cmp11 = icmp eq %struct.cgraph_node* %6, null, !dbg !2522
  br i1 %cmp11, label %do.body17, label %if.then12, !dbg !2525

if.then12:                                        ; preds = %do.body10
  %7 = bitcast %struct.cgraph_node* %6 to i8*, !dbg !2525
  tail call void @gt_pch_nx_cgraph_node(i8* nonnull %7) #6, !dbg !2522
  br label %do.body17, !dbg !2522

do.body17:                                        ; preds = %do.body10, %if.then12
  %next = getelementptr inbounds i8, i8* %x_p.tr, i64 40, !dbg !2506
  %8 = bitcast i8* %next to %struct.lto_symtab_entry_def**, !dbg !2506
  %9 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %8, align 8, !dbg !2506
  %cmp18 = icmp eq %struct.lto_symtab_entry_def* %9, null, !dbg !2506
  br i1 %cmp18, label %if.end24, label %if.then19, !dbg !2526

if.then19:                                        ; preds = %do.body17
  %10 = bitcast %struct.lto_symtab_entry_def* %9 to i8*, !dbg !2526
  br label %tailrecurse, !dbg !2506

if.end24:                                         ; preds = %do.body17, %tailrecurse
  ret void, !dbg !2527
}

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_20lto_symtab_entry_def(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !2528 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !2533, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2537, metadata !DIExpression()), !dbg !2538
  %cmp = icmp eq i8* %x_p, %this_obj, !dbg !2539
  br i1 %cmp, label %if.then, label %if.end, !dbg !2541

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2537, metadata !DIExpression()), !dbg !2538
  tail call void %op(i8* %x_p, i8* %cookie) #6, !dbg !2542
  br label %if.end, !dbg !2542

if.end:                                           ; preds = %if.then, %entry
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2543

if.then2:                                         ; preds = %if.end
  %decl = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !2544
  tail call void %op(i8* nonnull %decl, i8* %cookie) #6, !dbg !2546
  br label %if.end3, !dbg !2546

if.end3:                                          ; preds = %if.then2, %if.end
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2547

if.then5:                                         ; preds = %if.end3
  %node = getelementptr inbounds i8, i8* %x_p, i64 16, !dbg !2548
  tail call void %op(i8* nonnull %node, i8* %cookie) #6, !dbg !2550
  br label %if.end6, !dbg !2550

if.end6:                                          ; preds = %if.then5, %if.end3
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2551

if.then8:                                         ; preds = %if.end6
  %next = getelementptr inbounds i8, i8* %x_p, i64 40, !dbg !2552
  tail call void %op(i8* nonnull %next, i8* %cookie) #6, !dbg !2554
  br label %if.end9, !dbg !2554

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void, !dbg !2555
}

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) local_unnamed_addr #1

declare dso_local void @gt_pch_nx_cgraph_node(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_n_P20lto_symtab_entry_def4htab(i8* %x_p) #4 !dbg !2556 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2558, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2559, metadata !DIExpression()), !dbg !2565
  %call = tail call i32 @gt_pch_note_object(i8* %x_p, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 186) #6, !dbg !2566
  %tobool = icmp eq i32 %call, 0, !dbg !2566
  br i1 %tobool, label %if.end11, label %if.then, !dbg !2567

if.then:                                          ; preds = %entry
  %entries = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !2568
  %0 = bitcast i8* %entries to i8***, !dbg !2568
  %1 = load i8**, i8*** %0, align 8, !dbg !2568
  %cmp = icmp eq i8** %1, null, !dbg !2569
  br i1 %cmp, label %if.end11, label %for.cond.preheader, !dbg !2570

for.cond.preheader:                               ; preds = %if.then
  %size = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !2571
  %2 = bitcast i8* %size to i64*, !dbg !2571
  br label %for.cond, !dbg !2574

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi i8** [ %.pre, %for.inc ], [ %1, %for.cond.preheader ]
  %3 = phi i8** [ %.pre, %for.inc ], [ %1, %for.cond.preheader ], !dbg !2575
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2576
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2560, metadata !DIExpression()), !dbg !2575
  %4 = load i64, i64* %2, align 8, !dbg !2577
  %cmp2 = icmp eq i64 %i0.0, %4, !dbg !2578
  br i1 %cmp2, label %for.end, label %do.body, !dbg !2574

do.body:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %i0.0, !dbg !2579
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !2579
  %cmp4 = icmp eq i8* %5, null, !dbg !2579
  br i1 %cmp4, label %for.inc, label %if.then5, !dbg !2583

if.then5:                                         ; preds = %do.body
  tail call void @gt_pch_nx_lto_symtab_entry_def(i8* nonnull %5) #7, !dbg !2579
  %.pre.pre = load i8**, i8*** %0, align 8, !dbg !2575
  br label %for.inc, !dbg !2579

for.inc:                                          ; preds = %do.body, %if.then5
  %.pre = phi i8** [ %.pre1, %do.body ], [ %.pre.pre, %if.then5 ], !dbg !2575
  %inc = add i64 %i0.0, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2560, metadata !DIExpression()), !dbg !2575
  br label %for.cond, !dbg !2585, !llvm.loop !2586

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8** [ %3, %for.cond ], !dbg !2575
  %6 = bitcast i8** %.lcssa to i8*, !dbg !2588
  %call9 = tail call i32 @gt_pch_note_object(i8* %6, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_P20lto_symtab_entry_def4htab, i32 217) #6, !dbg !2589
  br label %if.end11, !dbg !2590

if.end11:                                         ; preds = %if.then, %entry, %for.end
  ret void, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_P20lto_symtab_entry_def4htab(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !2592 {
entry:
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !2594, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2595, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !2598, metadata !DIExpression()), !dbg !2602
  %entries = getelementptr inbounds i8, i8* %x_p, i64 24, !dbg !2603
  %0 = bitcast i8* %entries to i8***, !dbg !2603
  %1 = load i8**, i8*** %0, align 8, !dbg !2603
  %cmp = icmp eq i8** %1, null, !dbg !2604
  br i1 %cmp, label %if.end10, label %for.cond.preheader, !dbg !2605

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds i8, i8* %x_p, i64 32, !dbg !2606
  %2 = bitcast i8* %size to i64*, !dbg !2606
  %3 = bitcast i8* %entries to i8**, !dbg !2609
  br label %for.cond, !dbg !2612

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2613
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !2599, metadata !DIExpression()), !dbg !2614
  %4 = load i64, i64* %2, align 8, !dbg !2615
  %cmp1 = icmp eq i64 %i0.0, %4, !dbg !2616
  br i1 %cmp1, label %for.end, label %for.body, !dbg !2612

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %3, align 8, !dbg !2617
  %cmp3 = icmp eq i8* %5, %this_obj, !dbg !2618
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !2619

if.then4:                                         ; preds = %for.body
  %6 = bitcast i8* %5 to i8**, !dbg !2619
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %i0.0, !dbg !2620
  %7 = bitcast i8** %arrayidx to i8*, !dbg !2621
  tail call void %op(i8* %7, i8* %cookie) #6, !dbg !2622
  br label %for.inc, !dbg !2622

for.inc:                                          ; preds = %for.body, %if.then4
  %inc = add i64 %i0.0, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2599, metadata !DIExpression()), !dbg !2614
  br label %for.cond, !dbg !2624, !llvm.loop !2625

for.end:                                          ; preds = %for.cond
  %cmp6 = icmp eq i8* %x_p, %this_obj, !dbg !2627
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !2629

if.then7:                                         ; preds = %for.end
  tail call void %op(i8* nonnull %entries, i8* %cookie) #6, !dbg !2630
  br label %if.end10, !dbg !2630

if.end10:                                         ; preds = %entry, %for.end, %if.then7
  ret void, !dbg !2631
}

; Function Attrs: nounwind uwtable
define internal i32 @lto_symtab_entry_marked_p(i8* %p) #4 !dbg !2632 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2634, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* %p, metadata !2635, metadata !DIExpression()), !dbg !2636
  %decl = getelementptr inbounds i8, i8* %p, i64 8, !dbg !2637
  %0 = bitcast i8* %decl to i8**, !dbg !2637
  %1 = load i8*, i8** %0, align 8, !dbg !2637
  %call = tail call i32 @ggc_marked_p(i8* %1) #6, !dbg !2638
  %tobool = icmp eq i32 %call, 0, !dbg !2638
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2639

lor.rhs:                                          ; preds = %entry
  %next = getelementptr inbounds i8, i8* %p, i64 40, !dbg !2640
  %2 = bitcast i8* %next to %struct.lto_symtab_entry_def**, !dbg !2640
  %3 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %2, align 8, !dbg !2640
  %tobool1 = icmp eq %struct.lto_symtab_entry_def* %3, null, !dbg !2641
  br i1 %tobool1, label %lor.end, label %land.rhs, !dbg !2642

land.rhs:                                         ; preds = %lor.rhs
  %4 = bitcast %struct.lto_symtab_entry_def* %3 to i8*, !dbg !2642
  %call3 = tail call i32 @ggc_marked_p(i8* nonnull %4) #6, !dbg !2643
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2642
  %phitmp = zext i1 %tobool4 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %5 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i32 %5, !dbg !2644
}

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lto_symtab_entry_hash(i8* %p) #4 !dbg !2645 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %p, metadata !2648, metadata !DIExpression()), !dbg !2649
  %0 = bitcast i8* %p to %struct.tree_identifier**, !dbg !2650
  %1 = load %struct.tree_identifier*, %struct.tree_identifier** %0, align 8, !dbg !2650
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %1, i64 0, i32 1, i32 0, !dbg !2650
  %2 = load i8*, i8** %str, align 8, !dbg !2650
  %call = tail call i32 @htab_hash_string(i8* %2) #6, !dbg !2651
  ret i32 %call, !dbg !2652
}

; Function Attrs: nounwind uwtable
define internal i32 @lto_symtab_entry_eq(i8* %p1, i8* %p2) #4 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2658, metadata !DIExpression()), !dbg !2659
  %id = bitcast i8* %p1 to %union.tree_node**, !dbg !2660
  %0 = load %union.tree_node*, %union.tree_node** %id, align 8, !dbg !2660
  %id1 = bitcast i8* %p2 to %union.tree_node**, !dbg !2661
  %1 = load %union.tree_node*, %union.tree_node** %id1, align 8, !dbg !2661
  %cmp = icmp eq %union.tree_node* %0, %1, !dbg !2662
  %conv = zext i1 %cmp to i32, !dbg !2662
  ret i32 %conv, !dbg !2663
}

declare dso_local i8* @ggc_calloc(i64, i64) #1

declare dso_local void @ggc_free(i8*) #1

declare dso_local i32 @htab_hash_string(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_symtab_resolve_symbols(i8** %slot) unnamed_addr #4 !dbg !2664 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !2668, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* null, metadata !2670, metadata !DIExpression()), !dbg !2672
  %0 = bitcast i8** %slot to %struct.lto_symtab_entry_def**, !dbg !2673
  br label %for.cond, !dbg !2675

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.lto_symtab_entry_def** [ %0, %entry ], [ %next, %for.inc ]
  %e.0 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.0.in, align 8, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0, metadata !2669, metadata !DIExpression()), !dbg !2672
  %tobool = icmp eq %struct.lto_symtab_entry_def* %e.0, null, !dbg !2677
  br i1 %tobool, label %for.end, label %for.body, !dbg !2677

for.body:                                         ; preds = %for.cond
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 1, !dbg !2678
  %1 = bitcast %union.tree_node** %decl to i64**, !dbg !2678
  %2 = load i64*, i64** %1, align 8, !dbg !2678
  %bf.load = load i64, i64* %2, align 8, !dbg !2678
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !2682
  %cmp = icmp eq i64 %bf.cast4, 29, !dbg !2682
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2683

if.then:                                          ; preds = %for.body
  %3 = bitcast i64* %2 to %union.tree_node*, !dbg !2683
  %call = tail call %struct.cgraph_node* @cgraph_get_node(%union.tree_node* %3) #6, !dbg !2684
  %node = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 2, !dbg !2685
  store %struct.cgraph_node* %call, %struct.cgraph_node** %node, align 8, !dbg !2686
  br label %for.inc, !dbg !2687

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 5, !dbg !2688
  br label %for.cond, !dbg !2689, !llvm.loop !2690

for.end:                                          ; preds = %for.cond
  %4 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %0, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %4, metadata !2669, metadata !DIExpression()), !dbg !2672
  %resolution = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %4, i64 0, i32 4, !dbg !2693
  %5 = load i32, i32* %resolution, align 8, !dbg !2693
  %cmp2 = icmp eq i32 %5, 0, !dbg !2695
  br i1 %cmp2, label %if.end4, label %cleanup.cont, !dbg !2696

if.end4:                                          ; preds = %for.end
  br label %for.cond5, !dbg !2697

for.cond5:                                        ; preds = %for.inc26, %if.end4
  %e.1 = phi %struct.lto_symtab_entry_def* [ %4, %if.end4 ], [ %e.1.pre, %for.inc26 ], !dbg !2699
  %prevailing.0 = phi %struct.lto_symtab_entry_def* [ null, %if.end4 ], [ %prevailing.2, %for.inc26 ], !dbg !2700
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.1, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.0, metadata !2670, metadata !DIExpression()), !dbg !2672
  %tobool6 = icmp eq %struct.lto_symtab_entry_def* %e.1, null, !dbg !2701
  br i1 %tobool6, label %for.end28, label %for.body7, !dbg !2701

for.body7:                                        ; preds = %for.cond5
  %call8 = tail call fastcc zeroext i8 @lto_symtab_resolve_can_prevail_p(%struct.lto_symtab_entry_def* nonnull %e.1) #7, !dbg !2702
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2702
  %resolution13 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.1, i64 0, i32 4, !dbg !2706
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2707

if.then10:                                        ; preds = %for.body7
  store i32 6, i32* %resolution13, align 8, !dbg !2708
  br label %for.inc26, !dbg !2710

if.end12:                                         ; preds = %for.body7
  store i32 5, i32* %resolution13, align 8, !dbg !2711
  %call14 = tail call fastcc zeroext i8 @lto_symtab_resolve_replaceable_p(%struct.lto_symtab_entry_def* nonnull %e.1) #7, !dbg !2712
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2712
  br i1 %tobool15, label %if.then16, label %for.inc26, !dbg !2714

if.then16:                                        ; preds = %if.end12
  %tobool17 = icmp eq %struct.lto_symtab_entry_def* %prevailing.0, null, !dbg !2715
  br i1 %tobool17, label %for.inc26, label %if.then18, !dbg !2718

if.then18:                                        ; preds = %if.then16
  %decl19 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.1, i64 0, i32 1, !dbg !2719
  %6 = bitcast %union.tree_node** %decl19 to %struct.tree_decl_minimal**, !dbg !2719
  %7 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %6, align 8, !dbg !2719
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %7, i64 0, i32 1, !dbg !2719
  %8 = load i32, i32* %locus, align 8, !dbg !2719
  tail call void (i32, i8*, ...) @error_at(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), %struct.tree_decl_minimal* %7) #6, !dbg !2721
  %decl21 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.0, i64 0, i32 1, !dbg !2722
  %9 = bitcast %union.tree_node** %decl21 to %struct.tree_decl_minimal**, !dbg !2722
  %10 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %9, align 8, !dbg !2722
  %locus23 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %10, i64 0, i32 1, !dbg !2722
  %11 = load i32, i32* %locus23, align 8, !dbg !2722
  tail call void (i32, i8*, ...) @inform(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2723
  br label %for.inc26, !dbg !2724

for.inc26:                                        ; preds = %if.then16, %if.end12, %if.then18, %if.then10
  %prevailing.2 = phi %struct.lto_symtab_entry_def* [ %prevailing.0, %if.then10 ], [ %prevailing.0, %if.end12 ], [ %e.1, %if.then18 ], [ %e.1, %if.then16 ], !dbg !2700
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.2, metadata !2670, metadata !DIExpression()), !dbg !2672
  %next27 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.1, i64 0, i32 5, !dbg !2725
  %e.1.pre = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next27, align 8, !dbg !2699
  br label %for.cond5, !dbg !2726, !llvm.loop !2727

for.end28:                                        ; preds = %for.cond5
  %prevailing.0.lcssa = phi %struct.lto_symtab_entry_def* [ %prevailing.0, %for.cond5 ], !dbg !2700
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.0.lcssa, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.0.lcssa, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.0.lcssa, metadata !2670, metadata !DIExpression()), !dbg !2672
  %tobool29 = icmp eq %struct.lto_symtab_entry_def* %prevailing.0.lcssa, null, !dbg !2729
  br i1 %tobool29, label %if.end31, label %found, !dbg !2731

if.end31:                                         ; preds = %for.end28
  br label %for.cond32, !dbg !2732

for.cond32:                                       ; preds = %for.inc56, %if.end31
  %prevailing.3 = phi %struct.lto_symtab_entry_def* [ null, %if.end31 ], [ %prevailing.5, %for.inc56 ], !dbg !2700
  %e.2.in = phi %struct.lto_symtab_entry_def** [ %0, %if.end31 ], [ %next57, %for.inc56 ]
  %e.2 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.2.in, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.2, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.3, metadata !2670, metadata !DIExpression()), !dbg !2672
  %tobool33 = icmp eq %struct.lto_symtab_entry_def* %e.2, null, !dbg !2735
  br i1 %tobool33, label %for.end58, label %for.body34, !dbg !2735

for.body34:                                       ; preds = %for.cond32
  %resolution35 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.2, i64 0, i32 4, !dbg !2736
  %12 = load i32, i32* %resolution35, align 8, !dbg !2736
  %cmp36 = icmp eq i32 %12, 5, !dbg !2740
  br i1 %cmp36, label %if.end38, label %for.inc56, !dbg !2741

if.end38:                                         ; preds = %for.body34
  %decl39 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.2, i64 0, i32 1, !dbg !2742
  %13 = bitcast %union.tree_node** %decl39 to i64**, !dbg !2742
  %14 = load i64*, i64** %13, align 8, !dbg !2742
  %bf.load41 = load i64, i64* %14, align 8, !dbg !2742
  %bf.cast433 = and i64 %bf.load41, 65535, !dbg !2744
  %cmp44 = icmp eq i64 %bf.cast433, 29, !dbg !2744
  br i1 %cmp44, label %for.end58, label %if.end46, !dbg !2745

if.end46:                                         ; preds = %if.end38
  %tobool47 = icmp eq %struct.lto_symtab_entry_def* %prevailing.3, null, !dbg !2746
  br i1 %tobool47, label %if.then54, label %lor.lhs.false, !dbg !2748

lor.lhs.false:                                    ; preds = %if.end46
  %decl48 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.3, i64 0, i32 1, !dbg !2749
  %15 = bitcast %union.tree_node** %decl48 to %struct.tree_decl_common**, !dbg !2749
  %16 = load %struct.tree_decl_common*, %struct.tree_decl_common** %15, align 8, !dbg !2749
  %size = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %16, i64 0, i32 1, !dbg !2749
  %17 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2749
  %size51 = getelementptr inbounds i64, i64* %14, i64 6, !dbg !2750
  %18 = bitcast i64* %size51 to %union.tree_node**, !dbg !2750
  %19 = load %union.tree_node*, %union.tree_node** %18, align 8, !dbg !2750
  %call52 = tail call i32 @tree_int_cst_lt(%union.tree_node* %17, %union.tree_node* %19) #6, !dbg !2751
  %tobool53 = icmp eq i32 %call52, 0, !dbg !2751
  br i1 %tobool53, label %for.inc56, label %if.then54, !dbg !2752

if.then54:                                        ; preds = %lor.lhs.false, %if.end46
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.2, metadata !2670, metadata !DIExpression()), !dbg !2672
  br label %for.inc56, !dbg !2753

for.inc56:                                        ; preds = %lor.lhs.false, %for.body34, %if.then54
  %prevailing.5 = phi %struct.lto_symtab_entry_def* [ %prevailing.3, %for.body34 ], [ %e.2, %if.then54 ], [ %prevailing.3, %lor.lhs.false ], !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.5, metadata !2670, metadata !DIExpression()), !dbg !2672
  %next57 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.2, i64 0, i32 5, !dbg !2754
  br label %for.cond32, !dbg !2755, !llvm.loop !2756

for.end58:                                        ; preds = %for.cond32, %if.end38
  %prevailing.6 = phi %struct.lto_symtab_entry_def* [ %prevailing.3, %for.cond32 ], [ %e.2, %if.end38 ], !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.6, metadata !2670, metadata !DIExpression()), !dbg !2672
  %tobool59 = icmp eq %struct.lto_symtab_entry_def* %prevailing.6, null, !dbg !2758
  br i1 %tobool59, label %cleanup.cont, label %found, !dbg !2760

found:                                            ; preds = %for.end58, %for.end28
  %prevailing.7 = phi %struct.lto_symtab_entry_def* [ %prevailing.0.lcssa, %for.end28 ], [ %prevailing.6, %for.end58 ], !dbg !2672
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing.7, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.label(metadata !2671), !dbg !2761
  %decl62 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.7, i64 0, i32 1, !dbg !2762
  %20 = bitcast %union.tree_node** %decl62 to i64**, !dbg !2762
  %21 = load i64*, i64** %20, align 8, !dbg !2762
  %bf.load64 = load i64, i64* %21, align 8, !dbg !2762
  %bf.cast661 = and i64 %bf.load64, 65535, !dbg !2764
  %cmp67 = icmp eq i64 %bf.cast661, 32, !dbg !2764
  br i1 %cmp67, label %land.lhs.true, label %if.else, !dbg !2765

land.lhs.true:                                    ; preds = %found
  %bf.cast722 = and i64 %bf.load64, 1048576, !dbg !2766
  %tobool73 = icmp eq i64 %bf.cast722, 0, !dbg !2766
  br i1 %tobool73, label %if.else, label %if.then74, !dbg !2767

if.then74:                                        ; preds = %land.lhs.true
  %resolution75 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.7, i64 0, i32 4, !dbg !2768
  store i32 3, i32* %resolution75, align 8, !dbg !2769
  br label %cleanup.cont, !dbg !2770

if.else:                                          ; preds = %land.lhs.true, %found
  %resolution76 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing.7, i64 0, i32 4, !dbg !2771
  store i32 2, i32* %resolution76, align 8, !dbg !2772
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %for.end58, %for.end, %if.else, %if.then74
  ret void, !dbg !2773
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @lto_global_var_decls, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2780, metadata !DIExpression()), !dbg !2781
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** nonnull @lto_global_var_decls, i32 1) #7, !dbg !2782
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @lto_global_var_decls, align 8, !dbg !2782
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2782
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2782

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2782
  br label %cond.end, !dbg !2782

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2782
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !2782
  ret %union.tree_node** %call1, !dbg !2782
}

declare dso_local void @error_at(i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @gimple_register_type(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_symtab_merge_decls_2(i8** %slot) unnamed_addr #4 !dbg !2783 {
entry:
  %mismatches = alloca %struct.VEC_tree_heap*, align 8
  %decl = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata i8** %slot, metadata !2785, metadata !DIExpression()), !dbg !2792
  %0 = bitcast %struct.VEC_tree_heap** %mismatches to i8*, !dbg !2793
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2788, metadata !DIExpression()), !dbg !2792
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %mismatches, align 8, !dbg !2794
  %1 = bitcast %union.tree_node** %decl to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2795
  call void @llvm.dbg.value(metadata i8 0, metadata !2791, metadata !DIExpression()), !dbg !2792
  %2 = bitcast i8** %slot to %struct.lto_symtab_entry_def**, !dbg !2796
  %3 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %2, align 8, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %3, metadata !2786, metadata !DIExpression()), !dbg !2792
  %next = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %3, i64 0, i32 5, !dbg !2797
  %4 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next, align 8, !dbg !2797
  %tobool = icmp eq %struct.lto_symtab_entry_def* %4, null, !dbg !2799
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2800

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !2801

for.cond:                                         ; preds = %for.inc, %if.end
  %e.0 = phi %struct.lto_symtab_entry_def* [ %4, %if.end ], [ %e.0.pre, %for.inc ], !dbg !2803
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e.0, metadata !2787, metadata !DIExpression()), !dbg !2792
  %tobool2 = icmp eq %struct.lto_symtab_entry_def* %e.0, null, !dbg !2804
  br i1 %tobool2, label %for.end, label %for.body, !dbg !2804

for.body:                                         ; preds = %for.cond
  %call = call fastcc zeroext i8 @lto_symtab_merge(%struct.lto_symtab_entry_def* %3, %struct.lto_symtab_entry_def* nonnull %e.0) #7, !dbg !2805
  %tobool3 = icmp eq i8 %call, 0, !dbg !2805
  br i1 %tobool3, label %if.then4, label %for.inc, !dbg !2809

if.then4:                                         ; preds = %for.body
  %decl5 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 1, !dbg !2810
  %5 = load %union.tree_node*, %union.tree_node** %decl5, align 8, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %mismatches, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call6 = call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %mismatches, %union.tree_node* %5) #7, !dbg !2810
  br label %for.inc, !dbg !2810

for.inc:                                          ; preds = %for.body, %if.then4
  %e.0.in.phi.trans.insert = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e.0, i64 0, i32 5, !dbg !2803
  %e.0.pre = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %e.0.in.phi.trans.insert, align 8, !dbg !2803
  br label %for.cond, !dbg !2811, !llvm.loop !2812

for.end:                                          ; preds = %for.cond
  %6 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %mismatches, align 8, !dbg !2814
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %6, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %6, metadata !2788, metadata !DIExpression()), !dbg !2792
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %6, i64 0, i32 0, !dbg !2814
  %call10 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !2814
  %cmp = icmp eq i32 %call10, 0, !dbg !2814
  br i1 %cmp, label %cleanup, label %for.cond13.preheader, !dbg !2816

for.cond13.preheader:                             ; preds = %for.end
  %decl23 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %3, i64 0, i32 1, !dbg !2817
  %7 = bitcast %union.tree_node** %decl23 to %struct.tree_common**, !dbg !2817
  %8 = bitcast %union.tree_node** %decl to %struct.tree_common**, !dbg !2817
  br label %for.cond13, !dbg !2822

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc58
  %i.0 = phi i32 [ %inc, %for.inc58 ], [ 0, %for.cond13.preheader ], !dbg !2823
  %diagnosed_p.0 = phi i8 [ %diagnosed_p.2, %for.inc58 ], [ 0, %for.cond13.preheader ], !dbg !2792
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2789, metadata !DIExpression()), !dbg !2792
  %9 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %mismatches, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %9, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %9, metadata !2788, metadata !DIExpression()), !dbg !2792
  %base16 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %9, i64 0, i32 0, !dbg !2824
  call void @llvm.dbg.value(metadata %union.tree_node** %decl, metadata !2790, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call20 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %base16, i32 %i.0, %union.tree_node** nonnull %decl) #7, !dbg !2824
  %tobool21 = icmp eq i32 %call20, 0, !dbg !2822
  br i1 %tobool21, label %for.end59, label %for.body22, !dbg !2822

for.body22:                                       ; preds = %for.cond13
  %10 = load %struct.tree_common*, %struct.tree_common** %7, align 8, !dbg !2825
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 0, i32 2, !dbg !2825
  %11 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2825
  %12 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2826
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 0, i32 2, !dbg !2826
  %13 = load %union.tree_node*, %union.tree_node** %type25, align 8, !dbg !2826
  %cmp26 = icmp eq %union.tree_node* %11, %13, !dbg !2827
  br i1 %cmp26, label %if.else, label %if.then27, !dbg !2828

if.then27:                                        ; preds = %for.body22
  %locus = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 1, !dbg !2829
  %14 = bitcast %struct.tree_common* %locus to i32*, !dbg !2829
  %15 = load i32, i32* %14, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.tree_common* %12, metadata !2790, metadata !DIExpression()), !dbg !2792
  %call28 = call zeroext i8 (i32, i32, i8*, ...) @warning_at(i32 %15, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), %struct.tree_common* %12) #6, !dbg !2830
  %or5 = or i8 %diagnosed_p.0, %call28, !dbg !2831
  call void @llvm.dbg.value(metadata i8 %or5, metadata !2791, metadata !DIExpression()), !dbg !2792
  br label %for.inc58, !dbg !2832

if.else:                                          ; preds = %for.body22
  %16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 0, i32 0, i32 0, !dbg !2833
  %bf.load = load i64, i64* %16, align 8, !dbg !2833
  %bf.cast1 = and i64 %bf.load, 4398046511104, !dbg !2833
  %tobool34 = icmp eq i64 %bf.cast1, 0, !dbg !2833
  br i1 %tobool34, label %for.inc58, label %land.lhs.true, !dbg !2835

land.lhs.true:                                    ; preds = %if.else
  %17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 0, i32 0, i32 0, !dbg !2836
  %bf.load37 = load i64, i64* %17, align 8, !dbg !2836
  %bf.cast402 = and i64 %bf.load37, 4398046511104, !dbg !2836
  %tobool41 = icmp eq i64 %bf.cast402, 0, !dbg !2836
  br i1 %tobool41, label %for.inc58, label %land.lhs.true42, !dbg !2837

land.lhs.true42:                                  ; preds = %land.lhs.true
  %align = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 2, i32 2, !dbg !2838
  %18 = bitcast %union.tree_node** %align to i32*, !dbg !2838
  %19 = load i32, i32* %18, align 8, !dbg !2838
  %align45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 2, i32 2, !dbg !2839
  %20 = bitcast %union.tree_node** %align45 to i32*, !dbg !2839
  %21 = load i32, i32* %20, align 8, !dbg !2839
  %cmp46 = icmp ult i32 %19, %21, !dbg !2840
  br i1 %cmp46, label %if.then48, label %for.inc58, !dbg !2841

if.then48:                                        ; preds = %land.lhs.true42
  %locus50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 1, !dbg !2842
  %22 = bitcast %struct.tree_common* %locus50 to i32*, !dbg !2842
  %23 = load i32, i32* %22, align 8, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.tree_common* %12, metadata !2790, metadata !DIExpression()), !dbg !2792
  %call51 = call zeroext i8 (i32, i32, i8*, ...) @warning_at(i32 %23, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), %struct.tree_common* %12) #6, !dbg !2844
  %or543 = or i8 %diagnosed_p.0, %call51, !dbg !2845
  call void @llvm.dbg.value(metadata i8 %or543, metadata !2791, metadata !DIExpression()), !dbg !2792
  br label %for.inc58, !dbg !2846

for.inc58:                                        ; preds = %land.lhs.true, %if.else, %if.then27, %if.then48, %land.lhs.true42
  %diagnosed_p.2 = phi i8 [ %or5, %if.then27 ], [ %or543, %if.then48 ], [ %diagnosed_p.0, %land.lhs.true42 ], [ %diagnosed_p.0, %land.lhs.true ], [ %diagnosed_p.0, %if.else ], !dbg !2817
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.2, metadata !2791, metadata !DIExpression()), !dbg !2792
  %inc = add i32 %i.0, 1, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2789, metadata !DIExpression()), !dbg !2792
  br label %for.cond13, !dbg !2848, !llvm.loop !2849

for.end59:                                        ; preds = %for.cond13
  %diagnosed_p.0.lcssa = phi i8 [ %diagnosed_p.0, %for.cond13 ], !dbg !2792
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %diagnosed_p.0.lcssa, metadata !2791, metadata !DIExpression()), !dbg !2792
  %tobool60 = icmp eq i8 %diagnosed_p.0.lcssa, 0, !dbg !2851
  br i1 %tobool60, label %if.end65, label %if.then61, !dbg !2853

if.then61:                                        ; preds = %for.end59
  %24 = bitcast %union.tree_node** %decl23 to %struct.tree_decl_minimal**, !dbg !2854
  %25 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %24, align 8, !dbg !2854
  %locus64 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %25, i64 0, i32 1, !dbg !2854
  %26 = load i32, i32* %locus64, align 8, !dbg !2854
  call void (i32, i8*, ...) @inform(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2855
  br label %if.end65, !dbg !2855

if.end65:                                         ; preds = %for.end59, %if.then61
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %mismatches, metadata !2788, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %mismatches) #7, !dbg !2856
  br label %cleanup, !dbg !2857

cleanup:                                          ; preds = %entry, %for.end, %if.end65
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2857
  ret void, !dbg !2857
}

declare dso_local %struct.cgraph_node* @cgraph_get_node(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @lto_symtab_resolve_can_prevail_p(%struct.lto_symtab_entry_def* %e) unnamed_addr #4 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e, metadata !2862, metadata !DIExpression()), !dbg !2863
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e, i64 0, i32 1, !dbg !2864
  %0 = bitcast %union.tree_node** %decl to %struct.tree_decl_common**, !dbg !2864
  %1 = load %struct.tree_decl_common*, %struct.tree_decl_common** %0, align 8, !dbg !2864
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 2, !dbg !2864
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !2864
  %bf.load = load i64, i64* %2, align 8, !dbg !2864
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2864
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2864
  br i1 %tobool, label %if.end, label %return, !dbg !2866

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2866
  %bf.load2 = load i64, i64* %3, align 8, !dbg !2867
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2869
  %cmp = icmp eq i64 %bf.cast42, 29, !dbg !2869
  br i1 %cmp, label %if.then5, label %if.else, !dbg !2870

if.then5:                                         ; preds = %if.end
  %node = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e, i64 0, i32 2, !dbg !2871
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !2871
  %tobool6 = icmp eq %struct.cgraph_node* %4, null, !dbg !2872
  br i1 %tobool6, label %land.end, label %land.rhs, !dbg !2873

land.rhs:                                         ; preds = %if.then5
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 27, !dbg !2874
  %bf.load8 = load i16, i16* %analyzed, align 4, !dbg !2874
  %bf.lshr9 = lshr i16 %bf.load8, 5, !dbg !2874
  %5 = trunc i16 %bf.lshr9 to i8
  %6 = and i8 %5, 1
  br label %land.end

land.end:                                         ; preds = %if.then5, %land.rhs
  %7 = phi i8 [ 0, %if.then5 ], [ %6, %land.rhs ]
  br label %return, !dbg !2875

if.else:                                          ; preds = %if.end
  %cmp18 = icmp eq i64 %bf.cast42, 32, !dbg !2876
  br i1 %cmp18, label %if.then20, label %if.end38, !dbg !2878

if.then20:                                        ; preds = %if.else
  %size = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 1, !dbg !2879
  %8 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2879
  %cmp23 = icmp eq %union.tree_node* %8, null, !dbg !2880
  br i1 %cmp23, label %land.end34, label %land.rhs25, !dbg !2881

land.rhs25:                                       ; preds = %if.then20
  %bf.cast324 = lshr i64 %bf.load, 25
  %9 = trunc i64 %bf.cast324 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  br label %land.end34

land.end34:                                       ; preds = %if.then20, %land.rhs25
  %12 = phi i8 [ 0, %if.then20 ], [ %11, %land.rhs25 ]
  br label %return, !dbg !2882

if.end38:                                         ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2883
  br label %return, !dbg !2884

return:                                           ; preds = %entry, %if.end38, %land.end34, %land.end
  %retval.0 = phi i8 [ %7, %land.end ], [ %12, %land.end34 ], [ 0, %if.end38 ], [ 0, %entry ], !dbg !2863
  ret i8 %retval.0, !dbg !2885
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @lto_symtab_resolve_replaceable_p(%struct.lto_symtab_entry_def* %e) unnamed_addr #4 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %e, metadata !2888, metadata !DIExpression()), !dbg !2889
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %e, i64 0, i32 1, !dbg !2890
  %0 = bitcast %union.tree_node** %decl to %struct.tree_decl_common**, !dbg !2890
  %1 = load %struct.tree_decl_common*, %struct.tree_decl_common** %0, align 8, !dbg !2890
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 2, !dbg !2890
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !2890
  %bf.load = load i64, i64* %2, align 8, !dbg !2890
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2890
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2890
  %3 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2892
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !2892

lor.lhs.false:                                    ; preds = %entry
  %comdat_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 1, i32 0, i32 3, !dbg !2893
  %4 = bitcast %union.tree_node** %comdat_flag to i32*, !dbg !2893
  %bf.load2 = load i32, i32* %4, align 8, !dbg !2893
  %bf.clear4 = and i32 %bf.load2, 512, !dbg !2893
  %tobool5 = icmp eq i32 %bf.clear4, 0, !dbg !2893
  br i1 %tobool5, label %lor.lhs.false6, label %return, !dbg !2894

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %5 = trunc i32 %bf.load2 to i8, !dbg !2895
  %tobool12 = icmp slt i8 %5, 0, !dbg !2895
  br i1 %tobool12, label %return, label %if.end, !dbg !2896

if.end:                                           ; preds = %lor.lhs.false6
  %bf.load14 = load i64, i64* %3, align 8, !dbg !2897
  %bf.cast162 = and i64 %bf.load14, 65535, !dbg !2899
  %cmp = icmp eq i64 %bf.cast162, 32, !dbg !2899
  br i1 %cmp, label %if.then17, label %return, !dbg !2900

if.then17:                                        ; preds = %if.end
  %bf.clear22 = and i32 %bf.load2, 8, !dbg !2901
  %tobool23 = icmp eq i32 %bf.clear22, 0, !dbg !2901
  br i1 %tobool23, label %lor.rhs, label %lor.end, !dbg !2902

lor.rhs:                                          ; preds = %if.then17
  %6 = load i32, i32* @flag_no_common, align 4, !dbg !2903
  %tobool24 = icmp eq i32 %6, 0, !dbg !2903
  br i1 %tobool24, label %land.rhs, label %lor.end, !dbg !2904

land.rhs:                                         ; preds = %lor.rhs
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 5, !dbg !2905
  %7 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2905
  %tobool27 = icmp eq %union.tree_node* %7, null, !dbg !2906
  %phitmp = zext i1 %tobool27 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then17, %land.rhs
  %8 = phi i8 [ 1, %if.then17 ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !2907

return:                                           ; preds = %lor.lhs.false, %entry, %if.end, %lor.lhs.false6, %lor.end
  %retval.0 = phi i8 [ %8, %lor.end ], [ 1, %lor.lhs.false6 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.end ], !dbg !2889
  ret i8 %retval.0, !dbg !2908
}

declare dso_local i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2909 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @lto_global_var_decls, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 1, metadata !2914, metadata !DIExpression()), !dbg !2916
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @lto_global_var_decls, align 8, !dbg !2917
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2917
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2917

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2917
  br label %cond.end, !dbg !2917

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2917
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !2917
  %tobool1 = icmp eq i32 %call, 0, !dbg !2917
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2915, metadata !DIExpression()), !dbg !2916
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2917

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_gc** @lto_global_var_decls to i8**), align 8, !dbg !2918
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %1, i32 1) #6, !dbg !2918
  store i8* %call3, i8** bitcast (%struct.VEC_tree_gc** @lto_global_var_decls to i8**), align 8, !dbg !2918
  br label %if.end, !dbg !2918

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2920 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2926, metadata !DIExpression()), !dbg !2928
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2929
  %0 = load i32, i32* %num1, align 8, !dbg !2929
  %inc = add i32 %0, 1, !dbg !2929
  store i32 %inc, i32* %num1, align 8, !dbg !2929
  %idxprom = zext i32 %0 to i64, !dbg !2929
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2929
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !2927, metadata !DIExpression()), !dbg !2928
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2929
  ret %union.tree_node** %arrayidx, !dbg !2929
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2930 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 1, metadata !2935, metadata !DIExpression()), !dbg !2936
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2937
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2937

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !2937
  %0 = load i32, i32* %alloc, align 4, !dbg !2937
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2937
  %1 = load i32, i32* %num, align 8, !dbg !2937
  %cmp1 = icmp ne i32 %0, %1, !dbg !2937
  %phitmp = zext i1 %cmp1 to i32, !dbg !2937
  br label %cond.end, !dbg !2937

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2937

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2937
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @lto_symtab_merge(%struct.lto_symtab_entry_def* %prevailing, %struct.lto_symtab_entry_def* %entry1) unnamed_addr #4 !dbg !2938 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %prevailing, metadata !2942, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %entry1, metadata !2943, metadata !DIExpression()), !dbg !2954
  %decl = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %prevailing, i64 0, i32 1, !dbg !2955
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2955
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2944, metadata !DIExpression()), !dbg !2954
  %decl3 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %entry1, i64 0, i32 1, !dbg !2956
  %1 = load %union.tree_node*, %union.tree_node** %decl3, align 8, !dbg !2956
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2945, metadata !DIExpression()), !dbg !2954
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2957
  %bf.load = load i64, i64* %2, align 8, !dbg !2957
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2958
  %bf.load5 = load i64, i64* %3, align 8, !dbg !2959
  %4 = and i64 %bf.load, 262144, !dbg !2959
  %bf.set = or i64 %4, %bf.load5, !dbg !2959
  store i64 %bf.set, i64* %3, align 8, !dbg !2959
  %bf.load17 = load i64, i64* %2, align 8, !dbg !2960
  %5 = and i64 %bf.set, 262144, !dbg !2960
  %bf.set26 = or i64 %5, %bf.load17, !dbg !2960
  store i64 %bf.set26, i64* %2, align 8, !dbg !2960
  %bf.cast318 = and i64 %bf.load17, 65535, !dbg !2961
  %cmp = icmp eq i64 %bf.cast318, 29, !dbg !2961
  br i1 %cmp, label %if.then, label %if.end37, !dbg !2963

if.then:                                          ; preds = %entry
  br label %cleanup125, !dbg !2964

if.end37:                                         ; preds = %entry
  %type32 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2954
  %6 = bitcast %union.tree_node** %type32 to %struct.tree_type**, !dbg !2954
  %7 = load %struct.tree_type*, %struct.tree_type** %6, align 8, !dbg !2954
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i64 0, i32 16, !dbg !2966
  %8 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !2946, metadata !DIExpression()), !dbg !2954
  %type42 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2967
  %9 = bitcast %union.tree_node** %type42 to %struct.tree_type**, !dbg !2967
  %10 = load %struct.tree_type*, %struct.tree_type** %9, align 8, !dbg !2967
  %main_variant44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i64 0, i32 16, !dbg !2967
  %11 = load %union.tree_node*, %union.tree_node** %main_variant44, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2947, metadata !DIExpression()), !dbg !2954
  %call = tail call %union.tree_node* @gimple_register_type(%union.tree_node* %8) #6, !dbg !2968
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2946, metadata !DIExpression()), !dbg !2954
  %call45 = tail call %union.tree_node* @gimple_register_type(%union.tree_node* %11) #6, !dbg !2969
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !2947, metadata !DIExpression()), !dbg !2954
  %cmp46 = icmp eq %union.tree_node* %call, %call45, !dbg !2970
  br i1 %cmp46, label %if.end105, label %if.then47, !dbg !2971

if.then47:                                        ; preds = %if.end37
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call45, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2972
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !2972
  %cmp49 = icmp eq %union.tree_node* %13, null, !dbg !2972
  br i1 %cmp49, label %if.end51, label %cleanup125, !dbg !2974

if.end51:                                         ; preds = %if.then47
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2975
  %bf.load53 = load i64, i64* %14, align 8, !dbg !2975
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call45, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2977
  %bf.load57 = load i64, i64* %15, align 8, !dbg !2977
  %16 = xor i64 %bf.load53, %bf.load57, !dbg !2978
  %17 = and i64 %16, 65535, !dbg !2978
  %cmp60 = icmp eq i64 %17, 0, !dbg !2978
  br i1 %cmp60, label %if.end62, label %cleanup125, !dbg !2979

if.end62:                                         ; preds = %if.end51
  %bf.cast6611 = and i64 %bf.load53, 65535, !dbg !2980
  %cmp67 = icmp eq i64 %bf.cast6611, 15, !dbg !2980
  br i1 %cmp67, label %if.then68, label %if.end105, !dbg !2981

if.then68:                                        ; preds = %if.end62
  br label %while.cond, !dbg !2982

while.cond:                                       ; preds = %while.body, %if.then68
  %call.pn = phi %union.tree_node* [ %call, %if.then68 ], [ %tem1.0, %while.body ]
  %call45.pn = phi %union.tree_node* [ %call45, %if.then68 ], [ %tem2.0, %while.body ]
  %tem2.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %call45.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2983
  %tem1.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %call.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2983
  %tem2.0 = load %union.tree_node*, %union.tree_node** %tem2.0.in, align 8, !dbg !2983
  %tem1.0 = load %union.tree_node*, %union.tree_node** %tem1.0.in, align 8, !dbg !2983
  call void @llvm.dbg.value(metadata %union.tree_node* %tem2.0, metadata !2953, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata %union.tree_node* %tem1.0, metadata !2948, metadata !DIExpression()), !dbg !2983
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %tem1.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2984
  %bf.load74 = load i64, i64* %18, align 8, !dbg !2984
  %bf.cast7612 = and i64 %bf.load74, 65535, !dbg !2985
  %cmp77 = icmp eq i64 %bf.cast7612, 15, !dbg !2985
  br i1 %cmp77, label %land.rhs, label %while.cond.while.end_crit_edge, !dbg !2986

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  %tem2.0.lcssa = phi %union.tree_node* [ %tem2.0, %while.cond ], !dbg !2983
  %tem1.0.lcssa = phi %union.tree_node* [ %tem1.0, %while.cond ], !dbg !2983
  %bf.load74.lcssa = phi i64 [ %bf.load74, %while.cond ], !dbg !2984
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %tem2.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2987
  %bf.load92.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2989
  br label %while.end, !dbg !2986

land.rhs:                                         ; preds = %while.cond
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %tem2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2990
  %bf.load79 = load i64, i64* %19, align 8, !dbg !2990
  %bf.cast8113 = and i64 %bf.load79, 65535, !dbg !2991
  %cmp82 = icmp eq i64 %bf.cast8113, 15, !dbg !2991
  br i1 %cmp82, label %while.body, label %while.end.loopexit, !dbg !2982

while.body:                                       ; preds = %land.rhs
  br label %while.cond, !dbg !2982, !llvm.loop !2992

while.end.loopexit:                               ; preds = %land.rhs
  %bf.load79.lcssa = phi i64 [ %bf.load79, %land.rhs ], !dbg !2990
  %tem2.0.lcssa25 = phi %union.tree_node* [ %tem2.0, %land.rhs ], !dbg !2983
  %tem1.0.lcssa23 = phi %union.tree_node* [ %tem1.0, %land.rhs ], !dbg !2983
  %bf.load74.lcssa21 = phi i64 [ %bf.load74, %land.rhs ], !dbg !2984
  br label %while.end, !dbg !2994

while.end:                                        ; preds = %while.end.loopexit, %while.cond.while.end_crit_edge
  %tem2.026 = phi %union.tree_node* [ %tem2.0.lcssa, %while.cond.while.end_crit_edge ], [ %tem2.0.lcssa25, %while.end.loopexit ]
  %tem1.024 = phi %union.tree_node* [ %tem1.0.lcssa, %while.cond.while.end_crit_edge ], [ %tem1.0.lcssa23, %while.end.loopexit ]
  %bf.load7422 = phi i64 [ %bf.load74.lcssa, %while.cond.while.end_crit_edge ], [ %bf.load74.lcssa21, %while.end.loopexit ]
  %bf.load92 = phi i64 [ %bf.load92.pre, %while.cond.while.end_crit_edge ], [ %bf.load79.lcssa, %while.end.loopexit ], !dbg !2989
  %20 = xor i64 %bf.load7422, %bf.load92, !dbg !2994
  %21 = and i64 %20, 65535, !dbg !2994
  %cmp95 = icmp eq i64 %21, 0, !dbg !2994
  br i1 %cmp95, label %if.end97, label %cleanup, !dbg !2995

if.end97:                                         ; preds = %while.end
  %call98 = tail call %union.tree_node* @gimple_register_type(%union.tree_node* %tem1.024) #6, !dbg !2996
  %call99 = tail call %union.tree_node* @gimple_register_type(%union.tree_node* %tem2.026) #6, !dbg !2998
  %cmp100 = icmp eq %union.tree_node* %call98, %call99, !dbg !2999
  br label %cleanup, !dbg !3000

cleanup:                                          ; preds = %while.end, %if.end97
  %cleanup.dest.slot.0 = phi i1 [ false, %while.end ], [ %cmp100, %if.end97 ]
  br i1 %cleanup.dest.slot.0, label %if.end105, label %cleanup125

if.end105:                                        ; preds = %if.end37, %if.end62, %cleanup
  %bf.load108 = load i64, i64* %3, align 8, !dbg !3001
  %bf.cast1119 = and i64 %bf.load108, 4398046511104, !dbg !3001
  %tobool = icmp eq i64 %bf.cast1119, 0, !dbg !3001
  br i1 %tobool, label %if.end124, label %land.lhs.true, !dbg !3003

land.lhs.true:                                    ; preds = %if.end105
  %bf.load114 = load i64, i64* %2, align 8, !dbg !3004
  %bf.cast11710 = and i64 %bf.load114, 4398046511104, !dbg !3004
  %tobool118 = icmp eq i64 %bf.cast11710, 0, !dbg !3004
  br i1 %tobool118, label %if.end124, label %land.lhs.true119, !dbg !3005

land.lhs.true119:                                 ; preds = %land.lhs.true
  %align = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3006
  %22 = load i32, i32* %align, align 8, !dbg !3006
  %align121 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3007
  %23 = load i32, i32* %align121, align 8, !dbg !3007
  %cmp122 = icmp ult i32 %22, %23, !dbg !3008
  br i1 %cmp122, label %cleanup125, label %if.end124, !dbg !3009

if.end124:                                        ; preds = %land.lhs.true, %if.end105, %land.lhs.true119
  br label %cleanup125, !dbg !3010

cleanup125:                                       ; preds = %if.end51, %if.then47, %land.lhs.true119, %cleanup, %if.end124, %if.then
  %retval.1 = phi i8 [ 1, %if.then ], [ 0, %cleanup ], [ 1, %if.end124 ], [ 0, %if.then47 ], [ 0, %if.end51 ], [ 0, %land.lhs.true119 ], !dbg !2954
  ret i8 %retval.1, !dbg !3011
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3012 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3018, metadata !DIExpression()), !dbg !3019
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3020
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3020
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3020
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3020

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3020
  br label %cond.end, !dbg !3020

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3020
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !3020
  ret %union.tree_node** %call1, !dbg !3020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3027, metadata !DIExpression()), !dbg !3028
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3029
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3029

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3029
  %0 = load i32, i32* %num, align 8, !dbg !3029
  br label %cond.end, !dbg !3029

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3029
  ret i32 %cond, !dbg !3029
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node** %ptr) unnamed_addr #0 !dbg !3030 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata %union.tree_node** %ptr, metadata !3036, metadata !DIExpression()), !dbg !3037
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3038
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3038

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3038
  %0 = load i32, i32* %num, align 8, !dbg !3038
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3038
  br i1 %cmp, label %if.then, label %if.else, !dbg !3040

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3041
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3041
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3041
  br label %return, !dbg !3041

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3043

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ null, %if.else ], [ %1, %if.then ], !dbg !3045
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3045
  store %union.tree_node* %storemerge, %union.tree_node** %ptr, align 8, !dbg !3045
  ret i32 %retval.0, !dbg !3040
}

declare dso_local zeroext i8 @warning_at(i32, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !3046 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3050, metadata !DIExpression()), !dbg !3051
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3052
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3052
  br i1 %tobool, label %if.end, label %if.then, !dbg !3054

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !3054
  tail call void @free(i8* nonnull %1) #6, !dbg !3052
  br label %if.end, !dbg !3052

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3054
  ret void, !dbg !3054
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3055 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 1, metadata !3060, metadata !DIExpression()), !dbg !3062
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3063
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3063
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3063

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3063
  br label %cond.end, !dbg !3063

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3063
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3063
  %tobool1 = icmp eq i32 %call, 0, !dbg !3063
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3061, metadata !DIExpression()), !dbg !3062
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3063

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3064
  %2 = load i8*, i8** %1, align 8, !dbg !3064
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3064
  store i8* %call3, i8** %1, align 8, !dbg !3064
  br label %if.end, !dbg !3064

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3063
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @cgraph_remove_same_body_alias(%struct.cgraph_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_cgraph_replace_node(%struct.cgraph_node* %node, %struct.cgraph_node* %prevailing_node) unnamed_addr #4 !dbg !3066 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3070, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %prevailing_node, metadata !3071, metadata !DIExpression()), !dbg !3082
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3083
  %bf.load = load i16, i16* %needed, align 4, !dbg !3083
  %bf.clear = and i16 %bf.load, 1, !dbg !3083
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !3085
  br i1 %tobool, label %if.end, label %if.then, !dbg !3086

if.then:                                          ; preds = %entry
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %prevailing_node) #6, !dbg !3087
  %bf.load1.pre = load i16, i16* %needed, align 4, !dbg !3088
  br label %if.end, !dbg !3087

if.end:                                           ; preds = %entry, %if.then
  %bf.load1 = phi i16 [ %bf.load, %entry ], [ %bf.load1.pre, %if.then ], !dbg !3088
  %bf.clear2 = and i16 %bf.load1, 8, !dbg !3088
  %tobool4 = icmp eq i16 %bf.clear2, 0, !dbg !3090
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3091

if.then5:                                         ; preds = %if.end
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %prevailing_node) #6, !dbg !3092
  %bf.load7.pre = load i16, i16* %needed, align 4, !dbg !3093
  br label %if.end6, !dbg !3092

if.end6:                                          ; preds = %if.end, %if.then5
  %bf.load7 = phi i16 [ %bf.load1, %if.end ], [ %bf.load7.pre, %if.then5 ], !dbg !3093
  %bf.clear9 = and i16 %bf.load7, 2, !dbg !3093
  %tobool11 = icmp eq i16 %bf.clear9, 0, !dbg !3095
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !3096

if.then12:                                        ; preds = %if.end6
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %prevailing_node, i64 0, i32 19, i32 2, !dbg !3097
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3097
  %tobool13 = icmp eq %struct.cgraph_node* %0, null, !dbg !3097
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !3097

cond.true:                                        ; preds = %if.then12
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3097
  br label %cond.end, !dbg !3097

cond.end:                                         ; preds = %if.then12, %cond.true
  tail call void @cgraph_mark_address_taken_node(%struct.cgraph_node* %prevailing_node) #6, !dbg !3099
  br label %if.end14, !dbg !3100

if.end14:                                         ; preds = %if.end6, %cond.end
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !3101
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %1, metadata !3072, metadata !DIExpression()), !dbg !3082
  br label %for.cond, !dbg !3103

for.cond:                                         ; preds = %for.body, %if.end14
  %e.0 = phi %struct.cgraph_edge* [ %1, %if.end14 ], [ %2, %for.body ], !dbg !3104
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3072, metadata !DIExpression()), !dbg !3082
  %tobool15 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3105
  br i1 %tobool15, label %for.end, label %for.body, !dbg !3105

for.body:                                         ; preds = %for.cond
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !3106
  %2 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !3106
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %2, metadata !3073, metadata !DIExpression()), !dbg !3082
  tail call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* nonnull %e.0, %struct.cgraph_node* %prevailing_node) #6, !dbg !3109
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %2, metadata !3072, metadata !DIExpression()), !dbg !3082
  br label %for.cond, !dbg !3110, !llvm.loop !3111

for.end:                                          ; preds = %for.cond
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3113
  %3 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %3, metadata !3072, metadata !DIExpression()), !dbg !3082
  br label %for.cond16, !dbg !3115

for.cond16:                                       ; preds = %for.body18, %for.end
  %e.1 = phi %struct.cgraph_edge* [ %3, %for.end ], [ %4, %for.body18 ], !dbg !3116
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.1, metadata !3072, metadata !DIExpression()), !dbg !3082
  %tobool17 = icmp eq %struct.cgraph_edge* %e.1, null, !dbg !3117
  br i1 %tobool17, label %for.end20, label %for.body18, !dbg !3117

for.body18:                                       ; preds = %for.cond16
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 6, !dbg !3118
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee, align 8, !dbg !3118
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %4, metadata !3073, metadata !DIExpression()), !dbg !3082
  tail call void @cgraph_remove_edge(%struct.cgraph_edge* nonnull %e.1) #6, !dbg !3121
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %4, metadata !3072, metadata !DIExpression()), !dbg !3082
  br label %for.cond16, !dbg !3122, !llvm.loop !3123

for.end20:                                        ; preds = %for.cond16
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !3125
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !3125
  %tobool21 = icmp eq %struct.cgraph_node* %5, null, !dbg !3126
  br i1 %tobool21, label %if.end53, label %if.then22, !dbg !3127

if.then22:                                        ; preds = %for.end20
  br label %for.cond24, !dbg !3128

for.cond24:                                       ; preds = %for.inc50, %if.then22
  %alias.0 = phi %struct.cgraph_node* [ %5, %if.then22 ], [ %alias.0.pre, %for.inc50 ], !dbg !3129
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !3074, metadata !DIExpression()), !dbg !3130
  %tobool25 = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !3131
  br i1 %tobool25, label %if.end53.loopexit, label %for.body26, !dbg !3131

for.body26:                                       ; preds = %for.cond24
  %6 = bitcast %struct.cgraph_node* %alias.0 to i64**, !dbg !3132
  %7 = load i64*, i64** %6, align 8, !dbg !3132
  %bf.load27 = load i64, i64* %7, align 8, !dbg !3132
  %bf.cast29 = and i64 %bf.load27, 65535, !dbg !3132
  %arrayidx30 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast29, i64 13, !dbg !3132
  %8 = load i8, i8* %arrayidx30, align 1, !dbg !3132
  %tobool31 = icmp eq i8 %8, 0, !dbg !3132
  %9 = bitcast i64* %7 to %union.tree_node*, !dbg !3132
  br i1 %tobool31, label %for.inc50, label %land.lhs.true, !dbg !3132

land.lhs.true:                                    ; preds = %for.body26
  %assembler_name = getelementptr inbounds i64, i64* %7, i64 15, !dbg !3132
  %10 = bitcast i64* %assembler_name to %union.tree_node**, !dbg !3132
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !3132
  %cmp = icmp eq %union.tree_node* %11, null, !dbg !3132
  br i1 %cmp, label %for.inc50, label %if.then34, !dbg !3133

if.then34:                                        ; preds = %land.lhs.true
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %9) #6, !dbg !3134
  %call36 = tail call fastcc %struct.lto_symtab_entry_def* @lto_symtab_get(%union.tree_node* %call) #7, !dbg !3135
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %call36, metadata !3077, metadata !DIExpression()), !dbg !3136
  br label %for.cond37, !dbg !3137

for.cond37:                                       ; preds = %for.inc46, %if.then34
  %se.0 = phi %struct.lto_symtab_entry_def* [ %call36, %if.then34 ], [ %13, %for.inc46 ], !dbg !3136
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %se.0, metadata !3077, metadata !DIExpression()), !dbg !3136
  %tobool38 = icmp eq %struct.lto_symtab_entry_def* %se.0, null, !dbg !3138
  br i1 %tobool38, label %for.inc50.loopexit, label %for.body39, !dbg !3138

for.body39:                                       ; preds = %for.cond37
  %node40 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %se.0, i64 0, i32 2, !dbg !3140
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %node40, align 8, !dbg !3140
  %cmp41 = icmp eq %struct.cgraph_node* %12, %node, !dbg !3143
  br i1 %cmp41, label %if.then43, label %for.inc46, !dbg !3144

if.then43:                                        ; preds = %for.body39
  %node40.lcssa = phi %struct.cgraph_node** [ %node40, %for.body39 ], !dbg !3140
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %se.0, metadata !3077, metadata !DIExpression()), !dbg !3136
  store %struct.cgraph_node* null, %struct.cgraph_node** %node40.lcssa, align 8, !dbg !3145
  br label %for.inc50, !dbg !3147

for.inc46:                                        ; preds = %for.body39
  %next47 = getelementptr inbounds %struct.lto_symtab_entry_def, %struct.lto_symtab_entry_def* %se.0, i64 0, i32 5, !dbg !3148
  %13 = load %struct.lto_symtab_entry_def*, %struct.lto_symtab_entry_def** %next47, align 8, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.lto_symtab_entry_def* %13, metadata !3077, metadata !DIExpression()), !dbg !3136
  br label %for.cond37, !dbg !3149, !llvm.loop !3150

for.inc50.loopexit:                               ; preds = %for.cond37
  br label %for.inc50, !dbg !3152

for.inc50:                                        ; preds = %for.inc50.loopexit, %land.lhs.true, %for.body26, %if.then43
  %next51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !3152
  %alias.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next51, align 8, !dbg !3129
  br label %for.cond24, !dbg !3153, !llvm.loop !3154

if.end53.loopexit:                                ; preds = %for.cond24
  br label %if.end53, !dbg !3156

if.end53:                                         ; preds = %if.end53.loopexit, %for.end20
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node) #6, !dbg !3156
  ret void, !dbg !3157
}

declare dso_local void @cgraph_mark_needed_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_mark_reachable_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_mark_address_taken_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_remove_edge(%struct.cgraph_edge*) local_unnamed_addr #1

declare dso_local void @cgraph_remove_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local i32 @ggc_marked_p(i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1644, !1645, !1646}
!llvm.ident = !{!1647}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lto_symtab_identifiers", scope: !2, file: !3, line: 63, type: !864, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !284, globals: !1611, nameTableKind: None)
!3 = !DIFile(filename: "lto-symtab.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !261}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!9 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !202, line: 363, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !202, line: 355, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !213, line: 474, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!219 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ld_plugin_symbol_resolution", file: !250, line: 123, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/plugin-api.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260}
!252 = !DIEnumerator(name: "LDPR_UNKNOWN", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "LDPR_UNDEF", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "LDPR_PREVAILING_DEF", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "LDPR_PREVAILING_DEF_IRONLY", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "LDPR_PREEMPTED_REG", value: 4, isUnsigned: true)
!257 = !DIEnumerator(name: "LDPR_PREEMPTED_IR", value: 5, isUnsigned: true)
!258 = !DIEnumerator(name: "LDPR_RESOLVED_IR", value: 6, isUnsigned: true)
!259 = !DIEnumerator(name: "LDPR_RESOLVED_EXEC", value: 7, isUnsigned: true)
!260 = !DIEnumerator(name: "LDPR_RESOLVED_DYN", value: 8, isUnsigned: true)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !262, line: 309, baseType: !7, size: 32, elements: !263)
!262 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!264 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!265 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!270 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!271 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!272 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!273 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!274 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!275 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!276 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!277 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!278 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!279 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!280 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!281 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!282 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!283 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!284 = !{!285, !286, !287, !288, !291, !292, !5, !294, !1351, !1603, !866, !727, !1604, !1079, !7, !1606}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!287 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !295, line: 56, baseType: !296)
!295 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !298)
!298 = !{!299, !332, !338, !351, !358, !365, !370, !379, !385, !398, !410, !448, !456, !484, !492, !493, !498, !507, !513, !518, !522, !526, !991, !1040, !1046, !1052, !1059, !1070, !1095, !1112, !1124, !1146, !1161, !1333}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !297, file: !6, line: 3372, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !300, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !300, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !300, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !300, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !300, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !300, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !300, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !300, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !300, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !300, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !300, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !300, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !300, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !300, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !300, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !300, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !300, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !300, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !300, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !300, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !300, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !300, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !300, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !300, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !300, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !300, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !300, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !300, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !300, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !300, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !297, file: !6, line: 3373, baseType: !333, size: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !333, file: !6, line: 403, baseType: !300, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !333, file: !6, line: 404, baseType: !294, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !6, line: 405, baseType: !294, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !297, file: !6, line: 3374, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !339, file: !6, line: 1385, baseType: !333, size: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !339, file: !6, line: 1386, baseType: !343, size: 128, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !344, line: 58, baseType: !345)
!344 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 54, size: 128, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !345, file: !344, line: 56, baseType: !348, size: 64)
!348 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !345, file: !344, line: 57, baseType: !350, size: 64, offset: 64)
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !297, file: !6, line: 3375, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !352, file: !6, line: 1398, baseType: !333, size: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !352, file: !6, line: 1399, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !297, file: !6, line: 3376, baseType: !359, size: 256)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !359, file: !6, line: 1409, baseType: !333, size: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !359, file: !6, line: 1410, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !297, file: !6, line: 3377, baseType: !366, size: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !366, file: !6, line: 1438, baseType: !333, size: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !366, file: !6, line: 1439, baseType: !294, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !297, file: !6, line: 3378, baseType: !371, size: 256)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !371, file: !6, line: 1419, baseType: !333, size: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !371, file: !6, line: 1420, baseType: !287, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !371, file: !6, line: 1421, baseType: !376, size: 8, offset: 224)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 8, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 1)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !297, file: !6, line: 3379, baseType: !380, size: 320)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !381)
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !380, file: !6, line: 1429, baseType: !333, size: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !380, file: !6, line: 1430, baseType: !294, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !380, file: !6, line: 1431, baseType: !294, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !297, file: !6, line: 3380, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !386, file: !6, line: 1461, baseType: !333, size: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !386, file: !6, line: 1462, baseType: !390, size: 128, offset: 192)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !391, line: 31, size: 128, elements: !392)
!391 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !396, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !390, file: !391, line: 32, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !390, file: !391, line: 33, baseType: !7, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !390, file: !391, line: 34, baseType: !7, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !297, file: !6, line: 3381, baseType: !399, size: 384)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !400)
!400 = !{!401, !402, !407, !408, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !399, file: !6, line: 2508, baseType: !333, size: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !399, file: !6, line: 2509, baseType: !403, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !404, line: 58, baseType: !405)
!404 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !406, line: 44, baseType: !7)
!406 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !399, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !6, line: 2511, baseType: !294, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !399, file: !6, line: 2512, baseType: !294, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !297, file: !6, line: 3382, baseType: !411, size: 896)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !411, file: !6, line: 2653, baseType: !399, size: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !6, line: 2654, baseType: !294, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !411, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !411, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !411, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !411, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !411, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !411, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !411, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !411, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !411, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !411, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !411, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !411, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !411, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !411, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !411, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !411, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !411, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !411, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !411, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !411, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !411, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !411, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !411, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !411, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !411, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !411, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !411, file: !6, line: 2705, baseType: !294, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !411, file: !6, line: 2706, baseType: !294, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !411, file: !6, line: 2707, baseType: !294, size: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !411, file: !6, line: 2708, baseType: !294, size: 64, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !411, file: !6, line: 2711, baseType: !446, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !297, file: !6, line: 3383, baseType: !449, size: 960)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !449, file: !6, line: 2757, baseType: !411, size: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !449, file: !6, line: 2758, baseType: !453, size: 64, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !295, line: 50, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !295, line: 49, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !297, file: !6, line: 3384, baseType: !457, size: 1472)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !458)
!458 = !{!459, !480, !481, !482, !483}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !457, file: !6, line: 3115, baseType: !460, size: 1216)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !460, file: !6, line: 2985, baseType: !449, size: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !460, file: !6, line: 2986, baseType: !294, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !460, file: !6, line: 2987, baseType: !294, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !460, file: !6, line: 2988, baseType: !294, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !460, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !460, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !460, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !460, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !460, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !460, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !460, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !460, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !460, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !460, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !460, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !460, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !460, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !460, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !457, file: !6, line: 3117, baseType: !294, size: 64, offset: 1216)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !457, file: !6, line: 3119, baseType: !294, size: 64, offset: 1280)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !457, file: !6, line: 3121, baseType: !294, size: 64, offset: 1344)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !457, file: !6, line: 3123, baseType: !294, size: 64, offset: 1408)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !297, file: !6, line: 3385, baseType: !485, size: 1088)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !486)
!486 = !{!487, !488, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !485, file: !6, line: 2875, baseType: !449, size: 960)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !485, file: !6, line: 2876, baseType: !453, size: 64, offset: 960)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !485, file: !6, line: 2877, baseType: !490, size: 64, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !297, file: !6, line: 3386, baseType: !460, size: 1216)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !297, file: !6, line: 3387, baseType: !494, size: 1280)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !494, file: !6, line: 3094, baseType: !460, size: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !494, file: !6, line: 3095, baseType: !490, size: 64, offset: 1216)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !297, file: !6, line: 3388, baseType: !499, size: 1216)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !499, file: !6, line: 2825, baseType: !411, size: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !499, file: !6, line: 2827, baseType: !294, size: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !499, file: !6, line: 2828, baseType: !294, size: 64, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !499, file: !6, line: 2829, baseType: !294, size: 64, offset: 1024)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !499, file: !6, line: 2830, baseType: !294, size: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !499, file: !6, line: 2831, baseType: !294, size: 64, offset: 1152)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !297, file: !6, line: 3389, baseType: !508, size: 1024)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !508, file: !6, line: 2851, baseType: !449, size: 960)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !508, file: !6, line: 2852, baseType: !287, size: 32, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !508, file: !6, line: 2853, baseType: !287, size: 32, offset: 992)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !297, file: !6, line: 3390, baseType: !514, size: 1024)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !6, line: 2858, baseType: !449, size: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !514, file: !6, line: 2859, baseType: !490, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !297, file: !6, line: 3391, baseType: !519, size: 960)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !519, file: !6, line: 2863, baseType: !449, size: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !297, file: !6, line: 3392, baseType: !523, size: 1472)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !523, file: !6, line: 3305, baseType: !457, size: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !297, file: !6, line: 3393, baseType: !527, size: 1792)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !528)
!528 = !{!529, !530, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !527, file: !6, line: 3249, baseType: !457, size: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !527, file: !6, line: 3251, baseType: !531, size: 64, offset: 1472)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !533, line: 463, size: 1152, elements: !534)
!533 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!534 = !{!535, !538, !856, !857, !860, !863, !913, !914, !915, !916, !917, !943, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !532, file: !533, line: 464, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !533, line: 464, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !532, file: !533, line: 467, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !541)
!541 = !{!542, !831, !832, !845, !846, !847, !848, !849, !850, !852, !854, !855}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !540, file: !202, line: 377, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !295, line: 111, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !546)
!546 = !{!547, !794, !795, !796, !799, !805, !806, !807, !825, !826, !827, !828, !829, !830}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !545, file: !202, line: 219, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !550, file: !202, line: 151, baseType: !553, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !554, file: !202, line: 150, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !554, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !554, file: !202, line: 150, baseType: !559, size: 64, offset: 64)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 64, elements: !377)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !295, line: 108, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !563)
!563 = !{!564, !565, !566, !786, !787, !788, !789, !790, !791, !792}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !562, file: !202, line: 124, baseType: !544, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !562, file: !202, line: 125, baseType: !544, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !562, file: !202, line: 131, baseType: !567, size: 64, offset: 128)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !568)
!568 = !{!569, !785}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !567, file: !202, line: 129, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !295, line: 66, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !573, line: 143, size: 192, elements: !574)
!573 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!574 = !{!575, !783, !784}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !572, file: !573, line: 145, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !295, line: 69, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !573, line: 136, size: 192, elements: !579)
!579 = !{!580, !781, !782}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !578, file: !573, line: 137, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !295, line: 58, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !573, line: 737, size: 768, elements: !584)
!584 = !{!585, !602, !636, !642, !647, !652, !659, !665, !671, !676, !690, !695, !701, !706, !716, !721, !739, !746, !753, !759, !764, !770, !776}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !583, file: !573, line: 738, baseType: !586, size: 256)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !573, line: 271, size: 256, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !586, file: !573, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !586, file: !573, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !586, file: !573, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !586, file: !573, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !586, file: !573, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !586, file: !573, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !586, file: !573, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !586, file: !573, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !586, file: !573, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !586, file: !573, line: 312, baseType: !7, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !586, file: !573, line: 316, baseType: !403, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !586, file: !573, line: 319, baseType: !7, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !586, file: !573, line: 323, baseType: !544, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !586, file: !573, line: 327, baseType: !294, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !583, file: !573, line: 739, baseType: !603, size: 448)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !573, line: 350, size: 448, elements: !604)
!604 = !{!605, !634}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !603, file: !573, line: 353, baseType: !606, size: 384)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !573, line: 333, size: 384, elements: !607)
!607 = !{!608, !609, !617}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !606, file: !573, line: 336, baseType: !586, size: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !606, file: !573, line: 343, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !612, line: 37, size: 128, elements: !613)
!612 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !612, line: 39, baseType: !610, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !611, file: !612, line: 40, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !606, file: !573, line: 344, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !612, line: 45, size: 320, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !612, line: 47, baseType: !618, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !619, file: !612, line: 48, baseType: !623, size: 256, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !624)
!624 = !{!625, !627, !628, !633}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !623, file: !6, line: 1884, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !6, line: 1885, baseType: !626, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !623, file: !6, line: 1891, baseType: !629, size: 64, offset: 128)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !623, file: !6, line: 1891, size: 64, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !629, file: !6, line: 1891, baseType: !581, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !629, file: !6, line: 1891, baseType: !294, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !623, file: !6, line: 1892, baseType: !616, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !603, file: !573, line: 359, baseType: !635, size: 64, offset: 384)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 64, elements: !377)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !583, file: !573, line: 740, baseType: !637, size: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !573, line: 365, size: 512, elements: !638)
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !637, file: !573, line: 368, baseType: !606, size: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !637, file: !573, line: 373, baseType: !294, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !637, file: !573, line: 374, baseType: !294, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !583, file: !573, line: 741, baseType: !643, size: 576)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !573, line: 380, size: 576, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !643, file: !573, line: 383, baseType: !637, size: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !643, file: !573, line: 389, baseType: !635, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !583, file: !573, line: 742, baseType: !648, size: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !573, line: 395, size: 320, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !648, file: !573, line: 397, baseType: !586, size: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !648, file: !573, line: 400, baseType: !570, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !583, file: !573, line: 743, baseType: !653, size: 448)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !573, line: 406, size: 448, elements: !654)
!654 = !{!655, !656, !657, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !653, file: !573, line: 408, baseType: !586, size: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !653, file: !573, line: 412, baseType: !294, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !653, file: !573, line: 420, baseType: !294, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !653, file: !573, line: 423, baseType: !570, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !583, file: !573, line: 744, baseType: !660, size: 384)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !573, line: 429, size: 384, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !660, file: !573, line: 431, baseType: !586, size: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !660, file: !573, line: 434, baseType: !294, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !660, file: !573, line: 437, baseType: !570, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !583, file: !573, line: 745, baseType: !666, size: 384)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !573, line: 443, size: 384, elements: !667)
!667 = !{!668, !669, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !666, file: !573, line: 445, baseType: !586, size: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !666, file: !573, line: 449, baseType: !294, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !666, file: !573, line: 453, baseType: !570, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !583, file: !573, line: 746, baseType: !672, size: 320)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !573, line: 459, size: 320, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !672, file: !573, line: 461, baseType: !586, size: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !672, file: !573, line: 464, baseType: !294, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !583, file: !573, line: 747, baseType: !677, size: 768)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !573, line: 469, size: 768, elements: !678)
!678 = !{!679, !680, !681, !682, !683}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !677, file: !573, line: 471, baseType: !586, size: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !677, file: !573, line: 474, baseType: !7, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !677, file: !573, line: 475, baseType: !7, size: 32, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !677, file: !573, line: 478, baseType: !294, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !677, file: !573, line: 481, baseType: !684, size: 384, offset: 384)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 384, elements: !377)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !686)
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !685, file: !6, line: 1920, baseType: !623, size: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !685, file: !6, line: 1921, baseType: !294, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !685, file: !6, line: 1922, baseType: !403, size: 32, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !583, file: !573, line: 748, baseType: !691, size: 320)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !573, line: 487, size: 320, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !691, file: !573, line: 490, baseType: !586, size: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !691, file: !573, line: 494, baseType: !287, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !583, file: !573, line: 749, baseType: !696, size: 384)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !573, line: 500, size: 384, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !696, file: !573, line: 502, baseType: !586, size: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !696, file: !573, line: 506, baseType: !570, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !696, file: !573, line: 510, baseType: !570, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !583, file: !573, line: 750, baseType: !702, size: 320)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !573, line: 529, size: 320, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !702, file: !573, line: 531, baseType: !586, size: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !702, file: !573, line: 540, baseType: !570, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !583, file: !573, line: 751, baseType: !707, size: 704)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !573, line: 546, size: 704, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !707, file: !573, line: 549, baseType: !637, size: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !707, file: !573, line: 553, baseType: !292, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !707, file: !573, line: 557, baseType: !286, size: 8, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !707, file: !573, line: 558, baseType: !286, size: 8, offset: 584)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !707, file: !573, line: 559, baseType: !286, size: 8, offset: 592)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !707, file: !573, line: 560, baseType: !286, size: 8, offset: 600)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !707, file: !573, line: 566, baseType: !635, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !583, file: !573, line: 752, baseType: !717, size: 384)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !573, line: 571, size: 384, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !717, file: !573, line: 573, baseType: !648, size: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !573, line: 577, baseType: !294, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !583, file: !573, line: 753, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !573, line: 600, size: 576, elements: !723)
!723 = !{!724, !725, !726, !729, !738}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !722, file: !573, line: 602, baseType: !648, size: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !722, file: !573, line: 605, baseType: !294, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !722, file: !573, line: 609, baseType: !727, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !728, line: 46, baseType: !348)
!728 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !722, file: !573, line: 612, baseType: !730, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !573, line: 581, size: 320, elements: !732)
!732 = !{!733, !734, !735, !736, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !731, file: !573, line: 583, baseType: !5, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !731, file: !573, line: 586, baseType: !294, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !731, file: !573, line: 589, baseType: !294, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !731, file: !573, line: 592, baseType: !294, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !731, file: !573, line: 595, baseType: !294, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !722, file: !573, line: 616, baseType: !570, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !583, file: !573, line: 754, baseType: !740, size: 512)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !573, line: 622, size: 512, elements: !741)
!741 = !{!742, !743, !744, !745}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !740, file: !573, line: 624, baseType: !648, size: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !740, file: !573, line: 628, baseType: !294, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !740, file: !573, line: 632, baseType: !294, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !740, file: !573, line: 636, baseType: !294, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !583, file: !573, line: 755, baseType: !747, size: 704)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !573, line: 642, size: 704, elements: !748)
!748 = !{!749, !750, !751, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !747, file: !573, line: 644, baseType: !740, size: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !747, file: !573, line: 648, baseType: !294, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !747, file: !573, line: 652, baseType: !294, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !747, file: !573, line: 653, baseType: !294, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !583, file: !573, line: 756, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !573, line: 663, size: 448, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !754, file: !573, line: 665, baseType: !648, size: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !754, file: !573, line: 668, baseType: !294, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !754, file: !573, line: 673, baseType: !294, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !583, file: !573, line: 757, baseType: !760, size: 384)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !573, line: 694, size: 384, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !760, file: !573, line: 696, baseType: !648, size: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !760, file: !573, line: 699, baseType: !294, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !583, file: !573, line: 758, baseType: !765, size: 384)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !573, line: 681, size: 384, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !765, file: !573, line: 683, baseType: !586, size: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !765, file: !573, line: 686, baseType: !294, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !765, file: !573, line: 689, baseType: !294, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !583, file: !573, line: 759, baseType: !771, size: 384)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !573, line: 707, size: 384, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !771, file: !573, line: 709, baseType: !586, size: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !771, file: !573, line: 712, baseType: !294, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !771, file: !573, line: 712, baseType: !294, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !583, file: !573, line: 760, baseType: !777, size: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !573, line: 718, size: 320, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !777, file: !573, line: 720, baseType: !586, size: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !777, file: !573, line: 723, baseType: !294, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !578, file: !573, line: 138, baseType: !577, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !573, line: 139, baseType: !577, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !572, file: !573, line: 146, baseType: !576, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !572, file: !573, line: 152, baseType: !570, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !567, file: !202, line: 130, baseType: !453, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !562, file: !202, line: 134, baseType: !291, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !562, file: !202, line: 137, baseType: !294, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !562, file: !202, line: 138, baseType: !403, size: 32, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !562, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !202, line: 144, baseType: !287, size: 32, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !562, file: !202, line: 145, baseType: !287, size: 32, offset: 416)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !202, line: 146, baseType: !793, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !350)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !545, file: !202, line: 220, baseType: !548, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !545, file: !202, line: 223, baseType: !291, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !545, file: !202, line: 226, baseType: !797, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !545, file: !202, line: 229, baseType: !800, size: 128, offset: 256)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 128, elements: !803)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!803 = !{!804}
!804 = !DISubrange(count: 2)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !545, file: !202, line: 232, baseType: !544, size: 64, offset: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !545, file: !202, line: 233, baseType: !544, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !545, file: !202, line: 238, baseType: !808, size: 64, offset: 512)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !809)
!809 = !{!810, !816}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !808, file: !202, line: 236, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !812, file: !202, line: 275, baseType: !570, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !812, file: !202, line: 278, baseType: !570, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !808, file: !202, line: 237, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !819)
!819 = !{!820, !821, !822, !823, !824}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !818, file: !202, line: 261, baseType: !453, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !818, file: !202, line: 262, baseType: !453, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !818, file: !202, line: 266, baseType: !453, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !818, file: !202, line: 267, baseType: !453, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !818, file: !202, line: 270, baseType: !287, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !545, file: !202, line: 241, baseType: !793, size: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !545, file: !202, line: 244, baseType: !287, size: 32, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !545, file: !202, line: 247, baseType: !287, size: 32, offset: 672)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !545, file: !202, line: 250, baseType: !287, size: 32, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !545, file: !202, line: 253, baseType: !287, size: 32, offset: 736)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !202, line: 256, baseType: !287, size: 32, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !540, file: !202, line: 378, baseType: !543, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !540, file: !202, line: 381, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !835, file: !202, line: 282, baseType: !838, size: 128)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !839, file: !202, line: 281, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !839, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !839, file: !202, line: 281, baseType: !844, size: 64, offset: 64)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 64, elements: !377)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !540, file: !202, line: 384, baseType: !287, size: 32, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !540, file: !202, line: 387, baseType: !287, size: 32, offset: 224)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !540, file: !202, line: 390, baseType: !287, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !540, file: !202, line: 394, baseType: !833, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !540, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !540, file: !202, line: 399, baseType: !851, size: 64, offset: 416)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !803)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !540, file: !202, line: 402, baseType: !853, size: 64, offset: 480)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !803)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !540, file: !202, line: 406, baseType: !287, size: 32, offset: 544)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !540, file: !202, line: 409, baseType: !287, size: 32, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !532, file: !533, line: 470, baseType: !571, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !532, file: !533, line: 473, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !533, line: 166, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !532, file: !533, line: 476, baseType: !861, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !533, line: 476, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !532, file: !533, line: 479, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !865, line: 144, baseType: !866)
!865 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !865, line: 100, size: 896, elements: !868)
!868 = !{!869, !877, !882, !887, !889, !890, !891, !892, !893, !894, !899, !901, !902, !907, !912}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !867, file: !865, line: 102, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !865, line: 52, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !865, line: 47, baseType: !7)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !867, file: !865, line: 105, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !865, line: 59, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!287, !875, !875}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !867, file: !865, line: 108, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !865, line: 63, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !291}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !867, file: !865, line: 111, baseType: !888, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !867, file: !865, line: 114, baseType: !727, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !867, file: !865, line: 117, baseType: !727, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !867, file: !865, line: 120, baseType: !727, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !867, file: !865, line: 124, baseType: !7, size: 32, offset: 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !867, file: !865, line: 128, baseType: !7, size: 32, offset: 480)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !867, file: !865, line: 131, baseType: !895, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !865, line: 75, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!291, !727, !727}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !867, file: !865, line: 132, baseType: !900, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !865, line: 78, baseType: !884)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !867, file: !865, line: 135, baseType: !291, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !867, file: !865, line: 136, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !865, line: 82, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!291, !291, !727, !727}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !867, file: !865, line: 137, baseType: !908, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !865, line: 83, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !291, !291}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !867, file: !865, line: 141, baseType: !7, size: 32, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !532, file: !533, line: 484, baseType: !294, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !532, file: !533, line: 488, baseType: !294, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !532, file: !533, line: 493, baseType: !294, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !532, file: !533, line: 496, baseType: !294, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !532, file: !533, line: 501, baseType: !918, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !920)
!920 = !{!921, !924, !925, !926, !927, !931, !932, !937, !938, !939, !940, !941, !942}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !919, file: !213, line: 2356, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !919, file: !213, line: 2357, baseType: !292, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !919, file: !213, line: 2358, baseType: !287, size: 32, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !919, file: !213, line: 2359, baseType: !287, size: 32, offset: 160)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !919, file: !213, line: 2360, baseType: !928, size: 128, offset: 192)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 128, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 4)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !919, file: !213, line: 2364, baseType: !287, size: 32, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !919, file: !213, line: 2367, baseType: !933, size: 128, offset: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !933, file: !213, line: 2351, baseType: !453, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !933, file: !213, line: 2352, baseType: !350, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !919, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !919, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !919, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !919, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !919, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !919, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !532, file: !533, line: 504, baseType: !944, size: 64, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !533, line: 504, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !532, file: !533, line: 507, baseType: !864, size: 64, offset: 768)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !532, file: !533, line: 510, baseType: !287, size: 32, offset: 832)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !532, file: !533, line: 513, baseType: !287, size: 32, offset: 864)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !532, file: !533, line: 516, baseType: !403, size: 32, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !532, file: !533, line: 519, baseType: !403, size: 32, offset: 928)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !532, file: !533, line: 522, baseType: !7, size: 32, offset: 960)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !532, file: !533, line: 523, baseType: !7, size: 32, offset: 992)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !532, file: !533, line: 528, baseType: !292, size: 64, offset: 1024)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !532, file: !533, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !532, file: !533, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !532, file: !533, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !532, file: !533, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !532, file: !533, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !532, file: !533, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !532, file: !533, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !532, file: !533, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !532, file: !533, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !532, file: !533, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !532, file: !533, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !532, file: !533, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !532, file: !533, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !532, file: !533, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !532, file: !533, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !532, file: !533, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !527, file: !6, line: 3254, baseType: !294, size: 64, offset: 1536)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !527, file: !6, line: 3257, baseType: !294, size: 64, offset: 1600)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !527, file: !6, line: 3258, baseType: !294, size: 64, offset: 1664)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !527, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !527, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !527, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !527, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !527, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !527, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !527, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !527, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !527, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !527, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !527, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !527, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !527, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !527, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !527, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !527, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !527, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !527, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !6, line: 3394, baseType: !992, size: 1344)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1019, !1020, !1021, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !992, file: !6, line: 2280, baseType: !333, size: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !992, file: !6, line: 2281, baseType: !294, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !6, line: 2282, baseType: !294, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !992, file: !6, line: 2283, baseType: !294, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !992, file: !6, line: 2284, baseType: !294, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !992, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !992, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !992, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !992, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !992, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !992, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !992, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !992, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !992, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !992, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !992, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !992, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !992, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !992, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !992, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !992, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !992, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !992, file: !6, line: 2306, baseType: !1017, size: 32, offset: 544)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1018, line: 31, baseType: !287)
!1018 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !992, file: !6, line: 2307, baseType: !294, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !992, file: !6, line: 2308, baseType: !294, size: 64, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !992, file: !6, line: 2314, baseType: !1022, size: 64, offset: 704)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1022, file: !6, line: 2310, baseType: !287, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1022, file: !6, line: 2311, baseType: !292, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1022, file: !6, line: 2312, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !992, file: !6, line: 2315, baseType: !294, size: 64, offset: 768)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !992, file: !6, line: 2316, baseType: !294, size: 64, offset: 832)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !992, file: !6, line: 2317, baseType: !294, size: 64, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !992, file: !6, line: 2318, baseType: !294, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !992, file: !6, line: 2319, baseType: !294, size: 64, offset: 1024)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !992, file: !6, line: 2320, baseType: !294, size: 64, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !992, file: !6, line: 2321, baseType: !294, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !992, file: !6, line: 2322, baseType: !294, size: 64, offset: 1216)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !992, file: !6, line: 2324, baseType: !1038, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !297, file: !6, line: 3395, baseType: !1041, size: 320)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1041, file: !6, line: 1470, baseType: !333, size: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1041, file: !6, line: 1471, baseType: !294, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1041, file: !6, line: 1472, baseType: !294, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !297, file: !6, line: 3396, baseType: !1047, size: 320)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !6, line: 1483, baseType: !333, size: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1047, file: !6, line: 1484, baseType: !287, size: 32, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1047, file: !6, line: 1485, baseType: !635, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !297, file: !6, line: 3397, baseType: !1053, size: 384)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1053, file: !6, line: 1830, baseType: !333, size: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1053, file: !6, line: 1831, baseType: !403, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1053, file: !6, line: 1832, baseType: !294, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1053, file: !6, line: 1835, baseType: !635, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !297, file: !6, line: 3398, baseType: !1060, size: 704)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1069}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1060, file: !6, line: 1899, baseType: !333, size: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1060, file: !6, line: 1902, baseType: !294, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1060, file: !6, line: 1905, baseType: !581, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1060, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1060, file: !6, line: 1911, baseType: !1067, size: 64, offset: 384)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1060, file: !6, line: 1914, baseType: !623, size: 256, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !297, file: !6, line: 3399, baseType: !1071, size: 704)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1090, !1091, !1092, !1093, !1094}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !6, line: 2009, baseType: !333, size: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1071, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1071, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1071, file: !6, line: 2014, baseType: !403, size: 32, offset: 224)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1071, file: !6, line: 2016, baseType: !294, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1071, file: !6, line: 2017, baseType: !1079, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1081, file: !6, line: 183, baseType: !1084, size: 128)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1085, file: !6, line: 182, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1085, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1085, file: !6, line: 182, baseType: !635, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1071, file: !6, line: 2019, baseType: !294, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1071, file: !6, line: 2020, baseType: !294, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1071, file: !6, line: 2021, baseType: !294, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1071, file: !6, line: 2022, baseType: !294, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1071, file: !6, line: 2023, baseType: !294, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !297, file: !6, line: 3400, baseType: !1096, size: 832)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !6, line: 2431, baseType: !333, size: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1096, file: !6, line: 2433, baseType: !294, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1096, file: !6, line: 2434, baseType: !294, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1096, file: !6, line: 2435, baseType: !294, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1096, file: !6, line: 2436, baseType: !294, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1096, file: !6, line: 2437, baseType: !1079, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1096, file: !6, line: 2438, baseType: !294, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1096, file: !6, line: 2440, baseType: !294, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1096, file: !6, line: 2441, baseType: !294, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1096, file: !6, line: 2443, baseType: !1108, size: 128, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1109, file: !6, line: 182, baseType: !1084, size: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !297, file: !6, line: 3401, baseType: !1113, size: 320)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1114)
!1114 = !{!1115, !1116, !1123}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1113, file: !6, line: 3329, baseType: !333, size: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1113, file: !6, line: 3330, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1118, file: !6, line: 3322, baseType: !1117, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !6, line: 3323, baseType: !1117, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1118, file: !6, line: 3324, baseType: !294, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1113, file: !6, line: 3331, baseType: !1117, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !297, file: !6, line: 3402, baseType: !1125, size: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1125, file: !6, line: 1541, baseType: !333, size: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1125, file: !6, line: 1542, baseType: !1129, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1131, file: !6, line: 1538, baseType: !1134, size: 192)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1135)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1135, file: !6, line: 1537, baseType: !7, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1135, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1135, file: !6, line: 1537, baseType: !1140, size: 128, offset: 64)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 128, elements: !377)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1142, file: !6, line: 1533, baseType: !294, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1142, file: !6, line: 1534, baseType: !294, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !297, file: !6, line: 3403, baseType: !1147, size: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1158, !1159, !1160}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1147, file: !6, line: 1939, baseType: !333, size: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1147, file: !6, line: 1940, baseType: !403, size: 32, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1147, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1147, file: !6, line: 1946, baseType: !1153, size: 32, offset: 256)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1153, file: !6, line: 1943, baseType: !235, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1153, file: !6, line: 1944, baseType: !242, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1153, file: !6, line: 1945, baseType: !5, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1147, file: !6, line: 1950, baseType: !570, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1147, file: !6, line: 1951, baseType: !570, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1147, file: !6, line: 1953, baseType: !635, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !297, file: !6, line: 3404, baseType: !1162, size: 1664)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1162, file: !6, line: 3338, baseType: !333, size: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1162, file: !6, line: 3341, baseType: !1166, size: 1472, offset: 192)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1167, line: 410, size: 1472, elements: !1168)
!1167 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1166, file: !1167, line: 412, baseType: !287, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1166, file: !1167, line: 413, baseType: !287, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1166, file: !1167, line: 414, baseType: !287, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1166, file: !1167, line: 415, baseType: !287, size: 32, offset: 96)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1166, file: !1167, line: 416, baseType: !287, size: 32, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1166, file: !1167, line: 417, baseType: !287, size: 32, offset: 160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1166, file: !1167, line: 418, baseType: !286, size: 8, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1166, file: !1167, line: 419, baseType: !286, size: 8, offset: 200)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1166, file: !1167, line: 420, baseType: !1178, size: 8, offset: 208)
!1178 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1166, file: !1167, line: 421, baseType: !1178, size: 8, offset: 216)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1166, file: !1167, line: 422, baseType: !1178, size: 8, offset: 224)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1166, file: !1167, line: 423, baseType: !1178, size: 8, offset: 232)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1166, file: !1167, line: 424, baseType: !1178, size: 8, offset: 240)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1166, file: !1167, line: 425, baseType: !1178, size: 8, offset: 248)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1166, file: !1167, line: 426, baseType: !1178, size: 8, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1166, file: !1167, line: 427, baseType: !1178, size: 8, offset: 264)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1166, file: !1167, line: 428, baseType: !1178, size: 8, offset: 272)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1166, file: !1167, line: 429, baseType: !1178, size: 8, offset: 280)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1166, file: !1167, line: 430, baseType: !1178, size: 8, offset: 288)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1166, file: !1167, line: 431, baseType: !1178, size: 8, offset: 296)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1166, file: !1167, line: 432, baseType: !1178, size: 8, offset: 304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1166, file: !1167, line: 433, baseType: !1178, size: 8, offset: 312)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1166, file: !1167, line: 434, baseType: !1178, size: 8, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1166, file: !1167, line: 435, baseType: !1178, size: 8, offset: 328)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1166, file: !1167, line: 436, baseType: !1178, size: 8, offset: 336)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1166, file: !1167, line: 437, baseType: !1178, size: 8, offset: 344)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1166, file: !1167, line: 438, baseType: !1178, size: 8, offset: 352)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1166, file: !1167, line: 439, baseType: !1178, size: 8, offset: 360)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1166, file: !1167, line: 440, baseType: !1178, size: 8, offset: 368)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1166, file: !1167, line: 441, baseType: !1178, size: 8, offset: 376)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1166, file: !1167, line: 442, baseType: !1178, size: 8, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1166, file: !1167, line: 443, baseType: !1178, size: 8, offset: 392)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1166, file: !1167, line: 444, baseType: !1178, size: 8, offset: 400)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1166, file: !1167, line: 445, baseType: !1178, size: 8, offset: 408)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1166, file: !1167, line: 446, baseType: !1178, size: 8, offset: 416)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1166, file: !1167, line: 447, baseType: !1178, size: 8, offset: 424)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1166, file: !1167, line: 448, baseType: !1178, size: 8, offset: 432)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1166, file: !1167, line: 449, baseType: !1178, size: 8, offset: 440)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1166, file: !1167, line: 450, baseType: !1178, size: 8, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1166, file: !1167, line: 451, baseType: !1178, size: 8, offset: 456)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1166, file: !1167, line: 452, baseType: !1178, size: 8, offset: 464)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1166, file: !1167, line: 453, baseType: !1178, size: 8, offset: 472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1166, file: !1167, line: 454, baseType: !1178, size: 8, offset: 480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1166, file: !1167, line: 455, baseType: !1178, size: 8, offset: 488)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1166, file: !1167, line: 456, baseType: !1178, size: 8, offset: 496)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1166, file: !1167, line: 457, baseType: !1178, size: 8, offset: 504)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1166, file: !1167, line: 458, baseType: !1178, size: 8, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1166, file: !1167, line: 459, baseType: !1178, size: 8, offset: 520)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1166, file: !1167, line: 460, baseType: !1178, size: 8, offset: 528)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1166, file: !1167, line: 461, baseType: !1178, size: 8, offset: 536)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1166, file: !1167, line: 462, baseType: !1178, size: 8, offset: 544)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1166, file: !1167, line: 463, baseType: !1178, size: 8, offset: 552)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1166, file: !1167, line: 464, baseType: !1178, size: 8, offset: 560)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1166, file: !1167, line: 465, baseType: !1178, size: 8, offset: 568)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1166, file: !1167, line: 466, baseType: !1178, size: 8, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1166, file: !1167, line: 467, baseType: !1178, size: 8, offset: 584)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1166, file: !1167, line: 468, baseType: !1178, size: 8, offset: 592)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1166, file: !1167, line: 469, baseType: !1178, size: 8, offset: 600)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1166, file: !1167, line: 470, baseType: !1178, size: 8, offset: 608)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1166, file: !1167, line: 471, baseType: !1178, size: 8, offset: 616)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1166, file: !1167, line: 472, baseType: !1178, size: 8, offset: 624)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1166, file: !1167, line: 473, baseType: !1178, size: 8, offset: 632)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1166, file: !1167, line: 474, baseType: !1178, size: 8, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1166, file: !1167, line: 475, baseType: !1178, size: 8, offset: 648)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1166, file: !1167, line: 476, baseType: !1178, size: 8, offset: 656)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1166, file: !1167, line: 477, baseType: !1178, size: 8, offset: 664)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1166, file: !1167, line: 478, baseType: !1178, size: 8, offset: 672)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1166, file: !1167, line: 479, baseType: !1178, size: 8, offset: 680)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1166, file: !1167, line: 480, baseType: !1178, size: 8, offset: 688)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1166, file: !1167, line: 481, baseType: !1178, size: 8, offset: 696)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1166, file: !1167, line: 482, baseType: !1178, size: 8, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1166, file: !1167, line: 483, baseType: !1178, size: 8, offset: 712)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1166, file: !1167, line: 484, baseType: !1178, size: 8, offset: 720)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1166, file: !1167, line: 485, baseType: !1178, size: 8, offset: 728)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1166, file: !1167, line: 486, baseType: !1178, size: 8, offset: 736)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1166, file: !1167, line: 487, baseType: !1178, size: 8, offset: 744)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1166, file: !1167, line: 488, baseType: !1178, size: 8, offset: 752)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1166, file: !1167, line: 489, baseType: !1178, size: 8, offset: 760)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1166, file: !1167, line: 490, baseType: !1178, size: 8, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1166, file: !1167, line: 491, baseType: !1178, size: 8, offset: 776)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1166, file: !1167, line: 492, baseType: !1178, size: 8, offset: 784)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1166, file: !1167, line: 493, baseType: !1178, size: 8, offset: 792)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1166, file: !1167, line: 494, baseType: !1178, size: 8, offset: 800)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1166, file: !1167, line: 495, baseType: !1178, size: 8, offset: 808)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1166, file: !1167, line: 496, baseType: !1178, size: 8, offset: 816)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1166, file: !1167, line: 497, baseType: !1178, size: 8, offset: 824)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1166, file: !1167, line: 498, baseType: !1178, size: 8, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1166, file: !1167, line: 499, baseType: !1178, size: 8, offset: 840)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1166, file: !1167, line: 500, baseType: !1178, size: 8, offset: 848)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1166, file: !1167, line: 501, baseType: !1178, size: 8, offset: 856)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1166, file: !1167, line: 502, baseType: !1178, size: 8, offset: 864)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1166, file: !1167, line: 503, baseType: !1178, size: 8, offset: 872)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1166, file: !1167, line: 504, baseType: !1178, size: 8, offset: 880)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1166, file: !1167, line: 505, baseType: !1178, size: 8, offset: 888)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1166, file: !1167, line: 506, baseType: !1178, size: 8, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1166, file: !1167, line: 507, baseType: !1178, size: 8, offset: 904)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1166, file: !1167, line: 508, baseType: !1178, size: 8, offset: 912)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1166, file: !1167, line: 509, baseType: !1178, size: 8, offset: 920)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1166, file: !1167, line: 510, baseType: !1178, size: 8, offset: 928)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1166, file: !1167, line: 511, baseType: !1178, size: 8, offset: 936)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1166, file: !1167, line: 512, baseType: !1178, size: 8, offset: 944)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1166, file: !1167, line: 513, baseType: !1178, size: 8, offset: 952)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1166, file: !1167, line: 514, baseType: !1178, size: 8, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1166, file: !1167, line: 515, baseType: !1178, size: 8, offset: 968)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1166, file: !1167, line: 516, baseType: !1178, size: 8, offset: 976)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1166, file: !1167, line: 517, baseType: !1178, size: 8, offset: 984)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1166, file: !1167, line: 518, baseType: !1178, size: 8, offset: 992)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1166, file: !1167, line: 519, baseType: !1178, size: 8, offset: 1000)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1166, file: !1167, line: 520, baseType: !1178, size: 8, offset: 1008)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1166, file: !1167, line: 521, baseType: !1178, size: 8, offset: 1016)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1166, file: !1167, line: 522, baseType: !1178, size: 8, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1166, file: !1167, line: 523, baseType: !1178, size: 8, offset: 1032)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1166, file: !1167, line: 524, baseType: !1178, size: 8, offset: 1040)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1166, file: !1167, line: 525, baseType: !1178, size: 8, offset: 1048)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1166, file: !1167, line: 526, baseType: !1178, size: 8, offset: 1056)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1166, file: !1167, line: 527, baseType: !1178, size: 8, offset: 1064)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1166, file: !1167, line: 528, baseType: !1178, size: 8, offset: 1072)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1166, file: !1167, line: 529, baseType: !1178, size: 8, offset: 1080)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1166, file: !1167, line: 530, baseType: !1178, size: 8, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1166, file: !1167, line: 531, baseType: !1178, size: 8, offset: 1096)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1166, file: !1167, line: 532, baseType: !1178, size: 8, offset: 1104)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1166, file: !1167, line: 533, baseType: !1178, size: 8, offset: 1112)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1166, file: !1167, line: 534, baseType: !1178, size: 8, offset: 1120)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1166, file: !1167, line: 535, baseType: !1178, size: 8, offset: 1128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1166, file: !1167, line: 536, baseType: !1178, size: 8, offset: 1136)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1166, file: !1167, line: 537, baseType: !1178, size: 8, offset: 1144)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1166, file: !1167, line: 538, baseType: !1178, size: 8, offset: 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1166, file: !1167, line: 539, baseType: !1178, size: 8, offset: 1160)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1166, file: !1167, line: 540, baseType: !1178, size: 8, offset: 1168)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1166, file: !1167, line: 541, baseType: !1178, size: 8, offset: 1176)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1166, file: !1167, line: 542, baseType: !1178, size: 8, offset: 1184)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1166, file: !1167, line: 543, baseType: !1178, size: 8, offset: 1192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1166, file: !1167, line: 544, baseType: !1178, size: 8, offset: 1200)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1166, file: !1167, line: 545, baseType: !1178, size: 8, offset: 1208)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1166, file: !1167, line: 546, baseType: !1178, size: 8, offset: 1216)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1166, file: !1167, line: 547, baseType: !1178, size: 8, offset: 1224)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1166, file: !1167, line: 548, baseType: !1178, size: 8, offset: 1232)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1166, file: !1167, line: 549, baseType: !1178, size: 8, offset: 1240)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1166, file: !1167, line: 550, baseType: !1178, size: 8, offset: 1248)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1166, file: !1167, line: 551, baseType: !1178, size: 8, offset: 1256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1166, file: !1167, line: 552, baseType: !1178, size: 8, offset: 1264)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1166, file: !1167, line: 553, baseType: !1178, size: 8, offset: 1272)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1166, file: !1167, line: 554, baseType: !1178, size: 8, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1166, file: !1167, line: 555, baseType: !1178, size: 8, offset: 1288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1166, file: !1167, line: 556, baseType: !1178, size: 8, offset: 1296)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1166, file: !1167, line: 557, baseType: !1178, size: 8, offset: 1304)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1166, file: !1167, line: 558, baseType: !1178, size: 8, offset: 1312)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1166, file: !1167, line: 559, baseType: !1178, size: 8, offset: 1320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1166, file: !1167, line: 560, baseType: !1178, size: 8, offset: 1328)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1166, file: !1167, line: 561, baseType: !1178, size: 8, offset: 1336)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1166, file: !1167, line: 562, baseType: !1178, size: 8, offset: 1344)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1166, file: !1167, line: 563, baseType: !1178, size: 8, offset: 1352)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1166, file: !1167, line: 564, baseType: !1178, size: 8, offset: 1360)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1166, file: !1167, line: 565, baseType: !1178, size: 8, offset: 1368)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1166, file: !1167, line: 566, baseType: !1178, size: 8, offset: 1376)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1166, file: !1167, line: 567, baseType: !1178, size: 8, offset: 1384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1166, file: !1167, line: 568, baseType: !1178, size: 8, offset: 1392)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1166, file: !1167, line: 569, baseType: !1178, size: 8, offset: 1400)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1166, file: !1167, line: 570, baseType: !1178, size: 8, offset: 1408)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1166, file: !1167, line: 571, baseType: !1178, size: 8, offset: 1416)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1166, file: !1167, line: 572, baseType: !1178, size: 8, offset: 1424)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1166, file: !1167, line: 573, baseType: !1178, size: 8, offset: 1432)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1166, file: !1167, line: 574, baseType: !1178, size: 8, offset: 1440)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !297, file: !6, line: 3405, baseType: !1334, size: 384)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1334, file: !6, line: 3353, baseType: !333, size: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1334, file: !6, line: 3356, baseType: !1338, size: 192, offset: 192)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1167, line: 578, size: 192, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1338, file: !1167, line: 580, baseType: !287, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1338, file: !1167, line: 581, baseType: !287, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1338, file: !1167, line: 582, baseType: !287, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1338, file: !1167, line: 583, baseType: !287, size: 32, offset: 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1338, file: !1167, line: 584, baseType: !286, size: 8, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1338, file: !1167, line: 585, baseType: !286, size: 8, offset: 136)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1338, file: !1167, line: 586, baseType: !286, size: 8, offset: 144)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1338, file: !1167, line: 587, baseType: !286, size: 8, offset: 152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1338, file: !1167, line: 588, baseType: !286, size: 8, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1338, file: !1167, line: 589, baseType: !286, size: 8, offset: 168)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1338, file: !1167, line: 590, baseType: !286, size: 8, offset: 176)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_symtab_entry_def", file: !3, line: 38, size: 384, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1600, !1601, !1602}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1352, file: !3, line: 41, baseType: !294, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1352, file: !3, line: 43, baseType: !294, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1352, file: !3, line: 46, baseType: !1357, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !262, line: 181, size: 2496, elements: !1359)
!1359 = !{!1360, !1361, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1415, !1481, !1491, !1495, !1577, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1358, file: !262, line: 182, baseType: !294, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !1358, file: !262, line: 183, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !262, line: 314, size: 768, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1376, !1377, !1378, !1379, !1381, !1382, !1383}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1363, file: !262, line: 316, baseType: !793, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1363, file: !262, line: 317, baseType: !1357, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1363, file: !262, line: 318, baseType: !1357, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1363, file: !262, line: 319, baseType: !1362, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1363, file: !262, line: 320, baseType: !1362, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1363, file: !262, line: 321, baseType: !1362, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1363, file: !262, line: 322, baseType: !1362, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1363, file: !262, line: 323, baseType: !581, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1363, file: !262, line: 324, baseType: !291, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1363, file: !262, line: 327, baseType: !1375, size: 32, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !262, line: 312, baseType: !261)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1363, file: !262, line: 330, baseType: !7, size: 32, offset: 608)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1363, file: !262, line: 334, baseType: !287, size: 32, offset: 640)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1363, file: !262, line: 336, baseType: !287, size: 32, offset: 672)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1363, file: !262, line: 338, baseType: !1380, size: 16, offset: 704)
!1380 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1363, file: !262, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1363, file: !262, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1363, file: !262, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !1358, file: !262, line: 184, baseType: !1362, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1358, file: !262, line: 185, baseType: !1357, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1358, file: !262, line: 186, baseType: !1357, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1358, file: !262, line: 188, baseType: !1357, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1358, file: !262, line: 190, baseType: !1357, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !1358, file: !262, line: 192, baseType: !1357, size: 64, offset: 448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1358, file: !262, line: 194, baseType: !1357, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !1358, file: !262, line: 196, baseType: !1357, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !1358, file: !262, line: 197, baseType: !1357, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !1358, file: !262, line: 198, baseType: !1357, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !1358, file: !262, line: 199, baseType: !1357, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !1358, file: !262, line: 202, baseType: !1357, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !1358, file: !262, line: 204, baseType: !1357, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !1358, file: !262, line: 207, baseType: !864, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1358, file: !262, line: 209, baseType: !291, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !1358, file: !262, line: 214, baseType: !1400, size: 64, offset: 1088)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !533, line: 177, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !533, line: 177, size: 128, elements: !1403)
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1402, file: !533, line: 177, baseType: !1405, size: 128)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !533, line: 176, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !533, line: 176, size: 128, elements: !1407)
!1407 = !{!1408, !1409, !1410}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1406, file: !533, line: 176, baseType: !7, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1406, file: !533, line: 176, baseType: !7, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1406, file: !533, line: 176, baseType: !1411, size: 64, offset: 64)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 64, elements: !377)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !533, line: 174, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !533, line: 173, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1358, file: !262, line: 216, baseType: !1416, size: 320, offset: 1152)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !262, line: 88, size: 320, elements: !1417)
!1417 = !{!1418, !1465, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1416, file: !262, line: 90, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !1421, line: 540, size: 512, elements: !1422)
!1421 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1422 = !{!1423, !1436, !1437, !1460, !1461, !1462, !1463, !1464}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !1420, file: !1421, line: 543, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !1421, line: 502, size: 960, elements: !1426)
!1426 = !{!1427, !1435}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !1425, file: !1421, line: 505, baseType: !1428, size: 896)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 896, elements: !1433)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !1421, line: 473, size: 128, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !1429, file: !1421, line: 476, baseType: !616, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1429, file: !1421, line: 479, baseType: !7, size: 32, offset: 64)
!1433 = !{!1434}
!1434 = !DISubrange(count: 7)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !1425, file: !1421, line: 509, baseType: !294, size: 64, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !1420, file: !1421, line: 547, baseType: !1424, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !1420, file: !1421, line: 550, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !1421, line: 470, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !1421, line: 461, size: 128, elements: !1441)
!1441 = !{!1442, !1446}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1440, file: !1421, line: 464, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1445, line: 33, flags: DIFlagFwdDecl)
!1445 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1440, file: !1421, line: 467, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !262, line: 271, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !262, line: 271, size: 128, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1449, file: !262, line: 271, baseType: !1452, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !262, line: 270, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !262, line: 270, size: 128, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1453, file: !262, line: 270, baseType: !7, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1453, file: !262, line: 270, baseType: !7, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1453, file: !262, line: 270, baseType: !1458, size: 64, offset: 64)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 64, elements: !377)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !262, line: 268, baseType: !1357)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !1420, file: !1421, line: 553, baseType: !864, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !1420, file: !1421, line: 556, baseType: !292, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !1420, file: !1421, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !1420, file: !1421, line: 562, baseType: !864, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !1420, file: !1421, line: 565, baseType: !864, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1416, file: !262, line: 92, baseType: !1466, size: 192, offset: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !262, line: 57, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1466, file: !262, line: 60, baseType: !350, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1466, file: !262, line: 63, baseType: !287, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1466, file: !262, line: 65, baseType: !287, size: 32, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1466, file: !262, line: 67, baseType: !287, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1466, file: !262, line: 69, baseType: !287, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1416, file: !262, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1416, file: !262, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1416, file: !262, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1416, file: !262, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1416, file: !262, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1416, file: !262, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1416, file: !262, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1416, file: !262, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1358, file: !262, line: 217, baseType: !1482, size: 320, offset: 1472)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !262, line: 126, size: 320, elements: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1482, file: !262, line: 128, baseType: !350, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1482, file: !262, line: 130, baseType: !350, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1482, file: !262, line: 134, baseType: !1357, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1482, file: !262, line: 137, baseType: !287, size: 32, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1482, file: !262, line: 138, baseType: !287, size: 32, offset: 224)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1482, file: !262, line: 141, baseType: !287, size: 32, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1482, file: !262, line: 144, baseType: !286, size: 8, offset: 288)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1358, file: !262, line: 218, baseType: !1492, size: 32, offset: 1792)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !262, line: 150, size: 32, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !1492, file: !262, line: 151, baseType: !7, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !1358, file: !262, line: 219, baseType: !1496, size: 192, offset: 1856)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !262, line: 171, size: 192, elements: !1497)
!1497 = !{!1498, !1519, !1576}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !1496, file: !262, line: 173, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !262, line: 169, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !262, line: 169, size: 128, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1501, file: !262, line: 169, baseType: !1504, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !262, line: 168, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !262, line: 168, size: 128, elements: !1506)
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1505, file: !262, line: 168, baseType: !7, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1505, file: !262, line: 168, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1505, file: !262, line: 168, baseType: !1510, size: 64, offset: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 64, elements: !377)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !262, line: 167, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !262, line: 156, size: 192, elements: !1514)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !1513, file: !262, line: 159, baseType: !294, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !1513, file: !262, line: 161, baseType: !294, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !1513, file: !262, line: 163, baseType: !286, size: 8, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !1513, file: !262, line: 165, baseType: !286, size: 8, offset: 136)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !1496, file: !262, line: 174, baseType: !1520, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !295, line: 47, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1523, line: 75, size: 256, elements: !1524)
!1523 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1524 = !{!1525, !1537, !1538, !1539}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1522, file: !1523, line: 76, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1523, line: 68, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1523, line: 63, size: 320, elements: !1529)
!1529 = !{!1530, !1532, !1533, !1534}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1528, file: !1523, line: 64, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1528, file: !1523, line: 65, baseType: !1531, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1528, file: !1523, line: 66, baseType: !7, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1528, file: !1523, line: 67, baseType: !1535, size: 128, offset: 192)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 128, elements: !803)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1523, line: 29, baseType: !348)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1522, file: !1523, line: 77, baseType: !1526, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1522, file: !1523, line: 78, baseType: !7, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1522, file: !1523, line: 79, baseType: !1540, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1523, line: 49, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1523, line: 45, size: 832, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1542, file: !1523, line: 46, baseType: !1531, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1542, file: !1523, line: 47, baseType: !1521, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1542, file: !1523, line: 48, baseType: !1547, size: 704, offset: 128)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1548, line: 164, size: 704, elements: !1549)
!1548 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1549 = !{!1550, !1551, !1559, !1560, !1561, !1562, !1563, !1564, !1568, !1572, !1573, !1574, !1575}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1547, file: !1548, line: 166, baseType: !350, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1547, file: !1548, line: 167, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1548, line: 157, size: 192, elements: !1554)
!1554 = !{!1555, !1556, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1553, file: !1548, line: 159, baseType: !289, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1553, file: !1548, line: 160, baseType: !1552, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1553, file: !1548, line: 161, baseType: !1558, size: 32, offset: 128)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 32, elements: !929)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1547, file: !1548, line: 168, baseType: !289, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1547, file: !1548, line: 169, baseType: !289, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1547, file: !1548, line: 170, baseType: !289, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1547, file: !1548, line: 171, baseType: !350, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1547, file: !1548, line: 172, baseType: !287, size: 32, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1547, file: !1548, line: 176, baseType: !1565, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1552, !291, !350}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1547, file: !1548, line: 177, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !291, !1552}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1547, file: !1548, line: 178, baseType: !291, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1547, file: !1548, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1547, file: !1548, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1547, file: !1548, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !1496, file: !262, line: 175, baseType: !1520, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !1358, file: !262, line: 220, baseType: !1578, size: 256, offset: 2048)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !262, line: 74, size: 256, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !1578, file: !262, line: 76, baseType: !350, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !1578, file: !262, line: 77, baseType: !350, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1578, file: !262, line: 78, baseType: !294, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !1578, file: !262, line: 79, baseType: !286, size: 8, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !1578, file: !262, line: 80, baseType: !286, size: 8, offset: 200)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !1578, file: !262, line: 82, baseType: !286, size: 8, offset: 208)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1358, file: !262, line: 223, baseType: !793, size: 64, offset: 2304)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1358, file: !262, line: 225, baseType: !287, size: 32, offset: 2368)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1358, file: !262, line: 227, baseType: !287, size: 32, offset: 2400)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1358, file: !262, line: 231, baseType: !287, size: 32, offset: 2432)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1358, file: !262, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !1358, file: !262, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !1358, file: !262, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !1358, file: !262, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !1358, file: !262, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1358, file: !262, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1358, file: !262, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1358, file: !262, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !1358, file: !262, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !1358, file: !262, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "file_data", scope: !1352, file: !3, line: 48, baseType: !1419, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !1352, file: !3, line: 49, baseType: !249, size: 32, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1352, file: !3, line: 54, baseType: !1351, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_symtab_entry_t", file: !3, line: 56, baseType: !1351)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !6, line: 184, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !6, line: 184, size: 128, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1608, file: !6, line: 184, baseType: !1084, size: 128)
!1611 = !{!1612, !1631, !1642, !0}
!1612 = !DIGlobalVariableExpression(var: !1613, expr: !DIExpression())
!1613 = distinct !DIGlobalVariable(name: "gt_ggc_rc_gt_lto_symtab_h", scope: !2, file: !1614, line: 117, type: !1615, isLocal: false, isDefinition: true)
!1614 = !DIFile(filename: "./gt-lto-symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 768, elements: !803)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_cache_tab", file: !1618, line: 85, size: 384, elements: !1619)
!1618 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1619 = !{!1620, !1622, !1623, !1624, !1626, !1627}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1617, file: !1618, line: 86, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1617, file: !1618, line: 87, baseType: !727, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1617, file: !1618, line: 88, baseType: !727, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1617, file: !1618, line: 89, baseType: !1625, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1618, line: 65, baseType: !884)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1617, file: !1618, line: 90, baseType: !1625, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "marked_p", scope: !1617, file: !1618, line: 91, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!287, !875}
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "gt_pch_rc_gt_lto_symtab_h", scope: !2, file: !1614, line: 129, type: !1633, isLocal: false, isDefinition: true)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 640, elements: !803)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1618, line: 69, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1635, file: !1618, line: 70, baseType: !291, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1635, file: !1618, line: 71, baseType: !727, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1635, file: !1618, line: 72, baseType: !727, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1635, file: !1618, line: 73, baseType: !1625, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1635, file: !1618, line: 74, baseType: !1625, size: 64, offset: 256)
!1642 = !DIGlobalVariableExpression(var: !1643, expr: !DIExpression())
!1643 = distinct !DIGlobalVariable(name: "lto_global_var_decls", scope: !2, file: !3, line: 34, type: !1079, isLocal: false, isDefinition: true)
!1644 = !{i32 2, !"Dwarf Version", i32 4}
!1645 = !{i32 2, !"Debug Info Version", i32 3}
!1646 = !{i32 1, !"wchar_size", i32 4}
!1647 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1648 = distinct !DISubprogram(name: "vprintf", scope: !1649, file: !1649, line: 39, type: !1650, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1649 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!287, !1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1654, file: !3, baseType: !7, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1654, file: !3, baseType: !7, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1654, file: !3, baseType: !291, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1654, file: !3, baseType: !291, size: 64, offset: 128)
!1660 = !{!1661, !1662}
!1661 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1648, file: !1649, line: 39, type: !1652)
!1662 = !DILocalVariable(name: "__arg", arg: 2, scope: !1648, file: !1649, line: 39, type: !1653)
!1663 = !DILocation(line: 0, scope: !1648)
!1664 = !DILocation(line: 41, column: 20, scope: !1648)
!1665 = !DILocation(line: 41, column: 10, scope: !1648)
!1666 = !DILocation(line: 41, column: 3, scope: !1648)
!1667 = distinct !DISubprogram(name: "getchar", scope: !1649, file: !1649, line: 47, type: !1668, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!287}
!1670 = !{}
!1671 = !DILocation(line: 49, column: 16, scope: !1667)
!1672 = !DILocation(line: 49, column: 10, scope: !1667)
!1673 = !DILocation(line: 49, column: 3, scope: !1667)
!1674 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1649, file: !1649, line: 56, type: !1675, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1727)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!287, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1679, line: 7, baseType: !1680)
!1679 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1681, line: 49, size: 1728, elements: !1682)
!1681 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1698, !1700, !1701, !1702, !1705, !1706, !1707, !1708, !1711, !1713, !1716, !1719, !1720, !1721, !1722, !1723}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1680, file: !1681, line: 51, baseType: !287, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1680, file: !1681, line: 54, baseType: !289, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1680, file: !1681, line: 55, baseType: !289, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1680, file: !1681, line: 56, baseType: !289, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1680, file: !1681, line: 57, baseType: !289, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1680, file: !1681, line: 58, baseType: !289, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1680, file: !1681, line: 59, baseType: !289, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1680, file: !1681, line: 60, baseType: !289, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1680, file: !1681, line: 61, baseType: !289, size: 64, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1680, file: !1681, line: 64, baseType: !289, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1680, file: !1681, line: 65, baseType: !289, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1680, file: !1681, line: 66, baseType: !289, size: 64, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1680, file: !1681, line: 68, baseType: !1696, size: 64, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1681, line: 36, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1680, file: !1681, line: 70, baseType: !1699, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1680, file: !1681, line: 72, baseType: !287, size: 32, offset: 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1680, file: !1681, line: 73, baseType: !287, size: 32, offset: 928)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1680, file: !1681, line: 74, baseType: !1703, size: 64, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1704, line: 152, baseType: !350)
!1704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1680, file: !1681, line: 77, baseType: !1380, size: 16, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1680, file: !1681, line: 78, baseType: !1178, size: 8, offset: 1040)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1680, file: !1681, line: 79, baseType: !376, size: 8, offset: 1048)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1680, file: !1681, line: 81, baseType: !1709, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1681, line: 43, baseType: null)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1680, file: !1681, line: 89, baseType: !1712, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1704, line: 153, baseType: !350)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1680, file: !1681, line: 91, baseType: !1714, size: 64, offset: 1216)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1681, line: 37, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1680, file: !1681, line: 92, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1681, line: 38, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1680, file: !1681, line: 93, baseType: !1699, size: 64, offset: 1344)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1680, file: !1681, line: 94, baseType: !291, size: 64, offset: 1408)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1680, file: !1681, line: 95, baseType: !727, size: 64, offset: 1472)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1680, file: !1681, line: 96, baseType: !287, size: 32, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1680, file: !1681, line: 98, baseType: !1724, size: 160, offset: 1568)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 160, elements: !1725)
!1725 = !{!1726}
!1726 = !DISubrange(count: 20)
!1727 = !{!1728}
!1728 = !DILocalVariable(name: "__fp", arg: 1, scope: !1674, file: !1649, line: 56, type: !1677)
!1729 = !DILocation(line: 0, scope: !1674)
!1730 = !DILocation(line: 58, column: 10, scope: !1674)
!1731 = !DILocation(line: 58, column: 3, scope: !1674)
!1732 = distinct !DISubprogram(name: "getc_unlocked", scope: !1649, file: !1649, line: 66, type: !1675, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1733 = !{!1734}
!1734 = !DILocalVariable(name: "__fp", arg: 1, scope: !1732, file: !1649, line: 66, type: !1677)
!1735 = !DILocation(line: 0, scope: !1732)
!1736 = !DILocation(line: 68, column: 10, scope: !1732)
!1737 = !DILocation(line: 68, column: 3, scope: !1732)
!1738 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1649, file: !1649, line: 73, type: !1668, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!1739 = !DILocation(line: 75, column: 10, scope: !1738)
!1740 = !DILocation(line: 75, column: 3, scope: !1738)
!1741 = distinct !DISubprogram(name: "putchar", scope: !1649, file: !1649, line: 82, type: !1742, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!287, !287}
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "__c", arg: 1, scope: !1741, file: !1649, line: 82, type: !287)
!1746 = !DILocation(line: 0, scope: !1741)
!1747 = !DILocation(line: 84, column: 21, scope: !1741)
!1748 = !DILocation(line: 84, column: 10, scope: !1741)
!1749 = !DILocation(line: 84, column: 3, scope: !1741)
!1750 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1649, file: !1649, line: 91, type: !1751, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!287, !287, !1677}
!1753 = !{!1754, !1755}
!1754 = !DILocalVariable(name: "__c", arg: 1, scope: !1750, file: !1649, line: 91, type: !287)
!1755 = !DILocalVariable(name: "__stream", arg: 2, scope: !1750, file: !1649, line: 91, type: !1677)
!1756 = !DILocation(line: 0, scope: !1750)
!1757 = !DILocation(line: 93, column: 10, scope: !1750)
!1758 = !DILocation(line: 93, column: 3, scope: !1750)
!1759 = distinct !DISubprogram(name: "putc_unlocked", scope: !1649, file: !1649, line: 101, type: !1751, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1760)
!1760 = !{!1761, !1762}
!1761 = !DILocalVariable(name: "__c", arg: 1, scope: !1759, file: !1649, line: 101, type: !287)
!1762 = !DILocalVariable(name: "__stream", arg: 2, scope: !1759, file: !1649, line: 101, type: !1677)
!1763 = !DILocation(line: 0, scope: !1759)
!1764 = !DILocation(line: 103, column: 10, scope: !1759)
!1765 = !DILocation(line: 103, column: 3, scope: !1759)
!1766 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1649, file: !1649, line: 108, type: !1742, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "__c", arg: 1, scope: !1766, file: !1649, line: 108, type: !287)
!1769 = !DILocation(line: 0, scope: !1766)
!1770 = !DILocation(line: 110, column: 10, scope: !1766)
!1771 = !DILocation(line: 110, column: 3, scope: !1766)
!1772 = distinct !DISubprogram(name: "getline", scope: !1649, file: !1649, line: 118, type: !1773, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1775, !288, !1776, !1677}
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1704, line: 193, baseType: !350)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1777 = !{!1778, !1779, !1780}
!1778 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1772, file: !1649, line: 118, type: !288)
!1779 = !DILocalVariable(name: "__n", arg: 2, scope: !1772, file: !1649, line: 118, type: !1776)
!1780 = !DILocalVariable(name: "__stream", arg: 3, scope: !1772, file: !1649, line: 118, type: !1677)
!1781 = !DILocation(line: 0, scope: !1772)
!1782 = !DILocation(line: 120, column: 10, scope: !1772)
!1783 = !DILocation(line: 120, column: 3, scope: !1772)
!1784 = distinct !DISubprogram(name: "feof_unlocked", scope: !1649, file: !1649, line: 128, type: !1675, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1785)
!1785 = !{!1786}
!1786 = !DILocalVariable(name: "__stream", arg: 1, scope: !1784, file: !1649, line: 128, type: !1677)
!1787 = !DILocation(line: 0, scope: !1784)
!1788 = !DILocation(line: 130, column: 10, scope: !1784)
!1789 = !DILocation(line: 130, column: 3, scope: !1784)
!1790 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1649, file: !1649, line: 135, type: !1675, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1791)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "__stream", arg: 1, scope: !1790, file: !1649, line: 135, type: !1677)
!1793 = !DILocation(line: 0, scope: !1790)
!1794 = !DILocation(line: 137, column: 10, scope: !1790)
!1795 = !DILocation(line: 137, column: 3, scope: !1790)
!1796 = distinct !DISubprogram(name: "tolower", scope: !1797, file: !1797, line: 207, type: !1742, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1797 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1798 = !{!1799}
!1799 = !DILocalVariable(name: "__c", arg: 1, scope: !1796, file: !1797, line: 207, type: !287)
!1800 = !DILocation(line: 0, scope: !1796)
!1801 = !DILocation(line: 209, column: 22, scope: !1796)
!1802 = !DILocation(line: 209, column: 39, scope: !1796)
!1803 = !DILocation(line: 209, column: 38, scope: !1796)
!1804 = !DILocation(line: 209, column: 37, scope: !1796)
!1805 = !DILocation(line: 209, column: 10, scope: !1796)
!1806 = !DILocation(line: 209, column: 3, scope: !1796)
!1807 = distinct !DISubprogram(name: "toupper", scope: !1797, file: !1797, line: 213, type: !1742, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1808)
!1808 = !{!1809}
!1809 = !DILocalVariable(name: "__c", arg: 1, scope: !1807, file: !1797, line: 213, type: !287)
!1810 = !DILocation(line: 0, scope: !1807)
!1811 = !DILocation(line: 215, column: 22, scope: !1807)
!1812 = !DILocation(line: 215, column: 39, scope: !1807)
!1813 = !DILocation(line: 215, column: 38, scope: !1807)
!1814 = !DILocation(line: 215, column: 37, scope: !1807)
!1815 = !DILocation(line: 215, column: 10, scope: !1807)
!1816 = !DILocation(line: 215, column: 3, scope: !1807)
!1817 = distinct !DISubprogram(name: "atoi", scope: !1818, file: !1818, line: 361, type: !1819, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1818 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!287, !292}
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1817, file: !1818, line: 361, type: !292)
!1823 = !DILocation(line: 0, scope: !1817)
!1824 = !DILocation(line: 363, column: 16, scope: !1817)
!1825 = !DILocation(line: 363, column: 10, scope: !1817)
!1826 = !DILocation(line: 363, column: 3, scope: !1817)
!1827 = distinct !DISubprogram(name: "atol", scope: !1818, file: !1818, line: 366, type: !1828, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!350, !292}
!1830 = !{!1831}
!1831 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1827, file: !1818, line: 366, type: !292)
!1832 = !DILocation(line: 0, scope: !1827)
!1833 = !DILocation(line: 368, column: 10, scope: !1827)
!1834 = !DILocation(line: 368, column: 3, scope: !1827)
!1835 = distinct !DISubprogram(name: "atoll", scope: !1818, file: !1818, line: 373, type: !1836, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!1838, !292}
!1838 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1839 = !{!1840}
!1840 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1835, file: !1818, line: 373, type: !292)
!1841 = !DILocation(line: 0, scope: !1835)
!1842 = !DILocation(line: 375, column: 10, scope: !1835)
!1843 = !DILocation(line: 375, column: 3, scope: !1835)
!1844 = distinct !DISubprogram(name: "bsearch", scope: !1845, file: !1845, line: 20, type: !1846, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1845 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!291, !875, !875, !727, !727, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1818, line: 808, baseType: !879)
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859}
!1850 = !DILocalVariable(name: "__key", arg: 1, scope: !1844, file: !1845, line: 20, type: !875)
!1851 = !DILocalVariable(name: "__base", arg: 2, scope: !1844, file: !1845, line: 20, type: !875)
!1852 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1844, file: !1845, line: 20, type: !727)
!1853 = !DILocalVariable(name: "__size", arg: 4, scope: !1844, file: !1845, line: 20, type: !727)
!1854 = !DILocalVariable(name: "__compar", arg: 5, scope: !1844, file: !1845, line: 21, type: !1848)
!1855 = !DILocalVariable(name: "__l", scope: !1844, file: !1845, line: 23, type: !727)
!1856 = !DILocalVariable(name: "__u", scope: !1844, file: !1845, line: 23, type: !727)
!1857 = !DILocalVariable(name: "__idx", scope: !1844, file: !1845, line: 23, type: !727)
!1858 = !DILocalVariable(name: "__p", scope: !1844, file: !1845, line: 24, type: !875)
!1859 = !DILocalVariable(name: "__comparison", scope: !1844, file: !1845, line: 25, type: !287)
!1860 = !DILocation(line: 0, scope: !1844)
!1861 = !DILocation(line: 29, column: 3, scope: !1844)
!1862 = !DILocation(line: 27, column: 7, scope: !1844)
!1863 = !DILocation(line: 29, column: 14, scope: !1844)
!1864 = !DILocation(line: 31, column: 20, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1844, file: !1845, line: 30, column: 5)
!1866 = !DILocation(line: 31, column: 27, scope: !1865)
!1867 = !DILocation(line: 32, column: 56, scope: !1865)
!1868 = !DILocation(line: 32, column: 47, scope: !1865)
!1869 = !DILocation(line: 33, column: 22, scope: !1865)
!1870 = !DILocation(line: 34, column: 24, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1865, file: !1845, line: 34, column: 11)
!1872 = !DILocation(line: 34, column: 11, scope: !1865)
!1873 = !DILocation(line: 36, column: 29, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !1845, line: 36, column: 16)
!1875 = !DILocation(line: 36, column: 16, scope: !1871)
!1876 = !DILocation(line: 37, column: 14, scope: !1874)
!1877 = distinct !{!1877, !1861, !1878}
!1878 = !DILocation(line: 40, column: 5, scope: !1844)
!1879 = !DILocation(line: 43, column: 1, scope: !1844)
!1880 = distinct !DISubprogram(name: "atof", scope: !1881, file: !1881, line: 25, type: !1882, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1881 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!1884, !292}
!1884 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1880, file: !1881, line: 25, type: !292)
!1887 = !DILocation(line: 0, scope: !1880)
!1888 = !DILocation(line: 27, column: 10, scope: !1880)
!1889 = !DILocation(line: 27, column: 3, scope: !1880)
!1890 = distinct !DISubprogram(name: "strtoimax", scope: !1891, file: !1891, line: 324, type: !1892, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1891 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894, !1652, !1897, !287}
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1895, line: 101, baseType: !1896)
!1895 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1704, line: 72, baseType: !350)
!1897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !288)
!1898 = !{!1899, !1900, !1901}
!1899 = !DILocalVariable(name: "nptr", arg: 1, scope: !1890, file: !1891, line: 324, type: !1652)
!1900 = !DILocalVariable(name: "endptr", arg: 2, scope: !1890, file: !1891, line: 324, type: !1897)
!1901 = !DILocalVariable(name: "base", arg: 3, scope: !1890, file: !1891, line: 324, type: !287)
!1902 = !DILocation(line: 0, scope: !1890)
!1903 = !DILocation(line: 327, column: 10, scope: !1890)
!1904 = !DILocation(line: 327, column: 3, scope: !1890)
!1905 = distinct !DISubprogram(name: "strtoumax", scope: !1891, file: !1891, line: 336, type: !1906, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1908, !1652, !1897, !287}
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1895, line: 102, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1704, line: 73, baseType: !348)
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "nptr", arg: 1, scope: !1905, file: !1891, line: 336, type: !1652)
!1912 = !DILocalVariable(name: "endptr", arg: 2, scope: !1905, file: !1891, line: 336, type: !1897)
!1913 = !DILocalVariable(name: "base", arg: 3, scope: !1905, file: !1891, line: 336, type: !287)
!1914 = !DILocation(line: 0, scope: !1905)
!1915 = !DILocation(line: 339, column: 10, scope: !1905)
!1916 = !DILocation(line: 339, column: 3, scope: !1905)
!1917 = distinct !DISubprogram(name: "wcstoimax", scope: !1891, file: !1891, line: 348, type: !1918, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1894, !1920, !1924, !287}
!1920 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1891, line: 34, baseType: !287)
!1924 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1927 = !{!1928, !1929, !1930}
!1928 = !DILocalVariable(name: "nptr", arg: 1, scope: !1917, file: !1891, line: 348, type: !1920)
!1929 = !DILocalVariable(name: "endptr", arg: 2, scope: !1917, file: !1891, line: 348, type: !1924)
!1930 = !DILocalVariable(name: "base", arg: 3, scope: !1917, file: !1891, line: 348, type: !287)
!1931 = !DILocation(line: 0, scope: !1917)
!1932 = !DILocation(line: 351, column: 10, scope: !1917)
!1933 = !DILocation(line: 351, column: 3, scope: !1917)
!1934 = distinct !DISubprogram(name: "wcstoumax", scope: !1891, file: !1891, line: 362, type: !1935, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1908, !1920, !1924, !287}
!1937 = !{!1938, !1939, !1940}
!1938 = !DILocalVariable(name: "nptr", arg: 1, scope: !1934, file: !1891, line: 362, type: !1920)
!1939 = !DILocalVariable(name: "endptr", arg: 2, scope: !1934, file: !1891, line: 362, type: !1924)
!1940 = !DILocalVariable(name: "base", arg: 3, scope: !1934, file: !1891, line: 362, type: !287)
!1941 = !DILocation(line: 0, scope: !1934)
!1942 = !DILocation(line: 365, column: 10, scope: !1934)
!1943 = !DILocation(line: 365, column: 3, scope: !1934)
!1944 = distinct !DISubprogram(name: "stat", scope: !1945, file: !1945, line: 453, type: !1946, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!287, !292, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1950, line: 46, size: 1152, elements: !1951)
!1950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1951 = !{!1952, !1954, !1956, !1958, !1960, !1962, !1964, !1965, !1966, !1967, !1969, !1971, !1979, !1980, !1981}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1949, file: !1950, line: 48, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1704, line: 145, baseType: !348)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1949, file: !1950, line: 53, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1704, line: 148, baseType: !348)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1949, file: !1950, line: 61, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1704, line: 151, baseType: !348)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1949, file: !1950, line: 62, baseType: !1959, size: 32, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1704, line: 150, baseType: !7)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1949, file: !1950, line: 64, baseType: !1961, size: 32, offset: 224)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1704, line: 146, baseType: !7)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1949, file: !1950, line: 65, baseType: !1963, size: 32, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1704, line: 147, baseType: !7)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1949, file: !1950, line: 67, baseType: !287, size: 32, offset: 288)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1949, file: !1950, line: 69, baseType: !1953, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1949, file: !1950, line: 74, baseType: !1703, size: 64, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1949, file: !1950, line: 78, baseType: !1968, size: 64, offset: 448)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1704, line: 174, baseType: !350)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1949, file: !1950, line: 80, baseType: !1970, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1704, line: 179, baseType: !350)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1949, file: !1950, line: 91, baseType: !1972, size: 128, offset: 576)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1973, line: 10, size: 128, elements: !1974)
!1973 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1974 = !{!1975, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1972, file: !1973, line: 12, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1704, line: 160, baseType: !350)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1972, file: !1973, line: 16, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1704, line: 196, baseType: !350)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1949, file: !1950, line: 92, baseType: !1972, size: 128, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1949, file: !1950, line: 93, baseType: !1972, size: 128, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1949, file: !1950, line: 106, baseType: !1982, size: 192, offset: 960)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1978, size: 192, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 3)
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "__path", arg: 1, scope: !1944, file: !1945, line: 453, type: !292)
!1987 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1944, file: !1945, line: 453, type: !1948)
!1988 = !DILocation(line: 0, scope: !1944)
!1989 = !DILocation(line: 455, column: 10, scope: !1944)
!1990 = !DILocation(line: 455, column: 3, scope: !1944)
!1991 = distinct !DISubprogram(name: "lstat", scope: !1945, file: !1945, line: 460, type: !1946, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "__path", arg: 1, scope: !1991, file: !1945, line: 460, type: !292)
!1994 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1991, file: !1945, line: 460, type: !1948)
!1995 = !DILocation(line: 0, scope: !1991)
!1996 = !DILocation(line: 462, column: 10, scope: !1991)
!1997 = !DILocation(line: 462, column: 3, scope: !1991)
!1998 = distinct !DISubprogram(name: "fstat", scope: !1945, file: !1945, line: 467, type: !1999, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!287, !287, !1948}
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "__fd", arg: 1, scope: !1998, file: !1945, line: 467, type: !287)
!2003 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1998, file: !1945, line: 467, type: !1948)
!2004 = !DILocation(line: 0, scope: !1998)
!2005 = !DILocation(line: 469, column: 10, scope: !1998)
!2006 = !DILocation(line: 469, column: 3, scope: !1998)
!2007 = distinct !DISubprogram(name: "fstatat", scope: !1945, file: !1945, line: 474, type: !2008, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!287, !287, !292, !1948, !287}
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DILocalVariable(name: "__fd", arg: 1, scope: !2007, file: !1945, line: 474, type: !287)
!2012 = !DILocalVariable(name: "__filename", arg: 2, scope: !2007, file: !1945, line: 474, type: !292)
!2013 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2007, file: !1945, line: 474, type: !1948)
!2014 = !DILocalVariable(name: "__flag", arg: 4, scope: !2007, file: !1945, line: 474, type: !287)
!2015 = !DILocation(line: 0, scope: !2007)
!2016 = !DILocation(line: 477, column: 10, scope: !2007)
!2017 = !DILocation(line: 477, column: 3, scope: !2007)
!2018 = distinct !DISubprogram(name: "mknod", scope: !1945, file: !1945, line: 483, type: !2019, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!287, !292, !1959, !1953}
!2021 = !{!2022, !2023, !2024}
!2022 = !DILocalVariable(name: "__path", arg: 1, scope: !2018, file: !1945, line: 483, type: !292)
!2023 = !DILocalVariable(name: "__mode", arg: 2, scope: !2018, file: !1945, line: 483, type: !1959)
!2024 = !DILocalVariable(name: "__dev", arg: 3, scope: !2018, file: !1945, line: 483, type: !1953)
!2025 = !DILocation(line: 0, scope: !2018)
!2026 = !DILocation(line: 485, column: 10, scope: !2018)
!2027 = !DILocation(line: 485, column: 3, scope: !2018)
!2028 = distinct !DISubprogram(name: "mknodat", scope: !1945, file: !1945, line: 491, type: !2029, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!287, !287, !292, !1959, !1953}
!2031 = !{!2032, !2033, !2034, !2035}
!2032 = !DILocalVariable(name: "__fd", arg: 1, scope: !2028, file: !1945, line: 491, type: !287)
!2033 = !DILocalVariable(name: "__path", arg: 2, scope: !2028, file: !1945, line: 491, type: !292)
!2034 = !DILocalVariable(name: "__mode", arg: 3, scope: !2028, file: !1945, line: 491, type: !1959)
!2035 = !DILocalVariable(name: "__dev", arg: 4, scope: !2028, file: !1945, line: 491, type: !1953)
!2036 = !DILocation(line: 0, scope: !2028)
!2037 = !DILocation(line: 494, column: 10, scope: !2028)
!2038 = !DILocation(line: 494, column: 3, scope: !2028)
!2039 = distinct !DISubprogram(name: "stat64", scope: !1945, file: !1945, line: 502, type: !2040, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!287, !292, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1950, line: 119, size: 1152, elements: !2044)
!2044 = !{!2045, !2046, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2058, !2059, !2060, !2061}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2043, file: !1950, line: 121, baseType: !1953, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2043, file: !1950, line: 123, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1704, line: 149, baseType: !348)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2043, file: !1950, line: 124, baseType: !1957, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2043, file: !1950, line: 125, baseType: !1959, size: 32, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2043, file: !1950, line: 132, baseType: !1961, size: 32, offset: 224)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2043, file: !1950, line: 133, baseType: !1963, size: 32, offset: 256)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2043, file: !1950, line: 135, baseType: !287, size: 32, offset: 288)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2043, file: !1950, line: 136, baseType: !1953, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2043, file: !1950, line: 137, baseType: !1703, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2043, file: !1950, line: 143, baseType: !1968, size: 64, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2043, file: !1950, line: 144, baseType: !2057, size: 64, offset: 512)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1704, line: 180, baseType: !350)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2043, file: !1950, line: 152, baseType: !1972, size: 128, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2043, file: !1950, line: 153, baseType: !1972, size: 128, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2043, file: !1950, line: 154, baseType: !1972, size: 128, offset: 832)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2043, file: !1950, line: 164, baseType: !1982, size: 192, offset: 960)
!2062 = !{!2063, !2064}
!2063 = !DILocalVariable(name: "__path", arg: 1, scope: !2039, file: !1945, line: 502, type: !292)
!2064 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2039, file: !1945, line: 502, type: !2042)
!2065 = !DILocation(line: 0, scope: !2039)
!2066 = !DILocation(line: 504, column: 10, scope: !2039)
!2067 = !DILocation(line: 504, column: 3, scope: !2039)
!2068 = distinct !DISubprogram(name: "lstat64", scope: !1945, file: !1945, line: 509, type: !2040, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "__path", arg: 1, scope: !2068, file: !1945, line: 509, type: !292)
!2071 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2068, file: !1945, line: 509, type: !2042)
!2072 = !DILocation(line: 0, scope: !2068)
!2073 = !DILocation(line: 511, column: 10, scope: !2068)
!2074 = !DILocation(line: 511, column: 3, scope: !2068)
!2075 = distinct !DISubprogram(name: "fstat64", scope: !1945, file: !1945, line: 516, type: !2076, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!287, !287, !2042}
!2078 = !{!2079, !2080}
!2079 = !DILocalVariable(name: "__fd", arg: 1, scope: !2075, file: !1945, line: 516, type: !287)
!2080 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2075, file: !1945, line: 516, type: !2042)
!2081 = !DILocation(line: 0, scope: !2075)
!2082 = !DILocation(line: 518, column: 10, scope: !2075)
!2083 = !DILocation(line: 518, column: 3, scope: !2075)
!2084 = distinct !DISubprogram(name: "fstatat64", scope: !1945, file: !1945, line: 523, type: !2085, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!287, !287, !292, !2042, !287}
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DILocalVariable(name: "__fd", arg: 1, scope: !2084, file: !1945, line: 523, type: !287)
!2089 = !DILocalVariable(name: "__filename", arg: 2, scope: !2084, file: !1945, line: 523, type: !292)
!2090 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2084, file: !1945, line: 523, type: !2042)
!2091 = !DILocalVariable(name: "__flag", arg: 4, scope: !2084, file: !1945, line: 523, type: !287)
!2092 = !DILocation(line: 0, scope: !2084)
!2093 = !DILocation(line: 526, column: 10, scope: !2084)
!2094 = !DILocation(line: 526, column: 3, scope: !2084)
!2095 = distinct !DISubprogram(name: "lto_symtab_register_decl", scope: !3, file: !3, line: 119, type: !2096, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !294, !2098, !1419}
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "ld_plugin_symbol_resolution_t", file: !1421, line: 284, baseType: !249)
!2099 = !{!2100, !2101, !2102, !2103, !2104}
!2100 = !DILocalVariable(name: "decl", arg: 1, scope: !2095, file: !3, line: 119, type: !294)
!2101 = !DILocalVariable(name: "resolution", arg: 2, scope: !2095, file: !3, line: 120, type: !2098)
!2102 = !DILocalVariable(name: "file_data", arg: 3, scope: !2095, file: !3, line: 121, type: !1419)
!2103 = !DILocalVariable(name: "new_entry", scope: !2095, file: !3, line: 123, type: !1603)
!2104 = !DILocalVariable(name: "slot", scope: !2095, file: !3, line: 124, type: !888)
!2105 = !DILocation(line: 0, scope: !2095)
!2106 = !DILocation(line: 130, column: 3, scope: !2095)
!2107 = !DILocation(line: 0, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 135, column: 7)
!2109 = !DILocation(line: 135, column: 7, scope: !2108)
!2110 = !DILocation(line: 135, column: 24, scope: !2108)
!2111 = !DILocation(line: 136, column: 7, scope: !2108)
!2112 = !DILocation(line: 136, column: 10, scope: !2108)
!2113 = !DILocation(line: 135, column: 7, scope: !2095)
!2114 = !DILocation(line: 137, column: 5, scope: !2108)
!2115 = !DILocation(line: 139, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 139, column: 7)
!2117 = !DILocation(line: 139, column: 24, scope: !2116)
!2118 = !DILocation(line: 139, column: 7, scope: !2095)
!2119 = !DILocation(line: 140, column: 5, scope: !2116)
!2120 = !DILocation(line: 142, column: 15, scope: !2095)
!2121 = !DILocation(line: 143, column: 19, scope: !2095)
!2122 = !DILocation(line: 143, column: 14, scope: !2095)
!2123 = !DILocation(line: 143, column: 17, scope: !2095)
!2124 = !DILocation(line: 144, column: 14, scope: !2095)
!2125 = !DILocation(line: 144, column: 19, scope: !2095)
!2126 = !DILocation(line: 145, column: 14, scope: !2095)
!2127 = !DILocation(line: 145, column: 25, scope: !2095)
!2128 = !DILocation(line: 146, column: 14, scope: !2095)
!2129 = !DILocation(line: 146, column: 24, scope: !2095)
!2130 = !DILocation(line: 148, column: 3, scope: !2095)
!2131 = !DILocation(line: 149, column: 26, scope: !2095)
!2132 = !DILocation(line: 149, column: 10, scope: !2095)
!2133 = !DILocation(line: 150, column: 42, scope: !2095)
!2134 = !DILocation(line: 150, column: 14, scope: !2095)
!2135 = !DILocation(line: 150, column: 19, scope: !2095)
!2136 = !DILocation(line: 151, column: 9, scope: !2095)
!2137 = !DILocation(line: 152, column: 1, scope: !2095)
!2138 = distinct !DISubprogram(name: "lto_symtab_maybe_init_hash_table", scope: !3, file: !3, line: 105, type: !2139, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null}
!2141 = !DILocation(line: 107, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 107, column: 7)
!2143 = !DILocation(line: 107, column: 7, scope: !2138)
!2144 = !DILocation(line: 111, column: 5, scope: !2138)
!2145 = !DILocation(line: 110, column: 26, scope: !2138)
!2146 = !DILocation(line: 113, column: 1, scope: !2138)
!2147 = distinct !DISubprogram(name: "lto_symtab_get_resolution", scope: !3, file: !3, line: 172, type: !2148, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!249, !294}
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "decl", arg: 1, scope: !2147, file: !3, line: 172, type: !294)
!2152 = !DILocalVariable(name: "e", scope: !2147, file: !3, line: 174, type: !1603)
!2153 = !DILocation(line: 0, scope: !2147)
!2154 = !DILocation(line: 176, column: 3, scope: !2147)
!2155 = !DILocation(line: 178, column: 23, scope: !2147)
!2156 = !DILocation(line: 178, column: 7, scope: !2147)
!2157 = !DILocation(line: 179, column: 3, scope: !2147)
!2158 = !DILocation(line: 179, column: 12, scope: !2147)
!2159 = !DILocation(line: 179, column: 18, scope: !2147)
!2160 = !DILocation(line: 179, column: 23, scope: !2147)
!2161 = !DILocation(line: 180, column: 12, scope: !2147)
!2162 = distinct !{!2162, !2157, !2161}
!2163 = !DILocation(line: 184, column: 13, scope: !2147)
!2164 = !DILocation(line: 184, column: 3, scope: !2147)
!2165 = !DILocation(line: 185, column: 1, scope: !2147)
!2166 = distinct !DISubprogram(name: "lto_symtab_get", scope: !3, file: !3, line: 158, type: !2167, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!1603, !294}
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "id", arg: 1, scope: !2166, file: !3, line: 158, type: !294)
!2171 = !DILocalVariable(name: "temp", scope: !2166, file: !3, line: 160, type: !1352)
!2172 = !DILocalVariable(name: "slot", scope: !2166, file: !3, line: 161, type: !888)
!2173 = !DILocation(line: 0, scope: !2166)
!2174 = !DILocation(line: 160, column: 3, scope: !2166)
!2175 = !DILocation(line: 163, column: 3, scope: !2166)
!2176 = !DILocation(line: 164, column: 8, scope: !2166)
!2177 = !DILocation(line: 164, column: 11, scope: !2166)
!2178 = !DILocation(line: 165, column: 26, scope: !2166)
!2179 = !DILocation(line: 165, column: 10, scope: !2166)
!2180 = !DILocation(line: 166, column: 10, scope: !2166)
!2181 = !DILocation(line: 166, column: 38, scope: !2166)
!2182 = !DILocation(line: 167, column: 1, scope: !2166)
!2183 = !DILocation(line: 166, column: 3, scope: !2166)
!2184 = distinct !DISubprogram(name: "lto_symtab_merge_decls", scope: !3, file: !3, line: 640, type: !2139, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!2185 = !DILocation(line: 642, column: 3, scope: !2184)
!2186 = !DILocation(line: 643, column: 18, scope: !2184)
!2187 = !DILocation(line: 643, column: 3, scope: !2184)
!2188 = !DILocation(line: 644, column: 1, scope: !2184)
!2189 = distinct !DISubprogram(name: "lto_symtab_merge_decls_1", scope: !3, file: !3, line: 531, type: !2190, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!287, !888, !291}
!2192 = !{!2193, !2194, !2195, !2196, !2197}
!2193 = !DILocalVariable(name: "slot", arg: 1, scope: !2189, file: !3, line: 531, type: !888)
!2194 = !DILocalVariable(name: "data", arg: 2, scope: !2189, file: !3, line: 531, type: !291)
!2195 = !DILocalVariable(name: "e", scope: !2189, file: !3, line: 533, type: !1603)
!2196 = !DILocalVariable(name: "prevailing", scope: !2189, file: !3, line: 533, type: !1603)
!2197 = !DILocalVariable(name: "diagnosed_p", scope: !2189, file: !3, line: 534, type: !286)
!2198 = !DILocation(line: 0, scope: !2189)
!2199 = !DILocation(line: 538, column: 3, scope: !2189)
!2200 = !DILocation(line: 541, column: 42, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 541, column: 3)
!2202 = !DILocation(line: 541, column: 8, scope: !2201)
!2203 = !DILocation(line: 0, scope: !2201)
!2204 = !DILocation(line: 543, column: 8, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 541, column: 3)
!2206 = !DILocation(line: 543, column: 23, scope: !2205)
!2207 = !DILocation(line: 543, column: 34, scope: !2205)
!2208 = !DILocation(line: 544, column: 8, scope: !2205)
!2209 = !DILocation(line: 544, column: 34, scope: !2205)
!2210 = !DILocation(line: 541, column: 3, scope: !2201)
!2211 = !DILocation(line: 545, column: 33, scope: !2205)
!2212 = !DILocation(line: 541, column: 3, scope: !2205)
!2213 = distinct !{!2213, !2210, !2214}
!2214 = !DILocation(line: 546, column: 5, scope: !2201)
!2215 = !DILocation(line: 550, column: 10, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 550, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 549, column: 7)
!2218 = !DILocation(line: 0, scope: !2216)
!2219 = !DILocation(line: 550, column: 5, scope: !2216)
!2220 = !DILocation(line: 551, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 550, column: 5)
!2222 = !DILocation(line: 550, column: 5, scope: !2221)
!2223 = distinct !{!2223, !2219, !2224}
!2224 = !DILocation(line: 551, column: 7, scope: !2216)
!2225 = !DILocation(line: 579, column: 28, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 579, column: 7)
!2227 = !DILocation(line: 557, column: 7, scope: !2189)
!2228 = !DILocation(line: 559, column: 41, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 558, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 557, column: 7)
!2231 = !DILocation(line: 561, column: 11, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 561, column: 11)
!2233 = !DILocation(line: 561, column: 40, scope: !2232)
!2234 = !DILocation(line: 561, column: 11, scope: !2229)
!2235 = !DILocation(line: 562, column: 2, scope: !2232)
!2236 = !DILocation(line: 0, scope: !2229)
!2237 = !DILocation(line: 562, column: 22, scope: !2232)
!2238 = !DILocation(line: 562, column: 10, scope: !2232)
!2239 = !DILocation(line: 563, column: 9, scope: !2232)
!2240 = !DILocation(line: 563, column: 24, scope: !2232)
!2241 = distinct !{!2241, !2235, !2242}
!2242 = !DILocation(line: 564, column: 29, scope: !2232)
!2243 = !DILocation(line: 0, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 571, column: 11)
!2245 = !DILocation(line: 571, column: 11, scope: !2244)
!2246 = !DILocation(line: 559, column: 18, scope: !2229)
!2247 = !DILocation(line: 571, column: 40, scope: !2244)
!2248 = !DILocation(line: 571, column: 11, scope: !2229)
!2249 = !DILocation(line: 572, column: 2, scope: !2244)
!2250 = !DILocation(line: 572, column: 11, scope: !2244)
!2251 = !DILocation(line: 573, column: 4, scope: !2244)
!2252 = !DILocation(line: 573, column: 7, scope: !2244)
!2253 = !DILocation(line: 574, column: 9, scope: !2244)
!2254 = !DILocation(line: 574, column: 24, scope: !2244)
!2255 = distinct !{!2255, !2249, !2256}
!2256 = !DILocation(line: 575, column: 29, scope: !2244)
!2257 = !DILocation(line: 579, column: 34, scope: !2226)
!2258 = !DILocation(line: 579, column: 7, scope: !2189)
!2259 = !DILocation(line: 581, column: 12, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 581, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 580, column: 5)
!2262 = !DILocation(line: 0, scope: !2260)
!2263 = !DILocation(line: 581, column: 47, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 581, column: 7)
!2265 = !DILocation(line: 581, column: 52, scope: !2264)
!2266 = !DILocation(line: 581, column: 7, scope: !2260)
!2267 = !DILocation(line: 581, column: 7, scope: !2264)
!2268 = distinct !{!2268, !2266, !2269}
!2269 = !DILocation(line: 582, column: 2, scope: !2260)
!2270 = !DILocation(line: 583, column: 29, scope: !2261)
!2271 = !DILocation(line: 583, column: 15, scope: !2261)
!2272 = !DILocation(line: 584, column: 47, scope: !2261)
!2273 = !DILocation(line: 584, column: 24, scope: !2261)
!2274 = !DILocation(line: 585, column: 13, scope: !2261)
!2275 = !DILocation(line: 586, column: 5, scope: !2261)
!2276 = !DILocation(line: 589, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 589, column: 7)
!2278 = !DILocation(line: 589, column: 36, scope: !2277)
!2279 = !DILocation(line: 589, column: 7, scope: !2189)
!2280 = !DILocation(line: 590, column: 5, scope: !2277)
!2281 = !DILocation(line: 593, column: 8, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 593, column: 3)
!2283 = !DILocation(line: 534, column: 8, scope: !2189)
!2284 = !DILocation(line: 0, scope: !2282)
!2285 = !DILocation(line: 593, column: 3, scope: !2282)
!2286 = !DILocation(line: 595, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 595, column: 11)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 594, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 593, column: 3)
!2290 = !DILocation(line: 595, column: 43, scope: !2287)
!2291 = !DILocation(line: 595, column: 40, scope: !2287)
!2292 = !DILocation(line: 595, column: 11, scope: !2288)
!2293 = !DILocation(line: 598, column: 15, scope: !2288)
!2294 = !DILocation(line: 598, column: 7, scope: !2288)
!2295 = !DILocation(line: 601, column: 4, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 599, column: 2)
!2297 = !DILocation(line: 0, scope: !2296)
!2298 = !DILocation(line: 602, column: 14, scope: !2296)
!2299 = !DILocation(line: 603, column: 58, scope: !2296)
!2300 = !DILocation(line: 602, column: 4, scope: !2296)
!2301 = !DILocation(line: 604, column: 4, scope: !2296)
!2302 = !DILocation(line: 607, column: 4, scope: !2296)
!2303 = !DILocation(line: 608, column: 14, scope: !2296)
!2304 = !DILocation(line: 609, column: 58, scope: !2296)
!2305 = !DILocation(line: 608, column: 4, scope: !2296)
!2306 = !DILocation(line: 610, column: 4, scope: !2296)
!2307 = !DILocation(line: 613, column: 4, scope: !2296)
!2308 = !DILocation(line: 614, column: 2, scope: !2296)
!2309 = !DILocation(line: 593, column: 3, scope: !2289)
!2310 = distinct !{!2310, !2285, !2311}
!2311 = !DILocation(line: 617, column: 5, scope: !2282)
!2312 = !DILocation(line: 618, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 618, column: 7)
!2314 = !DILocation(line: 618, column: 7, scope: !2189)
!2315 = !DILocation(line: 619, column: 15, scope: !2313)
!2316 = !DILocation(line: 619, column: 7, scope: !2313)
!2317 = !DILocation(line: 623, column: 8, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 623, column: 3)
!2319 = !DILocation(line: 0, scope: !2318)
!2320 = !DILocation(line: 623, column: 3, scope: !2318)
!2321 = !DILocation(line: 624, column: 49, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 623, column: 3)
!2323 = !DILocation(line: 624, column: 27, scope: !2322)
!2324 = !DILocation(line: 624, column: 5, scope: !2322)
!2325 = !DILocation(line: 624, column: 25, scope: !2322)
!2326 = !DILocation(line: 623, column: 50, scope: !2322)
!2327 = !DILocation(line: 623, column: 3, scope: !2322)
!2328 = distinct !{!2328, !2320, !2329}
!2329 = !DILocation(line: 624, column: 68, scope: !2318)
!2330 = !DILocation(line: 628, column: 3, scope: !2189)
!2331 = !DILocation(line: 631, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 631, column: 7)
!2333 = !DILocation(line: 631, column: 36, scope: !2332)
!2334 = !DILocation(line: 631, column: 7, scope: !2189)
!2335 = !DILocation(line: 632, column: 17, scope: !2332)
!2336 = !DILocation(line: 632, column: 22, scope: !2332)
!2337 = !DILocation(line: 632, column: 5, scope: !2332)
!2338 = !DILocation(line: 634, column: 3, scope: !2189)
!2339 = distinct !DISubprogram(name: "lto_symtab_merge_cgraph_nodes", scope: !3, file: !3, line: 690, type: !2139, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1670)
!2340 = !DILocation(line: 692, column: 3, scope: !2339)
!2341 = !DILocation(line: 693, column: 18, scope: !2339)
!2342 = !DILocation(line: 693, column: 3, scope: !2339)
!2343 = !DILocation(line: 694, column: 1, scope: !2339)
!2344 = distinct !DISubprogram(name: "lto_symtab_merge_cgraph_nodes_1", scope: !3, file: !3, line: 649, type: !2190, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350}
!2346 = !DILocalVariable(name: "slot", arg: 1, scope: !2344, file: !3, line: 649, type: !888)
!2347 = !DILocalVariable(name: "data", arg: 2, scope: !2344, file: !3, line: 649, type: !291)
!2348 = !DILocalVariable(name: "e", scope: !2344, file: !3, line: 651, type: !1603)
!2349 = !DILocalVariable(name: "prevailing", scope: !2344, file: !3, line: 651, type: !1603)
!2350 = !DILocalVariable(name: "alias", scope: !2351, file: !3, line: 665, type: !1357)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 664, column: 6)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 663, column: 8)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 662, column: 2)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 661, column: 11)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 660, column: 5)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 659, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 659, column: 3)
!2358 = !DILocation(line: 0, scope: !2344)
!2359 = !DILocation(line: 651, column: 59, scope: !2344)
!2360 = !DILocation(line: 653, column: 20, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 653, column: 7)
!2362 = !DILocation(line: 653, column: 8, scope: !2361)
!2363 = !DILocation(line: 653, column: 7, scope: !2344)
!2364 = !DILocation(line: 656, column: 3, scope: !2344)
!2365 = !DILocation(line: 0, scope: !2353)
!2366 = !DILocation(line: 659, column: 8, scope: !2357)
!2367 = !DILocation(line: 0, scope: !2357)
!2368 = !DILocation(line: 659, column: 3, scope: !2357)
!2369 = !DILocation(line: 661, column: 14, scope: !2354)
!2370 = !DILocation(line: 661, column: 19, scope: !2354)
!2371 = !DILocation(line: 661, column: 11, scope: !2355)
!2372 = !DILocation(line: 663, column: 17, scope: !2352)
!2373 = !DILocation(line: 663, column: 28, scope: !2352)
!2374 = !DILocation(line: 663, column: 22, scope: !2352)
!2375 = !DILocation(line: 663, column: 33, scope: !2352)
!2376 = !DILocation(line: 663, column: 45, scope: !2352)
!2377 = !DILocation(line: 663, column: 36, scope: !2352)
!2378 = !DILocation(line: 663, column: 8, scope: !2353)
!2379 = !DILocation(line: 667, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 667, column: 8)
!2381 = !DILocation(line: 0, scope: !2380)
!2382 = !DILocation(line: 0, scope: !2351)
!2383 = !DILocation(line: 667, column: 8, scope: !2380)
!2384 = !DILocation(line: 668, column: 14, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 668, column: 7)
!2386 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 667, column: 8)
!2387 = !DILocation(line: 668, column: 19, scope: !2385)
!2388 = !DILocation(line: 668, column: 7, scope: !2386)
!2389 = !DILocation(line: 667, column: 63, scope: !2386)
!2390 = !DILocation(line: 667, column: 8, scope: !2386)
!2391 = distinct !{!2391, !2383, !2392}
!2392 = !DILocation(line: 669, column: 5, scope: !2380)
!2393 = !DILocation(line: 672, column: 5, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 671, column: 3)
!2395 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 670, column: 12)
!2396 = !DILocation(line: 673, column: 5, scope: !2394)
!2397 = !DILocation(line: 676, column: 32, scope: !2353)
!2398 = !DILocation(line: 676, column: 50, scope: !2353)
!2399 = !DILocation(line: 676, column: 4, scope: !2353)
!2400 = !DILocation(line: 677, column: 2, scope: !2353)
!2401 = !DILocation(line: 659, column: 3, scope: !2356)
!2402 = distinct !{!2402, !2368, !2403}
!2403 = !DILocation(line: 678, column: 5, scope: !2357)
!2404 = !DILocation(line: 681, column: 20, scope: !2344)
!2405 = !DILocation(line: 683, column: 3, scope: !2344)
!2406 = !DILocation(line: 684, column: 1, scope: !2344)
!2407 = distinct !DISubprogram(name: "lto_symtab_prevailing_decl", scope: !3, file: !3, line: 699, type: !2408, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!294, !294}
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "decl", arg: 1, scope: !2407, file: !3, line: 699, type: !294)
!2412 = !DILocalVariable(name: "ret", scope: !2407, file: !3, line: 701, type: !1603)
!2413 = !DILocation(line: 0, scope: !2407)
!2414 = !DILocation(line: 704, column: 8, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 704, column: 7)
!2416 = !DILocation(line: 704, column: 27, scope: !2415)
!2417 = !DILocation(line: 704, column: 30, scope: !2415)
!2418 = !DILocation(line: 704, column: 7, scope: !2407)
!2419 = !DILocation(line: 708, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 708, column: 7)
!2421 = !DILocation(line: 708, column: 24, scope: !2420)
!2422 = !DILocation(line: 708, column: 41, scope: !2420)
!2423 = !DILocation(line: 708, column: 44, scope: !2420)
!2424 = !DILocation(line: 708, column: 7, scope: !2407)
!2425 = !DILocation(line: 712, column: 3, scope: !2407)
!2426 = !DILocation(line: 715, column: 25, scope: !2407)
!2427 = !DILocation(line: 715, column: 9, scope: !2407)
!2428 = !DILocation(line: 716, column: 8, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 716, column: 7)
!2430 = !DILocation(line: 716, column: 7, scope: !2407)
!2431 = !DILocation(line: 719, column: 15, scope: !2407)
!2432 = !DILocation(line: 719, column: 3, scope: !2407)
!2433 = !DILocation(line: 720, column: 1, scope: !2407)
!2434 = distinct !DISubprogram(name: "gt_ggc_mx_lto_symtab_entry_def", scope: !1614, file: !1614, line: 23, type: !885, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2435)
!2435 = !{!2436, !2437}
!2436 = !DILocalVariable(name: "x_p", arg: 1, scope: !2434, file: !1614, line: 23, type: !291)
!2437 = !DILocalVariable(name: "x", scope: !2434, file: !1614, line: 25, type: !2438)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!2439 = !DILocation(line: 31, column: 7, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !1614, line: 31, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !1614, line: 31, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !1614, line: 27, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2434, file: !1614, line: 26, column: 7)
!2444 = !DILocation(line: 0, scope: !2434)
!2445 = !DILocation(line: 26, column: 7, scope: !2443)
!2446 = !DILocation(line: 26, column: 7, scope: !2434)
!2447 = !DILocation(line: 28, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !1614, line: 28, column: 7)
!2449 = distinct !DILexicalBlock(scope: !2442, file: !1614, line: 28, column: 7)
!2450 = !DILocation(line: 28, column: 7, scope: !2449)
!2451 = !DILocation(line: 29, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !1614, line: 29, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2442, file: !1614, line: 29, column: 7)
!2454 = !DILocation(line: 29, column: 7, scope: !2453)
!2455 = !DILocation(line: 30, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !1614, line: 30, column: 7)
!2457 = distinct !DILexicalBlock(scope: !2442, file: !1614, line: 30, column: 7)
!2458 = !DILocation(line: 30, column: 7, scope: !2457)
!2459 = !DILocation(line: 31, column: 7, scope: !2441)
!2460 = !DILocation(line: 33, column: 1, scope: !2434)
!2461 = distinct !DISubprogram(name: "gt_ggc_m_P20lto_symtab_entry_def4htab", scope: !1614, file: !1614, line: 36, type: !885, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2462)
!2462 = !{!2463, !2464, !2466, !2471}
!2463 = !DILocalVariable(name: "x_p", arg: 1, scope: !2461, file: !1614, line: 36, type: !291)
!2464 = !DILocalVariable(name: "x", scope: !2461, file: !1614, line: 38, type: !2465)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!2466 = !DILocalVariable(name: "i0", scope: !2467, file: !1614, line: 42, type: !727)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !1614, line: 41, column: 33)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !1614, line: 41, column: 11)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !1614, line: 40, column: 5)
!2470 = distinct !DILexicalBlock(scope: !2461, file: !1614, line: 39, column: 7)
!2471 = !DILocalVariable(name: "a__", scope: !2472, file: !1614, line: 46, type: !2473)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !1614, line: 46, column: 9)
!2473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!2474 = !DILocation(line: 0, scope: !2461)
!2475 = !DILocation(line: 39, column: 7, scope: !2470)
!2476 = !DILocation(line: 39, column: 7, scope: !2461)
!2477 = !DILocation(line: 41, column: 16, scope: !2468)
!2478 = !DILocation(line: 41, column: 24, scope: !2468)
!2479 = !DILocation(line: 41, column: 11, scope: !2469)
!2480 = !DILocation(line: 0, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !1614, line: 43, column: 9)
!2482 = distinct !DILexicalBlock(scope: !2467, file: !1614, line: 43, column: 9)
!2483 = !DILocation(line: 43, column: 9, scope: !2482)
!2484 = !DILocation(line: 0, scope: !2467)
!2485 = !DILocation(line: 0, scope: !2482)
!2486 = !DILocation(line: 43, column: 44, scope: !2481)
!2487 = !DILocation(line: 43, column: 25, scope: !2481)
!2488 = !DILocation(line: 44, column: 11, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !1614, line: 44, column: 11)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !1614, line: 44, column: 11)
!2491 = distinct !DILexicalBlock(scope: !2481, file: !1614, line: 43, column: 57)
!2492 = !DILocation(line: 44, column: 11, scope: !2490)
!2493 = !DILocation(line: 43, column: 53, scope: !2481)
!2494 = !DILocation(line: 43, column: 9, scope: !2481)
!2495 = distinct !{!2495, !2483, !2496}
!2496 = !DILocation(line: 45, column: 9, scope: !2482)
!2497 = !DILocation(line: 0, scope: !2472)
!2498 = !DILocation(line: 46, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2472, file: !1614, line: 46, column: 9)
!2500 = !DILocation(line: 46, column: 9, scope: !2472)
!2501 = !DILocation(line: 49, column: 1, scope: !2461)
!2502 = distinct !DISubprogram(name: "gt_pch_nx_lto_symtab_entry_def", scope: !1614, file: !1614, line: 52, type: !885, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2503)
!2503 = !{!2504, !2505}
!2504 = !DILocalVariable(name: "x_p", arg: 1, scope: !2502, file: !1614, line: 52, type: !291)
!2505 = !DILocalVariable(name: "x", scope: !2502, file: !1614, line: 54, type: !2438)
!2506 = !DILocation(line: 60, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !1614, line: 60, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !1614, line: 60, column: 7)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !1614, line: 56, column: 5)
!2510 = distinct !DILexicalBlock(scope: !2502, file: !1614, line: 55, column: 7)
!2511 = !DILocation(line: 0, scope: !2502)
!2512 = !DILocation(line: 55, column: 7, scope: !2510)
!2513 = !DILocation(line: 55, column: 7, scope: !2502)
!2514 = !DILocation(line: 57, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !1614, line: 57, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2509, file: !1614, line: 57, column: 7)
!2517 = !DILocation(line: 57, column: 7, scope: !2516)
!2518 = !DILocation(line: 58, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !1614, line: 58, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2509, file: !1614, line: 58, column: 7)
!2521 = !DILocation(line: 58, column: 7, scope: !2520)
!2522 = !DILocation(line: 59, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !1614, line: 59, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2509, file: !1614, line: 59, column: 7)
!2525 = !DILocation(line: 59, column: 7, scope: !2524)
!2526 = !DILocation(line: 60, column: 7, scope: !2508)
!2527 = !DILocation(line: 62, column: 1, scope: !2502)
!2528 = distinct !DISubprogram(name: "gt_pch_p_20lto_symtab_entry_def", scope: !1614, file: !1614, line: 81, type: !2529, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !291, !291, !2531, !291}
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !1618, line: 38, baseType: !909)
!2532 = !{!2533, !2534, !2535, !2536, !2537}
!2533 = !DILocalVariable(name: "this_obj", arg: 1, scope: !2528, file: !1614, line: 81, type: !291)
!2534 = !DILocalVariable(name: "x_p", arg: 2, scope: !2528, file: !1614, line: 82, type: !291)
!2535 = !DILocalVariable(name: "op", arg: 3, scope: !2528, file: !1614, line: 83, type: !2531)
!2536 = !DILocalVariable(name: "cookie", arg: 4, scope: !2528, file: !1614, line: 84, type: !291)
!2537 = !DILocalVariable(name: "x", scope: !2528, file: !1614, line: 86, type: !2438)
!2538 = !DILocation(line: 0, scope: !2528)
!2539 = !DILocation(line: 87, column: 19, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2528, file: !1614, line: 87, column: 7)
!2541 = !DILocation(line: 87, column: 7, scope: !2528)
!2542 = !DILocation(line: 88, column: 5, scope: !2540)
!2543 = !DILocation(line: 89, column: 7, scope: !2528)
!2544 = !DILocation(line: 90, column: 16, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2528, file: !1614, line: 89, column: 7)
!2546 = !DILocation(line: 90, column: 5, scope: !2545)
!2547 = !DILocation(line: 91, column: 7, scope: !2528)
!2548 = !DILocation(line: 92, column: 16, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2528, file: !1614, line: 91, column: 7)
!2550 = !DILocation(line: 92, column: 5, scope: !2549)
!2551 = !DILocation(line: 93, column: 7, scope: !2528)
!2552 = !DILocation(line: 94, column: 16, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2528, file: !1614, line: 93, column: 7)
!2554 = !DILocation(line: 94, column: 5, scope: !2553)
!2555 = !DILocation(line: 95, column: 1, scope: !2528)
!2556 = distinct !DISubprogram(name: "gt_pch_n_P20lto_symtab_entry_def4htab", scope: !1614, file: !1614, line: 65, type: !885, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "x_p", arg: 1, scope: !2556, file: !1614, line: 65, type: !291)
!2559 = !DILocalVariable(name: "x", scope: !2556, file: !1614, line: 67, type: !2465)
!2560 = !DILocalVariable(name: "i0", scope: !2561, file: !1614, line: 71, type: !727)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !1614, line: 70, column: 33)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !1614, line: 70, column: 11)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !1614, line: 69, column: 5)
!2564 = distinct !DILexicalBlock(scope: !2556, file: !1614, line: 68, column: 7)
!2565 = !DILocation(line: 0, scope: !2556)
!2566 = !DILocation(line: 68, column: 7, scope: !2564)
!2567 = !DILocation(line: 68, column: 7, scope: !2556)
!2568 = !DILocation(line: 70, column: 16, scope: !2562)
!2569 = !DILocation(line: 70, column: 24, scope: !2562)
!2570 = !DILocation(line: 70, column: 11, scope: !2563)
!2571 = !DILocation(line: 0, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !1614, line: 72, column: 9)
!2573 = distinct !DILexicalBlock(scope: !2561, file: !1614, line: 72, column: 9)
!2574 = !DILocation(line: 72, column: 9, scope: !2573)
!2575 = !DILocation(line: 0, scope: !2561)
!2576 = !DILocation(line: 0, scope: !2573)
!2577 = !DILocation(line: 72, column: 44, scope: !2572)
!2578 = !DILocation(line: 72, column: 25, scope: !2572)
!2579 = !DILocation(line: 73, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !1614, line: 73, column: 11)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !1614, line: 73, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2572, file: !1614, line: 72, column: 57)
!2583 = !DILocation(line: 73, column: 11, scope: !2581)
!2584 = !DILocation(line: 72, column: 53, scope: !2572)
!2585 = !DILocation(line: 72, column: 9, scope: !2572)
!2586 = distinct !{!2586, !2574, !2587}
!2587 = !DILocation(line: 74, column: 9, scope: !2573)
!2588 = !DILocation(line: 75, column: 29, scope: !2561)
!2589 = !DILocation(line: 75, column: 9, scope: !2561)
!2590 = !DILocation(line: 76, column: 7, scope: !2561)
!2591 = !DILocation(line: 78, column: 1, scope: !2556)
!2592 = distinct !DISubprogram(name: "gt_pch_p_P20lto_symtab_entry_def4htab", scope: !1614, file: !1614, line: 98, type: !2529, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599}
!2594 = !DILocalVariable(name: "this_obj", arg: 1, scope: !2592, file: !1614, line: 98, type: !291)
!2595 = !DILocalVariable(name: "x_p", arg: 2, scope: !2592, file: !1614, line: 99, type: !291)
!2596 = !DILocalVariable(name: "op", arg: 3, scope: !2592, file: !1614, line: 100, type: !2531)
!2597 = !DILocalVariable(name: "cookie", arg: 4, scope: !2592, file: !1614, line: 101, type: !291)
!2598 = !DILocalVariable(name: "x", scope: !2592, file: !1614, line: 103, type: !2465)
!2599 = !DILocalVariable(name: "i0", scope: !2600, file: !1614, line: 105, type: !727)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !1614, line: 104, column: 29)
!2601 = distinct !DILexicalBlock(scope: !2592, file: !1614, line: 104, column: 7)
!2602 = !DILocation(line: 0, scope: !2592)
!2603 = !DILocation(line: 104, column: 12, scope: !2601)
!2604 = !DILocation(line: 104, column: 20, scope: !2601)
!2605 = !DILocation(line: 104, column: 7, scope: !2592)
!2606 = !DILocation(line: 0, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !1614, line: 106, column: 5)
!2608 = distinct !DILexicalBlock(scope: !2600, file: !1614, line: 106, column: 5)
!2609 = !DILocation(line: 0, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !1614, line: 107, column: 11)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !1614, line: 106, column: 53)
!2612 = !DILocation(line: 106, column: 5, scope: !2608)
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 0, scope: !2600)
!2615 = !DILocation(line: 106, column: 40, scope: !2607)
!2616 = !DILocation(line: 106, column: 21, scope: !2607)
!2617 = !DILocation(line: 107, column: 25, scope: !2610)
!2618 = !DILocation(line: 107, column: 34, scope: !2610)
!2619 = !DILocation(line: 107, column: 11, scope: !2611)
!2620 = !DILocation(line: 108, column: 15, scope: !2610)
!2621 = !DILocation(line: 108, column: 13, scope: !2610)
!2622 = !DILocation(line: 108, column: 9, scope: !2610)
!2623 = !DILocation(line: 106, column: 49, scope: !2607)
!2624 = !DILocation(line: 106, column: 5, scope: !2607)
!2625 = distinct !{!2625, !2612, !2626}
!2626 = !DILocation(line: 109, column: 5, scope: !2608)
!2627 = !DILocation(line: 110, column: 21, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2600, file: !1614, line: 110, column: 9)
!2629 = !DILocation(line: 110, column: 9, scope: !2600)
!2630 = !DILocation(line: 111, column: 7, scope: !2628)
!2631 = !DILocation(line: 113, column: 1, scope: !2592)
!2632 = distinct !DISubprogram(name: "lto_symtab_entry_marked_p", scope: !3, file: !3, line: 92, type: !1629, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2633)
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "p", arg: 1, scope: !2632, file: !3, line: 92, type: !875)
!2635 = !DILocalVariable(name: "base", scope: !2632, file: !3, line: 94, type: !1604)
!2636 = !DILocation(line: 0, scope: !2632)
!2637 = !DILocation(line: 98, column: 31, scope: !2632)
!2638 = !DILocation(line: 98, column: 11, scope: !2632)
!2639 = !DILocation(line: 99, column: 4, scope: !2632)
!2640 = !DILocation(line: 99, column: 14, scope: !2632)
!2641 = !DILocation(line: 99, column: 8, scope: !2632)
!2642 = !DILocation(line: 99, column: 19, scope: !2632)
!2643 = !DILocation(line: 99, column: 22, scope: !2632)
!2644 = !DILocation(line: 98, column: 3, scope: !2632)
!2645 = distinct !DISubprogram(name: "lto_symtab_entry_hash", scope: !3, file: !3, line: 68, type: !872, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2646)
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "p", arg: 1, scope: !2645, file: !3, line: 68, type: !875)
!2648 = !DILocalVariable(name: "base", scope: !2645, file: !3, line: 70, type: !1604)
!2649 = !DILocation(line: 0, scope: !2645)
!2650 = !DILocation(line: 72, column: 28, scope: !2645)
!2651 = !DILocation(line: 72, column: 10, scope: !2645)
!2652 = !DILocation(line: 72, column: 3, scope: !2645)
!2653 = distinct !DISubprogram(name: "lto_symtab_entry_eq", scope: !3, file: !3, line: 79, type: !880, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2654)
!2654 = !{!2655, !2656, !2657, !2658}
!2655 = !DILocalVariable(name: "p1", arg: 1, scope: !2653, file: !3, line: 79, type: !875)
!2656 = !DILocalVariable(name: "p2", arg: 2, scope: !2653, file: !3, line: 79, type: !875)
!2657 = !DILocalVariable(name: "base1", scope: !2653, file: !3, line: 81, type: !1604)
!2658 = !DILocalVariable(name: "base2", scope: !2653, file: !3, line: 83, type: !1604)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 85, column: 18, scope: !2653)
!2661 = !DILocation(line: 85, column: 31, scope: !2653)
!2662 = !DILocation(line: 85, column: 21, scope: !2653)
!2663 = !DILocation(line: 85, column: 3, scope: !2653)
!2664 = distinct !DISubprogram(name: "lto_symtab_resolve_symbols", scope: !3, file: !3, line: 402, type: !2665, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !888}
!2667 = !{!2668, !2669, !2670, !2671}
!2668 = !DILocalVariable(name: "slot", arg: 1, scope: !2664, file: !3, line: 402, type: !888)
!2669 = !DILocalVariable(name: "e", scope: !2664, file: !3, line: 404, type: !1603)
!2670 = !DILocalVariable(name: "prevailing", scope: !2664, file: !3, line: 405, type: !1603)
!2671 = !DILabel(scope: !2664, name: "found", file: !3, line: 471)
!2672 = !DILocation(line: 0, scope: !2664)
!2673 = !DILocation(line: 408, column: 33, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 408, column: 3)
!2675 = !DILocation(line: 408, column: 8, scope: !2674)
!2676 = !DILocation(line: 0, scope: !2674)
!2677 = !DILocation(line: 408, column: 3, scope: !2674)
!2678 = !DILocation(line: 410, column: 11, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 410, column: 11)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 409, column: 5)
!2681 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 408, column: 3)
!2682 = !DILocation(line: 410, column: 31, scope: !2679)
!2683 = !DILocation(line: 410, column: 11, scope: !2680)
!2684 = !DILocation(line: 411, column: 12, scope: !2679)
!2685 = !DILocation(line: 411, column: 5, scope: !2679)
!2686 = !DILocation(line: 411, column: 10, scope: !2679)
!2687 = !DILocation(line: 411, column: 2, scope: !2679)
!2688 = !DILocation(line: 408, column: 50, scope: !2681)
!2689 = !DILocation(line: 408, column: 3, scope: !2681)
!2690 = distinct !{!2690, !2677, !2691}
!2691 = !DILocation(line: 412, column: 5, scope: !2674)
!2692 = !DILocation(line: 414, column: 28, scope: !2664)
!2693 = !DILocation(line: 417, column: 10, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 417, column: 7)
!2695 = !DILocation(line: 417, column: 21, scope: !2694)
!2696 = !DILocation(line: 417, column: 7, scope: !2664)
!2697 = !DILocation(line: 422, column: 8, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 422, column: 3)
!2699 = !DILocation(line: 0, scope: !2698)
!2700 = !DILocation(line: 405, column: 22, scope: !2664)
!2701 = !DILocation(line: 422, column: 3, scope: !2698)
!2702 = !DILocation(line: 424, column: 12, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 424, column: 11)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 423, column: 5)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 422, column: 3)
!2706 = !DILocation(line: 0, scope: !2704)
!2707 = !DILocation(line: 424, column: 11, scope: !2704)
!2708 = !DILocation(line: 426, column: 18, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 425, column: 2)
!2710 = !DILocation(line: 427, column: 4, scope: !2709)
!2711 = !DILocation(line: 432, column: 21, scope: !2704)
!2712 = !DILocation(line: 433, column: 12, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 433, column: 11)
!2714 = !DILocation(line: 433, column: 11, scope: !2704)
!2715 = !DILocation(line: 435, column: 8, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 435, column: 8)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 434, column: 2)
!2718 = !DILocation(line: 435, column: 8, scope: !2717)
!2719 = !DILocation(line: 437, column: 18, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 436, column: 6)
!2721 = !DILocation(line: 437, column: 8, scope: !2720)
!2722 = !DILocation(line: 439, column: 16, scope: !2720)
!2723 = !DILocation(line: 439, column: 8, scope: !2720)
!2724 = !DILocation(line: 441, column: 6, scope: !2720)
!2725 = !DILocation(line: 422, column: 50, scope: !2705)
!2726 = !DILocation(line: 422, column: 3, scope: !2705)
!2727 = distinct !{!2727, !2701, !2728}
!2728 = !DILocation(line: 444, column: 5, scope: !2698)
!2729 = !DILocation(line: 445, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 445, column: 7)
!2731 = !DILocation(line: 445, column: 7, scope: !2664)
!2732 = !DILocation(line: 449, column: 8, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 449, column: 3)
!2734 = !DILocation(line: 0, scope: !2733)
!2735 = !DILocation(line: 449, column: 3, scope: !2733)
!2736 = !DILocation(line: 451, column: 14, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 451, column: 11)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 450, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 449, column: 3)
!2740 = !DILocation(line: 451, column: 25, scope: !2737)
!2741 = !DILocation(line: 451, column: 11, scope: !2738)
!2742 = !DILocation(line: 455, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 455, column: 11)
!2744 = !DILocation(line: 455, column: 31, scope: !2743)
!2745 = !DILocation(line: 455, column: 11, scope: !2738)
!2746 = !DILocation(line: 462, column: 12, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 462, column: 11)
!2748 = !DILocation(line: 463, column: 4, scope: !2747)
!2749 = !DILocation(line: 463, column: 24, scope: !2747)
!2750 = !DILocation(line: 464, column: 10, scope: !2747)
!2751 = !DILocation(line: 463, column: 7, scope: !2747)
!2752 = !DILocation(line: 462, column: 11, scope: !2738)
!2753 = !DILocation(line: 465, column: 2, scope: !2747)
!2754 = !DILocation(line: 449, column: 50, scope: !2739)
!2755 = !DILocation(line: 449, column: 3, scope: !2739)
!2756 = distinct !{!2756, !2735, !2757}
!2757 = !DILocation(line: 466, column: 5, scope: !2733)
!2758 = !DILocation(line: 468, column: 8, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 468, column: 7)
!2760 = !DILocation(line: 468, column: 7, scope: !2664)
!2761 = !DILocation(line: 471, column: 1, scope: !2664)
!2762 = !DILocation(line: 472, column: 7, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 472, column: 7)
!2764 = !DILocation(line: 472, column: 36, scope: !2763)
!2765 = !DILocation(line: 473, column: 7, scope: !2763)
!2766 = !DILocation(line: 473, column: 10, scope: !2763)
!2767 = !DILocation(line: 472, column: 7, scope: !2664)
!2768 = !DILocation(line: 474, column: 17, scope: !2763)
!2769 = !DILocation(line: 474, column: 28, scope: !2763)
!2770 = !DILocation(line: 474, column: 5, scope: !2763)
!2771 = !DILocation(line: 476, column: 17, scope: !2763)
!2772 = !DILocation(line: 476, column: 28, scope: !2763)
!2773 = !DILocation(line: 477, column: 1, scope: !2664)
!2774 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !6, file: !6, line: 183, type: !2775, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!616, !2777, !294}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "vec_", arg: 1, scope: !2774, file: !6, line: 183, type: !2777)
!2780 = !DILocalVariable(name: "obj_", arg: 2, scope: !2774, file: !6, line: 183, type: !294)
!2781 = !DILocation(line: 0, scope: !2774)
!2782 = !DILocation(line: 183, column: 1, scope: !2774)
!2783 = distinct !DISubprogram(name: "lto_symtab_merge_decls_2", scope: !3, file: !3, line: 483, type: !2665, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2785 = !DILocalVariable(name: "slot", arg: 1, scope: !2783, file: !3, line: 483, type: !888)
!2786 = !DILocalVariable(name: "prevailing", scope: !2783, file: !3, line: 485, type: !1603)
!2787 = !DILocalVariable(name: "e", scope: !2783, file: !3, line: 485, type: !1603)
!2788 = !DILocalVariable(name: "mismatches", scope: !2783, file: !3, line: 486, type: !1606)
!2789 = !DILocalVariable(name: "i", scope: !2783, file: !3, line: 487, type: !7)
!2790 = !DILocalVariable(name: "decl", scope: !2783, file: !3, line: 488, type: !294)
!2791 = !DILocalVariable(name: "diagnosed_p", scope: !2783, file: !3, line: 489, type: !286)
!2792 = !DILocation(line: 0, scope: !2783)
!2793 = !DILocation(line: 486, column: 3, scope: !2783)
!2794 = !DILocation(line: 486, column: 20, scope: !2783)
!2795 = !DILocation(line: 488, column: 3, scope: !2783)
!2796 = !DILocation(line: 492, column: 37, scope: !2783)
!2797 = !DILocation(line: 493, column: 20, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 493, column: 7)
!2799 = !DILocation(line: 493, column: 8, scope: !2798)
!2800 = !DILocation(line: 493, column: 7, scope: !2783)
!2801 = !DILocation(line: 497, column: 8, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 497, column: 3)
!2803 = !DILocation(line: 0, scope: !2802)
!2804 = !DILocation(line: 497, column: 3, scope: !2802)
!2805 = !DILocation(line: 499, column: 12, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 499, column: 11)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 498, column: 5)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 497, column: 3)
!2809 = !DILocation(line: 499, column: 11, scope: !2807)
!2810 = !DILocation(line: 500, column: 2, scope: !2806)
!2811 = !DILocation(line: 497, column: 3, scope: !2808)
!2812 = distinct !{!2812, !2804, !2813}
!2813 = !DILocation(line: 501, column: 5, scope: !2802)
!2814 = !DILocation(line: 502, column: 7, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 502, column: 7)
!2816 = !DILocation(line: 502, column: 7, scope: !2783)
!2817 = !DILocation(line: 0, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 508, column: 11)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 507, column: 5)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 506, column: 3)
!2821 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 506, column: 3)
!2822 = !DILocation(line: 506, column: 3, scope: !2821)
!2823 = !DILocation(line: 0, scope: !2821)
!2824 = !DILocation(line: 506, column: 15, scope: !2820)
!2825 = !DILocation(line: 508, column: 11, scope: !2818)
!2826 = !DILocation(line: 508, column: 43, scope: !2818)
!2827 = !DILocation(line: 508, column: 40, scope: !2818)
!2828 = !DILocation(line: 508, column: 11, scope: !2819)
!2829 = !DILocation(line: 509, column: 29, scope: !2818)
!2830 = !DILocation(line: 509, column: 17, scope: !2818)
!2831 = !DILocation(line: 509, column: 14, scope: !2818)
!2832 = !DILocation(line: 509, column: 2, scope: !2818)
!2833 = !DILocation(line: 513, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 513, column: 16)
!2835 = !DILocation(line: 513, column: 52, scope: !2834)
!2836 = !DILocation(line: 513, column: 55, scope: !2834)
!2837 = !DILocation(line: 514, column: 9, scope: !2834)
!2838 = !DILocation(line: 514, column: 12, scope: !2834)
!2839 = !DILocation(line: 514, column: 44, scope: !2834)
!2840 = !DILocation(line: 514, column: 42, scope: !2834)
!2841 = !DILocation(line: 513, column: 16, scope: !2818)
!2842 = !DILocation(line: 516, column: 31, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 515, column: 2)
!2844 = !DILocation(line: 516, column: 19, scope: !2843)
!2845 = !DILocation(line: 516, column: 16, scope: !2843)
!2846 = !DILocation(line: 519, column: 2, scope: !2843)
!2847 = !DILocation(line: 506, column: 56, scope: !2820)
!2848 = !DILocation(line: 506, column: 3, scope: !2820)
!2849 = distinct !{!2849, !2822, !2850}
!2850 = !DILocation(line: 520, column: 5, scope: !2821)
!2851 = !DILocation(line: 521, column: 7, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 521, column: 7)
!2853 = !DILocation(line: 521, column: 7, scope: !2783)
!2854 = !DILocation(line: 522, column: 13, scope: !2852)
!2855 = !DILocation(line: 522, column: 5, scope: !2852)
!2856 = !DILocation(line: 525, column: 3, scope: !2783)
!2857 = !DILocation(line: 526, column: 1, scope: !2783)
!2858 = distinct !DISubprogram(name: "lto_symtab_resolve_can_prevail_p", scope: !3, file: !3, line: 372, type: !2859, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!286, !1603}
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "e", arg: 1, scope: !2858, file: !3, line: 372, type: !1603)
!2863 = !DILocation(line: 0, scope: !2858)
!2864 = !DILocation(line: 377, column: 7, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 377, column: 7)
!2866 = !DILocation(line: 377, column: 7, scope: !2858)
!2867 = !DILocation(line: 381, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 381, column: 7)
!2869 = !DILocation(line: 381, column: 27, scope: !2868)
!2870 = !DILocation(line: 381, column: 7, scope: !2858)
!2871 = !DILocation(line: 382, column: 16, scope: !2868)
!2872 = !DILocation(line: 382, column: 13, scope: !2868)
!2873 = !DILocation(line: 382, column: 21, scope: !2868)
!2874 = !DILocation(line: 382, column: 33, scope: !2868)
!2875 = !DILocation(line: 382, column: 5, scope: !2868)
!2876 = !DILocation(line: 385, column: 32, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 385, column: 12)
!2878 = !DILocation(line: 385, column: 12, scope: !2868)
!2879 = !DILocation(line: 386, column: 13, scope: !2877)
!2880 = !DILocation(line: 386, column: 33, scope: !2877)
!2881 = !DILocation(line: 390, column: 6, scope: !2877)
!2882 = !DILocation(line: 386, column: 5, scope: !2877)
!2883 = !DILocation(line: 392, column: 3, scope: !2858)
!2884 = !DILocation(line: 394, column: 5, scope: !2858)
!2885 = !DILocation(line: 396, column: 1, scope: !2858)
!2886 = distinct !DISubprogram(name: "lto_symtab_resolve_replaceable_p", scope: !3, file: !3, line: 355, type: !2859, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2887)
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "e", arg: 1, scope: !2886, file: !3, line: 355, type: !1603)
!2889 = !DILocation(line: 0, scope: !2886)
!2890 = !DILocation(line: 357, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 357, column: 7)
!2892 = !DILocation(line: 358, column: 7, scope: !2891)
!2893 = !DILocation(line: 358, column: 10, scope: !2891)
!2894 = !DILocation(line: 359, column: 7, scope: !2891)
!2895 = !DILocation(line: 359, column: 10, scope: !2891)
!2896 = !DILocation(line: 357, column: 7, scope: !2886)
!2897 = !DILocation(line: 362, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 362, column: 7)
!2899 = !DILocation(line: 362, column: 27, scope: !2898)
!2900 = !DILocation(line: 362, column: 7, scope: !2886)
!2901 = !DILocation(line: 363, column: 13, scope: !2898)
!2902 = !DILocation(line: 364, column: 6, scope: !2898)
!2903 = !DILocation(line: 364, column: 11, scope: !2898)
!2904 = !DILocation(line: 364, column: 26, scope: !2898)
!2905 = !DILocation(line: 364, column: 30, scope: !2898)
!2906 = !DILocation(line: 364, column: 29, scope: !2898)
!2907 = !DILocation(line: 363, column: 5, scope: !2898)
!2908 = !DILocation(line: 367, column: 1, scope: !2886)
!2909 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !6, file: !6, line: 183, type: !2910, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!287, !2777, !287}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "vec_", arg: 1, scope: !2909, file: !6, line: 183, type: !2777)
!2914 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2909, file: !6, line: 183, type: !287)
!2915 = !DILocalVariable(name: "extend", scope: !2909, file: !6, line: 183, type: !287)
!2916 = !DILocation(line: 0, scope: !2909)
!2917 = !DILocation(line: 183, column: 1, scope: !2909)
!2918 = !DILocation(line: 183, column: 1, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2909, file: !6, line: 183, column: 1)
!2920 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !6, file: !6, line: 182, type: !2921, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2924)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!616, !2923, !294}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "vec_", arg: 1, scope: !2920, file: !6, line: 182, type: !2923)
!2926 = !DILocalVariable(name: "obj_", arg: 2, scope: !2920, file: !6, line: 182, type: !294)
!2927 = !DILocalVariable(name: "slot_", scope: !2920, file: !6, line: 182, type: !616)
!2928 = !DILocation(line: 0, scope: !2920)
!2929 = !DILocation(line: 182, column: 1, scope: !2920)
!2930 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !6, file: !6, line: 182, type: !2931, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!287, !2923, !287}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "vec_", arg: 1, scope: !2930, file: !6, line: 182, type: !2923)
!2935 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2930, file: !6, line: 182, type: !287)
!2936 = !DILocation(line: 0, scope: !2930)
!2937 = !DILocation(line: 182, column: 1, scope: !2930)
!2938 = distinct !DISubprogram(name: "lto_symtab_merge", scope: !3, file: !3, line: 252, type: !2939, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!286, !1603, !1603}
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2953}
!2942 = !DILocalVariable(name: "prevailing", arg: 1, scope: !2938, file: !3, line: 252, type: !1603)
!2943 = !DILocalVariable(name: "entry", arg: 2, scope: !2938, file: !3, line: 252, type: !1603)
!2944 = !DILocalVariable(name: "prevailing_decl", scope: !2938, file: !3, line: 254, type: !294)
!2945 = !DILocalVariable(name: "decl", scope: !2938, file: !3, line: 255, type: !294)
!2946 = !DILocalVariable(name: "prevailing_type", scope: !2938, file: !3, line: 256, type: !294)
!2947 = !DILocalVariable(name: "type", scope: !2938, file: !3, line: 256, type: !294)
!2948 = !DILocalVariable(name: "tem1", scope: !2949, file: !3, line: 314, type: !294)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 313, column: 2)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 312, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 302, column: 5)
!2952 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 301, column: 7)
!2953 = !DILocalVariable(name: "tem2", scope: !2949, file: !3, line: 315, type: !294)
!2954 = !DILocation(line: 0, scope: !2938)
!2955 = !DILocation(line: 254, column: 38, scope: !2938)
!2956 = !DILocation(line: 255, column: 22, scope: !2938)
!2957 = !DILocation(line: 260, column: 41, scope: !2938)
!2958 = !DILocation(line: 260, column: 3, scope: !2938)
!2959 = !DILocation(line: 260, column: 38, scope: !2938)
!2960 = !DILocation(line: 261, column: 27, scope: !2938)
!2961 = !DILocation(line: 266, column: 24, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 266, column: 7)
!2963 = !DILocation(line: 266, column: 7, scope: !2938)
!2964 = !DILocation(line: 277, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 267, column: 5)
!2966 = !DILocation(line: 294, column: 21, scope: !2938)
!2967 = !DILocation(line: 295, column: 10, scope: !2938)
!2968 = !DILocation(line: 299, column: 21, scope: !2938)
!2969 = !DILocation(line: 300, column: 10, scope: !2938)
!2970 = !DILocation(line: 301, column: 23, scope: !2952)
!2971 = !DILocation(line: 301, column: 7, scope: !2938)
!2972 = !DILocation(line: 303, column: 11, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 303, column: 11)
!2974 = !DILocation(line: 303, column: 11, scope: !2951)
!2975 = !DILocation(line: 309, column: 11, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 309, column: 11)
!2977 = !DILocation(line: 309, column: 42, scope: !2976)
!2978 = !DILocation(line: 309, column: 39, scope: !2976)
!2979 = !DILocation(line: 309, column: 11, scope: !2951)
!2980 = !DILocation(line: 312, column: 39, scope: !2950)
!2981 = !DILocation(line: 312, column: 11, scope: !2951)
!2982 = !DILocation(line: 316, column: 4, scope: !2949)
!2983 = !DILocation(line: 0, scope: !2949)
!2984 = !DILocation(line: 316, column: 11, scope: !2949)
!2985 = !DILocation(line: 316, column: 28, scope: !2949)
!2986 = !DILocation(line: 317, column: 4, scope: !2949)
!2987 = !DILocation(line: 0, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 323, column: 8)
!2989 = !DILocation(line: 323, column: 28, scope: !2988)
!2990 = !DILocation(line: 317, column: 7, scope: !2949)
!2991 = !DILocation(line: 317, column: 24, scope: !2949)
!2992 = distinct !{!2992, !2982, !2993}
!2993 = !DILocation(line: 321, column: 6, scope: !2949)
!2994 = !DILocation(line: 323, column: 25, scope: !2988)
!2995 = !DILocation(line: 323, column: 8, scope: !2949)
!2996 = !DILocation(line: 326, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 326, column: 8)
!2998 = !DILocation(line: 326, column: 39, scope: !2997)
!2999 = !DILocation(line: 326, column: 36, scope: !2997)
!3000 = !DILocation(line: 0, scope: !2950)
!3001 = !DILocation(line: 344, column: 8, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 344, column: 7)
!3003 = !DILocation(line: 344, column: 42, scope: !3002)
!3004 = !DILocation(line: 344, column: 45, scope: !3002)
!3005 = !DILocation(line: 345, column: 7, scope: !3002)
!3006 = !DILocation(line: 345, column: 10, scope: !3002)
!3007 = !DILocation(line: 345, column: 41, scope: !3002)
!3008 = !DILocation(line: 345, column: 39, scope: !3002)
!3009 = !DILocation(line: 344, column: 7, scope: !2938)
!3010 = !DILocation(line: 348, column: 3, scope: !2938)
!3011 = !DILocation(line: 349, column: 1, scope: !2938)
!3012 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !6, file: !6, line: 184, type: !3013, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!616, !3015, !294}
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "vec_", arg: 1, scope: !3012, file: !6, line: 184, type: !3015)
!3018 = !DILocalVariable(name: "obj_", arg: 2, scope: !3012, file: !6, line: 184, type: !294)
!3019 = !DILocation(line: 0, scope: !3012)
!3020 = !DILocation(line: 184, column: 1, scope: !3012)
!3021 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !6, file: !6, line: 182, type: !3022, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!7, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "vec_", arg: 1, scope: !3021, file: !6, line: 182, type: !3024)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocation(line: 182, column: 1, scope: !3021)
!3030 = distinct !DISubprogram(name: "VEC_tree_base_iterate", scope: !6, file: !6, line: 182, type: !3031, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!287, !3024, !7, !616}
!3033 = !{!3034, !3035, !3036}
!3034 = !DILocalVariable(name: "vec_", arg: 1, scope: !3030, file: !6, line: 182, type: !3024)
!3035 = !DILocalVariable(name: "ix_", arg: 2, scope: !3030, file: !6, line: 182, type: !7)
!3036 = !DILocalVariable(name: "ptr", arg: 3, scope: !3030, file: !6, line: 182, type: !616)
!3037 = !DILocation(line: 0, scope: !3030)
!3038 = !DILocation(line: 182, column: 1, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3030, file: !6, line: 182, column: 1)
!3040 = !DILocation(line: 182, column: 1, scope: !3030)
!3041 = !DILocation(line: 182, column: 1, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !6, line: 182, column: 1)
!3043 = !DILocation(line: 182, column: 1, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !6, line: 182, column: 1)
!3045 = !DILocation(line: 0, scope: !3039)
!3046 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !6, file: !6, line: 184, type: !3047, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !3015}
!3049 = !{!3050}
!3050 = !DILocalVariable(name: "vec_", arg: 1, scope: !3046, file: !6, line: 184, type: !3015)
!3051 = !DILocation(line: 0, scope: !3046)
!3052 = !DILocation(line: 184, column: 1, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3046, file: !6, line: 184, column: 1)
!3054 = !DILocation(line: 184, column: 1, scope: !3046)
!3055 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !6, file: !6, line: 184, type: !3056, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!287, !3015, !287}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "vec_", arg: 1, scope: !3055, file: !6, line: 184, type: !3015)
!3060 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3055, file: !6, line: 184, type: !287)
!3061 = !DILocalVariable(name: "extend", scope: !3055, file: !6, line: 184, type: !287)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocation(line: 184, column: 1, scope: !3055)
!3064 = !DILocation(line: 184, column: 1, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3055, file: !6, line: 184, column: 1)
!3066 = distinct !DISubprogram(name: "lto_cgraph_replace_node", scope: !3, file: !3, line: 192, type: !3067, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !1357, !1357}
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3077}
!3070 = !DILocalVariable(name: "node", arg: 1, scope: !3066, file: !3, line: 192, type: !1357)
!3071 = !DILocalVariable(name: "prevailing_node", arg: 2, scope: !3066, file: !3, line: 193, type: !1357)
!3072 = !DILocalVariable(name: "e", scope: !3066, file: !3, line: 195, type: !1362)
!3073 = !DILocalVariable(name: "next", scope: !3066, file: !3, line: 195, type: !1362)
!3074 = !DILocalVariable(name: "alias", scope: !3075, file: !3, line: 226, type: !1357)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 225, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 224, column: 7)
!3077 = !DILocalVariable(name: "se", scope: !3078, file: !3, line: 231, type: !1603)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 230, column: 4)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 229, column: 6)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 228, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 228, column: 7)
!3082 = !DILocation(line: 0, scope: !3066)
!3083 = !DILocation(line: 198, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 198, column: 7)
!3085 = !DILocation(line: 198, column: 7, scope: !3084)
!3086 = !DILocation(line: 198, column: 7, scope: !3066)
!3087 = !DILocation(line: 199, column: 5, scope: !3084)
!3088 = !DILocation(line: 200, column: 13, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 200, column: 7)
!3090 = !DILocation(line: 200, column: 7, scope: !3089)
!3091 = !DILocation(line: 200, column: 7, scope: !3066)
!3092 = !DILocation(line: 201, column: 5, scope: !3089)
!3093 = !DILocation(line: 202, column: 13, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 202, column: 7)
!3095 = !DILocation(line: 202, column: 7, scope: !3094)
!3096 = !DILocation(line: 202, column: 7, scope: !3066)
!3097 = !DILocation(line: 204, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 203, column: 5)
!3099 = !DILocation(line: 205, column: 7, scope: !3098)
!3100 = !DILocation(line: 206, column: 5, scope: !3098)
!3101 = !DILocation(line: 209, column: 18, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 209, column: 3)
!3103 = !DILocation(line: 209, column: 8, scope: !3102)
!3104 = !DILocation(line: 0, scope: !3102)
!3105 = !DILocation(line: 209, column: 3, scope: !3102)
!3106 = !DILocation(line: 211, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 210, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 209, column: 3)
!3109 = !DILocation(line: 212, column: 7, scope: !3107)
!3110 = !DILocation(line: 209, column: 3, scope: !3108)
!3111 = distinct !{!3111, !3105, !3112}
!3112 = !DILocation(line: 213, column: 5, scope: !3102)
!3113 = !DILocation(line: 218, column: 18, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 218, column: 3)
!3115 = !DILocation(line: 218, column: 8, scope: !3114)
!3116 = !DILocation(line: 0, scope: !3114)
!3117 = !DILocation(line: 218, column: 3, scope: !3114)
!3118 = !DILocation(line: 220, column: 17, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 219, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 218, column: 3)
!3121 = !DILocation(line: 221, column: 7, scope: !3119)
!3122 = !DILocation(line: 218, column: 3, scope: !3120)
!3123 = distinct !{!3123, !3117, !3124}
!3124 = !DILocation(line: 222, column: 5, scope: !3114)
!3125 = !DILocation(line: 224, column: 13, scope: !3076)
!3126 = !DILocation(line: 224, column: 7, scope: !3076)
!3127 = !DILocation(line: 224, column: 7, scope: !3066)
!3128 = !DILocation(line: 228, column: 12, scope: !3081)
!3129 = !DILocation(line: 0, scope: !3081)
!3130 = !DILocation(line: 0, scope: !3075)
!3131 = !DILocation(line: 228, column: 7, scope: !3081)
!3132 = !DILocation(line: 229, column: 6, scope: !3079)
!3133 = !DILocation(line: 229, column: 6, scope: !3080)
!3134 = !DILocation(line: 232, column: 26, scope: !3078)
!3135 = !DILocation(line: 232, column: 10, scope: !3078)
!3136 = !DILocation(line: 0, scope: !3078)
!3137 = !DILocation(line: 234, column: 6, scope: !3078)
!3138 = !DILocation(line: 234, column: 6, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 234, column: 6)
!3140 = !DILocation(line: 235, column: 16, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 235, column: 12)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 234, column: 6)
!3143 = !DILocation(line: 235, column: 21, scope: !3141)
!3144 = !DILocation(line: 235, column: 12, scope: !3142)
!3145 = !DILocation(line: 237, column: 14, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 236, column: 3)
!3147 = !DILocation(line: 238, column: 5, scope: !3146)
!3148 = !DILocation(line: 234, column: 26, scope: !3142)
!3149 = !DILocation(line: 234, column: 6, scope: !3142)
!3150 = distinct !{!3150, !3138, !3151}
!3151 = !DILocation(line: 239, column: 3, scope: !3139)
!3152 = !DILocation(line: 228, column: 59, scope: !3080)
!3153 = !DILocation(line: 228, column: 7, scope: !3080)
!3154 = distinct !{!3154, !3131, !3155}
!3155 = !DILocation(line: 240, column: 4, scope: !3081)
!3156 = !DILocation(line: 244, column: 3, scope: !3066)
!3157 = !DILocation(line: 245, column: 1, scope: !3066)
