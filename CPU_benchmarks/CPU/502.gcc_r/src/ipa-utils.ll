; ModuleID = 'ipa-utils.bc'
source_filename = "ipa-utils.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cgraph_node = type { %union.tree_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_node*, %struct.htab*, i8*, %struct.VEC_ipa_opt_pass_heap*, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
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
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%struct.pt_solution = type { i8, %struct.bitmap_head_def* }
%struct.pointer_map_t = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %struct.cgraph_edge*, %union.gimple_statement_d*, i8*, i32, i32, i32, i32, i16, i8 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.VEC_ipa_opt_pass_heap = type { %struct.VEC_ipa_opt_pass_base }
%struct.VEC_ipa_opt_pass_base = type { i32, i32, [1 x %struct.ipa_opt_pass_d*] }
%struct.ipa_opt_pass_d = type { %struct.opt_pass, void ()*, void (%struct.cgraph_node_set_def*)*, void ()*, void (%struct.cgraph_node*)*, void (%struct.cgraph_node*, %union.gimple_statement_d**)*, i32, i32 (%struct.cgraph_node*)*, void (%struct.varpool_node*)* }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cgraph_node_set_def = type { %struct.htab*, %struct.VEC_cgraph_node_ptr_gc*, i8* }
%struct.VEC_cgraph_node_ptr_gc = type { %struct.VEC_cgraph_node_ptr_base }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x %struct.cgraph_node*] }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.cgraph_local_info = type { %struct.lto_file_decl_data*, %struct.inline_summary, i8 }
%struct.lto_file_decl_data = type opaque
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, %struct.cgraph_node*, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { %struct.VEC_ipa_replace_map_p_gc*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.VEC_ipa_replace_map_p_gc = type { %struct.VEC_ipa_replace_map_p_base }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x %struct.ipa_replace_map*] }
%struct.ipa_replace_map = type { %union.tree_node*, %union.tree_node*, i8, i8 }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.searchc_env = type { %struct.cgraph_node**, i32, %struct.cgraph_node**, i32, %struct.splay_tree_s*, i8, i32 }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, %struct.cgraph_node*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0A\0A ordered call graph: %s\0A\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1906, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1907, metadata !DIExpression()), !dbg !1908
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1909
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1910
  ret i32 %call, !dbg !1911
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1912 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1916
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1917
  ret i32 %call, !dbg !1918
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1973, metadata !DIExpression()), !dbg !1974
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1975
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1975
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1975
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1975
  %cmp = icmp uge i8* %0, %1, !dbg !1975
  %conv1 = zext i1 %cmp to i64, !dbg !1975
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1975
  %tobool = icmp eq i64 %expval, 0, !dbg !1975
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1975

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1975
  br label %cond.end, !dbg !1975

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1975
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1975
  %2 = load i8, i8* %0, align 1, !dbg !1975
  %conv3 = zext i8 %2 to i32, !dbg !1975
  br label %cond.end, !dbg !1975

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1975
  ret i32 %cond, !dbg !1976
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1979, metadata !DIExpression()), !dbg !1980
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1981
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1981
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1981
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1981
  %cmp = icmp uge i8* %0, %1, !dbg !1981
  %conv1 = zext i1 %cmp to i64, !dbg !1981
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1981
  %tobool = icmp eq i64 %expval, 0, !dbg !1981
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1981

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1981
  br label %cond.end, !dbg !1981

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1981
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1981
  %2 = load i8, i8* %0, align 1, !dbg !1981
  %conv3 = zext i8 %2 to i32, !dbg !1981
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1981
  ret i32 %cond, !dbg !1982
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1983 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1984
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1984
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1984
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1984
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1984
  %cmp = icmp uge i8* %1, %2, !dbg !1984
  %conv1 = zext i1 %cmp to i64, !dbg !1984
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1984
  %tobool = icmp eq i64 %expval, 0, !dbg !1984
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1984

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1984
  br label %cond.end, !dbg !1984

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1984
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1984
  %3 = load i8, i8* %1, align 1, !dbg !1984
  %conv3 = zext i8 %3 to i32, !dbg !1984
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1984
  ret i32 %cond, !dbg !1985
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1986 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1992
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1993
  ret i32 %call, !dbg !1994
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2000, metadata !DIExpression()), !dbg !2001
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2002
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2002
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2002
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2002
  %cmp = icmp uge i8* %0, %1, !dbg !2002
  %conv1 = zext i1 %cmp to i64, !dbg !2002
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2002
  %tobool = icmp eq i64 %expval, 0, !dbg !2002
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2002

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2002
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2002
  br label %cond.end, !dbg !2002

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2002
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2002
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2002
  store i8 %conv2, i8* %0, align 1, !dbg !2002
  %conv6 = and i32 %__c, 255, !dbg !2002
  br label %cond.end, !dbg !2002

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2002
  ret i32 %cond, !dbg !2003
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2007, metadata !DIExpression()), !dbg !2008
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2009
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2009
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2009
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2009
  %cmp = icmp uge i8* %0, %1, !dbg !2009
  %conv1 = zext i1 %cmp to i64, !dbg !2009
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2009
  %tobool = icmp eq i64 %expval, 0, !dbg !2009
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2009

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2009
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2009
  br label %cond.end, !dbg !2009

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2009
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2009
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2009
  store i8 %conv2, i8* %0, align 1, !dbg !2009
  %conv6 = and i32 %__c, 255, !dbg !2009
  br label %cond.end, !dbg !2009

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2009
  ret i32 %cond, !dbg !2010
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2015
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2015
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2015
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2015
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2015
  %cmp = icmp uge i8* %1, %2, !dbg !2015
  %conv1 = zext i1 %cmp to i64, !dbg !2015
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2015
  %tobool = icmp eq i64 %expval, 0, !dbg !2015
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2015

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2015
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2015
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2015
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2015
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2015
  store i8 %conv4, i8* %1, align 1, !dbg !2015
  %conv6 = and i32 %__c, 255, !dbg !2015
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2015
  ret i32 %cond, !dbg !2016
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2025, metadata !DIExpression()), !dbg !2026
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2027
  ret i64 %call, !dbg !2028
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2031, metadata !DIExpression()), !dbg !2032
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2033
  %0 = load i32, i32* %_flags, align 8, !dbg !2033
  %and = lshr i32 %0, 4, !dbg !2033
  %and.lobit = and i32 %and, 1, !dbg !2033
  ret i32 %and.lobit, !dbg !2034
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2037, metadata !DIExpression()), !dbg !2038
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2039
  %0 = load i32, i32* %_flags, align 8, !dbg !2039
  %and = lshr i32 %0, 5, !dbg !2039
  %and.lobit = and i32 %and, 1, !dbg !2039
  ret i32 %and.lobit, !dbg !2040
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2044, metadata !DIExpression()), !dbg !2045
  %__c.off = add i32 %__c, 128, !dbg !2046
  %0 = icmp ult i32 %__c.off, 384, !dbg !2046
  br i1 %0, label %cond.true, label %cond.end, !dbg !2046

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2047
  %1 = load i32*, i32** %call, align 8, !dbg !2048
  %idxprom = sext i32 %__c to i64, !dbg !2049
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2049
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2049
  br label %cond.end, !dbg !2050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2050
  ret i32 %cond, !dbg !2051
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2052 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2054, metadata !DIExpression()), !dbg !2055
  %__c.off = add i32 %__c, 128, !dbg !2056
  %0 = icmp ult i32 %__c.off, 384, !dbg !2056
  br i1 %0, label %cond.true, label %cond.end, !dbg !2056

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2057
  %1 = load i32*, i32** %call, align 8, !dbg !2058
  %idxprom = sext i32 %__c to i64, !dbg !2059
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2059
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2059
  br label %cond.end, !dbg !2060

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2060
  ret i32 %cond, !dbg !2061
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2062 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2067, metadata !DIExpression()), !dbg !2068
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2069
  %conv = trunc i64 %call to i32, !dbg !2070
  ret i32 %conv, !dbg !2071
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2076, metadata !DIExpression()), !dbg !2077
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2078
  ret i64 %call, !dbg !2079
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2087
  ret i64 %call, !dbg !2088
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2095, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2099, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 0, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2101, metadata !DIExpression()), !dbg !2105
  br label %while.cond, !dbg !2106

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2107
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2100, metadata !DIExpression()), !dbg !2105
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2108
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2106

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2109
  %div = lshr i64 %add, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %div, metadata !2102, metadata !DIExpression()), !dbg !2105
  %mul = mul i64 %div, %__size, !dbg !2112
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2113
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2103, metadata !DIExpression()), !dbg !2105
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %call, metadata !2104, metadata !DIExpression()), !dbg !2105
  %cmp1 = icmp slt i32 %call, 0, !dbg !2115
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2117

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2118
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2120

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2100, metadata !DIExpression()), !dbg !2105
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2105
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2100, metadata !DIExpression()), !dbg !2105
  br label %while.cond, !dbg !2106, !llvm.loop !2122

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2105
  ret i8* %retval.0, !dbg !2124
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2131, metadata !DIExpression()), !dbg !2132
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2133
  ret double %call, !dbg !2134
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %base, metadata !2146, metadata !DIExpression()), !dbg !2147
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2148
  ret i64 %call, !dbg !2149
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %base, metadata !2158, metadata !DIExpression()), !dbg !2159
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2160
  ret i64 %call, !dbg !2161
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2162 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %base, metadata !2175, metadata !DIExpression()), !dbg !2176
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2177
  ret i64 %call, !dbg !2178
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %base, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2187
  ret i64 %call, !dbg !2188
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2231, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2232, metadata !DIExpression()), !dbg !2233
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2234
  ret i32 %call, !dbg !2235
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2236 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2239, metadata !DIExpression()), !dbg !2240
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2241
  ret i32 %call, !dbg !2242
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2243 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2248, metadata !DIExpression()), !dbg !2249
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2250
  ret i32 %call, !dbg !2251
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2261
  ret i32 %call, !dbg !2262
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2263 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2269, metadata !DIExpression()), !dbg !2270
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2269, metadata !DIExpression(DW_OP_deref)), !dbg !2270
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2271
  ret i32 %call, !dbg !2272
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2273 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2278, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2279, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2280, metadata !DIExpression()), !dbg !2281
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2280, metadata !DIExpression(DW_OP_deref)), !dbg !2281
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2282
  ret i32 %call, !dbg !2283
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2284 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2309, metadata !DIExpression()), !dbg !2310
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2311
  ret i32 %call, !dbg !2312
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2316, metadata !DIExpression()), !dbg !2317
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2318
  ret i32 %call, !dbg !2319
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2325, metadata !DIExpression()), !dbg !2326
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2327
  ret i32 %call, !dbg !2328
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2329 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2333, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2334, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2335, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2336, metadata !DIExpression()), !dbg !2337
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2338
  ret i32 %call, !dbg !2339
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ipa_utils_print_order(%struct._IO_FILE* %out, i8* %note, %struct.cgraph_node** %order, i32 %count) local_unnamed_addr #4 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, metadata !2344, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %note, metadata !2345, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %order, metadata !2346, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 %count, metadata !2347, metadata !DIExpression()), !dbg !2349
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %note) #6, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %count, metadata !2348, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2349
  %0 = sext i32 %count to i64, !dbg !2351
  br label %for.cond, !dbg !2351

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %0, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2353
  call void @llvm.dbg.value(metadata i32 undef, metadata !2348, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2349
  %cmp = icmp sgt i64 %indvars.iv, 0, !dbg !2354
  br i1 %cmp, label %for.body, label %for.end, !dbg !2356

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2357
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %order, i64 %indvars.iv.next, !dbg !2358
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2358
  tail call void @dump_cgraph_node(%struct._IO_FILE* %1, %struct.cgraph_node* %2) #6, !dbg !2359
  call void @llvm.dbg.value(metadata i32 undef, metadata !2348, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2349
  br label %for.cond, !dbg !2360, !llvm.loop !2361

for.end:                                          ; preds = %for.cond
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2363
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %out) #6, !dbg !2364
  ret void, !dbg !2365
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @dump_cgraph_node(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #1

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ipa_utils_reduced_inorder(%struct.cgraph_node** %order, i8 zeroext %reduce, i8 zeroext %allow_overwritable, i8 (%struct.cgraph_edge*)* %ignore_edge) local_unnamed_addr #4 !dbg !2366 {
entry:
  %env = alloca %struct.searchc_env, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %order, metadata !2373, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %reduce, metadata !2374, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %allow_overwritable, metadata !2375, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 (%struct.cgraph_edge*)* %ignore_edge, metadata !2376, metadata !DIExpression()), !dbg !2432
  %0 = bitcast %struct.searchc_env* %env to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !2433
  %1 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !2434
  %conv = sext i32 %1 to i64, !dbg !2434
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2434
  %2 = bitcast %struct.searchc_env* %env to i8**, !dbg !2435
  store i8* %call, i8** %2, align 8, !dbg !2435
  %stack_size = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 1, !dbg !2436
  store i32 0, i32* %stack_size, align 8, !dbg !2437
  %result1 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 2, !dbg !2438
  store %struct.cgraph_node** %order, %struct.cgraph_node*** %result1, align 8, !dbg !2439
  %order_pos = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 3, !dbg !2440
  store i32 0, i32* %order_pos, align 8, !dbg !2441
  %call2 = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* nonnull @splay_tree_compare_ints, void (i64)* null, void (i64)* null) #6, !dbg !2442
  %nodes_marked_new = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 4, !dbg !2443
  store %struct.splay_tree_s* %call2, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2444
  %count = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 6, !dbg !2445
  store i32 1, i32* %count, align 4, !dbg !2446
  %reduce3 = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 5, !dbg !2447
  store i8 %reduce, i8* %reduce3, align 8, !dbg !2448
  %tobool7 = icmp eq i8 %allow_overwritable, 0, !dbg !2449
  br i1 %tobool7, label %entry.entry.split_crit_edge, label %entry.split.us, !dbg !2450

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !2450

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !2450

for.cond.us:                                      ; preds = %for.inc.us, %entry.split.us
  %3 = phi %struct.splay_tree_s* [ %call2, %entry.split.us ], [ %10, %for.inc.us ]
  %node.0.in.us = phi %struct.cgraph_node** [ @cgraph_nodes, %entry.split.us ], [ %next.us, %for.inc.us ]
  %node.0.us = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in.us, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0.us, metadata !2377, metadata !DIExpression()), !dbg !2432
  %tobool.us = icmp eq %struct.cgraph_node* %node.0.us, null, !dbg !2452
  br i1 %tobool.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !2452

for.body.us:                                      ; preds = %for.cond.us
  %call4.us = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.0.us) #6, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %call4.us, metadata !2425, metadata !DIExpression()), !dbg !2454
  %cmp.us = icmp ugt i32 %call4.us, 2, !dbg !2455
  br i1 %cmp.us, label %if.then.us, label %lor.lhs.false.us, !dbg !2456

lor.lhs.false.us:                                 ; preds = %for.body.us
  %cmp8.us = icmp eq i32 %call4.us, 2, !dbg !2457
  br i1 %cmp8.us, label %if.then.us, label %if.else.us, !dbg !2458

if.else.us:                                       ; preds = %lor.lhs.false.us
  %aux17.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 16, !dbg !2459
  store i8* null, i8** %aux17.us, align 8, !dbg !2460
  br label %for.inc.us

if.then.us:                                       ; preds = %lor.lhs.false.us, %for.body.us
  %aux.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 16, !dbg !2461
  %4 = bitcast i8** %aux.us to %struct.ipa_dfs_info**, !dbg !2461
  %5 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %4, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %5, metadata !2429, metadata !DIExpression()), !dbg !2462
  %tobool10.us = icmp eq %struct.ipa_dfs_info* %5, null, !dbg !2463
  br i1 %tobool10.us, label %if.then11.us, label %if.end.us, !dbg !2465

if.then11.us:                                     ; preds = %if.then.us
  %call12.us = tail call i8* @xcalloc(i64 1, i64 32) #6, !dbg !2466
  %6 = bitcast i8* %call12.us to %struct.ipa_dfs_info*, !dbg !2466
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %6, metadata !2429, metadata !DIExpression()), !dbg !2462
  br label %if.end.us, !dbg !2467

if.end.us:                                        ; preds = %if.then11.us, %if.then.us
  %info.0.us = phi %struct.ipa_dfs_info* [ %5, %if.then.us ], [ %6, %if.then11.us ], !dbg !2462
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %info.0.us, metadata !2429, metadata !DIExpression()), !dbg !2462
  %new_node.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0.us, i64 0, i32 2, !dbg !2468
  store i8 1, i8* %new_node.us, align 8, !dbg !2469
  %on_stack.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0.us, i64 0, i32 3, !dbg !2470
  store i8 0, i8* %on_stack.us, align 1, !dbg !2471
  %next_cycle.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0.us, i64 0, i32 4, !dbg !2472
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_cycle.us, align 8, !dbg !2473
  store %struct.ipa_dfs_info* %info.0.us, %struct.ipa_dfs_info** %4, align 8, !dbg !2474
  %7 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2475
  %uid.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 24, !dbg !2476
  %8 = load i32, i32* %uid.us, align 8, !dbg !2476
  %conv15.us = sext i32 %8 to i64, !dbg !2477
  %9 = ptrtoint %struct.cgraph_node* %node.0.us to i64, !dbg !2478
  %call16.us = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %7, i64 %conv15.us, i64 %9) #6, !dbg !2479
  br label %for.inc.us, !dbg !2480

for.inc.us:                                       ; preds = %if.end.us, %if.else.us
  %10 = phi %struct.splay_tree_s* [ %7, %if.end.us ], [ %3, %if.else.us ]
  %next.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 3, !dbg !2481
  br label %for.cond.us, !dbg !2482, !llvm.loop !2483

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %.lcssa3 = phi %struct.splay_tree_s* [ %3, %for.cond.us ]
  br label %for.end, !dbg !2485

for.cond:                                         ; preds = %for.inc, %entry.entry.split_crit_edge
  %11 = phi %struct.splay_tree_s* [ %call2, %entry.entry.split_crit_edge ], [ %18, %for.inc ]
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry.entry.split_crit_edge ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2451
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2377, metadata !DIExpression()), !dbg !2432
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2452
  br i1 %tobool, label %for.end.us-lcssa, label %for.body, !dbg !2452

for.body:                                         ; preds = %for.cond
  %call4 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* nonnull %node.0) #6, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %call4, metadata !2425, metadata !DIExpression()), !dbg !2454
  %cmp = icmp ugt i32 %call4, 2, !dbg !2455
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2456

lor.lhs.false:                                    ; preds = %for.body
  %aux17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !2459
  store i8* null, i8** %aux17, align 8, !dbg !2460
  br label %for.inc

if.then:                                          ; preds = %for.body
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !2461
  %12 = bitcast i8** %aux to %struct.ipa_dfs_info**, !dbg !2461
  %13 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %12, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %13, metadata !2429, metadata !DIExpression()), !dbg !2462
  %tobool10 = icmp eq %struct.ipa_dfs_info* %13, null, !dbg !2463
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !2465

