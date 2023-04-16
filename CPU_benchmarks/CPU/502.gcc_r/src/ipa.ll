; ModuleID = 'ipa.bc'
source_filename = "ipa.c"
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
%struct.gimple_df = type opaque
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
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.cgraph_thunk_info = type { i64, i64, %union.tree_node*, i8, i8, i8 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cgraph_node_set_element_def = type { %struct.cgraph_node*, i64 }
%struct.cgraph_node_set_iterator = type { %struct.cgraph_node_set_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@.str = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ipa.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@pass_ipa_function_and_variable_visibility = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8 ()* null, i32 ()* @local_function_and_variable_visibility, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 } }, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [14 x i8] c"whole-program\00", align 1
@pass_ipa_whole_program_visibility = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8 ()* @gate_whole_program_function_and_variable_visibility, i32 ()* @whole_program_function_and_variable_visibility, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 384 }, void ()* null, void (%struct.cgraph_node_set_def*)* null, void ()* null, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* null, i32 0, i32 (%struct.cgraph_node*)* null, void (%struct.varpool_node*)* null }, align 8, !dbg !1818
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_whole_program = external dso_local local_unnamed_addr global i32, align 4
@flag_lto = external dso_local local_unnamed_addr global i32, align 4
@flag_whopr = external dso_local local_unnamed_addr global i32, align 4
@varpool_nodes = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@varpool_nodes_queue = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"\0AMarking local functions:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible functions:\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\0AMarking externally visible variables:\00", align 1
@cgraph_function_flags_ready = external dso_local local_unnamed_addr global i8, align 1
@flag_ltrans = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"\0ANeeded variables:\00", align 1
@htab_hash_pointer = external dso_local local_unnamed_addr global i32 (i8*)*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1827 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1841, metadata !DIExpression()), !dbg !1842
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1843
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1844
  ret i32 %call, !dbg !1845
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1846 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1850
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1851
  ret i32 %call, !dbg !1852
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1853 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1907, metadata !DIExpression()), !dbg !1908
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1909
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1909
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1909
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1909
  %cmp = icmp uge i8* %0, %1, !dbg !1909
  %conv1 = zext i1 %cmp to i64, !dbg !1909
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1909
  %tobool = icmp eq i64 %expval, 0, !dbg !1909
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1909

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1909
  br label %cond.end, !dbg !1909

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1909
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1909
  %2 = load i8, i8* %0, align 1, !dbg !1909
  %conv3 = zext i8 %2 to i32, !dbg !1909
  br label %cond.end, !dbg !1909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1909
  ret i32 %cond, !dbg !1910
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1911 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1913, metadata !DIExpression()), !dbg !1914
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1915
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1915
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1915
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1915
  %cmp = icmp uge i8* %0, %1, !dbg !1915
  %conv1 = zext i1 %cmp to i64, !dbg !1915
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1915
  %tobool = icmp eq i64 %expval, 0, !dbg !1915
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1915

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1915
  br label %cond.end, !dbg !1915

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1915
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1915
  %2 = load i8, i8* %0, align 1, !dbg !1915
  %conv3 = zext i8 %2 to i32, !dbg !1915
  br label %cond.end, !dbg !1915

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1915
  ret i32 %cond, !dbg !1916
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1917 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1918
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1918
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1918
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1918
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1918
  %cmp = icmp uge i8* %1, %2, !dbg !1918
  %conv1 = zext i1 %cmp to i64, !dbg !1918
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1918
  %tobool = icmp eq i64 %expval, 0, !dbg !1918
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1918

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1918
  br label %cond.end, !dbg !1918

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1918
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1918
  %3 = load i8, i8* %1, align 1, !dbg !1918
  %conv3 = zext i8 %3 to i32, !dbg !1918
  br label %cond.end, !dbg !1918

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1918
  ret i32 %cond, !dbg !1919
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1920 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1924, metadata !DIExpression()), !dbg !1925
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1926
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1927
  ret i32 %call, !dbg !1928
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1929 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1933, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1934, metadata !DIExpression()), !dbg !1935
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1936
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1936
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1936
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1936
  %cmp = icmp uge i8* %0, %1, !dbg !1936
  %conv1 = zext i1 %cmp to i64, !dbg !1936
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1936
  %tobool = icmp eq i64 %expval, 0, !dbg !1936
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1936

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1936
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1936
  br label %cond.end, !dbg !1936

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1936
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1936
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1936
  store i8 %conv2, i8* %0, align 1, !dbg !1936
  %conv6 = and i32 %__c, 255, !dbg !1936
  br label %cond.end, !dbg !1936

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1936
  ret i32 %cond, !dbg !1937
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1938 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1940, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1941, metadata !DIExpression()), !dbg !1942
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1943
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1943
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1943
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1943
  %cmp = icmp uge i8* %0, %1, !dbg !1943
  %conv1 = zext i1 %cmp to i64, !dbg !1943
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1943
  %tobool = icmp eq i64 %expval, 0, !dbg !1943
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1943

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1943
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1943
  br label %cond.end, !dbg !1943

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1943
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1943
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1943
  store i8 %conv2, i8* %0, align 1, !dbg !1943
  %conv6 = and i32 %__c, 255, !dbg !1943
  br label %cond.end, !dbg !1943

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1943
  ret i32 %cond, !dbg !1944
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1945 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1949
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1949
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1949
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1949
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1949
  %cmp = icmp uge i8* %1, %2, !dbg !1949
  %conv1 = zext i1 %cmp to i64, !dbg !1949
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1949
  %tobool = icmp eq i64 %expval, 0, !dbg !1949
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1949

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1949
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1949
  br label %cond.end, !dbg !1949

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1949
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1949
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1949
  store i8 %conv4, i8* %1, align 1, !dbg !1949
  %conv6 = and i32 %__c, 255, !dbg !1949
  br label %cond.end, !dbg !1949

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1949
  ret i32 %cond, !dbg !1950
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1951 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1957, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1958, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1959, metadata !DIExpression()), !dbg !1960
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1961
  ret i64 %call, !dbg !1962
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1965, metadata !DIExpression()), !dbg !1966
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1967
  %0 = load i32, i32* %_flags, align 8, !dbg !1967
  %and = lshr i32 %0, 4, !dbg !1967
  %and.lobit = and i32 %and, 1, !dbg !1967
  ret i32 %and.lobit, !dbg !1968
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1969 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1971, metadata !DIExpression()), !dbg !1972
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1973
  %0 = load i32, i32* %_flags, align 8, !dbg !1973
  %and = lshr i32 %0, 5, !dbg !1973
  %and.lobit = and i32 %and, 1, !dbg !1973
  ret i32 %and.lobit, !dbg !1974
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1975 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1978, metadata !DIExpression()), !dbg !1979
  %__c.off = add i32 %__c, 128, !dbg !1980
  %0 = icmp ult i32 %__c.off, 384, !dbg !1980
  br i1 %0, label %cond.true, label %cond.end, !dbg !1980

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1981
  %1 = load i32*, i32** %call, align 8, !dbg !1982
  %idxprom = sext i32 %__c to i64, !dbg !1983
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1983
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1983
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1984
  ret i32 %cond, !dbg !1985
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1986 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1988, metadata !DIExpression()), !dbg !1989
  %__c.off = add i32 %__c, 128, !dbg !1990
  %0 = icmp ult i32 %__c.off, 384, !dbg !1990
  br i1 %0, label %cond.true, label %cond.end, !dbg !1990

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1991
  %1 = load i32*, i32** %call, align 8, !dbg !1992
  %idxprom = sext i32 %__c to i64, !dbg !1993
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1993
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1993
  br label %cond.end, !dbg !1994

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1994
  ret i32 %cond, !dbg !1995
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1996 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2003
  %conv = trunc i64 %call to i32, !dbg !2004
  ret i32 %conv, !dbg !2005
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2006 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2010, metadata !DIExpression()), !dbg !2011
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2012
  ret i64 %call, !dbg !2013
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2014 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2019, metadata !DIExpression()), !dbg !2020
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2021
  ret i64 %call, !dbg !2022
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2029, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2030, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2031, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2032, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2033, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 0, metadata !2034, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2035, metadata !DIExpression()), !dbg !2039
  br label %while.cond, !dbg !2040

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2041
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2035, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2034, metadata !DIExpression()), !dbg !2039
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2042
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2040

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2043
  %div = lshr i64 %add, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %div, metadata !2036, metadata !DIExpression()), !dbg !2039
  %mul = mul i64 %div, %__size, !dbg !2046
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2047
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2037, metadata !DIExpression()), !dbg !2039
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %call, metadata !2038, metadata !DIExpression()), !dbg !2039
  %cmp1 = icmp slt i32 %call, 0, !dbg !2049
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2051

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2052
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2054

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2034, metadata !DIExpression()), !dbg !2039
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2039
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2035, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2034, metadata !DIExpression()), !dbg !2039
  br label %while.cond, !dbg !2040, !llvm.loop !2056

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2039
  ret i8* %retval.0, !dbg !2058
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2065, metadata !DIExpression()), !dbg !2066
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2067
  ret double %call, !dbg !2068
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2069 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i32 %base, metadata !2080, metadata !DIExpression()), !dbg !2081
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2082
  ret i64 %call, !dbg !2083
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2090, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 %base, metadata !2092, metadata !DIExpression()), !dbg !2093
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2094
  ret i64 %call, !dbg !2095
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2096 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2107, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2108, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 %base, metadata !2109, metadata !DIExpression()), !dbg !2110
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2111
  ret i64 %call, !dbg !2112
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2118, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 %base, metadata !2119, metadata !DIExpression()), !dbg !2120
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2121
  ret i64 %call, !dbg !2122
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2165, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2166, metadata !DIExpression()), !dbg !2167
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2168
  ret i32 %call, !dbg !2169
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2173, metadata !DIExpression()), !dbg !2174
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2175
  ret i32 %call, !dbg !2176
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2182, metadata !DIExpression()), !dbg !2183
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2184
  ret i32 %call, !dbg !2185
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2193, metadata !DIExpression()), !dbg !2194
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2195
  ret i32 %call, !dbg !2196
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2197 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2203, metadata !DIExpression()), !dbg !2204
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2204
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2205
  ret i32 %call, !dbg !2206
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2207 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2211, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2212, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2214, metadata !DIExpression()), !dbg !2215
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2214, metadata !DIExpression(DW_OP_deref)), !dbg !2215
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2216
  ret i32 %call, !dbg !2217
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2245
  ret i32 %call, !dbg !2246
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2249, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2250, metadata !DIExpression()), !dbg !2251
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2252
  ret i32 %call, !dbg !2253
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2254 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2261
  ret i32 %call, !dbg !2262
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2267, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2268, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2270, metadata !DIExpression()), !dbg !2271
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2272
  ret i32 %call, !dbg !2273
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cgraph_postorder(%struct.cgraph_node** %order) local_unnamed_addr #4 !dbg !2274 {
entry:
  %last = alloca %struct.cgraph_edge, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %order, metadata !2278, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2287
  %0 = bitcast %struct.cgraph_edge* %last to i8*, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %0) #7, !dbg !2288
  %1 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !2289
  %conv = sext i32 %1 to i64, !dbg !2289
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %2, metadata !2286, metadata !DIExpression()), !dbg !2287
  br label %for.cond, !dbg !2290

for.cond:                                         ; preds = %for.body, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.body ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2279, metadata !DIExpression()), !dbg !2287
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2293
  br i1 %tobool, label %for.cond1.preheader, label %for.body, !dbg !2293

for.cond1.preheader:                              ; preds = %for.cond
  %2 = bitcast i8* %call to %struct.cgraph_node**, !dbg !2289
  br label %for.cond1, !dbg !2294

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !2296
  store i8* null, i8** %aux, align 8, !dbg !2298
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2299
  br label %for.cond, !dbg !2300, !llvm.loop !2301

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc69
  %order_pos.0 = phi i32 [ %order_pos.1.lcssa, %for.inc69 ], [ 0, %for.cond1.preheader ], !dbg !2303
  %stack_size.0 = phi i32 [ %stack_size.1.lcssa, %for.inc69 ], [ 0, %for.cond1.preheader ], !dbg !2304
  %pass.0 = phi i32 [ %inc70, %for.inc69 ], [ 0, %for.cond1.preheader ], !dbg !2305
  call void @llvm.dbg.value(metadata i32 %pass.0, metadata !2285, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.0, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.0, metadata !2282, metadata !DIExpression()), !dbg !2287
  %exitcond = icmp eq i32 %pass.0, 2, !dbg !2306
  br i1 %exitcond, label %for.end71, label %for.body3, !dbg !2294

for.body3:                                        ; preds = %for.cond1
  %tobool9 = icmp eq i32 %pass.0, 0, !dbg !2308
  br i1 %tobool9, label %for.body3.split.us, label %for.body3.for.body3.split_crit_edge, !dbg !2312

for.body3.for.body3.split_crit_edge:              ; preds = %for.body3
  br label %for.cond4, !dbg !2312

for.body3.split.us:                               ; preds = %for.body3
  br label %for.cond4.us, !dbg !2312

for.cond4.us:                                     ; preds = %for.inc66.us, %for.body3.split.us
  %order_pos.1.us = phi i32 [ %order_pos.0, %for.body3.split.us ], [ %order_pos.4.us, %for.inc66.us ], !dbg !2303
  %stack_size.1.us = phi i32 [ %stack_size.0, %for.body3.split.us ], [ %stack_size.6.us, %for.inc66.us ], !dbg !2304
  %node.1.in.us = phi %struct.cgraph_node** [ @cgraph_nodes, %for.body3.split.us ], [ %next67.us, %for.inc66.us ]
  %node.1.us = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in.us, align 8, !dbg !2313
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.us, metadata !2279, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.1.us, metadata !2282, metadata !DIExpression()), !dbg !2287
  %tobool5.us = icmp eq %struct.cgraph_node* %node.1.us, null, !dbg !2314
  br i1 %tobool5.us, label %for.inc69.us-lcssa.us, label %for.body6.us, !dbg !2314

for.body6.us:                                     ; preds = %for.cond4.us
  %aux7.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.us, i64 0, i32 16, !dbg !2315
  %3 = load i8*, i8** %aux7.us, align 8, !dbg !2315
  %tobool8.us = icmp eq i8* %3, null, !dbg !2316
  br i1 %tobool8.us, label %land.lhs.true.us, label %for.inc66.us, !dbg !2317

land.lhs.true.us:                                 ; preds = %for.body6.us
  %call10.us = call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* nonnull %node.1.us) #8, !dbg !2318
  %tobool11.us = icmp eq i8 %call10.us, 0, !dbg !2318
  br i1 %tobool11.us, label %land.lhs.true12.us, label %for.inc66.us, !dbg !2319

land.lhs.true12.us:                               ; preds = %land.lhs.true.us
  %address_taken.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.us, i64 0, i32 27, !dbg !2320
  %bf.load.us = load i16, i16* %address_taken.us, align 4, !dbg !2320
  %bf.clear.us = and i16 %bf.load.us, 2, !dbg !2320
  %tobool13.us = icmp eq i16 %bf.clear.us, 0, !dbg !2321
  br i1 %tobool13.us, label %if.then.us, label %for.inc66.us, !dbg !2322

if.then.us:                                       ; preds = %land.lhs.true12.us
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1.us, metadata !2280, metadata !DIExpression()), !dbg !2287
  %callers.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.us, i64 0, i32 2, !dbg !2323
  %4 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers.us, align 8, !dbg !2323
  %tobool14.us = icmp eq %struct.cgraph_edge* %4, null, !dbg !2326
  br i1 %tobool14.us, label %if.then15.us, label %if.else.us, !dbg !2327

if.else.us:                                       ; preds = %if.then.us
  %5 = ptrtoint %struct.cgraph_edge* %4 to i64, !dbg !2327
  %6 = bitcast i8** %aux7.us to i64*, !dbg !2328
  store i64 %5, i64* %6, align 8, !dbg !2328
  br label %if.end.us

if.then15.us:                                     ; preds = %if.then.us
  %7 = bitcast i8** %aux7.us to %struct.cgraph_edge**, !dbg !2329
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %7, align 8, !dbg !2329
  br label %if.end.us, !dbg !2330

if.end.us:                                        ; preds = %if.then15.us, %if.else.us
  br label %while.cond.us, !dbg !2331

while.cond.us:                                    ; preds = %if.end63.us, %if.end.us
  %order_pos.2.us = phi i32 [ %order_pos.1.us, %if.end.us ], [ %order_pos.3.us, %if.end63.us ], !dbg !2287
  %stack_size.2.us = phi i32 [ %stack_size.1.us, %if.end.us ], [ %stack_size.5.us, %if.end63.us ], !dbg !2287
  %node2.0.us = phi %struct.cgraph_node* [ %node.1.us, %if.end.us ], [ %node2.3.us, %if.end63.us ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.0.us, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.us, metadata !2282, metadata !DIExpression()), !dbg !2287
  %tobool19.us = icmp eq %struct.cgraph_node* %node2.0.us, null, !dbg !2331
  br i1 %tobool19.us, label %for.inc66.loopexit.us, label %while.cond20.preheader.us, !dbg !2331

while.cond20.us:                                  ; preds = %while.cond20.preheader.us, %if.end32.us
  %8 = phi i8* [ %.pre2, %while.cond20.preheader.us ], [ %14, %if.end32.us ]
  %9 = phi %struct.cgraph_edge* [ %28, %while.cond20.preheader.us ], [ %15, %if.end32.us ]
  %10 = phi i8* [ %.pre2, %while.cond20.preheader.us ], [ %16, %if.end32.us ], !dbg !2333
  %cmp22.us = icmp eq i8* %10, %0, !dbg !2335
  br i1 %cmp22.us, label %while.end.loopexit.us, label %while.body24.us, !dbg !2336

while.body24.us:                                  ; preds = %while.cond20.us
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %9, metadata !2283, metadata !DIExpression()), !dbg !2287
  %next_caller.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %9, i64 0, i32 4, !dbg !2337
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller.us, align 8, !dbg !2337
  %tobool26.us = icmp eq %struct.cgraph_edge* %11, null, !dbg !2340
  br i1 %tobool26.us, label %if.else30.us, label %if.then27.us, !dbg !2341

if.then27.us:                                     ; preds = %while.body24.us
  %12 = ptrtoint %struct.cgraph_edge* %11 to i64, !dbg !2341
  store i64 %12, i64* %27, align 8, !dbg !2342
  %13 = bitcast %struct.cgraph_edge* %11 to i8*, !dbg !2343
  br label %if.end32.us, !dbg !2343

if.else30.us:                                     ; preds = %while.body24.us
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %26, align 8, !dbg !2344
  br label %if.end32.us

if.end32.us:                                      ; preds = %if.else30.us, %if.then27.us
  %14 = phi i8* [ %0, %if.else30.us ], [ %13, %if.then27.us ]
  %15 = phi %struct.cgraph_edge* [ %last, %if.else30.us ], [ %11, %if.then27.us ]
  %16 = phi i8* [ %0, %if.else30.us ], [ %13, %if.then27.us ]
  %caller.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %9, i64 0, i32 1, !dbg !2345
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %caller.us, align 8, !dbg !2345
  %aux33.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i64 0, i32 16, !dbg !2347
  %18 = load i8*, i8** %aux33.us, align 8, !dbg !2347
  %tobool34.us = icmp eq i8* %18, null, !dbg !2348
  br i1 %tobool34.us, label %if.then35.us, label %while.cond20.us, !dbg !2349, !llvm.loop !2350

if.then35.us:                                     ; preds = %if.end32.us
  %caller.us.lcssa = phi %struct.cgraph_node** [ %caller.us, %if.end32.us ], !dbg !2345
  %.lcssa17 = phi %struct.cgraph_node* [ %17, %if.end32.us ], !dbg !2345
  %aux33.us.lcssa = phi i8** [ %aux33.us, %if.end32.us ], !dbg !2347
  %callers37.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.lcssa17, i64 0, i32 2, !dbg !2352
  %19 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers37.us, align 8, !dbg !2352
  %tobool38.us = icmp eq %struct.cgraph_edge* %19, null, !dbg !2355
  br i1 %tobool38.us, label %if.then39.us, label %if.else42.us, !dbg !2356

if.else42.us:                                     ; preds = %if.then35.us
  %20 = ptrtoint %struct.cgraph_edge* %19 to i64, !dbg !2356
  %21 = bitcast i8** %aux33.us.lcssa to i64*, !dbg !2357
  store i64 %20, i64* %21, align 8, !dbg !2357
  br label %if.end47.us

if.then39.us:                                     ; preds = %if.then35.us
  %22 = bitcast i8** %aux33.us.lcssa to %struct.cgraph_edge**, !dbg !2358
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %22, align 8, !dbg !2358
  br label %if.end47.us, !dbg !2359

if.end47.us:                                      ; preds = %if.then39.us, %if.else42.us
  %inc.us = add nsw i32 %stack_size.2.us, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  %idxprom.us = sext i32 %stack_size.2.us to i64, !dbg !2361
  %arrayidx.us = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %2, i64 %idxprom.us, !dbg !2361
  store %struct.cgraph_node* %node2.0.us, %struct.cgraph_node** %arrayidx.us, align 8, !dbg !2362
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %caller.us.lcssa, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %23, metadata !2280, metadata !DIExpression()), !dbg !2287
  %aux50.us.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %23, i64 0, i32 16, !dbg !2364
  %.pre3 = load i8*, i8** %aux50.us.phi.trans.insert, align 8, !dbg !2366
  br label %while.end.us, !dbg !2367

while.end.us:                                     ; preds = %while.end.loopexit.us, %if.end47.us
  %24 = phi i8* [ %.pre3, %if.end47.us ], [ %.lcssa15, %while.end.loopexit.us ], !dbg !2366
  %stack_size.3.us = phi i32 [ %inc.us, %if.end47.us ], [ %stack_size.2.us, %while.end.loopexit.us ], !dbg !2287
  %node2.1.us = phi %struct.cgraph_node* [ %23, %if.end47.us ], [ %node2.0.us, %while.end.loopexit.us ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.1.us, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.3.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  %cmp51.us = icmp eq i8* %24, %0, !dbg !2368
  br i1 %cmp51.us, label %if.then53.us, label %if.end63.us, !dbg !2369

if.then53.us:                                     ; preds = %while.end.us
  %inc54.us = add nsw i32 %order_pos.2.us, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %inc54.us, metadata !2282, metadata !DIExpression()), !dbg !2287
  %idxprom55.us = sext i32 %order_pos.2.us to i64, !dbg !2372
  %arrayidx56.us = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %order, i64 %idxprom55.us, !dbg !2372
  store %struct.cgraph_node* %node2.1.us, %struct.cgraph_node** %arrayidx56.us, align 8, !dbg !2373
  %tobool57.us = icmp eq i32 %stack_size.3.us, 0, !dbg !2374
  br i1 %tobool57.us, label %if.end63.us, label %if.then58.us, !dbg !2376

if.then58.us:                                     ; preds = %if.then53.us
  %dec.us = add nsw i32 %stack_size.3.us, -1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %dec.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  %idxprom59.us = sext i32 %dec.us to i64, !dbg !2378
  %arrayidx60.us = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %2, i64 %idxprom59.us, !dbg !2378
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx60.us, align 8, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %25, metadata !2280, metadata !DIExpression()), !dbg !2287
  br label %if.end63.us, !dbg !2379

if.end63.us:                                      ; preds = %if.then58.us, %if.then53.us, %while.end.us
  %order_pos.3.us = phi i32 [ %order_pos.2.us, %while.end.us ], [ %inc54.us, %if.then53.us ], [ %inc54.us, %if.then58.us ], !dbg !2287
  %stack_size.5.us = phi i32 [ %stack_size.3.us, %while.end.us ], [ 0, %if.then53.us ], [ %dec.us, %if.then58.us ], !dbg !2380
  %node2.3.us = phi %struct.cgraph_node* [ %node2.1.us, %while.end.us ], [ null, %if.then53.us ], [ %25, %if.then58.us ], !dbg !2380
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.3.us, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.5.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.3.us, metadata !2282, metadata !DIExpression()), !dbg !2287
  br label %while.cond.us, !dbg !2331, !llvm.loop !2381

for.inc66.us:                                     ; preds = %for.inc66.loopexit.us, %land.lhs.true12.us, %land.lhs.true.us, %for.body6.us
  %order_pos.4.us = phi i32 [ %order_pos.1.us, %for.body6.us ], [ %order_pos.1.us, %land.lhs.true.us ], [ %order_pos.1.us, %land.lhs.true12.us ], [ %order_pos.2.us.lcssa, %for.inc66.loopexit.us ], !dbg !2303
  %stack_size.6.us = phi i32 [ %stack_size.1.us, %for.body6.us ], [ %stack_size.1.us, %land.lhs.true.us ], [ %stack_size.1.us, %land.lhs.true12.us ], [ %stack_size.2.us.lcssa, %for.inc66.loopexit.us ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %stack_size.6.us, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.4.us, metadata !2282, metadata !DIExpression()), !dbg !2287
  %next67.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1.us, i64 0, i32 3, !dbg !2383
  br label %for.cond4.us, !dbg !2384, !llvm.loop !2385

while.cond20.preheader.us:                        ; preds = %while.cond.us
  %aux21.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node2.0.us, i64 0, i32 16, !dbg !2380
  %26 = bitcast i8** %aux21.us to %struct.cgraph_edge**, !dbg !2387
  %27 = bitcast i8** %aux21.us to i64*, !dbg !2388
  %.pre2 = load i8*, i8** %aux21.us, align 8, !dbg !2333
  %28 = bitcast i8* %.pre2 to %struct.cgraph_edge*, !dbg !2336
  br label %while.cond20.us, !dbg !2336

while.end.loopexit.us:                            ; preds = %while.cond20.us
  %.lcssa15 = phi i8* [ %8, %while.cond20.us ]
  br label %while.end.us, !dbg !2366

for.inc66.loopexit.us:                            ; preds = %while.cond.us
  %order_pos.2.us.lcssa = phi i32 [ %order_pos.2.us, %while.cond.us ], !dbg !2287
  %stack_size.2.us.lcssa = phi i32 [ %stack_size.2.us, %while.cond.us ], !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.us.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.us.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.us.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.us.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.us.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.us.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  br label %for.inc66.us, !dbg !2383

for.inc69.us-lcssa.us:                            ; preds = %for.cond4.us
  %order_pos.1.us.lcssa = phi i32 [ %order_pos.1.us, %for.cond4.us ], !dbg !2303
  %stack_size.1.us.lcssa = phi i32 [ %stack_size.1.us, %for.cond4.us ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %order_pos.1.us.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.us.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.1.us.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.us.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  br label %for.inc69, !dbg !2389

for.cond4:                                        ; preds = %for.inc66, %for.body3.for.body3.split_crit_edge
  %order_pos.1 = phi i32 [ %order_pos.0, %for.body3.for.body3.split_crit_edge ], [ %order_pos.4, %for.inc66 ], !dbg !2303
  %stack_size.1 = phi i32 [ %stack_size.0, %for.body3.for.body3.split_crit_edge ], [ %stack_size.6, %for.inc66 ], !dbg !2304
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.body3.for.body3.split_crit_edge ], [ %next67, %for.inc66 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !2313
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2279, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.1, metadata !2282, metadata !DIExpression()), !dbg !2287
  %tobool5 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !2314
  br i1 %tobool5, label %for.inc69.us-lcssa, label %for.body6, !dbg !2314

for.body6:                                        ; preds = %for.cond4
  %aux7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 16, !dbg !2315
  %29 = load i8*, i8** %aux7, align 8, !dbg !2315
  %tobool8 = icmp eq i8* %29, null, !dbg !2316
  br i1 %tobool8, label %land.lhs.true, label %for.inc66, !dbg !2317

land.lhs.true:                                    ; preds = %for.body6
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2280, metadata !DIExpression()), !dbg !2287
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 2, !dbg !2323
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !2323
  %tobool14 = icmp eq %struct.cgraph_edge* %30, null, !dbg !2326
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !2327

if.then15:                                        ; preds = %land.lhs.true
  %31 = bitcast i8** %aux7 to %struct.cgraph_edge**, !dbg !2329
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %31, align 8, !dbg !2329
  br label %if.end, !dbg !2330

if.else:                                          ; preds = %land.lhs.true
  %32 = ptrtoint %struct.cgraph_edge* %30 to i64, !dbg !2327
  %33 = bitcast i8** %aux7 to i64*, !dbg !2328
  store i64 %32, i64* %33, align 8, !dbg !2328
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then15
  br label %while.cond, !dbg !2331

while.cond:                                       ; preds = %if.end63, %if.end
  %order_pos.2 = phi i32 [ %order_pos.1, %if.end ], [ %order_pos.3, %if.end63 ], !dbg !2287
  %stack_size.2 = phi i32 [ %stack_size.1, %if.end ], [ %stack_size.5, %if.end63 ], !dbg !2287
  %node2.0 = phi %struct.cgraph_node* [ %node.1, %if.end ], [ %node2.3, %if.end63 ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.0, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2, metadata !2282, metadata !DIExpression()), !dbg !2287
  %tobool19 = icmp eq %struct.cgraph_node* %node2.0, null, !dbg !2331
  br i1 %tobool19, label %for.inc66.loopexit, label %while.cond20.preheader, !dbg !2331

while.cond20.preheader:                           ; preds = %while.cond
  %aux21 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node2.0, i64 0, i32 16, !dbg !2380
  %34 = bitcast i8** %aux21 to %struct.cgraph_edge**, !dbg !2387
  %35 = bitcast i8** %aux21 to i64*, !dbg !2388
  %.pre = load i8*, i8** %aux21, align 8, !dbg !2333
  %36 = bitcast i8* %.pre to %struct.cgraph_edge*, !dbg !2336
  br label %while.cond20, !dbg !2336

while.cond20:                                     ; preds = %while.cond20.preheader, %if.end32
  %37 = phi i8* [ %.pre, %while.cond20.preheader ], [ %43, %if.end32 ]
  %38 = phi %struct.cgraph_edge* [ %36, %while.cond20.preheader ], [ %44, %if.end32 ]
  %39 = phi i8* [ %.pre, %while.cond20.preheader ], [ %45, %if.end32 ], !dbg !2333
  %cmp22 = icmp eq i8* %39, %0, !dbg !2335
  br i1 %cmp22, label %while.end.loopexit, label %while.body24, !dbg !2336

while.body24:                                     ; preds = %while.cond20
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %38, metadata !2283, metadata !DIExpression()), !dbg !2287
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %38, i64 0, i32 4, !dbg !2337
  %40 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !2337
  %tobool26 = icmp eq %struct.cgraph_edge* %40, null, !dbg !2340
  br i1 %tobool26, label %if.else30, label %if.then27, !dbg !2341

if.then27:                                        ; preds = %while.body24
  %41 = ptrtoint %struct.cgraph_edge* %40 to i64, !dbg !2341
  store i64 %41, i64* %35, align 8, !dbg !2342
  %42 = bitcast %struct.cgraph_edge* %40 to i8*, !dbg !2343
  br label %if.end32, !dbg !2343

if.else30:                                        ; preds = %while.body24
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %34, align 8, !dbg !2344
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then27
  %43 = phi i8* [ %0, %if.else30 ], [ %42, %if.then27 ]
  %44 = phi %struct.cgraph_edge* [ %last, %if.else30 ], [ %40, %if.then27 ]
  %45 = phi i8* [ %0, %if.else30 ], [ %42, %if.then27 ]
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %38, i64 0, i32 1, !dbg !2345
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !2345
  %aux33 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %46, i64 0, i32 16, !dbg !2347
  %47 = load i8*, i8** %aux33, align 8, !dbg !2347
  %tobool34 = icmp eq i8* %47, null, !dbg !2348
  br i1 %tobool34, label %if.then35, label %while.cond20, !dbg !2349, !llvm.loop !2350

if.then35:                                        ; preds = %if.end32
  %caller.lcssa = phi %struct.cgraph_node** [ %caller, %if.end32 ], !dbg !2345
  %.lcssa12 = phi %struct.cgraph_node* [ %46, %if.end32 ], !dbg !2345
  %aux33.lcssa = phi i8** [ %aux33, %if.end32 ], !dbg !2347
  %callers37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.lcssa12, i64 0, i32 2, !dbg !2352
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers37, align 8, !dbg !2352
  %tobool38 = icmp eq %struct.cgraph_edge* %48, null, !dbg !2355
  br i1 %tobool38, label %if.then39, label %if.else42, !dbg !2356

if.then39:                                        ; preds = %if.then35
  %49 = bitcast i8** %aux33.lcssa to %struct.cgraph_edge**, !dbg !2358
  store %struct.cgraph_edge* %last, %struct.cgraph_edge** %49, align 8, !dbg !2358
  br label %if.end47, !dbg !2359

if.else42:                                        ; preds = %if.then35
  %50 = ptrtoint %struct.cgraph_edge* %48 to i64, !dbg !2356
  %51 = bitcast i8** %aux33.lcssa to i64*, !dbg !2357
  store i64 %50, i64* %51, align 8, !dbg !2357
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.then39
  %inc = add nsw i32 %stack_size.2, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2281, metadata !DIExpression()), !dbg !2287
  %idxprom = sext i32 %stack_size.2 to i64, !dbg !2361
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %2, i64 %idxprom, !dbg !2361
  store %struct.cgraph_node* %node2.0, %struct.cgraph_node** %arrayidx, align 8, !dbg !2362
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %caller.lcssa, align 8, !dbg !2363
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %52, metadata !2280, metadata !DIExpression()), !dbg !2287
  %aux50.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %52, i64 0, i32 16, !dbg !2364
  %.pre1 = load i8*, i8** %aux50.phi.trans.insert, align 8, !dbg !2366
  br label %while.end, !dbg !2367

while.end.loopexit:                               ; preds = %while.cond20
  %.lcssa = phi i8* [ %37, %while.cond20 ]
  br label %while.end, !dbg !2366

while.end:                                        ; preds = %while.end.loopexit, %if.end47
  %53 = phi i8* [ %.pre1, %if.end47 ], [ %.lcssa, %while.end.loopexit ], !dbg !2366
  %stack_size.3 = phi i32 [ %inc, %if.end47 ], [ %stack_size.2, %while.end.loopexit ], !dbg !2287
  %node2.1 = phi %struct.cgraph_node* [ %52, %if.end47 ], [ %node2.0, %while.end.loopexit ], !dbg !2332
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.1, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.3, metadata !2281, metadata !DIExpression()), !dbg !2287
  %cmp51 = icmp eq i8* %53, %0, !dbg !2368
  br i1 %cmp51, label %if.then53, label %if.end63, !dbg !2369

if.then53:                                        ; preds = %while.end
  %inc54 = add nsw i32 %order_pos.2, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %inc54, metadata !2282, metadata !DIExpression()), !dbg !2287
  %idxprom55 = sext i32 %order_pos.2 to i64, !dbg !2372
  %arrayidx56 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %order, i64 %idxprom55, !dbg !2372
  store %struct.cgraph_node* %node2.1, %struct.cgraph_node** %arrayidx56, align 8, !dbg !2373
  %tobool57 = icmp eq i32 %stack_size.3, 0, !dbg !2374
  br i1 %tobool57, label %if.end63, label %if.then58, !dbg !2376

if.then58:                                        ; preds = %if.then53
  %dec = add nsw i32 %stack_size.3, -1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2281, metadata !DIExpression()), !dbg !2287
  %idxprom59 = sext i32 %dec to i64, !dbg !2378
  %arrayidx60 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %2, i64 %idxprom59, !dbg !2378
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx60, align 8, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %54, metadata !2280, metadata !DIExpression()), !dbg !2287
  br label %if.end63, !dbg !2379

if.end63:                                         ; preds = %if.then53, %if.then58, %while.end
  %order_pos.3 = phi i32 [ %order_pos.2, %while.end ], [ %inc54, %if.then53 ], [ %inc54, %if.then58 ], !dbg !2287
  %stack_size.5 = phi i32 [ %stack_size.3, %while.end ], [ 0, %if.then53 ], [ %dec, %if.then58 ], !dbg !2380
  %node2.3 = phi %struct.cgraph_node* [ %node2.1, %while.end ], [ null, %if.then53 ], [ %54, %if.then58 ], !dbg !2380
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.3, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.5, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.3, metadata !2282, metadata !DIExpression()), !dbg !2287
  br label %while.cond, !dbg !2331, !llvm.loop !2381

for.inc66.loopexit:                               ; preds = %while.cond
  %order_pos.2.lcssa = phi i32 [ %order_pos.2, %while.cond ], !dbg !2287
  %stack_size.2.lcssa = phi i32 [ %stack_size.2, %while.cond ], !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.2.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.2.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  br label %for.inc66, !dbg !2383

for.inc66:                                        ; preds = %for.inc66.loopexit, %for.body6
  %order_pos.4 = phi i32 [ %order_pos.1, %for.body6 ], [ %order_pos.2.lcssa, %for.inc66.loopexit ], !dbg !2303
  %stack_size.6 = phi i32 [ %stack_size.1, %for.body6 ], [ %stack_size.2.lcssa, %for.inc66.loopexit ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %stack_size.6, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.4, metadata !2282, metadata !DIExpression()), !dbg !2287
  %next67 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !2383
  br label %for.cond4, !dbg !2384, !llvm.loop !2385

for.inc69.us-lcssa:                               ; preds = %for.cond4
  %order_pos.1.lcssa14 = phi i32 [ %order_pos.1, %for.cond4 ], !dbg !2303
  %stack_size.1.lcssa13 = phi i32 [ %stack_size.1, %for.cond4 ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %order_pos.1.lcssa14, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.lcssa13, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.1.lcssa14, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.lcssa13, metadata !2281, metadata !DIExpression()), !dbg !2287
  br label %for.inc69, !dbg !2389

for.inc69:                                        ; preds = %for.inc69.us-lcssa.us, %for.inc69.us-lcssa
  %order_pos.1.lcssa = phi i32 [ %order_pos.1.lcssa14, %for.inc69.us-lcssa ], [ %order_pos.1.us.lcssa, %for.inc69.us-lcssa.us ], !dbg !2303
  %stack_size.1.lcssa = phi i32 [ %stack_size.1.lcssa13, %for.inc69.us-lcssa ], [ %stack_size.1.us.lcssa, %for.inc69.us-lcssa.us ], !dbg !2304
  call void @llvm.dbg.value(metadata i32 %order_pos.1.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %stack_size.1.lcssa, metadata !2281, metadata !DIExpression()), !dbg !2287
  %inc70 = add nuw nsw i32 %pass.0, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %inc70, metadata !2285, metadata !DIExpression()), !dbg !2287
  br label %for.cond1, !dbg !2390, !llvm.loop !2391

for.end71:                                        ; preds = %for.cond1
  %order_pos.0.lcssa = phi i32 [ %order_pos.0, %for.cond1 ], !dbg !2303
  call void @llvm.dbg.value(metadata i32 %order_pos.0.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.0.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %order_pos.0.lcssa, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @free(i8* %call) #6, !dbg !2393
  br label %for.cond72, !dbg !2394

for.cond72:                                       ; preds = %for.body74, %for.end71
  %node.2.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end71 ], [ %next77, %for.body74 ]
  %node.2 = load %struct.cgraph_node*, %struct.cgraph_node** %node.2.in, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !2279, metadata !DIExpression()), !dbg !2287
  %tobool73 = icmp eq %struct.cgraph_node* %node.2, null, !dbg !2397
  br i1 %tobool73, label %for.end78, label %for.body74, !dbg !2397

for.body74:                                       ; preds = %for.cond72
  %aux75 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 16, !dbg !2398
  store i8* null, i8** %aux75, align 8, !dbg !2400
  %next77 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !2401
  br label %for.cond72, !dbg !2402, !llvm.loop !2403

for.end78:                                        ; preds = %for.cond72
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %0) #7, !dbg !2405
  ret i32 %order_pos.0.lcssa, !dbg !2406
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2411, metadata !DIExpression()), !dbg !2412
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2413
  %bf.load = load i16, i16* %needed, align 4, !dbg !2413
  %bf.clear = and i16 %bf.load, 1, !dbg !2413
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !2414
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2415

land.rhs:                                         ; preds = %entry
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !2416
  %bf.load1 = load i8, i8* %externally_visible, align 8, !dbg !2416
  %bf.clear2 = lshr i8 %bf.load1, 1
  %bf.clear2.lobit = and i8 %bf.clear2, 1
  %0 = xor i8 %bf.clear2.lobit, 1
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %0, %land.rhs ]
  ret i8 %1, !dbg !2417
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext %before_inlining_p, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata i8 %before_inlining_p, metadata !2422, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2423, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* inttoptr (i64 1 to %struct.cgraph_node*), metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* inttoptr (i64 2 to %struct.cgraph_node*), metadata !2425, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2450
  %tobool = icmp eq %struct._IO_FILE* %file, null, !dbg !2451
  br i1 %tobool, label %if.end, label %if.then, !dbg !2453

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2454
  br label %if.end, !dbg !2454

if.end:                                           ; preds = %entry, %if.then
  %tobool11 = icmp eq i8 %before_inlining_p, 0, !dbg !2455
  br i1 %tobool11, label %if.end.if.end.split_crit_edge, label %if.end.split.us, !dbg !2459

if.end.if.end.split_crit_edge:                    ; preds = %if.end
  br label %for.cond, !dbg !2459

if.end.split.us:                                  ; preds = %if.end
  br label %for.cond.us, !dbg !2459

for.cond.us:                                      ; preds = %for.inc.us, %if.end.split.us
  %node.0.in.us = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end.split.us ], [ %next26.us, %for.inc.us ]
  %first.0.us = phi %struct.cgraph_node* [ inttoptr (i64 1 to %struct.cgraph_node*), %if.end.split.us ], [ %first.1.us, %for.inc.us ], !dbg !2460
  %node.0.us = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in.us, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.us, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0.us, metadata !2426, metadata !DIExpression()), !dbg !2450
  %tobool1.us = icmp eq %struct.cgraph_node* %node.0.us, null, !dbg !2462
  br i1 %tobool1.us, label %while.cond.preheader.us-lcssa.us, label %for.body.us, !dbg !2462

for.body.us:                                      ; preds = %for.cond.us
  %call2.us = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* nonnull %node.0.us) #8, !dbg !2463
  %tobool3.us = icmp eq i8 %call2.us, 0, !dbg !2463
  br i1 %tobool3.us, label %land.lhs.true.us, label %if.else.us, !dbg !2464

land.lhs.true.us:                                 ; preds = %for.body.us
  br label %if.then12.us, !dbg !2465

lor.lhs.false.us:                                 ; No predecessors!
  unreachable, !dbg !2466

if.else.us:                                       ; preds = %for.body.us
  %aux16.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 16, !dbg !2467
  %0 = load i8*, i8** %aux16.us, align 8, !dbg !2467
  %tobool17.us = icmp eq i8* %0, null, !dbg !2467
  br i1 %tobool17.us, label %cond.end20.us, label %cond.true18.us, !dbg !2467

cond.true18.us:                                   ; preds = %if.else.us
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2467
  br label %cond.end20.us, !dbg !2467

cond.end20.us:                                    ; preds = %cond.true18.us, %if.else.us
  %reachable22.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 27, !dbg !2469
  %bf.load23.us = load i16, i16* %reachable22.us, align 4, !dbg !2470
  %bf.clear24.us = and i16 %bf.load23.us, -9, !dbg !2470
  store i16 %bf.clear24.us, i16* %reachable22.us, align 4, !dbg !2470
  br label %for.inc.us

if.then12.us:                                     ; preds = %land.lhs.true.us
  %inlined_to.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 19, i32 2, !dbg !2471
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to.us, align 8, !dbg !2471
  %tobool13.us = icmp eq %struct.cgraph_node* %1, null, !dbg !2471
  br i1 %tobool13.us, label %cond.end.us, label %cond.true.us, !dbg !2471

cond.true.us:                                     ; preds = %if.then12.us
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2471
  br label %cond.end.us, !dbg !2471

cond.end.us:                                      ; preds = %cond.true.us, %if.then12.us
  %aux.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 16, !dbg !2473
  %2 = bitcast i8** %aux.us to %struct.cgraph_node**, !dbg !2474
  store %struct.cgraph_node* %first.0.us, %struct.cgraph_node** %2, align 8, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0.us, metadata !2424, metadata !DIExpression()), !dbg !2450
  %reachable.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 27, !dbg !2475
  %bf.load14.us = load i16, i16* %reachable.us, align 4, !dbg !2476
  %bf.set.us = or i16 %bf.load14.us, 8, !dbg !2476
  store i16 %bf.set.us, i16* %reachable.us, align 4, !dbg !2476
  br label %for.inc.us, !dbg !2477

for.inc.us:                                       ; preds = %cond.end.us, %cond.end20.us
  %first.1.us = phi %struct.cgraph_node* [ %first.0.us, %cond.end20.us ], [ %node.0.us, %cond.end.us ], !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.1.us, metadata !2424, metadata !DIExpression()), !dbg !2450
  %next26.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0.us, i64 0, i32 3, !dbg !2478
  br label %for.cond.us, !dbg !2479, !llvm.loop !2480

while.cond.preheader.us-lcssa.us:                 ; preds = %for.cond.us
  %first.0.us.lcssa = phi %struct.cgraph_node* [ %first.0.us, %for.cond.us ], !dbg !2460
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.us.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.us.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %while.cond.preheader, !dbg !2482

for.cond:                                         ; preds = %for.inc, %if.end.if.end.split_crit_edge
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end.if.end.split_crit_edge ], [ %next26, %for.inc ]
  %first.0 = phi %struct.cgraph_node* [ inttoptr (i64 1 to %struct.cgraph_node*), %if.end.if.end.split_crit_edge ], [ %first.1, %for.inc ], !dbg !2460
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2426, metadata !DIExpression()), !dbg !2450
  %tobool1 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2462
  br i1 %tobool1, label %while.cond.preheader.us-lcssa, label %for.body, !dbg !2462

while.cond.preheader.us-lcssa:                    ; preds = %for.cond
  %first.0.lcssa17 = phi %struct.cgraph_node* [ %first.0, %for.cond ], !dbg !2460
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.lcssa17, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.lcssa17, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %while.cond.preheader, !dbg !2482

while.cond.preheader:                             ; preds = %while.cond.preheader.us-lcssa.us, %while.cond.preheader.us-lcssa
  %first.0.lcssa = phi %struct.cgraph_node* [ %first.0.lcssa17, %while.cond.preheader.us-lcssa ], [ %first.0.us.lcssa, %while.cond.preheader.us-lcssa.us ], !dbg !2460
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.0.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %while.cond, !dbg !2483

for.body:                                         ; preds = %for.cond
  %call2 = tail call fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* nonnull %node.0) #8, !dbg !2463
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2463
  br i1 %tobool3, label %land.lhs.true, label %if.else, !dbg !2464

land.lhs.true:                                    ; preds = %for.body
  %3 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_common**, !dbg !2484
  %4 = load %struct.tree_decl_common*, %struct.tree_decl_common** %3, align 8, !dbg !2484
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %4, i64 0, i32 2, !dbg !2484
  %5 = bitcast i40* %decl_flag_1 to i64*, !dbg !2484
  %bf.load = load i64, i64* %5, align 8, !dbg !2484
  %bf.cast11 = and i64 %bf.load, 33554432, !dbg !2484
  %tobool4 = icmp eq i64 %bf.cast11, 0, !dbg !2484
  br i1 %tobool4, label %if.then12, label %lor.lhs.false, !dbg !2465

lor.lhs.false:                                    ; preds = %land.lhs.true
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !2485
  %bf.load5 = load i16, i16* %analyzed, align 4, !dbg !2485
  %bf.clear7 = and i16 %bf.load5, 32, !dbg !2485
  %tobool9 = icmp eq i16 %bf.clear7, 0, !dbg !2486
  br i1 %tobool9, label %if.then12, label %if.else, !dbg !2466

if.then12:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !2471
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !2471
  %tobool13 = icmp eq %struct.cgraph_node* %6, null, !dbg !2471
  br i1 %tobool13, label %cond.end, label %cond.true, !dbg !2471

cond.true:                                        ; preds = %if.then12
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2471
  br label %cond.end, !dbg !2471

cond.end:                                         ; preds = %if.then12, %cond.true
  %aux = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !2473
  %7 = bitcast i8** %aux to %struct.cgraph_node**, !dbg !2474
  store %struct.cgraph_node* %first.0, %struct.cgraph_node** %7, align 8, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2424, metadata !DIExpression()), !dbg !2450
  %reachable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !2475
  %bf.load14 = load i16, i16* %reachable, align 4, !dbg !2476
  %bf.set = or i16 %bf.load14, 8, !dbg !2476
  store i16 %bf.set, i16* %reachable, align 4, !dbg !2476
  br label %for.inc, !dbg !2477

if.else:                                          ; preds = %for.body, %lor.lhs.false
  %aux16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 16, !dbg !2467
  %8 = load i8*, i8** %aux16, align 8, !dbg !2467
  %tobool17 = icmp eq i8* %8, null, !dbg !2467
  br i1 %tobool17, label %cond.end20, label %cond.true18, !dbg !2467

cond.true18:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2467
  br label %cond.end20, !dbg !2467

cond.end20:                                       ; preds = %if.else, %cond.true18
  %reachable22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !2469
  %bf.load23 = load i16, i16* %reachable22, align 4, !dbg !2470
  %bf.clear24 = and i16 %bf.load23, -9, !dbg !2470
  store i16 %bf.clear24, i16* %reachable22, align 4, !dbg !2470
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %cond.end20
  %first.1 = phi %struct.cgraph_node* [ %first.0, %cond.end20 ], [ %node.0, %cond.end ], !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.1, metadata !2424, metadata !DIExpression()), !dbg !2450
  %next26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2478
  br label %for.cond, !dbg !2479, !llvm.loop !2480

while.cond:                                       ; preds = %while.cond.preheader, %while.end
  %first.2 = phi %struct.cgraph_node* [ %first.12, %while.end ], [ %first.0.lcssa, %while.cond.preheader ], !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.2, metadata !2424, metadata !DIExpression()), !dbg !2450
  %cmp = icmp eq %struct.cgraph_node* %first.2, inttoptr (i64 1 to %struct.cgraph_node*), !dbg !2487
  br i1 %cmp, label %while.end181, label %while.body, !dbg !2483

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.2, metadata !2426, metadata !DIExpression()), !dbg !2450
  %aux28 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %first.2, i64 0, i32 16, !dbg !2488
  %9 = bitcast i8** %aux28 to %struct.cgraph_node**, !dbg !2488
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %10, metadata !2424, metadata !DIExpression()), !dbg !2450
  store i8* inttoptr (i64 2 to i8*), i8** %aux28, align 8, !dbg !2489
  %reachable30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %first.2, i64 0, i32 27, !dbg !2490
  %bf.load31 = load i16, i16* %reachable30, align 4, !dbg !2490
  %bf.clear33 = and i16 %bf.load31, 8, !dbg !2490
  %tobool35 = icmp eq i16 %bf.clear33, 0, !dbg !2491
  br i1 %tobool35, label %if.end124, label %if.then36, !dbg !2492

if.then36:                                        ; preds = %while.body
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %first.2, i64 0, i32 1, !dbg !2493
  br i1 %tobool11, label %if.then36.if.then36.split_crit_edge, label %if.then36.split.us, !dbg !2494

if.then36.if.then36.split_crit_edge:              ; preds = %if.then36
  br label %for.cond37, !dbg !2494

if.then36.split.us:                               ; preds = %if.then36
  br label %for.cond37.us, !dbg !2494

for.cond37.us:                                    ; preds = %for.inc122.us, %if.then36.split.us
  %e.0.in.us = phi %struct.cgraph_edge** [ %callees, %if.then36.split.us ], [ %next_callee.us, %for.inc122.us ]
  %first.3.us = phi %struct.cgraph_node* [ %10, %if.then36.split.us ], [ %first.5.us, %for.inc122.us ], !dbg !2495
  %e.0.us = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in.us, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.us, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0.us, metadata !2429, metadata !DIExpression()), !dbg !2497
  %tobool38.us = icmp eq %struct.cgraph_edge* %e.0.us, null, !dbg !2498
  br i1 %tobool38.us, label %if.end124.loopexit.us-lcssa.us, label %for.body39.us, !dbg !2498

for.body39.us:                                    ; preds = %for.cond37.us
  %callee.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0.us, i64 0, i32 2, !dbg !2499
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee.us, align 8, !dbg !2499
  %reachable40.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i64 0, i32 27, !dbg !2500
  %bf.load41.us = load i16, i16* %reachable40.us, align 4, !dbg !2500
  %bf.clear43.us = and i16 %bf.load41.us, 8, !dbg !2500
  %tobool45.us = icmp eq i16 %bf.clear43.us, 0, !dbg !2501
  br i1 %tobool45.us, label %land.lhs.true46.us, label %for.inc122.us, !dbg !2502

land.lhs.true46.us:                               ; preds = %for.body39.us
  %bf.load48.us = load i16, i16* %reachable30, align 4, !dbg !2503
  %bf.clear50.us = and i16 %bf.load48.us, 32, !dbg !2503
  %tobool52.us = icmp eq i16 %bf.clear50.us, 0, !dbg !2504
  br i1 %tobool52.us, label %for.inc122.us, label %land.lhs.true53.us, !dbg !2505

land.lhs.true53.us:                               ; preds = %land.lhs.true46.us
  br label %if.then76.us, !dbg !2506

lor.lhs.false55.us:                               ; No predecessors!
  unreachable, !dbg !2507

lor.lhs.false63.us:                               ; No predecessors!
  unreachable, !dbg !2508

if.then76.us:                                     ; preds = %land.lhs.true53.us
  %12 = and i16 %bf.load48.us, 8, !dbg !2509
  %bf.set97.us = or i16 %12, %bf.load41.us, !dbg !2509
  store i16 %bf.set97.us, i16* %reachable40.us, align 4, !dbg !2509
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee.us, align 8, !dbg !2510
  %aux99.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 16, !dbg !2512
  %14 = load i8*, i8** %aux99.us, align 8, !dbg !2512
  %tobool100.us = icmp eq i8* %14, null, !dbg !2513
  br i1 %tobool100.us, label %if.then116.us, label %lor.lhs.false101.us, !dbg !2514

lor.lhs.false101.us:                              ; preds = %if.then76.us
  %cmp104.us = icmp eq i8* %14, inttoptr (i64 2 to i8*), !dbg !2515
  br i1 %cmp104.us, label %land.lhs.true106.us, label %for.inc122.us, !dbg !2516

land.lhs.true106.us:                              ; preds = %lor.lhs.false101.us
  %reachable109.us = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 27, !dbg !2517
  %bf.load110.us = load i16, i16* %reachable109.us, align 4, !dbg !2517
  %bf.lshr8012.us = xor i16 %bf.load41.us, %bf.load110.us, !dbg !2518
  %15 = and i16 %bf.lshr8012.us, 8, !dbg !2518
  %cmp114.us = icmp eq i16 %15, 0, !dbg !2518
  br i1 %cmp114.us, label %for.inc122.us, label %if.then116.us, !dbg !2519

if.then116.us:                                    ; preds = %land.lhs.true106.us, %if.then76.us
  %16 = bitcast i8** %aux99.us to %struct.cgraph_node**, !dbg !2520
  store %struct.cgraph_node* %first.3.us, %struct.cgraph_node** %16, align 8, !dbg !2520
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %callee.us, align 8, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %17, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %for.inc122.us, !dbg !2523

for.inc122.us:                                    ; preds = %if.then116.us, %land.lhs.true106.us, %lor.lhs.false101.us, %land.lhs.true46.us, %for.body39.us
  %first.5.us = phi %struct.cgraph_node* [ %first.3.us, %for.body39.us ], [ %first.3.us, %land.lhs.true46.us ], [ %17, %if.then116.us ], [ %first.3.us, %land.lhs.true106.us ], [ %first.3.us, %lor.lhs.false101.us ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.5.us, metadata !2424, metadata !DIExpression()), !dbg !2450
  %next_callee.us = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0.us, i64 0, i32 6, !dbg !2524
  br label %for.cond37.us, !dbg !2525, !llvm.loop !2526

if.end124.loopexit.us-lcssa.us:                   ; preds = %for.cond37.us
  %first.3.us.lcssa = phi %struct.cgraph_node* [ %first.3.us, %for.cond37.us ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.us.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.us.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %if.end124.loopexit, !dbg !2528

for.cond37:                                       ; preds = %for.inc122, %if.then36.if.then36.split_crit_edge
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.then36.if.then36.split_crit_edge ], [ %next_callee, %for.inc122 ]
  %first.3 = phi %struct.cgraph_node* [ %10, %if.then36.if.then36.split_crit_edge ], [ %first.5, %for.inc122 ], !dbg !2495
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2429, metadata !DIExpression()), !dbg !2497
  %tobool38 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2498
  br i1 %tobool38, label %if.end124.loopexit.us-lcssa, label %for.body39, !dbg !2498

for.body39:                                       ; preds = %for.cond37
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2499
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2499
  %reachable40 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i64 0, i32 27, !dbg !2500
  %bf.load41 = load i16, i16* %reachable40, align 4, !dbg !2500
  %bf.clear43 = and i16 %bf.load41, 8, !dbg !2500
  %tobool45 = icmp eq i16 %bf.clear43, 0, !dbg !2501
  %19 = bitcast %struct.cgraph_node* %18 to %struct.tree_decl_common**, !dbg !2502
  br i1 %tobool45, label %land.lhs.true46, label %for.inc122, !dbg !2502

land.lhs.true46:                                  ; preds = %for.body39
  %bf.load48 = load i16, i16* %reachable30, align 4, !dbg !2503
  %bf.clear50 = and i16 %bf.load48, 32, !dbg !2503
  %tobool52 = icmp eq i16 %bf.clear50, 0, !dbg !2504
  br i1 %tobool52, label %for.inc122, label %land.lhs.true53, !dbg !2505

land.lhs.true53:                                  ; preds = %land.lhs.true46
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !2530
  %20 = load i32, i32* %inline_failed, align 8, !dbg !2530
  %tobool54 = icmp eq i32 %20, 0, !dbg !2531
  br i1 %tobool54, label %if.then76, label %lor.lhs.false55, !dbg !2506

lor.lhs.false55:                                  ; preds = %land.lhs.true53
  %bf.clear60 = and i16 %bf.load41, 32, !dbg !2532
  %tobool62 = icmp eq i16 %bf.clear60, 0, !dbg !2533
  br i1 %tobool62, label %if.then76, label %lor.lhs.false63, !dbg !2507

lor.lhs.false63:                                  ; preds = %lor.lhs.false55
  %21 = load %struct.tree_decl_common*, %struct.tree_decl_common** %19, align 8, !dbg !2534
  %decl_flag_167 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %21, i64 0, i32 2, !dbg !2534
  %22 = bitcast i40* %decl_flag_167 to i64*, !dbg !2534
  %bf.load68 = load i64, i64* %22, align 8, !dbg !2534
  %bf.cast7110 = and i64 %bf.load68, 33554432, !dbg !2534
  %tobool72 = icmp eq i64 %bf.cast7110, 0, !dbg !2534
  br i1 %tobool72, label %if.then76, label %for.inc122, !dbg !2508

if.then76:                                        ; preds = %lor.lhs.false55, %land.lhs.true53, %lor.lhs.false63
  %23 = and i16 %bf.load48, 8, !dbg !2509
  %bf.set97 = or i16 %23, %bf.load41, !dbg !2509
  store i16 %bf.set97, i16* %reachable40, align 4, !dbg !2509
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2510
  %aux99 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i64 0, i32 16, !dbg !2512
  %25 = load i8*, i8** %aux99, align 8, !dbg !2512
  %tobool100 = icmp eq i8* %25, null, !dbg !2513
  br i1 %tobool100, label %if.then116, label %lor.lhs.false101, !dbg !2514

lor.lhs.false101:                                 ; preds = %if.then76
  %cmp104 = icmp eq i8* %25, inttoptr (i64 2 to i8*), !dbg !2515
  br i1 %cmp104, label %land.lhs.true106, label %for.inc122, !dbg !2516

land.lhs.true106:                                 ; preds = %lor.lhs.false101
  %reachable109 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i64 0, i32 27, !dbg !2517
  %bf.load110 = load i16, i16* %reachable109, align 4, !dbg !2517
  %bf.lshr8012 = xor i16 %bf.load41, %bf.load110, !dbg !2518
  %26 = and i16 %bf.lshr8012, 8, !dbg !2518
  %cmp114 = icmp eq i16 %26, 0, !dbg !2518
  br i1 %cmp114, label %for.inc122, label %if.then116, !dbg !2519

if.then116:                                       ; preds = %land.lhs.true106, %if.then76
  %27 = bitcast i8** %aux99 to %struct.cgraph_node**, !dbg !2520
  store %struct.cgraph_node* %first.3, %struct.cgraph_node** %27, align 8, !dbg !2520
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %28, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %for.inc122, !dbg !2523

for.inc122:                                       ; preds = %land.lhs.true106, %land.lhs.true46, %for.body39, %lor.lhs.false63, %if.then116, %lor.lhs.false101
  %first.5 = phi %struct.cgraph_node* [ %first.3, %for.body39 ], [ %first.3, %land.lhs.true46 ], [ %first.3, %lor.lhs.false63 ], [ %28, %if.then116 ], [ %first.3, %land.lhs.true106 ], [ %first.3, %lor.lhs.false101 ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.5, metadata !2424, metadata !DIExpression()), !dbg !2450
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !2524
  br label %for.cond37, !dbg !2525, !llvm.loop !2526

if.end124.loopexit.us-lcssa:                      ; preds = %for.cond37
  %first.3.lcssa16 = phi %struct.cgraph_node* [ %first.3, %for.cond37 ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.lcssa16, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.lcssa16, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %if.end124.loopexit, !dbg !2528

if.end124.loopexit:                               ; preds = %if.end124.loopexit.us-lcssa.us, %if.end124.loopexit.us-lcssa
  %first.3.lcssa = phi %struct.cgraph_node* [ %first.3.lcssa16, %if.end124.loopexit.us-lcssa ], [ %first.3.us.lcssa, %if.end124.loopexit.us-lcssa.us ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.3.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %if.end124, !dbg !2528

if.end124:                                        ; preds = %if.end124.loopexit, %while.body
  %first.6 = phi %struct.cgraph_node* [ %10, %while.body ], [ %first.3.lcssa, %if.end124.loopexit ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.6, metadata !2424, metadata !DIExpression()), !dbg !2450
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %first.2, i64 0, i32 14, !dbg !2528
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !2528
  %tobool125 = icmp eq %struct.cgraph_node* %29, null, !dbg !2535
  br i1 %tobool125, label %if.end159, label %land.lhs.true126, !dbg !2536

land.lhs.true126:                                 ; preds = %if.end124
  %bf.load128 = load i16, i16* %reachable30, align 4, !dbg !2537
  %bf.clear130 = and i16 %bf.load128, 8, !dbg !2537
  %tobool132 = icmp eq i16 %bf.clear130, 0, !dbg !2538
  br i1 %tobool132, label %if.end159, label %land.lhs.true133, !dbg !2539

land.lhs.true133:                                 ; preds = %land.lhs.true126
  %inlined_to135 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %first.2, i64 0, i32 19, i32 2, !dbg !2540
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to135, align 8, !dbg !2540
  %tobool136 = icmp eq %struct.cgraph_node* %30, null, !dbg !2541
  br i1 %tobool136, label %if.then137, label %if.end159, !dbg !2542

if.then137:                                       ; preds = %land.lhs.true133
  br label %for.cond139, !dbg !2543

for.cond139:                                      ; preds = %for.inc156, %if.then137
  %next.0 = phi %struct.cgraph_node* [ %29, %if.then137 ], [ %next.0.pre, %for.inc156 ], !dbg !2546
  %first.7 = phi %struct.cgraph_node* [ %first.6, %if.then137 ], [ %first.8, %for.inc156 ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.7, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !2427, metadata !DIExpression()), !dbg !2450
  %cmp140 = icmp eq %struct.cgraph_node* %next.0, %first.2, !dbg !2547
  br i1 %cmp140, label %if.end159.loopexit, label %for.body142, !dbg !2549

for.body142:                                      ; preds = %for.cond139
  %reachable143 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 27, !dbg !2550
  %bf.load144 = load i16, i16* %reachable143, align 4, !dbg !2550
  %bf.clear146 = and i16 %bf.load144, 8, !dbg !2550
  %tobool148 = icmp eq i16 %bf.clear146, 0, !dbg !2552
  br i1 %tobool148, label %if.then149, label %for.inc156, !dbg !2553

if.then149:                                       ; preds = %for.body142
  %aux150 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 16, !dbg !2554
  %31 = bitcast i8** %aux150 to %struct.cgraph_node**, !dbg !2556
  store %struct.cgraph_node* %first.7, %struct.cgraph_node** %31, align 8, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !2424, metadata !DIExpression()), !dbg !2450
  %bf.set154 = or i16 %bf.load144, 8, !dbg !2557
  store i16 %bf.set154, i16* %reachable143, align 4, !dbg !2557
  br label %for.inc156, !dbg !2558

for.inc156:                                       ; preds = %for.body142, %if.then149
  %first.8 = phi %struct.cgraph_node* [ %first.7, %for.body142 ], [ %next.0, %if.then149 ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.8, metadata !2424, metadata !DIExpression()), !dbg !2450
  %next.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 14, !dbg !2546
  %next.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next.0.in.phi.trans.insert, align 8, !dbg !2546
  br label %for.cond139, !dbg !2559, !llvm.loop !2560

if.end159.loopexit:                               ; preds = %for.cond139
  %first.7.lcssa = phi %struct.cgraph_node* [ %first.7, %for.cond139 ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.7.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.7.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.7.lcssa, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %if.end159, !dbg !2562

if.end159:                                        ; preds = %if.end159.loopexit, %land.lhs.true133, %land.lhs.true126, %if.end124
  %first.9 = phi %struct.cgraph_node* [ %first.6, %land.lhs.true133 ], [ %first.6, %land.lhs.true126 ], [ %first.6, %if.end124 ], [ %first.7.lcssa, %if.end159.loopexit ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.9, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %while.cond160, !dbg !2562

while.cond160:                                    ; preds = %cleanup, %if.end159
  %node.1 = phi %struct.cgraph_node* [ %first.2, %if.end159 ], [ %35, %cleanup ], !dbg !2497
  %first.10 = phi %struct.cgraph_node* [ %first.9, %if.end159 ], [ %first.11, %cleanup ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.10, metadata !2424, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2426, metadata !DIExpression()), !dbg !2450
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 12, !dbg !2563
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !2563
  %tobool161 = icmp eq %struct.cgraph_node* %32, null, !dbg !2564
  br i1 %tobool161, label %while.end, label %land.lhs.true162, !dbg !2565

land.lhs.true162:                                 ; preds = %while.cond160
  %aux164 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %32, i64 0, i32 16, !dbg !2566
  %33 = load i8*, i8** %aux164, align 8, !dbg !2566
  %tobool165 = icmp eq i8* %33, null, !dbg !2567
  br i1 %tobool165, label %land.rhs, label %while.end, !dbg !2568

land.rhs:                                         ; preds = %land.lhs.true162
  %decl166 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 0, !dbg !2569
  %34 = load %union.tree_node*, %union.tree_node** %decl166, align 8, !dbg !2569
  %call167 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %34) #6, !dbg !2570
  %tobool168 = icmp eq i8 %call167, 0, !dbg !2571
  br i1 %tobool168, label %while.body169, label %while.end, !dbg !2562

while.body169:                                    ; preds = %land.rhs
  %35 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !2572
  %decl171 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %35, i64 0, i32 0, !dbg !2573
  %36 = load %union.tree_node*, %union.tree_node** %decl171, align 8, !dbg !2573
  %37 = load %union.tree_node*, %union.tree_node** %decl166, align 8, !dbg !2574
  %cmp173 = icmp eq %union.tree_node* %36, %37, !dbg !2575
  call void @llvm.dbg.value(metadata i1 %cmp173, metadata !2437, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %35, metadata !2426, metadata !DIExpression()), !dbg !2450
  br i1 %cmp173, label %cleanup, label %if.then178, !dbg !2577

if.then178:                                       ; preds = %while.body169
  %aux179 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %35, i64 0, i32 16, !dbg !2578
  %38 = bitcast i8** %aux179 to %struct.cgraph_node**, !dbg !2581
  store %struct.cgraph_node* %first.10, %struct.cgraph_node** %38, align 8, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %35, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %cleanup, !dbg !2582

cleanup:                                          ; preds = %while.body169, %if.then178
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then178 ], [ true, %while.body169 ]
  %first.11 = phi %struct.cgraph_node* [ %35, %if.then178 ], [ %first.10, %while.body169 ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.11, metadata !2424, metadata !DIExpression()), !dbg !2450
  br i1 %cleanup.dest.slot.0, label %while.cond160, label %while.end, !llvm.loop !2583

while.end:                                        ; preds = %land.lhs.true162, %while.cond160, %cleanup, %land.rhs
  %first.12 = phi %struct.cgraph_node* [ %first.11, %cleanup ], [ %first.10, %land.rhs ], [ %first.10, %land.lhs.true162 ], [ %first.10, %while.cond160 ], !dbg !2497
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first.12, metadata !2424, metadata !DIExpression()), !dbg !2450
  br label %while.cond, !dbg !2483, !llvm.loop !2585

while.end181:                                     ; preds = %while.cond
  %39 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %39, metadata !2426, metadata !DIExpression()), !dbg !2450
  %tobool229 = icmp ne i8 %before_inlining_p, 0, !dbg !2588
  br label %for.cond182, !dbg !2589

for.cond182:                                      ; preds = %for.inc296, %while.end181
  %changed.0 = phi i8 [ 0, %while.end181 ], [ %changed.1, %for.inc296 ], !dbg !2590
  %.in = phi %struct.cgraph_node* [ %39, %while.end181 ], [ %41, %for.inc296 ]
  %node.2 = phi %struct.cgraph_node* [ %39, %while.end181 ], [ %41, %for.inc296 ], !dbg !2591
  %40 = bitcast %struct.cgraph_node* %.in to %struct.tree_decl_common**, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !2426, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2428, metadata !DIExpression()), !dbg !2450
  %tobool183 = icmp eq %struct.cgraph_node* %node.2, null, !dbg !2592
  br i1 %tobool183, label %for.end297, label %for.body184, !dbg !2592

for.body184:                                      ; preds = %for.cond182
  %next185 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !2593
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %next185, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %41, metadata !2427, metadata !DIExpression()), !dbg !2450
  %aux186 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 16, !dbg !2594
  %42 = load i8*, i8** %aux186, align 8, !dbg !2594
  %tobool187 = icmp eq i8* %42, null, !dbg !2596
  br i1 %tobool187, label %if.end201, label %land.lhs.true188, !dbg !2597

land.lhs.true188:                                 ; preds = %for.body184
  %reachable189 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 27, !dbg !2598
  %bf.load190 = load i16, i16* %reachable189, align 4, !dbg !2598
  %bf.clear192 = and i16 %bf.load190, 8, !dbg !2598
  %tobool194 = icmp eq i16 %bf.clear192, 0, !dbg !2599
  br i1 %tobool194, label %if.then195, label %if.end201, !dbg !2600

if.then195:                                       ; preds = %land.lhs.true188
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %node.2) #6, !dbg !2601
  %bf.load197 = load i16, i16* %reachable189, align 4, !dbg !2603
  %bf.clear198 = and i16 %bf.load197, -33, !dbg !2603
  store i16 %bf.clear198, i16* %reachable189, align 4, !dbg !2603
  %inlinable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 18, i32 2, !dbg !2604
  %bf.load199 = load i8, i8* %inlinable, align 8, !dbg !2605
  %bf.clear200 = and i8 %bf.load199, -9, !dbg !2605
  store i8 %bf.clear200, i8* %inlinable, align 8, !dbg !2605
  %.pre = load i8*, i8** %aux186, align 8, !dbg !2606
  br label %if.end201, !dbg !2607

if.end201:                                        ; preds = %land.lhs.true188, %for.body184, %if.then195
  %43 = phi i8* [ %42, %land.lhs.true188 ], [ null, %for.body184 ], [ %.pre, %if.then195 ], !dbg !2606
  %tobool203 = icmp eq i8* %43, null, !dbg !2608
  br i1 %tobool203, label %if.then204, label %for.inc296, !dbg !2609

if.then204:                                       ; preds = %if.end201
  %inlined_to206 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 19, i32 2, !dbg !2610
  store %struct.cgraph_node* null, %struct.cgraph_node** %inlined_to206, align 8, !dbg !2611
  br i1 %tobool, label %if.end211, label %if.then208, !dbg !2612

if.then208:                                       ; preds = %if.then204
  %call209 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node.2) #6, !dbg !2613
  %call210 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %call209) #6, !dbg !2615
  br label %if.end211, !dbg !2615

if.end211:                                        ; preds = %if.then204, %if.then208
  %analyzed212 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 27, !dbg !2616
  %bf.load213 = load i16, i16* %analyzed212, align 4, !dbg !2616
  %bf.clear215 = and i16 %bf.load213, 32, !dbg !2616
  %tobool217 = icmp eq i16 %bf.clear215, 0, !dbg !2617
  br i1 %tobool217, label %if.then230, label %lor.lhs.false218, !dbg !2618

lor.lhs.false218:                                 ; preds = %if.end211
  %44 = load %struct.tree_decl_common*, %struct.tree_decl_common** %40, align 8, !dbg !2619
  %decl_flag_1221 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %44, i64 0, i32 2, !dbg !2619
  %45 = bitcast i40* %decl_flag_1221 to i64*, !dbg !2619
  %bf.load222 = load i64, i64* %45, align 8, !dbg !2619
  %bf.cast2256 = and i64 %bf.load222, 33554432, !dbg !2619
  %tobool226 = icmp eq i64 %bf.cast2256, 0, !dbg !2619
  %or.cond3 = or i1 %tobool226, %tobool229, !dbg !2620
  br i1 %or.cond3, label %if.then230, label %if.else231, !dbg !2620

if.then230:                                       ; preds = %if.end211, %lor.lhs.false218
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node.2) #6, !dbg !2621
  br label %for.inc296, !dbg !2621

if.else231:                                       ; preds = %lor.lhs.false218
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 2, !dbg !2622
  br label %for.cond233, !dbg !2624

for.cond233:                                      ; preds = %for.inc240, %if.else231
  %e232.0.in = phi %struct.cgraph_edge** [ %callers, %if.else231 ], [ %next_caller, %for.inc240 ]
  %e232.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e232.0.in, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e232.0, metadata !2439, metadata !DIExpression()), !dbg !2626
  %cond = icmp eq %struct.cgraph_edge* %e232.0, null, !dbg !2627
  br i1 %cond, label %lor.lhs.false243.loopexit, label %for.body235, !dbg !2627

for.body235:                                      ; preds = %for.cond233
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e232.0, i64 0, i32 1, !dbg !2628
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !2628
  %aux236 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %46, i64 0, i32 16, !dbg !2631
  %47 = load i8*, i8** %aux236, align 8, !dbg !2631
  %tobool237 = icmp eq i8* %47, null, !dbg !2632
  br i1 %tobool237, label %for.inc240, label %for.end241, !dbg !2633

for.inc240:                                       ; preds = %for.body235
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e232.0, i64 0, i32 4, !dbg !2634
  br label %for.cond233, !dbg !2635, !llvm.loop !2636

for.end241:                                       ; preds = %for.body235
  br label %if.then248, !dbg !2638

lor.lhs.false243.loopexit:                        ; preds = %for.cond233
  %bf.clear245 = and i16 %bf.load213, 1, !dbg !2639
  %tobool247 = icmp eq i16 %bf.clear245, 0, !dbg !2640
  br i1 %tobool247, label %if.else292, label %if.then248, !dbg !2641

if.then248:                                       ; preds = %for.end241, %lor.lhs.false243.loopexit
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 11, !dbg !2642
  br label %for.cond249, !dbg !2644

for.cond249:                                      ; preds = %for.inc256, %if.then248
  %clone.0.in = phi %struct.cgraph_node** [ %clones, %if.then248 ], [ %next_sibling_clone, %for.inc256 ]
  %clone.0 = load %struct.cgraph_node*, %struct.cgraph_node** %clone.0.in, align 8, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %clone.0, metadata !2447, metadata !DIExpression()), !dbg !2646
  %cond5 = icmp eq %struct.cgraph_node* %clone.0, null, !dbg !2647
  br i1 %cond5, label %if.then259.loopexit, label %for.body251, !dbg !2647

for.body251:                                      ; preds = %for.cond249
  %aux252 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %clone.0, i64 0, i32 16, !dbg !2648
  %48 = load i8*, i8** %aux252, align 8, !dbg !2648
  %tobool253 = icmp eq i8* %48, null, !dbg !2651
  br i1 %tobool253, label %for.inc256, label %for.end257, !dbg !2652

for.inc256:                                       ; preds = %for.body251
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %clone.0, i64 0, i32 9, !dbg !2653
  br label %for.cond249, !dbg !2654, !llvm.loop !2655

for.end257:                                       ; preds = %for.body251
  br label %if.end267, !dbg !2657

if.then259.loopexit:                              ; preds = %for.cond249
  tail call void @cgraph_release_function_body(%struct.cgraph_node* %node.2) #6, !dbg !2658
  %bf.load261 = load i16, i16* %analyzed212, align 4, !dbg !2661
  %bf.clear262 = and i16 %bf.load261, -33, !dbg !2661
  store i16 %bf.clear262, i16* %analyzed212, align 4, !dbg !2661
  %inlinable264 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 18, i32 2, !dbg !2662
  %bf.load265 = load i8, i8* %inlinable264, align 8, !dbg !2663
  %bf.clear266 = and i8 %bf.load265, -9, !dbg !2663
  store i8 %bf.clear266, i8* %inlinable264, align 8, !dbg !2663
  br label %if.end267, !dbg !2664

if.end267:                                        ; preds = %for.end257, %if.then259.loopexit
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %node.2) #6, !dbg !2665
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 10, !dbg !2666
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !2666
  %tobool268 = icmp eq %struct.cgraph_node* %49, null, !dbg !2668
  br i1 %tobool268, label %if.else273, label %if.then269, !dbg !2669

if.then269:                                       ; preds = %if.end267
  %next_sibling_clone270 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 9, !dbg !2670
  %50 = bitcast %struct.cgraph_node** %next_sibling_clone270 to i64*, !dbg !2670
  %51 = load i64, i64* %50, align 8, !dbg !2670
  %next_sibling_clone272 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %49, i64 0, i32 9, !dbg !2671
  %52 = bitcast %struct.cgraph_node** %next_sibling_clone272 to i64*, !dbg !2672
  store i64 %51, i64* %52, align 8, !dbg !2672
  br label %if.end281, !dbg !2673

if.else273:                                       ; preds = %if.end267
  %clone_of274 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 12, !dbg !2674
  %53 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of274, align 8, !dbg !2674
  %tobool275 = icmp eq %struct.cgraph_node* %53, null, !dbg !2676
  br i1 %tobool275, label %if.end281, label %if.then276, !dbg !2677

if.then276:                                       ; preds = %if.else273
  %next_sibling_clone277 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 9, !dbg !2678
  %54 = bitcast %struct.cgraph_node** %next_sibling_clone277 to i64*, !dbg !2678
  %55 = load i64, i64* %54, align 8, !dbg !2678
  %clones279 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %53, i64 0, i32 11, !dbg !2679
  %56 = bitcast %struct.cgraph_node** %clones279 to i64*, !dbg !2680
  store i64 %55, i64* %56, align 8, !dbg !2680
  br label %if.end281, !dbg !2681

if.end281:                                        ; preds = %if.else273, %if.then276, %if.then269
  %next_sibling_clone282 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 9, !dbg !2682
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone282, align 8, !dbg !2682
  %tobool283 = icmp eq %struct.cgraph_node* %57, null, !dbg !2684
  br i1 %tobool283, label %if.end288, label %if.then284, !dbg !2685

if.then284:                                       ; preds = %if.end281
  %58 = bitcast %struct.cgraph_node** %prev_sibling_clone to i64*, !dbg !2686
  %59 = load i64, i64* %58, align 8, !dbg !2686
  %prev_sibling_clone287 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %57, i64 0, i32 10, !dbg !2687
  %60 = bitcast %struct.cgraph_node** %prev_sibling_clone287 to i64*, !dbg !2688
  store i64 %59, i64* %60, align 8, !dbg !2688
  br label %if.end288, !dbg !2689

if.end288:                                        ; preds = %if.end281, %if.then284
  %clone_of289 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 12, !dbg !2690
  store %struct.cgraph_node* null, %struct.cgraph_node** %clone_of289, align 8, !dbg !2691
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_sibling_clone282, align 8, !dbg !2692
  store %struct.cgraph_node* null, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !2693
  br label %for.inc296, !dbg !2694

if.else292:                                       ; preds = %lor.lhs.false243.loopexit
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node.2) #6, !dbg !2695
  br label %for.inc296

for.inc296:                                       ; preds = %if.end201, %if.end288, %if.else292, %if.then230
  %changed.1 = phi i8 [ %changed.0, %if.end201 ], [ 1, %if.end288 ], [ 1, %if.else292 ], [ 1, %if.then230 ], !dbg !2450
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2428, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %41, metadata !2426, metadata !DIExpression()), !dbg !2450
  br label %for.cond182, !dbg !2696, !llvm.loop !2697

for.end297:                                       ; preds = %for.cond182
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond182 ], !dbg !2590
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2428, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2428, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2428, metadata !DIExpression()), !dbg !2450
  br label %for.cond298, !dbg !2699

for.cond298:                                      ; preds = %if.end316, %for.end297
  %node.3.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end297 ], [ %next319, %if.end316 ]
  %node.3 = load %struct.cgraph_node*, %struct.cgraph_node** %node.3.in, align 8, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.3, metadata !2426, metadata !DIExpression()), !dbg !2450
  %tobool299 = icmp eq %struct.cgraph_node* %node.3, null, !dbg !2702
  br i1 %tobool299, label %for.end320, label %for.body300, !dbg !2702

for.body300:                                      ; preds = %for.cond298
  %inlined_to302 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 19, i32 2, !dbg !2703
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to302, align 8, !dbg !2703
  %tobool303 = icmp eq %struct.cgraph_node* %61, null, !dbg !2707
  br i1 %tobool303, label %if.end316, label %land.lhs.true304, !dbg !2708

land.lhs.true304:                                 ; preds = %for.body300
  %callers305 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 2, !dbg !2709
  %62 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers305, align 8, !dbg !2709
  %tobool306 = icmp eq %struct.cgraph_edge* %62, null, !dbg !2710
  br i1 %tobool306, label %if.then307, label %if.end316, !dbg !2711

if.then307:                                       ; preds = %land.lhs.true304
  %clones308 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 11, !dbg !2712
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %clones308, align 8, !dbg !2712
  %tobool309 = icmp eq %struct.cgraph_node* %63, null, !dbg !2712
  br i1 %tobool309, label %cond.true310, label %cond.end312, !dbg !2712

cond.true310:                                     ; preds = %if.then307
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2712
  br label %cond.end312, !dbg !2712

cond.end312:                                      ; preds = %if.then307, %cond.true310
  store %struct.cgraph_node* null, %struct.cgraph_node** %inlined_to302, align 8, !dbg !2714
  tail call fastcc void @update_inlined_to_pointer(%struct.cgraph_node* nonnull %node.3, %struct.cgraph_node* nonnull %node.3) #8, !dbg !2715
  br label %if.end316, !dbg !2716

if.end316:                                        ; preds = %land.lhs.true304, %for.body300, %cond.end312
  %aux317 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 16, !dbg !2717
  store i8* null, i8** %aux317, align 8, !dbg !2718
  %next319 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 3, !dbg !2719
  br label %for.cond298, !dbg !2720, !llvm.loop !2721

for.end320:                                       ; preds = %for.cond298
  tail call void @remove_unreachable_alias_pairs() #6, !dbg !2723
  ret i8 %changed.0.lcssa, !dbg !2724
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cgraph_can_remove_if_no_direct_calls_p(%struct.cgraph_node* %node) unnamed_addr #0 !dbg !2725 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2727, metadata !DIExpression()), !dbg !2728
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2729
  %bf.load = load i16, i16* %needed, align 4, !dbg !2729
  %bf.clear = and i16 %bf.load, 1, !dbg !2729
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !2730
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2731

land.rhs:                                         ; preds = %entry
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_with_vis**, !dbg !2732
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !2732
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !2732
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !2732
  %bf.load1 = load i32, i32* %2, align 8, !dbg !2732
  %bf.clear2 = and i32 %bf.load1, 512, !dbg !2732
  %tobool3 = icmp eq i32 %bf.clear2, 0, !dbg !2732
  br i1 %tobool3, label %lor.rhs, label %land.end, !dbg !2733

lor.rhs:                                          ; preds = %land.rhs
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !2734
  %bf.load4 = load i8, i8* %externally_visible, align 8, !dbg !2734
  %bf.clear6 = lshr i8 %bf.load4, 1, !dbg !2733
  %bf.clear6.lobit = and i8 %bf.clear6, 1, !dbg !2733
  %3 = xor i8 %bf.clear6.lobit, 1, !dbg !2733
  br label %land.end, !dbg !2733

land.end:                                         ; preds = %land.rhs, %entry, %lor.rhs
  %4 = phi i8 [ 0, %entry ], [ 1, %land.rhs ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !2735
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @gimple_has_body_p(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @cgraph_node_remove_callees(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_remove_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @cgraph_release_function_body(%struct.cgraph_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @update_inlined_to_pointer(%struct.cgraph_node* %node, %struct.cgraph_node* %inlined_to) unnamed_addr #4 !dbg !2736 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %inlined_to, metadata !2741, metadata !DIExpression()), !dbg !2743
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !2744
  br label %for.cond, !dbg !2746

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %entry ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2747
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2742, metadata !DIExpression()), !dbg !2743
  %tobool = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2748
  br i1 %tobool, label %for.end, label %for.body, !dbg !2748

for.body:                                         ; preds = %for.cond
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2749
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2749
  %inlined_to1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 19, i32 2, !dbg !2752
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to1, align 8, !dbg !2752
  %tobool2 = icmp eq %struct.cgraph_node* %1, null, !dbg !2753
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !2754

if.then:                                          ; preds = %for.body
  store %struct.cgraph_node* %inlined_to, %struct.cgraph_node** %inlined_to1, align 8, !dbg !2755
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2757
  tail call fastcc void @update_inlined_to_pointer(%struct.cgraph_node* %2, %struct.cgraph_node* %inlined_to) #8, !dbg !2758
  br label %for.inc, !dbg !2759

for.inc:                                          ; preds = %for.body, %if.then
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !2760
  br label %for.cond, !dbg !2761, !llvm.loop !2762

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2764
}

declare dso_local void @remove_unreachable_alias_pairs() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @local_function_and_variable_visibility() #4 !dbg !2765 {
entry:
  %0 = load i32, i32* @flag_whole_program, align 4, !dbg !2766
  %tobool = icmp eq i32 %0, 0, !dbg !2766
  %1 = load i32, i32* @flag_lto, align 4, !dbg !2767
  %tobool1 = icmp ne i32 %1, 0, !dbg !2767
  %or.cond = or i1 %tobool, %tobool1, !dbg !2768
  br i1 %or.cond, label %land.end, label %land.rhs, !dbg !2768

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* @flag_whopr, align 4, !dbg !2769
  %tobool2 = icmp eq i32 %2, 0, !dbg !2770
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  %call = tail call fastcc i32 @function_and_variable_visibility(i8 zeroext %3) #8, !dbg !2771
  ret i32 0, !dbg !2772
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_whole_program_function_and_variable_visibility() #4 !dbg !2773 {
entry:
  %0 = load i32, i32* @flag_ltrans, align 4, !dbg !2774
  %tobool = icmp eq i32 %0, 0, !dbg !2775
  %conv = zext i1 %tobool to i8, !dbg !2775
  ret i8 %conv, !dbg !2776
}

; Function Attrs: nounwind uwtable
define internal i32 @whole_program_function_and_variable_visibility() #4 !dbg !2777 {
entry:
  %0 = load i32, i32* @flag_whole_program, align 4, !dbg !2781
  %conv = trunc i32 %0 to i8, !dbg !2781
  %call = tail call fastcc i32 @function_and_variable_visibility(i8 zeroext %conv) #8, !dbg !2782
  br label %for.cond, !dbg !2783

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2785
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2779, metadata !DIExpression()), !dbg !2786
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2787
  br i1 %tobool, label %for.end, label %for.body, !dbg !2787

for.body:                                         ; preds = %for.cond
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !2788
  %bf.load = load i8, i8* %externally_visible, align 8, !dbg !2788
  %bf.clear = and i8 %bf.load, 2, !dbg !2788
  %tobool1 = icmp eq i8 %bf.clear, 0, !dbg !2791
  br i1 %tobool1, label %for.inc, label %land.lhs.true, !dbg !2792

land.lhs.true:                                    ; preds = %for.body
  %1 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_with_vis**, !dbg !2793
  %2 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %1, align 8, !dbg !2793
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %2, i64 0, i32 4, !dbg !2793
  %3 = bitcast i24* %comdat_flag to i32*, !dbg !2793
  %bf.load2 = load i32, i32* %3, align 8, !dbg !2793
  %bf.clear4 = and i32 %bf.load2, 512, !dbg !2793
  %tobool5 = icmp eq i32 %bf.clear4, 0, !dbg !2793
  br i1 %tobool5, label %land.lhs.true6, label %for.inc, !dbg !2794

land.lhs.true6:                                   ; preds = %land.lhs.true
  %bf.clear10 = and i8 %bf.load, 4, !dbg !2795
  %tobool12 = icmp eq i8 %bf.clear10, 0, !dbg !2796
  br i1 %tobool12, label %for.inc, label %if.then, !dbg !2797

if.then:                                          ; preds = %land.lhs.true6
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* nonnull %node.0) #6, !dbg !2798
  br label %for.inc, !dbg !2798

for.inc:                                          ; preds = %land.lhs.true6, %land.lhs.true, %for.body, %if.then
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2799
  br label %for.cond, !dbg !2800, !llvm.loop !2801

for.end:                                          ; preds = %for.cond
  br label %for.cond13, !dbg !2803

for.cond13:                                       ; preds = %for.inc32, %for.end
  %vnode.0.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %for.end ], [ %next_needed, %for.inc32 ]
  %vnode.0 = load %struct.varpool_node*, %struct.varpool_node** %vnode.0.in, align 8, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.0, metadata !2780, metadata !DIExpression()), !dbg !2786
  %tobool14 = icmp eq %struct.varpool_node* %vnode.0, null, !dbg !2806
  br i1 %tobool14, label %for.end33, label %for.body15, !dbg !2806

for.body15:                                       ; preds = %for.cond13
  %externally_visible16 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 5, !dbg !2807
  %bf.load17 = load i8, i8* %externally_visible16, align 4, !dbg !2807
  %bf.clear19 = and i8 %bf.load17, 32, !dbg !2807
  %tobool21 = icmp eq i8 %bf.clear19, 0, !dbg !2810
  br i1 %tobool21, label %for.inc32, label %land.lhs.true22, !dbg !2811

land.lhs.true22:                                  ; preds = %for.body15
  %4 = bitcast %struct.varpool_node* %vnode.0 to %struct.tree_decl_with_vis**, !dbg !2812
  %5 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %4, align 8, !dbg !2812
  %comdat_flag25 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %5, i64 0, i32 4, !dbg !2812
  %6 = bitcast i24* %comdat_flag25 to i32*, !dbg !2812
  %bf.load26 = load i32, i32* %6, align 8, !dbg !2812
  %bf.clear28 = and i32 %bf.load26, 512, !dbg !2812
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !2812
  br i1 %tobool29, label %if.then30, label %for.inc32, !dbg !2813

if.then30:                                        ; preds = %land.lhs.true22
  tail call void @varpool_mark_needed_node(%struct.varpool_node* nonnull %vnode.0) #6, !dbg !2814
  br label %for.inc32, !dbg !2814

for.inc32:                                        ; preds = %land.lhs.true22, %for.body15, %if.then30
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 2, !dbg !2815
  br label %for.cond13, !dbg !2816, !llvm.loop !2817

for.end33:                                        ; preds = %for.cond13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2819
  %tobool34 = icmp eq %struct._IO_FILE* %7, null, !dbg !2819
  br i1 %tobool34, label %if.end52, label %if.then35, !dbg !2821

if.then35:                                        ; preds = %for.end33
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2822
  br label %for.cond37, !dbg !2824

for.cond37:                                       ; preds = %for.inc48, %if.then35
  %vnode.1.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %if.then35 ], [ %next_needed49, %for.inc48 ]
  %vnode.1 = load %struct.varpool_node*, %struct.varpool_node** %vnode.1.in, align 8, !dbg !2826
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.1, metadata !2780, metadata !DIExpression()), !dbg !2786
  %tobool38 = icmp eq %struct.varpool_node* %vnode.1, null, !dbg !2827
  br i1 %tobool38, label %for.end50, label %for.body39, !dbg !2827

for.body39:                                       ; preds = %for.cond37
  %needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1, i64 0, i32 5, !dbg !2828
  %bf.load40 = load i8, i8* %needed, align 4, !dbg !2828
  %bf.clear41 = and i8 %bf.load40, 1, !dbg !2828
  %tobool43 = icmp eq i8 %bf.clear41, 0, !dbg !2831
  br i1 %tobool43, label %for.inc48, label %if.then44, !dbg !2832

if.then44:                                        ; preds = %for.body39
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2833
  %call45 = tail call i8* @varpool_node_name(%struct.varpool_node* nonnull %vnode.1) #6, !dbg !2834
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %call45) #6, !dbg !2835
  br label %for.inc48, !dbg !2835

for.inc48:                                        ; preds = %for.body39, %if.then44
  %next_needed49 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1, i64 0, i32 2, !dbg !2836
  br label %for.cond37, !dbg !2837, !llvm.loop !2838

for.end50:                                        ; preds = %for.cond37
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2840
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2841
  br label %if.end52, !dbg !2842

if.end52:                                         ; preds = %for.end33, %for.end50
  ret i32 0, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node_set_def* @cgraph_node_set_new() local_unnamed_addr #4 !dbg !2844 {
entry:
  %call = tail call i8* @ggc_alloc_stat(i64 24) #6, !dbg !2850
  %0 = bitcast i8* %call to %struct.cgraph_node_set_def*, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %0, metadata !2849, metadata !DIExpression()), !dbg !2851
  %call1 = tail call %struct.htab* @htab_create_alloc(i64 10, i32 (i8*)* nonnull @hash_cgraph_node_set_element, i32 (i8*, i8*)* nonnull @eq_cgraph_node_set_element, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !2852
  %hashtab = bitcast i8* %call to %struct.htab**, !dbg !2853
  store %struct.htab* %call1, %struct.htab** %hashtab, align 8, !dbg !2854
  %nodes = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2855
  %1 = bitcast i8* %nodes to %struct.VEC_cgraph_node_ptr_gc**, !dbg !2855
  store %struct.VEC_cgraph_node_ptr_gc* null, %struct.VEC_cgraph_node_ptr_gc** %1, align 8, !dbg !2856
  ret %struct.cgraph_node_set_def* %0, !dbg !2857
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_cgraph_node_set_element(i8* %p) #4 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2860, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %p, metadata !2861, metadata !DIExpression()), !dbg !2862
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8, !dbg !2863
  %1 = bitcast i8* %p to i8**, !dbg !2864
  %2 = load i8*, i8** %1, align 8, !dbg !2864
  %call = tail call i32 %0(i8* %2) #6, !dbg !2863
  ret i32 %call, !dbg !2865
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_cgraph_node_set_element(i8* %p1, i8* %p2) #4 !dbg !2866 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2868, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2869, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %p1, metadata !2870, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2871, metadata !DIExpression()), !dbg !2872
  %node = bitcast i8* %p1 to %struct.cgraph_node**, !dbg !2873
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %node, align 8, !dbg !2873
  %node1 = bitcast i8* %p2 to %struct.cgraph_node**, !dbg !2874
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %node1, align 8, !dbg !2874
  %cmp = icmp eq %struct.cgraph_node* %0, %1, !dbg !2875
  %conv = zext i1 %cmp to i32, !dbg !2875
  ret i32 %conv, !dbg !2876
}

declare dso_local i8* @ggc_calloc(i64, i64) #1

declare dso_local void @ggc_free(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_node_set_add(%struct.cgraph_node_set_def* %set, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !2877 {
entry:
  %dummy = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2881, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2882, metadata !DIExpression()), !dbg !2886
  %0 = bitcast %struct.cgraph_node_set_element_def* %dummy to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2887
  %node1 = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %dummy, i64 0, i32 0, !dbg !2888
  store %struct.cgraph_node* %node, %struct.cgraph_node** %node1, align 8, !dbg !2889
  %hashtab = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 0, !dbg !2890
  %1 = load %struct.htab*, %struct.htab** %hashtab, align 8, !dbg !2890
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 1) #6, !dbg !2891
  call void @llvm.dbg.value(metadata i8** %call, metadata !2883, metadata !DIExpression()), !dbg !2886
  %2 = load i8*, i8** %call, align 8, !dbg !2892
  %cmp = icmp eq i8* %2, null, !dbg !2894
  br i1 %cmp, label %if.end, label %if.then, !dbg !2895

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %2, metadata !2884, metadata !DIExpression()), !dbg !2886
  %node2 = bitcast i8* %2 to %struct.cgraph_node**, !dbg !2896
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %node2, align 8, !dbg !2896
  %cmp3 = icmp eq %struct.cgraph_node* %3, %node, !dbg !2896
  br i1 %cmp3, label %land.lhs.true, label %cond.true8, !dbg !2896

land.lhs.true:                                    ; preds = %if.then
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 1, !dbg !2896
  %4 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2896
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %4, null, !dbg !2896
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2896

cond.true:                                        ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %4, i64 0, i32 0, !dbg !2896
  br label %cond.end, !dbg !2896

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %land.lhs.true ], !dbg !2896
  %index = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2896
  %5 = bitcast i8* %index to i64*, !dbg !2896
  %6 = load i64, i64* %5, align 8, !dbg !2896
  %conv = trunc i64 %6 to i32, !dbg !2896
  %call5 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %conv) #8, !dbg !2896
  %cmp6 = icmp eq %struct.cgraph_node* %call5, %node, !dbg !2896
  br i1 %cmp6, label %cleanup, label %cond.true8, !dbg !2896

cond.true8:                                       ; preds = %cond.end, %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 631, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2896
  br label %cleanup, !dbg !2896

if.end:                                           ; preds = %entry
  %call12 = call i8* @ggc_alloc_stat(i64 16) #6, !dbg !2898
  call void @llvm.dbg.value(metadata i8* %call12, metadata !2884, metadata !DIExpression()), !dbg !2886
  %node13 = bitcast i8* %call12 to %struct.cgraph_node**, !dbg !2899
  store %struct.cgraph_node* %node, %struct.cgraph_node** %node13, align 8, !dbg !2900
  %nodes14 = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 1, !dbg !2901
  %7 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes14, align 8, !dbg !2901
  %tobool15 = icmp eq %struct.VEC_cgraph_node_ptr_gc* %7, null, !dbg !2901
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !2901

cond.true16:                                      ; preds = %if.end
  %base18 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %7, i64 0, i32 0, !dbg !2901
  br label %cond.end20, !dbg !2901

cond.end20:                                       ; preds = %if.end, %cond.true16
  %cond21 = phi %struct.VEC_cgraph_node_ptr_base* [ %base18, %cond.true16 ], [ null, %if.end ], !dbg !2901
  %call22 = call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond21) #8, !dbg !2901
  %conv23 = zext i32 %call22 to i64, !dbg !2901
  %index24 = getelementptr inbounds i8, i8* %call12, i64 8, !dbg !2902
  %8 = bitcast i8* %index24 to i64*, !dbg !2902
  store i64 %conv23, i64* %8, align 8, !dbg !2903
  store i8* %call12, i8** %call, align 8, !dbg !2904
  %call26 = call fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_gc_safe_push(%struct.VEC_cgraph_node_ptr_gc** nonnull %nodes14, %struct.cgraph_node* %node) #8, !dbg !2905
  br label %cleanup, !dbg !2906

cleanup:                                          ; preds = %cond.true8, %cond.end, %cond.end20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2906
  ret void, !dbg !2906
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2907 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2914, metadata !DIExpression()), !dbg !2915
  br label %land.end, !dbg !2916

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2916
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2916
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2916
  ret %struct.cgraph_node* %0, !dbg !2916
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !2917 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2921, metadata !DIExpression()), !dbg !2922
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !2923
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2923

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !2923
  %0 = load i32, i32* %num, align 8, !dbg !2923
  br label %cond.end, !dbg !2923

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2923
  ret i32 %cond, !dbg !2923
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_gc_safe_push(%struct.VEC_cgraph_node_ptr_gc** %vec_, %struct.cgraph_node* %obj_) unnamed_addr #0 !dbg !2924 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_gc** %vec_, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %obj_, metadata !2931, metadata !DIExpression()), !dbg !2932
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_gc_reserve(%struct.VEC_cgraph_node_ptr_gc** %vec_, i32 1) #8, !dbg !2933
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %vec_, align 8, !dbg !2933
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !2933
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2933

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !2933
  br label %cond.end, !dbg !2933

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2933
  %call1 = tail call fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_base_quick_push(%struct.VEC_cgraph_node_ptr_base* %cond, %struct.cgraph_node* %obj_) #8, !dbg !2933
  ret %struct.cgraph_node** %call1, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_node_set_remove(%struct.cgraph_node_set_def* %set, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !2934 {
entry:
  %dummy = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2936, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2937, metadata !DIExpression()), !dbg !2944
  %0 = bitcast %struct.cgraph_node_set_element_def* %dummy to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2945
  %node1 = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %dummy, i64 0, i32 0, !dbg !2946
  store %struct.cgraph_node* %node, %struct.cgraph_node** %node1, align 8, !dbg !2947
  %hashtab = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 0, !dbg !2948
  %1 = load %struct.htab*, %struct.htab** %hashtab, align 8, !dbg !2948
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !2949
  call void @llvm.dbg.value(metadata i8** %call, metadata !2938, metadata !DIExpression()), !dbg !2944
  %cmp = icmp eq i8** %call, null, !dbg !2950
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2952

if.end:                                           ; preds = %entry
  %2 = bitcast i8** %call to %struct.cgraph_node_set_element_def**, !dbg !2953
  %3 = load %struct.cgraph_node_set_element_def*, %struct.cgraph_node_set_element_def** %2, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_element_def* %3, metadata !2940, metadata !DIExpression()), !dbg !2944
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 1, !dbg !2954
  %4 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2954
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %4, null, !dbg !2954
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2954

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %4, i64 0, i32 0, !dbg !2954
  br label %cond.end, !dbg !2954

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2954
  %index = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %3, i64 0, i32 1, !dbg !2954
  %5 = load i64, i64* %index, align 8, !dbg !2954
  %conv = trunc i64 %5 to i32, !dbg !2954
  %call3 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %conv) #8, !dbg !2954
  %cmp4 = icmp eq %struct.cgraph_node* %call3, %node, !dbg !2954
  br i1 %cmp4, label %cond.end8, label %cond.true6, !dbg !2954

cond.true6:                                       ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 663, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2954
  br label %cond.end8, !dbg !2954

cond.end8:                                        ; preds = %cond.end, %cond.true6
  %6 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2955
  %tobool11 = icmp eq %struct.VEC_cgraph_node_ptr_gc* %6, null, !dbg !2955
  br i1 %tobool11, label %cond.end16, label %cond.true12, !dbg !2955

cond.true12:                                      ; preds = %cond.end8
  %base14 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %6, i64 0, i32 0, !dbg !2955
  br label %cond.end16, !dbg !2955

cond.end16:                                       ; preds = %cond.end8, %cond.true12
  %cond17 = phi %struct.VEC_cgraph_node_ptr_base* [ %base14, %cond.true12 ], [ null, %cond.end8 ], !dbg !2955
  %call18 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_pop(%struct.VEC_cgraph_node_ptr_base* %cond17) #8, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call18, metadata !2942, metadata !DIExpression()), !dbg !2944
  %cmp19 = icmp eq %struct.cgraph_node* %call18, %node, !dbg !2956
  br i1 %cmp19, label %if.end43, label %if.then21, !dbg !2958

if.then21:                                        ; preds = %cond.end16
  store %struct.cgraph_node* %call18, %struct.cgraph_node** %node1, align 8, !dbg !2959
  %7 = load %struct.htab*, %struct.htab** %hashtab, align 8, !dbg !2961
  %call24 = call i8** @htab_find_slot(%struct.htab* %7, i8* nonnull %0, i32 0) #6, !dbg !2962
  call void @llvm.dbg.value(metadata i8** %call24, metadata !2939, metadata !DIExpression()), !dbg !2944
  %8 = bitcast i8** %call24 to %struct.cgraph_node_set_element_def**, !dbg !2963
  %9 = load %struct.cgraph_node_set_element_def*, %struct.cgraph_node_set_element_def** %8, align 8, !dbg !2963
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_element_def* %9, metadata !2941, metadata !DIExpression()), !dbg !2944
  %tobool25 = icmp eq %struct.cgraph_node_set_element_def* %9, null, !dbg !2964
  br i1 %tobool25, label %cond.true26, label %cond.end28, !dbg !2964

cond.true26:                                      ; preds = %if.then21
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 673, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2964
  br label %cond.end28, !dbg !2964

cond.end28:                                       ; preds = %if.then21, %cond.true26
  %10 = load i64, i64* %index, align 8, !dbg !2965
  %index31 = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %9, i64 0, i32 1, !dbg !2966
  store i64 %10, i64* %index31, align 8, !dbg !2967
  %11 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2968
  %tobool33 = icmp eq %struct.VEC_cgraph_node_ptr_gc* %11, null, !dbg !2968
  br i1 %tobool33, label %cond.end38, label %cond.true34, !dbg !2968

cond.true34:                                      ; preds = %cond.end28
  %base36 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %11, i64 0, i32 0, !dbg !2968
  br label %cond.end38, !dbg !2968

cond.end38:                                       ; preds = %cond.end28, %cond.true34
  %cond39 = phi %struct.VEC_cgraph_node_ptr_base* [ %base36, %cond.true34 ], [ null, %cond.end28 ], !dbg !2968
  %conv41 = trunc i64 %10 to i32, !dbg !2968
  %call42 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_replace(%struct.VEC_cgraph_node_ptr_base* %cond39, i32 %conv41, %struct.cgraph_node* %call18) #8, !dbg !2968
  br label %if.end43, !dbg !2969

if.end43:                                         ; preds = %cond.end16, %cond.end38
  %12 = load %struct.htab*, %struct.htab** %hashtab, align 8, !dbg !2970
  call void @htab_clear_slot(%struct.htab* %12, i8** nonnull %call) #6, !dbg !2971
  %13 = bitcast %struct.cgraph_node_set_element_def* %3 to i8*, !dbg !2972
  call void @ggc_free(i8* %13) #6, !dbg !2973
  br label %cleanup, !dbg !2974

cleanup:                                          ; preds = %entry, %if.end43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2974
  ret void, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_pop(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2980, metadata !DIExpression()), !dbg !2982
  %num1 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !2983
  %0 = load i32, i32* %num1, align 8, !dbg !2983
  %dec = add i32 %0, -1, !dbg !2983
  store i32 %dec, i32* %num1, align 8, !dbg !2983
  %idxprom = zext i32 %dec to i64, !dbg !2983
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2983
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2983
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !2981, metadata !DIExpression()), !dbg !2982
  ret %struct.cgraph_node* %1, !dbg !2983
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_replace(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_, %struct.cgraph_node* %obj_) unnamed_addr #0 !dbg !2984 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %obj_, metadata !2990, metadata !DIExpression()), !dbg !2992
  %idxprom = zext i32 %ix_ to i64, !dbg !2993
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2993
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2993
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !2991, metadata !DIExpression()), !dbg !2992
  store %struct.cgraph_node* %obj_, %struct.cgraph_node** %arrayidx, align 8, !dbg !2993
  ret %struct.cgraph_node* %0, !dbg !2993
}

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local { %struct.cgraph_node_set_def*, i32 } @cgraph_node_set_find(%struct.cgraph_node_set_def* %set, %struct.cgraph_node* %node) local_unnamed_addr #4 !dbg !2994 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  %dummy = alloca %struct.cgraph_node_set_element_def, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3003, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3004, metadata !DIExpression()), !dbg !3009
  %0 = bitcast %struct.cgraph_node_set_element_def* %dummy to i8*, !dbg !3010
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3010
  %node1 = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %dummy, i64 0, i32 0, !dbg !3011
  store %struct.cgraph_node* %node, %struct.cgraph_node** %node1, align 8, !dbg !3012
  %hashtab = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 0, !dbg !3013
  %1 = load %struct.htab*, %struct.htab** %hashtab, align 8, !dbg !3013
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !3014
  call void @llvm.dbg.value(metadata i8** %call, metadata !3005, metadata !DIExpression()), !dbg !3009
  %cmp = icmp eq i8** %call, null, !dbg !3015
  br i1 %cmp, label %if.then, label %if.else, !dbg !3017

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !3018
  store i32 -1, i32* %index, align 8, !dbg !3019
  br label %if.end, !dbg !3020

if.else:                                          ; preds = %entry
  %2 = bitcast i8** %call to %struct.cgraph_node_set_element_def**, !dbg !3021
  %3 = load %struct.cgraph_node_set_element_def*, %struct.cgraph_node_set_element_def** %2, align 8, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_element_def* %3, metadata !3007, metadata !DIExpression()), !dbg !3009
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %set, i64 0, i32 1, !dbg !3023
  %4 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !3023
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %4, null, !dbg !3023
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3023

cond.true:                                        ; preds = %if.else
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %4, i64 0, i32 0, !dbg !3023
  br label %cond.end, !dbg !3023

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %if.else ], !dbg !3023
  %index3 = getelementptr inbounds %struct.cgraph_node_set_element_def, %struct.cgraph_node_set_element_def* %3, i64 0, i32 1, !dbg !3023
  %5 = load i64, i64* %index3, align 8, !dbg !3023
  %conv = trunc i64 %5 to i32, !dbg !3023
  %call4 = call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %conv) #8, !dbg !3023
  %cmp5 = icmp eq %struct.cgraph_node* %call4, %node, !dbg !3023
  br i1 %cmp5, label %cond.end9, label %cond.true7, !dbg !3023

cond.true7:                                       ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 705, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3023
  br label %cond.end9, !dbg !3023

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %6 = load i64, i64* %index3, align 8, !dbg !3024
  %conv12 = trunc i64 %6 to i32, !dbg !3025
  %index13 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !3026
  store i32 %conv12, i32* %index13, align 8, !dbg !3027
  br label %if.end

if.end:                                           ; preds = %cond.end9, %if.then
  %set14 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !3028
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set14, align 8, !dbg !3029
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3030
  %7 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !3030
  %8 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %7, align 8, !dbg !3030
  ret { %struct.cgraph_node_set_def*, i32 } %8, !dbg !3030
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_cgraph_node_set(%struct._IO_FILE* %f, %struct.cgraph_node_set_def* %set) local_unnamed_addr #4 !dbg !3031 {
entry:
  %iter = alloca %struct.cgraph_node_set_iterator, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3035, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3036, metadata !DIExpression()), !dbg !3042
  %0 = bitcast %struct.cgraph_node_set_iterator* %iter to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3043
  %1 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !3044
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3044
  %call = tail call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #8, !dbg !3044
  %2 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !3044
  %3 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call, 0, !dbg !3044
  store %struct.cgraph_node_set_def* %3, %struct.cgraph_node_set_def** %2, align 8, !dbg !3044
  %4 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !3044
  %5 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call, 1, !dbg !3044
  store i32 %5, i32* %4, align 8, !dbg !3044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !3044
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3044
  %6 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %iter, i64 0, i32 0, !dbg !3045
  %7 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %iter, i64 0, i32 1, !dbg !3045
  br label %for.cond, !dbg !3046

for.cond:                                         ; preds = %for.body, %entry
  %8 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3047
  %9 = load i32, i32* %7, align 8, !dbg !3047
  %call1 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %8, i32 %9) #8, !dbg !3047
  %tobool = icmp eq i8 %call1, 0, !dbg !3048
  br i1 %tobool, label %for.body, label %for.end, !dbg !3049

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %6, align 8, !dbg !3050
  %11 = load i32, i32* %7, align 8, !dbg !3050
  %call2 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %10, i32 %11) #8, !dbg !3050
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call2, metadata !3038, metadata !DIExpression()), !dbg !3051
  call void @dump_cgraph_node(%struct._IO_FILE* %f, %struct.cgraph_node* %call2) #6, !dbg !3052
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %iter, metadata !3037, metadata !DIExpression(DW_OP_deref)), !dbg !3042
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %iter) #8, !dbg !3053
  br label %for.cond, !dbg !3054, !llvm.loop !3055

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3057
  ret void, !dbg !3057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !3058 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3062, metadata !DIExpression()), !dbg !3064
  %set1 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !3065
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set1, align 8, !dbg !3066
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !3067
  store i32 0, i32* %index, align 8, !dbg !3068
  %0 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !3069
  %1 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %0, align 8, !dbg !3069
  ret { %struct.cgraph_node_set_def*, i32 } %1, !dbg !3069
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !3070 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !3075
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !3075
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !3075
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3075

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !3075
  br label %cond.end, !dbg !3075

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3075
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #8, !dbg !3075
  %cmp = icmp ule i32 %call, %csi.coerce1, !dbg !3076
  %conv3 = zext i1 %cmp to i8, !dbg !3077
  ret i8 %conv3, !dbg !3078
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !3079 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !3084
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !3084
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !3084
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3084

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !3084
  br label %cond.end, !dbg !3084

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3084
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %csi.coerce1) #8, !dbg !3084
  ret %struct.cgraph_node* %call, !dbg !3085
}

declare dso_local void @dump_cgraph_node(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @csi_next(%struct.cgraph_node_set_iterator* %csi) unnamed_addr #0 !dbg !3086 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !3091, metadata !DIExpression()), !dbg !3092
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !3093
  %0 = load i32, i32* %index, align 8, !dbg !3094
  %inc = add i32 %0, 1, !dbg !3094
  store i32 %inc, i32* %index, align 8, !dbg !3094
  ret void, !dbg !3095
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_cgraph_node_set(%struct.cgraph_node_set_def* %set) local_unnamed_addr #4 !dbg !3096 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !3100, metadata !DIExpression()), !dbg !3101
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3102
  tail call void @dump_cgraph_node_set(%struct._IO_FILE* %0, %struct.cgraph_node_set_def* %set) #8, !dbg !3103
  ret void, !dbg !3104
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @function_and_variable_visibility(i8 zeroext %whole_program) unnamed_addr #4 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata i8 %whole_program, metadata !3109, metadata !DIExpression()), !dbg !3119
  %tobool103 = icmp eq i8 %whole_program, 0, !dbg !3120
  br label %for.cond, !dbg !3123

for.cond:                                         ; preds = %land.end, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next149, %land.end ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3124
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3110, metadata !DIExpression()), !dbg !3119
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3125
  br i1 %tobool, label %for.end, label %for.body, !dbg !3125

for.body:                                         ; preds = %for.cond
  %0 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_with_vis**, !dbg !3126
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !3126
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !3126
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !3126
  %bf.load = load i32, i32* %2, align 8, !dbg !3126
  %bf.clear = and i32 %bf.load, 512, !dbg !3126
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !3126
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !3128

land.lhs.true:                                    ; preds = %for.body
  %3 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3128
  %bf.load3 = load i64, i64* %3, align 8, !dbg !3129
  %bf.cast15 = and i64 %bf.load3, 134217728, !dbg !3129
  %tobool6 = icmp eq i64 %bf.cast15, 0, !dbg !3129
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3130

if.then:                                          ; preds = %land.lhs.true
  %bf.clear11 = and i32 %bf.load, -513, !dbg !3131
  store i32 %bf.clear11, i32* %2, align 8, !dbg !3131
  br label %if.end, !dbg !3132

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 14, !dbg !3133
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3133
  %tobool12 = icmp eq %struct.cgraph_node* %4, null, !dbg !3134
  br i1 %tobool12, label %if.end31, label %land.lhs.true13, !dbg !3135

land.lhs.true13:                                  ; preds = %if.end
  %5 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_common**, !dbg !3136
  %6 = load %struct.tree_decl_common*, %struct.tree_decl_common** %5, align 8, !dbg !3136
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %6, i64 0, i32 2, !dbg !3136
  %7 = bitcast i40* %decl_flag_1 to i64*, !dbg !3136
  %bf.load15 = load i64, i64* %7, align 8, !dbg !3136
  %bf.cast1813 = and i64 %bf.load15, 33554432, !dbg !3136
  %tobool19 = icmp eq i64 %bf.cast1813, 0, !dbg !3136
  br i1 %tobool19, label %if.end31, label %do.body.preheader, !dbg !3137

do.body.preheader:                                ; preds = %land.lhs.true13
  br label %do.body, !dbg !3138

do.body:                                          ; preds = %cond.end.do.body_crit_edge, %do.body.preheader
  %bf.load24 = phi i64 [ %bf.load24.pre, %cond.end.do.body_crit_edge ], [ %bf.load15, %do.body.preheader ], !dbg !3139
  %n.0 = phi %struct.cgraph_node* [ %8, %cond.end.do.body_crit_edge ], [ %node.0, %do.body.preheader ], !dbg !3141
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !3112, metadata !DIExpression()), !dbg !3141
  %bf.cast2714 = and i64 %bf.load24, 33554432, !dbg !3139
  %tobool28 = icmp eq i64 %bf.cast2714, 0, !dbg !3139
  br i1 %tobool28, label %cond.true, label %cond.end, !dbg !3139

cond.true:                                        ; preds = %do.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3139
  br label %cond.end, !dbg !3139

cond.end:                                         ; preds = %do.body, %cond.true
  %same_comdat_group29 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 14, !dbg !3142
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group29, align 8, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !3118, metadata !DIExpression()), !dbg !3141
  store %struct.cgraph_node* null, %struct.cgraph_node** %same_comdat_group29, align 8, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !3112, metadata !DIExpression()), !dbg !3141
  %cmp = icmp eq %struct.cgraph_node* %8, %node.0, !dbg !3144
  br i1 %cmp, label %if.end31.loopexit, label %cond.end.do.body_crit_edge, !dbg !3145, !llvm.loop !3146

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  %.phi.trans.insert = bitcast %struct.cgraph_node* %8 to %struct.tree_decl_common**, !dbg !3148
  %.pre = load %struct.tree_decl_common*, %struct.tree_decl_common** %.phi.trans.insert, align 8, !dbg !3139
  %decl_flag_123.phi.trans.insert = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %.pre, i64 0, i32 2, !dbg !3148
  %.phi.trans.insert16 = bitcast i40* %decl_flag_123.phi.trans.insert to i64*, !dbg !3148
  %bf.load24.pre = load i64, i64* %.phi.trans.insert16, align 8, !dbg !3139
  br label %do.body, !dbg !3145

if.end31.loopexit:                                ; preds = %cond.end
  br label %if.end31, !dbg !3149

if.end31:                                         ; preds = %if.end31.loopexit, %land.lhs.true13, %if.end
  %9 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !3149
  %weak_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %9, i64 0, i32 4, !dbg !3149
  %10 = bitcast i24* %weak_flag to i32*, !dbg !3149
  %bf.load34 = load i32, i32* %10, align 8, !dbg !3149
  %11 = trunc i32 %bf.load34 to i8, !dbg !3149
  %tobool37 = icmp slt i8 %11, 0, !dbg !3149
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3149
  br i1 %tobool37, label %lor.lhs.false, label %land.lhs.true38, !dbg !3149

land.lhs.true38:                                  ; preds = %if.end31
  %bf.clear44 = and i32 %bf.load34, 512, !dbg !3149
  %tobool45 = icmp eq i32 %bf.clear44, 0, !dbg !3149
  br i1 %tobool45, label %cond.end64, label %lor.lhs.false, !dbg !3149

lor.lhs.false:                                    ; preds = %land.lhs.true38, %if.end31
  %bf.load48 = load i64, i64* %12, align 8, !dbg !3149
  %bf.cast5111 = and i64 %bf.load48, 134217728, !dbg !3149
  %tobool52 = icmp eq i64 %bf.cast5111, 0, !dbg !3149
  br i1 %tobool52, label %lor.lhs.false53, label %cond.end64, !dbg !3149

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %decl_flag_156 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %9, i64 0, i32 0, i32 0, i32 2, !dbg !3149
  %13 = bitcast i40* %decl_flag_156 to i64*, !dbg !3149
  %bf.load57 = load i64, i64* %13, align 8, !dbg !3149
  %bf.cast6012 = and i64 %bf.load57, 33554432, !dbg !3149
  %tobool61 = icmp eq i64 %bf.cast6012, 0, !dbg !3149
  br i1 %tobool61, label %cond.true62, label %cond.end64, !dbg !3149

cond.true62:                                      ; preds = %lor.lhs.false53
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 393, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3149
  br label %cond.end64, !dbg !3149

cond.end64:                                       ; preds = %lor.lhs.false53, %lor.lhs.false, %land.lhs.true38, %cond.true62
  %call = tail call fastcc zeroext i8 @cgraph_externally_visible_p(%struct.cgraph_node* nonnull %node.0, i8 zeroext %whole_program) #8, !dbg !3150
  %tobool66 = icmp eq i8 %call, 0, !dbg !3150
  br i1 %tobool66, label %if.else, label %if.then67, !dbg !3152

if.then67:                                        ; preds = %cond.end64
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !3153
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3153
  %tobool68 = icmp eq %struct.cgraph_node* %14, null, !dbg !3153
  br i1 %tobool68, label %cond.end71, label %cond.true69, !dbg !3153

cond.true69:                                      ; preds = %if.then67
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3153
  br label %cond.end71, !dbg !3153

cond.end71:                                       ; preds = %if.then67, %cond.true69
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !3155
  %bf.load73 = load i8, i8* %externally_visible, align 8, !dbg !3156
  %bf.set = or i8 %bf.load73, 2, !dbg !3156
  store i8 %bf.set, i8* %externally_visible, align 8, !dbg !3156
  br label %if.end79, !dbg !3157

if.else:                                          ; preds = %cond.end64
  %externally_visible76 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !3158
  %bf.load77 = load i8, i8* %externally_visible76, align 8, !dbg !3159
  %bf.clear78 = and i8 %bf.load77, -3, !dbg !3159
  store i8 %bf.clear78, i8* %externally_visible76, align 8, !dbg !3159
  br label %if.end79

if.end79:                                         ; preds = %if.else, %cond.end71
  %bf.load82 = phi i8 [ %bf.clear78, %if.else ], [ %bf.set, %cond.end71 ], !dbg !3160
  %externally_visible81 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !3160
  %bf.clear84 = and i8 %bf.load82, 2, !dbg !3160
  %tobool86 = icmp eq i8 %bf.clear84, 0, !dbg !3161
  br i1 %tobool86, label %land.lhs.true87, label %if.end117, !dbg !3162

land.lhs.true87:                                  ; preds = %if.end79
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3163
  %bf.load88 = load i16, i16* %analyzed, align 4, !dbg !3163
  %bf.clear90 = and i16 %bf.load88, 32, !dbg !3163
  %tobool92 = icmp eq i16 %bf.clear90, 0, !dbg !3164
  br i1 %tobool92, label %if.end117, label %land.lhs.true93, !dbg !3165

land.lhs.true93:                                  ; preds = %land.lhs.true87
  %15 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_common**, !dbg !3166
  %16 = load %struct.tree_decl_common*, %struct.tree_decl_common** %15, align 8, !dbg !3166
  %decl_flag_196 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %16, i64 0, i32 2, !dbg !3166
  %17 = bitcast i40* %decl_flag_196 to i64*, !dbg !3166
  %bf.load97 = load i64, i64* %17, align 8, !dbg !3166
  %bf.cast1009 = and i64 %bf.load97, 33554432, !dbg !3166
  %tobool101 = icmp eq i64 %bf.cast1009, 0, !dbg !3166
  %18 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %16, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3167
  %19 = bitcast %struct.tree_decl_common* %16 to %union.tree_node*, !dbg !3167
  br i1 %tobool101, label %if.then102, label %if.end117, !dbg !3167

if.then102:                                       ; preds = %land.lhs.true93
  br i1 %tobool103, label %lor.lhs.false104, label %cond.end114, !dbg !3168

lor.lhs.false104:                                 ; preds = %if.then102
  %bf.load107 = load i64, i64* %18, align 8, !dbg !3168
  %bf.cast11010 = and i64 %bf.load107, 134217728, !dbg !3168
  %tobool111 = icmp eq i64 %bf.cast11010, 0, !dbg !3168
  br i1 %tobool111, label %cond.end114, label %cond.true112, !dbg !3168

cond.true112:                                     ; preds = %lor.lhs.false104
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3168
  %decl116.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !3120
  %.pre19 = load %union.tree_node*, %union.tree_node** %decl116.phi.trans.insert, align 8, !dbg !3169
  br label %cond.end114, !dbg !3168

cond.end114:                                      ; preds = %lor.lhs.false104, %if.then102, %cond.true112
  %20 = phi %union.tree_node* [ %19, %lor.lhs.false104 ], [ %19, %if.then102 ], [ %.pre19, %cond.true112 ], !dbg !3169
  tail call void @cgraph_make_decl_local(%union.tree_node* %20) #6, !dbg !3170
  br label %if.end117, !dbg !3171

if.end117:                                        ; preds = %land.lhs.true93, %land.lhs.true87, %if.end79, %cond.end114
  %call118 = tail call fastcc zeroext i8 @cgraph_only_called_directly_p(%struct.cgraph_node* nonnull %node.0) #8, !dbg !3172
  %tobool120 = icmp eq i8 %call118, 0, !dbg !3172
  br i1 %tobool120, label %land.end, label %land.lhs.true121, !dbg !3173

land.lhs.true121:                                 ; preds = %if.end117
  %analyzed122 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3174
  %bf.load123 = load i16, i16* %analyzed122, align 4, !dbg !3174
  %bf.clear125 = and i16 %bf.load123, 32, !dbg !3174
  %tobool127 = icmp eq i16 %bf.clear125, 0, !dbg !3175
  br i1 %tobool127, label %land.end, label %land.lhs.true128, !dbg !3176

land.lhs.true128:                                 ; preds = %land.lhs.true121
  %21 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_common**, !dbg !3177
  %22 = load %struct.tree_decl_common*, %struct.tree_decl_common** %21, align 8, !dbg !3177
  %decl_flag_1131 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %22, i64 0, i32 2, !dbg !3177
  %23 = bitcast i40* %decl_flag_1131 to i64*, !dbg !3177
  %bf.load132 = load i64, i64* %23, align 8, !dbg !3177
  %bf.cast1358 = and i64 %bf.load132, 33554432, !dbg !3177
  %tobool136 = icmp eq i64 %bf.cast1358, 0, !dbg !3177
  br i1 %tobool136, label %land.rhs, label %land.end, !dbg !3178

land.rhs:                                         ; preds = %land.lhs.true128
  %bf.load139 = load i8, i8* %externally_visible81, align 8, !dbg !3179
  %bf.clear141 = and i8 %bf.load139, 2, !dbg !3179
  %tobool143 = icmp eq i8 %bf.clear141, 0, !dbg !3180
  br label %land.end

land.end:                                         ; preds = %land.lhs.true128, %land.lhs.true121, %if.end117, %land.rhs
  %24 = phi i1 [ false, %land.lhs.true128 ], [ false, %land.lhs.true121 ], [ false, %if.end117 ], [ %tobool143, %land.rhs ], !dbg !3181
  %25 = zext i1 %24 to i8, !dbg !3182
  %bf.load146 = load i8, i8* %externally_visible81, align 8, !dbg !3182
  %bf.clear147 = and i8 %bf.load146, -2, !dbg !3182
  %bf.set148 = or i8 %bf.clear147, %25, !dbg !3182
  store i8 %bf.set148, i8* %externally_visible81, align 8, !dbg !3182
  %next149 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3183
  br label %for.cond, !dbg !3184, !llvm.loop !3185

for.end:                                          ; preds = %for.cond
  br label %for.cond150, !dbg !3187

for.cond150:                                      ; preds = %for.inc242, %for.end
  %vnode.0.in = phi %struct.varpool_node** [ @varpool_nodes, %for.end ], [ %next243, %for.inc242 ]
  %vnode.0 = load %struct.varpool_node*, %struct.varpool_node** %vnode.0.in, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.0, metadata !3111, metadata !DIExpression()), !dbg !3119
  %tobool151 = icmp eq %struct.varpool_node* %vnode.0, null, !dbg !3190
  br i1 %tobool151, label %for.end244, label %for.body152, !dbg !3190

for.body152:                                      ; preds = %for.cond150
  %26 = bitcast %struct.varpool_node* %vnode.0 to %struct.tree_decl_with_vis**, !dbg !3191
  %27 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %26, align 8, !dbg !3191
  %weak_flag155 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %27, i64 0, i32 4, !dbg !3191
  %28 = bitcast i24* %weak_flag155 to i32*, !dbg !3191
  %bf.load156 = load i32, i32* %28, align 8, !dbg !3191
  %29 = trunc i32 %bf.load156 to i8, !dbg !3191
  %tobool159 = icmp slt i8 %29, 0, !dbg !3191
  %30 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %27, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3191
  br i1 %tobool159, label %lor.lhs.false160, label %cond.end179, !dbg !3191

lor.lhs.false160:                                 ; preds = %for.body152
  %bf.load163 = load i64, i64* %30, align 8, !dbg !3191
  %bf.cast1666 = and i64 %bf.load163, 134217728, !dbg !3191
  %tobool167 = icmp eq i64 %bf.cast1666, 0, !dbg !3191
  br i1 %tobool167, label %lor.lhs.false168, label %cond.end179, !dbg !3191

lor.lhs.false168:                                 ; preds = %lor.lhs.false160
  %decl_flag_1171 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %27, i64 0, i32 0, i32 0, i32 2, !dbg !3191
  %31 = bitcast i40* %decl_flag_1171 to i64*, !dbg !3191
  %bf.load172 = load i64, i64* %31, align 8, !dbg !3191
  %bf.cast1757 = and i64 %bf.load172, 33554432, !dbg !3191
  %tobool176 = icmp eq i64 %bf.cast1757, 0, !dbg !3191
  br i1 %tobool176, label %cond.true177, label %cond.end179, !dbg !3191

cond.true177:                                     ; preds = %lor.lhs.false168
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3191
  %.pre20 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %26, align 8, !dbg !3194
  %common_flag.phi.trans.insert = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %.pre20, i64 0, i32 4, !dbg !3196
  %.phi.trans.insert21 = bitcast i24* %common_flag.phi.trans.insert to i32*, !dbg !3196
  %bf.load183.pre = load i32, i32* %.phi.trans.insert21, align 8, !dbg !3194
  %32 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %.pre20, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3191
  br label %cond.end179, !dbg !3191

cond.end179:                                      ; preds = %lor.lhs.false168, %lor.lhs.false160, %for.body152, %cond.true177
  %.pre-phi = phi i32* [ %28, %lor.lhs.false168 ], [ %28, %lor.lhs.false160 ], [ %28, %for.body152 ], [ %.phi.trans.insert21, %cond.true177 ], !dbg !3194
  %33 = phi %struct.tree_decl_with_vis* [ %27, %lor.lhs.false168 ], [ %27, %lor.lhs.false160 ], [ %27, %for.body152 ], [ %.pre20, %cond.true177 ]
  %34 = phi %struct.tree_decl_with_vis* [ %27, %lor.lhs.false168 ], [ %27, %lor.lhs.false160 ], [ %27, %for.body152 ], [ %.pre20, %cond.true177 ]
  %35 = phi %struct.tree_decl_with_vis* [ %27, %lor.lhs.false168 ], [ %27, %lor.lhs.false160 ], [ %27, %for.body152 ], [ %.pre20, %cond.true177 ]
  %36 = phi %struct.tree_decl_with_vis* [ %27, %lor.lhs.false168 ], [ %27, %lor.lhs.false160 ], [ %27, %for.body152 ], [ %.pre20, %cond.true177 ]
  %37 = phi i64* [ %30, %lor.lhs.false168 ], [ %30, %lor.lhs.false160 ], [ %30, %for.body152 ], [ %32, %cond.true177 ]
  %bf.load239 = phi i32 [ %bf.load156, %lor.lhs.false168 ], [ %bf.load156, %lor.lhs.false160 ], [ %bf.load156, %for.body152 ], [ %bf.load183.pre, %cond.true177 ], !dbg !3194
  %38 = phi %struct.tree_decl_with_vis* [ %27, %lor.lhs.false168 ], [ %27, %lor.lhs.false160 ], [ %27, %for.body152 ], [ %.pre20, %cond.true177 ], !dbg !3194
  %bf.clear185 = and i32 %bf.load239, 8, !dbg !3194
  %tobool186 = icmp eq i32 %bf.clear185, 0, !dbg !3194
  br i1 %tobool186, label %for.inc242, label %land.lhs.true187, !dbg !3197

land.lhs.true187:                                 ; preds = %cond.end179
  %bf.load190 = load i64, i64* %37, align 8, !dbg !3198
  %bf.cast1934 = and i64 %bf.load190, 134217728, !dbg !3198
  %tobool194 = icmp eq i64 %bf.cast1934, 0, !dbg !3198
  br i1 %tobool194, label %lor.lhs.false195, label %land.lhs.true187.lor.lhs.false204_crit_edge, !dbg !3199

land.lhs.true187.lor.lhs.false204_crit_edge:      ; preds = %land.lhs.true187
  br label %lor.lhs.false204, !dbg !3199

lor.lhs.false195:                                 ; preds = %land.lhs.true187
  %decl_flag_1198 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %36, i64 0, i32 0, i32 0, i32 2, !dbg !3200
  %39 = bitcast i40* %decl_flag_1198 to i64*, !dbg !3200
  %bf.load199 = load i64, i64* %39, align 8, !dbg !3200
  %bf.cast2025 = and i64 %bf.load199, 33554432, !dbg !3200
  %tobool203 = icmp eq i64 %bf.cast2025, 0, !dbg !3200
  br i1 %tobool203, label %if.then235, label %lor.lhs.false204, !dbg !3201

lor.lhs.false204:                                 ; preds = %land.lhs.true187.lor.lhs.false204_crit_edge, %lor.lhs.false195
  %initial = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %35, i64 0, i32 0, i32 0, i32 5, !dbg !3202
  %40 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !3202
  %tobool207 = icmp eq %union.tree_node* %40, null, !dbg !3202
  br i1 %tobool207, label %lor.lhs.false214, label %land.lhs.true208, !dbg !3203

land.lhs.true208:                                 ; preds = %lor.lhs.false204
  %initial211 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %34, i64 0, i32 0, i32 0, i32 5, !dbg !3204
  %41 = load %union.tree_node*, %union.tree_node** %initial211, align 8, !dbg !3204
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3205
  %cmp212 = icmp eq %union.tree_node* %41, %42, !dbg !3206
  br i1 %cmp212, label %lor.lhs.false214, label %if.then235, !dbg !3207

lor.lhs.false214:                                 ; preds = %land.lhs.true208, %lor.lhs.false204
  %43 = trunc i32 %bf.load239 to i8, !dbg !3208
  %tobool221 = icmp slt i8 %43, 0, !dbg !3208
  br i1 %tobool221, label %if.then235, label %lor.lhs.false222, !dbg !3209

lor.lhs.false222:                                 ; preds = %lor.lhs.false214
  %section_name = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %38, i64 0, i32 2, !dbg !3210
  %44 = load %union.tree_node*, %union.tree_node** %section_name, align 8, !dbg !3210
  %cmp225 = icmp eq %union.tree_node* %44, null, !dbg !3211
  br i1 %cmp225, label %lor.lhs.false227, label %if.then235, !dbg !3212

lor.lhs.false227:                                 ; preds = %lor.lhs.false222
  %type = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3213
  %45 = bitcast %union.tree_node** %type to i64**, !dbg !3213
  %46 = load i64*, i64** %45, align 8, !dbg !3213
  %bf.load230 = load i64, i64* %46, align 8, !dbg !3213
  %cmp233 = icmp ult i64 %bf.load230, 72057594037927936, !dbg !3213
  br i1 %cmp233, label %for.inc242, label %if.then235, !dbg !3214

if.then235:                                       ; preds = %land.lhs.true208, %lor.lhs.false222, %lor.lhs.false195, %lor.lhs.false227, %lor.lhs.false214
  %bf.clear240 = and i32 %bf.load239, -9, !dbg !3215
  store i32 %bf.clear240, i32* %.pre-phi, align 8, !dbg !3215
  br label %for.inc242, !dbg !3216

for.inc242:                                       ; preds = %cond.end179, %lor.lhs.false227, %if.then235
  %next243 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 1, !dbg !3217
  br label %for.cond150, !dbg !3218, !llvm.loop !3219

for.end244:                                       ; preds = %for.cond150
  br i1 %tobool103, label %for.end244.split.us, label %for.end244.for.end244.split_crit_edge, !dbg !3221

for.end244.for.end244.split_crit_edge:            ; preds = %for.end244
  br label %for.cond245, !dbg !3221

for.end244.split.us:                              ; preds = %for.end244
  br label %for.cond245.us, !dbg !3221

for.cond245.us:                                   ; preds = %for.inc342.us, %for.end244.split.us
  %vnode.1.in.us = phi %struct.varpool_node** [ @varpool_nodes_queue, %for.end244.split.us ], [ %next_needed.us, %for.inc342.us ]
  %vnode.1.us = load %struct.varpool_node*, %struct.varpool_node** %vnode.1.in.us, align 8, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.1.us, metadata !3111, metadata !DIExpression()), !dbg !3119
  %tobool246.us = icmp eq %struct.varpool_node* %vnode.1.us, null, !dbg !3224
  br i1 %tobool246.us, label %for.end343.us-lcssa.us, label %for.body247.us, !dbg !3224

for.body247.us:                                   ; preds = %for.cond245.us
  %finalized.us = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1.us, i64 0, i32 5, !dbg !3225
  %bf.load248.us = load i8, i8* %finalized.us, align 4, !dbg !3225
  %bf.clear250.us = and i8 %bf.load248.us, 8, !dbg !3225
  %tobool252.us = icmp eq i8 %bf.clear250.us, 0, !dbg !3229
  br i1 %tobool252.us, label %for.inc342.us, label %if.end254.us, !dbg !3230

if.end254.us:                                     ; preds = %for.body247.us
  %bf.clear256.us = and i8 %bf.load248.us, 1, !dbg !3231
  %tobool258.us = icmp eq i8 %bf.clear256.us, 0, !dbg !3233
  br i1 %tobool258.us, label %if.else303.us, label %land.lhs.true259.us, !dbg !3234

land.lhs.true259.us:                              ; preds = %if.end254.us
  %47 = bitcast %struct.varpool_node* %vnode.1.us to %struct.tree_decl_with_vis**, !dbg !3235
  %48 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %47, align 8, !dbg !3235
  %comdat_flag262.us = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %48, i64 0, i32 4, !dbg !3235
  %49 = bitcast i24* %comdat_flag262.us to i32*, !dbg !3235
  %bf.load263.us = load i32, i32* %49, align 8, !dbg !3235
  %bf.clear265.us = and i32 %bf.load263.us, 512, !dbg !3235
  %tobool266.us = icmp eq i32 %bf.clear265.us, 0, !dbg !3235
  br i1 %tobool266.us, label %lor.lhs.false267.us, label %land.lhs.true275.us, !dbg !3236

lor.lhs.false267.us:                              ; preds = %land.lhs.true259.us
  %50 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3236
  %bf.load270.us = load i64, i64* %50, align 8, !dbg !3237
  %bf.cast2733.us = and i64 %bf.load270.us, 134217728, !dbg !3237
  %tobool274.us = icmp eq i64 %bf.cast2733.us, 0, !dbg !3237
  br i1 %tobool274.us, label %if.else303.us, label %land.lhs.true275.us, !dbg !3238

land.lhs.true275.us:                              ; preds = %lor.lhs.false267.us, %land.lhs.true259.us
  %bf.set302.us = or i8 %bf.load248.us, 32, !dbg !3239
  br label %if.end307.us, !dbg !3240

if.else303.us:                                    ; preds = %lor.lhs.false267.us, %if.end254.us
  %bf.clear306.us = and i8 %bf.load248.us, -33, !dbg !3241
  br label %if.end307.us

if.end307.us:                                     ; preds = %if.else303.us, %land.lhs.true275.us
  %storemerge30 = phi i8 [ %bf.set302.us, %land.lhs.true275.us ], [ %bf.clear306.us, %if.else303.us ], !dbg !3242
  %bf.load309.us = phi i8 [ %bf.set302.us, %land.lhs.true275.us ], [ %bf.clear306.us, %if.else303.us ], !dbg !3243
  store i8 %storemerge30, i8* %finalized.us, align 4, !dbg !3242
  %bf.clear311.us = and i8 %bf.load309.us, 32, !dbg !3243
  %tobool313.us = icmp eq i8 %bf.clear311.us, 0, !dbg !3245
  br i1 %tobool313.us, label %if.then314.us, label %if.end330.us, !dbg !3246

if.then314.us:                                    ; preds = %if.end307.us
  br i1 true, label %lor.lhs.false317.us, label %if.then314.us.cond.end327.us_crit_edge, !dbg !3247

if.then314.us.cond.end327.us_crit_edge:           ; preds = %if.then314.us
  br label %cond.end327.us, !dbg !3247

lor.lhs.false317.us:                              ; preds = %if.then314.us
  %51 = bitcast %struct.varpool_node* %vnode.1.us to i64**, !dbg !3247
  %52 = load i64*, i64** %51, align 8, !dbg !3247
  %bf.load320.us = load i64, i64* %52, align 8, !dbg !3247
  %bf.cast3231.us = and i64 %bf.load320.us, 134217728, !dbg !3247
  %tobool324.us = icmp eq i64 %bf.cast3231.us, 0, !dbg !3247
  br i1 %tobool324.us, label %cond.end327.us, label %cond.true325.us, !dbg !3247

cond.true325.us:                                  ; preds = %lor.lhs.false317.us
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3247
  br label %cond.end327.us, !dbg !3247

cond.end327.us:                                   ; preds = %if.then314.us.cond.end327.us_crit_edge, %cond.true325.us, %lor.lhs.false317.us
  %decl329.us = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1.us, i64 0, i32 0, !dbg !3249
  %53 = load %union.tree_node*, %union.tree_node** %decl329.us, align 8, !dbg !3249
  tail call void @cgraph_make_decl_local(%union.tree_node* %53) #6, !dbg !3250
  br label %if.end330.us, !dbg !3251

if.end330.us:                                     ; preds = %cond.end327.us, %if.end307.us
  %54 = bitcast %struct.varpool_node* %vnode.1.us to i64**, !dbg !3252
  %55 = load i64*, i64** %54, align 8, !dbg !3252
  %bf.load333.us = load i64, i64* %55, align 8, !dbg !3252
  %bf.cast3362.us = and i64 %bf.load333.us, 67108864, !dbg !3252
  %tobool337.us = icmp eq i64 %bf.cast3362.us, 0, !dbg !3252
  br i1 %tobool337.us, label %cond.true338.us, label %for.inc342.us, !dbg !3252

cond.true338.us:                                  ; preds = %if.end330.us
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 462, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3252
  br label %for.inc342.us, !dbg !3252

for.inc342.us:                                    ; preds = %cond.true338.us, %if.end330.us, %for.body247.us
  %next_needed.us = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1.us, i64 0, i32 2, !dbg !3253
  br label %for.cond245.us, !dbg !3254, !llvm.loop !3255

for.end343.us-lcssa.us:                           ; preds = %for.cond245.us
  br label %for.end343, !dbg !3257

for.cond245:                                      ; preds = %for.inc342, %for.end244.for.end244.split_crit_edge
  %vnode.1.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %for.end244.for.end244.split_crit_edge ], [ %next_needed, %for.inc342 ]
  %vnode.1 = load %struct.varpool_node*, %struct.varpool_node** %vnode.1.in, align 8, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.1, metadata !3111, metadata !DIExpression()), !dbg !3119
  %tobool246 = icmp eq %struct.varpool_node* %vnode.1, null, !dbg !3224
  br i1 %tobool246, label %for.end343.us-lcssa, label %for.body247, !dbg !3224

for.body247:                                      ; preds = %for.cond245
  %finalized = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1, i64 0, i32 5, !dbg !3225
  %bf.load248 = load i8, i8* %finalized, align 4, !dbg !3225
  %bf.clear250 = and i8 %bf.load248, 8, !dbg !3225
  %tobool252 = icmp eq i8 %bf.clear250, 0, !dbg !3229
  br i1 %tobool252, label %for.inc342, label %if.end254, !dbg !3230

if.end254:                                        ; preds = %for.body247
  %bf.clear256 = and i8 %bf.load248, 1, !dbg !3231
  %tobool258 = icmp eq i8 %bf.clear256, 0, !dbg !3233
  br i1 %tobool258, label %if.else303, label %land.lhs.true259, !dbg !3234

land.lhs.true259:                                 ; preds = %if.end254
  %56 = bitcast %struct.varpool_node* %vnode.1 to %struct.tree_decl_with_vis**, !dbg !3235
  %57 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %56, align 8, !dbg !3235
  %comdat_flag262 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %57, i64 0, i32 4, !dbg !3235
  %58 = bitcast i24* %comdat_flag262 to i32*, !dbg !3235
  %bf.load263 = load i32, i32* %58, align 8, !dbg !3235
  %bf.clear265 = and i32 %bf.load263, 512, !dbg !3235
  %tobool266 = icmp eq i32 %bf.clear265, 0, !dbg !3235
  br i1 %tobool266, label %lor.lhs.false267, label %land.lhs.true275, !dbg !3236

lor.lhs.false267:                                 ; preds = %land.lhs.true259
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3236
  %bf.load270 = load i64, i64* %59, align 8, !dbg !3237
  %bf.cast2733 = and i64 %bf.load270, 134217728, !dbg !3237
  %tobool274 = icmp eq i64 %bf.cast2733, 0, !dbg !3237
  br i1 %tobool274, label %if.else303, label %land.lhs.true275, !dbg !3238

land.lhs.true275:                                 ; preds = %lor.lhs.false267, %land.lhs.true259
  br i1 %tobool266, label %lor.lhs.false285, label %if.then298, !dbg !3259

lor.lhs.false285:                                 ; preds = %land.lhs.true275
  %60 = trunc i32 %bf.load263 to i8, !dbg !3260
  %tobool292 = icmp slt i8 %60, 0, !dbg !3260
  br i1 %tobool292, label %if.then298, label %lor.lhs.false293, !dbg !3261

lor.lhs.false293:                                 ; preds = %lor.lhs.false285
  %attributes = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %57, i64 0, i32 0, i32 0, i32 6, !dbg !3262
  %61 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3262
  %call296 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %61) #6, !dbg !3263
  %tobool297 = icmp eq %union.tree_node* %call296, null, !dbg !3263
  br i1 %tobool297, label %lor.lhs.false293.if.else303_crit_edge, label %lor.lhs.false293.if.then298_crit_edge, !dbg !3264

lor.lhs.false293.if.else303_crit_edge:            ; preds = %lor.lhs.false293
  %bf.load305.pre = load i8, i8* %finalized, align 4, !dbg !3241
  br label %if.else303, !dbg !3264

lor.lhs.false293.if.then298_crit_edge:            ; preds = %lor.lhs.false293
  %bf.load300.pre = load i8, i8* %finalized, align 4, !dbg !3239
  br label %if.then298, !dbg !3264

if.then298:                                       ; preds = %lor.lhs.false293.if.then298_crit_edge, %land.lhs.true275, %lor.lhs.false285
  %bf.load300 = phi i8 [ %bf.load300.pre, %lor.lhs.false293.if.then298_crit_edge ], [ %bf.load248, %land.lhs.true275 ], [ %bf.load248, %lor.lhs.false285 ], !dbg !3239
  %bf.set302 = or i8 %bf.load300, 32, !dbg !3239
  br label %if.end307, !dbg !3240

if.else303:                                       ; preds = %lor.lhs.false293.if.else303_crit_edge, %lor.lhs.false267, %if.end254
  %bf.load305 = phi i8 [ %bf.load305.pre, %lor.lhs.false293.if.else303_crit_edge ], [ %bf.load248, %lor.lhs.false267 ], [ %bf.load248, %if.end254 ], !dbg !3241
  %bf.clear306 = and i8 %bf.load305, -33, !dbg !3241
  br label %if.end307

if.end307:                                        ; preds = %if.else303, %if.then298
  %storemerge = phi i8 [ %bf.set302, %if.then298 ], [ %bf.clear306, %if.else303 ], !dbg !3242
  %bf.load309 = phi i8 [ %bf.set302, %if.then298 ], [ %bf.clear306, %if.else303 ], !dbg !3243
  store i8 %storemerge, i8* %finalized, align 4, !dbg !3242
  %bf.clear311 = and i8 %bf.load309, 32, !dbg !3243
  %tobool313 = icmp eq i8 %bf.clear311, 0, !dbg !3245
  br i1 %tobool313, label %if.then314, label %if.end330, !dbg !3246

if.then314:                                       ; preds = %if.end307
  br i1 false, label %lor.lhs.false317, label %if.then314.cond.end327_crit_edge, !dbg !3247

if.then314.cond.end327_crit_edge:                 ; preds = %if.then314
  %decl329.phi.trans.insert = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1, i64 0, i32 0, !dbg !3265
  %.pre26 = load %union.tree_node*, %union.tree_node** %decl329.phi.trans.insert, align 8, !dbg !3249
  br label %cond.end327, !dbg !3247

lor.lhs.false317:                                 ; preds = %if.then314
  br i1 undef, label %lor.lhs.false317.cond.end327_crit_edge, label %cond.true325, !dbg !3247

lor.lhs.false317.cond.end327_crit_edge:           ; preds = %lor.lhs.false317
  br label %cond.end327, !dbg !3247

cond.true325:                                     ; preds = %lor.lhs.false317
  br label %cond.end327, !dbg !3247

cond.end327:                                      ; preds = %if.then314.cond.end327_crit_edge, %lor.lhs.false317.cond.end327_crit_edge, %cond.true325
  %62 = phi %union.tree_node* [ %.pre26, %if.then314.cond.end327_crit_edge ], [ undef, %lor.lhs.false317.cond.end327_crit_edge ], [ undef, %cond.true325 ], !dbg !3249
  tail call void @cgraph_make_decl_local(%union.tree_node* %62) #6, !dbg !3250
  br label %if.end330, !dbg !3251

if.end330:                                        ; preds = %if.end307, %cond.end327
  %63 = bitcast %struct.varpool_node* %vnode.1 to i64**, !dbg !3252
  %64 = load i64*, i64** %63, align 8, !dbg !3252
  %bf.load333 = load i64, i64* %64, align 8, !dbg !3252
  %bf.cast3362 = and i64 %bf.load333, 67108864, !dbg !3252
  %tobool337 = icmp eq i64 %bf.cast3362, 0, !dbg !3252
  br i1 %tobool337, label %cond.true338, label %for.inc342, !dbg !3252

cond.true338:                                     ; preds = %if.end330
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 462, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3252
  br label %for.inc342, !dbg !3252

for.inc342:                                       ; preds = %if.end330, %for.body247, %cond.true338
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.1, i64 0, i32 2, !dbg !3253
  br label %for.cond245, !dbg !3254, !llvm.loop !3255

for.end343.us-lcssa:                              ; preds = %for.cond245
  br label %for.end343, !dbg !3257

for.end343:                                       ; preds = %for.end343.us-lcssa.us, %for.end343.us-lcssa
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3257
  %tobool344 = icmp eq %struct._IO_FILE* %65, null, !dbg !3257
  br i1 %tobool344, label %if.end401, label %if.then345, !dbg !3266

if.then345:                                       ; preds = %for.end343
  %call346 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3267
  br label %for.cond347, !dbg !3269

for.cond347:                                      ; preds = %for.inc360, %if.then345
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then345 ], [ %next361, %for.inc360 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !3110, metadata !DIExpression()), !dbg !3119
  %tobool348 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !3272
  br i1 %tobool348, label %for.end362, label %for.body349, !dbg !3272

for.body349:                                      ; preds = %for.cond347
  %local351 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 18, i32 2, !dbg !3273
  %bf.load352 = load i8, i8* %local351, align 8, !dbg !3273
  %bf.clear353 = and i8 %bf.load352, 1, !dbg !3273
  %tobool355 = icmp eq i8 %bf.clear353, 0, !dbg !3276
  br i1 %tobool355, label %for.inc360, label %if.then356, !dbg !3277

if.then356:                                       ; preds = %for.body349
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3278
  %call357 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.1) #6, !dbg !3279
  %call358 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %call357) #6, !dbg !3280
  br label %for.inc360, !dbg !3280

for.inc360:                                       ; preds = %for.body349, %if.then356
  %next361 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !3281
  br label %for.cond347, !dbg !3282, !llvm.loop !3283

for.end362:                                       ; preds = %for.cond347
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3285
  %call363 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3286
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3287
  %call364 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3288
  br label %for.cond365, !dbg !3289

for.cond365:                                      ; preds = %for.inc379, %for.end362
  %node.2.in = phi %struct.cgraph_node** [ @cgraph_nodes, %for.end362 ], [ %next380, %for.inc379 ]
  %node.2 = load %struct.cgraph_node*, %struct.cgraph_node** %node.2.in, align 8, !dbg !3291
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !3110, metadata !DIExpression()), !dbg !3119
  %tobool366 = icmp eq %struct.cgraph_node* %node.2, null, !dbg !3292
  br i1 %tobool366, label %for.end381, label %for.body367, !dbg !3292

for.body367:                                      ; preds = %for.cond365
  %externally_visible369 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 18, i32 2, !dbg !3293
  %bf.load370 = load i8, i8* %externally_visible369, align 8, !dbg !3293
  %bf.clear372 = and i8 %bf.load370, 2, !dbg !3293
  %tobool374 = icmp eq i8 %bf.clear372, 0, !dbg !3296
  br i1 %tobool374, label %for.inc379, label %if.then375, !dbg !3297

if.then375:                                       ; preds = %for.body367
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3298
  %call376 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.2) #6, !dbg !3299
  %call377 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %call376) #6, !dbg !3300
  br label %for.inc379, !dbg !3300

for.inc379:                                       ; preds = %for.body367, %if.then375
  %next380 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !3301
  br label %for.cond365, !dbg !3302, !llvm.loop !3303

for.end381:                                       ; preds = %for.cond365
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3305
  %call382 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3306
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3307
  %call383 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3308
  br label %for.cond384, !dbg !3309

for.cond384:                                      ; preds = %for.inc397, %for.end381
  %vnode.2.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %for.end381 ], [ %next_needed398, %for.inc397 ]
  %vnode.2 = load %struct.varpool_node*, %struct.varpool_node** %vnode.2.in, align 8, !dbg !3311
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.2, metadata !3111, metadata !DIExpression()), !dbg !3119
  %tobool385 = icmp eq %struct.varpool_node* %vnode.2, null, !dbg !3312
  br i1 %tobool385, label %for.end399, label %for.body386, !dbg !3312

for.body386:                                      ; preds = %for.cond384
  %externally_visible387 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.2, i64 0, i32 5, !dbg !3313
  %bf.load388 = load i8, i8* %externally_visible387, align 4, !dbg !3313
  %bf.clear390 = and i8 %bf.load388, 32, !dbg !3313
  %tobool392 = icmp eq i8 %bf.clear390, 0, !dbg !3316
  br i1 %tobool392, label %for.inc397, label %if.then393, !dbg !3317

if.then393:                                       ; preds = %for.body386
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3318
  %call394 = tail call i8* @varpool_node_name(%struct.varpool_node* nonnull %vnode.2) #6, !dbg !3319
  %call395 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %call394) #6, !dbg !3320
  br label %for.inc397, !dbg !3320

for.inc397:                                       ; preds = %for.body386, %if.then393
  %next_needed398 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.2, i64 0, i32 2, !dbg !3321
  br label %for.cond384, !dbg !3322, !llvm.loop !3323

for.end399:                                       ; preds = %for.cond384
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3325
  %call400 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3326
  br label %if.end401, !dbg !3327

if.end401:                                        ; preds = %for.end343, %for.end399
  store i8 1, i8* @cgraph_function_flags_ready, align 1, !dbg !3328
  ret i32 undef, !dbg !3329
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cgraph_externally_visible_p(%struct.cgraph_node* %node, i8 zeroext %whole_program) unnamed_addr #4 !dbg !3330 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3334, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8 %whole_program, metadata !3335, metadata !DIExpression()), !dbg !3341
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3342
  %bf.load = load i8, i8* %finalized, align 8, !dbg !3342
  %bf.clear = and i8 %bf.load, 4, !dbg !3342
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !3344
  br i1 %tobool, label %return, label %if.end, !dbg !3345

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_decl_with_vis**, !dbg !3346
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %0, align 8, !dbg !3346
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 4, !dbg !3346
  %2 = bitcast i24* %comdat_flag to i32*, !dbg !3346
  %bf.load1 = load i32, i32* %2, align 8, !dbg !3346
  %bf.clear3 = and i32 %bf.load1, 512, !dbg !3346
  %tobool4 = icmp eq i32 %bf.clear3, 0, !dbg !3346
  br i1 %tobool4, label %land.lhs.true, label %if.end18, !dbg !3348

land.lhs.true:                                    ; preds = %if.end
  %3 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3348
  %bf.load6 = load i64, i64* %3, align 8, !dbg !3349
  %bf.cast91 = and i64 %bf.load6, 134217728, !dbg !3349
  %tobool10 = icmp eq i64 %bf.cast91, 0, !dbg !3349
  br i1 %tobool10, label %return, label %lor.lhs.false, !dbg !3350

lor.lhs.false:                                    ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 2, !dbg !3351
  %4 = bitcast i40* %decl_flag_1 to i64*, !dbg !3351
  %bf.load12 = load i64, i64* %4, align 8, !dbg !3351
  %bf.cast152 = and i64 %bf.load12, 33554432, !dbg !3351
  %tobool16 = icmp eq i64 %bf.cast152, 0, !dbg !3351
  br i1 %tobool16, label %if.end18, label %return, !dbg !3352

if.end18:                                         ; preds = %lor.lhs.false, %if.end
  %tobool19 = icmp eq i8 %whole_program, 0, !dbg !3353
  br i1 %tobool19, label %return, label %if.end21, !dbg !3355

if.end21:                                         ; preds = %if.end18
  %preserve_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 2, !dbg !3356
  %5 = bitcast i40* %preserve_flag to i64*, !dbg !3356
  %bf.load24 = load i64, i64* %5, align 8, !dbg !3356
  %bf.cast273 = and i64 %bf.load24, 8192, !dbg !3356
  %tobool28 = icmp eq i64 %bf.cast273, 0, !dbg !3356
  br i1 %tobool28, label %if.end30, label %return, !dbg !3358

if.end30:                                         ; preds = %if.end21
  br i1 %tobool4, label %if.end72, label %if.then38, !dbg !3359

if.then38:                                        ; preds = %if.end30
  %address_taken = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3360
  %bf.load39 = load i16, i16* %address_taken, align 4, !dbg !3360
  %bf.clear41 = and i16 %bf.load39, 2, !dbg !3360
  %tobool43 = icmp eq i16 %bf.clear41, 0, !dbg !3362
  br i1 %tobool43, label %lor.lhs.false44, label %return, !dbg !3363

lor.lhs.false44:                                  ; preds = %if.then38
  %bf.clear47 = and i16 %bf.load39, 32, !dbg !3364
  %tobool49 = icmp eq i16 %bf.clear47, 0, !dbg !3365
  br i1 %tobool49, label %return, label %if.end51, !dbg !3366

if.end51:                                         ; preds = %lor.lhs.false44
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 14, !dbg !3367
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3367
  %tobool52 = icmp eq %struct.cgraph_node* %6, null, !dbg !3368
  br i1 %tobool52, label %if.end72, label %if.then53, !dbg !3369

if.then53:                                        ; preds = %if.end51
  br label %for.cond, !dbg !3370

for.cond:                                         ; preds = %for.inc, %if.then53
  %next.0 = phi %struct.cgraph_node* [ %6, %if.then53 ], [ %next.0.pre, %for.inc ], !dbg !3372
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !3336, metadata !DIExpression()), !dbg !3373
  %cmp = icmp eq %struct.cgraph_node* %next.0, %node, !dbg !3374
  br i1 %cmp, label %cleanup, label %for.body, !dbg !3376

for.body:                                         ; preds = %for.cond
  %address_taken55 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 27, !dbg !3377
  %bf.load56 = load i16, i16* %address_taken55, align 4, !dbg !3377
  %bf.clear58 = and i16 %bf.load56, 2, !dbg !3377
  %tobool60 = icmp eq i16 %bf.clear58, 0, !dbg !3379
  br i1 %tobool60, label %lor.lhs.false61, label %cleanup, !dbg !3380

lor.lhs.false61:                                  ; preds = %for.body
  %bf.clear65 = and i16 %bf.load56, 32, !dbg !3381
  %tobool67 = icmp eq i16 %bf.clear65, 0, !dbg !3382
  br i1 %tobool67, label %cleanup, label %for.inc, !dbg !3383

for.inc:                                          ; preds = %lor.lhs.false61
  %next.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 14, !dbg !3372
  %next.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next.0.in.phi.trans.insert, align 8, !dbg !3372
  br label %for.cond, !dbg !3384, !llvm.loop !3385

cleanup:                                          ; preds = %lor.lhs.false61, %for.body, %for.cond
  %cleanup.dest.slot.0 = phi i1 [ false, %lor.lhs.false61 ], [ false, %for.body ], [ true, %for.cond ]
  br i1 %cleanup.dest.slot.0, label %if.end72, label %return

if.end72:                                         ; preds = %if.end51, %if.end30, %cleanup
  %name = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3387
  %7 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3387
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 56), align 16, !dbg !3387
  %cmp74 = icmp eq %union.tree_node* %7, %8, !dbg !3387
  br i1 %cmp74, label %return, label %if.end76, !dbg !3389

if.end76:                                         ; preds = %if.end72
  %attributes = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 0, i32 0, i32 6, !dbg !3390
  %9 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3390
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %9) #6, !dbg !3392
  %tobool79 = icmp ne %union.tree_node* %call, null, !dbg !3392
  %. = zext i1 %tobool79 to i8, !dbg !3341
  br label %return, !dbg !3341

return:                                           ; preds = %lor.lhs.false44, %if.then38, %if.end21, %if.end18, %lor.lhs.false, %land.lhs.true, %entry, %if.end76, %if.end72, %cleanup
  %retval.1 = phi i8 [ 1, %cleanup ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 1, %if.end18 ], [ 1, %if.end21 ], [ 1, %lor.lhs.false44 ], [ 1, %if.then38 ], [ 1, %if.end72 ], [ %., %if.end76 ], !dbg !3341
  ret i8 %retval.1, !dbg !3393
}

declare dso_local void @cgraph_make_decl_local(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i8* @varpool_node_name(%struct.varpool_node*) local_unnamed_addr #1

declare dso_local void @cgraph_mark_needed_node(%struct.cgraph_node*) local_unnamed_addr #1

declare dso_local void @varpool_mark_needed_node(%struct.varpool_node*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_gc_reserve(%struct.VEC_cgraph_node_ptr_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3394 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_gc** %vec_, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 1, metadata !3399, metadata !DIExpression()), !dbg !3401
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %vec_, align 8, !dbg !3402
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !3402
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3402

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !3402
  br label %cond.end, !dbg !3402

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3402
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_space(%struct.VEC_cgraph_node_ptr_base* %cond, i32 1) #8, !dbg !3402
  %tobool1 = icmp eq i32 %call, 0, !dbg !3402
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3400, metadata !DIExpression()), !dbg !3401
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3402

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_cgraph_node_ptr_gc** %vec_ to i8**, !dbg !3403
  %2 = load i8*, i8** %1, align 8, !dbg !3403
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !3403
  store i8* %call3, i8** %1, align 8, !dbg !3403
  br label %if.end, !dbg !3403

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3402
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node** @VEC_cgraph_node_ptr_base_quick_push(%struct.VEC_cgraph_node_ptr_base* %vec_, %struct.cgraph_node* %obj_) unnamed_addr #0 !dbg !3405 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !3409, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %obj_, metadata !3410, metadata !DIExpression()), !dbg !3412
  %num1 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !3413
  %0 = load i32, i32* %num1, align 8, !dbg !3413
  %inc = add i32 %0, 1, !dbg !3413
  store i32 %inc, i32* %num1, align 8, !dbg !3413
  %idxprom = zext i32 %0 to i64, !dbg !3413
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %arrayidx, metadata !3411, metadata !DIExpression()), !dbg !3412
  store %struct.cgraph_node* %obj_, %struct.cgraph_node** %arrayidx, align 8, !dbg !3413
  ret %struct.cgraph_node** %arrayidx, !dbg !3413
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_space(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3414 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !3418, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 1, metadata !3419, metadata !DIExpression()), !dbg !3420
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !3421
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3421

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 1, !dbg !3421
  %0 = load i32, i32* %alloc, align 4, !dbg !3421
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !3421
  %1 = load i32, i32* %num, align 8, !dbg !3421
  %cmp1 = icmp ne i32 %0, %1, !dbg !3421
  %phitmp = zext i1 %cmp1 to i32, !dbg !3421
  br label %cond.end, !dbg !3421

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3421

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3421
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1823, !1824, !1825}
!llvm.ident = !{!1826}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ipa_function_and_variable_visibility", scope: !2, file: !3, line: 496, type: !1820, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !455, globals: !1817, nameTableKind: None)
!3 = !DIFile(filename: "ipa.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249, !272, !279}
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
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !250, line: 309, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!252 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!257 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!258 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!259 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!260 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!261 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!262 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!263 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!264 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!265 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!266 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!267 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!268 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!269 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!270 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!271 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !273, line: 104, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!274 = !{!275, !276, !277, !278}
!275 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!276 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!277 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!278 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !280, line: 74, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!282 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!283 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!284 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!285 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!286 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!288 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!289 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!290 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!291 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!292 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!293 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!294 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!295 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!296 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!297 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!298 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!299 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!300 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!301 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!302 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!303 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!304 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!305 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!306 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!307 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!308 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!309 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!310 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!311 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!312 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!313 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!314 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!315 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!316 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!317 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!318 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!319 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!320 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!321 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!322 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!323 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!324 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!325 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!326 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!327 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!328 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!329 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!330 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!331 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!332 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!333 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!334 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!335 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!336 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!337 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!338 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!339 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!340 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!341 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!342 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!343 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!344 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!345 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!346 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!347 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!348 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!349 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!350 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!351 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!352 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!353 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!354 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!355 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!356 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!357 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!358 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!359 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!360 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!361 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!362 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!363 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!364 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!365 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!366 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!367 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!368 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!369 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!370 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!371 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!372 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!373 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!374 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!375 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!376 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!377 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!378 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!379 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!380 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!381 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!382 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!383 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!384 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!385 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!386 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!387 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!454 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!455 = !{!456, !457, !458, !459, !462, !463, !465, !1528, !466, !1614, !1808, !1809, !7, !1814, !1619}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!458 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !250, line: 181, size: 2496, elements: !468)
!468 = !{!469, !1527, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1667, !1689, !1699, !1703, !1785, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !467, file: !250, line: 182, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !471, line: 56, baseType: !472)
!471 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !474)
!474 = !{!475, !508, !514, !527, !534, !541, !546, !555, !561, !574, !586, !624, !632, !660, !668, !669, !674, !683, !689, !694, !698, !702, !1167, !1216, !1222, !1228, !1235, !1246, !1271, !1288, !1300, !1322, !1337, !1509}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !473, file: !6, line: 3372, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !476, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !476, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !476, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !476, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !476, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !476, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !476, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !476, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !476, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !476, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !476, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !476, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !476, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !476, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !476, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !476, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !476, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !476, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !476, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !476, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !476, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !476, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !476, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !476, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !476, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !476, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !476, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !476, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !476, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !476, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !473, file: !6, line: 3373, baseType: !509, size: 192)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !510)
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !509, file: !6, line: 403, baseType: !476, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !509, file: !6, line: 404, baseType: !470, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !6, line: 405, baseType: !470, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !473, file: !6, line: 3374, baseType: !515, size: 320)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !515, file: !6, line: 1385, baseType: !509, size: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !515, file: !6, line: 1386, baseType: !519, size: 128, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !520, line: 58, baseType: !521)
!520 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !520, line: 54, size: 128, elements: !522)
!522 = !{!523, !525}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !521, file: !520, line: 56, baseType: !524, size: 64)
!524 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !521, file: !520, line: 57, baseType: !526, size: 64, offset: 64)
!526 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !473, file: !6, line: 3375, baseType: !528, size: 256)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !528, file: !6, line: 1398, baseType: !509, size: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !528, file: !6, line: 1399, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !473, file: !6, line: 3376, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !535, file: !6, line: 1409, baseType: !509, size: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !535, file: !6, line: 1410, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !473, file: !6, line: 3377, baseType: !542, size: 256)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !542, file: !6, line: 1438, baseType: !509, size: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !542, file: !6, line: 1439, baseType: !470, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !473, file: !6, line: 3378, baseType: !547, size: 256)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !548)
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !547, file: !6, line: 1419, baseType: !509, size: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !547, file: !6, line: 1420, baseType: !458, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !547, file: !6, line: 1421, baseType: !552, size: 8, offset: 224)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 8, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 1)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !473, file: !6, line: 3379, baseType: !556, size: 320)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !556, file: !6, line: 1429, baseType: !509, size: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !556, file: !6, line: 1430, baseType: !470, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !556, file: !6, line: 1431, baseType: !470, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !473, file: !6, line: 3380, baseType: !562, size: 320)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !562, file: !6, line: 1461, baseType: !509, size: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !562, file: !6, line: 1462, baseType: !566, size: 128, offset: 192)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !567, line: 31, size: 128, elements: !568)
!567 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!568 = !{!569, !572, !573}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !566, file: !567, line: 32, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !566, file: !567, line: 33, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !566, file: !567, line: 34, baseType: !7, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !473, file: !6, line: 3381, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !576)
!576 = !{!577, !578, !583, !584, !585}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !575, file: !6, line: 2508, baseType: !509, size: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !575, file: !6, line: 2509, baseType: !579, size: 32, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !580, line: 58, baseType: !581)
!580 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !582, line: 44, baseType: !7)
!582 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !575, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !6, line: 2511, baseType: !470, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !575, file: !6, line: 2512, baseType: !470, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !473, file: !6, line: 3382, baseType: !587, size: 896)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !587, file: !6, line: 2653, baseType: !575, size: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !6, line: 2654, baseType: !470, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !587, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !587, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !587, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !587, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !587, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !587, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !587, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !587, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !587, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !587, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !587, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !587, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !587, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !587, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !587, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !587, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !587, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !587, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !587, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !587, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !587, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !587, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !587, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !587, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !587, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !587, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !587, file: !6, line: 2705, baseType: !470, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !587, file: !6, line: 2706, baseType: !470, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !587, file: !6, line: 2707, baseType: !470, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !587, file: !6, line: 2708, baseType: !470, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !587, file: !6, line: 2711, baseType: !622, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !473, file: !6, line: 3383, baseType: !625, size: 960)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !625, file: !6, line: 2757, baseType: !587, size: 896)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !625, file: !6, line: 2758, baseType: !629, size: 64, offset: 896)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !471, line: 50, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !471, line: 49, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !473, file: !6, line: 3384, baseType: !633, size: 1472)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !634)
!634 = !{!635, !656, !657, !658, !659}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !633, file: !6, line: 3115, baseType: !636, size: 1216)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !636, file: !6, line: 2985, baseType: !625, size: 960)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !636, file: !6, line: 2986, baseType: !470, size: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !636, file: !6, line: 2987, baseType: !470, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !636, file: !6, line: 2988, baseType: !470, size: 64, offset: 1088)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !636, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !636, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !636, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !636, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !636, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !636, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !636, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !636, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !636, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !636, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !636, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !636, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !636, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !636, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !633, file: !6, line: 3117, baseType: !470, size: 64, offset: 1216)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !633, file: !6, line: 3119, baseType: !470, size: 64, offset: 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !633, file: !6, line: 3121, baseType: !470, size: 64, offset: 1344)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !633, file: !6, line: 3123, baseType: !470, size: 64, offset: 1408)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !473, file: !6, line: 3385, baseType: !661, size: 1088)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !662)
!662 = !{!663, !664, !665}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !661, file: !6, line: 2875, baseType: !625, size: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !661, file: !6, line: 2876, baseType: !629, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !661, file: !6, line: 2877, baseType: !666, size: 64, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !473, file: !6, line: 3386, baseType: !636, size: 1216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !473, file: !6, line: 3387, baseType: !670, size: 1280)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !670, file: !6, line: 3094, baseType: !636, size: 1216)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !670, file: !6, line: 3095, baseType: !666, size: 64, offset: 1216)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !473, file: !6, line: 3388, baseType: !675, size: 1216)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !675, file: !6, line: 2825, baseType: !587, size: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !675, file: !6, line: 2827, baseType: !470, size: 64, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !675, file: !6, line: 2828, baseType: !470, size: 64, offset: 960)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !675, file: !6, line: 2829, baseType: !470, size: 64, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !675, file: !6, line: 2830, baseType: !470, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !675, file: !6, line: 2831, baseType: !470, size: 64, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !473, file: !6, line: 3389, baseType: !684, size: 1024)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !685)
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !6, line: 2851, baseType: !625, size: 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !684, file: !6, line: 2852, baseType: !458, size: 32, offset: 960)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !684, file: !6, line: 2853, baseType: !458, size: 32, offset: 992)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !473, file: !6, line: 3390, baseType: !690, size: 1024)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !690, file: !6, line: 2858, baseType: !625, size: 960)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !690, file: !6, line: 2859, baseType: !666, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !473, file: !6, line: 3391, baseType: !695, size: 960)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !695, file: !6, line: 2863, baseType: !625, size: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !473, file: !6, line: 3392, baseType: !699, size: 1472)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !699, file: !6, line: 3305, baseType: !633, size: 1472)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !473, file: !6, line: 3393, baseType: !703, size: 1792)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !704)
!704 = !{!705, !706, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !703, file: !6, line: 3249, baseType: !633, size: 1472)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !703, file: !6, line: 3251, baseType: !707, size: 64, offset: 1472)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !709, line: 463, size: 1152, elements: !710)
!709 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!710 = !{!711, !714, !1032, !1033, !1036, !1039, !1089, !1090, !1091, !1092, !1093, !1119, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !708, file: !709, line: 464, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !709, line: 464, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !708, file: !709, line: 467, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !717)
!717 = !{!718, !1007, !1008, !1021, !1022, !1023, !1024, !1025, !1026, !1028, !1030, !1031}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !716, file: !202, line: 377, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !471, line: 111, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !722)
!722 = !{!723, !970, !971, !972, !975, !981, !982, !983, !1001, !1002, !1003, !1004, !1005, !1006}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !721, file: !202, line: 219, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !726, file: !202, line: 151, baseType: !729, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !730, file: !202, line: 150, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !730, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !730, file: !202, line: 150, baseType: !735, size: 64, offset: 64)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 64, elements: !553)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !471, line: 108, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !739)
!739 = !{!740, !741, !742, !962, !963, !964, !965, !966, !967, !968}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !738, file: !202, line: 124, baseType: !720, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !738, file: !202, line: 125, baseType: !720, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !738, file: !202, line: 131, baseType: !743, size: 64, offset: 128)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !744)
!744 = !{!745, !961}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !743, file: !202, line: 129, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !471, line: 66, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !749, line: 143, size: 192, elements: !750)
!749 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!750 = !{!751, !959, !960}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !748, file: !749, line: 145, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !471, line: 69, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !749, line: 136, size: 192, elements: !755)
!755 = !{!756, !957, !958}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !754, file: !749, line: 137, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !471, line: 58, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !749, line: 737, size: 768, elements: !760)
!760 = !{!761, !778, !812, !818, !823, !828, !835, !841, !847, !852, !866, !871, !877, !882, !892, !897, !915, !922, !929, !935, !940, !946, !952}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !759, file: !749, line: 738, baseType: !762, size: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !749, line: 271, size: 256, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !762, file: !749, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !762, file: !749, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !762, file: !749, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !762, file: !749, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !762, file: !749, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !762, file: !749, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !762, file: !749, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !762, file: !749, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !762, file: !749, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !762, file: !749, line: 312, baseType: !7, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !762, file: !749, line: 316, baseType: !579, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !762, file: !749, line: 319, baseType: !7, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !762, file: !749, line: 323, baseType: !720, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !762, file: !749, line: 327, baseType: !470, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !759, file: !749, line: 739, baseType: !779, size: 448)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !749, line: 350, size: 448, elements: !780)
!780 = !{!781, !810}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !779, file: !749, line: 353, baseType: !782, size: 384)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !749, line: 333, size: 384, elements: !783)
!783 = !{!784, !785, !793}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !782, file: !749, line: 336, baseType: !762, size: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !782, file: !749, line: 343, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !788, line: 37, size: 128, elements: !789)
!788 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !788, line: 39, baseType: !786, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !787, file: !788, line: 40, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !782, file: !749, line: 344, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !788, line: 45, size: 320, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !795, file: !788, line: 47, baseType: !794, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !795, file: !788, line: 48, baseType: !799, size: 256, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !800)
!800 = !{!801, !803, !804, !809}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !799, file: !6, line: 1884, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !6, line: 1885, baseType: !802, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !799, file: !6, line: 1891, baseType: !805, size: 64, offset: 128)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !6, line: 1891, size: 64, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !805, file: !6, line: 1891, baseType: !757, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !805, file: !6, line: 1891, baseType: !470, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !799, file: !6, line: 1892, baseType: !792, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !779, file: !749, line: 359, baseType: !811, size: 64, offset: 384)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 64, elements: !553)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !759, file: !749, line: 740, baseType: !813, size: 512)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !749, line: 365, size: 512, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !813, file: !749, line: 368, baseType: !782, size: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !813, file: !749, line: 373, baseType: !470, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !813, file: !749, line: 374, baseType: !470, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !759, file: !749, line: 741, baseType: !819, size: 576)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !749, line: 380, size: 576, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !819, file: !749, line: 383, baseType: !813, size: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !819, file: !749, line: 389, baseType: !811, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !759, file: !749, line: 742, baseType: !824, size: 320)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !749, line: 395, size: 320, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !824, file: !749, line: 397, baseType: !762, size: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !824, file: !749, line: 400, baseType: !746, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !759, file: !749, line: 743, baseType: !829, size: 448)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !749, line: 406, size: 448, elements: !830)
!830 = !{!831, !832, !833, !834}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !829, file: !749, line: 408, baseType: !762, size: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !829, file: !749, line: 412, baseType: !470, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !829, file: !749, line: 420, baseType: !470, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !829, file: !749, line: 423, baseType: !746, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !759, file: !749, line: 744, baseType: !836, size: 384)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !749, line: 429, size: 384, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !836, file: !749, line: 431, baseType: !762, size: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !836, file: !749, line: 434, baseType: !470, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !836, file: !749, line: 437, baseType: !746, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !759, file: !749, line: 745, baseType: !842, size: 384)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !749, line: 443, size: 384, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !842, file: !749, line: 445, baseType: !762, size: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !842, file: !749, line: 449, baseType: !470, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !842, file: !749, line: 453, baseType: !746, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !759, file: !749, line: 746, baseType: !848, size: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !749, line: 459, size: 320, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !848, file: !749, line: 461, baseType: !762, size: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !848, file: !749, line: 464, baseType: !470, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !759, file: !749, line: 747, baseType: !853, size: 768)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !749, line: 469, size: 768, elements: !854)
!854 = !{!855, !856, !857, !858, !859}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !853, file: !749, line: 471, baseType: !762, size: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !853, file: !749, line: 474, baseType: !7, size: 32, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !853, file: !749, line: 475, baseType: !7, size: 32, offset: 288)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !853, file: !749, line: 478, baseType: !470, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !853, file: !749, line: 481, baseType: !860, size: 384, offset: 384)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 384, elements: !553)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !862)
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !861, file: !6, line: 1920, baseType: !799, size: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !861, file: !6, line: 1921, baseType: !470, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !861, file: !6, line: 1922, baseType: !579, size: 32, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !759, file: !749, line: 748, baseType: !867, size: 320)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !749, line: 487, size: 320, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !867, file: !749, line: 490, baseType: !762, size: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !867, file: !749, line: 494, baseType: !458, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !759, file: !749, line: 749, baseType: !872, size: 384)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !749, line: 500, size: 384, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !872, file: !749, line: 502, baseType: !762, size: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !872, file: !749, line: 506, baseType: !746, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !872, file: !749, line: 510, baseType: !746, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !759, file: !749, line: 750, baseType: !878, size: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !749, line: 529, size: 320, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !878, file: !749, line: 531, baseType: !762, size: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !878, file: !749, line: 540, baseType: !746, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !759, file: !749, line: 751, baseType: !883, size: 704)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !749, line: 546, size: 704, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !883, file: !749, line: 549, baseType: !813, size: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !883, file: !749, line: 553, baseType: !463, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !883, file: !749, line: 557, baseType: !457, size: 8, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !883, file: !749, line: 558, baseType: !457, size: 8, offset: 584)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !883, file: !749, line: 559, baseType: !457, size: 8, offset: 592)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !883, file: !749, line: 560, baseType: !457, size: 8, offset: 600)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !883, file: !749, line: 566, baseType: !811, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !759, file: !749, line: 752, baseType: !893, size: 384)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !749, line: 571, size: 384, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !893, file: !749, line: 573, baseType: !824, size: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !749, line: 577, baseType: !470, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !759, file: !749, line: 753, baseType: !898, size: 576)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !749, line: 600, size: 576, elements: !899)
!899 = !{!900, !901, !902, !905, !914}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !898, file: !749, line: 602, baseType: !824, size: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !898, file: !749, line: 605, baseType: !470, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !898, file: !749, line: 609, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !904, line: 46, baseType: !524)
!904 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!905 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !898, file: !749, line: 612, baseType: !906, size: 64, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !749, line: 581, size: 320, elements: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !907, file: !749, line: 583, baseType: !5, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !907, file: !749, line: 586, baseType: !470, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !907, file: !749, line: 589, baseType: !470, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !907, file: !749, line: 592, baseType: !470, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !907, file: !749, line: 595, baseType: !470, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !898, file: !749, line: 616, baseType: !746, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !759, file: !749, line: 754, baseType: !916, size: 512)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !749, line: 622, size: 512, elements: !917)
!917 = !{!918, !919, !920, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !916, file: !749, line: 624, baseType: !824, size: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !916, file: !749, line: 628, baseType: !470, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !916, file: !749, line: 632, baseType: !470, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !916, file: !749, line: 636, baseType: !470, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !759, file: !749, line: 755, baseType: !923, size: 704)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !749, line: 642, size: 704, elements: !924)
!924 = !{!925, !926, !927, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !923, file: !749, line: 644, baseType: !916, size: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !923, file: !749, line: 648, baseType: !470, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !923, file: !749, line: 652, baseType: !470, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !923, file: !749, line: 653, baseType: !470, size: 64, offset: 640)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !759, file: !749, line: 756, baseType: !930, size: 448)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !749, line: 663, size: 448, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !930, file: !749, line: 665, baseType: !824, size: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !930, file: !749, line: 668, baseType: !470, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !930, file: !749, line: 673, baseType: !470, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !759, file: !749, line: 757, baseType: !936, size: 384)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !749, line: 694, size: 384, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !936, file: !749, line: 696, baseType: !824, size: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !936, file: !749, line: 699, baseType: !470, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !759, file: !749, line: 758, baseType: !941, size: 384)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !749, line: 681, size: 384, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !941, file: !749, line: 683, baseType: !762, size: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !941, file: !749, line: 686, baseType: !470, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !941, file: !749, line: 689, baseType: !470, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !759, file: !749, line: 759, baseType: !947, size: 384)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !749, line: 707, size: 384, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !947, file: !749, line: 709, baseType: !762, size: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !947, file: !749, line: 712, baseType: !470, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !947, file: !749, line: 712, baseType: !470, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !759, file: !749, line: 760, baseType: !953, size: 320)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !749, line: 718, size: 320, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !953, file: !749, line: 720, baseType: !762, size: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !953, file: !749, line: 723, baseType: !470, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !754, file: !749, line: 138, baseType: !753, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !749, line: 139, baseType: !753, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !748, file: !749, line: 146, baseType: !752, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !748, file: !749, line: 152, baseType: !746, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !743, file: !202, line: 130, baseType: !629, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !738, file: !202, line: 134, baseType: !462, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !738, file: !202, line: 137, baseType: !470, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !738, file: !202, line: 138, baseType: !579, size: 32, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !738, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !202, line: 144, baseType: !458, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !738, file: !202, line: 145, baseType: !458, size: 32, offset: 416)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !738, file: !202, line: 146, baseType: !969, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !526)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !721, file: !202, line: 220, baseType: !724, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !721, file: !202, line: 223, baseType: !462, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !721, file: !202, line: 226, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !721, file: !202, line: 229, baseType: !976, size: 128, offset: 256)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 128, elements: !979)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!979 = !{!980}
!980 = !DISubrange(count: 2)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !721, file: !202, line: 232, baseType: !720, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !721, file: !202, line: 233, baseType: !720, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !721, file: !202, line: 238, baseType: !984, size: 64, offset: 512)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !985)
!985 = !{!986, !992}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !984, file: !202, line: 236, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !988, file: !202, line: 275, baseType: !746, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !988, file: !202, line: 278, baseType: !746, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !984, file: !202, line: 237, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !995)
!995 = !{!996, !997, !998, !999, !1000}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !994, file: !202, line: 261, baseType: !629, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !994, file: !202, line: 262, baseType: !629, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !994, file: !202, line: 266, baseType: !629, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !994, file: !202, line: 267, baseType: !629, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !994, file: !202, line: 270, baseType: !458, size: 32, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !202, line: 241, baseType: !969, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !721, file: !202, line: 244, baseType: !458, size: 32, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !721, file: !202, line: 247, baseType: !458, size: 32, offset: 672)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !721, file: !202, line: 250, baseType: !458, size: 32, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !721, file: !202, line: 253, baseType: !458, size: 32, offset: 736)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !202, line: 256, baseType: !458, size: 32, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !716, file: !202, line: 378, baseType: !719, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !716, file: !202, line: 381, baseType: !1009, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1011, file: !202, line: 282, baseType: !1014, size: 128)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1015, file: !202, line: 281, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1015, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1015, file: !202, line: 281, baseType: !1020, size: 64, offset: 64)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 64, elements: !553)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !716, file: !202, line: 384, baseType: !458, size: 32, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !716, file: !202, line: 387, baseType: !458, size: 32, offset: 224)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !716, file: !202, line: 390, baseType: !458, size: 32, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !716, file: !202, line: 394, baseType: !1009, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !716, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !716, file: !202, line: 399, baseType: !1027, size: 64, offset: 416)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !979)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !716, file: !202, line: 402, baseType: !1029, size: 64, offset: 480)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !979)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !716, file: !202, line: 406, baseType: !458, size: 32, offset: 544)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !716, file: !202, line: 409, baseType: !458, size: 32, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !708, file: !709, line: 470, baseType: !747, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !708, file: !709, line: 473, baseType: !1034, size: 64, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !709, line: 166, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !708, file: !709, line: 476, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !709, line: 476, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !708, file: !709, line: 479, baseType: !1040, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1041, line: 144, baseType: !1042)
!1041 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1041, line: 100, size: 896, elements: !1044)
!1044 = !{!1045, !1053, !1058, !1063, !1065, !1066, !1067, !1068, !1069, !1070, !1075, !1077, !1078, !1083, !1088}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1043, file: !1041, line: 102, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1041, line: 52, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1041, line: 47, baseType: !7)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1043, file: !1041, line: 105, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1041, line: 59, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!458, !1051, !1051}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1043, file: !1041, line: 108, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1041, line: 63, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !462}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1043, file: !1041, line: 111, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1043, file: !1041, line: 114, baseType: !903, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1043, file: !1041, line: 117, baseType: !903, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1043, file: !1041, line: 120, baseType: !903, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1043, file: !1041, line: 124, baseType: !7, size: 32, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1043, file: !1041, line: 128, baseType: !7, size: 32, offset: 480)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1043, file: !1041, line: 131, baseType: !1071, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1041, line: 75, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!462, !903, !903}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1043, file: !1041, line: 132, baseType: !1076, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1041, line: 78, baseType: !1060)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1043, file: !1041, line: 135, baseType: !462, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1043, file: !1041, line: 136, baseType: !1079, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1041, line: 82, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!462, !462, !903, !903}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1043, file: !1041, line: 137, baseType: !1084, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1041, line: 83, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !462, !462}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1043, file: !1041, line: 141, baseType: !7, size: 32, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !708, file: !709, line: 484, baseType: !470, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !708, file: !709, line: 488, baseType: !470, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !708, file: !709, line: 493, baseType: !470, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !708, file: !709, line: 496, baseType: !470, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !708, file: !709, line: 501, baseType: !1094, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1096)
!1096 = !{!1097, !1100, !1101, !1102, !1103, !1107, !1108, !1113, !1114, !1115, !1116, !1117, !1118}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1095, file: !213, line: 2356, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1095, file: !213, line: 2357, baseType: !463, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1095, file: !213, line: 2358, baseType: !458, size: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1095, file: !213, line: 2359, baseType: !458, size: 32, offset: 160)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1095, file: !213, line: 2360, baseType: !1104, size: 128, offset: 192)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 128, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 4)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1095, file: !213, line: 2364, baseType: !458, size: 32, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1095, file: !213, line: 2367, baseType: !1109, size: 128, offset: 384)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1109, file: !213, line: 2351, baseType: !629, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1109, file: !213, line: 2352, baseType: !526, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1095, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1095, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1095, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1095, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1095, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1095, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !708, file: !709, line: 504, baseType: !1120, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !709, line: 504, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !708, file: !709, line: 507, baseType: !1040, size: 64, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !708, file: !709, line: 510, baseType: !458, size: 32, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !708, file: !709, line: 513, baseType: !458, size: 32, offset: 864)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !708, file: !709, line: 516, baseType: !579, size: 32, offset: 896)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !708, file: !709, line: 519, baseType: !579, size: 32, offset: 928)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !708, file: !709, line: 522, baseType: !7, size: 32, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !708, file: !709, line: 523, baseType: !7, size: 32, offset: 992)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !708, file: !709, line: 528, baseType: !463, size: 64, offset: 1024)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !708, file: !709, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !708, file: !709, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !708, file: !709, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !708, file: !709, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !708, file: !709, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !708, file: !709, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !708, file: !709, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !708, file: !709, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !708, file: !709, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !708, file: !709, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !708, file: !709, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !708, file: !709, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !708, file: !709, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !708, file: !709, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !708, file: !709, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !708, file: !709, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !703, file: !6, line: 3254, baseType: !470, size: 64, offset: 1536)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !703, file: !6, line: 3257, baseType: !470, size: 64, offset: 1600)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !703, file: !6, line: 3258, baseType: !470, size: 64, offset: 1664)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !703, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !703, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !703, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !703, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !703, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !703, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !703, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !703, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !703, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !703, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !703, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !703, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !703, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !703, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !703, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !703, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !703, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !703, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !6, line: 3394, baseType: !1168, size: 1344)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1195, !1196, !1197, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1168, file: !6, line: 2280, baseType: !509, size: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1168, file: !6, line: 2281, baseType: !470, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1168, file: !6, line: 2282, baseType: !470, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1168, file: !6, line: 2283, baseType: !470, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1168, file: !6, line: 2284, baseType: !470, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1168, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1168, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1168, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1168, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1168, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1168, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1168, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1168, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1168, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1168, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1168, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1168, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1168, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1168, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1168, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1168, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1168, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1168, file: !6, line: 2306, baseType: !1193, size: 32, offset: 544)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1194, line: 31, baseType: !458)
!1194 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1168, file: !6, line: 2307, baseType: !470, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1168, file: !6, line: 2308, baseType: !470, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1168, file: !6, line: 2314, baseType: !1198, size: 64, offset: 704)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1199)
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1198, file: !6, line: 2310, baseType: !458, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1198, file: !6, line: 2311, baseType: !463, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1198, file: !6, line: 2312, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1168, file: !6, line: 2315, baseType: !470, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1168, file: !6, line: 2316, baseType: !470, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1168, file: !6, line: 2317, baseType: !470, size: 64, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1168, file: !6, line: 2318, baseType: !470, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1168, file: !6, line: 2319, baseType: !470, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1168, file: !6, line: 2320, baseType: !470, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1168, file: !6, line: 2321, baseType: !470, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1168, file: !6, line: 2322, baseType: !470, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1168, file: !6, line: 2324, baseType: !1214, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !473, file: !6, line: 3395, baseType: !1217, size: 320)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1218)
!1218 = !{!1219, !1220, !1221}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1217, file: !6, line: 1470, baseType: !509, size: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1217, file: !6, line: 1471, baseType: !470, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1217, file: !6, line: 1472, baseType: !470, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !473, file: !6, line: 3396, baseType: !1223, size: 320)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1223, file: !6, line: 1483, baseType: !509, size: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1223, file: !6, line: 1484, baseType: !458, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1223, file: !6, line: 1485, baseType: !811, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !473, file: !6, line: 3397, baseType: !1229, size: 384)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1229, file: !6, line: 1830, baseType: !509, size: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1229, file: !6, line: 1831, baseType: !579, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1229, file: !6, line: 1832, baseType: !470, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1229, file: !6, line: 1835, baseType: !811, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !473, file: !6, line: 3398, baseType: !1236, size: 704)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1245}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1236, file: !6, line: 1899, baseType: !509, size: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1236, file: !6, line: 1902, baseType: !470, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1236, file: !6, line: 1905, baseType: !757, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1236, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1236, file: !6, line: 1911, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1236, file: !6, line: 1914, baseType: !799, size: 256, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !473, file: !6, line: 3399, baseType: !1247, size: 704)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1266, !1267, !1268, !1269, !1270}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1247, file: !6, line: 2009, baseType: !509, size: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1247, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1247, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1247, file: !6, line: 2014, baseType: !579, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1247, file: !6, line: 2016, baseType: !470, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1247, file: !6, line: 2017, baseType: !1255, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1257, file: !6, line: 183, baseType: !1260, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !1262)
!1262 = !{!1263, !1264, !1265}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1261, file: !6, line: 182, baseType: !7, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1261, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1261, file: !6, line: 182, baseType: !811, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1247, file: !6, line: 2019, baseType: !470, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1247, file: !6, line: 2020, baseType: !470, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1247, file: !6, line: 2021, baseType: !470, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1247, file: !6, line: 2022, baseType: !470, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1247, file: !6, line: 2023, baseType: !470, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !473, file: !6, line: 3400, baseType: !1272, size: 832)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1272, file: !6, line: 2431, baseType: !509, size: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1272, file: !6, line: 2433, baseType: !470, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1272, file: !6, line: 2434, baseType: !470, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1272, file: !6, line: 2435, baseType: !470, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1272, file: !6, line: 2436, baseType: !470, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1272, file: !6, line: 2437, baseType: !1255, size: 64, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1272, file: !6, line: 2438, baseType: !470, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1272, file: !6, line: 2440, baseType: !470, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1272, file: !6, line: 2441, baseType: !470, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1272, file: !6, line: 2443, baseType: !1284, size: 128, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1285, file: !6, line: 182, baseType: !1260, size: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !473, file: !6, line: 3401, baseType: !1289, size: 320)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1290)
!1290 = !{!1291, !1292, !1299}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1289, file: !6, line: 3329, baseType: !509, size: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1289, file: !6, line: 3330, baseType: !1293, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1294, file: !6, line: 3322, baseType: !1293, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1294, file: !6, line: 3323, baseType: !1293, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1294, file: !6, line: 3324, baseType: !470, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1289, file: !6, line: 3331, baseType: !1293, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !473, file: !6, line: 3402, baseType: !1301, size: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1301, file: !6, line: 1541, baseType: !509, size: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1301, file: !6, line: 1542, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1307, file: !6, line: 1538, baseType: !1310, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1311, file: !6, line: 1537, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1311, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1311, file: !6, line: 1537, baseType: !1316, size: 128, offset: 64)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 128, elements: !553)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !6, line: 1533, baseType: !470, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1318, file: !6, line: 1534, baseType: !470, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !473, file: !6, line: 3403, baseType: !1323, size: 512)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1334, !1335, !1336}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1323, file: !6, line: 1939, baseType: !509, size: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1323, file: !6, line: 1940, baseType: !579, size: 32, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1323, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1323, file: !6, line: 1946, baseType: !1329, size: 32, offset: 256)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1329, file: !6, line: 1943, baseType: !235, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1329, file: !6, line: 1944, baseType: !242, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1329, file: !6, line: 1945, baseType: !5, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1323, file: !6, line: 1950, baseType: !746, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1323, file: !6, line: 1951, baseType: !746, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1323, file: !6, line: 1953, baseType: !811, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !473, file: !6, line: 3404, baseType: !1338, size: 1664)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1338, file: !6, line: 3338, baseType: !509, size: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1338, file: !6, line: 3341, baseType: !1342, size: 1472, offset: 192)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1343, line: 410, size: 1472, elements: !1344)
!1343 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1342, file: !1343, line: 412, baseType: !458, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1342, file: !1343, line: 413, baseType: !458, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1342, file: !1343, line: 414, baseType: !458, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1342, file: !1343, line: 415, baseType: !458, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1342, file: !1343, line: 416, baseType: !458, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1342, file: !1343, line: 417, baseType: !458, size: 32, offset: 160)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1342, file: !1343, line: 418, baseType: !457, size: 8, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1342, file: !1343, line: 419, baseType: !457, size: 8, offset: 200)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1342, file: !1343, line: 420, baseType: !1354, size: 8, offset: 208)
!1354 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1342, file: !1343, line: 421, baseType: !1354, size: 8, offset: 216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1342, file: !1343, line: 422, baseType: !1354, size: 8, offset: 224)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1342, file: !1343, line: 423, baseType: !1354, size: 8, offset: 232)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1342, file: !1343, line: 424, baseType: !1354, size: 8, offset: 240)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1342, file: !1343, line: 425, baseType: !1354, size: 8, offset: 248)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1342, file: !1343, line: 426, baseType: !1354, size: 8, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1342, file: !1343, line: 427, baseType: !1354, size: 8, offset: 264)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1342, file: !1343, line: 428, baseType: !1354, size: 8, offset: 272)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1342, file: !1343, line: 429, baseType: !1354, size: 8, offset: 280)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1342, file: !1343, line: 430, baseType: !1354, size: 8, offset: 288)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1342, file: !1343, line: 431, baseType: !1354, size: 8, offset: 296)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1342, file: !1343, line: 432, baseType: !1354, size: 8, offset: 304)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1342, file: !1343, line: 433, baseType: !1354, size: 8, offset: 312)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1342, file: !1343, line: 434, baseType: !1354, size: 8, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1342, file: !1343, line: 435, baseType: !1354, size: 8, offset: 328)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1342, file: !1343, line: 436, baseType: !1354, size: 8, offset: 336)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1342, file: !1343, line: 437, baseType: !1354, size: 8, offset: 344)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1342, file: !1343, line: 438, baseType: !1354, size: 8, offset: 352)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1342, file: !1343, line: 439, baseType: !1354, size: 8, offset: 360)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1342, file: !1343, line: 440, baseType: !1354, size: 8, offset: 368)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1342, file: !1343, line: 441, baseType: !1354, size: 8, offset: 376)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1342, file: !1343, line: 442, baseType: !1354, size: 8, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1342, file: !1343, line: 443, baseType: !1354, size: 8, offset: 392)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1342, file: !1343, line: 444, baseType: !1354, size: 8, offset: 400)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1342, file: !1343, line: 445, baseType: !1354, size: 8, offset: 408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1342, file: !1343, line: 446, baseType: !1354, size: 8, offset: 416)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1342, file: !1343, line: 447, baseType: !1354, size: 8, offset: 424)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1342, file: !1343, line: 448, baseType: !1354, size: 8, offset: 432)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1342, file: !1343, line: 449, baseType: !1354, size: 8, offset: 440)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1342, file: !1343, line: 450, baseType: !1354, size: 8, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1342, file: !1343, line: 451, baseType: !1354, size: 8, offset: 456)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1342, file: !1343, line: 452, baseType: !1354, size: 8, offset: 464)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1342, file: !1343, line: 453, baseType: !1354, size: 8, offset: 472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1342, file: !1343, line: 454, baseType: !1354, size: 8, offset: 480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1342, file: !1343, line: 455, baseType: !1354, size: 8, offset: 488)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1342, file: !1343, line: 456, baseType: !1354, size: 8, offset: 496)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1342, file: !1343, line: 457, baseType: !1354, size: 8, offset: 504)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1342, file: !1343, line: 458, baseType: !1354, size: 8, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1342, file: !1343, line: 459, baseType: !1354, size: 8, offset: 520)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1342, file: !1343, line: 460, baseType: !1354, size: 8, offset: 528)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1342, file: !1343, line: 461, baseType: !1354, size: 8, offset: 536)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1342, file: !1343, line: 462, baseType: !1354, size: 8, offset: 544)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1342, file: !1343, line: 463, baseType: !1354, size: 8, offset: 552)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1342, file: !1343, line: 464, baseType: !1354, size: 8, offset: 560)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1342, file: !1343, line: 465, baseType: !1354, size: 8, offset: 568)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1342, file: !1343, line: 466, baseType: !1354, size: 8, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1342, file: !1343, line: 467, baseType: !1354, size: 8, offset: 584)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1342, file: !1343, line: 468, baseType: !1354, size: 8, offset: 592)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1342, file: !1343, line: 469, baseType: !1354, size: 8, offset: 600)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1342, file: !1343, line: 470, baseType: !1354, size: 8, offset: 608)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1342, file: !1343, line: 471, baseType: !1354, size: 8, offset: 616)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1342, file: !1343, line: 472, baseType: !1354, size: 8, offset: 624)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1342, file: !1343, line: 473, baseType: !1354, size: 8, offset: 632)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1342, file: !1343, line: 474, baseType: !1354, size: 8, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1342, file: !1343, line: 475, baseType: !1354, size: 8, offset: 648)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1342, file: !1343, line: 476, baseType: !1354, size: 8, offset: 656)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1342, file: !1343, line: 477, baseType: !1354, size: 8, offset: 664)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1342, file: !1343, line: 478, baseType: !1354, size: 8, offset: 672)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1342, file: !1343, line: 479, baseType: !1354, size: 8, offset: 680)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1342, file: !1343, line: 480, baseType: !1354, size: 8, offset: 688)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1342, file: !1343, line: 481, baseType: !1354, size: 8, offset: 696)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1342, file: !1343, line: 482, baseType: !1354, size: 8, offset: 704)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1342, file: !1343, line: 483, baseType: !1354, size: 8, offset: 712)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1342, file: !1343, line: 484, baseType: !1354, size: 8, offset: 720)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1342, file: !1343, line: 485, baseType: !1354, size: 8, offset: 728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1342, file: !1343, line: 486, baseType: !1354, size: 8, offset: 736)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1342, file: !1343, line: 487, baseType: !1354, size: 8, offset: 744)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1342, file: !1343, line: 488, baseType: !1354, size: 8, offset: 752)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1342, file: !1343, line: 489, baseType: !1354, size: 8, offset: 760)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1342, file: !1343, line: 490, baseType: !1354, size: 8, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1342, file: !1343, line: 491, baseType: !1354, size: 8, offset: 776)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1342, file: !1343, line: 492, baseType: !1354, size: 8, offset: 784)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1342, file: !1343, line: 493, baseType: !1354, size: 8, offset: 792)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1342, file: !1343, line: 494, baseType: !1354, size: 8, offset: 800)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1342, file: !1343, line: 495, baseType: !1354, size: 8, offset: 808)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1342, file: !1343, line: 496, baseType: !1354, size: 8, offset: 816)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1342, file: !1343, line: 497, baseType: !1354, size: 8, offset: 824)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1342, file: !1343, line: 498, baseType: !1354, size: 8, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1342, file: !1343, line: 499, baseType: !1354, size: 8, offset: 840)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1342, file: !1343, line: 500, baseType: !1354, size: 8, offset: 848)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1342, file: !1343, line: 501, baseType: !1354, size: 8, offset: 856)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1342, file: !1343, line: 502, baseType: !1354, size: 8, offset: 864)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1342, file: !1343, line: 503, baseType: !1354, size: 8, offset: 872)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1342, file: !1343, line: 504, baseType: !1354, size: 8, offset: 880)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1342, file: !1343, line: 505, baseType: !1354, size: 8, offset: 888)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1342, file: !1343, line: 506, baseType: !1354, size: 8, offset: 896)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1342, file: !1343, line: 507, baseType: !1354, size: 8, offset: 904)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1342, file: !1343, line: 508, baseType: !1354, size: 8, offset: 912)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1342, file: !1343, line: 509, baseType: !1354, size: 8, offset: 920)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1342, file: !1343, line: 510, baseType: !1354, size: 8, offset: 928)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1342, file: !1343, line: 511, baseType: !1354, size: 8, offset: 936)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1342, file: !1343, line: 512, baseType: !1354, size: 8, offset: 944)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1342, file: !1343, line: 513, baseType: !1354, size: 8, offset: 952)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1342, file: !1343, line: 514, baseType: !1354, size: 8, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1342, file: !1343, line: 515, baseType: !1354, size: 8, offset: 968)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1342, file: !1343, line: 516, baseType: !1354, size: 8, offset: 976)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1342, file: !1343, line: 517, baseType: !1354, size: 8, offset: 984)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1342, file: !1343, line: 518, baseType: !1354, size: 8, offset: 992)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1342, file: !1343, line: 519, baseType: !1354, size: 8, offset: 1000)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1342, file: !1343, line: 520, baseType: !1354, size: 8, offset: 1008)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1342, file: !1343, line: 521, baseType: !1354, size: 8, offset: 1016)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1342, file: !1343, line: 522, baseType: !1354, size: 8, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1342, file: !1343, line: 523, baseType: !1354, size: 8, offset: 1032)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1342, file: !1343, line: 524, baseType: !1354, size: 8, offset: 1040)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1342, file: !1343, line: 525, baseType: !1354, size: 8, offset: 1048)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1342, file: !1343, line: 526, baseType: !1354, size: 8, offset: 1056)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1342, file: !1343, line: 527, baseType: !1354, size: 8, offset: 1064)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1342, file: !1343, line: 528, baseType: !1354, size: 8, offset: 1072)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1342, file: !1343, line: 529, baseType: !1354, size: 8, offset: 1080)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1342, file: !1343, line: 530, baseType: !1354, size: 8, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1342, file: !1343, line: 531, baseType: !1354, size: 8, offset: 1096)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1342, file: !1343, line: 532, baseType: !1354, size: 8, offset: 1104)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1342, file: !1343, line: 533, baseType: !1354, size: 8, offset: 1112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1342, file: !1343, line: 534, baseType: !1354, size: 8, offset: 1120)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1342, file: !1343, line: 535, baseType: !1354, size: 8, offset: 1128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1342, file: !1343, line: 536, baseType: !1354, size: 8, offset: 1136)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1342, file: !1343, line: 537, baseType: !1354, size: 8, offset: 1144)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1342, file: !1343, line: 538, baseType: !1354, size: 8, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1342, file: !1343, line: 539, baseType: !1354, size: 8, offset: 1160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1342, file: !1343, line: 540, baseType: !1354, size: 8, offset: 1168)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1342, file: !1343, line: 541, baseType: !1354, size: 8, offset: 1176)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1342, file: !1343, line: 542, baseType: !1354, size: 8, offset: 1184)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1342, file: !1343, line: 543, baseType: !1354, size: 8, offset: 1192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1342, file: !1343, line: 544, baseType: !1354, size: 8, offset: 1200)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1342, file: !1343, line: 545, baseType: !1354, size: 8, offset: 1208)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1342, file: !1343, line: 546, baseType: !1354, size: 8, offset: 1216)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1342, file: !1343, line: 547, baseType: !1354, size: 8, offset: 1224)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1342, file: !1343, line: 548, baseType: !1354, size: 8, offset: 1232)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1342, file: !1343, line: 549, baseType: !1354, size: 8, offset: 1240)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1342, file: !1343, line: 550, baseType: !1354, size: 8, offset: 1248)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1342, file: !1343, line: 551, baseType: !1354, size: 8, offset: 1256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1342, file: !1343, line: 552, baseType: !1354, size: 8, offset: 1264)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1342, file: !1343, line: 553, baseType: !1354, size: 8, offset: 1272)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1342, file: !1343, line: 554, baseType: !1354, size: 8, offset: 1280)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1342, file: !1343, line: 555, baseType: !1354, size: 8, offset: 1288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1342, file: !1343, line: 556, baseType: !1354, size: 8, offset: 1296)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1342, file: !1343, line: 557, baseType: !1354, size: 8, offset: 1304)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1342, file: !1343, line: 558, baseType: !1354, size: 8, offset: 1312)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1342, file: !1343, line: 559, baseType: !1354, size: 8, offset: 1320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1342, file: !1343, line: 560, baseType: !1354, size: 8, offset: 1328)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1342, file: !1343, line: 561, baseType: !1354, size: 8, offset: 1336)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1342, file: !1343, line: 562, baseType: !1354, size: 8, offset: 1344)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1342, file: !1343, line: 563, baseType: !1354, size: 8, offset: 1352)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1342, file: !1343, line: 564, baseType: !1354, size: 8, offset: 1360)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1342, file: !1343, line: 565, baseType: !1354, size: 8, offset: 1368)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1342, file: !1343, line: 566, baseType: !1354, size: 8, offset: 1376)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1342, file: !1343, line: 567, baseType: !1354, size: 8, offset: 1384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1342, file: !1343, line: 568, baseType: !1354, size: 8, offset: 1392)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1342, file: !1343, line: 569, baseType: !1354, size: 8, offset: 1400)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1342, file: !1343, line: 570, baseType: !1354, size: 8, offset: 1408)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1342, file: !1343, line: 571, baseType: !1354, size: 8, offset: 1416)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1342, file: !1343, line: 572, baseType: !1354, size: 8, offset: 1424)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1342, file: !1343, line: 573, baseType: !1354, size: 8, offset: 1432)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1342, file: !1343, line: 574, baseType: !1354, size: 8, offset: 1440)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !473, file: !6, line: 3405, baseType: !1510, size: 384)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !6, line: 3353, baseType: !509, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1510, file: !6, line: 3356, baseType: !1514, size: 192, offset: 192)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1343, line: 578, size: 192, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1514, file: !1343, line: 580, baseType: !458, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1514, file: !1343, line: 581, baseType: !458, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1514, file: !1343, line: 582, baseType: !458, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1514, file: !1343, line: 583, baseType: !458, size: 32, offset: 96)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1514, file: !1343, line: 584, baseType: !457, size: 8, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1514, file: !1343, line: 585, baseType: !457, size: 8, offset: 136)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1514, file: !1343, line: 586, baseType: !457, size: 8, offset: 144)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1514, file: !1343, line: 587, baseType: !457, size: 8, offset: 152)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1514, file: !1343, line: 588, baseType: !457, size: 8, offset: 160)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1514, file: !1343, line: 589, baseType: !457, size: 8, offset: 168)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1514, file: !1343, line: 590, baseType: !457, size: 8, offset: 176)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !467, file: !250, line: 183, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !250, line: 314, size: 768, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1542, !1543, !1544, !1545, !1547, !1548, !1549}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1529, file: !250, line: 316, baseType: !969, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1529, file: !250, line: 317, baseType: !466, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1529, file: !250, line: 318, baseType: !466, size: 64, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1529, file: !250, line: 319, baseType: !1528, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1529, file: !250, line: 320, baseType: !1528, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1529, file: !250, line: 321, baseType: !1528, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1529, file: !250, line: 322, baseType: !1528, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1529, file: !250, line: 323, baseType: !757, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1529, file: !250, line: 324, baseType: !462, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1529, file: !250, line: 327, baseType: !1541, size: 32, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !250, line: 312, baseType: !249)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1529, file: !250, line: 330, baseType: !7, size: 32, offset: 608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1529, file: !250, line: 334, baseType: !458, size: 32, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1529, file: !250, line: 336, baseType: !458, size: 32, offset: 672)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1529, file: !250, line: 338, baseType: !1546, size: 16, offset: 704)
!1546 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1529, file: !250, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1529, file: !250, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1529, file: !250, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !467, file: !250, line: 184, baseType: !1528, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !250, line: 185, baseType: !466, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !467, file: !250, line: 186, baseType: !466, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !467, file: !250, line: 188, baseType: !466, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !467, file: !250, line: 190, baseType: !466, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !467, file: !250, line: 192, baseType: !466, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !467, file: !250, line: 194, baseType: !466, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !467, file: !250, line: 196, baseType: !466, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !467, file: !250, line: 197, baseType: !466, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !467, file: !250, line: 198, baseType: !466, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !467, file: !250, line: 199, baseType: !466, size: 64, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !467, file: !250, line: 202, baseType: !466, size: 64, offset: 832)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !467, file: !250, line: 204, baseType: !466, size: 64, offset: 896)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !467, file: !250, line: 207, baseType: !1040, size: 64, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !467, file: !250, line: 209, baseType: !462, size: 64, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !467, file: !250, line: 214, baseType: !1566, size: 64, offset: 1088)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !709, line: 177, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !709, line: 177, size: 128, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1568, file: !709, line: 177, baseType: !1571, size: 128)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !709, line: 176, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !709, line: 176, size: 128, elements: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1572, file: !709, line: 176, baseType: !7, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1572, file: !709, line: 176, baseType: !7, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1572, file: !709, line: 176, baseType: !1577, size: 64, offset: 64)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 64, elements: !553)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !709, line: 174, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !273, line: 173, size: 1152, elements: !1581)
!1581 = !{!1582, !1606, !1610, !1633, !1634, !1638, !1643, !1644, !1648}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1580, file: !273, line: 175, baseType: !1583, size: 640)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !273, line: 114, size: 640, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1591, !1595, !1597, !1598, !1599, !1601, !1602, !1603, !1604, !1605}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1583, file: !273, line: 117, baseType: !272, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !273, line: 121, baseType: !463, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1583, file: !273, line: 125, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!457}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1583, file: !273, line: 130, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!7}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1583, file: !273, line: 133, baseType: !1596, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1583, file: !273, line: 136, baseType: !1596, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1583, file: !273, line: 139, baseType: !458, size: 32, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1583, file: !273, line: 143, baseType: !1600, size: 32, offset: 416)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !280, line: 80, baseType: !279)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1583, file: !273, line: 146, baseType: !7, size: 32, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1583, file: !273, line: 147, baseType: !7, size: 32, offset: 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1583, file: !273, line: 148, baseType: !7, size: 32, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1583, file: !273, line: 151, baseType: !7, size: 32, offset: 544)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1583, file: !273, line: 152, baseType: !7, size: 32, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !1580, file: !273, line: 179, baseType: !1607, size: 64, offset: 640)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !1580, file: !273, line: 182, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !250, line: 276, size: 192, elements: !1616)
!1616 = !{!1617, !1618, !1632}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !1615, file: !250, line: 278, baseType: !1040, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1615, file: !250, line: 279, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !250, line: 272, size: 128, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1621, file: !250, line: 272, baseType: !1624, size: 128)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !250, line: 270, size: 128, elements: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1625, file: !250, line: 270, baseType: !7, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1625, file: !250, line: 270, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1625, file: !250, line: 270, baseType: !1630, size: 64, offset: 64)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1631, size: 64, elements: !553)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !250, line: 268, baseType: !466)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1615, file: !250, line: 280, baseType: !462, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !1580, file: !273, line: 187, baseType: !1607, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !1580, file: !273, line: 188, baseType: !1635, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !466}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !1580, file: !273, line: 191, baseType: !1639, size: 64, offset: 896)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !466, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !1580, file: !273, line: 195, baseType: !7, size: 32, offset: 960)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !1580, file: !273, line: 196, baseType: !1645, size: 64, offset: 1024)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!7, !466}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !1580, file: !273, line: 197, baseType: !1649, size: 64, offset: 1088)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !250, line: 358, size: 320, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1653, file: !250, line: 359, baseType: !470, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1653, file: !250, line: 361, baseType: !1652, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1653, file: !250, line: 363, baseType: !1652, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !1653, file: !250, line: 366, baseType: !1652, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1653, file: !250, line: 368, baseType: !458, size: 32, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1653, file: !250, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !1653, file: !250, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1653, file: !250, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1653, file: !250, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1653, file: !250, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1653, file: !250, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1653, file: !250, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !467, file: !250, line: 216, baseType: !1668, size: 320, offset: 1152)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !250, line: 88, size: 320, elements: !1669)
!1669 = !{!1670, !1673, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !1668, file: !250, line: 90, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !250, line: 51, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !1668, file: !250, line: 92, baseType: !1674, size: 192, offset: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !250, line: 57, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !1674, file: !250, line: 60, baseType: !526, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !1674, file: !250, line: 63, baseType: !458, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !1674, file: !250, line: 65, baseType: !458, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !1674, file: !250, line: 67, baseType: !458, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !1674, file: !250, line: 69, baseType: !458, size: 32, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1668, file: !250, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !1668, file: !250, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !1668, file: !250, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !1668, file: !250, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1668, file: !250, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !1668, file: !250, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !1668, file: !250, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !1668, file: !250, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !467, file: !250, line: 217, baseType: !1690, size: 320, offset: 1472)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !250, line: 126, size: 320, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !1690, file: !250, line: 128, baseType: !526, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !1690, file: !250, line: 130, baseType: !526, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !1690, file: !250, line: 134, baseType: !466, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1690, file: !250, line: 137, baseType: !458, size: 32, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1690, file: !250, line: 138, baseType: !458, size: 32, offset: 224)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !1690, file: !250, line: 141, baseType: !458, size: 32, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !1690, file: !250, line: 144, baseType: !457, size: 8, offset: 288)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !467, file: !250, line: 218, baseType: !1700, size: 32, offset: 1792)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !250, line: 150, size: 32, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !1700, file: !250, line: 151, baseType: !7, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !467, file: !250, line: 219, baseType: !1704, size: 192, offset: 1856)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !250, line: 171, size: 192, elements: !1705)
!1705 = !{!1706, !1727, !1784}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !1704, file: !250, line: 173, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !250, line: 169, size: 128, elements: !1710)
!1710 = !{!1711}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1709, file: !250, line: 169, baseType: !1712, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !250, line: 168, size: 128, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1713, file: !250, line: 168, baseType: !7, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1713, file: !250, line: 168, baseType: !7, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1713, file: !250, line: 168, baseType: !1718, size: 64, offset: 64)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1719, size: 64, elements: !553)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !250, line: 167, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !250, line: 156, size: 192, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !1721, file: !250, line: 159, baseType: !470, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !1721, file: !250, line: 161, baseType: !470, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !1721, file: !250, line: 163, baseType: !457, size: 8, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !1721, file: !250, line: 165, baseType: !457, size: 8, offset: 136)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !1704, file: !250, line: 174, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !471, line: 47, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1731, line: 75, size: 256, elements: !1732)
!1731 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1732 = !{!1733, !1745, !1746, !1747}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1730, file: !1731, line: 76, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1731, line: 68, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1731, line: 63, size: 320, elements: !1737)
!1737 = !{!1738, !1740, !1741, !1742}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1736, file: !1731, line: 64, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1736, file: !1731, line: 65, baseType: !1739, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1736, file: !1731, line: 66, baseType: !7, size: 32, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1736, file: !1731, line: 67, baseType: !1743, size: 128, offset: 192)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1744, size: 128, elements: !979)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1731, line: 29, baseType: !524)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1730, file: !1731, line: 77, baseType: !1734, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1730, file: !1731, line: 78, baseType: !7, size: 32, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1730, file: !1731, line: 79, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1731, line: 49, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1731, line: 45, size: 832, elements: !1751)
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1750, file: !1731, line: 46, baseType: !1739, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1750, file: !1731, line: 47, baseType: !1729, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1750, file: !1731, line: 48, baseType: !1755, size: 704, offset: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1756, line: 164, size: 704, elements: !1757)
!1756 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1757 = !{!1758, !1759, !1767, !1768, !1769, !1770, !1771, !1772, !1776, !1780, !1781, !1782, !1783}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1755, file: !1756, line: 166, baseType: !526, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1755, file: !1756, line: 167, baseType: !1760, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1756, line: 157, size: 192, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1761, file: !1756, line: 159, baseType: !460, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1761, file: !1756, line: 160, baseType: !1760, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1761, file: !1756, line: 161, baseType: !1766, size: 32, offset: 128)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 32, elements: !1105)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1755, file: !1756, line: 168, baseType: !460, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1755, file: !1756, line: 169, baseType: !460, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1755, file: !1756, line: 170, baseType: !460, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1755, file: !1756, line: 171, baseType: !526, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1755, file: !1756, line: 172, baseType: !458, size: 32, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1755, file: !1756, line: 176, baseType: !1773, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1760, !462, !526}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1755, file: !1756, line: 177, baseType: !1777, size: 64, offset: 512)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !462, !1760}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1755, file: !1756, line: 178, baseType: !462, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1755, file: !1756, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1755, file: !1756, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1755, file: !1756, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !1704, file: !250, line: 175, baseType: !1728, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !467, file: !250, line: 220, baseType: !1786, size: 256, offset: 2048)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !250, line: 74, size: 256, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !1786, file: !250, line: 76, baseType: !526, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !1786, file: !250, line: 77, baseType: !526, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1786, file: !250, line: 78, baseType: !470, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !1786, file: !250, line: 79, baseType: !457, size: 8, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !1786, file: !250, line: 80, baseType: !457, size: 8, offset: 200)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !1786, file: !250, line: 82, baseType: !457, size: 8, offset: 208)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !467, file: !250, line: 223, baseType: !969, size: 64, offset: 2304)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !467, file: !250, line: 225, baseType: !458, size: 32, offset: 2368)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !467, file: !250, line: 227, baseType: !458, size: 32, offset: 2400)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !467, file: !250, line: 231, baseType: !458, size: 32, offset: 2432)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !467, file: !250, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !467, file: !250, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !467, file: !250, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !467, file: !250, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !467, file: !250, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !467, file: !250, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !467, file: !250, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !467, file: !250, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !467, file: !250, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !467, file: !250, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_element", file: !250, line: 297, baseType: !1809)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_element_def", file: !250, line: 291, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1810, file: !250, line: 293, baseType: !466, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1810, file: !250, line: 294, baseType: !526, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_cgraph_node_set_element", file: !250, line: 298, baseType: !1815)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1817 = !{!0, !1818}
!1818 = !DIGlobalVariableExpression(var: !1819, expr: !DIExpression())
!1819 = distinct !DIGlobalVariable(name: "pass_ipa_whole_program_visibility", scope: !2, file: !3, line: 551, type: !1580, isLocal: false, isDefinition: true)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_ipa_opt_pass", file: !273, line: 202, size: 640, elements: !1821)
!1821 = !{!1822}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1820, file: !273, line: 204, baseType: !1583, size: 640)
!1823 = !{i32 2, !"Dwarf Version", i32 4}
!1824 = !{i32 2, !"Debug Info Version", i32 3}
!1825 = !{i32 1, !"wchar_size", i32 4}
!1826 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1827 = distinct !DISubprogram(name: "vprintf", scope: !1828, file: !1828, line: 39, type: !1829, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!458, !1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !463)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1834)
!1834 = !{!1835, !1836, !1837, !1838}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1833, file: !3, baseType: !7, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1833, file: !3, baseType: !7, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1833, file: !3, baseType: !462, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1833, file: !3, baseType: !462, size: 64, offset: 128)
!1839 = !{!1840, !1841}
!1840 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1827, file: !1828, line: 39, type: !1831)
!1841 = !DILocalVariable(name: "__arg", arg: 2, scope: !1827, file: !1828, line: 39, type: !1832)
!1842 = !DILocation(line: 0, scope: !1827)
!1843 = !DILocation(line: 41, column: 20, scope: !1827)
!1844 = !DILocation(line: 41, column: 10, scope: !1827)
!1845 = !DILocation(line: 41, column: 3, scope: !1827)
!1846 = distinct !DISubprogram(name: "getchar", scope: !1828, file: !1828, line: 47, type: !1847, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!458}
!1849 = !{}
!1850 = !DILocation(line: 49, column: 16, scope: !1846)
!1851 = !DILocation(line: 49, column: 10, scope: !1846)
!1852 = !DILocation(line: 49, column: 3, scope: !1846)
!1853 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1828, file: !1828, line: 56, type: !1854, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!458, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1858, line: 7, baseType: !1859)
!1858 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1860, line: 49, size: 1728, elements: !1861)
!1860 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1877, !1879, !1880, !1881, !1884, !1885, !1886, !1887, !1890, !1892, !1895, !1898, !1899, !1900, !1901, !1902}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1859, file: !1860, line: 51, baseType: !458, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1859, file: !1860, line: 54, baseType: !460, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1859, file: !1860, line: 55, baseType: !460, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1859, file: !1860, line: 56, baseType: !460, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1859, file: !1860, line: 57, baseType: !460, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1859, file: !1860, line: 58, baseType: !460, size: 64, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1859, file: !1860, line: 59, baseType: !460, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1859, file: !1860, line: 60, baseType: !460, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1859, file: !1860, line: 61, baseType: !460, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1859, file: !1860, line: 64, baseType: !460, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1859, file: !1860, line: 65, baseType: !460, size: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1859, file: !1860, line: 66, baseType: !460, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1859, file: !1860, line: 68, baseType: !1875, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1860, line: 36, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1859, file: !1860, line: 70, baseType: !1878, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1859, file: !1860, line: 72, baseType: !458, size: 32, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1859, file: !1860, line: 73, baseType: !458, size: 32, offset: 928)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1859, file: !1860, line: 74, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1883, line: 152, baseType: !526)
!1883 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1859, file: !1860, line: 77, baseType: !1546, size: 16, offset: 1024)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1859, file: !1860, line: 78, baseType: !1354, size: 8, offset: 1040)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1859, file: !1860, line: 79, baseType: !552, size: 8, offset: 1048)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1859, file: !1860, line: 81, baseType: !1888, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1860, line: 43, baseType: null)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1859, file: !1860, line: 89, baseType: !1891, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1883, line: 153, baseType: !526)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1859, file: !1860, line: 91, baseType: !1893, size: 64, offset: 1216)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1860, line: 37, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1859, file: !1860, line: 92, baseType: !1896, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1860, line: 38, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1859, file: !1860, line: 93, baseType: !1878, size: 64, offset: 1344)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1859, file: !1860, line: 94, baseType: !462, size: 64, offset: 1408)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1859, file: !1860, line: 95, baseType: !903, size: 64, offset: 1472)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1859, file: !1860, line: 96, baseType: !458, size: 32, offset: 1536)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1859, file: !1860, line: 98, baseType: !1903, size: 160, offset: 1568)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 160, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 20)
!1906 = !{!1907}
!1907 = !DILocalVariable(name: "__fp", arg: 1, scope: !1853, file: !1828, line: 56, type: !1856)
!1908 = !DILocation(line: 0, scope: !1853)
!1909 = !DILocation(line: 58, column: 10, scope: !1853)
!1910 = !DILocation(line: 58, column: 3, scope: !1853)
!1911 = distinct !DISubprogram(name: "getc_unlocked", scope: !1828, file: !1828, line: 66, type: !1854, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "__fp", arg: 1, scope: !1911, file: !1828, line: 66, type: !1856)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocation(line: 68, column: 10, scope: !1911)
!1916 = !DILocation(line: 68, column: 3, scope: !1911)
!1917 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1828, file: !1828, line: 73, type: !1847, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1918 = !DILocation(line: 75, column: 10, scope: !1917)
!1919 = !DILocation(line: 75, column: 3, scope: !1917)
!1920 = distinct !DISubprogram(name: "putchar", scope: !1828, file: !1828, line: 82, type: !1921, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!458, !458}
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "__c", arg: 1, scope: !1920, file: !1828, line: 82, type: !458)
!1925 = !DILocation(line: 0, scope: !1920)
!1926 = !DILocation(line: 84, column: 21, scope: !1920)
!1927 = !DILocation(line: 84, column: 10, scope: !1920)
!1928 = !DILocation(line: 84, column: 3, scope: !1920)
!1929 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1828, file: !1828, line: 91, type: !1930, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!458, !458, !1856}
!1932 = !{!1933, !1934}
!1933 = !DILocalVariable(name: "__c", arg: 1, scope: !1929, file: !1828, line: 91, type: !458)
!1934 = !DILocalVariable(name: "__stream", arg: 2, scope: !1929, file: !1828, line: 91, type: !1856)
!1935 = !DILocation(line: 0, scope: !1929)
!1936 = !DILocation(line: 93, column: 10, scope: !1929)
!1937 = !DILocation(line: 93, column: 3, scope: !1929)
!1938 = distinct !DISubprogram(name: "putc_unlocked", scope: !1828, file: !1828, line: 101, type: !1930, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "__c", arg: 1, scope: !1938, file: !1828, line: 101, type: !458)
!1941 = !DILocalVariable(name: "__stream", arg: 2, scope: !1938, file: !1828, line: 101, type: !1856)
!1942 = !DILocation(line: 0, scope: !1938)
!1943 = !DILocation(line: 103, column: 10, scope: !1938)
!1944 = !DILocation(line: 103, column: 3, scope: !1938)
!1945 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1828, file: !1828, line: 108, type: !1921, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "__c", arg: 1, scope: !1945, file: !1828, line: 108, type: !458)
!1948 = !DILocation(line: 0, scope: !1945)
!1949 = !DILocation(line: 110, column: 10, scope: !1945)
!1950 = !DILocation(line: 110, column: 3, scope: !1945)
!1951 = distinct !DISubprogram(name: "getline", scope: !1828, file: !1828, line: 118, type: !1952, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1956)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !459, !1955, !1856}
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1883, line: 193, baseType: !526)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!1956 = !{!1957, !1958, !1959}
!1957 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1951, file: !1828, line: 118, type: !459)
!1958 = !DILocalVariable(name: "__n", arg: 2, scope: !1951, file: !1828, line: 118, type: !1955)
!1959 = !DILocalVariable(name: "__stream", arg: 3, scope: !1951, file: !1828, line: 118, type: !1856)
!1960 = !DILocation(line: 0, scope: !1951)
!1961 = !DILocation(line: 120, column: 10, scope: !1951)
!1962 = !DILocation(line: 120, column: 3, scope: !1951)
!1963 = distinct !DISubprogram(name: "feof_unlocked", scope: !1828, file: !1828, line: 128, type: !1854, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "__stream", arg: 1, scope: !1963, file: !1828, line: 128, type: !1856)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 130, column: 10, scope: !1963)
!1968 = !DILocation(line: 130, column: 3, scope: !1963)
!1969 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1828, file: !1828, line: 135, type: !1854, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1970)
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "__stream", arg: 1, scope: !1969, file: !1828, line: 135, type: !1856)
!1972 = !DILocation(line: 0, scope: !1969)
!1973 = !DILocation(line: 137, column: 10, scope: !1969)
!1974 = !DILocation(line: 137, column: 3, scope: !1969)
!1975 = distinct !DISubprogram(name: "tolower", scope: !1976, file: !1976, line: 207, type: !1921, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1976 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1977 = !{!1978}
!1978 = !DILocalVariable(name: "__c", arg: 1, scope: !1975, file: !1976, line: 207, type: !458)
!1979 = !DILocation(line: 0, scope: !1975)
!1980 = !DILocation(line: 209, column: 22, scope: !1975)
!1981 = !DILocation(line: 209, column: 39, scope: !1975)
!1982 = !DILocation(line: 209, column: 38, scope: !1975)
!1983 = !DILocation(line: 209, column: 37, scope: !1975)
!1984 = !DILocation(line: 209, column: 10, scope: !1975)
!1985 = !DILocation(line: 209, column: 3, scope: !1975)
!1986 = distinct !DISubprogram(name: "toupper", scope: !1976, file: !1976, line: 213, type: !1921, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1988}
!1988 = !DILocalVariable(name: "__c", arg: 1, scope: !1986, file: !1976, line: 213, type: !458)
!1989 = !DILocation(line: 0, scope: !1986)
!1990 = !DILocation(line: 215, column: 22, scope: !1986)
!1991 = !DILocation(line: 215, column: 39, scope: !1986)
!1992 = !DILocation(line: 215, column: 38, scope: !1986)
!1993 = !DILocation(line: 215, column: 37, scope: !1986)
!1994 = !DILocation(line: 215, column: 10, scope: !1986)
!1995 = !DILocation(line: 215, column: 3, scope: !1986)
!1996 = distinct !DISubprogram(name: "atoi", scope: !1997, file: !1997, line: 361, type: !1998, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2000)
!1997 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!458, !463}
!2000 = !{!2001}
!2001 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1996, file: !1997, line: 361, type: !463)
!2002 = !DILocation(line: 0, scope: !1996)
!2003 = !DILocation(line: 363, column: 16, scope: !1996)
!2004 = !DILocation(line: 363, column: 10, scope: !1996)
!2005 = !DILocation(line: 363, column: 3, scope: !1996)
!2006 = distinct !DISubprogram(name: "atol", scope: !1997, file: !1997, line: 366, type: !2007, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!526, !463}
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2006, file: !1997, line: 366, type: !463)
!2011 = !DILocation(line: 0, scope: !2006)
!2012 = !DILocation(line: 368, column: 10, scope: !2006)
!2013 = !DILocation(line: 368, column: 3, scope: !2006)
!2014 = distinct !DISubprogram(name: "atoll", scope: !1997, file: !1997, line: 373, type: !2015, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !463}
!2017 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2014, file: !1997, line: 373, type: !463)
!2020 = !DILocation(line: 0, scope: !2014)
!2021 = !DILocation(line: 375, column: 10, scope: !2014)
!2022 = !DILocation(line: 375, column: 3, scope: !2014)
!2023 = distinct !DISubprogram(name: "bsearch", scope: !2024, file: !2024, line: 20, type: !2025, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2024 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!462, !1051, !1051, !903, !903, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1997, line: 808, baseType: !1055)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2029 = !DILocalVariable(name: "__key", arg: 1, scope: !2023, file: !2024, line: 20, type: !1051)
!2030 = !DILocalVariable(name: "__base", arg: 2, scope: !2023, file: !2024, line: 20, type: !1051)
!2031 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2023, file: !2024, line: 20, type: !903)
!2032 = !DILocalVariable(name: "__size", arg: 4, scope: !2023, file: !2024, line: 20, type: !903)
!2033 = !DILocalVariable(name: "__compar", arg: 5, scope: !2023, file: !2024, line: 21, type: !2027)
!2034 = !DILocalVariable(name: "__l", scope: !2023, file: !2024, line: 23, type: !903)
!2035 = !DILocalVariable(name: "__u", scope: !2023, file: !2024, line: 23, type: !903)
!2036 = !DILocalVariable(name: "__idx", scope: !2023, file: !2024, line: 23, type: !903)
!2037 = !DILocalVariable(name: "__p", scope: !2023, file: !2024, line: 24, type: !1051)
!2038 = !DILocalVariable(name: "__comparison", scope: !2023, file: !2024, line: 25, type: !458)
!2039 = !DILocation(line: 0, scope: !2023)
!2040 = !DILocation(line: 29, column: 3, scope: !2023)
!2041 = !DILocation(line: 27, column: 7, scope: !2023)
!2042 = !DILocation(line: 29, column: 14, scope: !2023)
!2043 = !DILocation(line: 31, column: 20, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2023, file: !2024, line: 30, column: 5)
!2045 = !DILocation(line: 31, column: 27, scope: !2044)
!2046 = !DILocation(line: 32, column: 56, scope: !2044)
!2047 = !DILocation(line: 32, column: 47, scope: !2044)
!2048 = !DILocation(line: 33, column: 22, scope: !2044)
!2049 = !DILocation(line: 34, column: 24, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2044, file: !2024, line: 34, column: 11)
!2051 = !DILocation(line: 34, column: 11, scope: !2044)
!2052 = !DILocation(line: 36, column: 29, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !2024, line: 36, column: 16)
!2054 = !DILocation(line: 36, column: 16, scope: !2050)
!2055 = !DILocation(line: 37, column: 14, scope: !2053)
!2056 = distinct !{!2056, !2040, !2057}
!2057 = !DILocation(line: 40, column: 5, scope: !2023)
!2058 = !DILocation(line: 43, column: 1, scope: !2023)
!2059 = distinct !DISubprogram(name: "atof", scope: !2060, file: !2060, line: 25, type: !2061, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2064)
!2060 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063, !463}
!2063 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2064 = !{!2065}
!2065 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2059, file: !2060, line: 25, type: !463)
!2066 = !DILocation(line: 0, scope: !2059)
!2067 = !DILocation(line: 27, column: 10, scope: !2059)
!2068 = !DILocation(line: 27, column: 3, scope: !2059)
!2069 = distinct !DISubprogram(name: "strtoimax", scope: !2070, file: !2070, line: 324, type: !2071, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2070 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2073, !1831, !2076, !458}
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2074, line: 101, baseType: !2075)
!2074 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1883, line: 72, baseType: !526)
!2076 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !459)
!2077 = !{!2078, !2079, !2080}
!2078 = !DILocalVariable(name: "nptr", arg: 1, scope: !2069, file: !2070, line: 324, type: !1831)
!2079 = !DILocalVariable(name: "endptr", arg: 2, scope: !2069, file: !2070, line: 324, type: !2076)
!2080 = !DILocalVariable(name: "base", arg: 3, scope: !2069, file: !2070, line: 324, type: !458)
!2081 = !DILocation(line: 0, scope: !2069)
!2082 = !DILocation(line: 327, column: 10, scope: !2069)
!2083 = !DILocation(line: 327, column: 3, scope: !2069)
!2084 = distinct !DISubprogram(name: "strtoumax", scope: !2070, file: !2070, line: 336, type: !2085, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!2087, !1831, !2076, !458}
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2074, line: 102, baseType: !2088)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1883, line: 73, baseType: !524)
!2089 = !{!2090, !2091, !2092}
!2090 = !DILocalVariable(name: "nptr", arg: 1, scope: !2084, file: !2070, line: 336, type: !1831)
!2091 = !DILocalVariable(name: "endptr", arg: 2, scope: !2084, file: !2070, line: 336, type: !2076)
!2092 = !DILocalVariable(name: "base", arg: 3, scope: !2084, file: !2070, line: 336, type: !458)
!2093 = !DILocation(line: 0, scope: !2084)
!2094 = !DILocation(line: 339, column: 10, scope: !2084)
!2095 = !DILocation(line: 339, column: 3, scope: !2084)
!2096 = distinct !DISubprogram(name: "wcstoimax", scope: !2070, file: !2070, line: 348, type: !2097, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2073, !2099, !2103, !458}
!2099 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2100)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2070, line: 34, baseType: !458)
!2103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2106 = !{!2107, !2108, !2109}
!2107 = !DILocalVariable(name: "nptr", arg: 1, scope: !2096, file: !2070, line: 348, type: !2099)
!2108 = !DILocalVariable(name: "endptr", arg: 2, scope: !2096, file: !2070, line: 348, type: !2103)
!2109 = !DILocalVariable(name: "base", arg: 3, scope: !2096, file: !2070, line: 348, type: !458)
!2110 = !DILocation(line: 0, scope: !2096)
!2111 = !DILocation(line: 351, column: 10, scope: !2096)
!2112 = !DILocation(line: 351, column: 3, scope: !2096)
!2113 = distinct !DISubprogram(name: "wcstoumax", scope: !2070, file: !2070, line: 362, type: !2114, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!2087, !2099, !2103, !458}
!2116 = !{!2117, !2118, !2119}
!2117 = !DILocalVariable(name: "nptr", arg: 1, scope: !2113, file: !2070, line: 362, type: !2099)
!2118 = !DILocalVariable(name: "endptr", arg: 2, scope: !2113, file: !2070, line: 362, type: !2103)
!2119 = !DILocalVariable(name: "base", arg: 3, scope: !2113, file: !2070, line: 362, type: !458)
!2120 = !DILocation(line: 0, scope: !2113)
!2121 = !DILocation(line: 365, column: 10, scope: !2113)
!2122 = !DILocation(line: 365, column: 3, scope: !2113)
!2123 = distinct !DISubprogram(name: "stat", scope: !2124, file: !2124, line: 453, type: !2125, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!458, !463, !2127}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2129, line: 46, size: 1152, elements: !2130)
!2129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2130 = !{!2131, !2133, !2135, !2137, !2139, !2141, !2143, !2144, !2145, !2146, !2148, !2150, !2158, !2159, !2160}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2128, file: !2129, line: 48, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1883, line: 145, baseType: !524)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2128, file: !2129, line: 53, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1883, line: 148, baseType: !524)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2128, file: !2129, line: 61, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1883, line: 151, baseType: !524)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2128, file: !2129, line: 62, baseType: !2138, size: 32, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1883, line: 150, baseType: !7)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2128, file: !2129, line: 64, baseType: !2140, size: 32, offset: 224)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1883, line: 146, baseType: !7)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2128, file: !2129, line: 65, baseType: !2142, size: 32, offset: 256)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1883, line: 147, baseType: !7)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2128, file: !2129, line: 67, baseType: !458, size: 32, offset: 288)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2128, file: !2129, line: 69, baseType: !2132, size: 64, offset: 320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2128, file: !2129, line: 74, baseType: !1882, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2128, file: !2129, line: 78, baseType: !2147, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1883, line: 174, baseType: !526)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2128, file: !2129, line: 80, baseType: !2149, size: 64, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1883, line: 179, baseType: !526)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2128, file: !2129, line: 91, baseType: !2151, size: 128, offset: 576)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2152, line: 10, size: 128, elements: !2153)
!2152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2153 = !{!2154, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2151, file: !2152, line: 12, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1883, line: 160, baseType: !526)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2151, file: !2152, line: 16, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1883, line: 196, baseType: !526)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2128, file: !2129, line: 92, baseType: !2151, size: 128, offset: 704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2128, file: !2129, line: 93, baseType: !2151, size: 128, offset: 832)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2128, file: !2129, line: 106, baseType: !2161, size: 192, offset: 960)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2157, size: 192, elements: !2162)
!2162 = !{!2163}
!2163 = !DISubrange(count: 3)
!2164 = !{!2165, !2166}
!2165 = !DILocalVariable(name: "__path", arg: 1, scope: !2123, file: !2124, line: 453, type: !463)
!2166 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2123, file: !2124, line: 453, type: !2127)
!2167 = !DILocation(line: 0, scope: !2123)
!2168 = !DILocation(line: 455, column: 10, scope: !2123)
!2169 = !DILocation(line: 455, column: 3, scope: !2123)
!2170 = distinct !DISubprogram(name: "lstat", scope: !2124, file: !2124, line: 460, type: !2125, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "__path", arg: 1, scope: !2170, file: !2124, line: 460, type: !463)
!2173 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2170, file: !2124, line: 460, type: !2127)
!2174 = !DILocation(line: 0, scope: !2170)
!2175 = !DILocation(line: 462, column: 10, scope: !2170)
!2176 = !DILocation(line: 462, column: 3, scope: !2170)
!2177 = distinct !DISubprogram(name: "fstat", scope: !2124, file: !2124, line: 467, type: !2178, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!458, !458, !2127}
!2180 = !{!2181, !2182}
!2181 = !DILocalVariable(name: "__fd", arg: 1, scope: !2177, file: !2124, line: 467, type: !458)
!2182 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2177, file: !2124, line: 467, type: !2127)
!2183 = !DILocation(line: 0, scope: !2177)
!2184 = !DILocation(line: 469, column: 10, scope: !2177)
!2185 = !DILocation(line: 469, column: 3, scope: !2177)
!2186 = distinct !DISubprogram(name: "fstatat", scope: !2124, file: !2124, line: 474, type: !2187, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!458, !458, !463, !2127, !458}
!2189 = !{!2190, !2191, !2192, !2193}
!2190 = !DILocalVariable(name: "__fd", arg: 1, scope: !2186, file: !2124, line: 474, type: !458)
!2191 = !DILocalVariable(name: "__filename", arg: 2, scope: !2186, file: !2124, line: 474, type: !463)
!2192 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2186, file: !2124, line: 474, type: !2127)
!2193 = !DILocalVariable(name: "__flag", arg: 4, scope: !2186, file: !2124, line: 474, type: !458)
!2194 = !DILocation(line: 0, scope: !2186)
!2195 = !DILocation(line: 477, column: 10, scope: !2186)
!2196 = !DILocation(line: 477, column: 3, scope: !2186)
!2197 = distinct !DISubprogram(name: "mknod", scope: !2124, file: !2124, line: 483, type: !2198, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!458, !463, !2138, !2132}
!2200 = !{!2201, !2202, !2203}
!2201 = !DILocalVariable(name: "__path", arg: 1, scope: !2197, file: !2124, line: 483, type: !463)
!2202 = !DILocalVariable(name: "__mode", arg: 2, scope: !2197, file: !2124, line: 483, type: !2138)
!2203 = !DILocalVariable(name: "__dev", arg: 3, scope: !2197, file: !2124, line: 483, type: !2132)
!2204 = !DILocation(line: 0, scope: !2197)
!2205 = !DILocation(line: 485, column: 10, scope: !2197)
!2206 = !DILocation(line: 485, column: 3, scope: !2197)
!2207 = distinct !DISubprogram(name: "mknodat", scope: !2124, file: !2124, line: 491, type: !2208, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!458, !458, !463, !2138, !2132}
!2210 = !{!2211, !2212, !2213, !2214}
!2211 = !DILocalVariable(name: "__fd", arg: 1, scope: !2207, file: !2124, line: 491, type: !458)
!2212 = !DILocalVariable(name: "__path", arg: 2, scope: !2207, file: !2124, line: 491, type: !463)
!2213 = !DILocalVariable(name: "__mode", arg: 3, scope: !2207, file: !2124, line: 491, type: !2138)
!2214 = !DILocalVariable(name: "__dev", arg: 4, scope: !2207, file: !2124, line: 491, type: !2132)
!2215 = !DILocation(line: 0, scope: !2207)
!2216 = !DILocation(line: 494, column: 10, scope: !2207)
!2217 = !DILocation(line: 494, column: 3, scope: !2207)
!2218 = distinct !DISubprogram(name: "stat64", scope: !2124, file: !2124, line: 502, type: !2219, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!458, !463, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2129, line: 119, size: 1152, elements: !2223)
!2223 = !{!2224, !2225, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2237, !2238, !2239, !2240}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2222, file: !2129, line: 121, baseType: !2132, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2222, file: !2129, line: 123, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1883, line: 149, baseType: !524)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2222, file: !2129, line: 124, baseType: !2136, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2222, file: !2129, line: 125, baseType: !2138, size: 32, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2222, file: !2129, line: 132, baseType: !2140, size: 32, offset: 224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2222, file: !2129, line: 133, baseType: !2142, size: 32, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2222, file: !2129, line: 135, baseType: !458, size: 32, offset: 288)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2222, file: !2129, line: 136, baseType: !2132, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2222, file: !2129, line: 137, baseType: !1882, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2222, file: !2129, line: 143, baseType: !2147, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2222, file: !2129, line: 144, baseType: !2236, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1883, line: 180, baseType: !526)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2222, file: !2129, line: 152, baseType: !2151, size: 128, offset: 576)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2222, file: !2129, line: 153, baseType: !2151, size: 128, offset: 704)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2222, file: !2129, line: 154, baseType: !2151, size: 128, offset: 832)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2222, file: !2129, line: 164, baseType: !2161, size: 192, offset: 960)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "__path", arg: 1, scope: !2218, file: !2124, line: 502, type: !463)
!2243 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2218, file: !2124, line: 502, type: !2221)
!2244 = !DILocation(line: 0, scope: !2218)
!2245 = !DILocation(line: 504, column: 10, scope: !2218)
!2246 = !DILocation(line: 504, column: 3, scope: !2218)
!2247 = distinct !DISubprogram(name: "lstat64", scope: !2124, file: !2124, line: 509, type: !2219, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2248 = !{!2249, !2250}
!2249 = !DILocalVariable(name: "__path", arg: 1, scope: !2247, file: !2124, line: 509, type: !463)
!2250 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2247, file: !2124, line: 509, type: !2221)
!2251 = !DILocation(line: 0, scope: !2247)
!2252 = !DILocation(line: 511, column: 10, scope: !2247)
!2253 = !DILocation(line: 511, column: 3, scope: !2247)
!2254 = distinct !DISubprogram(name: "fstat64", scope: !2124, file: !2124, line: 516, type: !2255, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!458, !458, !2221}
!2257 = !{!2258, !2259}
!2258 = !DILocalVariable(name: "__fd", arg: 1, scope: !2254, file: !2124, line: 516, type: !458)
!2259 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2254, file: !2124, line: 516, type: !2221)
!2260 = !DILocation(line: 0, scope: !2254)
!2261 = !DILocation(line: 518, column: 10, scope: !2254)
!2262 = !DILocation(line: 518, column: 3, scope: !2254)
!2263 = distinct !DISubprogram(name: "fstatat64", scope: !2124, file: !2124, line: 523, type: !2264, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!458, !458, !463, !2221, !458}
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DILocalVariable(name: "__fd", arg: 1, scope: !2263, file: !2124, line: 523, type: !458)
!2268 = !DILocalVariable(name: "__filename", arg: 2, scope: !2263, file: !2124, line: 523, type: !463)
!2269 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2263, file: !2124, line: 523, type: !2221)
!2270 = !DILocalVariable(name: "__flag", arg: 4, scope: !2263, file: !2124, line: 523, type: !458)
!2271 = !DILocation(line: 0, scope: !2263)
!2272 = !DILocation(line: 526, column: 10, scope: !2263)
!2273 = !DILocation(line: 526, column: 3, scope: !2263)
!2274 = distinct !DISubprogram(name: "cgraph_postorder", scope: !3, file: !3, line: 35, type: !2275, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!458, !465}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2278 = !DILocalVariable(name: "order", arg: 1, scope: !2274, file: !3, line: 35, type: !465)
!2279 = !DILocalVariable(name: "node", scope: !2274, file: !3, line: 37, type: !466)
!2280 = !DILocalVariable(name: "node2", scope: !2274, file: !3, line: 37, type: !466)
!2281 = !DILocalVariable(name: "stack_size", scope: !2274, file: !3, line: 38, type: !458)
!2282 = !DILocalVariable(name: "order_pos", scope: !2274, file: !3, line: 39, type: !458)
!2283 = !DILocalVariable(name: "edge", scope: !2274, file: !3, line: 40, type: !1528)
!2284 = !DILocalVariable(name: "last", scope: !2274, file: !3, line: 40, type: !1529)
!2285 = !DILocalVariable(name: "pass", scope: !2274, file: !3, line: 41, type: !458)
!2286 = !DILocalVariable(name: "stack", scope: !2274, file: !3, line: 43, type: !465)
!2287 = !DILocation(line: 0, scope: !2274)
!2288 = !DILocation(line: 40, column: 3, scope: !2274)
!2289 = !DILocation(line: 44, column: 5, scope: !2274)
!2290 = !DILocation(line: 50, column: 8, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 50, column: 3)
!2292 = !DILocation(line: 0, scope: !2291)
!2293 = !DILocation(line: 50, column: 3, scope: !2291)
!2294 = !DILocation(line: 52, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 52, column: 3)
!2296 = !DILocation(line: 51, column: 11, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 50, column: 3)
!2298 = !DILocation(line: 51, column: 15, scope: !2297)
!2299 = !DILocation(line: 50, column: 48, scope: !2297)
!2300 = !DILocation(line: 50, column: 3, scope: !2297)
!2301 = distinct !{!2301, !2293, !2302}
!2302 = !DILocation(line: 51, column: 17, scope: !2291)
!2303 = !DILocation(line: 39, column: 7, scope: !2274)
!2304 = !DILocation(line: 38, column: 7, scope: !2274)
!2305 = !DILocation(line: 0, scope: !2295)
!2306 = !DILocation(line: 52, column: 23, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 52, column: 3)
!2308 = !DILocation(line: 0, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 54, column: 11)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 53, column: 5)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 53, column: 5)
!2312 = !DILocation(line: 53, column: 10, scope: !2311)
!2313 = !DILocation(line: 0, scope: !2311)
!2314 = !DILocation(line: 53, column: 5, scope: !2311)
!2315 = !DILocation(line: 54, column: 18, scope: !2309)
!2316 = !DILocation(line: 54, column: 12, scope: !2309)
!2317 = !DILocation(line: 55, column: 4, scope: !2309)
!2318 = !DILocation(line: 56, column: 13, scope: !2309)
!2319 = !DILocation(line: 57, column: 7, scope: !2309)
!2320 = !DILocation(line: 57, column: 17, scope: !2309)
!2321 = !DILocation(line: 57, column: 11, scope: !2309)
!2322 = !DILocation(line: 54, column: 11, scope: !2310)
!2323 = !DILocation(line: 60, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 60, column: 8)
!2325 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 58, column: 2)
!2326 = !DILocation(line: 60, column: 9, scope: !2324)
!2327 = !DILocation(line: 60, column: 8, scope: !2325)
!2328 = !DILocation(line: 63, column: 16, scope: !2324)
!2329 = !DILocation(line: 61, column: 16, scope: !2324)
!2330 = !DILocation(line: 61, column: 6, scope: !2324)
!2331 = !DILocation(line: 64, column: 4, scope: !2325)
!2332 = !DILocation(line: 0, scope: !2325)
!2333 = !DILocation(line: 66, column: 22, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 65, column: 6)
!2335 = !DILocation(line: 66, column: 26, scope: !2334)
!2336 = !DILocation(line: 66, column: 8, scope: !2334)
!2337 = !DILocation(line: 69, column: 15, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 69, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 67, column: 3)
!2340 = !DILocation(line: 69, column: 9, scope: !2338)
!2341 = !DILocation(line: 69, column: 9, scope: !2339)
!2342 = !DILocation(line: 70, column: 18, scope: !2338)
!2343 = !DILocation(line: 70, column: 7, scope: !2338)
!2344 = !DILocation(line: 72, column: 18, scope: !2338)
!2345 = !DILocation(line: 73, column: 16, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 73, column: 9)
!2347 = !DILocation(line: 73, column: 24, scope: !2346)
!2348 = !DILocation(line: 73, column: 10, scope: !2346)
!2349 = !DILocation(line: 73, column: 9, scope: !2339)
!2350 = distinct !{!2350, !2336, !2351}
!2351 = !DILocation(line: 83, column: 3, scope: !2334)
!2352 = !DILocation(line: 75, column: 28, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 75, column: 13)
!2354 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 74, column: 7)
!2355 = !DILocation(line: 75, column: 14, scope: !2353)
!2356 = !DILocation(line: 75, column: 13, scope: !2354)
!2357 = !DILocation(line: 78, column: 22, scope: !2353)
!2358 = !DILocation(line: 76, column: 22, scope: !2353)
!2359 = !DILocation(line: 76, column: 4, scope: !2353)
!2360 = !DILocation(line: 79, column: 25, scope: !2354)
!2361 = !DILocation(line: 79, column: 9, scope: !2354)
!2362 = !DILocation(line: 79, column: 29, scope: !2354)
!2363 = !DILocation(line: 80, column: 23, scope: !2354)
!2364 = !DILocation(line: 0, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 84, column: 12)
!2366 = !DILocation(line: 84, column: 19, scope: !2365)
!2367 = !DILocation(line: 81, column: 9, scope: !2354)
!2368 = !DILocation(line: 84, column: 23, scope: !2365)
!2369 = !DILocation(line: 84, column: 12, scope: !2334)
!2370 = !DILocation(line: 86, column: 20, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 85, column: 3)
!2372 = !DILocation(line: 86, column: 5, scope: !2371)
!2373 = !DILocation(line: 86, column: 24, scope: !2371)
!2374 = !DILocation(line: 87, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 87, column: 9)
!2376 = !DILocation(line: 87, column: 9, scope: !2371)
!2377 = !DILocation(line: 88, column: 21, scope: !2375)
!2378 = !DILocation(line: 88, column: 15, scope: !2375)
!2379 = !DILocation(line: 88, column: 7, scope: !2375)
!2380 = !DILocation(line: 0, scope: !2334)
!2381 = distinct !{!2381, !2331, !2382}
!2382 = !DILocation(line: 92, column: 6, scope: !2325)
!2383 = !DILocation(line: 53, column: 50, scope: !2310)
!2384 = !DILocation(line: 53, column: 5, scope: !2310)
!2385 = distinct !{!2385, !2314, !2386}
!2386 = !DILocation(line: 93, column: 2, scope: !2311)
!2387 = !DILocation(line: 0, scope: !2339)
!2388 = !DILocation(line: 0, scope: !2338)
!2389 = !DILocation(line: 52, column: 32, scope: !2307)
!2390 = !DILocation(line: 52, column: 3, scope: !2307)
!2391 = distinct !{!2391, !2294, !2392}
!2392 = !DILocation(line: 93, column: 2, scope: !2295)
!2393 = !DILocation(line: 94, column: 3, scope: !2274)
!2394 = !DILocation(line: 95, column: 8, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 95, column: 3)
!2396 = !DILocation(line: 0, scope: !2395)
!2397 = !DILocation(line: 95, column: 3, scope: !2395)
!2398 = !DILocation(line: 96, column: 11, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 95, column: 3)
!2400 = !DILocation(line: 96, column: 15, scope: !2399)
!2401 = !DILocation(line: 95, column: 48, scope: !2399)
!2402 = !DILocation(line: 95, column: 3, scope: !2399)
!2403 = distinct !{!2403, !2397, !2404}
!2404 = !DILocation(line: 96, column: 17, scope: !2395)
!2405 = !DILocation(line: 98, column: 1, scope: !2274)
!2406 = !DILocation(line: 97, column: 3, scope: !2274)
!2407 = distinct !DISubprogram(name: "cgraph_only_called_directly_p", scope: !250, file: !250, line: 715, type: !2408, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!457, !466}
!2410 = !{!2411}
!2411 = !DILocalVariable(name: "node", arg: 1, scope: !2407, file: !250, line: 715, type: !466)
!2412 = !DILocation(line: 0, scope: !2407)
!2413 = !DILocation(line: 717, column: 17, scope: !2407)
!2414 = !DILocation(line: 717, column: 11, scope: !2407)
!2415 = !DILocation(line: 717, column: 24, scope: !2407)
!2416 = !DILocation(line: 717, column: 40, scope: !2407)
!2417 = !DILocation(line: 717, column: 3, scope: !2407)
!2418 = distinct !DISubprogram(name: "cgraph_remove_unreachable_nodes", scope: !3, file: !3, line: 121, type: !2419, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!457, !457, !1856}
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2431, !2437, !2439, !2447}
!2422 = !DILocalVariable(name: "before_inlining_p", arg: 1, scope: !2418, file: !3, line: 121, type: !457)
!2423 = !DILocalVariable(name: "file", arg: 2, scope: !2418, file: !3, line: 121, type: !1856)
!2424 = !DILocalVariable(name: "first", scope: !2418, file: !3, line: 123, type: !466)
!2425 = !DILocalVariable(name: "processed", scope: !2418, file: !3, line: 124, type: !466)
!2426 = !DILocalVariable(name: "node", scope: !2418, file: !3, line: 125, type: !466)
!2427 = !DILocalVariable(name: "next", scope: !2418, file: !3, line: 125, type: !466)
!2428 = !DILocalVariable(name: "changed", scope: !2418, file: !3, line: 126, type: !457)
!2429 = !DILocalVariable(name: "e", scope: !2430, file: !3, line: 159, type: !1528)
!2430 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 158, column: 5)
!2431 = !DILocalVariable(name: "prev_reachable", scope: !2432, file: !3, line: 172, type: !457)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 171, column: 6)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 166, column: 8)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 165, column: 9)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 165, column: 9)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 164, column: 11)
!2437 = !DILocalVariable(name: "noninline", scope: !2438, file: !3, line: 207, type: !457)
!2438 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 206, column: 9)
!2439 = !DILocalVariable(name: "e", scope: !2440, file: !3, line: 244, type: !1528)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 243, column: 6)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 240, column: 8)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 236, column: 2)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 235, column: 11)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 227, column: 5)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 226, column: 3)
!2446 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 226, column: 3)
!2447 = !DILocalVariable(name: "clone", scope: !2448, file: !3, line: 254, type: !466)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 253, column: 3)
!2449 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 252, column: 12)
!2450 = !DILocation(line: 0, scope: !2418)
!2451 = !DILocation(line: 131, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 131, column: 7)
!2453 = !DILocation(line: 131, column: 7, scope: !2418)
!2454 = !DILocation(line: 132, column: 5, scope: !2452)
!2455 = !DILocation(line: 0, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 138, column: 9)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 137, column: 3)
!2458 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 137, column: 3)
!2459 = !DILocation(line: 137, column: 8, scope: !2458)
!2460 = !DILocation(line: 123, column: 23, scope: !2418)
!2461 = !DILocation(line: 0, scope: !2458)
!2462 = !DILocation(line: 137, column: 3, scope: !2458)
!2463 = !DILocation(line: 138, column: 10, scope: !2456)
!2464 = !DILocation(line: 139, column: 2, scope: !2456)
!2465 = !DILocation(line: 140, column: 13, scope: !2456)
!2466 = !DILocation(line: 141, column: 13, scope: !2456)
!2467 = !DILocation(line: 150, column: 9, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 149, column: 7)
!2469 = !DILocation(line: 151, column: 8, scope: !2468)
!2470 = !DILocation(line: 151, column: 18, scope: !2468)
!2471 = !DILocation(line: 143, column: 9, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 142, column: 7)
!2473 = !DILocation(line: 144, column: 8, scope: !2472)
!2474 = !DILocation(line: 144, column: 12, scope: !2472)
!2475 = !DILocation(line: 146, column: 8, scope: !2472)
!2476 = !DILocation(line: 146, column: 18, scope: !2472)
!2477 = !DILocation(line: 147, column: 7, scope: !2472)
!2478 = !DILocation(line: 137, column: 48, scope: !2457)
!2479 = !DILocation(line: 137, column: 3, scope: !2457)
!2480 = distinct !{!2480, !2462, !2481}
!2481 = !DILocation(line: 152, column: 7, scope: !2458)
!2482 = !DILocation(line: 0, scope: !2433)
!2483 = !DILocation(line: 157, column: 3, scope: !2418)
!2484 = !DILocation(line: 139, column: 8, scope: !2456)
!2485 = !DILocation(line: 140, column: 23, scope: !2456)
!2486 = !DILocation(line: 140, column: 17, scope: !2456)
!2487 = !DILocation(line: 157, column: 16, scope: !2418)
!2488 = !DILocation(line: 161, column: 45, scope: !2430)
!2489 = !DILocation(line: 162, column: 17, scope: !2430)
!2490 = !DILocation(line: 164, column: 17, scope: !2436)
!2491 = !DILocation(line: 164, column: 11, scope: !2436)
!2492 = !DILocation(line: 164, column: 11, scope: !2430)
!2493 = !DILocation(line: 165, column: 24, scope: !2435)
!2494 = !DILocation(line: 165, column: 14, scope: !2435)
!2495 = !DILocation(line: 161, column: 13, scope: !2430)
!2496 = !DILocation(line: 0, scope: !2435)
!2497 = !DILocation(line: 0, scope: !2430)
!2498 = !DILocation(line: 165, column: 9, scope: !2435)
!2499 = !DILocation(line: 166, column: 12, scope: !2433)
!2500 = !DILocation(line: 166, column: 20, scope: !2433)
!2501 = !DILocation(line: 166, column: 9, scope: !2433)
!2502 = !DILocation(line: 167, column: 8, scope: !2433)
!2503 = !DILocation(line: 167, column: 17, scope: !2433)
!2504 = !DILocation(line: 167, column: 11, scope: !2433)
!2505 = !DILocation(line: 168, column: 8, scope: !2433)
!2506 = !DILocation(line: 168, column: 30, scope: !2433)
!2507 = !DILocation(line: 169, column: 5, scope: !2433)
!2508 = !DILocation(line: 170, column: 19, scope: !2433)
!2509 = !DILocation(line: 173, column: 29, scope: !2432)
!2510 = !DILocation(line: 174, column: 16, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 174, column: 12)
!2512 = !DILocation(line: 174, column: 24, scope: !2511)
!2513 = !DILocation(line: 174, column: 13, scope: !2511)
!2514 = !DILocation(line: 175, column: 12, scope: !2511)
!2515 = !DILocation(line: 175, column: 31, scope: !2511)
!2516 = !DILocation(line: 176, column: 9, scope: !2511)
!2517 = !DILocation(line: 176, column: 41, scope: !2511)
!2518 = !DILocation(line: 176, column: 27, scope: !2511)
!2519 = !DILocation(line: 174, column: 12, scope: !2432)
!2520 = !DILocation(line: 178, column: 27, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 177, column: 10)
!2522 = !DILocation(line: 179, column: 23, scope: !2521)
!2523 = !DILocation(line: 180, column: 10, scope: !2521)
!2524 = !DILocation(line: 165, column: 43, scope: !2434)
!2525 = !DILocation(line: 165, column: 9, scope: !2434)
!2526 = distinct !{!2526, !2498, !2527}
!2527 = !DILocation(line: 181, column: 6, scope: !2435)
!2528 = !DILocation(line: 186, column: 17, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 186, column: 11)
!2530 = !DILocation(line: 168, column: 16, scope: !2433)
!2531 = !DILocation(line: 168, column: 13, scope: !2433)
!2532 = !DILocation(line: 168, column: 45, scope: !2433)
!2533 = !DILocation(line: 168, column: 34, scope: !2433)
!2534 = !DILocation(line: 169, column: 10, scope: !2433)
!2535 = !DILocation(line: 186, column: 11, scope: !2529)
!2536 = !DILocation(line: 187, column: 4, scope: !2529)
!2537 = !DILocation(line: 187, column: 13, scope: !2529)
!2538 = !DILocation(line: 187, column: 7, scope: !2529)
!2539 = !DILocation(line: 188, column: 4, scope: !2529)
!2540 = !DILocation(line: 188, column: 21, scope: !2529)
!2541 = !DILocation(line: 188, column: 8, scope: !2529)
!2542 = !DILocation(line: 186, column: 11, scope: !2430)
!2543 = !DILocation(line: 190, column: 9, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 190, column: 4)
!2545 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 189, column: 2)
!2546 = !DILocation(line: 0, scope: !2544)
!2547 = !DILocation(line: 191, column: 14, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 190, column: 4)
!2549 = !DILocation(line: 190, column: 4, scope: !2544)
!2550 = !DILocation(line: 193, column: 17, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 193, column: 10)
!2552 = !DILocation(line: 193, column: 11, scope: !2551)
!2553 = !DILocation(line: 193, column: 10, scope: !2548)
!2554 = !DILocation(line: 195, column: 9, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 194, column: 8)
!2556 = !DILocation(line: 195, column: 13, scope: !2555)
!2557 = !DILocation(line: 197, column: 19, scope: !2555)
!2558 = !DILocation(line: 198, column: 8, scope: !2555)
!2559 = !DILocation(line: 190, column: 4, scope: !2548)
!2560 = distinct !{!2560, !2549, !2561}
!2561 = !DILocation(line: 198, column: 8, scope: !2544)
!2562 = !DILocation(line: 205, column: 7, scope: !2430)
!2563 = !DILocation(line: 205, column: 20, scope: !2430)
!2564 = !DILocation(line: 205, column: 14, scope: !2430)
!2565 = !DILocation(line: 205, column: 29, scope: !2430)
!2566 = !DILocation(line: 205, column: 49, scope: !2430)
!2567 = !DILocation(line: 205, column: 33, scope: !2430)
!2568 = !DILocation(line: 205, column: 53, scope: !2430)
!2569 = !DILocation(line: 205, column: 82, scope: !2430)
!2570 = !DILocation(line: 205, column: 57, scope: !2430)
!2571 = !DILocation(line: 205, column: 56, scope: !2430)
!2572 = !DILocation(line: 207, column: 27, scope: !2438)
!2573 = !DILocation(line: 207, column: 37, scope: !2438)
!2574 = !DILocation(line: 207, column: 51, scope: !2438)
!2575 = !DILocation(line: 207, column: 42, scope: !2438)
!2576 = !DILocation(line: 0, scope: !2438)
!2577 = !DILocation(line: 209, column: 8, scope: !2438)
!2578 = !DILocation(line: 211, column: 14, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 210, column: 6)
!2580 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 209, column: 8)
!2581 = !DILocation(line: 211, column: 18, scope: !2579)
!2582 = !DILocation(line: 213, column: 8, scope: !2579)
!2583 = distinct !{!2583, !2562, !2584}
!2584 = !DILocation(line: 215, column: 2, scope: !2430)
!2585 = distinct !{!2585, !2483, !2586}
!2586 = !DILocation(line: 216, column: 5, scope: !2418)
!2587 = !DILocation(line: 226, column: 15, scope: !2446)
!2588 = !DILocation(line: 0, scope: !2441)
!2589 = !DILocation(line: 226, column: 8, scope: !2446)
!2590 = !DILocation(line: 126, column: 8, scope: !2418)
!2591 = !DILocation(line: 0, scope: !2446)
!2592 = !DILocation(line: 226, column: 3, scope: !2446)
!2593 = !DILocation(line: 228, column: 20, scope: !2444)
!2594 = !DILocation(line: 229, column: 17, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 229, column: 11)
!2596 = !DILocation(line: 229, column: 11, scope: !2595)
!2597 = !DILocation(line: 229, column: 21, scope: !2595)
!2598 = !DILocation(line: 229, column: 31, scope: !2595)
!2599 = !DILocation(line: 229, column: 25, scope: !2595)
!2600 = !DILocation(line: 229, column: 11, scope: !2444)
!2601 = !DILocation(line: 231, column: 4, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 230, column: 9)
!2603 = !DILocation(line: 232, column: 19, scope: !2602)
!2604 = !DILocation(line: 233, column: 16, scope: !2602)
!2605 = !DILocation(line: 233, column: 26, scope: !2602)
!2606 = !DILocation(line: 235, column: 18, scope: !2443)
!2607 = !DILocation(line: 234, column: 2, scope: !2602)
!2608 = !DILocation(line: 235, column: 12, scope: !2443)
!2609 = !DILocation(line: 235, column: 11, scope: !2444)
!2610 = !DILocation(line: 237, column: 24, scope: !2442)
!2611 = !DILocation(line: 237, column: 35, scope: !2442)
!2612 = !DILocation(line: 238, column: 8, scope: !2442)
!2613 = !DILocation(line: 239, column: 28, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 238, column: 8)
!2615 = !DILocation(line: 239, column: 6, scope: !2614)
!2616 = !DILocation(line: 240, column: 15, scope: !2441)
!2617 = !DILocation(line: 240, column: 9, scope: !2441)
!2618 = !DILocation(line: 240, column: 24, scope: !2441)
!2619 = !DILocation(line: 240, column: 28, scope: !2441)
!2620 = !DILocation(line: 240, column: 55, scope: !2441)
!2621 = !DILocation(line: 241, column: 6, scope: !2441)
!2622 = !DILocation(line: 247, column: 23, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 247, column: 8)
!2624 = !DILocation(line: 247, column: 13, scope: !2623)
!2625 = !DILocation(line: 0, scope: !2623)
!2626 = !DILocation(line: 0, scope: !2440)
!2627 = !DILocation(line: 247, column: 8, scope: !2623)
!2628 = !DILocation(line: 248, column: 10, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 248, column: 7)
!2630 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 247, column: 8)
!2631 = !DILocation(line: 248, column: 18, scope: !2629)
!2632 = !DILocation(line: 248, column: 7, scope: !2629)
!2633 = !DILocation(line: 248, column: 7, scope: !2630)
!2634 = !DILocation(line: 247, column: 42, scope: !2630)
!2635 = !DILocation(line: 247, column: 8, scope: !2630)
!2636 = distinct !{!2636, !2627, !2637}
!2637 = !DILocation(line: 249, column: 5, scope: !2623)
!2638 = !DILocation(line: 252, column: 14, scope: !2449)
!2639 = !DILocation(line: 252, column: 23, scope: !2449)
!2640 = !DILocation(line: 252, column: 17, scope: !2449)
!2641 = !DILocation(line: 252, column: 12, scope: !2440)
!2642 = !DILocation(line: 258, column: 24, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 258, column: 5)
!2644 = !DILocation(line: 258, column: 10, scope: !2643)
!2645 = !DILocation(line: 0, scope: !2643)
!2646 = !DILocation(line: 0, scope: !2448)
!2647 = !DILocation(line: 258, column: 5, scope: !2643)
!2648 = !DILocation(line: 260, column: 18, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 260, column: 11)
!2650 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 258, column: 5)
!2651 = !DILocation(line: 260, column: 11, scope: !2649)
!2652 = !DILocation(line: 260, column: 11, scope: !2650)
!2653 = !DILocation(line: 259, column: 25, scope: !2650)
!2654 = !DILocation(line: 258, column: 5, scope: !2650)
!2655 = distinct !{!2655, !2647, !2656}
!2656 = !DILocation(line: 261, column: 9, scope: !2643)
!2657 = !DILocation(line: 262, column: 9, scope: !2448)
!2658 = !DILocation(line: 264, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 263, column: 7)
!2660 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 262, column: 9)
!2661 = !DILocation(line: 265, column: 24, scope: !2659)
!2662 = !DILocation(line: 266, column: 21, scope: !2659)
!2663 = !DILocation(line: 266, column: 31, scope: !2659)
!2664 = !DILocation(line: 267, column: 7, scope: !2659)
!2665 = !DILocation(line: 268, column: 5, scope: !2448)
!2666 = !DILocation(line: 269, column: 15, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 269, column: 9)
!2668 = !DILocation(line: 269, column: 9, scope: !2667)
!2669 = !DILocation(line: 269, column: 9, scope: !2448)
!2670 = !DILocation(line: 270, column: 60, scope: !2667)
!2671 = !DILocation(line: 270, column: 33, scope: !2667)
!2672 = !DILocation(line: 270, column: 52, scope: !2667)
!2673 = !DILocation(line: 270, column: 7, scope: !2667)
!2674 = !DILocation(line: 271, column: 20, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 271, column: 14)
!2676 = !DILocation(line: 271, column: 14, scope: !2675)
!2677 = !DILocation(line: 271, column: 14, scope: !2667)
!2678 = !DILocation(line: 272, column: 38, scope: !2675)
!2679 = !DILocation(line: 272, column: 23, scope: !2675)
!2680 = !DILocation(line: 272, column: 30, scope: !2675)
!2681 = !DILocation(line: 272, column: 7, scope: !2675)
!2682 = !DILocation(line: 273, column: 15, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 273, column: 9)
!2684 = !DILocation(line: 273, column: 9, scope: !2683)
!2685 = !DILocation(line: 273, column: 9, scope: !2448)
!2686 = !DILocation(line: 274, column: 60, scope: !2683)
!2687 = !DILocation(line: 274, column: 33, scope: !2683)
!2688 = !DILocation(line: 274, column: 52, scope: !2683)
!2689 = !DILocation(line: 274, column: 7, scope: !2683)
!2690 = !DILocation(line: 275, column: 11, scope: !2448)
!2691 = !DILocation(line: 275, column: 20, scope: !2448)
!2692 = !DILocation(line: 276, column: 30, scope: !2448)
!2693 = !DILocation(line: 277, column: 30, scope: !2448)
!2694 = !DILocation(line: 278, column: 3, scope: !2448)
!2695 = !DILocation(line: 280, column: 3, scope: !2449)
!2696 = !DILocation(line: 226, column: 3, scope: !2445)
!2697 = distinct !{!2697, !2592, !2698}
!2698 = !DILocation(line: 284, column: 5, scope: !2446)
!2699 = !DILocation(line: 285, column: 8, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 285, column: 3)
!2701 = !DILocation(line: 0, scope: !2700)
!2702 = !DILocation(line: 285, column: 3, scope: !2700)
!2703 = !DILocation(line: 290, column: 24, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 290, column: 11)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 286, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 285, column: 3)
!2707 = !DILocation(line: 290, column: 11, scope: !2704)
!2708 = !DILocation(line: 291, column: 4, scope: !2704)
!2709 = !DILocation(line: 291, column: 14, scope: !2704)
!2710 = !DILocation(line: 291, column: 8, scope: !2704)
!2711 = !DILocation(line: 290, column: 11, scope: !2705)
!2712 = !DILocation(line: 293, column: 4, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 292, column: 2)
!2714 = !DILocation(line: 294, column: 28, scope: !2713)
!2715 = !DILocation(line: 295, column: 4, scope: !2713)
!2716 = !DILocation(line: 296, column: 2, scope: !2713)
!2717 = !DILocation(line: 297, column: 13, scope: !2705)
!2718 = !DILocation(line: 297, column: 17, scope: !2705)
!2719 = !DILocation(line: 285, column: 48, scope: !2706)
!2720 = !DILocation(line: 285, column: 3, scope: !2706)
!2721 = distinct !{!2721, !2702, !2722}
!2722 = !DILocation(line: 298, column: 5, scope: !2700)
!2723 = !DILocation(line: 305, column: 3, scope: !2418)
!2724 = !DILocation(line: 307, column: 3, scope: !2418)
!2725 = distinct !DISubprogram(name: "cgraph_can_remove_if_no_direct_calls_p", scope: !250, file: !250, line: 724, type: !2408, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2726 = !{!2727}
!2727 = !DILocalVariable(name: "node", arg: 1, scope: !2725, file: !250, line: 724, type: !466)
!2728 = !DILocation(line: 0, scope: !2725)
!2729 = !DILocation(line: 726, column: 18, scope: !2725)
!2730 = !DILocation(line: 726, column: 12, scope: !2725)
!2731 = !DILocation(line: 727, column: 6, scope: !2725)
!2732 = !DILocation(line: 727, column: 10, scope: !2725)
!2733 = !DILocation(line: 727, column: 35, scope: !2725)
!2734 = !DILocation(line: 727, column: 51, scope: !2725)
!2735 = !DILocation(line: 726, column: 3, scope: !2725)
!2736 = distinct !DISubprogram(name: "update_inlined_to_pointer", scope: !3, file: !3, line: 104, type: !2737, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2739)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !466, !466}
!2739 = !{!2740, !2741, !2742}
!2740 = !DILocalVariable(name: "node", arg: 1, scope: !2736, file: !3, line: 104, type: !466)
!2741 = !DILocalVariable(name: "inlined_to", arg: 2, scope: !2736, file: !3, line: 104, type: !466)
!2742 = !DILocalVariable(name: "e", scope: !2736, file: !3, line: 106, type: !1528)
!2743 = !DILocation(line: 0, scope: !2736)
!2744 = !DILocation(line: 107, column: 18, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 107, column: 3)
!2746 = !DILocation(line: 107, column: 8, scope: !2745)
!2747 = !DILocation(line: 0, scope: !2745)
!2748 = !DILocation(line: 107, column: 3, scope: !2745)
!2749 = !DILocation(line: 108, column: 12, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 108, column: 9)
!2751 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 107, column: 3)
!2752 = !DILocation(line: 108, column: 27, scope: !2750)
!2753 = !DILocation(line: 108, column: 9, scope: !2750)
!2754 = !DILocation(line: 108, column: 9, scope: !2751)
!2755 = !DILocation(line: 110, column: 38, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 109, column: 7)
!2757 = !DILocation(line: 111, column: 32, scope: !2756)
!2758 = !DILocation(line: 111, column: 2, scope: !2756)
!2759 = !DILocation(line: 112, column: 7, scope: !2756)
!2760 = !DILocation(line: 107, column: 37, scope: !2751)
!2761 = !DILocation(line: 107, column: 3, scope: !2751)
!2762 = distinct !{!2762, !2748, !2763}
!2763 = !DILocation(line: 112, column: 7, scope: !2745)
!2764 = !DILocation(line: 113, column: 1, scope: !2736)
!2765 = distinct !DISubprogram(name: "local_function_and_variable_visibility", scope: !3, file: !3, line: 491, type: !1593, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!2766 = !DILocation(line: 493, column: 44, scope: !2765)
!2767 = !DILocation(line: 493, column: 67, scope: !2765)
!2768 = !DILocation(line: 493, column: 63, scope: !2765)
!2769 = !DILocation(line: 493, column: 80, scope: !2765)
!2770 = !DILocation(line: 493, column: 79, scope: !2765)
!2771 = !DILocation(line: 493, column: 10, scope: !2765)
!2772 = !DILocation(line: 493, column: 3, scope: !2765)
!2773 = distinct !DISubprogram(name: "gate_whole_program_function_and_variable_visibility", scope: !3, file: !3, line: 518, type: !1589, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!2774 = !DILocation(line: 520, column: 11, scope: !2773)
!2775 = !DILocation(line: 520, column: 10, scope: !2773)
!2776 = !DILocation(line: 520, column: 3, scope: !2773)
!2777 = distinct !DISubprogram(name: "whole_program_function_and_variable_visibility", scope: !3, file: !3, line: 526, type: !1593, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "node", scope: !2777, file: !3, line: 528, type: !466)
!2780 = !DILocalVariable(name: "vnode", scope: !2777, file: !3, line: 529, type: !1652)
!2781 = !DILocation(line: 531, column: 37, scope: !2777)
!2782 = !DILocation(line: 531, column: 3, scope: !2777)
!2783 = !DILocation(line: 533, column: 8, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 533, column: 3)
!2785 = !DILocation(line: 0, scope: !2784)
!2786 = !DILocation(line: 0, scope: !2777)
!2787 = !DILocation(line: 533, column: 3, scope: !2784)
!2788 = !DILocation(line: 534, column: 22, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 534, column: 9)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 533, column: 3)
!2791 = !DILocation(line: 534, column: 10, scope: !2789)
!2792 = !DILocation(line: 534, column: 41, scope: !2789)
!2793 = !DILocation(line: 534, column: 45, scope: !2789)
!2794 = !DILocation(line: 535, column: 9, scope: !2789)
!2795 = !DILocation(line: 535, column: 24, scope: !2789)
!2796 = !DILocation(line: 535, column: 12, scope: !2789)
!2797 = !DILocation(line: 534, column: 9, scope: !2790)
!2798 = !DILocation(line: 536, column: 7, scope: !2789)
!2799 = !DILocation(line: 533, column: 48, scope: !2790)
!2800 = !DILocation(line: 533, column: 3, scope: !2790)
!2801 = distinct !{!2801, !2787, !2802}
!2802 = !DILocation(line: 536, column: 36, scope: !2784)
!2803 = !DILocation(line: 537, column: 8, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 537, column: 3)
!2805 = !DILocation(line: 0, scope: !2804)
!2806 = !DILocation(line: 537, column: 3, scope: !2804)
!2807 = !DILocation(line: 538, column: 16, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 538, column: 9)
!2809 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 537, column: 3)
!2810 = !DILocation(line: 538, column: 9, scope: !2808)
!2811 = !DILocation(line: 538, column: 35, scope: !2808)
!2812 = !DILocation(line: 538, column: 39, scope: !2808)
!2813 = !DILocation(line: 538, column: 9, scope: !2809)
!2814 = !DILocation(line: 539, column: 7, scope: !2808)
!2815 = !DILocation(line: 537, column: 59, scope: !2809)
!2816 = !DILocation(line: 537, column: 3, scope: !2809)
!2817 = distinct !{!2817, !2806, !2818}
!2818 = !DILocation(line: 539, column: 38, scope: !2804)
!2819 = !DILocation(line: 540, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 540, column: 7)
!2821 = !DILocation(line: 540, column: 7, scope: !2777)
!2822 = !DILocation(line: 542, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 541, column: 5)
!2824 = !DILocation(line: 543, column: 12, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 543, column: 7)
!2826 = !DILocation(line: 0, scope: !2825)
!2827 = !DILocation(line: 543, column: 7, scope: !2825)
!2828 = !DILocation(line: 544, column: 13, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 544, column: 6)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 543, column: 7)
!2831 = !DILocation(line: 544, column: 6, scope: !2829)
!2832 = !DILocation(line: 544, column: 6, scope: !2830)
!2833 = !DILocation(line: 545, column: 13, scope: !2829)
!2834 = !DILocation(line: 545, column: 31, scope: !2829)
!2835 = !DILocation(line: 545, column: 4, scope: !2829)
!2836 = !DILocation(line: 543, column: 63, scope: !2830)
!2837 = !DILocation(line: 543, column: 7, scope: !2830)
!2838 = distinct !{!2838, !2827, !2839}
!2839 = !DILocation(line: 545, column: 56, scope: !2825)
!2840 = !DILocation(line: 546, column: 16, scope: !2823)
!2841 = !DILocation(line: 546, column: 7, scope: !2823)
!2842 = !DILocation(line: 547, column: 5, scope: !2823)
!2843 = !DILocation(line: 548, column: 3, scope: !2777)
!2844 = distinct !DISubprogram(name: "cgraph_node_set_new", scope: !3, file: !3, line: 601, type: !2845, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!2847}
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !250, line: 283, baseType: !1614)
!2848 = !{!2849}
!2849 = !DILocalVariable(name: "new_node_set", scope: !2844, file: !3, line: 603, type: !2847)
!2850 = !DILocation(line: 605, column: 18, scope: !2844)
!2851 = !DILocation(line: 0, scope: !2844)
!2852 = !DILocation(line: 606, column: 27, scope: !2844)
!2853 = !DILocation(line: 606, column: 17, scope: !2844)
!2854 = !DILocation(line: 606, column: 25, scope: !2844)
!2855 = !DILocation(line: 610, column: 17, scope: !2844)
!2856 = !DILocation(line: 610, column: 23, scope: !2844)
!2857 = !DILocation(line: 611, column: 3, scope: !2844)
!2858 = distinct !DISubprogram(name: "hash_cgraph_node_set_element", scope: !3, file: !3, line: 581, type: !1048, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2859)
!2859 = !{!2860, !2861}
!2860 = !DILocalVariable(name: "p", arg: 1, scope: !2858, file: !3, line: 581, type: !1051)
!2861 = !DILocalVariable(name: "element", scope: !2858, file: !3, line: 583, type: !1814)
!2862 = !DILocation(line: 0, scope: !2858)
!2863 = !DILocation(line: 584, column: 10, scope: !2858)
!2864 = !DILocation(line: 584, column: 38, scope: !2858)
!2865 = !DILocation(line: 584, column: 3, scope: !2858)
!2866 = distinct !DISubprogram(name: "eq_cgraph_node_set_element", scope: !3, file: !3, line: 590, type: !1056, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2867 = !{!2868, !2869, !2870, !2871}
!2868 = !DILocalVariable(name: "p1", arg: 1, scope: !2866, file: !3, line: 590, type: !1051)
!2869 = !DILocalVariable(name: "p2", arg: 2, scope: !2866, file: !3, line: 590, type: !1051)
!2870 = !DILocalVariable(name: "e1", scope: !2866, file: !3, line: 592, type: !1814)
!2871 = !DILocalVariable(name: "e2", scope: !2866, file: !3, line: 593, type: !1814)
!2872 = !DILocation(line: 0, scope: !2866)
!2873 = !DILocation(line: 595, column: 14, scope: !2866)
!2874 = !DILocation(line: 595, column: 26, scope: !2866)
!2875 = !DILocation(line: 595, column: 19, scope: !2866)
!2876 = !DILocation(line: 595, column: 3, scope: !2866)
!2877 = distinct !DISubprogram(name: "cgraph_node_set_add", scope: !3, file: !3, line: 617, type: !2878, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2847, !466}
!2880 = !{!2881, !2882, !2883, !2884, !2885}
!2881 = !DILocalVariable(name: "set", arg: 1, scope: !2877, file: !3, line: 617, type: !2847)
!2882 = !DILocalVariable(name: "node", arg: 2, scope: !2877, file: !3, line: 617, type: !466)
!2883 = !DILocalVariable(name: "slot", scope: !2877, file: !3, line: 619, type: !1064)
!2884 = !DILocalVariable(name: "element", scope: !2877, file: !3, line: 620, type: !1808)
!2885 = !DILocalVariable(name: "dummy", scope: !2877, file: !3, line: 621, type: !1810)
!2886 = !DILocation(line: 0, scope: !2877)
!2887 = !DILocation(line: 621, column: 3, scope: !2877)
!2888 = !DILocation(line: 623, column: 9, scope: !2877)
!2889 = !DILocation(line: 623, column: 14, scope: !2877)
!2890 = !DILocation(line: 624, column: 31, scope: !2877)
!2891 = !DILocation(line: 624, column: 10, scope: !2877)
!2892 = !DILocation(line: 626, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 626, column: 7)
!2894 = !DILocation(line: 626, column: 13, scope: !2893)
!2895 = !DILocation(line: 626, column: 7, scope: !2877)
!2896 = !DILocation(line: 629, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 627, column: 5)
!2898 = !DILocation(line: 637, column: 31, scope: !2877)
!2899 = !DILocation(line: 638, column: 12, scope: !2877)
!2900 = !DILocation(line: 638, column: 17, scope: !2877)
!2901 = !DILocation(line: 639, column: 20, scope: !2877)
!2902 = !DILocation(line: 639, column: 12, scope: !2877)
!2903 = !DILocation(line: 639, column: 18, scope: !2877)
!2904 = !DILocation(line: 640, column: 9, scope: !2877)
!2905 = !DILocation(line: 643, column: 3, scope: !2877)
!2906 = !DILocation(line: 644, column: 1, scope: !2877)
!2907 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_index", scope: !250, file: !250, line: 270, type: !2908, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!1631, !2910, !7}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "vec_", arg: 1, scope: !2907, file: !250, line: 270, type: !2910)
!2914 = !DILocalVariable(name: "ix_", arg: 2, scope: !2907, file: !250, line: 270, type: !7)
!2915 = !DILocation(line: 0, scope: !2907)
!2916 = !DILocation(line: 270, column: 1, scope: !2907)
!2917 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_length", scope: !250, file: !250, line: 270, type: !2918, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2920)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!7, !2910}
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "vec_", arg: 1, scope: !2917, file: !250, line: 270, type: !2910)
!2922 = !DILocation(line: 0, scope: !2917)
!2923 = !DILocation(line: 270, column: 1, scope: !2917)
!2924 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_gc_safe_push", scope: !250, file: !250, line: 272, type: !2925, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2929)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!2927, !2928, !1631}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "vec_", arg: 1, scope: !2924, file: !250, line: 272, type: !2928)
!2931 = !DILocalVariable(name: "obj_", arg: 2, scope: !2924, file: !250, line: 272, type: !1631)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocation(line: 272, column: 1, scope: !2924)
!2934 = distinct !DISubprogram(name: "cgraph_node_set_remove", scope: !3, file: !3, line: 649, type: !2878, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2936 = !DILocalVariable(name: "set", arg: 1, scope: !2934, file: !3, line: 649, type: !2847)
!2937 = !DILocalVariable(name: "node", arg: 2, scope: !2934, file: !3, line: 649, type: !466)
!2938 = !DILocalVariable(name: "slot", scope: !2934, file: !3, line: 651, type: !1064)
!2939 = !DILocalVariable(name: "last_slot", scope: !2934, file: !3, line: 651, type: !1064)
!2940 = !DILocalVariable(name: "element", scope: !2934, file: !3, line: 652, type: !1808)
!2941 = !DILocalVariable(name: "last_element", scope: !2934, file: !3, line: 652, type: !1808)
!2942 = !DILocalVariable(name: "last_node", scope: !2934, file: !3, line: 653, type: !466)
!2943 = !DILocalVariable(name: "dummy", scope: !2934, file: !3, line: 654, type: !1810)
!2944 = !DILocation(line: 0, scope: !2934)
!2945 = !DILocation(line: 654, column: 3, scope: !2934)
!2946 = !DILocation(line: 656, column: 9, scope: !2934)
!2947 = !DILocation(line: 656, column: 14, scope: !2934)
!2948 = !DILocation(line: 657, column: 31, scope: !2934)
!2949 = !DILocation(line: 657, column: 10, scope: !2934)
!2950 = !DILocation(line: 658, column: 12, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 658, column: 7)
!2952 = !DILocation(line: 658, column: 7, scope: !2934)
!2953 = !DILocation(line: 661, column: 39, scope: !2934)
!2954 = !DILocation(line: 662, column: 3, scope: !2934)
!2955 = !DILocation(line: 667, column: 15, scope: !2934)
!2956 = !DILocation(line: 668, column: 17, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 668, column: 7)
!2958 = !DILocation(line: 668, column: 7, scope: !2934)
!2959 = !DILocation(line: 670, column: 18, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 669, column: 5)
!2961 = !DILocation(line: 671, column: 40, scope: !2960)
!2962 = !DILocation(line: 671, column: 19, scope: !2960)
!2963 = !DILocation(line: 672, column: 48, scope: !2960)
!2964 = !DILocation(line: 673, column: 7, scope: !2960)
!2965 = !DILocation(line: 676, column: 38, scope: !2960)
!2966 = !DILocation(line: 676, column: 21, scope: !2960)
!2967 = !DILocation(line: 676, column: 27, scope: !2960)
!2968 = !DILocation(line: 677, column: 7, scope: !2960)
!2969 = !DILocation(line: 679, column: 5, scope: !2960)
!2970 = !DILocation(line: 682, column: 25, scope: !2934)
!2971 = !DILocation(line: 682, column: 3, scope: !2934)
!2972 = !DILocation(line: 683, column: 13, scope: !2934)
!2973 = !DILocation(line: 683, column: 3, scope: !2934)
!2974 = !DILocation(line: 684, column: 1, scope: !2934)
!2975 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_pop", scope: !250, file: !250, line: 270, type: !2976, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!1631, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "vec_", arg: 1, scope: !2975, file: !250, line: 270, type: !2978)
!2981 = !DILocalVariable(name: "obj_", scope: !2975, file: !250, line: 270, type: !1631)
!2982 = !DILocation(line: 0, scope: !2975)
!2983 = !DILocation(line: 270, column: 1, scope: !2975)
!2984 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_replace", scope: !250, file: !250, line: 270, type: !2985, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!1631, !2978, !7, !1631}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "vec_", arg: 1, scope: !2984, file: !250, line: 270, type: !2978)
!2989 = !DILocalVariable(name: "ix_", arg: 2, scope: !2984, file: !250, line: 270, type: !7)
!2990 = !DILocalVariable(name: "obj_", arg: 3, scope: !2984, file: !250, line: 270, type: !1631)
!2991 = !DILocalVariable(name: "old_obj_", scope: !2984, file: !250, line: 270, type: !1631)
!2992 = !DILocation(line: 0, scope: !2984)
!2993 = !DILocation(line: 270, column: 1, scope: !2984)
!2994 = distinct !DISubprogram(name: "cgraph_node_set_find", scope: !3, file: !3, line: 690, type: !2995, scopeLine: 691, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2997, !2847, !466}
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_iterator", file: !250, line: 305, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 301, size: 128, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2998, file: !250, line: 303, baseType: !2847, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2998, file: !250, line: 304, baseType: !7, size: 32, offset: 64)
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008}
!3003 = !DILocalVariable(name: "set", arg: 1, scope: !2994, file: !3, line: 690, type: !2847)
!3004 = !DILocalVariable(name: "node", arg: 2, scope: !2994, file: !3, line: 690, type: !466)
!3005 = !DILocalVariable(name: "slot", scope: !2994, file: !3, line: 692, type: !1064)
!3006 = !DILocalVariable(name: "dummy", scope: !2994, file: !3, line: 693, type: !1810)
!3007 = !DILocalVariable(name: "element", scope: !2994, file: !3, line: 694, type: !1808)
!3008 = !DILocalVariable(name: "csi", scope: !2994, file: !3, line: 695, type: !2997)
!3009 = !DILocation(line: 0, scope: !2994)
!3010 = !DILocation(line: 693, column: 3, scope: !2994)
!3011 = !DILocation(line: 697, column: 9, scope: !2994)
!3012 = !DILocation(line: 697, column: 14, scope: !2994)
!3013 = !DILocation(line: 698, column: 31, scope: !2994)
!3014 = !DILocation(line: 698, column: 10, scope: !2994)
!3015 = !DILocation(line: 699, column: 12, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 699, column: 7)
!3017 = !DILocation(line: 699, column: 7, scope: !2994)
!3018 = !DILocation(line: 700, column: 9, scope: !3016)
!3019 = !DILocation(line: 700, column: 15, scope: !3016)
!3020 = !DILocation(line: 700, column: 5, scope: !3016)
!3021 = !DILocation(line: 703, column: 43, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 702, column: 5)
!3023 = !DILocation(line: 704, column: 7, scope: !3022)
!3024 = !DILocation(line: 706, column: 28, scope: !3022)
!3025 = !DILocation(line: 706, column: 19, scope: !3022)
!3026 = !DILocation(line: 706, column: 11, scope: !3022)
!3027 = !DILocation(line: 706, column: 17, scope: !3022)
!3028 = !DILocation(line: 708, column: 7, scope: !2994)
!3029 = !DILocation(line: 708, column: 11, scope: !2994)
!3030 = !DILocation(line: 711, column: 1, scope: !2994)
!3031 = distinct !DISubprogram(name: "dump_cgraph_node_set", scope: !3, file: !3, line: 716, type: !3032, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !1856, !2847}
!3034 = !{!3035, !3036, !3037, !3038}
!3035 = !DILocalVariable(name: "f", arg: 1, scope: !3031, file: !3, line: 716, type: !1856)
!3036 = !DILocalVariable(name: "set", arg: 2, scope: !3031, file: !3, line: 716, type: !2847)
!3037 = !DILocalVariable(name: "iter", scope: !3031, file: !3, line: 718, type: !2997)
!3038 = !DILocalVariable(name: "node", scope: !3039, file: !3, line: 722, type: !466)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 721, column: 5)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 720, column: 3)
!3041 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 720, column: 3)
!3042 = !DILocation(line: 0, scope: !3031)
!3043 = !DILocation(line: 718, column: 3, scope: !3031)
!3044 = !DILocation(line: 720, column: 15, scope: !3041)
!3045 = !DILocation(line: 0, scope: !3040)
!3046 = !DILocation(line: 720, column: 8, scope: !3041)
!3047 = !DILocation(line: 720, column: 33, scope: !3040)
!3048 = !DILocation(line: 720, column: 32, scope: !3040)
!3049 = !DILocation(line: 720, column: 3, scope: !3041)
!3050 = !DILocation(line: 722, column: 34, scope: !3039)
!3051 = !DILocation(line: 0, scope: !3039)
!3052 = !DILocation(line: 723, column: 7, scope: !3039)
!3053 = !DILocation(line: 720, column: 51, scope: !3040)
!3054 = !DILocation(line: 720, column: 3, scope: !3040)
!3055 = distinct !{!3055, !3049, !3056}
!3056 = !DILocation(line: 724, column: 5, scope: !3041)
!3057 = !DILocation(line: 725, column: 1, scope: !3031)
!3058 = distinct !DISubprogram(name: "csi_start", scope: !250, file: !250, line: 668, type: !3059, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!2997, !2847}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "set", arg: 1, scope: !3058, file: !250, line: 668, type: !2847)
!3063 = !DILocalVariable(name: "csi", scope: !3058, file: !250, line: 670, type: !2997)
!3064 = !DILocation(line: 0, scope: !3058)
!3065 = !DILocation(line: 672, column: 7, scope: !3058)
!3066 = !DILocation(line: 672, column: 11, scope: !3058)
!3067 = !DILocation(line: 673, column: 7, scope: !3058)
!3068 = !DILocation(line: 673, column: 13, scope: !3058)
!3069 = !DILocation(line: 674, column: 3, scope: !3058)
!3070 = distinct !DISubprogram(name: "csi_end_p", scope: !250, file: !250, line: 647, type: !3071, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!457, !2997}
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "csi", arg: 1, scope: !3070, file: !250, line: 647, type: !2997)
!3075 = !DILocation(line: 649, column: 23, scope: !3070)
!3076 = !DILocation(line: 649, column: 20, scope: !3070)
!3077 = !DILocation(line: 649, column: 10, scope: !3070)
!3078 = !DILocation(line: 649, column: 3, scope: !3070)
!3079 = distinct !DISubprogram(name: "csi_node", scope: !250, file: !250, line: 661, type: !3080, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!466, !2997}
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "csi", arg: 1, scope: !3079, file: !250, line: 661, type: !2997)
!3084 = !DILocation(line: 663, column: 10, scope: !3079)
!3085 = !DILocation(line: 663, column: 3, scope: !3079)
!3086 = distinct !DISubprogram(name: "csi_next", scope: !250, file: !250, line: 654, type: !3087, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3090)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !3089}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "csi", arg: 1, scope: !3086, file: !250, line: 654, type: !3089)
!3092 = !DILocation(line: 0, scope: !3086)
!3093 = !DILocation(line: 656, column: 8, scope: !3086)
!3094 = !DILocation(line: 656, column: 13, scope: !3086)
!3095 = !DILocation(line: 657, column: 1, scope: !3086)
!3096 = distinct !DISubprogram(name: "debug_cgraph_node_set", scope: !3, file: !3, line: 730, type: !3097, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !2847}
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "set", arg: 1, scope: !3096, file: !3, line: 730, type: !2847)
!3101 = !DILocation(line: 0, scope: !3096)
!3102 = !DILocation(line: 732, column: 25, scope: !3096)
!3103 = !DILocation(line: 732, column: 3, scope: !3096)
!3104 = !DILocation(line: 733, column: 1, scope: !3096)
!3105 = distinct !DISubprogram(name: "function_and_variable_visibility", scope: !3, file: !3, line: 362, type: !3106, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!7, !457}
!3108 = !{!3109, !3110, !3111, !3112, !3118}
!3109 = !DILocalVariable(name: "whole_program", arg: 1, scope: !3105, file: !3, line: 362, type: !457)
!3110 = !DILocalVariable(name: "node", scope: !3105, file: !3, line: 364, type: !466)
!3111 = !DILocalVariable(name: "vnode", scope: !3105, file: !3, line: 365, type: !1652)
!3112 = !DILocalVariable(name: "n", scope: !3113, file: !3, line: 380, type: !466)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 379, column: 2)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 378, column: 11)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 368, column: 5)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 367, column: 3)
!3117 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 367, column: 3)
!3118 = !DILocalVariable(name: "next", scope: !3113, file: !3, line: 380, type: !466)
!3119 = !DILocation(line: 0, scope: !3105)
!3120 = !DILocation(line: 0, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 403, column: 2)
!3122 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 401, column: 11)
!3123 = !DILocation(line: 367, column: 8, scope: !3117)
!3124 = !DILocation(line: 0, scope: !3117)
!3125 = !DILocation(line: 367, column: 3, scope: !3117)
!3126 = !DILocation(line: 373, column: 11, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 373, column: 11)
!3128 = !DILocation(line: 373, column: 36, scope: !3127)
!3129 = !DILocation(line: 373, column: 40, scope: !3127)
!3130 = !DILocation(line: 373, column: 11, scope: !3115)
!3131 = !DILocation(line: 374, column: 34, scope: !3127)
!3132 = !DILocation(line: 374, column: 9, scope: !3127)
!3133 = !DILocation(line: 378, column: 17, scope: !3114)
!3134 = !DILocation(line: 378, column: 11, scope: !3114)
!3135 = !DILocation(line: 378, column: 35, scope: !3114)
!3136 = !DILocation(line: 378, column: 38, scope: !3114)
!3137 = !DILocation(line: 378, column: 11, scope: !3115)
!3138 = !DILocation(line: 381, column: 4, scope: !3113)
!3139 = !DILocation(line: 385, column: 8, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 382, column: 6)
!3141 = !DILocation(line: 0, scope: !3113)
!3142 = !DILocation(line: 386, column: 18, scope: !3140)
!3143 = !DILocation(line: 387, column: 29, scope: !3140)
!3144 = !DILocation(line: 390, column: 13, scope: !3113)
!3145 = !DILocation(line: 389, column: 6, scope: !3140)
!3146 = distinct !{!3146, !3138, !3147}
!3147 = !DILocation(line: 390, column: 20, scope: !3113)
!3148 = !DILocation(line: 0, scope: !3140)
!3149 = !DILocation(line: 392, column: 7, scope: !3115)
!3150 = !DILocation(line: 394, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 394, column: 11)
!3152 = !DILocation(line: 394, column: 11, scope: !3115)
!3153 = !DILocation(line: 396, column: 4, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 395, column: 9)
!3155 = !DILocation(line: 397, column: 16, scope: !3154)
!3156 = !DILocation(line: 397, column: 35, scope: !3154)
!3157 = !DILocation(line: 398, column: 2, scope: !3154)
!3158 = !DILocation(line: 400, column: 14, scope: !3151)
!3159 = !DILocation(line: 400, column: 33, scope: !3151)
!3160 = !DILocation(line: 401, column: 24, scope: !3122)
!3161 = !DILocation(line: 401, column: 12, scope: !3122)
!3162 = !DILocation(line: 401, column: 43, scope: !3122)
!3163 = !DILocation(line: 401, column: 52, scope: !3122)
!3164 = !DILocation(line: 401, column: 46, scope: !3122)
!3165 = !DILocation(line: 402, column: 4, scope: !3122)
!3166 = !DILocation(line: 402, column: 8, scope: !3122)
!3167 = !DILocation(line: 401, column: 11, scope: !3115)
!3168 = !DILocation(line: 404, column: 4, scope: !3121)
!3169 = !DILocation(line: 405, column: 34, scope: !3121)
!3170 = !DILocation(line: 405, column: 4, scope: !3121)
!3171 = !DILocation(line: 406, column: 2, scope: !3121)
!3172 = !DILocation(line: 407, column: 28, scope: !3115)
!3173 = !DILocation(line: 408, column: 7, scope: !3115)
!3174 = !DILocation(line: 408, column: 16, scope: !3115)
!3175 = !DILocation(line: 408, column: 10, scope: !3115)
!3176 = !DILocation(line: 409, column: 7, scope: !3115)
!3177 = !DILocation(line: 409, column: 11, scope: !3115)
!3178 = !DILocation(line: 410, column: 7, scope: !3115)
!3179 = !DILocation(line: 410, column: 23, scope: !3115)
!3180 = !DILocation(line: 410, column: 10, scope: !3115)
!3181 = !DILocation(line: 0, scope: !3115)
!3182 = !DILocation(line: 407, column: 25, scope: !3115)
!3183 = !DILocation(line: 367, column: 48, scope: !3116)
!3184 = !DILocation(line: 367, column: 3, scope: !3116)
!3185 = distinct !{!3185, !3125, !3186}
!3186 = !DILocation(line: 411, column: 5, scope: !3117)
!3187 = !DILocation(line: 412, column: 8, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 412, column: 3)
!3189 = !DILocation(line: 0, scope: !3188)
!3190 = !DILocation(line: 412, column: 3, scope: !3188)
!3191 = !DILocation(line: 415, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 413, column: 5)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 412, column: 3)
!3194 = !DILocation(line: 430, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 430, column: 11)
!3196 = !DILocation(line: 0, scope: !3195)
!3197 = !DILocation(line: 431, column: 4, scope: !3195)
!3198 = !DILocation(line: 431, column: 10, scope: !3195)
!3199 = !DILocation(line: 431, column: 36, scope: !3195)
!3200 = !DILocation(line: 431, column: 39, scope: !3195)
!3201 = !DILocation(line: 432, column: 8, scope: !3195)
!3202 = !DILocation(line: 432, column: 12, scope: !3195)
!3203 = !DILocation(line: 433, column: 5, scope: !3195)
!3204 = !DILocation(line: 433, column: 8, scope: !3195)
!3205 = !DILocation(line: 433, column: 38, scope: !3195)
!3206 = !DILocation(line: 433, column: 35, scope: !3195)
!3207 = !DILocation(line: 434, column: 8, scope: !3195)
!3208 = !DILocation(line: 434, column: 11, scope: !3195)
!3209 = !DILocation(line: 435, column: 8, scope: !3195)
!3210 = !DILocation(line: 435, column: 11, scope: !3195)
!3211 = !DILocation(line: 435, column: 43, scope: !3195)
!3212 = !DILocation(line: 436, column: 8, scope: !3195)
!3213 = !DILocation(line: 436, column: 14, scope: !3195)
!3214 = !DILocation(line: 430, column: 11, scope: !3192)
!3215 = !DILocation(line: 438, column: 28, scope: !3195)
!3216 = !DILocation(line: 438, column: 2, scope: !3195)
!3217 = !DILocation(line: 412, column: 53, scope: !3193)
!3218 = !DILocation(line: 412, column: 3, scope: !3193)
!3219 = distinct !{!3219, !3190, !3220}
!3220 = !DILocation(line: 439, column: 5, scope: !3188)
!3221 = !DILocation(line: 440, column: 8, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 440, column: 3)
!3223 = !DILocation(line: 0, scope: !3222)
!3224 = !DILocation(line: 440, column: 3, scope: !3222)
!3225 = !DILocation(line: 442, column: 19, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 442, column: 11)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 441, column: 5)
!3228 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 440, column: 3)
!3229 = !DILocation(line: 442, column: 12, scope: !3226)
!3230 = !DILocation(line: 442, column: 11, scope: !3227)
!3231 = !DILocation(line: 444, column: 18, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 444, column: 11)
!3233 = !DILocation(line: 444, column: 11, scope: !3232)
!3234 = !DILocation(line: 445, column: 4, scope: !3232)
!3235 = !DILocation(line: 445, column: 8, scope: !3232)
!3236 = !DILocation(line: 445, column: 34, scope: !3232)
!3237 = !DILocation(line: 445, column: 37, scope: !3232)
!3238 = !DILocation(line: 446, column: 4, scope: !3232)
!3239 = !DILocation(line: 454, column: 28, scope: !3232)
!3240 = !DILocation(line: 454, column: 2, scope: !3232)
!3241 = !DILocation(line: 456, column: 35, scope: !3232)
!3242 = !DILocation(line: 0, scope: !3232)
!3243 = !DILocation(line: 457, column: 19, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 457, column: 11)
!3245 = !DILocation(line: 457, column: 12, scope: !3244)
!3246 = !DILocation(line: 457, column: 11, scope: !3227)
!3247 = !DILocation(line: 459, column: 4, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 458, column: 2)
!3249 = !DILocation(line: 460, column: 35, scope: !3248)
!3250 = !DILocation(line: 460, column: 4, scope: !3248)
!3251 = !DILocation(line: 461, column: 2, scope: !3248)
!3252 = !DILocation(line: 462, column: 6, scope: !3227)
!3253 = !DILocation(line: 440, column: 59, scope: !3228)
!3254 = !DILocation(line: 440, column: 3, scope: !3228)
!3255 = distinct !{!3255, !3224, !3256}
!3256 = !DILocation(line: 463, column: 5, scope: !3222)
!3257 = !DILocation(line: 465, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 465, column: 7)
!3259 = !DILocation(line: 451, column: 8, scope: !3232)
!3260 = !DILocation(line: 451, column: 11, scope: !3232)
!3261 = !DILocation(line: 452, column: 8, scope: !3232)
!3262 = !DILocation(line: 453, column: 8, scope: !3232)
!3263 = !DILocation(line: 452, column: 11, scope: !3232)
!3264 = !DILocation(line: 444, column: 11, scope: !3227)
!3265 = !DILocation(line: 0, scope: !3248)
!3266 = !DILocation(line: 465, column: 7, scope: !3105)
!3267 = !DILocation(line: 467, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 466, column: 5)
!3269 = !DILocation(line: 468, column: 12, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 468, column: 7)
!3271 = !DILocation(line: 0, scope: !3270)
!3272 = !DILocation(line: 468, column: 7, scope: !3270)
!3273 = !DILocation(line: 469, column: 18, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 469, column: 6)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 468, column: 7)
!3276 = !DILocation(line: 469, column: 6, scope: !3274)
!3277 = !DILocation(line: 469, column: 6, scope: !3275)
!3278 = !DILocation(line: 470, column: 13, scope: !3274)
!3279 = !DILocation(line: 470, column: 31, scope: !3274)
!3280 = !DILocation(line: 470, column: 4, scope: !3274)
!3281 = !DILocation(line: 468, column: 52, scope: !3275)
!3282 = !DILocation(line: 468, column: 7, scope: !3275)
!3283 = distinct !{!3283, !3272, !3284}
!3284 = !DILocation(line: 470, column: 54, scope: !3270)
!3285 = !DILocation(line: 471, column: 16, scope: !3268)
!3286 = !DILocation(line: 471, column: 7, scope: !3268)
!3287 = !DILocation(line: 472, column: 16, scope: !3268)
!3288 = !DILocation(line: 472, column: 7, scope: !3268)
!3289 = !DILocation(line: 473, column: 12, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 473, column: 7)
!3291 = !DILocation(line: 0, scope: !3290)
!3292 = !DILocation(line: 473, column: 7, scope: !3290)
!3293 = !DILocation(line: 474, column: 18, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 474, column: 6)
!3295 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 473, column: 7)
!3296 = !DILocation(line: 474, column: 6, scope: !3294)
!3297 = !DILocation(line: 474, column: 6, scope: !3295)
!3298 = !DILocation(line: 475, column: 13, scope: !3294)
!3299 = !DILocation(line: 475, column: 31, scope: !3294)
!3300 = !DILocation(line: 475, column: 4, scope: !3294)
!3301 = !DILocation(line: 473, column: 52, scope: !3295)
!3302 = !DILocation(line: 473, column: 7, scope: !3295)
!3303 = distinct !{!3303, !3292, !3304}
!3304 = !DILocation(line: 475, column: 54, scope: !3290)
!3305 = !DILocation(line: 476, column: 16, scope: !3268)
!3306 = !DILocation(line: 476, column: 7, scope: !3268)
!3307 = !DILocation(line: 477, column: 16, scope: !3268)
!3308 = !DILocation(line: 477, column: 7, scope: !3268)
!3309 = !DILocation(line: 478, column: 12, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 478, column: 7)
!3311 = !DILocation(line: 0, scope: !3310)
!3312 = !DILocation(line: 478, column: 7, scope: !3310)
!3313 = !DILocation(line: 479, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 479, column: 6)
!3315 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 478, column: 7)
!3316 = !DILocation(line: 479, column: 6, scope: !3314)
!3317 = !DILocation(line: 479, column: 6, scope: !3315)
!3318 = !DILocation(line: 480, column: 13, scope: !3314)
!3319 = !DILocation(line: 480, column: 31, scope: !3314)
!3320 = !DILocation(line: 480, column: 4, scope: !3314)
!3321 = !DILocation(line: 478, column: 63, scope: !3315)
!3322 = !DILocation(line: 478, column: 7, scope: !3315)
!3323 = distinct !{!3323, !3312, !3324}
!3324 = !DILocation(line: 480, column: 56, scope: !3310)
!3325 = !DILocation(line: 481, column: 16, scope: !3268)
!3326 = !DILocation(line: 481, column: 7, scope: !3268)
!3327 = !DILocation(line: 482, column: 5, scope: !3268)
!3328 = !DILocation(line: 483, column: 31, scope: !3105)
!3329 = !DILocation(line: 484, column: 3, scope: !3105)
!3330 = distinct !DISubprogram(name: "cgraph_externally_visible_p", scope: !3, file: !3, line: 311, type: !3331, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!457, !466, !457}
!3333 = !{!3334, !3335, !3336}
!3334 = !DILocalVariable(name: "node", arg: 1, scope: !3330, file: !3, line: 311, type: !466)
!3335 = !DILocalVariable(name: "whole_program", arg: 2, scope: !3330, file: !3, line: 311, type: !457)
!3336 = !DILocalVariable(name: "next", scope: !3337, file: !3, line: 331, type: !466)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 330, column: 2)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 329, column: 11)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 326, column: 5)
!3340 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 325, column: 7)
!3341 = !DILocation(line: 0, scope: !3330)
!3342 = !DILocation(line: 313, column: 20, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 313, column: 7)
!3344 = !DILocation(line: 313, column: 8, scope: !3343)
!3345 = !DILocation(line: 313, column: 7, scope: !3330)
!3346 = !DILocation(line: 315, column: 8, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 315, column: 7)
!3348 = !DILocation(line: 316, column: 7, scope: !3347)
!3349 = !DILocation(line: 316, column: 12, scope: !3347)
!3350 = !DILocation(line: 316, column: 37, scope: !3347)
!3351 = !DILocation(line: 316, column: 40, scope: !3347)
!3352 = !DILocation(line: 315, column: 7, scope: !3330)
!3353 = !DILocation(line: 318, column: 8, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 318, column: 7)
!3355 = !DILocation(line: 318, column: 7, scope: !3330)
!3356 = !DILocation(line: 320, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 320, column: 7)
!3358 = !DILocation(line: 320, column: 7, scope: !3330)
!3359 = !DILocation(line: 325, column: 7, scope: !3330)
!3360 = !DILocation(line: 327, column: 17, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 327, column: 11)
!3362 = !DILocation(line: 327, column: 11, scope: !3361)
!3363 = !DILocation(line: 327, column: 31, scope: !3361)
!3364 = !DILocation(line: 327, column: 41, scope: !3361)
!3365 = !DILocation(line: 327, column: 35, scope: !3361)
!3366 = !DILocation(line: 327, column: 11, scope: !3339)
!3367 = !DILocation(line: 329, column: 17, scope: !3338)
!3368 = !DILocation(line: 329, column: 11, scope: !3338)
!3369 = !DILocation(line: 329, column: 11, scope: !3339)
!3370 = !DILocation(line: 336, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 336, column: 4)
!3372 = !DILocation(line: 0, scope: !3371)
!3373 = !DILocation(line: 0, scope: !3337)
!3374 = !DILocation(line: 337, column: 14, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 336, column: 4)
!3376 = !DILocation(line: 336, column: 4, scope: !3371)
!3377 = !DILocation(line: 339, column: 16, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 339, column: 10)
!3379 = !DILocation(line: 339, column: 10, scope: !3378)
!3380 = !DILocation(line: 339, column: 30, scope: !3378)
!3381 = !DILocation(line: 339, column: 40, scope: !3378)
!3382 = !DILocation(line: 339, column: 34, scope: !3378)
!3383 = !DILocation(line: 339, column: 10, scope: !3375)
!3384 = !DILocation(line: 336, column: 4, scope: !3375)
!3385 = distinct !{!3385, !3376, !3386}
!3386 = !DILocation(line: 340, column: 15, scope: !3371)
!3387 = !DILocation(line: 343, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 343, column: 7)
!3389 = !DILocation(line: 343, column: 7, scope: !3330)
!3390 = !DILocation(line: 345, column: 47, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 345, column: 7)
!3392 = !DILocation(line: 345, column: 7, scope: !3391)
!3393 = !DILocation(line: 348, column: 1, scope: !3330)
!3394 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_gc_reserve", scope: !250, file: !250, line: 272, type: !3395, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!458, !2928, !458}
!3397 = !{!3398, !3399, !3400}
!3398 = !DILocalVariable(name: "vec_", arg: 1, scope: !3394, file: !250, line: 272, type: !2928)
!3399 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3394, file: !250, line: 272, type: !458)
!3400 = !DILocalVariable(name: "extend", scope: !3394, file: !250, line: 272, type: !458)
!3401 = !DILocation(line: 0, scope: !3394)
!3402 = !DILocation(line: 272, column: 1, scope: !3394)
!3403 = !DILocation(line: 272, column: 1, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3394, file: !250, line: 272, column: 1)
!3405 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_quick_push", scope: !250, file: !250, line: 270, type: !3406, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!2927, !2978, !1631}
!3408 = !{!3409, !3410, !3411}
!3409 = !DILocalVariable(name: "vec_", arg: 1, scope: !3405, file: !250, line: 270, type: !2978)
!3410 = !DILocalVariable(name: "obj_", arg: 2, scope: !3405, file: !250, line: 270, type: !1631)
!3411 = !DILocalVariable(name: "slot_", scope: !3405, file: !250, line: 270, type: !2927)
!3412 = !DILocation(line: 0, scope: !3405)
!3413 = !DILocation(line: 270, column: 1, scope: !3405)
!3414 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_space", scope: !250, file: !250, line: 270, type: !3415, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!458, !2978, !458}
!3417 = !{!3418, !3419}
!3418 = !DILocalVariable(name: "vec_", arg: 1, scope: !3414, file: !250, line: 270, type: !2978)
!3419 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3414, file: !250, line: 270, type: !458)
!3420 = !DILocation(line: 0, scope: !3414)
!3421 = !DILocation(line: 270, column: 1, scope: !3414)