if.then11:                                        ; preds = %if.then
  %call12 = tail call i8* @xcalloc(i64 1, i64 32) #6, !dbg !2466
  %14 = bitcast i8* %call12 to %struct.ipa_dfs_info*, !dbg !2466
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %14, metadata !2429, metadata !DIExpression()), !dbg !2462
  br label %if.end, !dbg !2467

if.end:                                           ; preds = %if.then, %if.then11
  %info.0 = phi %struct.ipa_dfs_info* [ %13, %if.then ], [ %14, %if.then11 ], !dbg !2462
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %info.0, metadata !2429, metadata !DIExpression()), !dbg !2462
  %new_node = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0, i64 0, i32 2, !dbg !2468
  store i8 1, i8* %new_node, align 8, !dbg !2469
  %on_stack = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0, i64 0, i32 3, !dbg !2470
  store i8 0, i8* %on_stack, align 1, !dbg !2471
  %next_cycle = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %info.0, i64 0, i32 4, !dbg !2472
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_cycle, align 8, !dbg !2473
  store %struct.ipa_dfs_info* %info.0, %struct.ipa_dfs_info** %12, align 8, !dbg !2474
  %15 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2475
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 24, !dbg !2476
  %16 = load i32, i32* %uid, align 8, !dbg !2476
  %conv15 = sext i32 %16 to i64, !dbg !2477
  %17 = ptrtoint %struct.cgraph_node* %node.0 to i64, !dbg !2478
  %call16 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %15, i64 %conv15, i64 %17) #6, !dbg !2479
  br label %for.inc, !dbg !2480

for.inc:                                          ; preds = %if.end, %lor.lhs.false
  %18 = phi %struct.splay_tree_s* [ %15, %if.end ], [ %11, %lor.lhs.false ]
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2481
  br label %for.cond, !dbg !2482, !llvm.loop !2483

for.end.us-lcssa:                                 ; preds = %for.cond
  %.lcssa = phi %struct.splay_tree_s* [ %11, %for.cond ]
  br label %for.end, !dbg !2485

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %19 = phi %struct.splay_tree_s* [ %.lcssa3, %for.end.us-lcssa.us ], [ %.lcssa, %for.end.us-lcssa ], !dbg !2485
  %call20 = tail call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %19) #6, !dbg !2486
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call20, metadata !2424, metadata !DIExpression()), !dbg !2432
  br label %while.cond, !dbg !2487

while.cond:                                       ; preds = %while.body, %for.end
  %result.0 = phi %struct.splay_tree_node_s* [ %call20, %for.end ], [ %call23, %while.body ], !dbg !2432
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %result.0, metadata !2424, metadata !DIExpression()), !dbg !2432
  %tobool21 = icmp eq %struct.splay_tree_node_s* %result.0, null, !dbg !2487
  br i1 %tobool21, label %while.end, label %while.body, !dbg !2487

while.body:                                       ; preds = %while.cond
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %result.0, i64 0, i32 1, !dbg !2488
  %20 = bitcast i64* %value to %struct.cgraph_node**, !dbg !2488
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %20, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %21, metadata !2377, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.searchc_env* %env, metadata !2378, metadata !DIExpression(DW_OP_deref)), !dbg !2432
  call fastcc void @searchc(%struct.searchc_env* nonnull %env, %struct.cgraph_node* %21, i8 (%struct.cgraph_edge*)* %ignore_edge) #8, !dbg !2490
  %22 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2491
  %call23 = call %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %22) #6, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call23, metadata !2424, metadata !DIExpression()), !dbg !2432
  br label %while.cond, !dbg !2487, !llvm.loop !2493

while.end:                                        ; preds = %while.cond
  %23 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2495
  call void @splay_tree_delete(%struct.splay_tree_s* %23) #6, !dbg !2496
  %24 = load i8*, i8** %2, align 8, !dbg !2497
  call void @free(i8* %24) #6, !dbg !2498
  %25 = load i32, i32* %order_pos, align 8, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !2500
  ret i32 %25, !dbg !2501
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) local_unnamed_addr #1

declare dso_local i32 @splay_tree_compare_ints(i64, i64) #1

declare dso_local i32 @cgraph_function_body_availability(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) local_unnamed_addr #1

declare dso_local %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @searchc(%struct.searchc_env* %env, %struct.cgraph_node* %v, i8 (%struct.cgraph_edge*)* %ignore_edge) unnamed_addr #4 !dbg !2502 {
entry:
  call void @llvm.dbg.value(metadata %struct.searchc_env* %env, metadata !2507, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %v, metadata !2508, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 (%struct.cgraph_edge*)* %ignore_edge, metadata !2509, metadata !DIExpression()), !dbg !2522
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %v, i64 0, i32 16, !dbg !2523
  %0 = bitcast i8** %aux to %struct.ipa_dfs_info**, !dbg !2523
  %1 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %0, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %1, metadata !2511, metadata !DIExpression()), !dbg !2522
  %new_node = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %1, i64 0, i32 2, !dbg !2524
  store i8 0, i8* %new_node, align 8, !dbg !2525
  %nodes_marked_new = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 4, !dbg !2526
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %nodes_marked_new, align 8, !dbg !2526
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %v, i64 0, i32 24, !dbg !2527
  %3 = load i32, i32* %uid, align 8, !dbg !2527
  %conv = sext i32 %3 to i64, !dbg !2528
  tail call void @splay_tree_remove(%struct.splay_tree_s* %2, i64 %conv) #6, !dbg !2529
  %count = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 6, !dbg !2530
  %4 = load i32, i32* %count, align 4, !dbg !2530
  %dfn_number = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %1, i64 0, i32 0, !dbg !2531
  store i32 %4, i32* %dfn_number, align 8, !dbg !2532
  %5 = load i32, i32* %count, align 4, !dbg !2533
  %low_link = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %1, i64 0, i32 1, !dbg !2534
  store i32 %5, i32* %low_link, align 4, !dbg !2535
  %6 = load i32, i32* %count, align 4, !dbg !2536
  %inc = add nsw i32 %6, 1, !dbg !2536
  store i32 %inc, i32* %count, align 4, !dbg !2536
  %stack = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 0, !dbg !2537
  %7 = load %struct.cgraph_node**, %struct.cgraph_node*** %stack, align 8, !dbg !2537
  %stack_size = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 1, !dbg !2538
  %8 = load i32, i32* %stack_size, align 8, !dbg !2539
  %inc3 = add nsw i32 %8, 1, !dbg !2539
  store i32 %inc3, i32* %stack_size, align 8, !dbg !2539
  %idxprom = sext i32 %8 to i64, !dbg !2540
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %7, i64 %idxprom, !dbg !2540
  store %struct.cgraph_node* %v, %struct.cgraph_node** %arrayidx, align 8, !dbg !2541
  %on_stack = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %1, i64 0, i32 3, !dbg !2542
  store i8 1, i8* %on_stack, align 1, !dbg !2543
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %v, i64 0, i32 1, !dbg !2544
  %tobool4 = icmp eq i8 (%struct.cgraph_edge*)* %ignore_edge, null, !dbg !2545
  br i1 %tobool4, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !2547

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !2547

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !2547

for.cond.us:                                      ; preds = %cleanup.us, %entry.split.us
  %edge.0.in.us = phi %struct.cgraph_edge** [ %callees, %entry.split.us ], [ %next_callee.us, %cleanup.us ]
  %edge.0.us = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in.us, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0.us, metadata !2510, metadata !DIExpression()), !dbg !2522
  %tobool.us = icmp eq %struct.cgraph_edge* %edge.0.us, null, !dbg !2549
  br i1 %tobool.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !2549

for.body.us:                                      ; preds = %for.cond.us
  %callee.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0.us, i64 0, i32 2, !dbg !2550
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %callee.us, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %9, metadata !2516, metadata !DIExpression()), !dbg !2551
  %aux7.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i64 0, i32 16, !dbg !2552
  %10 = load i8*, i8** %aux7.us, align 8, !dbg !2552
  %tobool8.us = icmp eq i8* %10, null, !dbg !2554
  br i1 %tobool8.us, label %cleanup.us, label %land.lhs.true9.us, !dbg !2555

land.lhs.true9.us:                                ; preds = %for.body.us
  %call11.us = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %9) #6, !dbg !2556
  %cmp.us = icmp ugt i32 %call11.us, 2, !dbg !2557
  br i1 %cmp.us, label %if.then13.us, label %cleanup.us, !dbg !2558

if.then13.us:                                     ; preds = %land.lhs.true9.us
  %11 = bitcast i8** %aux7.us to %struct.ipa_dfs_info**, !dbg !2559
  %12 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %11, align 8, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %12, metadata !2512, metadata !DIExpression()), !dbg !2551
  %new_node15.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %12, i64 0, i32 2, !dbg !2561
  %13 = load i8, i8* %new_node15.us, align 8, !dbg !2561
  %tobool16.us = icmp eq i8 %13, 0, !dbg !2563
  br i1 %tobool16.us, label %if.else.us, label %if.then17.us, !dbg !2564

if.then17.us:                                     ; preds = %if.then13.us
  tail call fastcc void @searchc(%struct.searchc_env* %env, %struct.cgraph_node* %9, i8 (%struct.cgraph_edge*)* null) #8, !dbg !2565
  %14 = load i32, i32* %low_link, align 4, !dbg !2567
  %low_link19.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %12, i64 0, i32 1, !dbg !2568
  %15 = load i32, i32* %low_link19.us, align 4, !dbg !2568
  %cmp20.us = icmp slt i32 %14, %15, !dbg !2569
  br i1 %cmp20.us, label %cond.true.us, label %cond.false.us, !dbg !2570

cond.false.us:                                    ; preds = %if.then17.us
  br label %cond.end.us, !dbg !2570

cond.true.us:                                     ; preds = %if.then17.us
  br label %cond.end.us, !dbg !2570

cond.end.us:                                      ; preds = %cond.true.us, %cond.false.us
  %cond.us = phi i32 [ %14, %cond.true.us ], [ %15, %cond.false.us ], !dbg !2570
  store i32 %cond.us, i32* %low_link, align 4, !dbg !2571
  br label %cleanup.us, !dbg !2572

if.else.us:                                       ; preds = %if.then13.us
  %dfn_number25.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %12, i64 0, i32 0, !dbg !2573
  %16 = load i32, i32* %dfn_number25.us, align 8, !dbg !2573
  %17 = load i32, i32* %dfn_number, align 8, !dbg !2575
  %cmp27.us = icmp slt i32 %16, %17, !dbg !2576
  br i1 %cmp27.us, label %land.lhs.true29.us, label %cleanup.us, !dbg !2577

land.lhs.true29.us:                               ; preds = %if.else.us
  %on_stack30.us = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %12, i64 0, i32 3, !dbg !2578
  %18 = load i8, i8* %on_stack30.us, align 1, !dbg !2578
  %tobool32.us = icmp eq i8 %18, 0, !dbg !2579
  br i1 %tobool32.us, label %cleanup.us, label %if.then33.us, !dbg !2580

if.then33.us:                                     ; preds = %land.lhs.true29.us
  %19 = load i32, i32* %low_link, align 4, !dbg !2581
  %cmp36.us = icmp slt i32 %16, %19, !dbg !2582
  br i1 %cmp36.us, label %cond.true38.us, label %cond.false40.us, !dbg !2583

cond.false40.us:                                  ; preds = %if.then33.us
  br label %cond.end42.us, !dbg !2583

cond.true38.us:                                   ; preds = %if.then33.us
  br label %cond.end42.us, !dbg !2583

cond.end42.us:                                    ; preds = %cond.true38.us, %cond.false40.us
  %cond43.us = phi i32 [ %16, %cond.true38.us ], [ %19, %cond.false40.us ], !dbg !2583
  store i32 %cond43.us, i32* %low_link, align 4, !dbg !2584
  br label %cleanup.us, !dbg !2585

cleanup.us:                                       ; preds = %cond.end42.us, %land.lhs.true29.us, %if.else.us, %cond.end.us, %land.lhs.true9.us, %for.body.us
  %next_callee.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0.us, i64 0, i32 6, !dbg !2586
  br label %for.cond.us, !dbg !2587, !llvm.loop !2588

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !2590

for.cond:                                         ; preds = %cleanup, %entry.entry.split_crit_edge
  %edge.0.in = phi %struct.cgraph_edge** [ %callees, %entry.entry.split_crit_edge ], [ %next_callee, %cleanup ]
  %edge.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in, align 8, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !2510, metadata !DIExpression()), !dbg !2522
  %tobool = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !2549
  br i1 %tobool, label %for.end.us-lcssa, label %for.body, !dbg !2549

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 2, !dbg !2550
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %20, metadata !2516, metadata !DIExpression()), !dbg !2551
  %call = tail call zeroext i8 %ignore_edge(%struct.cgraph_edge* nonnull %edge.0) #6, !dbg !2591
  %tobool6 = icmp eq i8 %call, 0, !dbg !2591
  br i1 %tobool6, label %if.end, label %cleanup, !dbg !2592

if.end:                                           ; preds = %for.body
  %aux7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i64 0, i32 16, !dbg !2552
  %21 = load i8*, i8** %aux7, align 8, !dbg !2552
  %tobool8 = icmp eq i8* %21, null, !dbg !2554
  br i1 %tobool8, label %cleanup, label %land.lhs.true9, !dbg !2555

land.lhs.true9:                                   ; preds = %if.end
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2593
  %call11 = tail call i32 @cgraph_function_body_availability(%struct.cgraph_node* %22) #6, !dbg !2556
  %cmp = icmp ugt i32 %call11, 2, !dbg !2557
  br i1 %cmp, label %if.then13, label %cleanup, !dbg !2558

if.then13:                                        ; preds = %land.lhs.true9
  %23 = bitcast i8** %aux7 to %struct.ipa_dfs_info**, !dbg !2559
  %24 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %23, align 8, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %24, metadata !2512, metadata !DIExpression()), !dbg !2551
  %new_node15 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %24, i64 0, i32 2, !dbg !2561
  %25 = load i8, i8* %new_node15, align 8, !dbg !2561
  %tobool16 = icmp eq i8 %25, 0, !dbg !2563
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !2564

if.then17:                                        ; preds = %if.then13
  tail call fastcc void @searchc(%struct.searchc_env* %env, %struct.cgraph_node* %20, i8 (%struct.cgraph_edge*)* nonnull %ignore_edge) #8, !dbg !2565
  %26 = load i32, i32* %low_link, align 4, !dbg !2567
  %low_link19 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %24, i64 0, i32 1, !dbg !2568
  %27 = load i32, i32* %low_link19, align 4, !dbg !2568
  %cmp20 = icmp slt i32 %26, %27, !dbg !2569
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2570

cond.true:                                        ; preds = %if.then17
  br label %cond.end, !dbg !2570

cond.false:                                       ; preds = %if.then17
  br label %cond.end, !dbg !2570

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !2570
  store i32 %cond, i32* %low_link, align 4, !dbg !2571
  br label %cleanup, !dbg !2572

if.else:                                          ; preds = %if.then13
  %dfn_number25 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %24, i64 0, i32 0, !dbg !2573
  %28 = load i32, i32* %dfn_number25, align 8, !dbg !2573
  %29 = load i32, i32* %dfn_number, align 8, !dbg !2575
  %cmp27 = icmp slt i32 %28, %29, !dbg !2576
  br i1 %cmp27, label %land.lhs.true29, label %cleanup, !dbg !2577

land.lhs.true29:                                  ; preds = %if.else
  %on_stack30 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %24, i64 0, i32 3, !dbg !2578
  %30 = load i8, i8* %on_stack30, align 1, !dbg !2578
  %tobool32 = icmp eq i8 %30, 0, !dbg !2579
  br i1 %tobool32, label %cleanup, label %if.then33, !dbg !2580

if.then33:                                        ; preds = %land.lhs.true29
  %31 = load i32, i32* %low_link, align 4, !dbg !2581
  %cmp36 = icmp slt i32 %28, %31, !dbg !2582
  br i1 %cmp36, label %cond.true38, label %cond.false40, !dbg !2583

cond.true38:                                      ; preds = %if.then33
  br label %cond.end42, !dbg !2583

cond.false40:                                     ; preds = %if.then33
  br label %cond.end42, !dbg !2583

cond.end42:                                       ; preds = %cond.false40, %cond.true38
  %cond43 = phi i32 [ %28, %cond.true38 ], [ %31, %cond.false40 ], !dbg !2583
  store i32 %cond43, i32* %low_link, align 4, !dbg !2584
  br label %cleanup, !dbg !2585

cleanup:                                          ; preds = %for.body, %land.lhs.true29, %if.end, %land.lhs.true9, %if.else, %cond.end42, %cond.end
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 6, !dbg !2586
  br label %for.cond, !dbg !2587, !llvm.loop !2588

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !2590

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %32 = load i32, i32* %low_link, align 4, !dbg !2590
  %33 = load i32, i32* %dfn_number, align 8, !dbg !2594
  %cmp51 = icmp eq i32 %32, %33, !dbg !2595
  br i1 %cmp51, label %do.body.preheader, label %if.end78, !dbg !2596

do.body.preheader:                                ; preds = %for.end
  %reduce = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 5, !dbg !2597
  %result = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 2, !dbg !2597
  %order_pos = getelementptr inbounds %struct.searchc_env, %struct.searchc_env* %env, i64 0, i32 3, !dbg !2597
  br label %do.body, !dbg !2600

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %last.0 = phi %struct.cgraph_node* [ %last.1, %do.cond ], [ null, %do.body.preheader ], !dbg !2601
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %last.0, metadata !2517, metadata !DIExpression()), !dbg !2601
  %34 = load %struct.cgraph_node**, %struct.cgraph_node*** %stack, align 8, !dbg !2602
  %35 = load i32, i32* %stack_size, align 8, !dbg !2603
  %dec = add nsw i32 %35, -1, !dbg !2603
  store i32 %dec, i32* %stack_size, align 8, !dbg !2603
  %idxprom56 = sext i32 %dec to i64, !dbg !2604
  %arrayidx57 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %34, i64 %idxprom56, !dbg !2604
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx57, align 8, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %36, metadata !2520, metadata !DIExpression()), !dbg !2601
  %aux58 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i64 0, i32 16, !dbg !2605
  %37 = bitcast i8** %aux58 to %struct.ipa_dfs_info**, !dbg !2605
  %38 = load %struct.ipa_dfs_info*, %struct.ipa_dfs_info** %37, align 8, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.ipa_dfs_info* %38, metadata !2521, metadata !DIExpression()), !dbg !2601
  %on_stack59 = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %38, i64 0, i32 3, !dbg !2606
  store i8 0, i8* %on_stack59, align 1, !dbg !2607
  %39 = load i8, i8* %reduce, align 8, !dbg !2608
  %tobool60 = icmp eq i8 %39, 0, !dbg !2609
  br i1 %tobool60, label %if.else62, label %if.then61, !dbg !2610

if.then61:                                        ; preds = %do.body
  %next_cycle = getelementptr inbounds %struct.ipa_dfs_info, %struct.ipa_dfs_info* %38, i64 0, i32 4, !dbg !2611
  store %struct.cgraph_node* %last.0, %struct.cgraph_node** %next_cycle, align 8, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %36, metadata !2517, metadata !DIExpression()), !dbg !2601
  br label %do.cond, !dbg !2614

if.else62:                                        ; preds = %do.body
  %40 = load %struct.cgraph_node**, %struct.cgraph_node*** %result, align 8, !dbg !2615
  %41 = load i32, i32* %order_pos, align 8, !dbg !2616
  %inc63 = add nsw i32 %41, 1, !dbg !2616
  store i32 %inc63, i32* %order_pos, align 8, !dbg !2616
  %idxprom64 = sext i32 %41 to i64, !dbg !2617
  %arrayidx65 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %40, i64 %idxprom64, !dbg !2617
  store %struct.cgraph_node* %36, %struct.cgraph_node** %arrayidx65, align 8, !dbg !2618
  br label %do.cond

do.cond:                                          ; preds = %if.then61, %if.else62
  %last.1 = phi %struct.cgraph_node* [ %36, %if.then61 ], [ %last.0, %if.else62 ], !dbg !2601
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %last.1, metadata !2517, metadata !DIExpression()), !dbg !2601
  %cmp67 = icmp eq %struct.cgraph_node* %36, %v, !dbg !2619
  br i1 %cmp67, label %do.end, label %do.body, !dbg !2620, !llvm.loop !2621

do.end:                                           ; preds = %do.cond
  %42 = load i8, i8* %reduce, align 8, !dbg !2623
  %tobool70 = icmp eq i8 %42, 0, !dbg !2625
  br i1 %tobool70, label %if.end78, label %if.then71, !dbg !2626

if.then71:                                        ; preds = %do.end
  %43 = load %struct.cgraph_node**, %struct.cgraph_node*** %result, align 8, !dbg !2627
  %44 = load i32, i32* %order_pos, align 8, !dbg !2628
  %inc74 = add nsw i32 %44, 1, !dbg !2628
  store i32 %inc74, i32* %order_pos, align 8, !dbg !2628
  %idxprom75 = sext i32 %44 to i64, !dbg !2629
  %arrayidx76 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %43, i64 %idxprom75, !dbg !2629
  store %struct.cgraph_node* %v, %struct.cgraph_node** %arrayidx76, align 8, !dbg !2630
  br label %if.end78, !dbg !2629

if.end78:                                         ; preds = %do.end, %if.then71, %for.end
  ret void, !dbg !2631
}

declare dso_local void @splay_tree_delete(%struct.splay_tree_s*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_base_var(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2632 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2636, metadata !DIExpression()), !dbg !2637
  br label %while.cond, !dbg !2638

while.cond:                                       ; preds = %while.body, %entry
  %t.addr.0 = phi %union.tree_node* [ %t, %entry ], [ %11, %while.body ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !2636, metadata !DIExpression()), !dbg !2637
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2639
  %bf.load = load i64, i64* %0, align 8, !dbg !2639
  %bf.cast11 = and i64 %bf.load, 65535, !dbg !2639
  %1 = or i64 %bf.cast11, 2, !dbg !2639
  %2 = icmp eq i64 %1, 34, !dbg !2639
  %cmp11 = icmp eq i64 %bf.cast11, 36, !dbg !2639
  %or.cond22 = or i1 %2, %cmp11, !dbg !2639
  br i1 %or.cond22, label %while.end, label %lor.lhs.false12, !dbg !2639

lor.lhs.false12:                                  ; preds = %while.cond
  %cmp17 = icmp eq i64 %bf.cast11, 141, !dbg !2639
  br i1 %cmp17, label %land.lhs.true, label %land.lhs.true39, !dbg !2639

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2639
  %3 = bitcast i32* %var to i64**, !dbg !2639
  %4 = load i64*, i64** %3, align 8, !dbg !2639
  %bf.load19 = load i64, i64* %4, align 8, !dbg !2639
  %bf.cast2119 = and i64 %bf.load19, 65535, !dbg !2639
  %5 = or i64 %bf.cast2119, 2, !dbg !2639
  %6 = icmp eq i64 %5, 34, !dbg !2639
  %cmp38 = icmp eq i64 %bf.cast2119, 36, !dbg !2639
  %or.cond24 = or i1 %6, %cmp38, !dbg !2639
  br i1 %or.cond24, label %while.end, label %land.lhs.true39, !dbg !2639

land.lhs.true39:                                  ; preds = %land.lhs.true, %lor.lhs.false12
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast11, !dbg !2640
  %7 = load i32, i32* %arrayidx, align 4, !dbg !2640
  %cmp44 = icmp eq i32 %7, 1, !dbg !2640
  %8 = add nsw i64 %bf.cast11, -29, !dbg !2641
  %9 = icmp ult i64 %8, 2, !dbg !2641
  %10 = or i1 %9, %cmp44, !dbg !2641
  %cmp62 = icmp eq i64 %bf.cast11, 33, !dbg !2642
  %or.cond27 = or i1 %10, %cmp62, !dbg !2641
  %cmp67 = icmp eq i64 %bf.cast11, 51, !dbg !2643
  %or.cond28 = or i1 %or.cond27, %cmp67, !dbg !2641
  br i1 %or.cond28, label %while.end, label %while.body, !dbg !2641

while.body:                                       ; preds = %land.lhs.true39
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2644
  %11 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2636, metadata !DIExpression()), !dbg !2637
  br label %while.cond, !dbg !2638, !llvm.loop !2646

while.end:                                        ; preds = %while.cond, %land.lhs.true, %land.lhs.true39
  %t.addr.0.lcssa = phi %union.tree_node* [ %t.addr.0, %while.cond ], [ %t.addr.0, %land.lhs.true ], [ %t.addr.0, %land.lhs.true39 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0.lcssa, metadata !2636, metadata !DIExpression()), !dbg !2637
  ret %union.tree_node* %t.addr.0.lcssa, !dbg !2648
}

declare dso_local void @splay_tree_remove(%struct.splay_tree_s*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1889, !1890, !1891}
!llvm.ident = !{!1892}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !460, nameTableKind: None)
!1 = !DIFile(filename: "ipa-utils.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !199, !205, !210, !215, !233, !240, !247, !270, !277, !453}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!7 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!98 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!99 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!104 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!105 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!106 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!107 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!108 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!109 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!110 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!111 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!112 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!113 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!114 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!115 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!116 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!117 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!118 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!119 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!120 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!121 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!122 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!123 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!124 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!125 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!126 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!127 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!128 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!129 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!130 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!131 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!132 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!133 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!134 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!135 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!136 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!137 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!138 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!139 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!140 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!141 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!142 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!143 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!144 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!145 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!146 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!147 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!148 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!149 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!150 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!151 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!152 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!153 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!154 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!155 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!156 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!157 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!158 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!159 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!171 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!172 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!174 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!175 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!176 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!177 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!178 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!192 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!193 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!194 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!195 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!196 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!197 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!198 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !200, line: 363, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!204 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !200, line: 355, baseType: !5, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!208 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!209 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !211, line: 474, baseType: !5, size: 32, elements: !212)
!211 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!212 = !{!213, !214}
!213 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !4, line: 280, baseType: !5, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!217 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !4, line: 1817, baseType: !5, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239}
!235 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !4, line: 1805, baseType: !5, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246}
!242 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !248, line: 309, baseType: !5, size: 32, elements: !249)
!248 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!250 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!251 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!252 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!253 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!254 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!255 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!256 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!257 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!258 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!259 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!260 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!261 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!262 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!263 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!264 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!265 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!266 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !271, line: 104, baseType: !5, size: 32, elements: !272)
!271 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!272 = !{!273, !274, !275, !276}
!273 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!274 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!275 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!276 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !278, line: 74, baseType: !5, size: 32, elements: !279)
!278 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!280 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!452 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "availability", file: !248, line: 27, baseType: !5, size: 32, elements: !454)
!454 = !{!455, !456, !457, !458, !459}
!455 = !DIEnumerator(name: "AVAIL_UNSET", value: 0, isUnsigned: true)
!456 = !DIEnumerator(name: "AVAIL_NOT_AVAILABLE", value: 1, isUnsigned: true)
!457 = !DIEnumerator(name: "AVAIL_OVERWRITABLE", value: 2, isUnsigned: true)
!458 = !DIEnumerator(name: "AVAIL_AVAILABLE", value: 3, isUnsigned: true)
!459 = !DIEnumerator(name: "AVAIL_LOCAL", value: 4, isUnsigned: true)
!460 = !{!461, !462, !463, !464, !467, !468, !470, !1875, !1885, !1888, !471, !3}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!463 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !248, line: 181, size: 2496, elements: !473)
!473 = !{!474, !1650, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1790, !1812, !1822, !1826, !1852, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !472, file: !248, line: 182, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !476, line: 56, baseType: !477)
!476 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !479)
!479 = !{!480, !513, !519, !532, !539, !546, !551, !560, !566, !579, !591, !629, !637, !665, !682, !683, !688, !697, !703, !708, !712, !716, !1299, !1348, !1354, !1360, !1367, !1380, !1394, !1411, !1423, !1445, !1460, !1632}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !478, file: !4, line: 3372, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !481, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !481, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !481, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !481, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !481, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !481, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !481, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !481, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !481, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !481, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !481, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !481, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !481, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !481, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !481, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !481, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !481, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !481, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !481, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !481, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !481, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !481, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !481, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !481, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !481, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !481, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !481, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !481, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !481, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !481, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !478, file: !4, line: 3373, baseType: !514, size: 192)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !514, file: !4, line: 403, baseType: !481, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !514, file: !4, line: 404, baseType: !475, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !4, line: 405, baseType: !475, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !478, file: !4, line: 3374, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !4, line: 1385, baseType: !514, size: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !520, file: !4, line: 1386, baseType: !524, size: 128, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !525, line: 58, baseType: !526)
!525 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 54, size: 128, elements: !527)
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !526, file: !525, line: 56, baseType: !529, size: 64)
!529 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !526, file: !525, line: 57, baseType: !531, size: 64, offset: 64)
!531 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !478, file: !4, line: 3375, baseType: !533, size: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !4, line: 1398, baseType: !514, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !533, file: !4, line: 1399, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !478, file: !4, line: 3376, baseType: !540, size: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !540, file: !4, line: 1409, baseType: !514, size: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !540, file: !4, line: 1410, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !478, file: !4, line: 3377, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !547, file: !4, line: 1438, baseType: !514, size: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !547, file: !4, line: 1439, baseType: !475, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !478, file: !4, line: 3378, baseType: !552, size: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !552, file: !4, line: 1419, baseType: !514, size: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !552, file: !4, line: 1420, baseType: !463, size: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !552, file: !4, line: 1421, baseType: !557, size: 8, offset: 224)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 8, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 1)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !478, file: !4, line: 3379, baseType: !561, size: 320)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !561, file: !4, line: 1429, baseType: !514, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !561, file: !4, line: 1430, baseType: !475, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !561, file: !4, line: 1431, baseType: !475, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !478, file: !4, line: 3380, baseType: !567, size: 320)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !4, line: 1461, baseType: !514, size: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !567, file: !4, line: 1462, baseType: !571, size: 128, offset: 192)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !572, line: 31, size: 128, elements: !573)
!572 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!573 = !{!574, !577, !578}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !571, file: !572, line: 32, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !571, file: !572, line: 33, baseType: !5, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !571, file: !572, line: 34, baseType: !5, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !478, file: !4, line: 3381, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !581)
!581 = !{!582, !583, !588, !589, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !4, line: 2508, baseType: !514, size: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !580, file: !4, line: 2509, baseType: !584, size: 32, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !585, line: 58, baseType: !586)
!585 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !587, line: 44, baseType: !5)
!587 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !580, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !4, line: 2511, baseType: !475, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !580, file: !4, line: 2512, baseType: !475, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !478, file: !4, line: 3382, baseType: !592, size: 896)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !4, line: 2653, baseType: !580, size: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !4, line: 2654, baseType: !475, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !592, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !592, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !592, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !592, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !592, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !592, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !592, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !592, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !592, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !592, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !592, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !592, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !592, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !592, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !592, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !592, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !592, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !592, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !592, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !592, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !592, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !592, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !592, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !592, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !592, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !592, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !592, file: !4, line: 2705, baseType: !475, size: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !592, file: !4, line: 2706, baseType: !475, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !592, file: !4, line: 2707, baseType: !475, size: 64, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !592, file: !4, line: 2708, baseType: !475, size: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !592, file: !4, line: 2711, baseType: !627, size: 64, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !478, file: !4, line: 3383, baseType: !630, size: 960)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !630, file: !4, line: 2757, baseType: !592, size: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !630, file: !4, line: 2758, baseType: !634, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !476, line: 50, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !476, line: 49, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !478, file: !4, line: 3384, baseType: !638, size: 1472)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !639)
!639 = !{!640, !661, !662, !663, !664}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !638, file: !4, line: 3115, baseType: !641, size: 1216)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !641, file: !4, line: 2985, baseType: !630, size: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !641, file: !4, line: 2986, baseType: !475, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !641, file: !4, line: 2987, baseType: !475, size: 64, offset: 1024)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !641, file: !4, line: 2988, baseType: !475, size: 64, offset: 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !641, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !641, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !641, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !641, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !641, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !641, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !641, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !641, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !641, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !641, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !641, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !641, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !641, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !641, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !638, file: !4, line: 3117, baseType: !475, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !638, file: !4, line: 3119, baseType: !475, size: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !638, file: !4, line: 3121, baseType: !475, size: 64, offset: 1344)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !638, file: !4, line: 3123, baseType: !475, size: 64, offset: 1408)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !478, file: !4, line: 3385, baseType: !666, size: 1088)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !667)
!667 = !{!668, !669, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !666, file: !4, line: 2875, baseType: !630, size: 960)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !666, file: !4, line: 2876, baseType: !634, size: 64, offset: 960)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !666, file: !4, line: 2877, baseType: !671, size: 64, offset: 1024)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !673, line: 172, size: 128, elements: !674)
!673 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!674 = !{!675, !676, !677, !678, !679, !680, !681}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !672, file: !673, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !672, file: !673, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !672, file: !673, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !672, file: !673, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !672, file: !673, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !672, file: !673, line: 195, baseType: !5, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !672, file: !673, line: 199, baseType: !475, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !478, file: !4, line: 3386, baseType: !641, size: 1216)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !478, file: !4, line: 3387, baseType: !684, size: 1280)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !4, line: 3094, baseType: !641, size: 1216)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !684, file: !4, line: 3095, baseType: !671, size: 64, offset: 1216)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !478, file: !4, line: 3388, baseType: !689, size: 1216)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !689, file: !4, line: 2825, baseType: !592, size: 896)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !689, file: !4, line: 2827, baseType: !475, size: 64, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !689, file: !4, line: 2828, baseType: !475, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !689, file: !4, line: 2829, baseType: !475, size: 64, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !689, file: !4, line: 2830, baseType: !475, size: 64, offset: 1088)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !689, file: !4, line: 2831, baseType: !475, size: 64, offset: 1152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !478, file: !4, line: 3389, baseType: !698, size: 1024)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !699)
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !4, line: 2851, baseType: !630, size: 960)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !698, file: !4, line: 2852, baseType: !463, size: 32, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !698, file: !4, line: 2853, baseType: !463, size: 32, offset: 992)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !478, file: !4, line: 3390, baseType: !704, size: 1024)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !704, file: !4, line: 2858, baseType: !630, size: 960)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !704, file: !4, line: 2859, baseType: !671, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !478, file: !4, line: 3391, baseType: !709, size: 960)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !709, file: !4, line: 2863, baseType: !630, size: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !478, file: !4, line: 3392, baseType: !713, size: 1472)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !4, line: 3305, baseType: !638, size: 1472)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !478, file: !4, line: 3393, baseType: !717, size: 1792)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !718)
!718 = !{!719, !720, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !717, file: !4, line: 3249, baseType: !638, size: 1472)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !717, file: !4, line: 3251, baseType: !721, size: 64, offset: 1472)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !723, line: 463, size: 1152, elements: !724)
!723 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!724 = !{!725, !728, !1046, !1047, !1219, !1222, !1223, !1224, !1225, !1226, !1227, !1251, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !722, file: !723, line: 464, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !723, line: 464, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !722, file: !723, line: 467, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !200, line: 374, size: 640, elements: !731)
!731 = !{!732, !1021, !1022, !1035, !1036, !1037, !1038, !1039, !1040, !1042, !1044, !1045}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !730, file: !200, line: 377, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !476, line: 111, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !200, line: 217, size: 832, elements: !736)
!736 = !{!737, !984, !985, !986, !989, !995, !996, !997, !1015, !1016, !1017, !1018, !1019, !1020}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !735, file: !200, line: 219, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !200, line: 151, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !200, line: 151, size: 128, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !740, file: !200, line: 151, baseType: !743, size: 128)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !200, line: 150, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !200, line: 150, size: 128, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !744, file: !200, line: 150, baseType: !5, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !744, file: !200, line: 150, baseType: !5, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !744, file: !200, line: 150, baseType: !749, size: 64, offset: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 64, elements: !558)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !476, line: 108, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !200, line: 122, size: 512, elements: !753)
!753 = !{!754, !755, !756, !976, !977, !978, !979, !980, !981, !982}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !752, file: !200, line: 124, baseType: !734, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !752, file: !200, line: 125, baseType: !734, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !752, file: !200, line: 131, baseType: !757, size: 64, offset: 128)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !200, line: 128, size: 64, elements: !758)
!758 = !{!759, !975}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !757, file: !200, line: 129, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !476, line: 66, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !763, line: 143, size: 192, elements: !764)
!763 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!764 = !{!765, !973, !974}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !762, file: !763, line: 145, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !476, line: 69, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !763, line: 136, size: 192, elements: !769)
!769 = !{!770, !971, !972}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !768, file: !763, line: 137, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !476, line: 58, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !763, line: 737, size: 768, elements: !774)
!774 = !{!775, !792, !826, !832, !837, !842, !849, !855, !861, !866, !880, !885, !891, !896, !906, !911, !929, !936, !943, !949, !954, !960, !966}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !773, file: !763, line: 738, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !763, line: 271, size: 256, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !776, file: !763, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !776, file: !763, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !776, file: !763, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !776, file: !763, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !776, file: !763, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !776, file: !763, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !776, file: !763, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !776, file: !763, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !776, file: !763, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !776, file: !763, line: 312, baseType: !5, size: 32, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !776, file: !763, line: 316, baseType: !584, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !776, file: !763, line: 319, baseType: !5, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !776, file: !763, line: 323, baseType: !734, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !776, file: !763, line: 327, baseType: !475, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !773, file: !763, line: 739, baseType: !793, size: 448)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !763, line: 350, size: 448, elements: !794)
!794 = !{!795, !824}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !793, file: !763, line: 353, baseType: !796, size: 384)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !763, line: 333, size: 384, elements: !797)
!797 = !{!798, !799, !807}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !796, file: !763, line: 336, baseType: !776, size: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !796, file: !763, line: 343, baseType: !800, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !802, line: 37, size: 128, elements: !803)
!802 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !802, line: 39, baseType: !800, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !801, file: !802, line: 40, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !796, file: !763, line: 344, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !802, line: 45, size: 320, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !809, file: !802, line: 47, baseType: !808, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !809, file: !802, line: 48, baseType: !813, size: 256, offset: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !814)
!814 = !{!815, !817, !818, !823}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !813, file: !4, line: 1884, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !813, file: !4, line: 1885, baseType: !816, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !813, file: !4, line: 1891, baseType: !819, size: 64, offset: 128)
!819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !4, line: 1891, size: 64, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !819, file: !4, line: 1891, baseType: !771, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !819, file: !4, line: 1891, baseType: !475, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !813, file: !4, line: 1892, baseType: !806, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !793, file: !763, line: 359, baseType: !825, size: 64, offset: 384)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !558)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !773, file: !763, line: 740, baseType: !827, size: 512)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !763, line: 365, size: 512, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !827, file: !763, line: 368, baseType: !796, size: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !827, file: !763, line: 373, baseType: !475, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !827, file: !763, line: 374, baseType: !475, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !773, file: !763, line: 741, baseType: !833, size: 576)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !763, line: 380, size: 576, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !833, file: !763, line: 383, baseType: !827, size: 512)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !833, file: !763, line: 389, baseType: !825, size: 64, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !773, file: !763, line: 742, baseType: !838, size: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !763, line: 395, size: 320, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !838, file: !763, line: 397, baseType: !776, size: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !838, file: !763, line: 400, baseType: !760, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !773, file: !763, line: 743, baseType: !843, size: 448)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !763, line: 406, size: 448, elements: !844)
!844 = !{!845, !846, !847, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !843, file: !763, line: 408, baseType: !776, size: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !843, file: !763, line: 412, baseType: !475, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !843, file: !763, line: 420, baseType: !475, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !843, file: !763, line: 423, baseType: !760, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !773, file: !763, line: 744, baseType: !850, size: 384)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !763, line: 429, size: 384, elements: !851)
!851 = !{!852, !853, !854}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !850, file: !763, line: 431, baseType: !776, size: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !850, file: !763, line: 434, baseType: !475, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !850, file: !763, line: 437, baseType: !760, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !773, file: !763, line: 745, baseType: !856, size: 384)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !763, line: 443, size: 384, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !856, file: !763, line: 445, baseType: !776, size: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !856, file: !763, line: 449, baseType: !475, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !856, file: !763, line: 453, baseType: !760, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !773, file: !763, line: 746, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !763, line: 459, size: 320, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !862, file: !763, line: 461, baseType: !776, size: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !862, file: !763, line: 464, baseType: !475, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !773, file: !763, line: 747, baseType: !867, size: 768)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !763, line: 469, size: 768, elements: !868)
!868 = !{!869, !870, !871, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !867, file: !763, line: 471, baseType: !776, size: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !867, file: !763, line: 474, baseType: !5, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !867, file: !763, line: 475, baseType: !5, size: 32, offset: 288)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !867, file: !763, line: 478, baseType: !475, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !867, file: !763, line: 481, baseType: !874, size: 384, offset: 384)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 384, elements: !558)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !4, line: 1917, size: 384, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !875, file: !4, line: 1920, baseType: !813, size: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !875, file: !4, line: 1921, baseType: !475, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !875, file: !4, line: 1922, baseType: !584, size: 32, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !773, file: !763, line: 748, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !763, line: 487, size: 320, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !881, file: !763, line: 490, baseType: !776, size: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !881, file: !763, line: 494, baseType: !463, size: 32, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !773, file: !763, line: 749, baseType: !886, size: 384)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !763, line: 500, size: 384, elements: !887)
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !886, file: !763, line: 502, baseType: !776, size: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !886, file: !763, line: 506, baseType: !760, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !886, file: !763, line: 510, baseType: !760, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !773, file: !763, line: 750, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !763, line: 529, size: 320, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !892, file: !763, line: 531, baseType: !776, size: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !892, file: !763, line: 540, baseType: !760, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !773, file: !763, line: 751, baseType: !897, size: 704)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !763, line: 546, size: 704, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904, !905}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !897, file: !763, line: 549, baseType: !827, size: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !897, file: !763, line: 553, baseType: !468, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !897, file: !763, line: 557, baseType: !462, size: 8, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !897, file: !763, line: 558, baseType: !462, size: 8, offset: 584)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !897, file: !763, line: 559, baseType: !462, size: 8, offset: 592)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !897, file: !763, line: 560, baseType: !462, size: 8, offset: 600)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !897, file: !763, line: 566, baseType: !825, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !773, file: !763, line: 752, baseType: !907, size: 384)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !763, line: 571, size: 384, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !907, file: !763, line: 573, baseType: !838, size: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !907, file: !763, line: 577, baseType: !475, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !773, file: !763, line: 753, baseType: !912, size: 576)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !763, line: 600, size: 576, elements: !913)
!913 = !{!914, !915, !916, !919, !928}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !912, file: !763, line: 602, baseType: !838, size: 320)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !912, file: !763, line: 605, baseType: !475, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !912, file: !763, line: 609, baseType: !917, size: 64, offset: 384)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !918, line: 46, baseType: !529)
!918 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !912, file: !763, line: 612, baseType: !920, size: 64, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !763, line: 581, size: 320, elements: !922)
!922 = !{!923, !924, !925, !926, !927}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !921, file: !763, line: 583, baseType: !3, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !921, file: !763, line: 586, baseType: !475, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !921, file: !763, line: 589, baseType: !475, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !921, file: !763, line: 592, baseType: !475, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !921, file: !763, line: 595, baseType: !475, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !912, file: !763, line: 616, baseType: !760, size: 64, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !773, file: !763, line: 754, baseType: !930, size: 512)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !763, line: 622, size: 512, elements: !931)
!931 = !{!932, !933, !934, !935}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !930, file: !763, line: 624, baseType: !838, size: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !930, file: !763, line: 628, baseType: !475, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !930, file: !763, line: 632, baseType: !475, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !930, file: !763, line: 636, baseType: !475, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !773, file: !763, line: 755, baseType: !937, size: 704)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !763, line: 642, size: 704, elements: !938)
!938 = !{!939, !940, !941, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !937, file: !763, line: 644, baseType: !930, size: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !937, file: !763, line: 648, baseType: !475, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !937, file: !763, line: 652, baseType: !475, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !937, file: !763, line: 653, baseType: !475, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !773, file: !763, line: 756, baseType: !944, size: 448)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !763, line: 663, size: 448, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !944, file: !763, line: 665, baseType: !838, size: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !944, file: !763, line: 668, baseType: !475, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !944, file: !763, line: 673, baseType: !475, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !773, file: !763, line: 757, baseType: !950, size: 384)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !763, line: 694, size: 384, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !950, file: !763, line: 696, baseType: !838, size: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !950, file: !763, line: 699, baseType: !475, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !773, file: !763, line: 758, baseType: !955, size: 384)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !763, line: 681, size: 384, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !955, file: !763, line: 683, baseType: !776, size: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !955, file: !763, line: 686, baseType: !475, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !955, file: !763, line: 689, baseType: !475, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !773, file: !763, line: 759, baseType: !961, size: 384)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !763, line: 707, size: 384, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !961, file: !763, line: 709, baseType: !776, size: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !961, file: !763, line: 712, baseType: !475, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !961, file: !763, line: 712, baseType: !475, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !773, file: !763, line: 760, baseType: !967, size: 320)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !763, line: 718, size: 320, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !967, file: !763, line: 720, baseType: !776, size: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !967, file: !763, line: 723, baseType: !475, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !768, file: !763, line: 138, baseType: !767, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !763, line: 139, baseType: !767, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !762, file: !763, line: 146, baseType: !766, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !762, file: !763, line: 152, baseType: !760, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !757, file: !200, line: 130, baseType: !634, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !752, file: !200, line: 134, baseType: !467, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !752, file: !200, line: 137, baseType: !475, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !752, file: !200, line: 138, baseType: !584, size: 32, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !752, file: !200, line: 142, baseType: !5, size: 32, offset: 352)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !200, line: 144, baseType: !463, size: 32, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !752, file: !200, line: 145, baseType: !463, size: 32, offset: 416)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !752, file: !200, line: 146, baseType: !983, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !200, line: 119, baseType: !531)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !735, file: !200, line: 220, baseType: !738, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !735, file: !200, line: 223, baseType: !467, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !735, file: !200, line: 226, baseType: !987, size: 64, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !200, line: 185, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !735, file: !200, line: 229, baseType: !990, size: 128, offset: 256)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 128, elements: !993)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !200, line: 229, flags: DIFlagFwdDecl)
!993 = !{!994}
!994 = !DISubrange(count: 2)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !735, file: !200, line: 232, baseType: !734, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !735, file: !200, line: 233, baseType: !734, size: 64, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !735, file: !200, line: 238, baseType: !998, size: 64, offset: 512)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !200, line: 235, size: 64, elements: !999)
!999 = !{!1000, !1006}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !998, file: !200, line: 236, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !200, line: 273, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1002, file: !200, line: 275, baseType: !760, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1002, file: !200, line: 278, baseType: !760, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !998, file: !200, line: 237, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !200, line: 259, size: 320, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1008, file: !200, line: 261, baseType: !634, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1008, file: !200, line: 262, baseType: !634, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1008, file: !200, line: 266, baseType: !634, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1008, file: !200, line: 267, baseType: !634, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1008, file: !200, line: 270, baseType: !463, size: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !735, file: !200, line: 241, baseType: !983, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !735, file: !200, line: 244, baseType: !463, size: 32, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !735, file: !200, line: 247, baseType: !463, size: 32, offset: 672)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !735, file: !200, line: 250, baseType: !463, size: 32, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !735, file: !200, line: 253, baseType: !463, size: 32, offset: 736)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !200, line: 256, baseType: !463, size: 32, offset: 768)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !730, file: !200, line: 378, baseType: !733, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !730, file: !200, line: 381, baseType: !1023, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !200, line: 282, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !200, line: 282, size: 128, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1025, file: !200, line: 282, baseType: !1028, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !200, line: 281, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !200, line: 281, size: 128, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1029, file: !200, line: 281, baseType: !5, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1029, file: !200, line: 281, baseType: !5, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1029, file: !200, line: 281, baseType: !1034, size: 64, offset: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 64, elements: !558)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !730, file: !200, line: 384, baseType: !463, size: 32, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !730, file: !200, line: 387, baseType: !463, size: 32, offset: 224)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !730, file: !200, line: 390, baseType: !463, size: 32, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !730, file: !200, line: 394, baseType: !1023, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !730, file: !200, line: 396, baseType: !199, size: 32, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !730, file: !200, line: 399, baseType: !1041, size: 64, offset: 416)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !993)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !730, file: !200, line: 402, baseType: !1043, size: 64, offset: 480)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !993)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !730, file: !200, line: 406, baseType: !463, size: 32, offset: 544)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !730, file: !200, line: 409, baseType: !463, size: 32, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !722, file: !723, line: 470, baseType: !761, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !722, file: !723, line: 473, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !673, line: 39, size: 1152, elements: !1050)
!1050 = !{!1051, !1101, !1114, !1126, !1127, !1196, !1197, !1201, !1202, !1203, !1204, !1205}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1049, file: !673, line: 41, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1053, line: 144, baseType: !1054)
!1053 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1053, line: 100, size: 896, elements: !1056)
!1056 = !{!1057, !1065, !1070, !1075, !1077, !1078, !1079, !1080, !1081, !1082, !1087, !1089, !1090, !1095, !1100}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1055, file: !1053, line: 102, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1053, line: 52, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1053, line: 47, baseType: !5)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1055, file: !1053, line: 105, baseType: !1066, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1053, line: 59, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!463, !1063, !1063}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1055, file: !1053, line: 108, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1053, line: 63, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !467}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1055, file: !1053, line: 111, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1055, file: !1053, line: 114, baseType: !917, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1055, file: !1053, line: 117, baseType: !917, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1055, file: !1053, line: 120, baseType: !917, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1055, file: !1053, line: 124, baseType: !5, size: 32, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1055, file: !1053, line: 128, baseType: !5, size: 32, offset: 480)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1055, file: !1053, line: 131, baseType: !1083, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1053, line: 75, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!467, !917, !917}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1055, file: !1053, line: 132, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1053, line: 78, baseType: !1072)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1055, file: !1053, line: 135, baseType: !467, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1055, file: !1053, line: 136, baseType: !1091, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1053, line: 82, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!467, !467, !917, !917}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1055, file: !1053, line: 137, baseType: !1096, size: 64, offset: 768)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1053, line: 83, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !467, !467}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1055, file: !1053, line: 141, baseType: !5, size: 32, offset: 832)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1049, file: !673, line: 48, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !763, line: 35, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !763, line: 35, size: 128, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1104, file: !763, line: 35, baseType: !1107, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !763, line: 33, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !763, line: 33, size: 128, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1108, file: !763, line: 33, baseType: !5, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1108, file: !763, line: 33, baseType: !5, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1108, file: !763, line: 33, baseType: !1113, size: 64, offset: 64)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 64, elements: !558)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1049, file: !673, line: 51, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1117, file: !4, line: 183, baseType: !1120, size: 128)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1121, file: !4, line: 182, baseType: !5, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1121, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1121, file: !4, line: 182, baseType: !825, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1049, file: !673, line: 54, baseType: !475, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1049, file: !673, line: 57, baseType: !1128, size: 128, offset: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1129, line: 31, size: 128, elements: !1130)
!1129 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1128, file: !1129, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1128, file: !1129, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1128, file: !1129, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1128, file: !1129, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1128, file: !1129, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1128, file: !1129, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1128, file: !1129, line: 56, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !476, line: 47, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1141, line: 75, size: 256, elements: !1142)
!1141 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1142 = !{!1143, !1155, !1156, !1157}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1140, file: !1141, line: 76, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1141, line: 68, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1141, line: 63, size: 320, elements: !1147)
!1147 = !{!1148, !1150, !1151, !1152}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1146, file: !1141, line: 64, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1146, file: !1141, line: 65, baseType: !1149, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1146, file: !1141, line: 66, baseType: !5, size: 32, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1146, file: !1141, line: 67, baseType: !1153, size: 128, offset: 192)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 128, elements: !993)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1141, line: 29, baseType: !529)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1140, file: !1141, line: 77, baseType: !1144, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1140, file: !1141, line: 78, baseType: !5, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1140, file: !1141, line: 79, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1141, line: 49, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1141, line: 45, size: 832, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1160, file: !1141, line: 46, baseType: !1149, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1160, file: !1141, line: 47, baseType: !1139, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1160, file: !1141, line: 48, baseType: !1165, size: 704, offset: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1166, line: 164, size: 704, elements: !1167)
!1166 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1167 = !{!1168, !1169, !1179, !1180, !1181, !1182, !1183, !1184, !1188, !1192, !1193, !1194, !1195}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1165, file: !1166, line: 166, baseType: !531, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1165, file: !1166, line: 167, baseType: !1170, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1166, line: 157, size: 192, elements: !1172)
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1171, file: !1166, line: 159, baseType: !465, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1171, file: !1166, line: 160, baseType: !1170, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1171, file: !1166, line: 161, baseType: !1176, size: 32, offset: 128)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 32, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 4)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1165, file: !1166, line: 168, baseType: !465, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1165, file: !1166, line: 169, baseType: !465, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1165, file: !1166, line: 170, baseType: !465, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1165, file: !1166, line: 171, baseType: !531, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1165, file: !1166, line: 172, baseType: !463, size: 32, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1165, file: !1166, line: 176, baseType: !1185, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1170, !467, !531}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1165, file: !1166, line: 177, baseType: !1189, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !467, !1170}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1165, file: !1166, line: 178, baseType: !467, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1165, file: !1166, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1165, file: !1166, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1165, file: !1166, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1049, file: !673, line: 60, baseType: !1128, size: 128, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1049, file: !673, line: 64, baseType: !1198, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1200, line: 33, flags: DIFlagFwdDecl)
!1200 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1049, file: !673, line: 67, baseType: !475, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1049, file: !673, line: 73, baseType: !1052, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1049, file: !673, line: 77, baseType: !1138, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1049, file: !673, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1049, file: !673, line: 82, baseType: !1206, size: 320, offset: 832)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !802, line: 62, size: 320, elements: !1207)
!1207 = !{!1208, !1214, !1215, !1216, !1217, !1218}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1206, file: !802, line: 63, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !802, line: 56, size: 128, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !802, line: 57, baseType: !1209, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1210, file: !802, line: 58, baseType: !557, size: 8, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1206, file: !802, line: 64, baseType: !5, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1206, file: !802, line: 66, baseType: !5, size: 32, offset: 96)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1206, file: !802, line: 68, baseType: !462, size: 8, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1206, file: !802, line: 70, baseType: !800, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1206, file: !802, line: 71, baseType: !808, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !722, file: !723, line: 476, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !723, line: 476, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !722, file: !723, line: 479, baseType: !1052, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !722, file: !723, line: 484, baseType: !475, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !722, file: !723, line: 488, baseType: !475, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !722, file: !723, line: 493, baseType: !475, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !722, file: !723, line: 496, baseType: !475, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !722, file: !723, line: 501, baseType: !1228, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !211, line: 2355, size: 576, elements: !1230)
!1230 = !{!1231, !1234, !1235, !1236, !1237, !1239, !1240, !1245, !1246, !1247, !1248, !1249, !1250}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1229, file: !211, line: 2356, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !211, line: 2356, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1229, file: !211, line: 2357, baseType: !468, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1229, file: !211, line: 2358, baseType: !463, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1229, file: !211, line: 2359, baseType: !463, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1229, file: !211, line: 2360, baseType: !1238, size: 128, offset: 192)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 128, elements: !1177)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1229, file: !211, line: 2364, baseType: !463, size: 32, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1229, file: !211, line: 2367, baseType: !1241, size: 128, offset: 384)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !211, line: 2349, size: 128, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1241, file: !211, line: 2351, baseType: !634, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1241, file: !211, line: 2352, baseType: !531, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1229, file: !211, line: 2371, baseType: !210, size: 32, offset: 512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1229, file: !211, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1229, file: !211, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1229, file: !211, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1229, file: !211, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1229, file: !211, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !722, file: !723, line: 504, baseType: !1252, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !723, line: 504, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !722, file: !723, line: 507, baseType: !1052, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !722, file: !723, line: 510, baseType: !463, size: 32, offset: 832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !722, file: !723, line: 513, baseType: !463, size: 32, offset: 864)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !722, file: !723, line: 516, baseType: !584, size: 32, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !722, file: !723, line: 519, baseType: !584, size: 32, offset: 928)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !722, file: !723, line: 522, baseType: !5, size: 32, offset: 960)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !722, file: !723, line: 523, baseType: !5, size: 32, offset: 992)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !722, file: !723, line: 528, baseType: !468, size: 64, offset: 1024)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !722, file: !723, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !722, file: !723, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !722, file: !723, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !722, file: !723, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !722, file: !723, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !722, file: !723, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !722, file: !723, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !722, file: !723, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !722, file: !723, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !722, file: !723, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !722, file: !723, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !722, file: !723, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !722, file: !723, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !722, file: !723, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !722, file: !723, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !722, file: !723, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !717, file: !4, line: 3254, baseType: !475, size: 64, offset: 1536)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !717, file: !4, line: 3257, baseType: !475, size: 64, offset: 1600)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !717, file: !4, line: 3258, baseType: !475, size: 64, offset: 1664)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !717, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !717, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !717, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !717, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !717, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !717, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !717, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !717, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !717, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !717, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !717, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !717, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !717, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !717, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !717, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !717, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !717, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !717, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !4, line: 3394, baseType: !1300, size: 1344)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1327, !1328, !1329, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1300, file: !4, line: 2280, baseType: !514, size: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1300, file: !4, line: 2281, baseType: !475, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1300, file: !4, line: 2282, baseType: !475, size: 64, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1300, file: !4, line: 2283, baseType: !475, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1300, file: !4, line: 2284, baseType: !475, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1300, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1300, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1300, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1300, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1300, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1300, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1300, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1300, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1300, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1300, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1300, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1300, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1300, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1300, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1300, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1300, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1300, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1300, file: !4, line: 2306, baseType: !1325, size: 32, offset: 544)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1326, line: 31, baseType: !463)
!1326 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1300, file: !4, line: 2307, baseType: !475, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1300, file: !4, line: 2308, baseType: !475, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1300, file: !4, line: 2314, baseType: !1330, size: 64, offset: 704)
!1330 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1330, file: !4, line: 2310, baseType: !463, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1330, file: !4, line: 2311, baseType: !468, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1330, file: !4, line: 2312, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1300, file: !4, line: 2315, baseType: !475, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1300, file: !4, line: 2316, baseType: !475, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1300, file: !4, line: 2317, baseType: !475, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1300, file: !4, line: 2318, baseType: !475, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1300, file: !4, line: 2319, baseType: !475, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1300, file: !4, line: 2320, baseType: !475, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1300, file: !4, line: 2321, baseType: !475, size: 64, offset: 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1300, file: !4, line: 2322, baseType: !475, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1300, file: !4, line: 2324, baseType: !1346, size: 64, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !478, file: !4, line: 3395, baseType: !1349, size: 320)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1349, file: !4, line: 1470, baseType: !514, size: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1349, file: !4, line: 1471, baseType: !475, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1349, file: !4, line: 1472, baseType: !475, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !478, file: !4, line: 3396, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1356)
!1356 = !{!1357, !1358, !1359}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !4, line: 1483, baseType: !514, size: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1355, file: !4, line: 1484, baseType: !463, size: 32, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1355, file: !4, line: 1485, baseType: !825, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !478, file: !4, line: 3397, baseType: !1361, size: 384)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1361, file: !4, line: 1830, baseType: !514, size: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1361, file: !4, line: 1831, baseType: !584, size: 32, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1361, file: !4, line: 1832, baseType: !475, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1361, file: !4, line: 1835, baseType: !825, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !478, file: !4, line: 3398, baseType: !1368, size: 704)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1379}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1368, file: !4, line: 1899, baseType: !514, size: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1368, file: !4, line: 1902, baseType: !475, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1368, file: !4, line: 1905, baseType: !771, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1368, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1368, file: !4, line: 1911, baseType: !1375, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !673, line: 117, size: 128, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1376, file: !673, line: 120, baseType: !1128, size: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1368, file: !4, line: 1914, baseType: !813, size: 256, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !478, file: !4, line: 3399, baseType: !1381, size: 704)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1381, file: !4, line: 2009, baseType: !514, size: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1381, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1381, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1381, file: !4, line: 2014, baseType: !584, size: 32, offset: 224)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1381, file: !4, line: 2016, baseType: !475, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1381, file: !4, line: 2017, baseType: !1115, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1381, file: !4, line: 2019, baseType: !475, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1381, file: !4, line: 2020, baseType: !475, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1381, file: !4, line: 2021, baseType: !475, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1381, file: !4, line: 2022, baseType: !475, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1381, file: !4, line: 2023, baseType: !475, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !478, file: !4, line: 3400, baseType: !1395, size: 832)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1395, file: !4, line: 2431, baseType: !514, size: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1395, file: !4, line: 2433, baseType: !475, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1395, file: !4, line: 2434, baseType: !475, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1395, file: !4, line: 2435, baseType: !475, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1395, file: !4, line: 2436, baseType: !475, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1395, file: !4, line: 2437, baseType: !1115, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1395, file: !4, line: 2438, baseType: !475, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1395, file: !4, line: 2440, baseType: !475, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1395, file: !4, line: 2441, baseType: !475, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1395, file: !4, line: 2443, baseType: !1407, size: 128, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1408, file: !4, line: 182, baseType: !1120, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !478, file: !4, line: 3401, baseType: !1412, size: 320)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1413)
!1413 = !{!1414, !1415, !1422}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1412, file: !4, line: 3329, baseType: !514, size: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1412, file: !4, line: 3330, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1417, file: !4, line: 3322, baseType: !1416, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1417, file: !4, line: 3323, baseType: !1416, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1417, file: !4, line: 3324, baseType: !475, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1412, file: !4, line: 3331, baseType: !1416, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !478, file: !4, line: 3402, baseType: !1424, size: 256)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !4, line: 1541, baseType: !514, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1424, file: !4, line: 1542, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1430, file: !4, line: 1538, baseType: !1433, size: 192)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1434, file: !4, line: 1537, baseType: !5, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1434, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1434, file: !4, line: 1537, baseType: !1439, size: 128, offset: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 128, elements: !558)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1442)
!1442 = !{!1443, !1444}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1441, file: !4, line: 1533, baseType: !475, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1441, file: !4, line: 1534, baseType: !475, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !478, file: !4, line: 3403, baseType: !1446, size: 512)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1457, !1458, !1459}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1446, file: !4, line: 1939, baseType: !514, size: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1446, file: !4, line: 1940, baseType: !584, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1446, file: !4, line: 1941, baseType: !215, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1446, file: !4, line: 1946, baseType: !1452, size: 32, offset: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1452, file: !4, line: 1943, baseType: !233, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1452, file: !4, line: 1944, baseType: !240, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1452, file: !4, line: 1945, baseType: !3, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1446, file: !4, line: 1950, baseType: !760, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1446, file: !4, line: 1951, baseType: !760, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1446, file: !4, line: 1953, baseType: !825, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !478, file: !4, line: 3404, baseType: !1461, size: 1664)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !4, line: 3338, baseType: !514, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1461, file: !4, line: 3341, baseType: !1465, size: 1472, offset: 192)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1466, line: 410, size: 1472, elements: !1467)
!1466 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1465, file: !1466, line: 412, baseType: !463, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1465, file: !1466, line: 413, baseType: !463, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1465, file: !1466, line: 414, baseType: !463, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1465, file: !1466, line: 415, baseType: !463, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1465, file: !1466, line: 416, baseType: !463, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1465, file: !1466, line: 417, baseType: !463, size: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1465, file: !1466, line: 418, baseType: !462, size: 8, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1465, file: !1466, line: 419, baseType: !462, size: 8, offset: 200)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1465, file: !1466, line: 420, baseType: !1477, size: 8, offset: 208)
!1477 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1465, file: !1466, line: 421, baseType: !1477, size: 8, offset: 216)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1465, file: !1466, line: 422, baseType: !1477, size: 8, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1465, file: !1466, line: 423, baseType: !1477, size: 8, offset: 232)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1465, file: !1466, line: 424, baseType: !1477, size: 8, offset: 240)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1465, file: !1466, line: 425, baseType: !1477, size: 8, offset: 248)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1465, file: !1466, line: 426, baseType: !1477, size: 8, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1465, file: !1466, line: 427, baseType: !1477, size: 8, offset: 264)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1465, file: !1466, line: 428, baseType: !1477, size: 8, offset: 272)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1465, file: !1466, line: 429, baseType: !1477, size: 8, offset: 280)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1465, file: !1466, line: 430, baseType: !1477, size: 8, offset: 288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1465, file: !1466, line: 431, baseType: !1477, size: 8, offset: 296)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1465, file: !1466, line: 432, baseType: !1477, size: 8, offset: 304)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1465, file: !1466, line: 433, baseType: !1477, size: 8, offset: 312)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1465, file: !1466, line: 434, baseType: !1477, size: 8, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1465, file: !1466, line: 435, baseType: !1477, size: 8, offset: 328)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1465, file: !1466, line: 436, baseType: !1477, size: 8, offset: 336)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1465, file: !1466, line: 437, baseType: !1477, size: 8, offset: 344)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1465, file: !1466, line: 438, baseType: !1477, size: 8, offset: 352)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1465, file: !1466, line: 439, baseType: !1477, size: 8, offset: 360)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1465, file: !1466, line: 440, baseType: !1477, size: 8, offset: 368)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1465, file: !1466, line: 441, baseType: !1477, size: 8, offset: 376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1465, file: !1466, line: 442, baseType: !1477, size: 8, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1465, file: !1466, line: 443, baseType: !1477, size: 8, offset: 392)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1465, file: !1466, line: 444, baseType: !1477, size: 8, offset: 400)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1465, file: !1466, line: 445, baseType: !1477, size: 8, offset: 408)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1465, file: !1466, line: 446, baseType: !1477, size: 8, offset: 416)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1465, file: !1466, line: 447, baseType: !1477, size: 8, offset: 424)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1465, file: !1466, line: 448, baseType: !1477, size: 8, offset: 432)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1465, file: !1466, line: 449, baseType: !1477, size: 8, offset: 440)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1465, file: !1466, line: 450, baseType: !1477, size: 8, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1465, file: !1466, line: 451, baseType: !1477, size: 8, offset: 456)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1465, file: !1466, line: 452, baseType: !1477, size: 8, offset: 464)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1465, file: !1466, line: 453, baseType: !1477, size: 8, offset: 472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1465, file: !1466, line: 454, baseType: !1477, size: 8, offset: 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1465, file: !1466, line: 455, baseType: !1477, size: 8, offset: 488)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1465, file: !1466, line: 456, baseType: !1477, size: 8, offset: 496)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1465, file: !1466, line: 457, baseType: !1477, size: 8, offset: 504)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1465, file: !1466, line: 458, baseType: !1477, size: 8, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1465, file: !1466, line: 459, baseType: !1477, size: 8, offset: 520)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1465, file: !1466, line: 460, baseType: !1477, size: 8, offset: 528)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1465, file: !1466, line: 461, baseType: !1477, size: 8, offset: 536)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1465, file: !1466, line: 462, baseType: !1477, size: 8, offset: 544)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1465, file: !1466, line: 463, baseType: !1477, size: 8, offset: 552)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1465, file: !1466, line: 464, baseType: !1477, size: 8, offset: 560)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1465, file: !1466, line: 465, baseType: !1477, size: 8, offset: 568)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1465, file: !1466, line: 466, baseType: !1477, size: 8, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1465, file: !1466, line: 467, baseType: !1477, size: 8, offset: 584)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1465, file: !1466, line: 468, baseType: !1477, size: 8, offset: 592)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1465, file: !1466, line: 469, baseType: !1477, size: 8, offset: 600)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1465, file: !1466, line: 470, baseType: !1477, size: 8, offset: 608)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1465, file: !1466, line: 471, baseType: !1477, size: 8, offset: 616)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1465, file: !1466, line: 472, baseType: !1477, size: 8, offset: 624)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1465, file: !1466, line: 473, baseType: !1477, size: 8, offset: 632)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1465, file: !1466, line: 474, baseType: !1477, size: 8, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1465, file: !1466, line: 475, baseType: !1477, size: 8, offset: 648)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1465, file: !1466, line: 476, baseType: !1477, size: 8, offset: 656)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1465, file: !1466, line: 477, baseType: !1477, size: 8, offset: 664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1465, file: !1466, line: 478, baseType: !1477, size: 8, offset: 672)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1465, file: !1466, line: 479, baseType: !1477, size: 8, offset: 680)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1465, file: !1466, line: 480, baseType: !1477, size: 8, offset: 688)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1465, file: !1466, line: 481, baseType: !1477, size: 8, offset: 696)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1465, file: !1466, line: 482, baseType: !1477, size: 8, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1465, file: !1466, line: 483, baseType: !1477, size: 8, offset: 712)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1465, file: !1466, line: 484, baseType: !1477, size: 8, offset: 720)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1465, file: !1466, line: 485, baseType: !1477, size: 8, offset: 728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1465, file: !1466, line: 486, baseType: !1477, size: 8, offset: 736)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1465, file: !1466, line: 487, baseType: !1477, size: 8, offset: 744)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1465, file: !1466, line: 488, baseType: !1477, size: 8, offset: 752)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1465, file: !1466, line: 489, baseType: !1477, size: 8, offset: 760)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1465, file: !1466, line: 490, baseType: !1477, size: 8, offset: 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1465, file: !1466, line: 491, baseType: !1477, size: 8, offset: 776)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1465, file: !1466, line: 492, baseType: !1477, size: 8, offset: 784)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1465, file: !1466, line: 493, baseType: !1477, size: 8, offset: 792)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1465, file: !1466, line: 494, baseType: !1477, size: 8, offset: 800)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1465, file: !1466, line: 495, baseType: !1477, size: 8, offset: 808)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1465, file: !1466, line: 496, baseType: !1477, size: 8, offset: 816)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1465, file: !1466, line: 497, baseType: !1477, size: 8, offset: 824)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1465, file: !1466, line: 498, baseType: !1477, size: 8, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1465, file: !1466, line: 499, baseType: !1477, size: 8, offset: 840)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1465, file: !1466, line: 500, baseType: !1477, size: 8, offset: 848)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1465, file: !1466, line: 501, baseType: !1477, size: 8, offset: 856)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1465, file: !1466, line: 502, baseType: !1477, size: 8, offset: 864)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1465, file: !1466, line: 503, baseType: !1477, size: 8, offset: 872)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1465, file: !1466, line: 504, baseType: !1477, size: 8, offset: 880)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1465, file: !1466, line: 505, baseType: !1477, size: 8, offset: 888)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1465, file: !1466, line: 506, baseType: !1477, size: 8, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1465, file: !1466, line: 507, baseType: !1477, size: 8, offset: 904)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1465, file: !1466, line: 508, baseType: !1477, size: 8, offset: 912)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1465, file: !1466, line: 509, baseType: !1477, size: 8, offset: 920)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1465, file: !1466, line: 510, baseType: !1477, size: 8, offset: 928)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1465, file: !1466, line: 511, baseType: !1477, size: 8, offset: 936)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1465, file: !1466, line: 512, baseType: !1477, size: 8, offset: 944)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1465, file: !1466, line: 513, baseType: !1477, size: 8, offset: 952)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1465, file: !1466, line: 514, baseType: !1477, size: 8, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1465, file: !1466, line: 515, baseType: !1477, size: 8, offset: 968)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1465, file: !1466, line: 516, baseType: !1477, size: 8, offset: 976)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1465, file: !1466, line: 517, baseType: !1477, size: 8, offset: 984)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1465, file: !1466, line: 518, baseType: !1477, size: 8, offset: 992)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1465, file: !1466, line: 519, baseType: !1477, size: 8, offset: 1000)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1465, file: !1466, line: 520, baseType: !1477, size: 8, offset: 1008)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1465, file: !1466, line: 521, baseType: !1477, size: 8, offset: 1016)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1465, file: !1466, line: 522, baseType: !1477, size: 8, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1465, file: !1466, line: 523, baseType: !1477, size: 8, offset: 1032)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1465, file: !1466, line: 524, baseType: !1477, size: 8, offset: 1040)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1465, file: !1466, line: 525, baseType: !1477, size: 8, offset: 1048)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1465, file: !1466, line: 526, baseType: !1477, size: 8, offset: 1056)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1465, file: !1466, line: 527, baseType: !1477, size: 8, offset: 1064)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1465, file: !1466, line: 528, baseType: !1477, size: 8, offset: 1072)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1465, file: !1466, line: 529, baseType: !1477, size: 8, offset: 1080)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1465, file: !1466, line: 530, baseType: !1477, size: 8, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1465, file: !1466, line: 531, baseType: !1477, size: 8, offset: 1096)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1465, file: !1466, line: 532, baseType: !1477, size: 8, offset: 1104)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1465, file: !1466, line: 533, baseType: !1477, size: 8, offset: 1112)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1465, file: !1466, line: 534, baseType: !1477, size: 8, offset: 1120)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1465, file: !1466, line: 535, baseType: !1477, size: 8, offset: 1128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1465, file: !1466, line: 536, baseType: !1477, size: 8, offset: 1136)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1465, file: !1466, line: 537, baseType: !1477, size: 8, offset: 1144)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1465, file: !1466, line: 538, baseType: !1477, size: 8, offset: 1152)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1465, file: !1466, line: 539, baseType: !1477, size: 8, offset: 1160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1465, file: !1466, line: 540, baseType: !1477, size: 8, offset: 1168)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1465, file: !1466, line: 541, baseType: !1477, size: 8, offset: 1176)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1465, file: !1466, line: 542, baseType: !1477, size: 8, offset: 1184)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1465, file: !1466, line: 543, baseType: !1477, size: 8, offset: 1192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1465, file: !1466, line: 544, baseType: !1477, size: 8, offset: 1200)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1465, file: !1466, line: 545, baseType: !1477, size: 8, offset: 1208)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1465, file: !1466, line: 546, baseType: !1477, size: 8, offset: 1216)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1465, file: !1466, line: 547, baseType: !1477, size: 8, offset: 1224)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1465, file: !1466, line: 548, baseType: !1477, size: 8, offset: 1232)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1465, file: !1466, line: 549, baseType: !1477, size: 8, offset: 1240)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1465, file: !1466, line: 550, baseType: !1477, size: 8, offset: 1248)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1465, file: !1466, line: 551, baseType: !1477, size: 8, offset: 1256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1465, file: !1466, line: 552, baseType: !1477, size: 8, offset: 1264)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1465, file: !1466, line: 553, baseType: !1477, size: 8, offset: 1272)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1465, file: !1466, line: 554, baseType: !1477, size: 8, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1465, file: !1466, line: 555, baseType: !1477, size: 8, offset: 1288)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1465, file: !1466, line: 556, baseType: !1477, size: 8, offset: 1296)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1465, file: !1466, line: 557, baseType: !1477, size: 8, offset: 1304)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1465, file: !1466, line: 558, baseType: !1477, size: 8, offset: 1312)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1465, file: !1466, line: 559, baseType: !1477, size: 8, offset: 1320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1465, file: !1466, line: 560, baseType: !1477, size: 8, offset: 1328)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1465, file: !1466, line: 561, baseType: !1477, size: 8, offset: 1336)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1465, file: !1466, line: 562, baseType: !1477, size: 8, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1465, file: !1466, line: 563, baseType: !1477, size: 8, offset: 1352)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1465, file: !1466, line: 564, baseType: !1477, size: 8, offset: 1360)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1465, file: !1466, line: 565, baseType: !1477, size: 8, offset: 1368)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1465, file: !1466, line: 566, baseType: !1477, size: 8, offset: 1376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1465, file: !1466, line: 567, baseType: !1477, size: 8, offset: 1384)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1465, file: !1466, line: 568, baseType: !1477, size: 8, offset: 1392)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1465, file: !1466, line: 569, baseType: !1477, size: 8, offset: 1400)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1465, file: !1466, line: 570, baseType: !1477, size: 8, offset: 1408)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1465, file: !1466, line: 571, baseType: !1477, size: 8, offset: 1416)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1465, file: !1466, line: 572, baseType: !1477, size: 8, offset: 1424)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1465, file: !1466, line: 573, baseType: !1477, size: 8, offset: 1432)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1465, file: !1466, line: 574, baseType: !1477, size: 8, offset: 1440)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !478, file: !4, line: 3405, baseType: !1633, size: 384)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1633, file: !4, line: 3353, baseType: !514, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1633, file: !4, line: 3356, baseType: !1637, size: 192, offset: 192)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1466, line: 578, size: 192, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1637, file: !1466, line: 580, baseType: !463, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1637, file: !1466, line: 581, baseType: !463, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1637, file: !1466, line: 582, baseType: !463, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1637, file: !1466, line: 583, baseType: !463, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1637, file: !1466, line: 584, baseType: !462, size: 8, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1637, file: !1466, line: 585, baseType: !462, size: 8, offset: 136)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1637, file: !1466, line: 586, baseType: !462, size: 8, offset: 144)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1637, file: !1466, line: 587, baseType: !462, size: 8, offset: 152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1637, file: !1466, line: 588, baseType: !462, size: 8, offset: 160)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1637, file: !1466, line: 589, baseType: !462, size: 8, offset: 168)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1637, file: !1466, line: 590, baseType: !462, size: 8, offset: 176)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !472, file: !248, line: 183, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !248, line: 314, size: 768, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1665, !1666, !1667, !1668, !1670, !1671, !1672}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1652, file: !248, line: 316, baseType: !983, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1652, file: !248, line: 317, baseType: !471, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1652, file: !248, line: 318, baseType: !471, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1652, file: !248, line: 319, baseType: !1651, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1652, file: !248, line: 320, baseType: !1651, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1652, file: !248, line: 321, baseType: !1651, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1652, file: !248, line: 322, baseType: !1651, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1652, file: !248, line: 323, baseType: !771, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1652, file: !248, line: 324, baseType: !467, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1652, file: !248, line: 327, baseType: !1664, size: 32, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !248, line: 312, baseType: !247)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1652, file: !248, line: 330, baseType: !5, size: 32, offset: 608)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1652, file: !248, line: 334, baseType: !463, size: 32, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1652, file: !248, line: 336, baseType: !463, size: 32, offset: 672)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1652, file: !248, line: 338, baseType: !1669, size: 16, offset: 704)
!1669 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1652, file: !248, line: 340, baseType: !5, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1652, file: !248, line: 342, baseType: !5, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1652, file: !248, line: 344, baseType: !5, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !472, file: !248, line: 184, baseType: !1651, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !248, line: 185, baseType: !471, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !472, file: !248, line: 186, baseType: !471, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !472, file: !248, line: 188, baseType: !471, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !472, file: !248, line: 190, baseType: !471, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !472, file: !248, line: 192, baseType: !471, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !472, file: !248, line: 194, baseType: !471, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !472, file: !248, line: 196, baseType: !471, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !472, file: !248, line: 197, baseType: !471, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !472, file: !248, line: 198, baseType: !471, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !472, file: !248, line: 199, baseType: !471, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !472, file: !248, line: 202, baseType: !471, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !472, file: !248, line: 204, baseType: !471, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !472, file: !248, line: 207, baseType: !1052, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !472, file: !248, line: 209, baseType: !467, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !472, file: !248, line: 214, baseType: !1689, size: 64, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !723, line: 177, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !723, line: 177, size: 128, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1691, file: !723, line: 177, baseType: !1694, size: 128)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !723, line: 176, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !723, line: 176, size: 128, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1695, file: !723, line: 176, baseType: !5, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1695, file: !723, line: 176, baseType: !5, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1695, file: !723, line: 176, baseType: !1700, size: 64, offset: 64)
!1700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 64, elements: !558)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !723, line: 174, baseType: !1702)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !271, line: 173, size: 1152, elements: !1704)
!1704 = !{!1705, !1729, !1733, !1756, !1757, !1761, !1766, !1767, !1771}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1703, file: !271, line: 175, baseType: !1706, size: 640)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !271, line: 114, size: 640, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1714, !1718, !1720, !1721, !1722, !1724, !1725, !1726, !1727, !1728}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !271, line: 117, baseType: !270, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1706, file: !271, line: 121, baseType: !468, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1706, file: !271, line: 125, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!462}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1706, file: !271, line: 130, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!5}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1706, file: !271, line: 133, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1706, file: !271, line: 136, baseType: !1719, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1706, file: !271, line: 139, baseType: !463, size: 32, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1706, file: !271, line: 143, baseType: !1723, size: 32, offset: 416)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !278, line: 80, baseType: !277)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1706, file: !271, line: 146, baseType: !5, size: 32, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1706, file: !271, line: 147, baseType: !5, size: 32, offset: 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1706, file: !271, line: 148, baseType: !5, size: 32, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1706, file: !271, line: 151, baseType: !5, size: 32, offset: 544)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1706, file: !271, line: 152, baseType: !5, size: 32, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !1703, file: !271, line: 179, baseType: !1730, size: 64, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !1703, file: !271, line: 182, baseType: !1734, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !248, line: 276, size: 192, elements: !1739)
!1739 = !{!1740, !1741, !1755}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !1738, file: !248, line: 278, baseType: !1052, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1738, file: !248, line: 279, baseType: !1742, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !248, line: 272, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !248, line: 272, size: 128, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1744, file: !248, line: 272, baseType: !1747, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !248, line: 270, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !248, line: 270, size: 128, elements: !1749)
!1749 = !{!1750, !1751, !1752}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1748, file: !248, line: 270, baseType: !5, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1748, file: !248, line: 270, baseType: !5, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1748, file: !248, line: 270, baseType: !1753, size: 64, offset: 64)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 64, elements: !558)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !248, line: 268, baseType: !471)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1738, file: !248, line: 280, baseType: !467, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !1703, file: !271, line: 187, baseType: !1730, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !1703, file: !271, line: 188, baseType: !1758, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !471}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !1703, file: !271, line: 191, baseType: !1762, size: 64, offset: 896)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !471, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !1703, file: !271, line: 195, baseType: !5, size: 32, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !1703, file: !271, line: 196, baseType: !1768, size: 64, offset: 1024)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!5, !471}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !1703, file: !271, line: 197, baseType: !1772, size: 64, offset: 1088)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !248, line: 358, size: 320, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1776, file: !248, line: 359, baseType: !475, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1776, file: !248, line: 361, baseType: !1775, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1776, file: !248, line: 363, baseType: !1775, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !1776, file: !248, line: 366, baseType: !1775, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1776, file: !248, line: 368, baseType: !463, size: 32, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1776, file: !248, line: 372, baseType: !5, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !1776, file: !248, line: 375, baseType: !5, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1776, file: !248, line: 378, baseType: !5, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1776, file: !248, line: 380, baseType: !5, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1776, file: !248, line: 382, baseType: !5, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1776, file: !248, line: 384, baseType: !5, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1776, file: !248, line: 387, baseType: !5, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !472, file: !248, line: 216, baseType: !1791, size: 320, offset: 1152)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !248, line: 88, size: 320, elements: !1792)
!1792 = !{!1793, !1796, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1791, file: !248, line: 90, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !248, line: 51, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1791, file: !248, line: 92, baseType: !1797, size: 192, offset: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !248, line: 57, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1797, file: !248, line: 60, baseType: !531, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1797, file: !248, line: 63, baseType: !463, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1797, file: !248, line: 65, baseType: !463, size: 32, offset: 96)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1797, file: !248, line: 67, baseType: !463, size: 32, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1797, file: !248, line: 69, baseType: !463, size: 32, offset: 160)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1791, file: !248, line: 96, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1791, file: !248, line: 99, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1791, file: !248, line: 102, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1791, file: !248, line: 105, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1791, file: !248, line: 108, baseType: !5, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1791, file: !248, line: 112, baseType: !5, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1791, file: !248, line: 116, baseType: !5, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1791, file: !248, line: 120, baseType: !5, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !472, file: !248, line: 217, baseType: !1813, size: 320, offset: 1472)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !248, line: 126, size: 320, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1813, file: !248, line: 128, baseType: !531, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1813, file: !248, line: 130, baseType: !531, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1813, file: !248, line: 134, baseType: !471, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1813, file: !248, line: 137, baseType: !463, size: 32, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1813, file: !248, line: 138, baseType: !463, size: 32, offset: 224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1813, file: !248, line: 141, baseType: !463, size: 32, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1813, file: !248, line: 144, baseType: !462, size: 8, offset: 288)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !472, file: !248, line: 218, baseType: !1823, size: 32, offset: 1792)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !248, line: 150, size: 32, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !1823, file: !248, line: 151, baseType: !5, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !472, file: !248, line: 219, baseType: !1827, size: 192, offset: 1856)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !248, line: 171, size: 192, elements: !1828)
!1828 = !{!1829, !1850, !1851}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !1827, file: !248, line: 173, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !248, line: 169, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !248, line: 169, size: 128, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1832, file: !248, line: 169, baseType: !1835, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !248, line: 168, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !248, line: 168, size: 128, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1836, file: !248, line: 168, baseType: !5, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1836, file: !248, line: 168, baseType: !5, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1836, file: !248, line: 168, baseType: !1841, size: 64, offset: 64)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1842, size: 64, elements: !558)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !248, line: 167, baseType: !1843)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !248, line: 156, size: 192, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !1844, file: !248, line: 159, baseType: !475, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !1844, file: !248, line: 161, baseType: !475, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !1844, file: !248, line: 163, baseType: !462, size: 8, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !1844, file: !248, line: 165, baseType: !462, size: 8, offset: 136)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !1827, file: !248, line: 174, baseType: !1138, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !1827, file: !248, line: 175, baseType: !1138, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !472, file: !248, line: 220, baseType: !1853, size: 256, offset: 2048)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !248, line: 74, size: 256, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !1853, file: !248, line: 76, baseType: !531, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !1853, file: !248, line: 77, baseType: !531, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1853, file: !248, line: 78, baseType: !475, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !1853, file: !248, line: 79, baseType: !462, size: 8, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !1853, file: !248, line: 80, baseType: !462, size: 8, offset: 200)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !1853, file: !248, line: 82, baseType: !462, size: 8, offset: 208)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !248, line: 223, baseType: !983, size: 64, offset: 2304)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !472, file: !248, line: 225, baseType: !463, size: 32, offset: 2368)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !472, file: !248, line: 227, baseType: !463, size: 32, offset: 2400)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !472, file: !248, line: 231, baseType: !463, size: 32, offset: 2432)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !472, file: !248, line: 238, baseType: !5, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !472, file: !248, line: 241, baseType: !5, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !472, file: !248, line: 244, baseType: !5, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !472, file: !248, line: 251, baseType: !5, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !472, file: !248, line: 253, baseType: !5, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !472, file: !248, line: 256, baseType: !5, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !472, file: !248, line: 258, baseType: !5, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !472, file: !248, line: 260, baseType: !5, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !472, file: !248, line: 262, baseType: !5, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !472, file: !248, line: 265, baseType: !5, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_dfs_info", file: !1877, line: 26, size: 256, elements: !1878)
!1877 = !DIFile(filename: "./ipa-utils.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dfn_number", scope: !1876, file: !1877, line: 27, baseType: !463, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "low_link", scope: !1876, file: !1877, line: 28, baseType: !463, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "new_node", scope: !1876, file: !1877, line: 29, baseType: !462, size: 8, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "on_stack", scope: !1876, file: !1877, line: 30, baseType: !462, size: 8, offset: 72)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "next_cycle", scope: !1876, file: !1877, line: 31, baseType: !471, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1876, file: !1877, line: 32, baseType: !467, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !1886, line: 62, baseType: !1887)
!1886 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !1886, line: 41, baseType: !529)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !1886, line: 63, baseType: !1887)
!1889 = !{i32 2, !"Dwarf Version", i32 4}
!1890 = !{i32 2, !"Debug Info Version", i32 3}
!1891 = !{i32 1, !"wchar_size", i32 4}
!1892 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1893 = distinct !DISubprogram(name: "vprintf", scope: !1894, file: !1894, line: 39, type: !1895, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1905)
!1894 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!463, !1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !468)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1899, file: !1, baseType: !5, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1899, file: !1, baseType: !5, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1899, file: !1, baseType: !467, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1899, file: !1, baseType: !467, size: 64, offset: 128)
!1905 = !{!1906, !1907}
!1906 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1893, file: !1894, line: 39, type: !1897)
!1907 = !DILocalVariable(name: "__arg", arg: 2, scope: !1893, file: !1894, line: 39, type: !1898)
!1908 = !DILocation(line: 0, scope: !1893)
!1909 = !DILocation(line: 41, column: 20, scope: !1893)
!1910 = !DILocation(line: 41, column: 10, scope: !1893)
!1911 = !DILocation(line: 41, column: 3, scope: !1893)
!1912 = distinct !DISubprogram(name: "getchar", scope: !1894, file: !1894, line: 47, type: !1913, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!463}
!1915 = !{}
!1916 = !DILocation(line: 49, column: 16, scope: !1912)
!1917 = !DILocation(line: 49, column: 10, scope: !1912)
!1918 = !DILocation(line: 49, column: 3, scope: !1912)
!1919 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1894, file: !1894, line: 56, type: !1920, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1972)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!463, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1924, line: 7, baseType: !1925)
!1924 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1926, line: 49, size: 1728, elements: !1927)
!1926 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1943, !1945, !1946, !1947, !1950, !1951, !1952, !1953, !1956, !1958, !1961, !1964, !1965, !1966, !1967, !1968}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1925, file: !1926, line: 51, baseType: !463, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1925, file: !1926, line: 54, baseType: !465, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1925, file: !1926, line: 55, baseType: !465, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1925, file: !1926, line: 56, baseType: !465, size: 64, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1925, file: !1926, line: 57, baseType: !465, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1925, file: !1926, line: 58, baseType: !465, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1925, file: !1926, line: 59, baseType: !465, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1925, file: !1926, line: 60, baseType: !465, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1925, file: !1926, line: 61, baseType: !465, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1925, file: !1926, line: 64, baseType: !465, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1925, file: !1926, line: 65, baseType: !465, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1925, file: !1926, line: 66, baseType: !465, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1925, file: !1926, line: 68, baseType: !1941, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1926, line: 36, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1925, file: !1926, line: 70, baseType: !1944, size: 64, offset: 832)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1925, file: !1926, line: 72, baseType: !463, size: 32, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1925, file: !1926, line: 73, baseType: !463, size: 32, offset: 928)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1925, file: !1926, line: 74, baseType: !1948, size: 64, offset: 960)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1949, line: 152, baseType: !531)
!1949 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1925, file: !1926, line: 77, baseType: !1669, size: 16, offset: 1024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1925, file: !1926, line: 78, baseType: !1477, size: 8, offset: 1040)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1925, file: !1926, line: 79, baseType: !557, size: 8, offset: 1048)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1925, file: !1926, line: 81, baseType: !1954, size: 64, offset: 1088)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1926, line: 43, baseType: null)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1925, file: !1926, line: 89, baseType: !1957, size: 64, offset: 1152)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1949, line: 153, baseType: !531)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1925, file: !1926, line: 91, baseType: !1959, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1926, line: 37, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1925, file: !1926, line: 92, baseType: !1962, size: 64, offset: 1280)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1926, line: 38, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1925, file: !1926, line: 93, baseType: !1944, size: 64, offset: 1344)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1925, file: !1926, line: 94, baseType: !467, size: 64, offset: 1408)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1925, file: !1926, line: 95, baseType: !917, size: 64, offset: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1925, file: !1926, line: 96, baseType: !463, size: 32, offset: 1536)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1925, file: !1926, line: 98, baseType: !1969, size: 160, offset: 1568)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 160, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 20)
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "__fp", arg: 1, scope: !1919, file: !1894, line: 56, type: !1922)
!1974 = !DILocation(line: 0, scope: !1919)
!1975 = !DILocation(line: 58, column: 10, scope: !1919)
!1976 = !DILocation(line: 58, column: 3, scope: !1919)
!1977 = distinct !DISubprogram(name: "getc_unlocked", scope: !1894, file: !1894, line: 66, type: !1920, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1978)
!1978 = !{!1979}
!1979 = !DILocalVariable(name: "__fp", arg: 1, scope: !1977, file: !1894, line: 66, type: !1922)
!1980 = !DILocation(line: 0, scope: !1977)
!1981 = !DILocation(line: 68, column: 10, scope: !1977)
!1982 = !DILocation(line: 68, column: 3, scope: !1977)
!1983 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1894, file: !1894, line: 73, type: !1913, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1984 = !DILocation(line: 75, column: 10, scope: !1983)
!1985 = !DILocation(line: 75, column: 3, scope: !1983)
!1986 = distinct !DISubprogram(name: "putchar", scope: !1894, file: !1894, line: 82, type: !1987, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!463, !463}
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "__c", arg: 1, scope: !1986, file: !1894, line: 82, type: !463)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 84, column: 21, scope: !1986)
!1993 = !DILocation(line: 84, column: 10, scope: !1986)
!1994 = !DILocation(line: 84, column: 3, scope: !1986)
!1995 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1894, file: !1894, line: 91, type: !1996, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!463, !463, !1922}
!1998 = !{!1999, !2000}
!1999 = !DILocalVariable(name: "__c", arg: 1, scope: !1995, file: !1894, line: 91, type: !463)
!2000 = !DILocalVariable(name: "__stream", arg: 2, scope: !1995, file: !1894, line: 91, type: !1922)
!2001 = !DILocation(line: 0, scope: !1995)
!2002 = !DILocation(line: 93, column: 10, scope: !1995)
!2003 = !DILocation(line: 93, column: 3, scope: !1995)
!2004 = distinct !DISubprogram(name: "putc_unlocked", scope: !1894, file: !1894, line: 101, type: !1996, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2005)
!2005 = !{!2006, !2007}
!2006 = !DILocalVariable(name: "__c", arg: 1, scope: !2004, file: !1894, line: 101, type: !463)
!2007 = !DILocalVariable(name: "__stream", arg: 2, scope: !2004, file: !1894, line: 101, type: !1922)
!2008 = !DILocation(line: 0, scope: !2004)
!2009 = !DILocation(line: 103, column: 10, scope: !2004)
!2010 = !DILocation(line: 103, column: 3, scope: !2004)
!2011 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1894, file: !1894, line: 108, type: !1987, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "__c", arg: 1, scope: !2011, file: !1894, line: 108, type: !463)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocation(line: 110, column: 10, scope: !2011)
!2016 = !DILocation(line: 110, column: 3, scope: !2011)
!2017 = distinct !DISubprogram(name: "getline", scope: !1894, file: !1894, line: 118, type: !2018, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2022)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!2020, !464, !2021, !1922}
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1949, line: 193, baseType: !531)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2017, file: !1894, line: 118, type: !464)
!2024 = !DILocalVariable(name: "__n", arg: 2, scope: !2017, file: !1894, line: 118, type: !2021)
!2025 = !DILocalVariable(name: "__stream", arg: 3, scope: !2017, file: !1894, line: 118, type: !1922)
!2026 = !DILocation(line: 0, scope: !2017)
!2027 = !DILocation(line: 120, column: 10, scope: !2017)
!2028 = !DILocation(line: 120, column: 3, scope: !2017)
!2029 = distinct !DISubprogram(name: "feof_unlocked", scope: !1894, file: !1894, line: 128, type: !1920, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2030)
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "__stream", arg: 1, scope: !2029, file: !1894, line: 128, type: !1922)
!2032 = !DILocation(line: 0, scope: !2029)
!2033 = !DILocation(line: 130, column: 10, scope: !2029)
!2034 = !DILocation(line: 130, column: 3, scope: !2029)
!2035 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1894, file: !1894, line: 135, type: !1920, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2036)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "__stream", arg: 1, scope: !2035, file: !1894, line: 135, type: !1922)
!2038 = !DILocation(line: 0, scope: !2035)
!2039 = !DILocation(line: 137, column: 10, scope: !2035)
!2040 = !DILocation(line: 137, column: 3, scope: !2035)
!2041 = distinct !DISubprogram(name: "tolower", scope: !2042, file: !2042, line: 207, type: !1987, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2043)
!2042 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "__c", arg: 1, scope: !2041, file: !2042, line: 207, type: !463)
!2045 = !DILocation(line: 0, scope: !2041)
!2046 = !DILocation(line: 209, column: 22, scope: !2041)
!2047 = !DILocation(line: 209, column: 39, scope: !2041)
!2048 = !DILocation(line: 209, column: 38, scope: !2041)
!2049 = !DILocation(line: 209, column: 37, scope: !2041)
!2050 = !DILocation(line: 209, column: 10, scope: !2041)
!2051 = !DILocation(line: 209, column: 3, scope: !2041)
!2052 = distinct !DISubprogram(name: "toupper", scope: !2042, file: !2042, line: 213, type: !1987, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2053)
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "__c", arg: 1, scope: !2052, file: !2042, line: 213, type: !463)
!2055 = !DILocation(line: 0, scope: !2052)
!2056 = !DILocation(line: 215, column: 22, scope: !2052)
!2057 = !DILocation(line: 215, column: 39, scope: !2052)
!2058 = !DILocation(line: 215, column: 38, scope: !2052)
!2059 = !DILocation(line: 215, column: 37, scope: !2052)
!2060 = !DILocation(line: 215, column: 10, scope: !2052)
!2061 = !DILocation(line: 215, column: 3, scope: !2052)
!2062 = distinct !DISubprogram(name: "atoi", scope: !2063, file: !2063, line: 361, type: !2064, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2066)
!2063 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!463, !468}
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2062, file: !2063, line: 361, type: !468)
!2068 = !DILocation(line: 0, scope: !2062)
!2069 = !DILocation(line: 363, column: 16, scope: !2062)
!2070 = !DILocation(line: 363, column: 10, scope: !2062)
!2071 = !DILocation(line: 363, column: 3, scope: !2062)
!2072 = distinct !DISubprogram(name: "atol", scope: !2063, file: !2063, line: 366, type: !2073, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!531, !468}
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2072, file: !2063, line: 366, type: !468)
!2077 = !DILocation(line: 0, scope: !2072)
!2078 = !DILocation(line: 368, column: 10, scope: !2072)
!2079 = !DILocation(line: 368, column: 3, scope: !2072)
!2080 = distinct !DISubprogram(name: "atoll", scope: !2063, file: !2063, line: 373, type: !2081, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2084)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2083, !468}
!2083 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2080, file: !2063, line: 373, type: !468)
!2086 = !DILocation(line: 0, scope: !2080)
!2087 = !DILocation(line: 375, column: 10, scope: !2080)
!2088 = !DILocation(line: 375, column: 3, scope: !2080)
!2089 = distinct !DISubprogram(name: "bsearch", scope: !2090, file: !2090, line: 20, type: !2091, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2094)
!2090 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!467, !1063, !1063, !917, !917, !2093}
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2063, line: 808, baseType: !1067)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2095 = !DILocalVariable(name: "__key", arg: 1, scope: !2089, file: !2090, line: 20, type: !1063)
!2096 = !DILocalVariable(name: "__base", arg: 2, scope: !2089, file: !2090, line: 20, type: !1063)
!2097 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2089, file: !2090, line: 20, type: !917)
!2098 = !DILocalVariable(name: "__size", arg: 4, scope: !2089, file: !2090, line: 20, type: !917)
!2099 = !DILocalVariable(name: "__compar", arg: 5, scope: !2089, file: !2090, line: 21, type: !2093)
!2100 = !DILocalVariable(name: "__l", scope: !2089, file: !2090, line: 23, type: !917)
!2101 = !DILocalVariable(name: "__u", scope: !2089, file: !2090, line: 23, type: !917)
!2102 = !DILocalVariable(name: "__idx", scope: !2089, file: !2090, line: 23, type: !917)
!2103 = !DILocalVariable(name: "__p", scope: !2089, file: !2090, line: 24, type: !1063)
!2104 = !DILocalVariable(name: "__comparison", scope: !2089, file: !2090, line: 25, type: !463)
!2105 = !DILocation(line: 0, scope: !2089)
!2106 = !DILocation(line: 29, column: 3, scope: !2089)
!2107 = !DILocation(line: 27, column: 7, scope: !2089)
!2108 = !DILocation(line: 29, column: 14, scope: !2089)
!2109 = !DILocation(line: 31, column: 20, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2089, file: !2090, line: 30, column: 5)
!2111 = !DILocation(line: 31, column: 27, scope: !2110)
!2112 = !DILocation(line: 32, column: 56, scope: !2110)
!2113 = !DILocation(line: 32, column: 47, scope: !2110)
!2114 = !DILocation(line: 33, column: 22, scope: !2110)
!2115 = !DILocation(line: 34, column: 24, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !2090, line: 34, column: 11)
!2117 = !DILocation(line: 34, column: 11, scope: !2110)
!2118 = !DILocation(line: 36, column: 29, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !2090, line: 36, column: 16)
!2120 = !DILocation(line: 36, column: 16, scope: !2116)
!2121 = !DILocation(line: 37, column: 14, scope: !2119)
!2122 = distinct !{!2122, !2106, !2123}
!2123 = !DILocation(line: 40, column: 5, scope: !2089)
!2124 = !DILocation(line: 43, column: 1, scope: !2089)
!2125 = distinct !DISubprogram(name: "atof", scope: !2126, file: !2126, line: 25, type: !2127, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2130)
!2126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!2129, !468}
!2129 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2130 = !{!2131}
!2131 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2125, file: !2126, line: 25, type: !468)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 27, column: 10, scope: !2125)
!2134 = !DILocation(line: 27, column: 3, scope: !2125)
!2135 = distinct !DISubprogram(name: "strtoimax", scope: !2136, file: !2136, line: 324, type: !2137, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2143)
!2136 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!2139, !1897, !2142, !463}
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2140, line: 101, baseType: !2141)
!2140 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1949, line: 72, baseType: !531)
!2142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !464)
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "nptr", arg: 1, scope: !2135, file: !2136, line: 324, type: !1897)
!2145 = !DILocalVariable(name: "endptr", arg: 2, scope: !2135, file: !2136, line: 324, type: !2142)
!2146 = !DILocalVariable(name: "base", arg: 3, scope: !2135, file: !2136, line: 324, type: !463)
!2147 = !DILocation(line: 0, scope: !2135)
!2148 = !DILocation(line: 327, column: 10, scope: !2135)
!2149 = !DILocation(line: 327, column: 3, scope: !2135)
!2150 = distinct !DISubprogram(name: "strtoumax", scope: !2136, file: !2136, line: 336, type: !2151, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2155)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2153, !1897, !2142, !463}
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2140, line: 102, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1949, line: 73, baseType: !529)
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "nptr", arg: 1, scope: !2150, file: !2136, line: 336, type: !1897)
!2157 = !DILocalVariable(name: "endptr", arg: 2, scope: !2150, file: !2136, line: 336, type: !2142)
!2158 = !DILocalVariable(name: "base", arg: 3, scope: !2150, file: !2136, line: 336, type: !463)
!2159 = !DILocation(line: 0, scope: !2150)
!2160 = !DILocation(line: 339, column: 10, scope: !2150)
!2161 = !DILocation(line: 339, column: 3, scope: !2150)
!2162 = distinct !DISubprogram(name: "wcstoimax", scope: !2136, file: !2136, line: 348, type: !2163, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2172)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2139, !2165, !2169, !463}
!2165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2166)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2136, line: 34, baseType: !463)
!2169 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2172 = !{!2173, !2174, !2175}
!2173 = !DILocalVariable(name: "nptr", arg: 1, scope: !2162, file: !2136, line: 348, type: !2165)
!2174 = !DILocalVariable(name: "endptr", arg: 2, scope: !2162, file: !2136, line: 348, type: !2169)
!2175 = !DILocalVariable(name: "base", arg: 3, scope: !2162, file: !2136, line: 348, type: !463)
!2176 = !DILocation(line: 0, scope: !2162)
!2177 = !DILocation(line: 351, column: 10, scope: !2162)
!2178 = !DILocation(line: 351, column: 3, scope: !2162)
!2179 = distinct !DISubprogram(name: "wcstoumax", scope: !2136, file: !2136, line: 362, type: !2180, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2153, !2165, !2169, !463}
!2182 = !{!2183, !2184, !2185}
!2183 = !DILocalVariable(name: "nptr", arg: 1, scope: !2179, file: !2136, line: 362, type: !2165)
!2184 = !DILocalVariable(name: "endptr", arg: 2, scope: !2179, file: !2136, line: 362, type: !2169)
!2185 = !DILocalVariable(name: "base", arg: 3, scope: !2179, file: !2136, line: 362, type: !463)
!2186 = !DILocation(line: 0, scope: !2179)
!2187 = !DILocation(line: 365, column: 10, scope: !2179)
!2188 = !DILocation(line: 365, column: 3, scope: !2179)
!2189 = distinct !DISubprogram(name: "stat", scope: !2190, file: !2190, line: 453, type: !2191, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2230)
!2190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!463, !468, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2195, line: 46, size: 1152, elements: !2196)
!2195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2196 = !{!2197, !2199, !2201, !2203, !2205, !2207, !2209, !2210, !2211, !2212, !2214, !2216, !2224, !2225, !2226}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2194, file: !2195, line: 48, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1949, line: 145, baseType: !529)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2194, file: !2195, line: 53, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1949, line: 148, baseType: !529)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2194, file: !2195, line: 61, baseType: !2202, size: 64, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1949, line: 151, baseType: !529)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2194, file: !2195, line: 62, baseType: !2204, size: 32, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1949, line: 150, baseType: !5)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2194, file: !2195, line: 64, baseType: !2206, size: 32, offset: 224)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1949, line: 146, baseType: !5)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2194, file: !2195, line: 65, baseType: !2208, size: 32, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1949, line: 147, baseType: !5)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2194, file: !2195, line: 67, baseType: !463, size: 32, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2194, file: !2195, line: 69, baseType: !2198, size: 64, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2194, file: !2195, line: 74, baseType: !1948, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2194, file: !2195, line: 78, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1949, line: 174, baseType: !531)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2194, file: !2195, line: 80, baseType: !2215, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1949, line: 179, baseType: !531)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2194, file: !2195, line: 91, baseType: !2217, size: 128, offset: 576)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2218, line: 10, size: 128, elements: !2219)
!2218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2219 = !{!2220, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2217, file: !2218, line: 12, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1949, line: 160, baseType: !531)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2217, file: !2218, line: 16, baseType: !2223, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1949, line: 196, baseType: !531)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2194, file: !2195, line: 92, baseType: !2217, size: 128, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2194, file: !2195, line: 93, baseType: !2217, size: 128, offset: 832)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2194, file: !2195, line: 106, baseType: !2227, size: 192, offset: 960)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 192, elements: !2228)
!2228 = !{!2229}
!2229 = !DISubrange(count: 3)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "__path", arg: 1, scope: !2189, file: !2190, line: 453, type: !468)
!2232 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2189, file: !2190, line: 453, type: !2193)
!2233 = !DILocation(line: 0, scope: !2189)
!2234 = !DILocation(line: 455, column: 10, scope: !2189)
!2235 = !DILocation(line: 455, column: 3, scope: !2189)
!2236 = distinct !DISubprogram(name: "lstat", scope: !2190, file: !2190, line: 460, type: !2191, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2237)
!2237 = !{!2238, !2239}
!2238 = !DILocalVariable(name: "__path", arg: 1, scope: !2236, file: !2190, line: 460, type: !468)
!2239 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2236, file: !2190, line: 460, type: !2193)
!2240 = !DILocation(line: 0, scope: !2236)
!2241 = !DILocation(line: 462, column: 10, scope: !2236)
!2242 = !DILocation(line: 462, column: 3, scope: !2236)
!2243 = distinct !DISubprogram(name: "fstat", scope: !2190, file: !2190, line: 467, type: !2244, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!463, !463, !2193}
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "__fd", arg: 1, scope: !2243, file: !2190, line: 467, type: !463)
!2248 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2243, file: !2190, line: 467, type: !2193)
!2249 = !DILocation(line: 0, scope: !2243)
!2250 = !DILocation(line: 469, column: 10, scope: !2243)
!2251 = !DILocation(line: 469, column: 3, scope: !2243)
!2252 = distinct !DISubprogram(name: "fstatat", scope: !2190, file: !2190, line: 474, type: !2253, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!463, !463, !468, !2193, !463}
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DILocalVariable(name: "__fd", arg: 1, scope: !2252, file: !2190, line: 474, type: !463)
!2257 = !DILocalVariable(name: "__filename", arg: 2, scope: !2252, file: !2190, line: 474, type: !468)
!2258 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2252, file: !2190, line: 474, type: !2193)
!2259 = !DILocalVariable(name: "__flag", arg: 4, scope: !2252, file: !2190, line: 474, type: !463)
!2260 = !DILocation(line: 0, scope: !2252)
!2261 = !DILocation(line: 477, column: 10, scope: !2252)
!2262 = !DILocation(line: 477, column: 3, scope: !2252)
!2263 = distinct !DISubprogram(name: "mknod", scope: !2190, file: !2190, line: 483, type: !2264, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!463, !468, !2204, !2198}
!2266 = !{!2267, !2268, !2269}
!2267 = !DILocalVariable(name: "__path", arg: 1, scope: !2263, file: !2190, line: 483, type: !468)
!2268 = !DILocalVariable(name: "__mode", arg: 2, scope: !2263, file: !2190, line: 483, type: !2204)
!2269 = !DILocalVariable(name: "__dev", arg: 3, scope: !2263, file: !2190, line: 483, type: !2198)
!2270 = !DILocation(line: 0, scope: !2263)
!2271 = !DILocation(line: 485, column: 10, scope: !2263)
!2272 = !DILocation(line: 485, column: 3, scope: !2263)
!2273 = distinct !DISubprogram(name: "mknodat", scope: !2190, file: !2190, line: 491, type: !2274, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!463, !463, !468, !2204, !2198}
!2276 = !{!2277, !2278, !2279, !2280}
!2277 = !DILocalVariable(name: "__fd", arg: 1, scope: !2273, file: !2190, line: 491, type: !463)
!2278 = !DILocalVariable(name: "__path", arg: 2, scope: !2273, file: !2190, line: 491, type: !468)
!2279 = !DILocalVariable(name: "__mode", arg: 3, scope: !2273, file: !2190, line: 491, type: !2204)
!2280 = !DILocalVariable(name: "__dev", arg: 4, scope: !2273, file: !2190, line: 491, type: !2198)
!2281 = !DILocation(line: 0, scope: !2273)
!2282 = !DILocation(line: 494, column: 10, scope: !2273)
!2283 = !DILocation(line: 494, column: 3, scope: !2273)
!2284 = distinct !DISubprogram(name: "stat64", scope: !2190, file: !2190, line: 502, type: !2285, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2307)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!463, !468, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2195, line: 119, size: 1152, elements: !2289)
!2289 = !{!2290, !2291, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2303, !2304, !2305, !2306}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2288, file: !2195, line: 121, baseType: !2198, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2288, file: !2195, line: 123, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1949, line: 149, baseType: !529)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2288, file: !2195, line: 124, baseType: !2202, size: 64, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2288, file: !2195, line: 125, baseType: !2204, size: 32, offset: 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2288, file: !2195, line: 132, baseType: !2206, size: 32, offset: 224)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2288, file: !2195, line: 133, baseType: !2208, size: 32, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2288, file: !2195, line: 135, baseType: !463, size: 32, offset: 288)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2288, file: !2195, line: 136, baseType: !2198, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2288, file: !2195, line: 137, baseType: !1948, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2288, file: !2195, line: 143, baseType: !2213, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2288, file: !2195, line: 144, baseType: !2302, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1949, line: 180, baseType: !531)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2288, file: !2195, line: 152, baseType: !2217, size: 128, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2288, file: !2195, line: 153, baseType: !2217, size: 128, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2288, file: !2195, line: 154, baseType: !2217, size: 128, offset: 832)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2288, file: !2195, line: 164, baseType: !2227, size: 192, offset: 960)
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "__path", arg: 1, scope: !2284, file: !2190, line: 502, type: !468)
!2309 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2284, file: !2190, line: 502, type: !2287)
!2310 = !DILocation(line: 0, scope: !2284)
!2311 = !DILocation(line: 504, column: 10, scope: !2284)
!2312 = !DILocation(line: 504, column: 3, scope: !2284)
!2313 = distinct !DISubprogram(name: "lstat64", scope: !2190, file: !2190, line: 509, type: !2285, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2314)
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "__path", arg: 1, scope: !2313, file: !2190, line: 509, type: !468)
!2316 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2313, file: !2190, line: 509, type: !2287)
!2317 = !DILocation(line: 0, scope: !2313)
!2318 = !DILocation(line: 511, column: 10, scope: !2313)
!2319 = !DILocation(line: 511, column: 3, scope: !2313)
!2320 = distinct !DISubprogram(name: "fstat64", scope: !2190, file: !2190, line: 516, type: !2321, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!463, !463, !2287}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "__fd", arg: 1, scope: !2320, file: !2190, line: 516, type: !463)
!2325 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2320, file: !2190, line: 516, type: !2287)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 518, column: 10, scope: !2320)
!2328 = !DILocation(line: 518, column: 3, scope: !2320)
!2329 = distinct !DISubprogram(name: "fstatat64", scope: !2190, file: !2190, line: 523, type: !2330, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!463, !463, !468, !2287, !463}
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DILocalVariable(name: "__fd", arg: 1, scope: !2329, file: !2190, line: 523, type: !463)
!2334 = !DILocalVariable(name: "__filename", arg: 2, scope: !2329, file: !2190, line: 523, type: !468)
!2335 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2329, file: !2190, line: 523, type: !2287)
!2336 = !DILocalVariable(name: "__flag", arg: 4, scope: !2329, file: !2190, line: 523, type: !463)
!2337 = !DILocation(line: 0, scope: !2329)
!2338 = !DILocation(line: 526, column: 10, scope: !2329)
!2339 = !DILocation(line: 526, column: 3, scope: !2329)
!2340 = distinct !DISubprogram(name: "ipa_utils_print_order", scope: !1, file: !1, line: 48, type: !2341, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !1922, !468, !470, !463}
!2343 = !{!2344, !2345, !2346, !2347, !2348}
!2344 = !DILocalVariable(name: "out", arg: 1, scope: !2340, file: !1, line: 48, type: !1922)
!2345 = !DILocalVariable(name: "note", arg: 2, scope: !2340, file: !1, line: 49, type: !468)
!2346 = !DILocalVariable(name: "order", arg: 3, scope: !2340, file: !1, line: 50, type: !470)
!2347 = !DILocalVariable(name: "count", arg: 4, scope: !2340, file: !1, line: 51, type: !463)
!2348 = !DILocalVariable(name: "i", scope: !2340, file: !1, line: 53, type: !463)
!2349 = !DILocation(line: 0, scope: !2340)
!2350 = !DILocation(line: 54, column: 3, scope: !2340)
!2351 = !DILocation(line: 56, column: 8, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2340, file: !1, line: 56, column: 3)
!2353 = !DILocation(line: 0, scope: !2352)
!2354 = !DILocation(line: 56, column: 25, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !1, line: 56, column: 3)
!2356 = !DILocation(line: 56, column: 3, scope: !2352)
!2357 = !DILocation(line: 57, column: 22, scope: !2355)
!2358 = !DILocation(line: 57, column: 33, scope: !2355)
!2359 = !DILocation(line: 57, column: 5, scope: !2355)
!2360 = !DILocation(line: 56, column: 3, scope: !2355)
!2361 = distinct !{!2361, !2356, !2362}
!2362 = !DILocation(line: 57, column: 41, scope: !2352)
!2363 = !DILocation(line: 58, column: 3, scope: !2340)
!2364 = !DILocation(line: 59, column: 3, scope: !2340)
!2365 = !DILocation(line: 60, column: 1, scope: !2340)
!2366 = distinct !DISubprogram(name: "ipa_utils_reduced_inorder", scope: !1, file: !1, line: 158, type: !2367, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2372)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!463, !470, !462, !462, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!462, !1651}
!2372 = !{!2373, !2374, !2375, !2376, !2377, !2378, !2424, !2425, !2429}
!2373 = !DILocalVariable(name: "order", arg: 1, scope: !2366, file: !1, line: 158, type: !470)
!2374 = !DILocalVariable(name: "reduce", arg: 2, scope: !2366, file: !1, line: 159, type: !462)
!2375 = !DILocalVariable(name: "allow_overwritable", arg: 3, scope: !2366, file: !1, line: 159, type: !462)
!2376 = !DILocalVariable(name: "ignore_edge", arg: 4, scope: !2366, file: !1, line: 160, type: !2369)
!2377 = !DILocalVariable(name: "node", scope: !2366, file: !1, line: 162, type: !471)
!2378 = !DILocalVariable(name: "env", scope: !2366, file: !1, line: 163, type: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "searchc_env", file: !1, line: 63, size: 384, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2385, !2422, !2423}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2379, file: !1, line: 64, baseType: !470, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !2379, file: !1, line: 65, baseType: !463, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2379, file: !1, line: 66, baseType: !470, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "order_pos", scope: !2379, file: !1, line: 67, baseType: !463, size: 32, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nodes_marked_new", scope: !2379, file: !1, line: 68, baseType: !2386, size: 64, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !1886, line: 128, baseType: !2387)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !1886, line: 109, size: 448, elements: !2389)
!2389 = !{!2390, !2399, !2404, !2409, !2414, !2419, !2421}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2388, file: !1886, line: 111, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !1886, line: 66, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !1886, line: 96, size: 256, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2393, file: !1886, line: 98, baseType: !1885, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2393, file: !1886, line: 101, baseType: !1888, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !2393, file: !1886, line: 104, baseType: !2391, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !2393, file: !1886, line: 105, baseType: !2391, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2388, file: !1886, line: 114, baseType: !2400, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !1886, line: 70, baseType: !2401)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!463, !1885, !1885}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !2388, file: !1886, line: 117, baseType: !2405, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !1886, line: 74, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !1885}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !2388, file: !1886, line: 120, baseType: !2410, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !1886, line: 78, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !1888}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !2388, file: !1886, line: 123, baseType: !2415, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !1886, line: 87, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!467, !463, !467}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !2388, file: !1886, line: 124, baseType: !2420, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !1886, line: 93, baseType: !1097)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !2388, file: !1886, line: 125, baseType: !467, size: 64, offset: 384)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "reduce", scope: !2379, file: !1, line: 69, baseType: !462, size: 8, offset: 320)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2379, file: !1, line: 70, baseType: !463, size: 32, offset: 352)
!2424 = !DILocalVariable(name: "result", scope: !2366, file: !1, line: 164, type: !2391)
!2425 = !DILocalVariable(name: "avail", scope: !2426, file: !1, line: 175, type: !453)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !1, line: 174, column: 5)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !1, line: 173, column: 3)
!2428 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 173, column: 3)
!2429 = !DILocalVariable(name: "info", scope: !2430, file: !1, line: 182, type: !1875)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 180, column: 2)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 177, column: 11)
!2432 = !DILocation(line: 0, scope: !2366)
!2433 = !DILocation(line: 163, column: 3, scope: !2366)
!2434 = !DILocation(line: 165, column: 15, scope: !2366)
!2435 = !DILocation(line: 165, column: 13, scope: !2366)
!2436 = !DILocation(line: 166, column: 7, scope: !2366)
!2437 = !DILocation(line: 166, column: 18, scope: !2366)
!2438 = !DILocation(line: 167, column: 7, scope: !2366)
!2439 = !DILocation(line: 167, column: 14, scope: !2366)
!2440 = !DILocation(line: 168, column: 7, scope: !2366)
!2441 = !DILocation(line: 168, column: 17, scope: !2366)
!2442 = !DILocation(line: 169, column: 26, scope: !2366)
!2443 = !DILocation(line: 169, column: 7, scope: !2366)
!2444 = !DILocation(line: 169, column: 24, scope: !2366)
!2445 = !DILocation(line: 170, column: 7, scope: !2366)
!2446 = !DILocation(line: 170, column: 13, scope: !2366)
!2447 = !DILocation(line: 171, column: 7, scope: !2366)
!2448 = !DILocation(line: 171, column: 14, scope: !2366)
!2449 = !DILocation(line: 0, scope: !2431)
!2450 = !DILocation(line: 173, column: 8, scope: !2428)
!2451 = !DILocation(line: 0, scope: !2428)
!2452 = !DILocation(line: 173, column: 3, scope: !2428)
!2453 = !DILocation(line: 175, column: 33, scope: !2426)
!2454 = !DILocation(line: 0, scope: !2426)
!2455 = !DILocation(line: 177, column: 17, scope: !2431)
!2456 = !DILocation(line: 178, column: 4, scope: !2431)
!2457 = !DILocation(line: 179, column: 18, scope: !2431)
!2458 = !DILocation(line: 179, column: 8, scope: !2431)
!2459 = !DILocation(line: 195, column: 8, scope: !2431)
!2460 = !DILocation(line: 195, column: 12, scope: !2431)
!2461 = !DILocation(line: 182, column: 62, scope: !2430)
!2462 = !DILocation(line: 0, scope: !2430)
!2463 = !DILocation(line: 183, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2430, file: !1, line: 183, column: 8)
!2465 = !DILocation(line: 183, column: 8, scope: !2430)
!2466 = !DILocation(line: 184, column: 13, scope: !2464)
!2467 = !DILocation(line: 184, column: 6, scope: !2464)
!2468 = !DILocation(line: 185, column: 10, scope: !2430)
!2469 = !DILocation(line: 185, column: 19, scope: !2430)
!2470 = !DILocation(line: 186, column: 10, scope: !2430)
!2471 = !DILocation(line: 186, column: 19, scope: !2430)
!2472 = !DILocation(line: 187, column: 10, scope: !2430)
!2473 = !DILocation(line: 187, column: 21, scope: !2430)
!2474 = !DILocation(line: 188, column: 14, scope: !2430)
!2475 = !DILocation(line: 190, column: 27, scope: !2430)
!2476 = !DILocation(line: 191, column: 31, scope: !2430)
!2477 = !DILocation(line: 191, column: 9, scope: !2430)
!2478 = !DILocation(line: 192, column: 9, scope: !2430)
!2479 = !DILocation(line: 190, column: 4, scope: !2430)
!2480 = !DILocation(line: 193, column: 2, scope: !2430)
!2481 = !DILocation(line: 173, column: 48, scope: !2427)
!2482 = !DILocation(line: 173, column: 3, scope: !2427)
!2483 = distinct !{!2483, !2452, !2484}
!2484 = !DILocation(line: 196, column: 5, scope: !2428)
!2485 = !DILocation(line: 197, column: 32, scope: !2366)
!2486 = !DILocation(line: 197, column: 12, scope: !2366)
!2487 = !DILocation(line: 198, column: 3, scope: !2366)
!2488 = !DILocation(line: 200, column: 44, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 199, column: 5)
!2490 = !DILocation(line: 201, column: 7, scope: !2489)
!2491 = !DILocation(line: 202, column: 36, scope: !2489)
!2492 = !DILocation(line: 202, column: 16, scope: !2489)
!2493 = distinct !{!2493, !2487, !2494}
!2494 = !DILocation(line: 203, column: 5, scope: !2366)
!2495 = !DILocation(line: 204, column: 26, scope: !2366)
!2496 = !DILocation(line: 204, column: 3, scope: !2366)
!2497 = !DILocation(line: 205, column: 13, scope: !2366)
!2498 = !DILocation(line: 205, column: 3, scope: !2366)
!2499 = !DILocation(line: 207, column: 14, scope: !2366)
!2500 = !DILocation(line: 208, column: 1, scope: !2366)
!2501 = !DILocation(line: 207, column: 3, scope: !2366)
!2502 = distinct !DISubprogram(name: "searchc", scope: !1, file: !1, line: 84, type: !2503, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2506)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2505, !471, !2369}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2516, !2517, !2520, !2521}
!2507 = !DILocalVariable(name: "env", arg: 1, scope: !2502, file: !1, line: 84, type: !2505)
!2508 = !DILocalVariable(name: "v", arg: 2, scope: !2502, file: !1, line: 84, type: !471)
!2509 = !DILocalVariable(name: "ignore_edge", arg: 3, scope: !2502, file: !1, line: 85, type: !2369)
!2510 = !DILocalVariable(name: "edge", scope: !2502, file: !1, line: 87, type: !1651)
!2511 = !DILocalVariable(name: "v_info", scope: !2502, file: !1, line: 88, type: !1875)
!2512 = !DILocalVariable(name: "w_info", scope: !2513, file: !1, line: 102, type: !1875)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 101, column: 5)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 100, column: 3)
!2515 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 100, column: 3)
!2516 = !DILocalVariable(name: "w", scope: !2513, file: !1, line: 103, type: !471)
!2517 = !DILocalVariable(name: "last", scope: !2518, file: !1, line: 130, type: !471)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 129, column: 5)
!2519 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 128, column: 7)
!2520 = !DILocalVariable(name: "x", scope: !2518, file: !1, line: 131, type: !471)
!2521 = !DILocalVariable(name: "x_info", scope: !2518, file: !1, line: 132, type: !1875)
!2522 = !DILocation(line: 0, scope: !2502)
!2523 = !DILocation(line: 88, column: 60, scope: !2502)
!2524 = !DILocation(line: 91, column: 11, scope: !2502)
!2525 = !DILocation(line: 91, column: 20, scope: !2502)
!2526 = !DILocation(line: 92, column: 27, scope: !2502)
!2527 = !DILocation(line: 92, column: 48, scope: !2502)
!2528 = !DILocation(line: 92, column: 45, scope: !2502)
!2529 = !DILocation(line: 92, column: 3, scope: !2502)
!2530 = !DILocation(line: 94, column: 29, scope: !2502)
!2531 = !DILocation(line: 94, column: 11, scope: !2502)
!2532 = !DILocation(line: 94, column: 22, scope: !2502)
!2533 = !DILocation(line: 95, column: 27, scope: !2502)
!2534 = !DILocation(line: 95, column: 11, scope: !2502)
!2535 = !DILocation(line: 95, column: 20, scope: !2502)
!2536 = !DILocation(line: 96, column: 13, scope: !2502)
!2537 = !DILocation(line: 97, column: 8, scope: !2502)
!2538 = !DILocation(line: 97, column: 20, scope: !2502)
!2539 = !DILocation(line: 97, column: 31, scope: !2502)
!2540 = !DILocation(line: 97, column: 3, scope: !2502)
!2541 = !DILocation(line: 97, column: 35, scope: !2502)
!2542 = !DILocation(line: 98, column: 11, scope: !2502)
!2543 = !DILocation(line: 98, column: 20, scope: !2502)
!2544 = !DILocation(line: 100, column: 18, scope: !2515)
!2545 = !DILocation(line: 0, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 105, column: 11)
!2547 = !DILocation(line: 100, column: 8, scope: !2515)
!2548 = !DILocation(line: 0, scope: !2515)
!2549 = !DILocation(line: 100, column: 3, scope: !2515)
!2550 = !DILocation(line: 103, column: 37, scope: !2513)
!2551 = !DILocation(line: 0, scope: !2513)
!2552 = !DILocation(line: 108, column: 14, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 108, column: 11)
!2554 = !DILocation(line: 108, column: 11, scope: !2553)
!2555 = !DILocation(line: 108, column: 18, scope: !2553)
!2556 = !DILocation(line: 108, column: 21, scope: !2553)
!2557 = !DILocation(line: 108, column: 70, scope: !2553)
!2558 = !DILocation(line: 108, column: 11, scope: !2513)
!2559 = !DILocation(line: 110, column: 40, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !1, line: 109, column: 2)
!2561 = !DILocation(line: 111, column: 16, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2560, file: !1, line: 111, column: 8)
!2563 = !DILocation(line: 111, column: 8, scope: !2562)
!2564 = !DILocation(line: 111, column: 8, scope: !2560)
!2565 = !DILocation(line: 113, column: 8, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 112, column: 6)
!2567 = !DILocation(line: 115, column: 12, scope: !2566)
!2568 = !DILocation(line: 115, column: 31, scope: !2566)
!2569 = !DILocation(line: 115, column: 21, scope: !2566)
!2570 = !DILocation(line: 115, column: 3, scope: !2566)
!2571 = !DILocation(line: 114, column: 25, scope: !2566)
!2572 = !DILocation(line: 117, column: 6, scope: !2566)
!2573 = !DILocation(line: 119, column: 19, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 119, column: 10)
!2575 = !DILocation(line: 119, column: 40, scope: !2574)
!2576 = !DILocation(line: 119, column: 30, scope: !2574)
!2577 = !DILocation(line: 120, column: 3, scope: !2574)
!2578 = !DILocation(line: 120, column: 15, scope: !2574)
!2579 = !DILocation(line: 120, column: 6, scope: !2574)
!2580 = !DILocation(line: 119, column: 10, scope: !2562)
!2581 = !DILocation(line: 122, column: 33, scope: !2574)
!2582 = !DILocation(line: 122, column: 23, scope: !2574)
!2583 = !DILocation(line: 122, column: 3, scope: !2574)
!2584 = !DILocation(line: 121, column: 25, scope: !2574)
!2585 = !DILocation(line: 121, column: 8, scope: !2574)
!2586 = !DILocation(line: 100, column: 46, scope: !2514)
!2587 = !DILocation(line: 100, column: 3, scope: !2514)
!2588 = distinct !{!2588, !2549, !2589}
!2589 = !DILocation(line: 125, column: 5, scope: !2515)
!2590 = !DILocation(line: 128, column: 15, scope: !2519)
!2591 = !DILocation(line: 105, column: 26, scope: !2546)
!2592 = !DILocation(line: 105, column: 11, scope: !2513)
!2593 = !DILocation(line: 108, column: 62, scope: !2553)
!2594 = !DILocation(line: 128, column: 35, scope: !2519)
!2595 = !DILocation(line: 128, column: 24, scope: !2519)
!2596 = !DILocation(line: 128, column: 7, scope: !2502)
!2597 = !DILocation(line: 0, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !1, line: 138, column: 6)
!2599 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 133, column: 10)
!2600 = !DILocation(line: 133, column: 7, scope: !2518)
!2601 = !DILocation(line: 0, scope: !2518)
!2602 = !DILocation(line: 134, column: 11, scope: !2599)
!2603 = !DILocation(line: 134, column: 17, scope: !2599)
!2604 = !DILocation(line: 134, column: 6, scope: !2599)
!2605 = !DILocation(line: 135, column: 38, scope: !2599)
!2606 = !DILocation(line: 136, column: 10, scope: !2599)
!2607 = !DILocation(line: 136, column: 19, scope: !2599)
!2608 = !DILocation(line: 138, column: 11, scope: !2598)
!2609 = !DILocation(line: 138, column: 6, scope: !2598)
!2610 = !DILocation(line: 138, column: 6, scope: !2599)
!2611 = !DILocation(line: 140, column: 14, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 139, column: 4)
!2613 = !DILocation(line: 140, column: 25, scope: !2612)
!2614 = !DILocation(line: 142, column: 4, scope: !2612)
!2615 = !DILocation(line: 144, column: 9, scope: !2598)
!2616 = !DILocation(line: 144, column: 30, scope: !2598)
!2617 = !DILocation(line: 144, column: 4, scope: !2598)
!2618 = !DILocation(line: 144, column: 34, scope: !2598)
!2619 = !DILocation(line: 146, column: 16, scope: !2518)
!2620 = !DILocation(line: 145, column: 7, scope: !2599)
!2621 = distinct !{!2621, !2600, !2622}
!2622 = !DILocation(line: 146, column: 20, scope: !2518)
!2623 = !DILocation(line: 147, column: 16, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 147, column: 11)
!2625 = !DILocation(line: 147, column: 11, scope: !2624)
!2626 = !DILocation(line: 147, column: 11, scope: !2518)
!2627 = !DILocation(line: 148, column: 7, scope: !2624)
!2628 = !DILocation(line: 148, column: 28, scope: !2624)
!2629 = !DILocation(line: 148, column: 2, scope: !2624)
!2630 = !DILocation(line: 148, column: 32, scope: !2624)
!2631 = !DILocation(line: 150, column: 1, scope: !2502)
!2632 = distinct !DISubprogram(name: "get_base_var", scope: !1, file: !1, line: 216, type: !2633, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!475, !475}
!2635 = !{!2636}
!2636 = !DILocalVariable(name: "t", arg: 1, scope: !2632, file: !1, line: 216, type: !475)
!2637 = !DILocation(line: 0, scope: !2632)
!2638 = !DILocation(line: 218, column: 3, scope: !2632)
!2639 = !DILocation(line: 218, column: 11, scope: !2632)
!2640 = !DILocation(line: 219, column: 8, scope: !2632)
!2641 = !DILocation(line: 220, column: 3, scope: !2632)
!2642 = !DILocation(line: 222, column: 20, scope: !2632)
!2643 = !DILocation(line: 223, column: 20, scope: !2632)
!2644 = !DILocation(line: 225, column: 11, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2632, file: !1, line: 224, column: 5)
!2646 = distinct !{!2646, !2638, !2647}
!2647 = !DILocation(line: 226, column: 5, scope: !2632)
!2648 = !DILocation(line: 227, column: 3, scope: !2632)
