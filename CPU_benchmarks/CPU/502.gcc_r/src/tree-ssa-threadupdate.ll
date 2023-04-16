; ModuleID = 'tree-ssa-threadupdate.bc'
source_filename = "tree-ssa-threadupdate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
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
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.thread_stats_d = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.local_info = type { %struct.basic_block_def*, %struct.basic_block_def*, i8 }
%struct.redirection_data = type { %struct.basic_block_def*, %struct.edge_def*, %struct.el*, i8 }
%struct.el = type { %struct.edge_def*, %struct.el* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [24 x i8] c"tree-ssa-threadupdate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@threaded_edges = internal global %struct.VEC_edge_heap* null, align 8, !dbg !0
@thread_stats = common dso_local global %struct.thread_stats_d zeroinitializer, align 8, !dbg !1876
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumps threaded\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@redirection_data = internal unnamed_addr global %struct.htab* null, align 8, !dbg !1881
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"  Threaded jump %d --> %d to %d\0A\00", align 1
@mfb_kj_edge = external dso_local local_unnamed_addr global %struct.edge_def*, align 8
@dbds_ce_stop = internal unnamed_addr global %struct.basic_block_def* null, align 8, !dbg !1883

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1902, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1903, metadata !DIExpression()), !dbg !1904
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1905
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1906
  ret i32 %call, !dbg !1907
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1908 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1912
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1913
  ret i32 %call, !dbg !1914
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1915 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1970, metadata !DIExpression()), !dbg !1971
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1972
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1972
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1972
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1972
  %cmp = icmp uge i8* %0, %1, !dbg !1972
  %conv1 = zext i1 %cmp to i64, !dbg !1972
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1972
  %tobool = icmp eq i64 %expval, 0, !dbg !1972
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1972

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1972
  br label %cond.end, !dbg !1972

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1972
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1972
  %2 = load i8, i8* %0, align 1, !dbg !1972
  %conv3 = zext i8 %2 to i32, !dbg !1972
  br label %cond.end, !dbg !1972

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1972
  ret i32 %cond, !dbg !1973
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1976, metadata !DIExpression()), !dbg !1977
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1978
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1978
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1978
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1978
  %cmp = icmp uge i8* %0, %1, !dbg !1978
  %conv1 = zext i1 %cmp to i64, !dbg !1978
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1978
  %tobool = icmp eq i64 %expval, 0, !dbg !1978
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1978

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1978
  br label %cond.end, !dbg !1978

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1978
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1978
  %2 = load i8, i8* %0, align 1, !dbg !1978
  %conv3 = zext i8 %2 to i32, !dbg !1978
  br label %cond.end, !dbg !1978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1978
  ret i32 %cond, !dbg !1979
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1980 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1981
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1981
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1981
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1981
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1981
  %cmp = icmp uge i8* %1, %2, !dbg !1981
  %conv1 = zext i1 %cmp to i64, !dbg !1981
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1981
  %tobool = icmp eq i64 %expval, 0, !dbg !1981
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1981

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1981
  br label %cond.end, !dbg !1981

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1981
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1981
  %3 = load i8, i8* %1, align 1, !dbg !1981
  %conv3 = zext i8 %3 to i32, !dbg !1981
  br label %cond.end, !dbg !1981

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1981
  ret i32 %cond, !dbg !1982
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1987, metadata !DIExpression()), !dbg !1988
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1989
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1990
  ret i32 %call, !dbg !1991
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1992 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1997, metadata !DIExpression()), !dbg !1998
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1999
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1999
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1999
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1999
  %cmp = icmp uge i8* %0, %1, !dbg !1999
  %conv1 = zext i1 %cmp to i64, !dbg !1999
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1999
  %tobool = icmp eq i64 %expval, 0, !dbg !1999
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1999

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1999
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1999
  br label %cond.end, !dbg !1999

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1999
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1999
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1999
  store i8 %conv2, i8* %0, align 1, !dbg !1999
  %conv6 = and i32 %__c, 255, !dbg !1999
  br label %cond.end, !dbg !1999

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1999
  ret i32 %cond, !dbg !2000
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2001 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2003, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2004, metadata !DIExpression()), !dbg !2005
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2006
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2006
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2006
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2006
  %cmp = icmp uge i8* %0, %1, !dbg !2006
  %conv1 = zext i1 %cmp to i64, !dbg !2006
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2006
  %tobool = icmp eq i64 %expval, 0, !dbg !2006
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2006

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2006
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2006
  br label %cond.end, !dbg !2006

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2006
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2006
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2006
  store i8 %conv2, i8* %0, align 1, !dbg !2006
  %conv6 = and i32 %__c, 255, !dbg !2006
  br label %cond.end, !dbg !2006

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2006
  ret i32 %cond, !dbg !2007
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2008 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2010, metadata !DIExpression()), !dbg !2011
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2012
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2012
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2012
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2012
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2012
  %cmp = icmp uge i8* %1, %2, !dbg !2012
  %conv1 = zext i1 %cmp to i64, !dbg !2012
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2012
  %tobool = icmp eq i64 %expval, 0, !dbg !2012
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2012

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2012
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2012
  br label %cond.end, !dbg !2012

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2012
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2012
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2012
  store i8 %conv4, i8* %1, align 1, !dbg !2012
  %conv6 = and i32 %__c, 255, !dbg !2012
  br label %cond.end, !dbg !2012

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2012
  ret i32 %cond, !dbg !2013
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2014 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2020, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2021, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2022, metadata !DIExpression()), !dbg !2023
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2024
  ret i64 %call, !dbg !2025
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2028, metadata !DIExpression()), !dbg !2029
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2030
  %0 = load i32, i32* %_flags, align 8, !dbg !2030
  %and = lshr i32 %0, 4, !dbg !2030
  %and.lobit = and i32 %and, 1, !dbg !2030
  ret i32 %and.lobit, !dbg !2031
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2034, metadata !DIExpression()), !dbg !2035
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2036
  %0 = load i32, i32* %_flags, align 8, !dbg !2036
  %and = lshr i32 %0, 5, !dbg !2036
  %and.lobit = and i32 %and, 1, !dbg !2036
  ret i32 %and.lobit, !dbg !2037
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2041, metadata !DIExpression()), !dbg !2042
  %__c.off = add i32 %__c, 128, !dbg !2043
  %0 = icmp ult i32 %__c.off, 384, !dbg !2043
  br i1 %0, label %cond.true, label %cond.end, !dbg !2043

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2044
  %1 = load i32*, i32** %call, align 8, !dbg !2045
  %idxprom = sext i32 %__c to i64, !dbg !2046
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2046
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2046
  br label %cond.end, !dbg !2047

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2047
  ret i32 %cond, !dbg !2048
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2051, metadata !DIExpression()), !dbg !2052
  %__c.off = add i32 %__c, 128, !dbg !2053
  %0 = icmp ult i32 %__c.off, 384, !dbg !2053
  br i1 %0, label %cond.true, label %cond.end, !dbg !2053

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2054
  %1 = load i32*, i32** %call, align 8, !dbg !2055
  %idxprom = sext i32 %__c to i64, !dbg !2056
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2056
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2056
  br label %cond.end, !dbg !2057

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2057
  ret i32 %cond, !dbg !2058
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2064, metadata !DIExpression()), !dbg !2065
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2066
  %conv = trunc i64 %call to i32, !dbg !2067
  ret i32 %conv, !dbg !2068
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2069 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2073, metadata !DIExpression()), !dbg !2074
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2075
  ret i64 %call, !dbg !2076
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2082, metadata !DIExpression()), !dbg !2083
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2084
  ret i64 %call, !dbg !2085
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2092, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2093, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2094, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2095, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2096, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 0, metadata !2097, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2098, metadata !DIExpression()), !dbg !2102
  br label %while.cond, !dbg !2103

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2104
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2097, metadata !DIExpression()), !dbg !2102
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2105
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2103

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2106
  %div = lshr i64 %add, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %div, metadata !2099, metadata !DIExpression()), !dbg !2102
  %mul = mul i64 %div, %__size, !dbg !2109
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2100, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %call, metadata !2101, metadata !DIExpression()), !dbg !2102
  %cmp1 = icmp slt i32 %call, 0, !dbg !2112
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2114

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2115
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2117

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2097, metadata !DIExpression()), !dbg !2102
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2102
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2097, metadata !DIExpression()), !dbg !2102
  br label %while.cond, !dbg !2103, !llvm.loop !2119

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2102
  ret i8* %retval.0, !dbg !2121
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2128, metadata !DIExpression()), !dbg !2129
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2130
  ret double %call, !dbg !2131
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %base, metadata !2143, metadata !DIExpression()), !dbg !2144
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2145
  ret i64 %call, !dbg !2146
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %base, metadata !2155, metadata !DIExpression()), !dbg !2156
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2157
  ret i64 %call, !dbg !2158
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2170, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %base, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2174
  ret i64 %call, !dbg !2175
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2180, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i32 %base, metadata !2182, metadata !DIExpression()), !dbg !2183
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2184
  ret i64 %call, !dbg !2185
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2186 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2227, metadata !DIExpression()), !dbg !2228
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2229
  ret i32 %call, !dbg !2230
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2236
  ret i32 %call, !dbg !2237
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2245
  ret i32 %call, !dbg !2246
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2253, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2254, metadata !DIExpression()), !dbg !2255
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2256
  ret i32 %call, !dbg !2257
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2258 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2264, metadata !DIExpression()), !dbg !2265
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2264, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2266
  ret i32 %call, !dbg !2267
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2268 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2275, metadata !DIExpression()), !dbg !2276
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2275, metadata !DIExpression(DW_OP_deref)), !dbg !2276
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2277
  ret i32 %call, !dbg !2278
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2279 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2303, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2304, metadata !DIExpression()), !dbg !2305
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2306
  ret i32 %call, !dbg !2307
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2308 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2313
  ret i32 %call, !dbg !2314
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2315 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2319, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2320, metadata !DIExpression()), !dbg !2321
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2322
  ret i32 %call, !dbg !2323
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2324 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2328, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2331, metadata !DIExpression()), !dbg !2332
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2333
  ret i32 %call, !dbg !2334
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @thread_through_all_blocks(i8 zeroext %may_peel_loop_headers) local_unnamed_addr #5 !dbg !2335 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  call void @llvm.dbg.value(metadata i8 %may_peel_loop_headers, metadata !2339, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2362
  %0 = bitcast i32* %i to i8*, !dbg !2363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2363
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2364
  %2 = bitcast %struct.loop** %loop to i8*, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2365
  %3 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2366
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2367
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2367
  %5 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2367
  %cmp = icmp eq %struct.loops* %5, null, !dbg !2367
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2367

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 1042, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2367
  br label %cond.end, !dbg !2367

cond.end:                                         ; preds = %entry, %cond.true
  %6 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2368
  %cmp2 = icmp eq %struct.VEC_edge_heap* %6, null, !dbg !2370
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !2371

if.end:                                           ; preds = %cond.end
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2350, metadata !DIExpression()), !dbg !2362
  %call3 = tail call i8* @memset(i8* bitcast (%struct.thread_stats_d* @thread_stats to i8*), i32 0, i64 8) #6, !dbg !2373
  tail call fastcc void @mark_threaded_blocks(%struct.bitmap_head_def* %call) #8, !dbg !2374
  tail call void @initialize_original_copy_tables() #6, !dbg !2375
  call void @llvm.dbg.value(metadata i32* %i, metadata !2341, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %i) #8, !dbg !2376
  br label %for.cond, !dbg !2376

for.cond:                                         ; preds = %for.inc, %if.end
  %retval1.0 = phi i8 [ 0, %if.end ], [ %retval1.1, %for.inc ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.0, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32* %i, metadata !2341, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  %call4 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2377
  %tobool = icmp eq i8 %call4, 0, !dbg !2376
  br i1 %tobool, label %for.end, label %for.body, !dbg !2376

for.body:                                         ; preds = %for.cond
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2378
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2378
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2378
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 2, !dbg !2378
  %9 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2378
  %tobool6 = icmp eq %struct.VEC_basic_block_gc* %9, null, !dbg !2378
  br i1 %tobool6, label %cond.end12, label %cond.true7, !dbg !2378

cond.true7:                                       ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %9, i64 0, i32 0, !dbg !2378
  br label %cond.end12, !dbg !2378

cond.end12:                                       ; preds = %for.body, %cond.true7
  %cond13 = phi %struct.VEC_basic_block_base* [ %base, %cond.true7 ], [ null, %for.body ], !dbg !2378
  %10 = load i32, i32* %i, align 4, !dbg !2378
  call void @llvm.dbg.value(metadata i32 %10, metadata !2341, metadata !DIExpression()), !dbg !2362
  %call14 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond13, i32 %10) #8, !dbg !2378
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call14, metadata !2358, metadata !DIExpression()), !dbg !2379
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call14, i64 0, i32 0, !dbg !2380
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2380
  %tobool15 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !2380
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !2380

cond.true16:                                      ; preds = %cond.end12
  %base18 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !2380
  br label %cond.end20, !dbg !2380

cond.end20:                                       ; preds = %cond.end12, %cond.true16
  %cond21 = phi %struct.VEC_edge_base* [ %base18, %cond.true16 ], [ null, %cond.end12 ], !dbg !2380
  %call22 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond21) #8, !dbg !2380
  %cmp23 = icmp eq i32 %call22, 0, !dbg !2382
  br i1 %cmp23, label %for.inc, label %if.then24, !dbg !2383

if.then24:                                        ; preds = %cond.end20
  %call25 = call fastcc zeroext i8 @thread_block(%struct.basic_block_def* %call14, i8 zeroext 1) #8, !dbg !2384
  %or2 = or i8 %retval1.0, %call25, !dbg !2385
  call void @llvm.dbg.value(metadata i8 %or2, metadata !2340, metadata !DIExpression()), !dbg !2362
  br label %for.inc, !dbg !2386

for.inc:                                          ; preds = %cond.end20, %if.then24
  %retval1.1 = phi i8 [ %or2, %if.then24 ], [ %retval1.0, %cond.end20 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.1, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32* %i, metadata !2341, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2342, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2377
  br label %for.cond, !dbg !2377, !llvm.loop !2387

for.end:                                          ; preds = %for.cond
  %retval1.0.lcssa = phi i8 [ %retval1.0, %for.cond ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2352, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !2389
  br label %for.cond29, !dbg !2389

for.cond29:                                       ; preds = %for.inc43, %for.end
  %retval1.2 = phi i8 [ %retval1.0.lcssa, %for.end ], [ %retval1.3, %for.inc43 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.2, metadata !2340, metadata !DIExpression()), !dbg !2362
  %12 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2351, metadata !DIExpression()), !dbg !2362
  %tobool30 = icmp eq %struct.loop* %12, null, !dbg !2389
  br i1 %tobool30, label %for.end44, label %for.body31, !dbg !2389

for.body31:                                       ; preds = %for.cond29
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2351, metadata !DIExpression()), !dbg !2362
  %header = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 2, !dbg !2393
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2393
  %tobool32 = icmp eq %struct.basic_block_def* %13, null, !dbg !2396
  br i1 %tobool32, label %for.inc43, label %lor.lhs.false, !dbg !2397

lor.lhs.false:                                    ; preds = %for.body31
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2351, metadata !DIExpression()), !dbg !2362
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !2398
  %14 = load i32, i32* %index, align 8, !dbg !2398
  %call34 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call, i32 %14) #6, !dbg !2399
  %tobool35 = icmp eq i32 %call34, 0, !dbg !2399
  br i1 %tobool35, label %for.inc43, label %if.end37, !dbg !2400

if.end37:                                         ; preds = %lor.lhs.false
  %15 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2401
  call void @llvm.dbg.value(metadata %struct.loop* %15, metadata !2351, metadata !DIExpression()), !dbg !2362
  %call38 = call fastcc zeroext i8 @thread_through_loop_header(%struct.loop* %15, i8 zeroext %may_peel_loop_headers) #8, !dbg !2402
  %or411 = or i8 %retval1.2, %call38, !dbg !2403
  call void @llvm.dbg.value(metadata i8 %or411, metadata !2340, metadata !DIExpression()), !dbg !2362
  br label %for.inc43, !dbg !2404

for.inc43:                                        ; preds = %lor.lhs.false, %for.body31, %if.end37
  %retval1.3 = phi i8 [ %or411, %if.end37 ], [ %retval1.2, %lor.lhs.false ], [ %retval1.2, %for.body31 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.3, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2351, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2352, metadata !DIExpression(DW_OP_deref)), !dbg !2362
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2391
  br label %for.cond29, !dbg !2391, !llvm.loop !2405

for.end44:                                        ; preds = %for.cond29
  %retval1.2.lcssa = phi i8 [ %retval1.2, %for.cond29 ], !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.2.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.2.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 %retval1.2.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2362
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2407
  %17 = load i64, i64* getelementptr inbounds (%struct.thread_stats_d, %struct.thread_stats_d* @thread_stats, i64 0, i32 0), align 8, !dbg !2408
  %conv46 = trunc i64 %17 to i32, !dbg !2409
  call void @statistics_counter_event(%struct.function* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %conv46) #6, !dbg !2410
  call void @free_original_copy_tables() #6, !dbg !2411
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2412
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2350, metadata !DIExpression()), !dbg !2362
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull @threaded_edges) #8, !dbg !2413
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2414
  %tobool47 = icmp eq i8 %retval1.2.lcssa, 0, !dbg !2415
  br i1 %tobool47, label %cleanup, label %if.then48, !dbg !2417

if.then48:                                        ; preds = %for.end44
  call fastcc void @loops_state_set(i32 64) #8, !dbg !2418
  br label %cleanup, !dbg !2418

cleanup:                                          ; preds = %for.end44, %if.then48, %cond.end
  %retval.0 = phi i8 [ 0, %cond.end ], [ %retval1.2.lcssa, %if.then48 ], [ 0, %for.end44 ], !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2419
  ret i8 %retval.0, !dbg !2419
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_threaded_blocks(%struct.bitmap_head_def* %threaded_blocks) unnamed_addr #5 !dbg !2420 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp49 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %threaded_blocks, metadata !2424, metadata !DIExpression()), !dbg !2442
  %0 = bitcast i32* %i to i8*, !dbg !2443
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2443
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2444
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2445
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2427, metadata !DIExpression()), !dbg !2442
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2446
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2446
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2447
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2447
  call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression()), !dbg !2442
  br label %for.cond, !dbg !2448

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add19, %for.body ], !dbg !2449
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2425, metadata !DIExpression()), !dbg !2442
  %4 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2450
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %4, i64 0, i32 0, !dbg !2450
  %call1 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #8, !dbg !2450
  %cmp = icmp ult i32 %storemerge, %call1, !dbg !2451
  br i1 %cmp, label %for.body, label %for.end, !dbg !2452

for.body:                                         ; preds = %for.cond
  %5 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2453
  %base5 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %5, i64 0, i32 0, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2425, metadata !DIExpression()), !dbg !2442
  %call9 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base5, i32 %storemerge) #8, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !2437, metadata !DIExpression()), !dbg !2454
  %6 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2455
  %base13 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %6, i64 0, i32 0, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2425, metadata !DIExpression()), !dbg !2442
  %add = or i32 %storemerge, 1, !dbg !2455
  %call17 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base13, i32 %add) #8, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !2441, metadata !DIExpression()), !dbg !2454
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 3, !dbg !2456
  %7 = bitcast i8** %aux to %struct.edge_def**, !dbg !2457
  store %struct.edge_def* %call17, %struct.edge_def** %7, align 8, !dbg !2457
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 1, !dbg !2458
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2458
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 9, !dbg !2459
  %9 = load i32, i32* %index, align 8, !dbg !2459
  %call18 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %9) #6, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %storemerge, metadata !2425, metadata !DIExpression()), !dbg !2442
  %add19 = add i32 %storemerge, 2, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %add19, metadata !2425, metadata !DIExpression()), !dbg !2442
  br label %for.cond, !dbg !2462, !llvm.loop !2463

for.end:                                          ; preds = %for.cond
  %storemerge.lcssa = phi i32 [ %storemerge, %for.cond ], !dbg !2449
  call void @llvm.dbg.value(metadata i32 %storemerge.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %storemerge.lcssa, metadata !2425, metadata !DIExpression()), !dbg !2442
  store i32 %storemerge.lcssa, i32* %i, align 4, !dbg !2449
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2465
  %call20 = tail call zeroext i8 @optimize_function_for_size_p(%struct.function* %10) #6, !dbg !2467
  %tobool21 = icmp eq i8 %call20, 0, !dbg !2467
  br i1 %tobool21, label %if.else62, label %if.then, !dbg !2468

if.then:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i32* %i, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %call, i32 0, i32* nonnull %i) #8, !dbg !2469
  %11 = bitcast %struct.edge_iterator* %tmp49 to i8*, !dbg !2472
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp49, i64 0, i32 0, !dbg !2472
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp49, i64 0, i32 1, !dbg !2472
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2478
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2478
  br label %for.cond22, !dbg !2469

for.cond22:                                       ; preds = %for.inc60, %if.then
  call void @llvm.dbg.value(metadata i32* %i, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  %call23 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2480
  %tobool24 = icmp eq i8 %call23, 0, !dbg !2469
  br i1 %tobool24, label %if.end63.loopexit, label %for.body25, !dbg !2469

for.body25:                                       ; preds = %for.cond22
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2481
  %cfg = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2481
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2481
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 2, !dbg !2481
  %18 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2481
  %tobool27 = icmp eq %struct.VEC_basic_block_gc* %18, null, !dbg !2481
  br i1 %tobool27, label %cond.end34, label %cond.true28, !dbg !2481

cond.true28:                                      ; preds = %for.body25
  %base32 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %18, i64 0, i32 0, !dbg !2481
  br label %cond.end34, !dbg !2481

cond.end34:                                       ; preds = %for.body25, %cond.true28
  %cond35 = phi %struct.VEC_basic_block_base* [ %base32, %cond.true28 ], [ null, %for.body25 ], !dbg !2481
  %19 = load i32, i32* %i, align 4, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %19, metadata !2425, metadata !DIExpression()), !dbg !2442
  %call36 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond35, i32 %19) #8, !dbg !2481
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call36, metadata !2428, metadata !DIExpression()), !dbg !2442
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call36, i64 0, i32 0, !dbg !2482
  %20 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2482
  %tobool37 = icmp eq %struct.VEC_edge_gc* %20, null, !dbg !2482
  br i1 %tobool37, label %cond.end42, label %cond.true38, !dbg !2482

cond.true38:                                      ; preds = %cond.end34
  %base40 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %20, i64 0, i32 0, !dbg !2482
  br label %cond.end42, !dbg !2482

cond.end42:                                       ; preds = %cond.end34, %cond.true38
  %cond43 = phi %struct.VEC_edge_base* [ %base40, %cond.true38 ], [ null, %cond.end34 ], !dbg !2482
  %call44 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond43) #8, !dbg !2482
  %cmp45 = icmp ugt i32 %call44, 1, !dbg !2483
  br i1 %cmp45, label %land.lhs.true, label %if.else, !dbg !2484

land.lhs.true:                                    ; preds = %cond.end42
  %call46 = call fastcc zeroext i8 @redirection_block_p(%struct.basic_block_def* %call36) #8, !dbg !2485
  %tobool47 = icmp eq i8 %call46, 0, !dbg !2485
  br i1 %tobool47, label %if.then48, label %if.else, !dbg !2486

if.then48:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2487
  %call51 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2487
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call51, 0, !dbg !2487
  store i32 %21, i32* %12, align 8, !dbg !2487
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call51, 1, !dbg !2487
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %13, align 8, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2487
  br label %for.cond52, !dbg !2487

for.cond52:                                       ; preds = %for.body55, %if.then48
  %23 = load i32, i32* %14, align 8, !dbg !2488
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2429, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  %call53 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #8, !dbg !2488
  %tobool54 = icmp eq i8 %call53, 0, !dbg !2487
  br i1 %tobool54, label %for.inc60.loopexit, label %for.body55, !dbg !2487

for.body55:                                       ; preds = %for.cond52
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2429, metadata !DIExpression()), !dbg !2442
  %aux56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 3, !dbg !2490
  store i8* null, i8** %aux56, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2430, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2488
  br label %for.cond52, !dbg !2488, !llvm.loop !2492

if.else:                                          ; preds = %land.lhs.true, %cond.end42
  %26 = load i32, i32* %i, align 4, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %26, metadata !2425, metadata !DIExpression()), !dbg !2442
  %call59 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %threaded_blocks, i32 %26) #6, !dbg !2495
  br label %for.inc60

for.inc60.loopexit:                               ; preds = %for.cond52
  br label %for.inc60, !dbg !2480

for.inc60:                                        ; preds = %for.inc60.loopexit, %if.else
  call void @llvm.dbg.value(metadata i32* %i, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2442
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #8, !dbg !2480
  br label %for.cond22, !dbg !2480, !llvm.loop !2496

if.else62:                                        ; preds = %for.end
  tail call void @bitmap_copy(%struct.bitmap_head_def* %threaded_blocks, %struct.bitmap_head_def* %call) #6, !dbg !2498
  br label %if.end63

if.end63.loopexit:                                ; preds = %for.cond22
  br label %if.end63, !dbg !2499

if.end63:                                         ; preds = %if.end63.loopexit, %if.else62
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call) #6, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2427, metadata !DIExpression()), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2500
  ret void, !dbg !2500
}

declare dso_local void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2501 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2513, metadata !DIExpression()), !dbg !2514
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2515
  %1 = load i64, i64* %0, align 8, !dbg !2515
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2516
  store i64 %1, i64* %2, align 8, !dbg !2516
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2517
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2518
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2519
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2522
  br label %while.body, !dbg !2522

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2523
  br i1 %tobool, label %if.then, label %if.end, !dbg !2524

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2525
  br label %while.end, !dbg !2527

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2528

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2522, !llvm.loop !2529

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2531

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2531
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2533
  %7 = load i32, i32* %indx9, align 8, !dbg !2533
  %cmp11 = icmp eq i32 %7, 0, !dbg !2534
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2535

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2536
  %8 = load i32, i32* %indx14, align 8, !dbg !2536
  %mul = shl i32 %8, 7, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2512, metadata !DIExpression()), !dbg !2514
  br label %if.end15, !dbg !2538

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2512, metadata !DIExpression()), !dbg !2514
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2539
  store i32 0, i32* %word_no, align 8, !dbg !2540
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2541
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2541
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2542
  store i64 %9, i64* %bits21, align 8, !dbg !2543
  %tobool23 = icmp eq i64 %9, 0, !dbg !2544
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2544
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %add, metadata !2512, metadata !DIExpression()), !dbg !2514
  store i32 %add, i32* %bit_no, align 4, !dbg !2546
  ret void, !dbg !2547
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2548 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2552, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2553, metadata !DIExpression()), !dbg !2557
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2558
  %0 = load i64, i64* %bits, align 8, !dbg !2558
  %tobool = icmp eq i64 %0, 0, !dbg !2559
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2560

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2561
  br label %next_bit, !dbg !2564

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2554), !dbg !2565
  br label %while.cond, !dbg !2564

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2566
  %and = and i64 %2, 1, !dbg !2567
  %tobool2 = icmp eq i64 %and, 0, !dbg !2568
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2564

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2569
  store i64 %shr, i64* %bits, align 8, !dbg !2569
  %3 = load i32, i32* %bit_no, align 4, !dbg !2571
  %add = add i32 %3, 1, !dbg !2571
  store i32 %add, i32* %bit_no, align 4, !dbg !2571
  %.pre = load i64, i64* %bits, align 8, !dbg !2566
  br label %while.cond, !dbg !2564, !llvm.loop !2572

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2574
  %sub = add i32 %4, 63, !dbg !2575
  %div = and i32 %sub, -64, !dbg !2576
  store i32 %div, i32* %bit_no, align 4, !dbg !2577
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2578
  %5 = load i32, i32* %word_no, align 8, !dbg !2579
  %inc = add i32 %5, 1, !dbg !2579
  store i32 %inc, i32* %word_no, align 8, !dbg !2579
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2580
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2580
  br label %while.body6, !dbg !2581

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2582

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2583
  %cmp = icmp eq i32 %8, 2, !dbg !2584
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2580
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2582

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2561
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2561
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2561
  store i64 %10, i64* %bits, align 8, !dbg !2585
  %tobool14 = icmp eq i64 %10, 0, !dbg !2586
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2588

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2589
  %add17 = add i32 %11, 64, !dbg !2589
  store i32 %add17, i32* %bit_no, align 4, !dbg !2589
  %12 = load i32, i32* %word_no, align 8, !dbg !2590
  %inc19 = add i32 %12, 1, !dbg !2590
  store i32 %inc19, i32* %word_no, align 8, !dbg !2590
  br label %while.cond7, !dbg !2582, !llvm.loop !2591

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2580
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2593
  %14 = load i64, i64* %13, align 8, !dbg !2593
  store i64 %14, i64* %6, align 8, !dbg !2594
  %tobool24 = icmp eq i64 %14, 0, !dbg !2595
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2597

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2597
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2598
  %16 = load i32, i32* %indx, align 8, !dbg !2598
  %mul28 = shl i32 %16, 7, !dbg !2599
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2600
  store i32 0, i32* %word_no, align 8, !dbg !2601
  br label %while.body6, !dbg !2581, !llvm.loop !2602

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2604

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2604

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2557
  ret i8 %retval.0, !dbg !2604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2611, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2612, metadata !DIExpression()), !dbg !2613
  br label %land.end, !dbg !2614

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2614
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2614
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2614
  ret %struct.basic_block_def* %0, !dbg !2614
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2615 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2621, metadata !DIExpression()), !dbg !2622
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2623
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2623

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2623
  %0 = load i32, i32* %num, align 8, !dbg !2623
  br label %cond.end, !dbg !2623

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2623
  ret i32 %cond, !dbg !2623
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @thread_block(%struct.basic_block_def* %bb, i8 zeroext %noloop_only) unnamed_addr #5 !dbg !2624 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %local_info = alloca %struct.local_info, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2628, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %noloop_only, metadata !2629, metadata !DIExpression()), !dbg !2639
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2640
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2641
  %2 = bitcast %struct.local_info* %local_info to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2642
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !2643
  %3 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.loop* %3, metadata !2634, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 1, metadata !2635, metadata !DIExpression()), !dbg !2639
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2644
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2644
  %tobool = icmp eq %struct.VEC_edge_gc* %4, null, !dbg !2644
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2644

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !2644
  br label %cond.end, !dbg !2644

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2644
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2644
  %conv = zext i32 %call to i64, !dbg !2644
  %call2 = tail call %struct.htab* @htab_create(i64 %conv, i32 (i8*)* nonnull @redirection_data_hash, i32 (i8*, i8*)* nonnull @redirection_data_eq, void (i8*)* nonnull @free) #6, !dbg !2645
  store %struct.htab* %call2, %struct.htab** @redirection_data, align 8, !dbg !2646
  %header = getelementptr inbounds %struct.loop, %struct.loop* %3, i64 0, i32 2, !dbg !2647
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2647
  %cmp = icmp eq %struct.basic_block_def* %5, %bb, !dbg !2649
  br i1 %cmp, label %if.then, label %if.end11, !dbg !2650

if.then:                                          ; preds = %cond.end
  %call4 = tail call %struct.edge_def* @loop_latch_edge(%struct.loop* %3) #6, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !2630, metadata !DIExpression()), !dbg !2639
  store %struct.edge_def* %call4, %struct.edge_def** %e, align 8, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.edge_def* %call4, metadata !2630, metadata !DIExpression()), !dbg !2639
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call4, i64 0, i32 3, !dbg !2654
  %6 = bitcast i8** %aux to %struct.edge_def**, !dbg !2654
  %7 = load %struct.edge_def*, %struct.edge_def** %6, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %7, metadata !2631, metadata !DIExpression()), !dbg !2639
  %tobool5 = icmp eq %struct.edge_def* %7, null, !dbg !2655
  br i1 %tobool5, label %if.end11, label %land.lhs.true, !dbg !2657

land.lhs.true:                                    ; preds = %if.then
  %call6 = tail call zeroext i8 @loop_exit_edge_p(%struct.loop* %3, %struct.edge_def* nonnull %7) #6, !dbg !2658
  %tobool8 = icmp eq i8 %call6, 0, !dbg !2658
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !2659

if.then9:                                         ; preds = %land.lhs.true
  store %struct.basic_block_def* null, %struct.basic_block_def** %header, align 8, !dbg !2660
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %3, i64 0, i32 3, !dbg !2662
  store %struct.basic_block_def* null, %struct.basic_block_def** %latch, align 8, !dbg !2663
  br label %if.end11, !dbg !2664

if.end11:                                         ; preds = %land.lhs.true, %if.then, %if.then9, %cond.end
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2665
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2665
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2665
  %call12 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2665
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2665
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 0, !dbg !2665
  store i32 %10, i32* %9, align 8, !dbg !2665
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2665
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 1, !dbg !2665
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !2665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2665
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2667
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2667
  %tobool18 = icmp eq i8 %noloop_only, 0, !dbg !2669
  br i1 %tobool18, label %if.end11.split.us, label %if.end11.if.end11.split_crit_edge, !dbg !2665

if.end11.if.end11.split_crit_edge:                ; preds = %if.end11
  br label %for.cond, !dbg !2665

if.end11.split.us:                                ; preds = %if.end11
  br label %for.cond.us, !dbg !2665

for.cond.us:                                      ; preds = %for.inc.us, %if.end11.split.us
  %all.0.us = phi i8 [ 1, %if.end11.split.us ], [ %all.1.us, %for.inc.us ], !dbg !2672
  call void @llvm.dbg.value(metadata i8 %all.0.us, metadata !2635, metadata !DIExpression()), !dbg !2639
  %15 = load i32, i32* %13, align 8, !dbg !2673
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2630, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  %call13.us = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #8, !dbg !2673
  %tobool14.us = icmp eq i8 %call13.us, 0, !dbg !2665
  br i1 %tobool14.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !2665

for.body.us:                                      ; preds = %for.cond.us
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  %aux15.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 3, !dbg !2675
  %18 = bitcast i8** %aux15.us to %struct.edge_def**, !dbg !2675
  %19 = load %struct.edge_def*, %struct.edge_def** %18, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2631, metadata !DIExpression()), !dbg !2639
  %tobool16.us = icmp eq %struct.edge_def* %19, null, !dbg !2676
  br i1 %tobool16.us, label %for.inc.us, label %lor.lhs.false.us, !dbg !2677

lor.lhs.false.us:                                 ; preds = %for.body.us
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  %dest.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 1, !dbg !2678
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest.us, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  %src.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 0, !dbg !2679
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src.us, align 8, !dbg !2679
  %frequency.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !2679
  %22 = load i32, i32* %frequency.us, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  %probability.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 8, !dbg !2679
  %23 = load i32, i32* %probability.us, align 4, !dbg !2679
  %mul.us = mul nsw i32 %22, %23, !dbg !2679
  %add.us = add nsw i32 %mul.us, 5000, !dbg !2679
  %div.us = sdiv i32 %add.us, 10000, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  %count.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 9, !dbg !2680
  %24 = load i64, i64* %count.us, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2630, metadata !DIExpression()), !dbg !2639
  call void @update_bb_profile_for_threading(%struct.basic_block_def* %20, i32 %div.us, i64 %24, %struct.edge_def* nonnull %19) #6, !dbg !2681
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2630, metadata !DIExpression()), !dbg !2639
  %call31.us = call fastcc %struct.redirection_data* @lookup_redirection_data(%struct.edge_def* nonnull %19, %struct.edge_def* %25, i32 1) #8, !dbg !2683
  br label %for.inc.us, !dbg !2684

for.inc.us:                                       ; preds = %lor.lhs.false.us, %for.body.us
  %all.1.us = phi i8 [ %all.0.us, %lor.lhs.false.us ], [ 0, %for.body.us ], !dbg !2639
  call void @llvm.dbg.value(metadata i8 %all.1.us, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2673
  br label %for.cond.us, !dbg !2673, !llvm.loop !2685

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %all.0.us.lcssa = phi i8 [ %all.0.us, %for.cond.us ], !dbg !2672
  call void @llvm.dbg.value(metadata i8 %all.0.us.lcssa, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %all.0.us.lcssa, metadata !2635, metadata !DIExpression()), !dbg !2639
  br label %for.end, !dbg !2687

for.cond:                                         ; preds = %for.inc, %if.end11.if.end11.split_crit_edge
  %all.0 = phi i8 [ 1, %if.end11.if.end11.split_crit_edge ], [ %all.1, %for.inc ], !dbg !2672
  call void @llvm.dbg.value(metadata i8 %all.0, metadata !2635, metadata !DIExpression()), !dbg !2639
  %26 = load i32, i32* %13, align 8, !dbg !2673
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2630, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  %call13 = call fastcc zeroext i8 @ei_cond(i32 %26, %struct.VEC_edge_gc** %27, %struct.edge_def** nonnull %e) #8, !dbg !2673
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2665
  br i1 %tobool14, label %for.end.us-lcssa, label %for.body, !dbg !2665

for.body:                                         ; preds = %for.cond
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !2630, metadata !DIExpression()), !dbg !2639
  %aux15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i64 0, i32 3, !dbg !2675
  %29 = bitcast i8** %aux15 to %struct.edge_def**, !dbg !2675
  %30 = load %struct.edge_def*, %struct.edge_def** %29, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !2631, metadata !DIExpression()), !dbg !2639
  %tobool16 = icmp eq %struct.edge_def* %30, null, !dbg !2676
  br i1 %tobool16, label %for.inc, label %lor.lhs.false, !dbg !2677

lor.lhs.false:                                    ; preds = %for.body
  %31 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2688
  %header21 = getelementptr inbounds %struct.loop, %struct.loop* %31, i64 0, i32 2, !dbg !2689
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %header21, align 8, !dbg !2689
  %cmp22 = icmp eq %struct.basic_block_def* %32, %bb, !dbg !2690
  br i1 %cmp22, label %land.lhs.true24, label %if.end29, !dbg !2691

land.lhs.true24:                                  ; preds = %lor.lhs.false
  %call26 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %31, %struct.edge_def* nonnull %30) #6, !dbg !2692
  %tobool27 = icmp eq i8 %call26, 0, !dbg !2692
  br i1 %tobool27, label %for.inc, label %land.lhs.true24.if.end29_crit_edge, !dbg !2693

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2694
  %aux30.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre, i64 0, i32 3, !dbg !2695
  %.phi.trans.insert = bitcast i8** %aux30.phi.trans.insert to %struct.edge_def**, !dbg !2695
  %.pre3 = load %struct.edge_def*, %struct.edge_def** %.phi.trans.insert, align 8, !dbg !2696
  br label %if.end29, !dbg !2693

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %lor.lhs.false
  %33 = phi %struct.edge_def* [ %.pre3, %land.lhs.true24.if.end29_crit_edge ], [ %30, %lor.lhs.false ], !dbg !2696
  %34 = phi %struct.edge_def* [ %.pre, %land.lhs.true24.if.end29_crit_edge ], [ %28, %lor.lhs.false ], !dbg !2697
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2630, metadata !DIExpression()), !dbg !2639
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 1, !dbg !2678
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2630, metadata !DIExpression()), !dbg !2639
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 0, !dbg !2679
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2679
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 11, !dbg !2679
  %37 = load i32, i32* %frequency, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2630, metadata !DIExpression()), !dbg !2639
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 8, !dbg !2679
  %38 = load i32, i32* %probability, align 4, !dbg !2679
  %mul = mul nsw i32 %37, %38, !dbg !2679
  %add = add nsw i32 %mul, 5000, !dbg !2679
  %div = sdiv i32 %add, 10000, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2630, metadata !DIExpression()), !dbg !2639
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 9, !dbg !2680
  %39 = load i64, i64* %count, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !2630, metadata !DIExpression()), !dbg !2639
  call void @update_bb_profile_for_threading(%struct.basic_block_def* %35, i32 %div, i64 %39, %struct.edge_def* %33) #6, !dbg !2681
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.edge_def* %40, metadata !2630, metadata !DIExpression()), !dbg !2639
  %call31 = call fastcc %struct.redirection_data* @lookup_redirection_data(%struct.edge_def* nonnull %30, %struct.edge_def* %40, i32 1) #8, !dbg !2683
  br label %for.inc, !dbg !2684

for.inc:                                          ; preds = %land.lhs.true24, %for.body, %if.end29
  %all.1 = phi i8 [ %all.0, %if.end29 ], [ 0, %land.lhs.true24 ], [ 0, %for.body ], !dbg !2639
  call void @llvm.dbg.value(metadata i8 %all.1, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2639
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2673
  br label %for.cond, !dbg !2673, !llvm.loop !2685

for.end.us-lcssa:                                 ; preds = %for.cond
  %all.0.lcssa5 = phi i8 [ %all.0, %for.cond ], !dbg !2672
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa5, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa5, metadata !2635, metadata !DIExpression()), !dbg !2639
  br label %for.end, !dbg !2687

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %all.0.lcssa = phi i8 [ %all.0.lcssa5, %for.end.us-lcssa ], [ %all.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !2672
  call void @llvm.dbg.value(metadata i8 %all.0.lcssa, metadata !2635, metadata !DIExpression()), !dbg !2639
  %tobool32 = icmp eq i8 %all.0.lcssa, 0, !dbg !2687
  br i1 %tobool32, label %if.end46, label %if.then33, !dbg !2698

if.then33:                                        ; preds = %for.end
  %41 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2699
  %tobool36 = icmp eq %struct.VEC_edge_gc* %41, null, !dbg !2699
  br i1 %tobool36, label %cond.end41, label %cond.true37, !dbg !2699

cond.true37:                                      ; preds = %if.then33
  %base39 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %41, i64 0, i32 0, !dbg !2699
  br label %cond.end41, !dbg !2699

cond.end41:                                       ; preds = %if.then33, %cond.true37
  %cond42 = phi %struct.VEC_edge_base* [ %base39, %cond.true37 ], [ null, %if.then33 ], !dbg !2699
  %call43 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond42, i32 0) #8, !dbg !2699
  %aux44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call43, i64 0, i32 3, !dbg !2700
  %42 = bitcast i8** %aux44 to %struct.edge_def**, !dbg !2700
  %43 = load %struct.edge_def*, %struct.edge_def** %42, align 8, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.edge_def* %43, metadata !2636, metadata !DIExpression()), !dbg !2701
  %call45 = call fastcc %struct.redirection_data* @lookup_redirection_data(%struct.edge_def* %43, %struct.edge_def* null, i32 0) #8, !dbg !2702
  %do_not_duplicate = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %call45, i64 0, i32 3, !dbg !2703
  store i8 1, i8* %do_not_duplicate, align 8, !dbg !2704
  br label %if.end46, !dbg !2705

if.end46:                                         ; preds = %for.end, %cond.end41
  call void @free_dominance_info(i32 1) #6, !dbg !2706
  %template_block = getelementptr inbounds %struct.local_info, %struct.local_info* %local_info, i64 0, i32 1, !dbg !2707
  store %struct.basic_block_def* null, %struct.basic_block_def** %template_block, align 8, !dbg !2708
  %bb47 = getelementptr inbounds %struct.local_info, %struct.local_info* %local_info, i64 0, i32 0, !dbg !2709
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb47, align 8, !dbg !2710
  %jumps_threaded = getelementptr inbounds %struct.local_info, %struct.local_info* %local_info, i64 0, i32 2, !dbg !2711
  store i8 0, i8* %jumps_threaded, align 8, !dbg !2712
  %44 = load %struct.htab*, %struct.htab** @redirection_data, align 8, !dbg !2713
  call void @htab_traverse(%struct.htab* %44, i32 (i8**, i8*)* nonnull @create_duplicates, i8* nonnull %2) #6, !dbg !2714
  %45 = load %struct.htab*, %struct.htab** @redirection_data, align 8, !dbg !2715
  call void @htab_traverse(%struct.htab* %45, i32 (i8**, i8*)* nonnull @fixup_template_block, i8* nonnull %2) #6, !dbg !2716
  %46 = load %struct.htab*, %struct.htab** @redirection_data, align 8, !dbg !2717
  call void @htab_traverse(%struct.htab* %46, i32 (i8**, i8*)* nonnull @redirect_edges, i8* nonnull %2) #6, !dbg !2718
  %47 = load %struct.htab*, %struct.htab** @redirection_data, align 8, !dbg !2719
  call void @htab_delete(%struct.htab* %47) #6, !dbg !2720
  store %struct.htab* null, %struct.htab** @redirection_data, align 8, !dbg !2721
  %48 = load i8, i8* %jumps_threaded, align 8, !dbg !2722
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2723
  ret i8 %48, !dbg !2724
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2725 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2730, metadata !DIExpression()), !dbg !2731
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2732
  %0 = load i64, i64* %bits, align 8, !dbg !2733
  %shr = lshr i64 %0, 1, !dbg !2733
  store i64 %shr, i64* %bits, align 8, !dbg !2733
  %1 = load i32, i32* %bit_no, align 4, !dbg !2734
  %add = add i32 %1, 1, !dbg !2734
  store i32 %add, i32* %bit_no, align 4, !dbg !2734
  ret void, !dbg !2735
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2736 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2742, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2743, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 2, metadata !2744, metadata !DIExpression()), !dbg !2748
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2749
  store i32 0, i32* %idx, align 8, !dbg !2750
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2751
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2751
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2751
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2751
  br i1 %tobool, label %if.then, label %if.end, !dbg !2753

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2754
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2756
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2757
  br label %cleanup, !dbg !2758

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2759
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2759
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2760
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2761
  call void @llvm.dbg.value(metadata i32 1, metadata !2747, metadata !DIExpression()), !dbg !2748
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2762
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2762
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2762
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2762
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2762
  br label %for.cond36, !dbg !2765

for.cond36:                                       ; preds = %if.end, %for.inc40
  %5 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ], !dbg !2768
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2745, metadata !DIExpression()), !dbg !2748
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2770
  %11 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !2770
  %cmp38 = icmp eq %struct.loop* %11, null, !dbg !2771
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !2765

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa12 = phi %struct.loop* [ %5, %for.cond36 ]
  %.lcssa11 = phi %struct.loop* [ %6, %for.cond36 ]
  %.lcssa10 = phi %struct.loop* [ %7, %for.cond36 ]
  %.lcssa9 = phi %struct.loop* [ %8, %for.cond36 ]
  br label %while.cond, !dbg !2772

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2745, metadata !DIExpression()), !dbg !2748
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2773
  %12 = load %struct.loop*, %struct.loop** %inner41, align 8, !dbg !2773
  br label %for.cond36, !dbg !2774, !llvm.loop !2775

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %13 = phi %struct.loop* [ %.lcssa12, %while.cond.preheader ], [ %26, %if.end74 ]
  %14 = phi %struct.loop* [ %.lcssa11, %while.cond.preheader ], [ %27, %if.end74 ]
  %15 = phi %struct.loop* [ %.lcssa10, %while.cond.preheader ], [ %27, %if.end74 ]
  %16 = phi %struct.loop* [ %.lcssa9, %while.cond.preheader ], [ %27, %if.end74 ], !dbg !2777
  call void @llvm.dbg.value(metadata %struct.loop* %16, metadata !2745, metadata !DIExpression()), !dbg !2748
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %16, i64 0, i32 0, !dbg !2780
  %17 = load i32, i32* %num43, align 8, !dbg !2780
  %cmp44 = icmp slt i32 %17, 1, !dbg !2781
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !2782

if.then45:                                        ; preds = %while.cond
  %18 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2783
  %tobool47 = icmp eq %struct.VEC_int_heap* %18, null, !dbg !2783
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2783

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %18, i64 0, i32 0, !dbg !2783
  br label %cond.end52, !dbg !2783

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !2783
  call void @llvm.dbg.value(metadata %struct.loop* %15, metadata !2745, metadata !DIExpression()), !dbg !2748
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %15, i64 0, i32 0, !dbg !2783
  %19 = load i32, i32* %num54, align 8, !dbg !2783
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %19) #8, !dbg !2783
  br label %if.end56, !dbg !2783

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2745, metadata !DIExpression()), !dbg !2748
  %next = getelementptr inbounds %struct.loop, %struct.loop* %14, i64 0, i32 9, !dbg !2784
  %20 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2784
  %tobool57 = icmp eq %struct.loop* %20, null, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2745, metadata !DIExpression()), !dbg !2748
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !2787

if.then58:                                        ; preds = %if.end56
  br label %for.cond60, !dbg !2788

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %21 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ]
  %22 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ]
  %23 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ], !dbg !2791
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !2745, metadata !DIExpression()), !dbg !2748
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 8, !dbg !2793
  %24 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !2793
  %cmp62 = icmp eq %struct.loop* %24, null, !dbg !2794
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !2795

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2745, metadata !DIExpression()), !dbg !2748
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !2796
  %25 = load %struct.loop*, %struct.loop** %inner65, align 8, !dbg !2796
  br label %for.cond60, !dbg !2797, !llvm.loop !2798

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %14) #8, !dbg !2800
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !2800
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !2802

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !2745, metadata !DIExpression()), !dbg !2748
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %13) #8, !dbg !2803
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2745, metadata !DIExpression()), !dbg !2748
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa8 = phi %struct.loop* [ %21, %for.cond60 ]
  %.lcssa = phi %struct.loop* [ %23, %for.cond60 ], !dbg !2791
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !2745, metadata !DIExpression()), !dbg !2748
  br label %if.end74, !dbg !2772

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %26 = phi %struct.loop* [ %.lcssa8, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %27 = phi %struct.loop* [ %.lcssa, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !2772, !llvm.loop !2804

if.end114.loopexit1:                              ; preds = %if.else67
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2806
  br label %cleanup, !dbg !2807

cleanup:                                          ; preds = %if.end114.loopexit1, %if.then
  ret void, !dbg !2807
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @thread_through_loop_header(%struct.loop* %loop, i8 zeroext %may_peel_loop_headers) unnamed_addr #5 !dbg !2808 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp94 = alloca %struct.edge_iterator, align 8
  %tmp119 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2812, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8 %may_peel_loop_headers, metadata !2813, metadata !DIExpression()), !dbg !2826
  %header1 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2827
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !2827
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2814, metadata !DIExpression()), !dbg !2826
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2828
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2828
  %call = tail call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2817, metadata !DIExpression()), !dbg !2826
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2830
  %call2 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %0) #8, !dbg !2831
  %tobool = icmp eq i8 %call2, 0, !dbg !2831
  br i1 %tobool, label %if.end, label %fail, !dbg !2833

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 3, !dbg !2834
  %3 = load i8*, i8** %aux, align 8, !dbg !2834
  %tobool3 = icmp eq i8* %3, null, !dbg !2836
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !2837

if.then4:                                         ; preds = %if.end
  %4 = bitcast i8* %3 to %struct.edge_def*, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.edge_def* %4, metadata !2816, metadata !DIExpression()), !dbg !2826
  %dest = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2838
  %5 = bitcast i8* %dest to %struct.basic_block_def**, !dbg !2838
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !2819, metadata !DIExpression()), !dbg !2826
  br label %if.end42, !dbg !2840

if.else:                                          ; preds = %if.end
  %tobool6 = icmp eq i8 %may_peel_loop_headers, 0, !dbg !2841
  br i1 %tobool6, label %land.lhs.true, label %if.else11, !dbg !2843

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %header1, align 8, !dbg !2844
  %call8 = tail call fastcc zeroext i8 @redirection_block_p(%struct.basic_block_def* %7) #8, !dbg !2845
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2845
  br i1 %tobool9, label %fail, label %if.else11, !dbg !2846

if.else11:                                        ; preds = %land.lhs.true, %if.else
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2816, metadata !DIExpression()), !dbg !2826
  %8 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2847
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2847
  %call12 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2847
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2847
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 0, !dbg !2847
  store i32 %10, i32* %9, align 8, !dbg !2847
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2847
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call12, 1, !dbg !2847
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !2847
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %8, i64 16, i1 false), !dbg !2847
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2847
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2850
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2850
  br label %for.cond, !dbg !2847

for.cond:                                         ; preds = %for.inc, %if.else11
  %tgt_edge.0 = phi %struct.edge_def* [ null, %if.else11 ], [ %tgt_edge.1, %for.inc ], !dbg !2852
  %tgt_bb.0 = phi %struct.basic_block_def* [ null, %if.else11 ], [ %tgt_bb.2, %for.inc ], !dbg !2853
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.0, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.0, metadata !2816, metadata !DIExpression()), !dbg !2826
  %15 = load i32, i32* %13, align 8, !dbg !2854
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2854
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2815, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %call13 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #8, !dbg !2854
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2847
  br i1 %tobool14, label %for.end, label %for.body, !dbg !2847

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2815, metadata !DIExpression()), !dbg !2826
  %aux15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 3, !dbg !2858
  %18 = load i8*, i8** %aux15, align 8, !dbg !2858
  %tobool16 = icmp eq i8* %18, null, !dbg !2855
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2815, metadata !DIExpression()), !dbg !2826
  %19 = bitcast i8* %18 to %struct.edge_def*, !dbg !2859
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !2859

if.then17:                                        ; preds = %for.body
  %cmp = icmp eq %struct.edge_def* %17, %call, !dbg !2860
  br i1 %cmp, label %for.inc, label %fail.loopexit, !dbg !2863

if.end20:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2816, metadata !DIExpression()), !dbg !2826
  %dest22 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !2864
  %20 = bitcast i8* %dest22 to %struct.basic_block_def**, !dbg !2864
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %20, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %21, metadata !2820, metadata !DIExpression()), !dbg !2826
  %tobool23 = icmp eq %struct.basic_block_def* %tgt_bb.0, null, !dbg !2865
  br i1 %tobool23, label %for.inc, label %if.else25, !dbg !2867

if.else25:                                        ; preds = %if.end20
  %cmp26 = icmp eq %struct.basic_block_def* %tgt_bb.0, %21, !dbg !2868
  br i1 %cmp26, label %for.inc, label %fail.loopexit, !dbg !2870

for.inc:                                          ; preds = %if.else25, %if.end20, %if.then17
  %tgt_edge.1 = phi %struct.edge_def* [ %tgt_edge.0, %if.then17 ], [ %19, %if.else25 ], [ %19, %if.end20 ], !dbg !2852
  %tgt_bb.2 = phi %struct.basic_block_def* [ %tgt_bb.0, %if.then17 ], [ %tgt_bb.0, %if.else25 ], [ %21, %if.end20 ], !dbg !2853
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.2, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.1, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2818, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2854
  br label %for.cond, !dbg !2854, !llvm.loop !2871

for.end:                                          ; preds = %for.cond
  %tgt_edge.0.lcssa = phi %struct.edge_def* [ %tgt_edge.0, %for.cond ], !dbg !2852
  %tgt_bb.0.lcssa = phi %struct.basic_block_def* [ %tgt_bb.0, %for.cond ], !dbg !2853
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.0.lcssa, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.0.lcssa, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.0.lcssa, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.0.lcssa, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.0.lcssa, metadata !2816, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.0.lcssa, metadata !2819, metadata !DIExpression()), !dbg !2826
  %tobool30 = icmp eq %struct.basic_block_def* %tgt_bb.0.lcssa, null, !dbg !2873
  br i1 %tobool30, label %cleanup, label %if.end32, !dbg !2875

if.end32:                                         ; preds = %for.end
  %latch33 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2876
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %latch33, align 8, !dbg !2876
  %cmp34 = icmp eq %struct.basic_block_def* %tgt_bb.0.lcssa, %22, !dbg !2878
  br i1 %cmp34, label %land.lhs.true35, label %if.end42, !dbg !2879

land.lhs.true35:                                  ; preds = %if.end32
  %call37 = call zeroext i8 @empty_block_p(%struct.basic_block_def* nonnull %tgt_bb.0.lcssa) #6, !dbg !2880
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2880
  br i1 %tobool38, label %if.end42, label %fail, !dbg !2881

if.end42:                                         ; preds = %land.lhs.true35, %if.end32, %if.then4
  %tgt_edge.2 = phi %struct.edge_def* [ %4, %if.then4 ], [ %tgt_edge.0.lcssa, %if.end32 ], [ %tgt_edge.0.lcssa, %land.lhs.true35 ], !dbg !2882
  %tgt_bb.3 = phi %struct.basic_block_def* [ %6, %if.then4 ], [ %tgt_bb.0.lcssa, %if.end32 ], [ %tgt_bb.0.lcssa, %land.lhs.true35 ], !dbg !2882
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.3, metadata !2819, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.edge_def* %tgt_edge.2, metadata !2816, metadata !DIExpression()), !dbg !2826
  %call43 = call fastcc i32 @determine_bb_domination_status(%struct.loop* %loop, %struct.basic_block_def* %tgt_bb.3) #8, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %call43, metadata !2821, metadata !DIExpression()), !dbg !2826
  switch i32 %call43, label %if.end54 [
    i32 0, label %fail
    i32 1, label %if.then50
  ], !dbg !2884

if.then50:                                        ; preds = %if.end42
  store %struct.basic_block_def* null, %struct.basic_block_def** %header1, align 8, !dbg !2885
  %latch52 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2888
  store %struct.basic_block_def* null, %struct.basic_block_def** %latch52, align 8, !dbg !2889
  %call53 = call fastcc zeroext i8 @thread_block(%struct.basic_block_def* %0, i8 zeroext 0) #8, !dbg !2890
  br label %cleanup, !dbg !2891

if.end54:                                         ; preds = %if.end42
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %tgt_bb.3, i64 0, i32 3, !dbg !2892
  %23 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2892
  %header55 = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 2, !dbg !2894
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %header55, align 8, !dbg !2894
  %cmp56 = icmp eq %struct.basic_block_def* %24, %tgt_bb.3, !dbg !2895
  br i1 %cmp56, label %if.then58, label %if.end77, !dbg !2896

if.then58:                                        ; preds = %if.end54
  %preds59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %tgt_bb.3, i64 0, i32 0, !dbg !2897
  %25 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds59, align 8, !dbg !2897
  %tobool60 = icmp eq %struct.VEC_edge_gc* %25, null, !dbg !2897
  br i1 %tobool60, label %cond.end, label %cond.true, !dbg !2897

cond.true:                                        ; preds = %if.then58
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %25, i64 0, i32 0, !dbg !2897
  br label %cond.end, !dbg !2897

cond.end:                                         ; preds = %if.then58, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then58 ], !dbg !2897
  %call62 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2897
  %cmp63 = icmp ugt i32 %call62, 2, !dbg !2900
  br i1 %cmp63, label %if.then65, label %if.else74, !dbg !2901

if.then65:                                        ; preds = %cond.end
  %26 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2902
  %call67 = call %struct.basic_block_def* @create_preheader(%struct.loop* %26, i32 0) #6, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call67, metadata !2819, metadata !DIExpression()), !dbg !2826
  %cmp68 = icmp eq %struct.basic_block_def* %call67, null, !dbg !2905
  br i1 %cmp68, label %cond.true70, label %if.end77, !dbg !2905

cond.true70:                                      ; preds = %if.then65
  call void @fancy_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 905, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2905
  br label %if.end77, !dbg !2905

if.else74:                                        ; preds = %cond.end
  %call75 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %tgt_edge.2) #6, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call75, metadata !2819, metadata !DIExpression()), !dbg !2826
  br label %if.end77

if.end77:                                         ; preds = %if.then65, %if.else74, %cond.true70, %if.end54
  %tgt_bb.5 = phi %struct.basic_block_def* [ %tgt_bb.3, %if.end54 ], [ %call75, %if.else74 ], [ %call67, %if.then65 ], [ null, %cond.true70 ], !dbg !2826
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %tgt_bb.5, metadata !2819, metadata !DIExpression()), !dbg !2826
  %27 = load i8*, i8** %aux, align 8, !dbg !2907
  %tobool79 = icmp eq i8* %27, null, !dbg !2908
  br i1 %tobool79, label %if.else93, label %if.then80, !dbg !2909

if.then80:                                        ; preds = %if.end77
  %call81 = call fastcc %struct.basic_block_def* @thread_single_edge(%struct.edge_def* %call) #8, !dbg !2910
  %latch82 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2912
  store %struct.basic_block_def* %call81, %struct.basic_block_def** %latch82, align 8, !dbg !2913
  %call84 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call81) #8, !dbg !2914
  %cmp85 = icmp eq %struct.basic_block_def* %call84, %tgt_bb.5, !dbg !2914
  br i1 %cmp85, label %cond.end89, label %cond.true87, !dbg !2914

cond.true87:                                      ; preds = %if.then80
  call void @fancy_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 915, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2914
  br label %cond.end89, !dbg !2914

cond.end89:                                       ; preds = %if.then80, %cond.true87
  store %struct.basic_block_def* %tgt_bb.5, %struct.basic_block_def** %header1, align 8, !dbg !2915
  %call92 = call fastcc zeroext i8 @thread_block(%struct.basic_block_def* %0, i8 zeroext 0) #8, !dbg !2916
  br label %cleanup, !dbg !2917

if.else93:                                        ; preds = %if.end77
  %28 = bitcast %struct.edge_iterator* %tmp94 to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !2918
  %preds95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2918
  %call96 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds95) #8, !dbg !2918
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp94, i64 0, i32 0, !dbg !2918
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 0, !dbg !2918
  store i32 %30, i32* %29, align 8, !dbg !2918
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp94, i64 0, i32 1, !dbg !2918
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 1, !dbg !2918
  store %struct.VEC_edge_gc** %32, %struct.VEC_edge_gc*** %31, align 8, !dbg !2918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %28, i64 16, i1 false), !dbg !2918
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !2918
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2920
  %34 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2920
  br label %for.cond97, !dbg !2918

for.cond97:                                       ; preds = %for.inc105, %if.else93
  %35 = load i32, i32* %33, align 8, !dbg !2922
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %34, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2815, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %call98 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %e) #8, !dbg !2922
  %tobool99 = icmp eq i8 %call98, 0, !dbg !2918
  br i1 %tobool99, label %for.end106, label %for.body100, !dbg !2918

for.body100:                                      ; preds = %for.cond97
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !2815, metadata !DIExpression()), !dbg !2826
  %aux101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 3, !dbg !2926
  %38 = load i8*, i8** %aux101, align 8, !dbg !2926
  %tobool102 = icmp eq i8* %38, null, !dbg !2923
  br i1 %tobool102, label %for.inc105, label %for.end106, !dbg !2927

for.inc105:                                       ; preds = %for.body100
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2818, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2922
  br label %for.cond97, !dbg !2922, !llvm.loop !2928

for.end106:                                       ; preds = %for.body100, %for.cond97
  %call107 = call fastcc %struct.loop* @loop_outer(%struct.loop* %loop) #8, !dbg !2930
  call void @set_loop_copy(%struct.loop* %loop, %struct.loop* %call107) #6, !dbg !2931
  %call108 = call fastcc zeroext i8 @thread_block(%struct.basic_block_def* %0, i8 zeroext 0) #8, !dbg !2932
  call void @set_loop_copy(%struct.loop* %loop, %struct.loop* null) #6, !dbg !2933
  %39 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.edge_def* %39, metadata !2815, metadata !DIExpression()), !dbg !2826
  %dest109 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i64 0, i32 1, !dbg !2935
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest109, align 8, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %40, metadata !2822, metadata !DIExpression()), !dbg !2936
  %latch110 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2937
  store %struct.basic_block_def* null, %struct.basic_block_def** %latch110, align 8, !dbg !2938
  %call111 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %40) #8, !dbg !2939
  store %struct.edge_def* %call111, %struct.edge_def** @mfb_kj_edge, align 8, !dbg !2940
  %dest112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call111, i64 0, i32 1, !dbg !2941
  %41 = bitcast %struct.basic_block_def** %dest112 to i64*, !dbg !2941
  %42 = load i64, i64* %41, align 8, !dbg !2941
  %43 = bitcast %struct.basic_block_def** %header1 to i64*, !dbg !2942
  store i64 %42, i64* %43, align 8, !dbg !2942
  %call114 = call %struct.edge_def* @make_forwarder_block(%struct.basic_block_def* %tgt_bb.5, i8 (%struct.edge_def*)* nonnull @mfb_keep_just, void (%struct.basic_block_def*)* null) #6, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.edge_def* %call114, metadata !2817, metadata !DIExpression()), !dbg !2826
  %dest115 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call114, i64 0, i32 1, !dbg !2944
  %44 = bitcast %struct.basic_block_def** %dest115 to i64*, !dbg !2944
  %45 = load i64, i64* %44, align 8, !dbg !2944
  store i64 %45, i64* %43, align 8, !dbg !2945
  %46 = bitcast %struct.edge_def* %call114 to i64*, !dbg !2946
  %47 = load i64, i64* %46, align 8, !dbg !2946
  %48 = bitcast %struct.basic_block_def** %latch110 to i64*, !dbg !2947
  store i64 %47, i64* %48, align 8, !dbg !2947
  br label %cleanup

fail.loopexit:                                    ; preds = %if.then17, %if.else25
  br label %fail, !dbg !2948

fail:                                             ; preds = %fail.loopexit, %land.lhs.true35, %land.lhs.true, %entry, %if.end42
  call void @llvm.dbg.label(metadata !2825), !dbg !2950
  %49 = bitcast %struct.edge_iterator* %tmp119 to i8*, !dbg !2948
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %49) #7, !dbg !2948
  %preds120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2948
  %call121 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds120) #8, !dbg !2948
  %50 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp119, i64 0, i32 0, !dbg !2948
  %51 = extractvalue { i32, %struct.VEC_edge_gc** } %call121, 0, !dbg !2948
  store i32 %51, i32* %50, align 8, !dbg !2948
  %52 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp119, i64 0, i32 1, !dbg !2948
  %53 = extractvalue { i32, %struct.VEC_edge_gc** } %call121, 1, !dbg !2948
  store %struct.VEC_edge_gc** %53, %struct.VEC_edge_gc*** %52, align 8, !dbg !2948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %49, i64 16, i1 false), !dbg !2948
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %49) #7, !dbg !2948
  %54 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2951
  %55 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2951
  br label %for.cond122, !dbg !2948

for.cond122:                                      ; preds = %for.body125, %fail
  %56 = load i32, i32* %54, align 8, !dbg !2953
  %57 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %55, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2815, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %call123 = call fastcc zeroext i8 @ei_cond(i32 %56, %struct.VEC_edge_gc** %57, %struct.edge_def** nonnull %e) #8, !dbg !2953
  %tobool124 = icmp eq i8 %call123, 0, !dbg !2948
  br i1 %tobool124, label %cleanup.loopexit, label %for.body125, !dbg !2948

for.body125:                                      ; preds = %for.cond122
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2954
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2815, metadata !DIExpression()), !dbg !2826
  %aux126 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i64 0, i32 3, !dbg !2956
  store i8* null, i8** %aux126, align 8, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2818, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2953
  br label %for.cond122, !dbg !2953, !llvm.loop !2958

cleanup.loopexit:                                 ; preds = %for.cond122
  br label %cleanup, !dbg !2960

cleanup:                                          ; preds = %cleanup.loopexit, %for.end, %cond.end89, %for.end106, %if.then50
  %retval.0 = phi i8 [ %call53, %if.then50 ], [ 0, %for.end ], [ 1, %for.end106 ], [ 1, %cond.end89 ], [ 0, %cleanup.loopexit ], !dbg !2826
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2960
  ret i8 %retval.0, !dbg !2960
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2961 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2966, metadata !DIExpression()), !dbg !2968
  %0 = bitcast i32* %anum to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2969
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2968
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2968
  br label %while.cond, !dbg !2970

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2971
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2971
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2971

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2971
  br label %cond.end, !dbg !2971

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2971
  %2 = load i32, i32* %idx, align 8, !dbg !2971
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2967, metadata !DIExpression(DW_OP_deref)), !dbg !2968
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2971
  %tobool2 = icmp eq i32 %call, 0, !dbg !2970
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2970

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2972
  %inc = add i32 %3, 1, !dbg !2972
  store i32 %inc, i32* %idx, align 8, !dbg !2972
  %4 = load i32, i32* %anum, align 4, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %4, metadata !2967, metadata !DIExpression()), !dbg !2968
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2975
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2976
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2977
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2979, !llvm.loop !2980

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2982
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2983
  br label %cleanup, !dbg !2984

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2984

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2984
  ret void, !dbg !2984
}

declare dso_local void @statistics_counter_event(%struct.function*, i8*, i32) local_unnamed_addr #2

declare dso_local void @free_original_copy_tables() local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** @threaded_edges, metadata !2990, metadata !DIExpression()), !dbg !2991
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2992
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !2992
  br i1 %tobool, label %if.end, label %if.then, !dbg !2994

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !2994
  tail call void @free(i8* nonnull %1) #6, !dbg !2992
  br label %if.end, !dbg !2992

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !2994
  ret void, !dbg !2994
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @loops_state_set(i32 %flags) unnamed_addr #0 !dbg !2995 {
entry:
  call void @llvm.dbg.value(metadata i32 64, metadata !2999, metadata !DIExpression()), !dbg !3000
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3001
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3001
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3001
  %state = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 0, !dbg !3002
  %2 = load i32, i32* %state, align 8, !dbg !3003
  %or = or i32 %2, 64, !dbg !3003
  store i32 %or, i32* %state, align 8, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: nounwind uwtable
define dso_local void @register_jump_thread(%struct.edge_def* %e, %struct.edge_def* %e2) local_unnamed_addr #5 !dbg !3005 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata %struct.edge_def* %e2, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !3012
  %cmp = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3014
  br i1 %cmp, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.VEC_edge_heap* @VEC_edge_heap_alloc(i32 10) #8, !dbg !3016
  store %struct.VEC_edge_heap* %call, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !3017
  br label %if.end, !dbg !3018

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull @threaded_edges, %struct.edge_def* %e) #8, !dbg !3019
  %call2 = tail call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull @threaded_edges, %struct.edge_def* %e2) #8, !dbg !3020
  ret void, !dbg !3021
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_heap* @VEC_edge_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3022 {
entry:
  call void @llvm.dbg.value(metadata i32 10, metadata !3026, metadata !DIExpression()), !dbg !3027
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 10) #6, !dbg !3028
  %0 = bitcast i8* %call to %struct.VEC_edge_heap*, !dbg !3028
  ret %struct.VEC_edge_heap* %0, !dbg !3028
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !3029 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** @threaded_edges, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !3035, metadata !DIExpression()), !dbg !3036
  %call = tail call fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** nonnull @threaded_edges, i32 1) #8, !dbg !3037
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !3037
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3037
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3037

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !3037
  br label %cond.end, !dbg !3037

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3037
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %cond, %struct.edge_def* %obj_) #8, !dbg !3037
  ret %struct.edge_def** %call1, !dbg !3037
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3038 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3043, metadata !DIExpression()), !dbg !3044
  br label %land.end, !dbg !3045

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3045
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3045
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3045
  ret %struct.edge_def* %0, !dbg !3045
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_function_for_size_p(%struct.function*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @redirection_block_p(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3046 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3050, metadata !DIExpression()), !dbg !3058
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3059
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3059
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3060
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3060
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #8, !dbg !3060
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3060
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3060
  br label %while.cond, !dbg !3061

while.cond:                                       ; preds = %while.body, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3062
  %tobool = icmp eq i8 %call, 0, !dbg !3062
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !3063

land.rhs:                                         ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3064
  %call2 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #8, !dbg !3065
  %cmp = icmp eq i32 %call2, 4, !dbg !3066
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !3067

lor.lhs.false:                                    ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call3 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3068
  %call4 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call3) #8, !dbg !3069
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3069
  br i1 %tobool5, label %lor.rhs, label %while.body, !dbg !3070

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3071
  %call7 = call fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %call6) #8, !dbg !3072
  %tobool9 = icmp eq i8 %call7, 0, !dbg !3070
  br i1 %tobool9, label %while.end, label %while.body, !dbg !3061

while.body:                                       ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3073
  br label %while.cond, !dbg !3061, !llvm.loop !3074

while.end:                                        ; preds = %lor.rhs, %while.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call10 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3076
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3076
  br i1 %tobool11, label %if.end, label %cleanup, !dbg !3078

if.end:                                           ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call12 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3079
  %tobool13 = icmp eq %union.gimple_statement_d* %call12, null, !dbg !3079
  br i1 %tobool13, label %land.end30, label %land.rhs14, !dbg !3080

land.rhs14:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call15 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3081
  %call16 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call15) #8, !dbg !3082
  %cmp17 = icmp eq i32 %call16, 1, !dbg !3083
  br i1 %cmp17, label %land.end30, label %lor.lhs.false19, !dbg !3084

lor.lhs.false19:                                  ; preds = %land.rhs14
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call20 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3085
  %call21 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call20) #8, !dbg !3086
  %cmp22 = icmp eq i32 %call21, 3, !dbg !3087
  br i1 %cmp22, label %land.end30, label %lor.rhs24, !dbg !3088

lor.rhs24:                                        ; preds = %lor.lhs.false19
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3051, metadata !DIExpression(DW_OP_deref)), !dbg !3058
  %call25 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3089
  %call26 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call25) #8, !dbg !3090
  %cmp27 = icmp eq i32 %call26, 5, !dbg !3091
  %phitmp = zext i1 %cmp27 to i8, !dbg !3088
  br label %land.end30, !dbg !3088

land.end30:                                       ; preds = %if.end, %land.rhs14, %lor.lhs.false19, %lor.rhs24
  %2 = phi i8 [ 0, %if.end ], [ 1, %lor.lhs.false19 ], [ 1, %land.rhs14 ], [ %phitmp, %lor.rhs24 ]
  br label %cleanup, !dbg !3092

cleanup:                                          ; preds = %while.end, %land.end30
  %retval.0 = phi i8 [ %2, %land.end30 ], [ 1, %while.end ], !dbg !3058
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3093
  ret i8 %retval.0, !dbg !3093
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3094 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3098, metadata !DIExpression()), !dbg !3100
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3101
  store i32 0, i32* %index, align 8, !dbg !3102
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3103
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3104
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3105
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3105
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3111, metadata !DIExpression()), !dbg !3112
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3113
  %tobool = icmp eq i8 %call, 0, !dbg !3113
  br i1 %tobool, label %if.then, label %if.else, !dbg !3115

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3116
  br label %return, !dbg !3118

if.else:                                          ; preds = %entry
  br label %return, !dbg !3119

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3121
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3121
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3121
  ret i8 %retval.0, !dbg !3122
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3123 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3128, metadata !DIExpression()), !dbg !3129
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3130
  %0 = load i32, i32* %index, align 8, !dbg !3130
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3130
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3130
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3130
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3130
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3130

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3130
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3130
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3130
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3130
  br label %cond.end, !dbg !3130

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3130
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3130
  %cmp = icmp ult i32 %0, %call2, !dbg !3130
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3130

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3130
  br label %cond.end5, !dbg !3130

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3131
  %inc = add i32 %5, 1, !dbg !3131
  store i32 %inc, i32* %index, align 8, !dbg !3131
  ret void, !dbg !3132
}

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3133 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3137, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3138, metadata !DIExpression()), !dbg !3141
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3139, metadata !DIExpression()), !dbg !3140
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !3143
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3144
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3145
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3146
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3147
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3148
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3149
  ret void, !dbg !3150
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3151 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3155, metadata !DIExpression()), !dbg !3156
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3157
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3157
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3158
  %conv1 = zext i1 %cmp to i8, !dbg !3159
  ret i8 %conv1, !dbg !3160
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3161 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3168, metadata !DIExpression()), !dbg !3169
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3170
  %bf.load = load i32, i32* %0, align 8, !dbg !3170
  %bf.clear = and i32 %bf.load, 255, !dbg !3170
  ret i32 %bf.clear, !dbg !3171
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3172 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3176, metadata !DIExpression()), !dbg !3177
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3178
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3178
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3179
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3179
  ret %union.gimple_statement_d* %1, !dbg !3180
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3181 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3185, metadata !DIExpression()), !dbg !3186
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3187
  %cmp = icmp eq i32 %call, 2, !dbg !3188
  %conv1 = zext i1 %cmp to i8, !dbg !3187
  ret i8 %conv1, !dbg !3189
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_nop_p(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3190 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3192, metadata !DIExpression()), !dbg !3193
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3194
  %cmp = icmp eq i32 %call, 18, !dbg !3195
  %conv1 = zext i1 %cmp to i8, !dbg !3194
  ret i8 %conv1, !dbg !3196
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3197 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3202, metadata !DIExpression()), !dbg !3203
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3204
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3204
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3205
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3205
  %2 = load i64, i64* %1, align 8, !dbg !3205
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3206
  store i64 %2, i64* %3, align 8, !dbg !3206
  ret void, !dbg !3207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3208 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3212, metadata !DIExpression()), !dbg !3213
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3214
  %0 = load i32, i32* %flags, align 8, !dbg !3214
  %and = and i32 %0, 512, !dbg !3215
  %tobool = icmp eq i32 %and, 0, !dbg !3215
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3216

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3217
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3217
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3218
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3219

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3220
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3220
  br label %cond.end, !dbg !3219

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3219
  ret %struct.gimple_seq_d* %cond, !dbg !3221
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3222 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3229, metadata !DIExpression()), !dbg !3230
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3231
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3231

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3232
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3232
  br label %cond.end, !dbg !3231

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3231
  ret %struct.gimple_seq_node_d* %cond, !dbg !3233
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3234 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3239
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3239
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3239

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3239
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3239
  br label %cond.end, !dbg !3239

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3239
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3239
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3240
  %conv3 = zext i1 %cmp to i8, !dbg !3241
  ret i8 %conv3, !dbg !3242
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3243 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3248
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3248
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3248

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3248
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3248
  br label %cond.end, !dbg !3248

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3248
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3248
  ret %struct.edge_def* %call2, !dbg !3249
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3250 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3255
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3255

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3255
  br label %cond.end, !dbg !3255

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3256
  ret %struct.VEC_edge_gc* %0, !dbg !3257
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @redirection_data_hash(i8* %p) #5 !dbg !3258 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !3260, metadata !DIExpression()), !dbg !3262
  %outgoing_edge = getelementptr inbounds i8, i8* %p, i64 8, !dbg !3263
  %0 = bitcast i8* %outgoing_edge to %struct.edge_def**, !dbg !3263
  %1 = load %struct.edge_def*, %struct.edge_def** %0, align 8, !dbg !3263
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !3261, metadata !DIExpression()), !dbg !3262
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 1, !dbg !3264
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3264
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !3265
  %3 = load i32, i32* %index, align 8, !dbg !3265
  ret i32 %3, !dbg !3266
}

; Function Attrs: nounwind uwtable
define internal i32 @redirection_data_eq(i8* %p1, i8* %p2) #5 !dbg !3267 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !3269, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %p2, metadata !3270, metadata !DIExpression()), !dbg !3273
  %outgoing_edge = getelementptr inbounds i8, i8* %p1, i64 8, !dbg !3274
  %0 = bitcast i8* %outgoing_edge to %struct.edge_def**, !dbg !3274
  %1 = load %struct.edge_def*, %struct.edge_def** %0, align 8, !dbg !3274
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !3271, metadata !DIExpression()), !dbg !3273
  %outgoing_edge1 = getelementptr inbounds i8, i8* %p2, i64 8, !dbg !3275
  %2 = bitcast i8* %outgoing_edge1 to %struct.edge_def**, !dbg !3275
  %3 = load %struct.edge_def*, %struct.edge_def** %2, align 8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.edge_def* %3, metadata !3272, metadata !DIExpression()), !dbg !3273
  %cmp = icmp eq %struct.edge_def* %1, %3, !dbg !3276
  %conv = zext i1 %cmp to i32, !dbg !3276
  ret i32 %conv, !dbg !3277
}

declare dso_local void @free(i8*) #2

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @loop_exit_edge_p(%struct.loop*, %struct.edge_def*) local_unnamed_addr #2

declare dso_local void @update_bb_profile_for_threading(%struct.basic_block_def*, i32, i64, %struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.redirection_data* @lookup_redirection_data(%struct.edge_def* %e, %struct.edge_def* %incoming_edge, i32 %insert) unnamed_addr #5 !dbg !3278 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3282, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %struct.edge_def* %incoming_edge, metadata !3283, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %insert, metadata !3284, metadata !DIExpression()), !dbg !3292
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !3293
  %0 = bitcast i8* %call to %struct.redirection_data*, !dbg !3293
  call void @llvm.dbg.value(metadata %struct.redirection_data* %0, metadata !3286, metadata !DIExpression()), !dbg !3292
  %outgoing_edge = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3294
  %1 = bitcast i8* %outgoing_edge to %struct.edge_def**, !dbg !3294
  store %struct.edge_def* %e, %struct.edge_def** %1, align 8, !dbg !3295
  %dup_block = bitcast i8* %call to %struct.basic_block_def**, !dbg !3296
  store %struct.basic_block_def* null, %struct.basic_block_def** %dup_block, align 8, !dbg !3297
  %2 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3298
  store i8 0, i8* %2, align 8, !dbg !3299
  %incoming_edges = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3300
  %3 = bitcast i8* %incoming_edges to %struct.el**, !dbg !3300
  store %struct.el* null, %struct.el** %3, align 8, !dbg !3301
  %4 = load %struct.htab*, %struct.htab** @redirection_data, align 8, !dbg !3302
  %call1 = tail call i8** @htab_find_slot(%struct.htab* %4, i8* %call, i32 %insert) #6, !dbg !3303
  call void @llvm.dbg.value(metadata i8** %call1, metadata !3285, metadata !DIExpression()), !dbg !3292
  %cmp = icmp eq i8** %call1, null, !dbg !3304
  br i1 %cmp, label %if.then, label %if.end, !dbg !3306

if.then:                                          ; preds = %entry
  tail call void @free(i8* %call) #6, !dbg !3307
  br label %cleanup, !dbg !3309

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %call1, align 8, !dbg !3310
  %cmp2 = icmp eq i8* %5, null, !dbg !3311
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !3312

if.then3:                                         ; preds = %if.end
  store i8* %call, i8** %call1, align 8, !dbg !3313
  %call4 = tail call i8* @xmalloc(i64 16) #6, !dbg !3315
  %6 = bitcast i8* %incoming_edges to i8**, !dbg !3316
  store i8* %call4, i8** %6, align 8, !dbg !3316
  %e7 = bitcast i8* %call4 to %struct.edge_def**, !dbg !3317
  store %struct.edge_def* %incoming_edge, %struct.edge_def** %e7, align 8, !dbg !3318
  %7 = load %struct.el*, %struct.el** %3, align 8, !dbg !3319
  %next = getelementptr inbounds %struct.el, %struct.el* %7, i64 0, i32 1, !dbg !3320
  store %struct.el* null, %struct.el** %next, align 8, !dbg !3321
  br label %cleanup, !dbg !3322

if.else:                                          ; preds = %if.end
  tail call void @free(i8* %call) #6, !dbg !3323
  %8 = bitcast i8** %call1 to %struct.redirection_data**, !dbg !3324
  %9 = load %struct.redirection_data*, %struct.redirection_data** %8, align 8, !dbg !3324
  call void @llvm.dbg.value(metadata %struct.redirection_data* %9, metadata !3286, metadata !DIExpression()), !dbg !3292
  %tobool = icmp eq i32 %insert, 0, !dbg !3325
  br i1 %tobool, label %cleanup, label %if.then9, !dbg !3326

if.then9:                                         ; preds = %if.else
  %call10 = tail call i8* @xmalloc(i64 16) #6, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %call10, metadata !3287, metadata !DIExpression()), !dbg !3328
  %incoming_edges11 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %9, i64 0, i32 2, !dbg !3329
  %10 = bitcast %struct.el** %incoming_edges11 to i64*, !dbg !3329
  %11 = load i64, i64* %10, align 8, !dbg !3329
  %next12 = getelementptr inbounds i8, i8* %call10, i64 8, !dbg !3330
  %12 = bitcast i8* %next12 to i64*, !dbg !3331
  store i64 %11, i64* %12, align 8, !dbg !3331
  %e13 = bitcast i8* %call10 to %struct.edge_def**, !dbg !3332
  store %struct.edge_def* %incoming_edge, %struct.edge_def** %e13, align 8, !dbg !3333
  %13 = bitcast %struct.el** %incoming_edges11 to i8**, !dbg !3334
  store i8* %call10, i8** %13, align 8, !dbg !3334
  br label %cleanup, !dbg !3335

cleanup:                                          ; preds = %if.else, %if.then9, %if.then3, %if.then
  %retval.0 = phi %struct.redirection_data* [ null, %if.then ], [ %0, %if.then3 ], [ %9, %if.then9 ], [ %9, %if.else ], !dbg !3292
  ret %struct.redirection_data* %retval.0, !dbg !3336
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @create_duplicates(i8** %slot, i8* %data) #5 !dbg !3337 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* %data, metadata !3342, metadata !DIExpression()), !dbg !3345
  %0 = bitcast i8** %slot to %struct.redirection_data**, !dbg !3346
  %1 = load %struct.redirection_data*, %struct.redirection_data** %0, align 8, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.redirection_data* %1, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* %data, metadata !3344, metadata !DIExpression()), !dbg !3345
  %do_not_duplicate = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %1, i64 0, i32 3, !dbg !3347
  %2 = load i8, i8* %do_not_duplicate, align 8, !dbg !3347
  %tobool = icmp eq i8 %2, 0, !dbg !3349
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3350

if.end:                                           ; preds = %entry
  %template_block = getelementptr inbounds i8, i8* %data, i64 8, !dbg !3351
  %3 = bitcast i8* %template_block to %struct.basic_block_def**, !dbg !3351
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %3, align 8, !dbg !3351
  %cmp = icmp eq %struct.basic_block_def* %4, null, !dbg !3353
  br i1 %cmp, label %if.then1, label %if.else, !dbg !3354

if.then1:                                         ; preds = %if.end
  %bb = bitcast i8* %data to %struct.basic_block_def**, !dbg !3355
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3355
  tail call fastcc void @create_block_for_threading(%struct.basic_block_def* %5, %struct.redirection_data* %1) #8, !dbg !3357
  %6 = bitcast %struct.redirection_data* %1 to i64*, !dbg !3358
  %7 = load i64, i64* %6, align 8, !dbg !3358
  %8 = bitcast i8* %template_block to i64*, !dbg !3359
  store i64 %7, i64* %8, align 8, !dbg !3359
  br label %cleanup, !dbg !3360

if.else:                                          ; preds = %if.end
  tail call fastcc void @create_block_for_threading(%struct.basic_block_def* nonnull %4, %struct.redirection_data* %1) #8, !dbg !3361
  tail call fastcc void @create_edge_and_update_destination_phis(%struct.redirection_data* %1) #8, !dbg !3363
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then1, %if.else
  ret i32 1, !dbg !3364
}

; Function Attrs: nounwind uwtable
define internal i32 @fixup_template_block(i8** %slot, i8* %data) #5 !dbg !3365 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3367, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %data, metadata !3368, metadata !DIExpression()), !dbg !3371
  %0 = bitcast i8** %slot to %struct.redirection_data**, !dbg !3372
  %1 = load %struct.redirection_data*, %struct.redirection_data** %0, align 8, !dbg !3372
  call void @llvm.dbg.value(metadata %struct.redirection_data* %1, metadata !3369, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.value(metadata i8* %data, metadata !3370, metadata !DIExpression()), !dbg !3371
  %dup_block = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %1, i64 0, i32 0, !dbg !3373
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3373
  %tobool = icmp eq %struct.basic_block_def* %2, null, !dbg !3375
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !3376

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %data, metadata !3370, metadata !DIExpression()), !dbg !3371
  %template_block = getelementptr inbounds i8, i8* %data, i64 8, !dbg !3377
  %3 = bitcast i8* %template_block to %struct.basic_block_def**, !dbg !3377
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %3, align 8, !dbg !3377
  %cmp = icmp eq %struct.basic_block_def* %2, %4, !dbg !3378
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3379

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @create_edge_and_update_destination_phis(%struct.redirection_data* %1) #8, !dbg !3380
  br label %cleanup, !dbg !3382

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ], !dbg !3371
  ret i32 %retval.0, !dbg !3383
}

; Function Attrs: nounwind uwtable
define internal i32 @redirect_edges(i8** %slot, i8* %data) #5 !dbg !3384 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3386, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %data, metadata !3387, metadata !DIExpression()), !dbg !3399
  %0 = bitcast i8** %slot to %struct.redirection_data**, !dbg !3400
  %1 = load %struct.redirection_data*, %struct.redirection_data** %0, align 8, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.redirection_data* %1, metadata !3388, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i8* %data, metadata !3389, metadata !DIExpression()), !dbg !3399
  %incoming_edges = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %1, i64 0, i32 2, !dbg !3401
  %2 = load %struct.el*, %struct.el** %incoming_edges, align 8, !dbg !3401
  call void @llvm.dbg.value(metadata %struct.el* %2, metadata !3391, metadata !DIExpression()), !dbg !3399
  %dup_block = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %1, i64 0, i32 0, !dbg !3402
  %bb = bitcast i8* %data to %struct.basic_block_def**, !dbg !3403
  %outgoing_edge = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %1, i64 0, i32 1, !dbg !3406
  br label %for.cond, !dbg !3407

for.cond:                                         ; preds = %for.inc, %entry
  %.in = phi %struct.el* [ %2, %entry ], [ %5, %for.inc ]
  %el.0 = phi %struct.el* [ %2, %entry ], [ %5, %for.inc ], !dbg !3408
  call void @llvm.dbg.value(metadata %struct.el* %el.0, metadata !3391, metadata !DIExpression()), !dbg !3399
  %tobool = icmp eq %struct.el* %el.0, null, !dbg !3409
  br i1 %tobool, label %for.end, label %for.body, !dbg !3409

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.el* %.in to i8*, !dbg !3408
  %e1 = getelementptr inbounds %struct.el, %struct.el* %el.0, i64 0, i32 0, !dbg !3410
  %4 = load %struct.edge_def*, %struct.edge_def** %e1, align 8, !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %4, metadata !3392, metadata !DIExpression()), !dbg !3411
  %next2 = getelementptr inbounds %struct.el, %struct.el* %el.0, i64 0, i32 1, !dbg !3412
  %5 = load %struct.el*, %struct.el** %next2, align 8, !dbg !3412
  call void @llvm.dbg.value(metadata %struct.el* %5, metadata !3390, metadata !DIExpression()), !dbg !3399
  tail call void @free(i8* %3) #6, !dbg !3413
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 3, !dbg !3414
  store i8* null, i8** %aux, align 8, !dbg !3415
  %6 = load i64, i64* getelementptr inbounds (%struct.thread_stats_d, %struct.thread_stats_d* @thread_stats, i64 0, i32 0), align 8, !dbg !3416
  %inc = add i64 %6, 1, !dbg !3416
  store i64 %inc, i64* getelementptr inbounds (%struct.thread_stats_d, %struct.thread_stats_d* @thread_stats, i64 0, i32 0), align 8, !dbg !3416
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3417
  %tobool3 = icmp eq %struct.basic_block_def* %7, null, !dbg !3418
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3402
  %tobool4 = icmp ne %struct._IO_FILE* %8, null, !dbg !3402
  br i1 %tobool3, label %if.else, label %if.then, !dbg !3419

if.then:                                          ; preds = %for.body
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !3420

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* @dump_flags, align 4, !dbg !3422
  %and = and i32 %9, 8, !dbg !3423
  %tobool5 = icmp eq i32 %and, 0, !dbg !3423
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !3424

if.then6:                                         ; preds = %land.lhs.true
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 0, !dbg !3425
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3425
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !3426
  %11 = load i32, i32* %index, align 8, !dbg !3426
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 1, !dbg !3427
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3427
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 9, !dbg !3428
  %13 = load i32, i32* %index7, align 8, !dbg !3428
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !3429
  %14 = load i32, i32* %index9, align 8, !dbg !3429
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %11, i32 %13, i32 %14) #6, !dbg !3430
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3431
  br label %if.end, !dbg !3430

if.end:                                           ; preds = %land.lhs.true, %if.then6, %if.then
  %15 = phi %struct.basic_block_def* [ %7, %land.lhs.true ], [ %.pre, %if.then6 ], [ %7, %if.then ], !dbg !3431
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 9, !dbg !3432
  %16 = load i64, i64* %count, align 8, !dbg !3432
  %count11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 8, !dbg !3433
  %17 = load i64, i64* %count11, align 8, !dbg !3434
  %add = add nsw i64 %17, %16, !dbg !3434
  store i64 %add, i64* %count11, align 8, !dbg !3434
  %src12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 0, !dbg !3435
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8, !dbg !3435
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 11, !dbg !3435
  %19 = load i32, i32* %frequency, align 8, !dbg !3435
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 8, !dbg !3435
  %20 = load i32, i32* %probability, align 4, !dbg !3435
  %mul = mul nsw i32 %19, %20, !dbg !3435
  %add13 = add nsw i32 %mul, 5000, !dbg !3435
  %div = sdiv i32 %add13, 10000, !dbg !3435
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3436
  %frequency15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !3437
  %22 = load i32, i32* %frequency15, align 8, !dbg !3438
  %add16 = add nsw i32 %22, %div, !dbg !3438
  store i32 %add16, i32* %frequency15, align 8, !dbg !3438
  %23 = load i64, i64* %count, align 8, !dbg !3439
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3440
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 1, !dbg !3440
  %25 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3440
  %tobool19 = icmp eq %struct.VEC_edge_gc* %25, null, !dbg !3440
  br i1 %tobool19, label %cond.end, label %cond.true, !dbg !3440

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %25, i64 0, i32 0, !dbg !3440
  br label %cond.end, !dbg !3440

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3440
  %call22 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !3440
  %count23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call22, i64 0, i32 9, !dbg !3441
  %26 = load i64, i64* %count23, align 8, !dbg !3442
  %add24 = add nsw i64 %26, %23, !dbg !3442
  store i64 %add24, i64* %count23, align 8, !dbg !3442
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3443
  %call26 = tail call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %4, %struct.basic_block_def* %27) #6, !dbg !3444
  call void @llvm.dbg.value(metadata %struct.edge_def* %call26, metadata !3396, metadata !DIExpression()), !dbg !3445
  %cmp = icmp eq %struct.edge_def* %4, %call26, !dbg !3446
  br i1 %cmp, label %cond.end29, label %cond.true27, !dbg !3446

cond.true27:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3446
  br label %cond.end29, !dbg !3446

cond.end29:                                       ; preds = %cond.end, %cond.true27
  tail call void @flush_pending_stmts(%struct.edge_def* %call26) #6, !dbg !3447
  br label %for.inc, !dbg !3448

if.else:                                          ; preds = %for.body
  br i1 %tobool4, label %land.lhs.true32, label %if.end42, !dbg !3449

land.lhs.true32:                                  ; preds = %if.else
  %28 = load i32, i32* @dump_flags, align 4, !dbg !3450
  %and33 = and i32 %28, 8, !dbg !3451
  %tobool34 = icmp eq i32 %and33, 0, !dbg !3451
  br i1 %tobool34, label %if.end42, label %if.then35, !dbg !3452

if.then35:                                        ; preds = %land.lhs.true32
  %src36 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 0, !dbg !3453
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %src36, align 8, !dbg !3453
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 9, !dbg !3454
  %30 = load i32, i32* %index37, align 8, !dbg !3454
  %dest38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 1, !dbg !3455
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest38, align 8, !dbg !3455
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 9, !dbg !3456
  %32 = load i32, i32* %index39, align 8, !dbg !3456
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3457
  %index40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !3458
  %34 = load i32, i32* %index40, align 8, !dbg !3458
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %32, i32 %34) #6, !dbg !3459
  br label %if.end42, !dbg !3459

if.end42:                                         ; preds = %land.lhs.true32, %if.then35, %if.else
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3460
  %36 = load %struct.edge_def*, %struct.edge_def** %outgoing_edge, align 8, !dbg !3461
  %dest44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 1, !dbg !3462
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest44, align 8, !dbg !3462
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(%struct.basic_block_def* %35, %struct.basic_block_def* %37) #8, !dbg !3463
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3464
  %call46 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %38) #8, !dbg !3465
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call46, i64 0, i32 7, !dbg !3466
  %39 = load i32, i32* %flags, align 8, !dbg !3467
  %and47 = and i32 %39, -3075, !dbg !3467
  store i32 %and47, i32* %flags, align 8, !dbg !3467
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3468
  %call49 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %40) #8, !dbg !3469
  %flags50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call49, i64 0, i32 7, !dbg !3470
  %41 = load i32, i32* %flags50, align 8, !dbg !3471
  %or = or i32 %41, 1, !dbg !3471
  store i32 %or, i32* %flags50, align 8, !dbg !3471
  %count51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 9, !dbg !3472
  %42 = load i64, i64* %count51, align 8, !dbg !3472
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3473
  %count53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i64 0, i32 8, !dbg !3474
  store i64 %42, i64* %count53, align 8, !dbg !3475
  %src54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 0, !dbg !3476
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %src54, align 8, !dbg !3476
  %frequency55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 11, !dbg !3476
  %45 = load i32, i32* %frequency55, align 8, !dbg !3476
  %probability56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i64 0, i32 8, !dbg !3476
  %46 = load i32, i32* %probability56, align 4, !dbg !3476
  %mul57 = mul nsw i32 %45, %46, !dbg !3476
  %add58 = add nsw i32 %mul57, 5000, !dbg !3476
  %div59 = sdiv i32 %add58, 10000, !dbg !3476
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3477
  %frequency61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i64 0, i32 11, !dbg !3478
  store i32 %div59, i32* %frequency61, align 8, !dbg !3479
  br label %for.inc

for.inc:                                          ; preds = %cond.end29, %if.end42
  call void @llvm.dbg.value(metadata %struct.el* %5, metadata !3391, metadata !DIExpression()), !dbg !3399
  br label %for.cond, !dbg !3480, !llvm.loop !3481

for.end:                                          ; preds = %for.cond
  %48 = load %struct.el*, %struct.el** %incoming_edges, align 8, !dbg !3483
  %tobool64 = icmp eq %struct.el* %48, null, !dbg !3485
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !3486

if.then65:                                        ; preds = %for.end
  %49 = getelementptr inbounds i8, i8* %data, i64 16, !dbg !3487
  store i8 1, i8* %49, align 8, !dbg !3488
  br label %if.end66, !dbg !3489

if.end66:                                         ; preds = %for.end, %if.then65
  ret i32 1, !dbg !3490
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @create_block_for_threading(%struct.basic_block_def* %bb, %struct.redirection_data* %rd) unnamed_addr #5 !dbg !3491 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3495, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.redirection_data* %rd, metadata !3496, metadata !DIExpression()), !dbg !3497
  %call = tail call %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %bb, %struct.edge_def* null, %struct.basic_block_def* null) #6, !dbg !3498
  %dup_block = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 0, !dbg !3499
  store %struct.basic_block_def* %call, %struct.basic_block_def** %dup_block, align 8, !dbg !3500
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3501
  store i32 0, i32* %frequency, align 8, !dbg !3502
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3503
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 8, !dbg !3504
  store i64 0, i64* %count, align 8, !dbg !3505
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3506
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(%struct.basic_block_def* %1, %struct.basic_block_def* null) #8, !dbg !3507
  ret void, !dbg !3508
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_edge_and_update_destination_phis(%struct.redirection_data* %rd) unnamed_addr #5 !dbg !3509 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.redirection_data* %rd, metadata !3513, metadata !DIExpression()), !dbg !3522
  %dup_block = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 0, !dbg !3523
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3523
  %outgoing_edge = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 1, !dbg !3524
  %1 = load %struct.edge_def*, %struct.edge_def** %outgoing_edge, align 8, !dbg !3524
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 1, !dbg !3525
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3525
  %call = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %0, %struct.basic_block_def* %2, i32 1) #6, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3514, metadata !DIExpression()), !dbg !3522
  %3 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3527
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3527
  tail call void @rescan_loop_exit(%struct.edge_def* %call, i8 zeroext 1, i8 zeroext 0) #6, !dbg !3528
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 8, !dbg !3529
  store i32 10000, i32* %probability, align 4, !dbg !3530
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3531
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !3532
  %5 = load i64, i64* %count, align 8, !dbg !3532
  %count2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 9, !dbg !3533
  store i64 %5, i64* %count2, align 8, !dbg !3534
  %6 = load %struct.edge_def*, %struct.edge_def** %outgoing_edge, align 8, !dbg !3535
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i64 0, i32 3, !dbg !3536
  %7 = bitcast i8** %aux to i64*, !dbg !3536
  %8 = load i64, i64* %7, align 8, !dbg !3536
  %aux4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 3, !dbg !3537
  %9 = bitcast i8** %aux4 to i64*, !dbg !3538
  store i64 %8, i64* %9, align 8, !dbg !3538
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3539
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3539
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3540
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8, !dbg !3540
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %11) #6, !dbg !3539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !3539
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7, !dbg !3539
  br label %for.cond, !dbg !3541

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3522
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3542
  %tobool = icmp eq i8 %call6, 0, !dbg !3543
  br i1 %tobool, label %for.body, label %for.end, !dbg !3544

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3522
  %call7 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3545
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !3516, metadata !DIExpression()), !dbg !3546
  %12 = load %struct.edge_def*, %struct.edge_def** %outgoing_edge, align 8, !dbg !3547
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 6, !dbg !3548
  %13 = load i32, i32* %dest_idx, align 4, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %13, metadata !3521, metadata !DIExpression()), !dbg !3546
  %conv = sext i32 %13 to i64, !dbg !3549
  %call9 = call fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %call7, i64 %conv) #8, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %call9, metadata !3520, metadata !DIExpression()), !dbg !3546
  %call11 = call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %call7, i64 %conv) #8, !dbg !3551
  call void @add_phi_arg(%union.gimple_statement_d* %call7, %union.tree_node* %call11, %struct.edge_def* %call, i32 %call9) #6, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3515, metadata !DIExpression(DW_OP_deref)), !dbg !3522
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3553
  br label %for.cond, !dbg !3554, !llvm.loop !3555

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3557
  ret void, !dbg !3557
}

declare dso_local %struct.basic_block_def* @duplicate_block(%struct.basic_block_def*, %struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_ctrl_stmt_and_useless_edges(%struct.basic_block_def* %bb, %struct.basic_block_def* %dest_bb) unnamed_addr #5 !dbg !3558 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp13 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3562, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest_bb, metadata !3563, metadata !DIExpression()), !dbg !3567
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3568
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3568
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3569
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3570
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3570
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #8, !dbg !3570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !3570
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3571
  %tobool = icmp eq i8 %call, 0, !dbg !3571
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3573

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3574
  %tobool2 = icmp eq %union.gimple_statement_d* %call1, null, !dbg !3574
  br i1 %tobool2, label %if.end, label %land.lhs.true3, !dbg !3575

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3576
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call4) #8, !dbg !3577
  %cmp = icmp eq i32 %call5, 1, !dbg !3578
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3579

lor.lhs.false:                                    ; preds = %land.lhs.true3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3580
  %call7 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call6) #8, !dbg !3581
  %cmp8 = icmp eq i32 %call7, 3, !dbg !3582
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !3583

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %call10 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3584
  %call11 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call10) #8, !dbg !3585
  %cmp12 = icmp eq i32 %call11, 5, !dbg !3586
  br i1 %cmp12, label %if.then, label %if.end, !dbg !3587

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %land.lhs.true3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3564, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3588
  br label %if.end, !dbg !3588

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then, %lor.lhs.false9
  %3 = bitcast %struct.edge_iterator* %tmp13 to i8*, !dbg !3589
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3589
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3589
  %call14 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3589
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp13, i64 0, i32 0, !dbg !3589
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 0, !dbg !3589
  store i32 %5, i32* %4, align 8, !dbg !3589
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp13, i64 0, i32 1, !dbg !3589
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call14, 1, !dbg !3589
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !3589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !3589
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3589
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3591
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3591
  br label %for.cond, !dbg !3593

for.cond:                                         ; preds = %if.end19, %if.end
  %10 = load i32, i32* %8, align 8, !dbg !3594
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3594
  %call15 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %10, %struct.VEC_edge_gc** %11) #8, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !3565, metadata !DIExpression()), !dbg !3567
  %tobool16 = icmp eq %struct.edge_def* %call15, null, !dbg !3595
  br i1 %tobool16, label %for.end, label %for.body, !dbg !3595

for.body:                                         ; preds = %for.cond
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 1, !dbg !3596
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3596
  %cmp17 = icmp eq %struct.basic_block_def* %12, %dest_bb, !dbg !3599
  br i1 %cmp17, label %if.else, label %if.then18, !dbg !3600

if.then18:                                        ; preds = %for.body
  call void @remove_edge(%struct.edge_def* nonnull %call15) #6, !dbg !3601
  br label %if.end19, !dbg !3601

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3566, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3602
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  br label %for.cond, !dbg !3603, !llvm.loop !3604

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3606
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3606
  ret void, !dbg !3606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3607 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3609, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3610, metadata !DIExpression()), !dbg !3613
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !3614
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3611, metadata !DIExpression()), !dbg !3612
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !3615
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3616
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3617
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3618
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3619
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3620
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3621
  ret void, !dbg !3622
}

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3623 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3626
  %tobool = icmp eq i8 %call, 0, !dbg !3626
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3627

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3628
  br label %cond.end, !dbg !3627

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !3627
  ret %struct.edge_def* %cond, !dbg !3629
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3630 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3632, metadata !DIExpression()), !dbg !3633
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3634
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3634

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3635
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3635
  br label %cond.end, !dbg !3634

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3634
  ret %struct.gimple_seq_node_d* %cond, !dbg !3636
}

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @rescan_loop_exit(%struct.edge_def*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_arg_location(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3637 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3642, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %i, metadata !3643, metadata !DIExpression()), !dbg !3644
  %conv = trunc i64 %i to i32, !dbg !3645
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !3646
  %locus = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 2, !dbg !3647
  %0 = load i32, i32* %locus, align 8, !dbg !3647
  ret i32 %0, !dbg !3648
}

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !3649 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3653, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %index, metadata !3654, metadata !DIExpression()), !dbg !3657
  %conv = trunc i64 %index to i32, !dbg !3658
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !3655, metadata !DIExpression()), !dbg !3657
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3660
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !3661
  ret %union.tree_node* %call1, !dbg !3662
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3663 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3667, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 %index, metadata !3668, metadata !DIExpression()), !dbg !3669
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3670
  %0 = load i32, i32* %capacity, align 8, !dbg !3670
  %cmp = icmp ult i32 %0, %index, !dbg !3670
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3670

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3670
  br label %cond.end, !dbg !3670

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3671
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3671
  ret %struct.phi_arg_d* %arrayidx, !dbg !3672
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3673 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3680, metadata !DIExpression()), !dbg !3681
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3682
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3682
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3683
  ret %union.tree_node* %1, !dbg !3684
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @flush_pending_stmts(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3685 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3689, metadata !DIExpression()), !dbg !3690
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !3691
  %tobool = icmp eq i8 %call, 0, !dbg !3691
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3691

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3691
  br label %cond.end, !dbg !3691

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3692
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3692
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3692
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3692

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3692
  br label %cond.end5, !dbg !3692

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3692
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !3692
  ret %struct.edge_def* %call7, !dbg !3693
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3694 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3698, metadata !DIExpression()), !dbg !3699
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3700
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3700
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3700
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3700

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3700
  br label %cond.end, !dbg !3700

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3700
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3700
  %cmp = icmp eq i32 %call, 1, !dbg !3701
  %conv2 = zext i1 %cmp to i8, !dbg !3700
  ret i8 %conv2, !dbg !3702
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3703 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3707, metadata !DIExpression()), !dbg !3708
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3709
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !3709
  ret %struct.VEC_int_heap* %0, !dbg !3709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !3710 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3713
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3713
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3713
  %tobool = icmp eq %struct.loops* %1, null, !dbg !3713
  br i1 %tobool, label %return, label %if.end, !dbg !3715

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3716
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3716
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3716
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !3716

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3716
  br label %cond.end, !dbg !3716

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3716
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3716
  br label %return, !dbg !3717

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !3718
  ret i32 %retval.0, !dbg !3719
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3720 {
entry:
  unreachable, !dbg !3729
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3730 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3737, metadata !DIExpression()), !dbg !3739
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3740
  %0 = load i32, i32* %num1, align 4, !dbg !3740
  %inc = add i32 %0, 1, !dbg !3740
  store i32 %inc, i32* %num1, align 4, !dbg !3740
  %idxprom = zext i32 %0 to i64, !dbg !3740
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3740
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3738, metadata !DIExpression()), !dbg !3739
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3740
  ret i32* %arrayidx, !dbg !3740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !3741 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3747, metadata !DIExpression()), !dbg !3749
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3750
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3750
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3750
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3750

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3750
  br label %cond.end, !dbg !3750

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3750
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %call, metadata !3748, metadata !DIExpression()), !dbg !3749
  %cmp = icmp eq i32 %call, 0, !dbg !3751
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3753

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3754
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3754
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3754

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3754
  br label %cond.end8, !dbg !3754

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !3754
  %sub = add i32 %call, -1, !dbg !3754
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !3754
  br label %cleanup, !dbg !3755

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !3749
  ret %struct.loop* %retval.0, !dbg !3756
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3757 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3761, metadata !DIExpression()), !dbg !3762
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3763
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3763

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3763
  %0 = load i32, i32* %num, align 8, !dbg !3763
  br label %cond.end, !dbg !3763

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3763
  ret i32 %cond, !dbg !3763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3764 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3769, metadata !DIExpression()), !dbg !3770
  br label %land.end, !dbg !3771

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3771
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3771
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3771
  ret %struct.loop* %0, !dbg !3771
}

declare dso_local zeroext i8 @empty_block_p(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @determine_bb_domination_status(%struct.loop* %loop, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3772 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3776, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3777, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 0, metadata !3781, metadata !DIExpression()), !dbg !3784
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3785
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3785
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3786
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3786
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3787
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3787
  %cmp = icmp eq %struct.basic_block_def* %2, %bb, !dbg !3789
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3790

if.end:                                           ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3791
  %3 = load i32, i32* %num_nodes, align 4, !dbg !3791
  %conv = zext i32 %3 to i64, !dbg !3791
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3791
  %4 = bitcast i8* %call to %struct.basic_block_def**, !dbg !3791
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %4, metadata !3778, metadata !DIExpression()), !dbg !3784
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3792
  %5 = bitcast %struct.basic_block_def** %header to i64*, !dbg !3792
  %6 = load i64, i64* %5, align 8, !dbg !3792
  store i64 %6, i64* bitcast (%struct.basic_block_def** @dbds_ce_stop to i64*), align 8, !dbg !3793
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3794
  %8 = load i32, i32* %num_nodes, align 4, !dbg !3795
  %9 = bitcast %struct.basic_block_def* %bb to i8*, !dbg !3796
  %call3 = tail call i32 @dfs_enumerate_from(%struct.basic_block_def* %7, i32 1, i8 (%struct.basic_block_def*, i8*)* nonnull @dbds_continue_enumeration_p, %struct.basic_block_def** %4, i32 %8, i8* %9) #6, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3779, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 0, metadata !3780, metadata !DIExpression()), !dbg !3784
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3798
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3798
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3798
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3802
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3802
  %wide.trip.count = zext i32 %call3 to i64, !dbg !3804
  br label %for.cond, !dbg !3805

for.cond:                                         ; preds = %for.inc20, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc20 ], [ 0, %if.end ], !dbg !3806
  %bb_reachable.0 = phi i8 [ %bb_reachable.1.lcssa, %for.inc20 ], [ 0, %if.end ], !dbg !3807
  call void @llvm.dbg.value(metadata i8 %bb_reachable.0, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3780, metadata !DIExpression()), !dbg !3784
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3804
  br i1 %exitcond, label %for.end21, label %for.body, !dbg !3808

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3809
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %4, i64 %indvars.iv, !dbg !3809
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3809
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 0, !dbg !3809
  %call6 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3809
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 0, !dbg !3809
  store i32 %16, i32* %11, align 8, !dbg !3809
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call6, 1, !dbg !3809
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %12, align 8, !dbg !3809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3809
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3809
  br label %for.cond7, !dbg !3809

for.cond7:                                        ; preds = %if.end14, %for.body
  %bb_reachable.1 = phi i8 [ %bb_reachable.0, %for.body ], [ %spec.select, %if.end14 ], !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.1, metadata !3781, metadata !DIExpression()), !dbg !3784
  %18 = load i32, i32* %13, align 8, !dbg !3810
  %19 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !3810
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3783, metadata !DIExpression(DW_OP_deref)), !dbg !3784
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %18, %struct.VEC_edge_gc** %19, %struct.edge_def** nonnull %e) #8, !dbg !3810
  %tobool = icmp eq i8 %call8, 0, !dbg !3809
  br i1 %tobool, label %for.inc20, label %for.body9, !dbg !3809

for.body9:                                        ; preds = %for.cond7
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3811
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3783, metadata !DIExpression()), !dbg !3784
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 0, !dbg !3814
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3814
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3815
  %cmp11 = icmp eq %struct.basic_block_def* %21, %22, !dbg !3816
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3817

if.then13:                                        ; preds = %for.body9
  call void @free(i8* %call) #6, !dbg !3818
  br label %cleanup, !dbg !3820

if.end14:                                         ; preds = %for.body9
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3783, metadata !DIExpression()), !dbg !3784
  %cmp16 = icmp eq %struct.basic_block_def* %21, %bb, !dbg !3821
  %spec.select = select i1 %cmp16, i8 1, i8 %bb_reachable.1, !dbg !3823
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3782, metadata !DIExpression(DW_OP_deref)), !dbg !3784
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3810
  br label %for.cond7, !dbg !3810, !llvm.loop !3824

for.inc20:                                        ; preds = %for.cond7
  %bb_reachable.1.lcssa = phi i8 [ %bb_reachable.1, %for.cond7 ], !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.1.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.1.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.1.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3826
  br label %for.cond, !dbg !3827, !llvm.loop !3828

for.end21:                                        ; preds = %for.cond
  %bb_reachable.0.lcssa = phi i8 [ %bb_reachable.0, %for.cond ], !dbg !3807
  call void @llvm.dbg.value(metadata i8 %bb_reachable.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8 %bb_reachable.0.lcssa, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @free(i8* %call) #6, !dbg !3830
  %tobool23 = icmp eq i8 %bb_reachable.0.lcssa, 0, !dbg !3831
  %cond = select i1 %tobool23, i32 1, i32 2, !dbg !3831
  br label %cleanup, !dbg !3832

cleanup:                                          ; preds = %entry, %for.end21, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %cond, %for.end21 ], [ 2, %entry ], !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3833
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3833
  ret i32 %retval.0, !dbg !3833
}

declare dso_local %struct.basic_block_def* @create_preheader(%struct.loop*, i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @thread_single_edge(%struct.edge_def* %e) unnamed_addr #5 !dbg !3834 {
entry:
  %rd = alloca %struct.redirection_data, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3838, metadata !DIExpression()), !dbg !3842
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3843
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3843
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3839, metadata !DIExpression()), !dbg !3842
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 3, !dbg !3844
  %1 = bitcast i8** %aux to %struct.edge_def**, !dbg !3844
  %2 = load %struct.edge_def*, %struct.edge_def** %1, align 8, !dbg !3844
  call void @llvm.dbg.value(metadata %struct.edge_def* %2, metadata !3840, metadata !DIExpression()), !dbg !3842
  %3 = bitcast %struct.redirection_data* %rd to i8*, !dbg !3845
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3845
  store i8* null, i8** %aux, align 8, !dbg !3846
  %4 = load i64, i64* getelementptr inbounds (%struct.thread_stats_d, %struct.thread_stats_d* @thread_stats, i64 0, i32 0), align 8, !dbg !3847
  %inc = add i64 %4, 1, !dbg !3847
  store i64 %inc, i64* getelementptr inbounds (%struct.thread_stats_d, %struct.thread_stats_d* @thread_stats, i64 0, i32 0), align 8, !dbg !3847
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %0) #8, !dbg !3848
  %tobool = icmp eq i8 %call, 0, !dbg !3848
  br i1 %tobool, label %if.end, label %if.then, !dbg !3850

if.then:                                          ; preds = %entry
  %dest2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i64 0, i32 1, !dbg !3851
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest2, align 8, !dbg !3851
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(%struct.basic_block_def* %0, %struct.basic_block_def* %5) #8, !dbg !3853
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i64 0, i32 7, !dbg !3854
  %6 = load i32, i32* %flags, align 8, !dbg !3855
  %and = and i32 %6, -3076, !dbg !3855
  %or = or i32 %and, 1, !dbg !3856
  store i32 %or, i32* %flags, align 8, !dbg !3856
  br label %cleanup, !dbg !3857

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3858
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3858
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 11, !dbg !3858
  %8 = load i32, i32* %frequency, align 8, !dbg !3858
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3858
  %9 = load i32, i32* %probability, align 4, !dbg !3858
  %mul = mul nsw i32 %8, %9, !dbg !3858
  %add = add nsw i32 %mul, 5000, !dbg !3858
  %div = sdiv i32 %add, 10000, !dbg !3858
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !3859
  %10 = load i64, i64* %count, align 8, !dbg !3859
  tail call void @update_bb_profile_for_threading(%struct.basic_block_def* %0, i32 %div, i64 %10, %struct.edge_def* %2) #6, !dbg !3860
  %outgoing_edge = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 1, !dbg !3861
  store %struct.edge_def* %2, %struct.edge_def** %outgoing_edge, align 8, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.redirection_data* %rd, metadata !3841, metadata !DIExpression(DW_OP_deref)), !dbg !3842
  call fastcc void @create_block_for_threading(%struct.basic_block_def* %0, %struct.redirection_data* nonnull %rd) #8, !dbg !3863
  call void @llvm.dbg.value(metadata %struct.redirection_data* %rd, metadata !3841, metadata !DIExpression(DW_OP_deref)), !dbg !3842
  call fastcc void @create_edge_and_update_destination_phis(%struct.redirection_data* nonnull %rd) #8, !dbg !3864
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3865
  %tobool4 = icmp eq %struct._IO_FILE* %11, null, !dbg !3865
  br i1 %tobool4, label %if.end13, label %land.lhs.true, !dbg !3867

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* @dump_flags, align 4, !dbg !3868
  %and5 = and i32 %12, 8, !dbg !3869
  %tobool6 = icmp eq i32 %and5, 0, !dbg !3869
  br i1 %tobool6, label %if.end13, label %if.then7, !dbg !3870

if.then7:                                         ; preds = %land.lhs.true
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3871
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3872
  %14 = load i32, i32* %index, align 8, !dbg !3872
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3873
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !3874
  %16 = load i32, i32* %index10, align 8, !dbg !3874
  %dup_block = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 0, !dbg !3875
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block, align 8, !dbg !3875
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 9, !dbg !3876
  %18 = load i32, i32* %index11, align 8, !dbg !3876
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %14, i32 %16, i32 %18) #6, !dbg !3877
  br label %if.end13, !dbg !3877

if.end13:                                         ; preds = %land.lhs.true, %if.end, %if.then7
  %19 = load i64, i64* %count, align 8, !dbg !3878
  %dup_block15 = getelementptr inbounds %struct.redirection_data, %struct.redirection_data* %rd, i64 0, i32 0, !dbg !3879
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block15, align 8, !dbg !3879
  %count16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 8, !dbg !3880
  store i64 %19, i64* %count16, align 8, !dbg !3881
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3882
  %frequency18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !3882
  %22 = load i32, i32* %frequency18, align 8, !dbg !3882
  %23 = load i32, i32* %probability, align 4, !dbg !3882
  %mul20 = mul nsw i32 %22, %23, !dbg !3882
  %add21 = add nsw i32 %mul20, 5000, !dbg !3882
  %div22 = sdiv i32 %add21, 10000, !dbg !3882
  %frequency24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 11, !dbg !3883
  store i32 %div22, i32* %frequency24, align 8, !dbg !3884
  %24 = load i64, i64* %count, align 8, !dbg !3885
  %call27 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %20) #8, !dbg !3886
  %count28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call27, i64 0, i32 9, !dbg !3887
  store i64 %24, i64* %count28, align 8, !dbg !3888
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block15, align 8, !dbg !3889
  %call30 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %e, %struct.basic_block_def* %25) #6, !dbg !3890
  call void @flush_pending_stmts(%struct.edge_def* %e) #6, !dbg !3891
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dup_block15, align 8, !dbg !3892
  br label %cleanup, !dbg !3893

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi %struct.basic_block_def* [ %0, %if.then ], [ %26, %if.end13 ], !dbg !3842
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3894
  ret %struct.basic_block_def* %retval.0, !dbg !3894
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3895 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3899, metadata !DIExpression()), !dbg !3900
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !3901
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3902
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3902
  ret %struct.basic_block_def* %0, !dbg !3903
}

declare dso_local void @set_loop_copy(%struct.loop*, %struct.loop*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_forwarder_block(%struct.basic_block_def*, i8 (%struct.edge_def*)*, void (%struct.basic_block_def*)*) local_unnamed_addr #2

declare dso_local zeroext i8 @mfb_keep_just(%struct.edge_def*) #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local i32 @dfs_enumerate_from(%struct.basic_block_def*, i32, i8 (%struct.basic_block_def*, i8*)*, %struct.basic_block_def**, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @dbds_continue_enumeration_p(%struct.basic_block_def* %bb, i8* %stop) #5 !dbg !3904 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3908, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i8* %stop, metadata !3909, metadata !DIExpression()), !dbg !3910
  %0 = bitcast i8* %stop to %struct.basic_block_def*, !dbg !3911
  %cmp = icmp ne %struct.basic_block_def* %0, %bb, !dbg !3912
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** @dbds_ce_stop, align 8, !dbg !3913
  %cmp1 = icmp ne %struct.basic_block_def* %1, %bb, !dbg !3913
  %2 = and i1 %cmp1, %cmp, !dbg !3913
  %conv = zext i1 %2 to i8, !dbg !3914
  ret i8 %conv, !dbg !3915
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3916 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3918, metadata !DIExpression()), !dbg !3919
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3920
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3920
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3920
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3920

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3920
  br label %cond.end, !dbg !3920

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3920
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3920
  %cmp = icmp eq i32 %call, 1, !dbg !3921
  %conv2 = zext i1 %cmp to i8, !dbg !3920
  ret i8 %conv2, !dbg !3922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3923 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3931, metadata !DIExpression()), !dbg !3932
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3933
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3933

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3933
  %0 = load i32, i32* %num, align 4, !dbg !3933
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3933
  br i1 %cmp, label %if.then, label %if.else, !dbg !3935

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3936
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3936
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3936
  br label %return, !dbg !3936

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3938

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3940
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3940
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3940
  ret i32 %retval.0, !dbg !3935
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !3941 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !3945, metadata !DIExpression()), !dbg !3946
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3947
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3947
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3947
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3947
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3947
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3947
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3947

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3947
  br label %cond.end, !dbg !3947

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3947
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !3947
  ret %struct.loop* %call, !dbg !3948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3949 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3954, metadata !DIExpression()), !dbg !3955
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3956
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3956
  br i1 %tobool, label %if.end, label %if.then, !dbg !3958

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3958
  tail call void @free(i8* nonnull %1) #6, !dbg !3956
  br label %if.end, !dbg !3956

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3958
  ret void, !dbg !3958
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3959 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** @threaded_edges, metadata !3963, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 1, metadata !3964, metadata !DIExpression()), !dbg !3966
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** @threaded_edges, align 8, !dbg !3967
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3967
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3967

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !3967
  br label %cond.end, !dbg !3967

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3967
  %call = tail call fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %cond, i32 1) #8, !dbg !3967
  %tobool1 = icmp eq i32 %call, 0, !dbg !3967
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3967
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3965, metadata !DIExpression()), !dbg !3966
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3967

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_edge_heap** @threaded_edges to i8**), align 8, !dbg !3968
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %1, i32 1) #6, !dbg !3968
  store i8* %call3, i8** bitcast (%struct.VEC_edge_heap** @threaded_edges to i8**), align 8, !dbg !3968
  br label %if.end, !dbg !3968

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3967
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !3970 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3975, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !3976, metadata !DIExpression()), !dbg !3978
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3979
  %0 = load i32, i32* %num1, align 8, !dbg !3979
  %inc = add i32 %0, 1, !dbg !3979
  store i32 %inc, i32* %num1, align 8, !dbg !3979
  %idxprom = zext i32 %0 to i64, !dbg !3979
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3979
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !3977, metadata !DIExpression()), !dbg !3978
  store %struct.edge_def* %obj_, %struct.edge_def** %arrayidx, align 8, !dbg !3979
  ret %struct.edge_def** %arrayidx, !dbg !3979
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3980 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3984, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i32 1, metadata !3985, metadata !DIExpression()), !dbg !3986
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3987
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3987

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 1, !dbg !3987
  %0 = load i32, i32* %alloc, align 4, !dbg !3987
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3987
  %1 = load i32, i32* %num, align 8, !dbg !3987
  %cmp1 = icmp ne i32 %0, %1, !dbg !3987
  %phitmp = zext i1 %cmp1 to i32, !dbg !3987
  br label %cond.end, !dbg !3987

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3987

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3987
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1885, !1886, !1887}
!llvm.ident = !{!1888}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "threaded_edges", scope: !2, file: !3, line: 152, type: !1870, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !439, globals: !1875, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-threadupdate.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !386, !390, !429, !434}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !135, line: 363, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !135, line: 355, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !146, line: 474, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149}
!148 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !151, line: 280, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!153 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !151, line: 1817, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !151, line: 1805, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !151, line: 39, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!185 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!192 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!193 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!194 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!195 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!196 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!197 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!198 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!199 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!200 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!201 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!202 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!203 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!204 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!205 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!206 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!207 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!208 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!209 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!210 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!213 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!214 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!215 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!216 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!217 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!218 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!219 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!220 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!221 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!222 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!223 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!224 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!225 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!228 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!229 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!230 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!231 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!232 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!233 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!234 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!235 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!236 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!237 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!238 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!239 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!240 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!241 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!242 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!243 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!244 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!245 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!246 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!247 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!248 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!249 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!250 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!251 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!252 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!253 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!254 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!255 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!256 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!257 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!258 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!259 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!260 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!261 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!262 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!264 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!265 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!266 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!267 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!268 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!269 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!270 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!271 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!274 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!275 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!280 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!282 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!283 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!284 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!285 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!286 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!287 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!288 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!289 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!290 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!291 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!292 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!293 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!294 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!295 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!296 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!297 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!298 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!299 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!300 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!301 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!302 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!303 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!304 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!305 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!307 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!308 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!309 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!310 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!311 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!312 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!313 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!314 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!315 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!316 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!317 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!318 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!319 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!320 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!321 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!322 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!323 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!324 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!325 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!326 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!327 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!328 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!329 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!330 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!331 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!332 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!333 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!334 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!335 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!336 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!337 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!350 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!351 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!352 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!353 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!354 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!370 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!371 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!372 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!373 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!374 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!375 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!376 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !378, line: 31, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385}
!380 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !378, line: 91, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !391, line: 51, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!393 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!428 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insert_option", file: !430, line: 147, baseType: !7, size: 32, elements: !431)
!430 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!431 = !{!432, !433}
!432 = !DIEnumerator(name: "NO_INSERT", value: 0, isUnsigned: true)
!433 = !DIEnumerator(name: "INSERT", value: 1, isUnsigned: true)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bb_dom_status", file: !3, line: 691, baseType: !7, size: 32, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIEnumerator(name: "DOMST_NONDOMINATING", value: 0, isUnsigned: true)
!437 = !DIEnumerator(name: "DOMST_LOOP_BROKEN", value: 1, isUnsigned: true)
!438 = !DIEnumerator(name: "DOMST_DOMINATING", value: 2, isUnsigned: true)
!439 = !{!440, !441, !442, !443, !446, !447, !449, !512, !1833, !1846, !1840, !1847, !1853, !565, !1866, !1867, !1870, !7}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!442 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !450, line: 47, baseType: !451)
!450 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !453, line: 75, size: 256, elements: !454)
!453 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!454 = !{!455, !470, !471, !472}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !452, file: !453, line: 76, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !453, line: 68, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !453, line: 63, size: 320, elements: !459)
!459 = !{!460, !462, !463, !464}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !453, line: 64, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !458, file: !453, line: 65, baseType: !461, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !458, file: !453, line: 66, baseType: !7, size: 32, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !458, file: !453, line: 67, baseType: !465, size: 128, offset: 192)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 128, elements: !468)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !453, line: 29, baseType: !467)
!467 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!468 = !{!469}
!469 = !DISubrange(count: 2)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !452, file: !453, line: 77, baseType: !456, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !452, file: !453, line: 78, baseType: !7, size: 32, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !452, file: !453, line: 79, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !453, line: 49, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !453, line: 45, size: 832, elements: !476)
!476 = !{!477, !478, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !475, file: !453, line: 46, baseType: !461, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !475, file: !453, line: 47, baseType: !451, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !475, file: !453, line: 48, baseType: !480, size: 704, offset: 128)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !481, line: 164, size: 704, elements: !482)
!481 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!482 = !{!483, !485, !495, !496, !497, !498, !499, !500, !504, !508, !509, !510, !511}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !480, file: !481, line: 166, baseType: !484, size: 64)
!484 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !480, file: !481, line: 167, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !481, line: 157, size: 192, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !487, file: !481, line: 159, baseType: !444, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !487, file: !481, line: 160, baseType: !486, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !487, file: !481, line: 161, baseType: !492, size: 32, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 32, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 4)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !480, file: !481, line: 168, baseType: !444, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !480, file: !481, line: 169, baseType: !444, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !480, file: !481, line: 170, baseType: !444, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !480, file: !481, line: 171, baseType: !484, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !480, file: !481, line: 172, baseType: !442, size: 32, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !480, file: !481, line: 176, baseType: !501, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!486, !446, !484}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !480, file: !481, line: 177, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !446, !486}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !480, file: !481, line: 178, baseType: !446, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !480, file: !481, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !480, file: !481, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !480, file: !481, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !450, line: 108, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !515)
!515 = !{!516, !1820, !1821, !1826, !1827, !1828, !1829, !1830, !1831, !1832}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !514, file: !135, line: 124, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !519)
!519 = !{!520, !535, !536, !537, !1789, !1793, !1794, !1795, !1813, !1815, !1816, !1817, !1818, !1819}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !518, file: !135, line: 219, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !523, file: !135, line: 151, baseType: !526, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !528)
!528 = !{!529, !530, !531}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !527, file: !135, line: 150, baseType: !7, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !527, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !527, file: !135, line: 150, baseType: !532, size: 64, offset: 64)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 64, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 1)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !518, file: !135, line: 220, baseType: !521, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !518, file: !135, line: 223, baseType: !446, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !518, file: !135, line: 226, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !378, line: 100, size: 1216, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !550, !551, !552, !566, !567, !568, !569, !1766, !1767, !1768, !1769, !1770, !1771, !1779, !1787, !1788}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !539, file: !378, line: 102, baseType: !442, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !539, file: !378, line: 105, baseType: !7, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !539, file: !378, line: 108, baseType: !517, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !539, file: !378, line: 111, baseType: !517, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !539, file: !378, line: 114, baseType: !546, size: 64, offset: 192)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !378, line: 41, size: 64, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !546, file: !378, line: 42, baseType: !377, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !546, file: !378, line: 43, baseType: !7, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !539, file: !378, line: 117, baseType: !7, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !539, file: !378, line: 120, baseType: !7, size: 32, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !539, file: !378, line: 123, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !378, line: 87, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !378, line: 87, size: 128, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !555, file: !378, line: 87, baseType: !558, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !378, line: 85, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !378, line: 85, size: 128, elements: !560)
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !559, file: !378, line: 85, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !559, file: !378, line: 85, baseType: !7, size: 32, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !559, file: !378, line: 85, baseType: !564, size: 64, offset: 64)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 64, elements: !533)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !378, line: 84, baseType: !538)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !539, file: !378, line: 126, baseType: !538, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !378, line: 129, baseType: !538, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !539, file: !378, line: 132, baseType: !446, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !539, file: !378, line: 139, baseType: !570, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !450, line: 56, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !573)
!573 = !{!574, !607, !613, !624, !643, !654, !659, !666, !672, !685, !697, !735, !884, !912, !929, !930, !935, !944, !950, !955, !959, !963, !1417, !1464, !1470, !1476, !1483, !1496, !1510, !1527, !1539, !1561, !1576, !1748}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !572, file: !151, line: 3372, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !575, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !575, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !575, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !575, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !575, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !575, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !575, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !575, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !575, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !575, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !575, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !575, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !575, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !575, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !575, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !575, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !575, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !575, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !575, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !575, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !575, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !575, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !575, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !575, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !575, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !575, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !575, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !575, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !575, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !575, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !572, file: !151, line: 3373, baseType: !608, size: 192)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !608, file: !151, line: 403, baseType: !575, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !608, file: !151, line: 404, baseType: !570, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !151, line: 405, baseType: !570, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !572, file: !151, line: 3374, baseType: !614, size: 320)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !614, file: !151, line: 1385, baseType: !608, size: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !614, file: !151, line: 1386, baseType: !618, size: 128, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !619, line: 58, baseType: !620)
!619 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !619, line: 54, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !620, file: !619, line: 56, baseType: !467, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !620, file: !619, line: 57, baseType: !484, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !572, file: !151, line: 3375, baseType: !625, size: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !625, file: !151, line: 1398, baseType: !608, size: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !625, file: !151, line: 1399, baseType: !629, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !631, line: 52, size: 256, elements: !632)
!631 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!632 = !{!633, !634, !635, !636, !637, !638, !639}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !630, file: !631, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !630, file: !631, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !630, file: !631, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !630, file: !631, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !630, file: !631, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !630, file: !631, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !630, file: !631, line: 62, baseType: !640, size: 192, offset: 64)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 192, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 3)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !572, file: !151, line: 3376, baseType: !644, size: 256)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !644, file: !151, line: 1409, baseType: !608, size: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !644, file: !151, line: 1410, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !650, line: 27, size: 192, elements: !651)
!650 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !649, file: !650, line: 29, baseType: !618, size: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !649, file: !650, line: 30, baseType: !5, size: 32, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !572, file: !151, line: 3377, baseType: !655, size: 256)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !655, file: !151, line: 1438, baseType: !608, size: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !655, file: !151, line: 1439, baseType: !570, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !572, file: !151, line: 3378, baseType: !660, size: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !660, file: !151, line: 1419, baseType: !608, size: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !660, file: !151, line: 1420, baseType: !442, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !660, file: !151, line: 1421, baseType: !665, size: 8, offset: 224)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 8, elements: !533)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !572, file: !151, line: 3379, baseType: !667, size: 320)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !667, file: !151, line: 1429, baseType: !608, size: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !667, file: !151, line: 1430, baseType: !570, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !667, file: !151, line: 1431, baseType: !570, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !572, file: !151, line: 3380, baseType: !673, size: 320)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !673, file: !151, line: 1461, baseType: !608, size: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !673, file: !151, line: 1462, baseType: !677, size: 128, offset: 192)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !678, line: 31, size: 128, elements: !679)
!678 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!679 = !{!680, !683, !684}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !677, file: !678, line: 32, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !677, file: !678, line: 33, baseType: !7, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !677, file: !678, line: 34, baseType: !7, size: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !572, file: !151, line: 3381, baseType: !686, size: 384)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !687)
!687 = !{!688, !689, !694, !695, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !151, line: 2508, baseType: !608, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !686, file: !151, line: 2509, baseType: !690, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !691, line: 58, baseType: !692)
!691 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !693, line: 44, baseType: !7)
!693 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !686, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !686, file: !151, line: 2511, baseType: !570, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !686, file: !151, line: 2512, baseType: !570, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !572, file: !151, line: 3382, baseType: !698, size: 896)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !151, line: 2653, baseType: !686, size: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !698, file: !151, line: 2654, baseType: !570, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !698, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !698, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !698, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !698, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !698, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !698, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !698, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !698, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !698, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !698, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !698, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !698, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !698, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !698, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !698, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !698, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !698, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !698, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !698, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !698, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !698, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !698, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !698, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !698, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !698, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !698, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !698, file: !151, line: 2705, baseType: !570, size: 64, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !698, file: !151, line: 2706, baseType: !570, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !698, file: !151, line: 2707, baseType: !570, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !698, file: !151, line: 2708, baseType: !570, size: 64, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !698, file: !151, line: 2711, baseType: !733, size: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !572, file: !151, line: 3383, baseType: !736, size: 960)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !151, line: 2757, baseType: !698, size: 896)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !736, file: !151, line: 2758, baseType: !740, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !450, line: 50, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !743, line: 240, size: 384, elements: !744)
!743 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !742, file: !743, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !742, file: !743, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !742, file: !743, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !742, file: !743, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !742, file: !743, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !742, file: !743, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !742, file: !743, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !742, file: !743, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !742, file: !743, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !742, file: !743, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !742, file: !743, line: 321, baseType: !756, size: 320, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !743, line: 315, size: 320, elements: !757)
!757 = !{!758, !817, !819, !882, !883}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !756, file: !743, line: 316, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 64, elements: !533)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !743, line: 183, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !743, line: 166, size: 64, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !775, !776, !788, !791, !792, !793, !794, !807, !814}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !761, file: !743, line: 168, baseType: !442, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !761, file: !743, line: 169, baseType: !7, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !761, file: !743, line: 170, baseType: !447, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !761, file: !743, line: 171, baseType: !740, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !761, file: !743, line: 172, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !450, line: 53, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !743, line: 359, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !770, file: !743, line: 360, baseType: !442, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !770, file: !743, line: 361, baseType: !774, size: 64, offset: 64)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 64, elements: !533)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !761, file: !743, line: 173, baseType: !5, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !761, file: !743, line: 174, baseType: !777, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !743, line: 133, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !743, line: 115, size: 32, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !778, file: !743, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !778, file: !743, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !778, file: !743, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !778, file: !743, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !778, file: !743, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !778, file: !743, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !778, file: !743, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !778, file: !743, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !761, file: !743, line: 175, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !743, line: 175, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !761, file: !743, line: 176, baseType: !451, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !761, file: !743, line: 177, baseType: !570, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !761, file: !743, line: 178, baseType: !517, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !761, file: !743, line: 179, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !743, line: 150, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !743, line: 142, size: 320, elements: !798)
!798 = !{!799, !800, !801, !802, !805, !806}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !797, file: !743, line: 144, baseType: !570, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !797, file: !743, line: 145, baseType: !740, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !797, file: !743, line: 146, baseType: !740, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !797, file: !743, line: 147, baseType: !803, size: 32, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !804, line: 31, baseType: !442)
!804 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!805 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !797, file: !743, line: 148, baseType: !7, size: 32, offset: 224)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !797, file: !743, line: 149, baseType: !441, size: 8, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !761, file: !743, line: 180, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !743, line: 162, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !743, line: 159, size: 128, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !810, file: !743, line: 160, baseType: !570, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !810, file: !743, line: 161, baseType: !484, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !761, file: !743, line: 181, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !743, line: 181, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !756, file: !743, line: 317, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 64, elements: !533)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !756, file: !743, line: 318, baseType: !820, size: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !743, line: 188, size: 320, elements: !821)
!821 = !{!822, !824, !881}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !820, file: !743, line: 190, baseType: !823, size: 192)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !760, size: 192, elements: !641)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !820, file: !743, line: 193, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !743, line: 206, size: 320, elements: !827)
!827 = !{!828, !866, !867, !868, !880}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !826, file: !743, line: 208, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !450, line: 62, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !832, line: 538, size: 256, elements: !833)
!832 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!833 = !{!834, !838, !844, !857}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !831, file: !832, line: 539, baseType: !835, size: 32)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !832, line: 482, size: 32, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !832, line: 484, baseType: !7, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !831, file: !832, line: 540, baseType: !839, size: 192)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !832, line: 488, size: 192, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !839, file: !832, line: 489, baseType: !835, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !839, file: !832, line: 492, baseType: !447, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !839, file: !832, line: 496, baseType: !570, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !831, file: !832, line: 541, baseType: !845, size: 256)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !832, line: 504, size: 256, elements: !846)
!846 = !{!847, !848, !855, !856}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !832, line: 505, baseType: !835, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !845, file: !832, line: 509, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !832, line: 501, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !845, file: !832, line: 510, baseType: !853, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !832, line: 513, baseType: !829, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !831, file: !832, line: 542, baseType: !858, size: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !832, line: 530, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !858, file: !832, line: 531, baseType: !835, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !858, file: !832, line: 534, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !832, line: 525, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!441, !570, !447, !467, !467}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !826, file: !743, line: 211, baseType: !7, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !826, file: !743, line: 214, baseType: !484, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !826, file: !743, line: 224, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !743, line: 202, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !743, line: 202, size: 128, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !871, file: !743, line: 202, baseType: !874, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !743, line: 200, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !743, line: 200, size: 128, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !875, file: !743, line: 200, baseType: !7, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !875, file: !743, line: 200, baseType: !7, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !875, file: !743, line: 200, baseType: !774, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !826, file: !743, line: 234, baseType: !869, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !820, file: !743, line: 197, baseType: !484, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !756, file: !743, line: 319, baseType: !630, size: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !756, file: !743, line: 320, baseType: !649, size: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !572, file: !151, line: 3384, baseType: !885, size: 1472)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !886)
!886 = !{!887, !908, !909, !910, !911}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !885, file: !151, line: 3115, baseType: !888, size: 1216)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !888, file: !151, line: 2985, baseType: !736, size: 960)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !888, file: !151, line: 2986, baseType: !570, size: 64, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !888, file: !151, line: 2987, baseType: !570, size: 64, offset: 1024)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !888, file: !151, line: 2988, baseType: !570, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !888, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !888, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !888, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !888, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !888, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !888, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !888, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !888, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !888, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !888, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !888, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !888, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !888, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !888, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !885, file: !151, line: 3117, baseType: !570, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !885, file: !151, line: 3119, baseType: !570, size: 64, offset: 1280)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !885, file: !151, line: 3121, baseType: !570, size: 64, offset: 1344)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !885, file: !151, line: 3123, baseType: !570, size: 64, offset: 1408)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !572, file: !151, line: 3385, baseType: !913, size: 1088)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !913, file: !151, line: 2875, baseType: !736, size: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !913, file: !151, line: 2876, baseType: !740, size: 64, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !913, file: !151, line: 2877, baseType: !918, size: 64, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !920, line: 172, size: 128, elements: !921)
!920 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!921 = !{!922, !923, !924, !925, !926, !927, !928}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !919, file: !920, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !919, file: !920, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !919, file: !920, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !919, file: !920, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !919, file: !920, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !919, file: !920, line: 195, baseType: !7, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !919, file: !920, line: 199, baseType: !570, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !572, file: !151, line: 3386, baseType: !888, size: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !572, file: !151, line: 3387, baseType: !931, size: 1280)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !931, file: !151, line: 3094, baseType: !888, size: 1216)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !931, file: !151, line: 3095, baseType: !918, size: 64, offset: 1216)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !572, file: !151, line: 3388, baseType: !936, size: 1216)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !936, file: !151, line: 2825, baseType: !698, size: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !936, file: !151, line: 2827, baseType: !570, size: 64, offset: 896)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !936, file: !151, line: 2828, baseType: !570, size: 64, offset: 960)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !936, file: !151, line: 2829, baseType: !570, size: 64, offset: 1024)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !936, file: !151, line: 2830, baseType: !570, size: 64, offset: 1088)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !936, file: !151, line: 2831, baseType: !570, size: 64, offset: 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !572, file: !151, line: 3389, baseType: !945, size: 1024)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !945, file: !151, line: 2851, baseType: !736, size: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !945, file: !151, line: 2852, baseType: !442, size: 32, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !945, file: !151, line: 2853, baseType: !442, size: 32, offset: 992)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !572, file: !151, line: 3390, baseType: !951, size: 1024)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !151, line: 2858, baseType: !736, size: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !951, file: !151, line: 2859, baseType: !918, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !572, file: !151, line: 3391, baseType: !956, size: 960)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !956, file: !151, line: 2863, baseType: !736, size: 960)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !572, file: !151, line: 3392, baseType: !960, size: 1472)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !960, file: !151, line: 3305, baseType: !885, size: 1472)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !572, file: !151, line: 3393, baseType: !964, size: 1792)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !965)
!965 = !{!966, !967, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !964, file: !151, line: 3249, baseType: !885, size: 1472)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !964, file: !151, line: 3251, baseType: !968, size: 64, offset: 1472)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !970, line: 463, size: 1152, elements: !971)
!970 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!971 = !{!972, !975, !1006, !1221, !1332, !1340, !1341, !1342, !1343, !1344, !1345, !1369, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !969, file: !970, line: 464, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !970, line: 464, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !969, file: !970, line: 467, baseType: !976, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !978)
!978 = !{!979, !981, !982, !995, !996, !997, !998, !999, !1000, !1002, !1004, !1005}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !977, file: !135, line: 377, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !450, line: 111, baseType: !517)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !977, file: !135, line: 378, baseType: !980, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !977, file: !135, line: 381, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !985, file: !135, line: 282, baseType: !988, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !989, file: !135, line: 281, baseType: !7, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !989, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !989, file: !135, line: 281, baseType: !994, size: 64, offset: 64)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 64, elements: !533)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !977, file: !135, line: 384, baseType: !442, size: 32, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !977, file: !135, line: 387, baseType: !442, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !977, file: !135, line: 390, baseType: !442, size: 32, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !977, file: !135, line: 394, baseType: !983, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !977, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !977, file: !135, line: 399, baseType: !1001, size: 64, offset: 416)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !468)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !977, file: !135, line: 402, baseType: !1003, size: 64, offset: 480)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !468)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !977, file: !135, line: 406, baseType: !442, size: 32, offset: 544)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !977, file: !135, line: 409, baseType: !442, size: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !969, file: !970, line: 470, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !391, line: 143, size: 192, elements: !1009)
!1009 = !{!1010, !1219, !1220}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1008, file: !391, line: 145, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !450, line: 69, baseType: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !391, line: 136, size: 192, elements: !1014)
!1014 = !{!1015, !1217, !1218}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1013, file: !391, line: 137, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !450, line: 58, baseType: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !391, line: 737, size: 768, elements: !1019)
!1019 = !{!1020, !1037, !1071, !1077, !1082, !1088, !1095, !1101, !1107, !1112, !1126, !1131, !1137, !1142, !1152, !1157, !1175, !1182, !1189, !1195, !1200, !1206, !1212}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1018, file: !391, line: 738, baseType: !1021, size: 256)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !391, line: 271, size: 256, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1021, file: !391, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1021, file: !391, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1021, file: !391, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1021, file: !391, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1021, file: !391, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1021, file: !391, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1021, file: !391, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1021, file: !391, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1021, file: !391, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1021, file: !391, line: 312, baseType: !7, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1021, file: !391, line: 316, baseType: !690, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1021, file: !391, line: 319, baseType: !7, size: 32, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1021, file: !391, line: 323, baseType: !517, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1021, file: !391, line: 327, baseType: !570, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1018, file: !391, line: 739, baseType: !1038, size: 448)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !391, line: 350, size: 448, elements: !1039)
!1039 = !{!1040, !1069}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1038, file: !391, line: 353, baseType: !1041, size: 384)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !391, line: 333, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !1052}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1041, file: !391, line: 336, baseType: !1021, size: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1041, file: !391, line: 343, baseType: !1045, size: 64, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1047, line: 37, size: 128, elements: !1048)
!1047 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !1047, line: 39, baseType: !1045, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1046, file: !1047, line: 40, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1041, file: !391, line: 344, baseType: !1053, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1047, line: 45, size: 320, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !1047, line: 47, baseType: !1053, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1054, file: !1047, line: 48, baseType: !1058, size: 256, offset: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1059)
!1059 = !{!1060, !1062, !1063, !1068}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1058, file: !151, line: 1884, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1058, file: !151, line: 1885, baseType: !1061, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1058, file: !151, line: 1891, baseType: !1064, size: 64, offset: 128)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !151, line: 1891, size: 64, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1064, file: !151, line: 1891, baseType: !1016, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1064, file: !151, line: 1891, baseType: !570, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1058, file: !151, line: 1892, baseType: !1051, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1038, file: !391, line: 359, baseType: !1070, size: 64, offset: 384)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 64, elements: !533)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1018, file: !391, line: 740, baseType: !1072, size: 512)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !391, line: 365, size: 512, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1072, file: !391, line: 368, baseType: !1041, size: 384)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1072, file: !391, line: 373, baseType: !570, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1072, file: !391, line: 374, baseType: !570, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1018, file: !391, line: 741, baseType: !1078, size: 576)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !391, line: 380, size: 576, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1078, file: !391, line: 383, baseType: !1072, size: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1078, file: !391, line: 389, baseType: !1070, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1018, file: !391, line: 742, baseType: !1083, size: 320)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !391, line: 395, size: 320, elements: !1084)
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1083, file: !391, line: 397, baseType: !1021, size: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1083, file: !391, line: 400, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !450, line: 66, baseType: !1007)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1018, file: !391, line: 743, baseType: !1089, size: 448)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !391, line: 406, size: 448, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1089, file: !391, line: 408, baseType: !1021, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1089, file: !391, line: 412, baseType: !570, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1089, file: !391, line: 420, baseType: !570, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1089, file: !391, line: 423, baseType: !1087, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1018, file: !391, line: 744, baseType: !1096, size: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !391, line: 429, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1096, file: !391, line: 431, baseType: !1021, size: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1096, file: !391, line: 434, baseType: !570, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1096, file: !391, line: 437, baseType: !1087, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1018, file: !391, line: 745, baseType: !1102, size: 384)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !391, line: 443, size: 384, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1102, file: !391, line: 445, baseType: !1021, size: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1102, file: !391, line: 449, baseType: !570, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1102, file: !391, line: 453, baseType: !1087, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1018, file: !391, line: 746, baseType: !1108, size: 320)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !391, line: 459, size: 320, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1108, file: !391, line: 461, baseType: !1021, size: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1108, file: !391, line: 464, baseType: !570, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1018, file: !391, line: 747, baseType: !1113, size: 768)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !391, line: 469, size: 768, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1113, file: !391, line: 471, baseType: !1021, size: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1113, file: !391, line: 474, baseType: !7, size: 32, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1113, file: !391, line: 475, baseType: !7, size: 32, offset: 288)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1113, file: !391, line: 478, baseType: !570, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1113, file: !391, line: 481, baseType: !1120, size: 384, offset: 384)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 384, elements: !533)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !151, line: 1917, size: 384, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1121, file: !151, line: 1920, baseType: !1058, size: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1121, file: !151, line: 1921, baseType: !570, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1121, file: !151, line: 1922, baseType: !690, size: 32, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1018, file: !391, line: 748, baseType: !1127, size: 320)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !391, line: 487, size: 320, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1127, file: !391, line: 490, baseType: !1021, size: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1127, file: !391, line: 494, baseType: !442, size: 32, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1018, file: !391, line: 749, baseType: !1132, size: 384)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !391, line: 500, size: 384, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1132, file: !391, line: 502, baseType: !1021, size: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1132, file: !391, line: 506, baseType: !1087, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1132, file: !391, line: 510, baseType: !1087, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1018, file: !391, line: 750, baseType: !1138, size: 320)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !391, line: 529, size: 320, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1138, file: !391, line: 531, baseType: !1021, size: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1138, file: !391, line: 540, baseType: !1087, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1018, file: !391, line: 751, baseType: !1143, size: 704)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !391, line: 546, size: 704, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1143, file: !391, line: 549, baseType: !1072, size: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1143, file: !391, line: 553, baseType: !447, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1143, file: !391, line: 557, baseType: !441, size: 8, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1143, file: !391, line: 558, baseType: !441, size: 8, offset: 584)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1143, file: !391, line: 559, baseType: !441, size: 8, offset: 592)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1143, file: !391, line: 560, baseType: !441, size: 8, offset: 600)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1143, file: !391, line: 566, baseType: !1070, size: 64, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1018, file: !391, line: 752, baseType: !1153, size: 384)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !391, line: 571, size: 384, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1153, file: !391, line: 573, baseType: !1083, size: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1153, file: !391, line: 577, baseType: !570, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1018, file: !391, line: 753, baseType: !1158, size: 576)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !391, line: 600, size: 576, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1165, !1174}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1158, file: !391, line: 602, baseType: !1083, size: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1158, file: !391, line: 605, baseType: !570, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1158, file: !391, line: 609, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1164, line: 46, baseType: !467)
!1164 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1158, file: !391, line: 612, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !391, line: 581, size: 320, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1167, file: !391, line: 583, baseType: !183, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1167, file: !391, line: 586, baseType: !570, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1167, file: !391, line: 589, baseType: !570, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1167, file: !391, line: 592, baseType: !570, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1167, file: !391, line: 595, baseType: !570, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1158, file: !391, line: 616, baseType: !1087, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1018, file: !391, line: 754, baseType: !1176, size: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !391, line: 622, size: 512, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1176, file: !391, line: 624, baseType: !1083, size: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1176, file: !391, line: 628, baseType: !570, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1176, file: !391, line: 632, baseType: !570, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1176, file: !391, line: 636, baseType: !570, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1018, file: !391, line: 755, baseType: !1183, size: 704)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !391, line: 642, size: 704, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1183, file: !391, line: 644, baseType: !1176, size: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1183, file: !391, line: 648, baseType: !570, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1183, file: !391, line: 652, baseType: !570, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1183, file: !391, line: 653, baseType: !570, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1018, file: !391, line: 756, baseType: !1190, size: 448)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !391, line: 663, size: 448, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1190, file: !391, line: 665, baseType: !1083, size: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1190, file: !391, line: 668, baseType: !570, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1190, file: !391, line: 673, baseType: !570, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1018, file: !391, line: 757, baseType: !1196, size: 384)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !391, line: 694, size: 384, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1196, file: !391, line: 696, baseType: !1083, size: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1196, file: !391, line: 699, baseType: !570, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1018, file: !391, line: 758, baseType: !1201, size: 384)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !391, line: 681, size: 384, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1201, file: !391, line: 683, baseType: !1021, size: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1201, file: !391, line: 686, baseType: !570, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1201, file: !391, line: 689, baseType: !570, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1018, file: !391, line: 759, baseType: !1207, size: 384)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !391, line: 707, size: 384, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1207, file: !391, line: 709, baseType: !1021, size: 256)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1207, file: !391, line: 712, baseType: !570, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1207, file: !391, line: 712, baseType: !570, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1018, file: !391, line: 760, baseType: !1213, size: 320)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !391, line: 718, size: 320, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1213, file: !391, line: 720, baseType: !1021, size: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1213, file: !391, line: 723, baseType: !570, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1013, file: !391, line: 138, baseType: !1012, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1013, file: !391, line: 139, baseType: !1012, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1008, file: !391, line: 146, baseType: !1011, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1008, file: !391, line: 152, baseType: !1087, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !969, file: !970, line: 473, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !920, line: 39, size: 1152, elements: !1224)
!1224 = !{!1225, !1272, !1285, !1297, !1298, !1309, !1310, !1314, !1315, !1316, !1317, !1318}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1223, file: !920, line: 41, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !430, line: 144, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !430, line: 100, size: 896, elements: !1229)
!1229 = !{!1230, !1236, !1241, !1246, !1248, !1249, !1250, !1251, !1252, !1253, !1258, !1260, !1261, !1266, !1271}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1228, file: !430, line: 102, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !430, line: 52, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1235, !853}
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !430, line: 47, baseType: !7)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1228, file: !430, line: 105, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !430, line: 59, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!442, !853, !853}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1228, file: !430, line: 108, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !430, line: 63, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !446}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1228, file: !430, line: 111, baseType: !1247, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1228, file: !430, line: 114, baseType: !1163, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1228, file: !430, line: 117, baseType: !1163, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1228, file: !430, line: 120, baseType: !1163, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1228, file: !430, line: 124, baseType: !7, size: 32, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1228, file: !430, line: 128, baseType: !7, size: 32, offset: 480)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1228, file: !430, line: 131, baseType: !1254, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !430, line: 75, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!446, !1163, !1163}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1228, file: !430, line: 132, baseType: !1259, size: 64, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !430, line: 78, baseType: !1243)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1228, file: !430, line: 135, baseType: !446, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1228, file: !430, line: 136, baseType: !1262, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !430, line: 82, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!446, !446, !1163, !1163}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1228, file: !430, line: 137, baseType: !1267, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !430, line: 83, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !446, !446}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1228, file: !430, line: 141, baseType: !7, size: 32, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1223, file: !920, line: 48, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !391, line: 35, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !391, line: 35, size: 128, elements: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1275, file: !391, line: 35, baseType: !1278, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !391, line: 33, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !391, line: 33, size: 128, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1279, file: !391, line: 33, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1279, file: !391, line: 33, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1279, file: !391, line: 33, baseType: !1284, size: 64, offset: 64)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 64, elements: !533)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1223, file: !920, line: 51, baseType: !1286, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1288, file: !151, line: 183, baseType: !1291, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1292, file: !151, line: 182, baseType: !7, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1292, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1292, file: !151, line: 182, baseType: !1070, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1223, file: !920, line: 54, baseType: !570, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1223, file: !920, line: 57, baseType: !1299, size: 128, offset: 256)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1300, line: 31, size: 128, elements: !1301)
!1300 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1299, file: !1300, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1299, file: !1300, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1299, file: !1300, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1299, file: !1300, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1299, file: !1300, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1299, file: !1300, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1299, file: !1300, line: 56, baseType: !449, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1223, file: !920, line: 60, baseType: !1299, size: 128, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1223, file: !920, line: 64, baseType: !1311, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1313, line: 33, flags: DIFlagFwdDecl)
!1313 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1223, file: !920, line: 67, baseType: !570, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1223, file: !920, line: 73, baseType: !1226, size: 64, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1223, file: !920, line: 77, baseType: !449, size: 64, offset: 704)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1223, file: !920, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1223, file: !920, line: 82, baseType: !1319, size: 320, offset: 832)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1047, line: 62, size: 320, elements: !1320)
!1320 = !{!1321, !1327, !1328, !1329, !1330, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1319, file: !1047, line: 63, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1047, line: 56, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1323, file: !1047, line: 57, baseType: !1322, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1323, file: !1047, line: 58, baseType: !665, size: 8, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1319, file: !1047, line: 64, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1319, file: !1047, line: 66, baseType: !7, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1319, file: !1047, line: 68, baseType: !441, size: 8, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1319, file: !1047, line: 70, baseType: !1045, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1319, file: !1047, line: 71, baseType: !1053, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !969, file: !970, line: 476, baseType: !1333, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !378, line: 187, size: 256, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1334, file: !378, line: 189, baseType: !442, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1334, file: !378, line: 192, baseType: !553, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1334, file: !378, line: 197, baseType: !1226, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1334, file: !378, line: 200, baseType: !538, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !969, file: !970, line: 479, baseType: !1226, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !969, file: !970, line: 484, baseType: !570, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !969, file: !970, line: 488, baseType: !570, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !969, file: !970, line: 493, baseType: !570, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !969, file: !970, line: 496, baseType: !570, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !969, file: !970, line: 501, baseType: !1346, size: 64, offset: 640)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1348)
!1348 = !{!1349, !1352, !1353, !1354, !1355, !1357, !1358, !1363, !1364, !1365, !1366, !1367, !1368}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1347, file: !146, line: 2356, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1347, file: !146, line: 2357, baseType: !447, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1347, file: !146, line: 2358, baseType: !442, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1347, file: !146, line: 2359, baseType: !442, size: 32, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1347, file: !146, line: 2360, baseType: !1356, size: 128, offset: 192)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !493)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1347, file: !146, line: 2364, baseType: !442, size: 32, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1347, file: !146, line: 2367, baseType: !1359, size: 128, offset: 384)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1359, file: !146, line: 2351, baseType: !740, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1359, file: !146, line: 2352, baseType: !484, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1347, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1347, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1347, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1347, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1347, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1347, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !969, file: !970, line: 504, baseType: !1370, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !970, line: 504, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !969, file: !970, line: 507, baseType: !1226, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !969, file: !970, line: 510, baseType: !442, size: 32, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !969, file: !970, line: 513, baseType: !442, size: 32, offset: 864)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !969, file: !970, line: 516, baseType: !690, size: 32, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !969, file: !970, line: 519, baseType: !690, size: 32, offset: 928)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !969, file: !970, line: 522, baseType: !7, size: 32, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !969, file: !970, line: 523, baseType: !7, size: 32, offset: 992)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !969, file: !970, line: 528, baseType: !447, size: 64, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !969, file: !970, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !969, file: !970, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !969, file: !970, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !969, file: !970, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !969, file: !970, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !969, file: !970, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !969, file: !970, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !969, file: !970, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !969, file: !970, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !969, file: !970, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !969, file: !970, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !969, file: !970, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !969, file: !970, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !969, file: !970, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !969, file: !970, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !969, file: !970, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !964, file: !151, line: 3254, baseType: !570, size: 64, offset: 1536)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !964, file: !151, line: 3257, baseType: !570, size: 64, offset: 1600)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !964, file: !151, line: 3258, baseType: !570, size: 64, offset: 1664)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !964, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !964, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !964, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !964, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !964, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !964, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !964, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !964, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !964, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !964, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !964, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !964, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !964, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !964, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !964, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !964, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !964, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !964, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !151, line: 3394, baseType: !1418, size: 1344)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !151, line: 2280, baseType: !608, size: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1418, file: !151, line: 2281, baseType: !570, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1418, file: !151, line: 2282, baseType: !570, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1418, file: !151, line: 2283, baseType: !570, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1418, file: !151, line: 2284, baseType: !570, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1418, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1418, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1418, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1418, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1418, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1418, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1418, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1418, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1418, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1418, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1418, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1418, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1418, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1418, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1418, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1418, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1418, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1418, file: !151, line: 2306, baseType: !803, size: 32, offset: 544)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1418, file: !151, line: 2307, baseType: !570, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1418, file: !151, line: 2308, baseType: !570, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1418, file: !151, line: 2314, baseType: !1446, size: 64, offset: 704)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1446, file: !151, line: 2310, baseType: !442, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1446, file: !151, line: 2311, baseType: !447, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1446, file: !151, line: 2312, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1418, file: !151, line: 2315, baseType: !570, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1418, file: !151, line: 2316, baseType: !570, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1418, file: !151, line: 2317, baseType: !570, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1418, file: !151, line: 2318, baseType: !570, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1418, file: !151, line: 2319, baseType: !570, size: 64, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1418, file: !151, line: 2320, baseType: !570, size: 64, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1418, file: !151, line: 2321, baseType: !570, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1418, file: !151, line: 2322, baseType: !570, size: 64, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1418, file: !151, line: 2324, baseType: !1462, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !572, file: !151, line: 3395, baseType: !1465, size: 320)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1465, file: !151, line: 1470, baseType: !608, size: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1465, file: !151, line: 1471, baseType: !570, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1465, file: !151, line: 1472, baseType: !570, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !572, file: !151, line: 3396, baseType: !1471, size: 320)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1471, file: !151, line: 1483, baseType: !608, size: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1471, file: !151, line: 1484, baseType: !442, size: 32, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1471, file: !151, line: 1485, baseType: !1070, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !572, file: !151, line: 3397, baseType: !1477, size: 384)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1477, file: !151, line: 1830, baseType: !608, size: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1477, file: !151, line: 1831, baseType: !690, size: 32, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1477, file: !151, line: 1832, baseType: !570, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1477, file: !151, line: 1835, baseType: !1070, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !572, file: !151, line: 3398, baseType: !1484, size: 704)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1495}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !151, line: 1899, baseType: !608, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1484, file: !151, line: 1902, baseType: !570, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1484, file: !151, line: 1905, baseType: !1016, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1484, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1484, file: !151, line: 1911, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !920, line: 117, size: 128, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1492, file: !920, line: 120, baseType: !1299, size: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1484, file: !151, line: 1914, baseType: !1058, size: 256, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !572, file: !151, line: 3399, baseType: !1497, size: 704)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !151, line: 2009, baseType: !608, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1497, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1497, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1497, file: !151, line: 2014, baseType: !690, size: 32, offset: 224)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1497, file: !151, line: 2016, baseType: !570, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1497, file: !151, line: 2017, baseType: !1286, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1497, file: !151, line: 2019, baseType: !570, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1497, file: !151, line: 2020, baseType: !570, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1497, file: !151, line: 2021, baseType: !570, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1497, file: !151, line: 2022, baseType: !570, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1497, file: !151, line: 2023, baseType: !570, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !572, file: !151, line: 3400, baseType: !1511, size: 832)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1511, file: !151, line: 2431, baseType: !608, size: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1511, file: !151, line: 2433, baseType: !570, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1511, file: !151, line: 2434, baseType: !570, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1511, file: !151, line: 2435, baseType: !570, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1511, file: !151, line: 2436, baseType: !570, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1511, file: !151, line: 2437, baseType: !1286, size: 64, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1511, file: !151, line: 2438, baseType: !570, size: 64, offset: 512)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1511, file: !151, line: 2440, baseType: !570, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1511, file: !151, line: 2441, baseType: !570, size: 64, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1511, file: !151, line: 2443, baseType: !1523, size: 128, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1525)
!1525 = !{!1526}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1524, file: !151, line: 182, baseType: !1291, size: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !572, file: !151, line: 3401, baseType: !1528, size: 320)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1529)
!1529 = !{!1530, !1531, !1538}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1528, file: !151, line: 3329, baseType: !608, size: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1528, file: !151, line: 3330, baseType: !1532, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1534)
!1534 = !{!1535, !1536, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1533, file: !151, line: 3322, baseType: !1532, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1533, file: !151, line: 3323, baseType: !1532, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1533, file: !151, line: 3324, baseType: !570, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1528, file: !151, line: 3331, baseType: !1532, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !572, file: !151, line: 3402, baseType: !1540, size: 256)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1540, file: !151, line: 1541, baseType: !608, size: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1540, file: !151, line: 1542, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1546, file: !151, line: 1538, baseType: !1549, size: 192)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1550, file: !151, line: 1537, baseType: !7, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1550, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1550, file: !151, line: 1537, baseType: !1555, size: 128, offset: 64)
!1555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1556, size: 128, elements: !533)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1557, file: !151, line: 1533, baseType: !570, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1557, file: !151, line: 1534, baseType: !570, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !572, file: !151, line: 3403, baseType: !1562, size: 512)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1563)
!1563 = !{!1564, !1565, !1566, !1567, !1573, !1574, !1575}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1562, file: !151, line: 1939, baseType: !608, size: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1562, file: !151, line: 1940, baseType: !690, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1562, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1562, file: !151, line: 1946, baseType: !1568, size: 32, offset: 256)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1568, file: !151, line: 1943, baseType: !169, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1568, file: !151, line: 1944, baseType: !176, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1568, file: !151, line: 1945, baseType: !183, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1562, file: !151, line: 1950, baseType: !1087, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1562, file: !151, line: 1951, baseType: !1087, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1562, file: !151, line: 1953, baseType: !1070, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !572, file: !151, line: 3404, baseType: !1577, size: 1664)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1577, file: !151, line: 3338, baseType: !608, size: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1577, file: !151, line: 3341, baseType: !1581, size: 1472, offset: 192)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1582, line: 410, size: 1472, elements: !1583)
!1582 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1581, file: !1582, line: 412, baseType: !442, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1581, file: !1582, line: 413, baseType: !442, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1581, file: !1582, line: 414, baseType: !442, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1581, file: !1582, line: 415, baseType: !442, size: 32, offset: 96)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1581, file: !1582, line: 416, baseType: !442, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1581, file: !1582, line: 417, baseType: !442, size: 32, offset: 160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1581, file: !1582, line: 418, baseType: !441, size: 8, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1581, file: !1582, line: 419, baseType: !441, size: 8, offset: 200)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1581, file: !1582, line: 420, baseType: !1593, size: 8, offset: 208)
!1593 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1581, file: !1582, line: 421, baseType: !1593, size: 8, offset: 216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1581, file: !1582, line: 422, baseType: !1593, size: 8, offset: 224)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1581, file: !1582, line: 423, baseType: !1593, size: 8, offset: 232)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1581, file: !1582, line: 424, baseType: !1593, size: 8, offset: 240)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1581, file: !1582, line: 425, baseType: !1593, size: 8, offset: 248)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1581, file: !1582, line: 426, baseType: !1593, size: 8, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1581, file: !1582, line: 427, baseType: !1593, size: 8, offset: 264)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1581, file: !1582, line: 428, baseType: !1593, size: 8, offset: 272)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1581, file: !1582, line: 429, baseType: !1593, size: 8, offset: 280)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1581, file: !1582, line: 430, baseType: !1593, size: 8, offset: 288)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1581, file: !1582, line: 431, baseType: !1593, size: 8, offset: 296)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1581, file: !1582, line: 432, baseType: !1593, size: 8, offset: 304)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1581, file: !1582, line: 433, baseType: !1593, size: 8, offset: 312)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1581, file: !1582, line: 434, baseType: !1593, size: 8, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1581, file: !1582, line: 435, baseType: !1593, size: 8, offset: 328)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1581, file: !1582, line: 436, baseType: !1593, size: 8, offset: 336)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1581, file: !1582, line: 437, baseType: !1593, size: 8, offset: 344)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1581, file: !1582, line: 438, baseType: !1593, size: 8, offset: 352)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1581, file: !1582, line: 439, baseType: !1593, size: 8, offset: 360)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1581, file: !1582, line: 440, baseType: !1593, size: 8, offset: 368)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1581, file: !1582, line: 441, baseType: !1593, size: 8, offset: 376)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1581, file: !1582, line: 442, baseType: !1593, size: 8, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1581, file: !1582, line: 443, baseType: !1593, size: 8, offset: 392)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1581, file: !1582, line: 444, baseType: !1593, size: 8, offset: 400)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1581, file: !1582, line: 445, baseType: !1593, size: 8, offset: 408)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1581, file: !1582, line: 446, baseType: !1593, size: 8, offset: 416)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1581, file: !1582, line: 447, baseType: !1593, size: 8, offset: 424)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1581, file: !1582, line: 448, baseType: !1593, size: 8, offset: 432)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1581, file: !1582, line: 449, baseType: !1593, size: 8, offset: 440)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1581, file: !1582, line: 450, baseType: !1593, size: 8, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1581, file: !1582, line: 451, baseType: !1593, size: 8, offset: 456)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1581, file: !1582, line: 452, baseType: !1593, size: 8, offset: 464)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1581, file: !1582, line: 453, baseType: !1593, size: 8, offset: 472)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1581, file: !1582, line: 454, baseType: !1593, size: 8, offset: 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1581, file: !1582, line: 455, baseType: !1593, size: 8, offset: 488)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1581, file: !1582, line: 456, baseType: !1593, size: 8, offset: 496)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1581, file: !1582, line: 457, baseType: !1593, size: 8, offset: 504)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1581, file: !1582, line: 458, baseType: !1593, size: 8, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1581, file: !1582, line: 459, baseType: !1593, size: 8, offset: 520)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1581, file: !1582, line: 460, baseType: !1593, size: 8, offset: 528)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1581, file: !1582, line: 461, baseType: !1593, size: 8, offset: 536)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1581, file: !1582, line: 462, baseType: !1593, size: 8, offset: 544)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1581, file: !1582, line: 463, baseType: !1593, size: 8, offset: 552)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1581, file: !1582, line: 464, baseType: !1593, size: 8, offset: 560)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1581, file: !1582, line: 465, baseType: !1593, size: 8, offset: 568)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1581, file: !1582, line: 466, baseType: !1593, size: 8, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1581, file: !1582, line: 467, baseType: !1593, size: 8, offset: 584)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1581, file: !1582, line: 468, baseType: !1593, size: 8, offset: 592)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1581, file: !1582, line: 469, baseType: !1593, size: 8, offset: 600)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1581, file: !1582, line: 470, baseType: !1593, size: 8, offset: 608)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1581, file: !1582, line: 471, baseType: !1593, size: 8, offset: 616)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1581, file: !1582, line: 472, baseType: !1593, size: 8, offset: 624)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1581, file: !1582, line: 473, baseType: !1593, size: 8, offset: 632)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1581, file: !1582, line: 474, baseType: !1593, size: 8, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1581, file: !1582, line: 475, baseType: !1593, size: 8, offset: 648)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1581, file: !1582, line: 476, baseType: !1593, size: 8, offset: 656)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1581, file: !1582, line: 477, baseType: !1593, size: 8, offset: 664)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1581, file: !1582, line: 478, baseType: !1593, size: 8, offset: 672)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1581, file: !1582, line: 479, baseType: !1593, size: 8, offset: 680)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1581, file: !1582, line: 480, baseType: !1593, size: 8, offset: 688)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1581, file: !1582, line: 481, baseType: !1593, size: 8, offset: 696)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1581, file: !1582, line: 482, baseType: !1593, size: 8, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1581, file: !1582, line: 483, baseType: !1593, size: 8, offset: 712)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1581, file: !1582, line: 484, baseType: !1593, size: 8, offset: 720)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1581, file: !1582, line: 485, baseType: !1593, size: 8, offset: 728)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1581, file: !1582, line: 486, baseType: !1593, size: 8, offset: 736)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1581, file: !1582, line: 487, baseType: !1593, size: 8, offset: 744)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1581, file: !1582, line: 488, baseType: !1593, size: 8, offset: 752)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1581, file: !1582, line: 489, baseType: !1593, size: 8, offset: 760)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1581, file: !1582, line: 490, baseType: !1593, size: 8, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1581, file: !1582, line: 491, baseType: !1593, size: 8, offset: 776)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1581, file: !1582, line: 492, baseType: !1593, size: 8, offset: 784)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1581, file: !1582, line: 493, baseType: !1593, size: 8, offset: 792)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1581, file: !1582, line: 494, baseType: !1593, size: 8, offset: 800)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1581, file: !1582, line: 495, baseType: !1593, size: 8, offset: 808)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1581, file: !1582, line: 496, baseType: !1593, size: 8, offset: 816)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1581, file: !1582, line: 497, baseType: !1593, size: 8, offset: 824)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1581, file: !1582, line: 498, baseType: !1593, size: 8, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1581, file: !1582, line: 499, baseType: !1593, size: 8, offset: 840)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1581, file: !1582, line: 500, baseType: !1593, size: 8, offset: 848)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1581, file: !1582, line: 501, baseType: !1593, size: 8, offset: 856)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1581, file: !1582, line: 502, baseType: !1593, size: 8, offset: 864)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1581, file: !1582, line: 503, baseType: !1593, size: 8, offset: 872)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1581, file: !1582, line: 504, baseType: !1593, size: 8, offset: 880)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1581, file: !1582, line: 505, baseType: !1593, size: 8, offset: 888)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1581, file: !1582, line: 506, baseType: !1593, size: 8, offset: 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1581, file: !1582, line: 507, baseType: !1593, size: 8, offset: 904)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1581, file: !1582, line: 508, baseType: !1593, size: 8, offset: 912)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1581, file: !1582, line: 509, baseType: !1593, size: 8, offset: 920)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1581, file: !1582, line: 510, baseType: !1593, size: 8, offset: 928)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1581, file: !1582, line: 511, baseType: !1593, size: 8, offset: 936)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1581, file: !1582, line: 512, baseType: !1593, size: 8, offset: 944)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1581, file: !1582, line: 513, baseType: !1593, size: 8, offset: 952)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1581, file: !1582, line: 514, baseType: !1593, size: 8, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1581, file: !1582, line: 515, baseType: !1593, size: 8, offset: 968)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1581, file: !1582, line: 516, baseType: !1593, size: 8, offset: 976)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1581, file: !1582, line: 517, baseType: !1593, size: 8, offset: 984)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1581, file: !1582, line: 518, baseType: !1593, size: 8, offset: 992)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1581, file: !1582, line: 519, baseType: !1593, size: 8, offset: 1000)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1581, file: !1582, line: 520, baseType: !1593, size: 8, offset: 1008)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1581, file: !1582, line: 521, baseType: !1593, size: 8, offset: 1016)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1581, file: !1582, line: 522, baseType: !1593, size: 8, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1581, file: !1582, line: 523, baseType: !1593, size: 8, offset: 1032)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1581, file: !1582, line: 524, baseType: !1593, size: 8, offset: 1040)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1581, file: !1582, line: 525, baseType: !1593, size: 8, offset: 1048)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1581, file: !1582, line: 526, baseType: !1593, size: 8, offset: 1056)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1581, file: !1582, line: 527, baseType: !1593, size: 8, offset: 1064)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1581, file: !1582, line: 528, baseType: !1593, size: 8, offset: 1072)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1581, file: !1582, line: 529, baseType: !1593, size: 8, offset: 1080)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1581, file: !1582, line: 530, baseType: !1593, size: 8, offset: 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1581, file: !1582, line: 531, baseType: !1593, size: 8, offset: 1096)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1581, file: !1582, line: 532, baseType: !1593, size: 8, offset: 1104)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1581, file: !1582, line: 533, baseType: !1593, size: 8, offset: 1112)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1581, file: !1582, line: 534, baseType: !1593, size: 8, offset: 1120)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1581, file: !1582, line: 535, baseType: !1593, size: 8, offset: 1128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1581, file: !1582, line: 536, baseType: !1593, size: 8, offset: 1136)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1581, file: !1582, line: 537, baseType: !1593, size: 8, offset: 1144)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1581, file: !1582, line: 538, baseType: !1593, size: 8, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1581, file: !1582, line: 539, baseType: !1593, size: 8, offset: 1160)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1581, file: !1582, line: 540, baseType: !1593, size: 8, offset: 1168)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1581, file: !1582, line: 541, baseType: !1593, size: 8, offset: 1176)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1581, file: !1582, line: 542, baseType: !1593, size: 8, offset: 1184)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1581, file: !1582, line: 543, baseType: !1593, size: 8, offset: 1192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1581, file: !1582, line: 544, baseType: !1593, size: 8, offset: 1200)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1581, file: !1582, line: 545, baseType: !1593, size: 8, offset: 1208)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1581, file: !1582, line: 546, baseType: !1593, size: 8, offset: 1216)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1581, file: !1582, line: 547, baseType: !1593, size: 8, offset: 1224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1581, file: !1582, line: 548, baseType: !1593, size: 8, offset: 1232)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1581, file: !1582, line: 549, baseType: !1593, size: 8, offset: 1240)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1581, file: !1582, line: 550, baseType: !1593, size: 8, offset: 1248)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1581, file: !1582, line: 551, baseType: !1593, size: 8, offset: 1256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1581, file: !1582, line: 552, baseType: !1593, size: 8, offset: 1264)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1581, file: !1582, line: 553, baseType: !1593, size: 8, offset: 1272)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1581, file: !1582, line: 554, baseType: !1593, size: 8, offset: 1280)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1581, file: !1582, line: 555, baseType: !1593, size: 8, offset: 1288)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1581, file: !1582, line: 556, baseType: !1593, size: 8, offset: 1296)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1581, file: !1582, line: 557, baseType: !1593, size: 8, offset: 1304)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1581, file: !1582, line: 558, baseType: !1593, size: 8, offset: 1312)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1581, file: !1582, line: 559, baseType: !1593, size: 8, offset: 1320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1581, file: !1582, line: 560, baseType: !1593, size: 8, offset: 1328)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1581, file: !1582, line: 561, baseType: !1593, size: 8, offset: 1336)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1581, file: !1582, line: 562, baseType: !1593, size: 8, offset: 1344)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1581, file: !1582, line: 563, baseType: !1593, size: 8, offset: 1352)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1581, file: !1582, line: 564, baseType: !1593, size: 8, offset: 1360)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1581, file: !1582, line: 565, baseType: !1593, size: 8, offset: 1368)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1581, file: !1582, line: 566, baseType: !1593, size: 8, offset: 1376)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1581, file: !1582, line: 567, baseType: !1593, size: 8, offset: 1384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1581, file: !1582, line: 568, baseType: !1593, size: 8, offset: 1392)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1581, file: !1582, line: 569, baseType: !1593, size: 8, offset: 1400)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1581, file: !1582, line: 570, baseType: !1593, size: 8, offset: 1408)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1581, file: !1582, line: 571, baseType: !1593, size: 8, offset: 1416)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1581, file: !1582, line: 572, baseType: !1593, size: 8, offset: 1424)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1581, file: !1582, line: 573, baseType: !1593, size: 8, offset: 1432)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1581, file: !1582, line: 574, baseType: !1593, size: 8, offset: 1440)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !572, file: !151, line: 3405, baseType: !1749, size: 384)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1749, file: !151, line: 3353, baseType: !608, size: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1749, file: !151, line: 3356, baseType: !1753, size: 192, offset: 192)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1582, line: 578, size: 192, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1753, file: !1582, line: 580, baseType: !442, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1753, file: !1582, line: 581, baseType: !442, size: 32, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1753, file: !1582, line: 582, baseType: !442, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1753, file: !1582, line: 583, baseType: !442, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1753, file: !1582, line: 584, baseType: !441, size: 8, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1753, file: !1582, line: 585, baseType: !441, size: 8, offset: 136)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1753, file: !1582, line: 586, baseType: !441, size: 8, offset: 144)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1753, file: !1582, line: 587, baseType: !441, size: 8, offset: 152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1753, file: !1582, line: 588, baseType: !441, size: 8, offset: 160)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1753, file: !1582, line: 589, baseType: !441, size: 8, offset: 168)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1753, file: !1582, line: 590, baseType: !441, size: 8, offset: 176)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !539, file: !378, line: 143, baseType: !618, size: 128, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !539, file: !378, line: 146, baseType: !618, size: 128, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !539, file: !378, line: 148, baseType: !441, size: 8, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !539, file: !378, line: 149, baseType: !441, size: 8, offset: 904)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !539, file: !378, line: 153, baseType: !386, size: 32, offset: 928)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !539, file: !378, line: 156, baseType: !1772, size: 64, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !378, line: 48, size: 320, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1773, file: !378, line: 50, baseType: !1016, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1773, file: !378, line: 59, baseType: !618, size: 128, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1773, file: !378, line: 64, baseType: !441, size: 8, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1773, file: !378, line: 67, baseType: !1772, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !539, file: !378, line: 159, baseType: !1780, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !378, line: 72, size: 256, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1781, file: !378, line: 74, baseType: !513, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1781, file: !378, line: 77, baseType: !1780, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1781, file: !378, line: 78, baseType: !1780, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1781, file: !378, line: 81, baseType: !1780, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !539, file: !378, line: 162, baseType: !441, size: 8, offset: 1088)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !539, file: !378, line: 166, baseType: !570, size: 64, offset: 1152)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !518, file: !135, line: 229, baseType: !1790, size: 128, offset: 256)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1791, size: 128, elements: !468)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !518, file: !135, line: 232, baseType: !517, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !518, file: !135, line: 233, baseType: !517, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !518, file: !135, line: 238, baseType: !1796, size: 64, offset: 512)
!1796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1797)
!1797 = !{!1798, !1804}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1796, file: !135, line: 236, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1800, file: !135, line: 275, baseType: !1087, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1800, file: !135, line: 278, baseType: !1087, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1796, file: !135, line: 237, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1806, file: !135, line: 261, baseType: !740, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1806, file: !135, line: 262, baseType: !740, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1806, file: !135, line: 266, baseType: !740, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1806, file: !135, line: 267, baseType: !740, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1806, file: !135, line: 270, baseType: !442, size: 32, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !518, file: !135, line: 241, baseType: !1814, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !484)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !518, file: !135, line: 244, baseType: !442, size: 32, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !518, file: !135, line: 247, baseType: !442, size: 32, offset: 672)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !518, file: !135, line: 250, baseType: !442, size: 32, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !518, file: !135, line: 253, baseType: !442, size: 32, offset: 736)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !135, line: 256, baseType: !442, size: 32, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !514, file: !135, line: 125, baseType: !517, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !514, file: !135, line: 131, baseType: !1822, size: 64, offset: 128)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1822, file: !135, line: 129, baseType: !1087, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1822, file: !135, line: 130, baseType: !740, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !514, file: !135, line: 134, baseType: !446, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !514, file: !135, line: 137, baseType: !570, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !514, file: !135, line: 138, baseType: !690, size: 32, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !514, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !135, line: 144, baseType: !442, size: 32, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !514, file: !135, line: 145, baseType: !442, size: 32, offset: 416)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !514, file: !135, line: 146, baseType: !1814, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redirection_data", file: !3, line: 111, size: 256, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1845}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dup_block", scope: !1835, file: !3, line: 115, baseType: !980, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing_edge", scope: !1835, file: !3, line: 119, baseType: !512, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_edges", scope: !1835, file: !3, line: 123, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "el", file: !3, line: 97, size: 128, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1841, file: !3, line: 99, baseType: !512, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1841, file: !3, line: 100, baseType: !1840, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_duplicate", scope: !1835, file: !3, line: 128, baseType: !441, size: 8, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "local_info", file: !3, line: 135, size: 192, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1848, file: !3, line: 138, baseType: !980, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "template_block", scope: !1848, file: !3, line: 142, baseType: !980, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "jumps_threaded", scope: !1848, file: !3, line: 145, baseType: !441, size: 8, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1855, line: 32, baseType: !1856)
!1855 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1855, line: 32, size: 96, elements: !1857)
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1856, file: !1855, line: 32, baseType: !1859, size: 96)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1855, line: 31, baseType: !1860)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1855, line: 31, size: 96, elements: !1861)
!1861 = !{!1862, !1863, !1864}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1860, file: !1855, line: 31, baseType: !7, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1860, file: !1855, line: 31, baseType: !7, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1860, file: !1855, line: 31, baseType: !1865, size: 32, offset: 64)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 32, elements: !533)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !450, line: 112, baseType: !1868)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !135, line: 152, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !135, line: 152, size: 128, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1872, file: !135, line: 152, baseType: !526, size: 128)
!1875 = !{!0, !1876, !1881, !1883}
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(name: "thread_stats", scope: !2, file: !3, line: 162, type: !1878, isLocal: false, isDefinition: true)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_stats_d", file: !3, line: 157, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "num_threaded_edges", scope: !1878, file: !3, line: 159, baseType: !467, size: 64)
!1881 = !DIGlobalVariableExpression(var: !1882, expr: !DIExpression())
!1882 = distinct !DIGlobalVariable(name: "redirection_data", scope: !2, file: !3, line: 132, type: !1226, isLocal: true, isDefinition: true)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(name: "dbds_ce_stop", scope: !2, file: !3, line: 680, type: !980, isLocal: true, isDefinition: true)
!1885 = !{i32 2, !"Dwarf Version", i32 4}
!1886 = !{i32 2, !"Debug Info Version", i32 3}
!1887 = !{i32 1, !"wchar_size", i32 4}
!1888 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1889 = distinct !DISubprogram(name: "vprintf", scope: !1890, file: !1890, line: 39, type: !1891, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1890 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!442, !1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !447)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1895, file: !3, baseType: !7, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1895, file: !3, baseType: !7, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1895, file: !3, baseType: !446, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1895, file: !3, baseType: !446, size: 64, offset: 128)
!1901 = !{!1902, !1903}
!1902 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1889, file: !1890, line: 39, type: !1893)
!1903 = !DILocalVariable(name: "__arg", arg: 2, scope: !1889, file: !1890, line: 39, type: !1894)
!1904 = !DILocation(line: 0, scope: !1889)
!1905 = !DILocation(line: 41, column: 20, scope: !1889)
!1906 = !DILocation(line: 41, column: 10, scope: !1889)
!1907 = !DILocation(line: 41, column: 3, scope: !1889)
!1908 = distinct !DISubprogram(name: "getchar", scope: !1890, file: !1890, line: 47, type: !1909, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!442}
!1911 = !{}
!1912 = !DILocation(line: 49, column: 16, scope: !1908)
!1913 = !DILocation(line: 49, column: 10, scope: !1908)
!1914 = !DILocation(line: 49, column: 3, scope: !1908)
!1915 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1890, file: !1890, line: 56, type: !1916, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1969)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!442, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1920, line: 7, baseType: !1921)
!1920 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1922, line: 49, size: 1728, elements: !1923)
!1922 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1939, !1941, !1942, !1943, !1946, !1948, !1949, !1950, !1953, !1955, !1958, !1961, !1962, !1963, !1964, !1965}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1921, file: !1922, line: 51, baseType: !442, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1921, file: !1922, line: 54, baseType: !444, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1921, file: !1922, line: 55, baseType: !444, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1921, file: !1922, line: 56, baseType: !444, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1921, file: !1922, line: 57, baseType: !444, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1921, file: !1922, line: 58, baseType: !444, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1921, file: !1922, line: 59, baseType: !444, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1921, file: !1922, line: 60, baseType: !444, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1921, file: !1922, line: 61, baseType: !444, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1921, file: !1922, line: 64, baseType: !444, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1921, file: !1922, line: 65, baseType: !444, size: 64, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1921, file: !1922, line: 66, baseType: !444, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1921, file: !1922, line: 68, baseType: !1937, size: 64, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1922, line: 36, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1921, file: !1922, line: 70, baseType: !1940, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1921, file: !1922, line: 72, baseType: !442, size: 32, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1921, file: !1922, line: 73, baseType: !442, size: 32, offset: 928)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1921, file: !1922, line: 74, baseType: !1944, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1945, line: 152, baseType: !484)
!1945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1921, file: !1922, line: 77, baseType: !1947, size: 16, offset: 1024)
!1947 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1921, file: !1922, line: 78, baseType: !1593, size: 8, offset: 1040)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1921, file: !1922, line: 79, baseType: !665, size: 8, offset: 1048)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1921, file: !1922, line: 81, baseType: !1951, size: 64, offset: 1088)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1922, line: 43, baseType: null)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1921, file: !1922, line: 89, baseType: !1954, size: 64, offset: 1152)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1945, line: 153, baseType: !484)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1921, file: !1922, line: 91, baseType: !1956, size: 64, offset: 1216)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1922, line: 37, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1921, file: !1922, line: 92, baseType: !1959, size: 64, offset: 1280)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1922, line: 38, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1921, file: !1922, line: 93, baseType: !1940, size: 64, offset: 1344)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1921, file: !1922, line: 94, baseType: !446, size: 64, offset: 1408)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1921, file: !1922, line: 95, baseType: !1163, size: 64, offset: 1472)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1921, file: !1922, line: 96, baseType: !442, size: 32, offset: 1536)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1921, file: !1922, line: 98, baseType: !1966, size: 160, offset: 1568)
!1966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 160, elements: !1967)
!1967 = !{!1968}
!1968 = !DISubrange(count: 20)
!1969 = !{!1970}
!1970 = !DILocalVariable(name: "__fp", arg: 1, scope: !1915, file: !1890, line: 56, type: !1918)
!1971 = !DILocation(line: 0, scope: !1915)
!1972 = !DILocation(line: 58, column: 10, scope: !1915)
!1973 = !DILocation(line: 58, column: 3, scope: !1915)
!1974 = distinct !DISubprogram(name: "getc_unlocked", scope: !1890, file: !1890, line: 66, type: !1916, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "__fp", arg: 1, scope: !1974, file: !1890, line: 66, type: !1918)
!1977 = !DILocation(line: 0, scope: !1974)
!1978 = !DILocation(line: 68, column: 10, scope: !1974)
!1979 = !DILocation(line: 68, column: 3, scope: !1974)
!1980 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1890, file: !1890, line: 73, type: !1909, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1981 = !DILocation(line: 75, column: 10, scope: !1980)
!1982 = !DILocation(line: 75, column: 3, scope: !1980)
!1983 = distinct !DISubprogram(name: "putchar", scope: !1890, file: !1890, line: 82, type: !1984, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!442, !442}
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "__c", arg: 1, scope: !1983, file: !1890, line: 82, type: !442)
!1988 = !DILocation(line: 0, scope: !1983)
!1989 = !DILocation(line: 84, column: 21, scope: !1983)
!1990 = !DILocation(line: 84, column: 10, scope: !1983)
!1991 = !DILocation(line: 84, column: 3, scope: !1983)
!1992 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1890, file: !1890, line: 91, type: !1993, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!442, !442, !1918}
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "__c", arg: 1, scope: !1992, file: !1890, line: 91, type: !442)
!1997 = !DILocalVariable(name: "__stream", arg: 2, scope: !1992, file: !1890, line: 91, type: !1918)
!1998 = !DILocation(line: 0, scope: !1992)
!1999 = !DILocation(line: 93, column: 10, scope: !1992)
!2000 = !DILocation(line: 93, column: 3, scope: !1992)
!2001 = distinct !DISubprogram(name: "putc_unlocked", scope: !1890, file: !1890, line: 101, type: !1993, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2002 = !{!2003, !2004}
!2003 = !DILocalVariable(name: "__c", arg: 1, scope: !2001, file: !1890, line: 101, type: !442)
!2004 = !DILocalVariable(name: "__stream", arg: 2, scope: !2001, file: !1890, line: 101, type: !1918)
!2005 = !DILocation(line: 0, scope: !2001)
!2006 = !DILocation(line: 103, column: 10, scope: !2001)
!2007 = !DILocation(line: 103, column: 3, scope: !2001)
!2008 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1890, file: !1890, line: 108, type: !1984, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "__c", arg: 1, scope: !2008, file: !1890, line: 108, type: !442)
!2011 = !DILocation(line: 0, scope: !2008)
!2012 = !DILocation(line: 110, column: 10, scope: !2008)
!2013 = !DILocation(line: 110, column: 3, scope: !2008)
!2014 = distinct !DISubprogram(name: "getline", scope: !1890, file: !1890, line: 118, type: !2015, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!2017, !443, !2018, !1918}
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1945, line: 193, baseType: !484)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!2019 = !{!2020, !2021, !2022}
!2020 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2014, file: !1890, line: 118, type: !443)
!2021 = !DILocalVariable(name: "__n", arg: 2, scope: !2014, file: !1890, line: 118, type: !2018)
!2022 = !DILocalVariable(name: "__stream", arg: 3, scope: !2014, file: !1890, line: 118, type: !1918)
!2023 = !DILocation(line: 0, scope: !2014)
!2024 = !DILocation(line: 120, column: 10, scope: !2014)
!2025 = !DILocation(line: 120, column: 3, scope: !2014)
!2026 = distinct !DISubprogram(name: "feof_unlocked", scope: !1890, file: !1890, line: 128, type: !1916, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2027 = !{!2028}
!2028 = !DILocalVariable(name: "__stream", arg: 1, scope: !2026, file: !1890, line: 128, type: !1918)
!2029 = !DILocation(line: 0, scope: !2026)
!2030 = !DILocation(line: 130, column: 10, scope: !2026)
!2031 = !DILocation(line: 130, column: 3, scope: !2026)
!2032 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1890, file: !1890, line: 135, type: !1916, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2033)
!2033 = !{!2034}
!2034 = !DILocalVariable(name: "__stream", arg: 1, scope: !2032, file: !1890, line: 135, type: !1918)
!2035 = !DILocation(line: 0, scope: !2032)
!2036 = !DILocation(line: 137, column: 10, scope: !2032)
!2037 = !DILocation(line: 137, column: 3, scope: !2032)
!2038 = distinct !DISubprogram(name: "tolower", scope: !2039, file: !2039, line: 207, type: !1984, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2040)
!2039 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2040 = !{!2041}
!2041 = !DILocalVariable(name: "__c", arg: 1, scope: !2038, file: !2039, line: 207, type: !442)
!2042 = !DILocation(line: 0, scope: !2038)
!2043 = !DILocation(line: 209, column: 22, scope: !2038)
!2044 = !DILocation(line: 209, column: 39, scope: !2038)
!2045 = !DILocation(line: 209, column: 38, scope: !2038)
!2046 = !DILocation(line: 209, column: 37, scope: !2038)
!2047 = !DILocation(line: 209, column: 10, scope: !2038)
!2048 = !DILocation(line: 209, column: 3, scope: !2038)
!2049 = distinct !DISubprogram(name: "toupper", scope: !2039, file: !2039, line: 213, type: !1984, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "__c", arg: 1, scope: !2049, file: !2039, line: 213, type: !442)
!2052 = !DILocation(line: 0, scope: !2049)
!2053 = !DILocation(line: 215, column: 22, scope: !2049)
!2054 = !DILocation(line: 215, column: 39, scope: !2049)
!2055 = !DILocation(line: 215, column: 38, scope: !2049)
!2056 = !DILocation(line: 215, column: 37, scope: !2049)
!2057 = !DILocation(line: 215, column: 10, scope: !2049)
!2058 = !DILocation(line: 215, column: 3, scope: !2049)
!2059 = distinct !DISubprogram(name: "atoi", scope: !2060, file: !2060, line: 361, type: !2061, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2060 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!442, !447}
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2059, file: !2060, line: 361, type: !447)
!2065 = !DILocation(line: 0, scope: !2059)
!2066 = !DILocation(line: 363, column: 16, scope: !2059)
!2067 = !DILocation(line: 363, column: 10, scope: !2059)
!2068 = !DILocation(line: 363, column: 3, scope: !2059)
!2069 = distinct !DISubprogram(name: "atol", scope: !2060, file: !2060, line: 366, type: !2070, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!484, !447}
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2069, file: !2060, line: 366, type: !447)
!2074 = !DILocation(line: 0, scope: !2069)
!2075 = !DILocation(line: 368, column: 10, scope: !2069)
!2076 = !DILocation(line: 368, column: 3, scope: !2069)
!2077 = distinct !DISubprogram(name: "atoll", scope: !2060, file: !2060, line: 373, type: !2078, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2080, !447}
!2080 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2077, file: !2060, line: 373, type: !447)
!2083 = !DILocation(line: 0, scope: !2077)
!2084 = !DILocation(line: 375, column: 10, scope: !2077)
!2085 = !DILocation(line: 375, column: 3, scope: !2077)
!2086 = distinct !DISubprogram(name: "bsearch", scope: !2087, file: !2087, line: 20, type: !2088, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2087 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!446, !853, !853, !1163, !1163, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2060, line: 808, baseType: !1238)
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2092 = !DILocalVariable(name: "__key", arg: 1, scope: !2086, file: !2087, line: 20, type: !853)
!2093 = !DILocalVariable(name: "__base", arg: 2, scope: !2086, file: !2087, line: 20, type: !853)
!2094 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2086, file: !2087, line: 20, type: !1163)
!2095 = !DILocalVariable(name: "__size", arg: 4, scope: !2086, file: !2087, line: 20, type: !1163)
!2096 = !DILocalVariable(name: "__compar", arg: 5, scope: !2086, file: !2087, line: 21, type: !2090)
!2097 = !DILocalVariable(name: "__l", scope: !2086, file: !2087, line: 23, type: !1163)
!2098 = !DILocalVariable(name: "__u", scope: !2086, file: !2087, line: 23, type: !1163)
!2099 = !DILocalVariable(name: "__idx", scope: !2086, file: !2087, line: 23, type: !1163)
!2100 = !DILocalVariable(name: "__p", scope: !2086, file: !2087, line: 24, type: !853)
!2101 = !DILocalVariable(name: "__comparison", scope: !2086, file: !2087, line: 25, type: !442)
!2102 = !DILocation(line: 0, scope: !2086)
!2103 = !DILocation(line: 29, column: 3, scope: !2086)
!2104 = !DILocation(line: 27, column: 7, scope: !2086)
!2105 = !DILocation(line: 29, column: 14, scope: !2086)
!2106 = !DILocation(line: 31, column: 20, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2086, file: !2087, line: 30, column: 5)
!2108 = !DILocation(line: 31, column: 27, scope: !2107)
!2109 = !DILocation(line: 32, column: 56, scope: !2107)
!2110 = !DILocation(line: 32, column: 47, scope: !2107)
!2111 = !DILocation(line: 33, column: 22, scope: !2107)
!2112 = !DILocation(line: 34, column: 24, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2107, file: !2087, line: 34, column: 11)
!2114 = !DILocation(line: 34, column: 11, scope: !2107)
!2115 = !DILocation(line: 36, column: 29, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !2087, line: 36, column: 16)
!2117 = !DILocation(line: 36, column: 16, scope: !2113)
!2118 = !DILocation(line: 37, column: 14, scope: !2116)
!2119 = distinct !{!2119, !2103, !2120}
!2120 = !DILocation(line: 40, column: 5, scope: !2086)
!2121 = !DILocation(line: 43, column: 1, scope: !2086)
!2122 = distinct !DISubprogram(name: "atof", scope: !2123, file: !2123, line: 25, type: !2124, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !447}
!2126 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2122, file: !2123, line: 25, type: !447)
!2129 = !DILocation(line: 0, scope: !2122)
!2130 = !DILocation(line: 27, column: 10, scope: !2122)
!2131 = !DILocation(line: 27, column: 3, scope: !2122)
!2132 = distinct !DISubprogram(name: "strtoimax", scope: !2133, file: !2133, line: 324, type: !2134, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2133 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !1893, !2139, !442}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2137, line: 101, baseType: !2138)
!2137 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1945, line: 72, baseType: !484)
!2139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !443)
!2140 = !{!2141, !2142, !2143}
!2141 = !DILocalVariable(name: "nptr", arg: 1, scope: !2132, file: !2133, line: 324, type: !1893)
!2142 = !DILocalVariable(name: "endptr", arg: 2, scope: !2132, file: !2133, line: 324, type: !2139)
!2143 = !DILocalVariable(name: "base", arg: 3, scope: !2132, file: !2133, line: 324, type: !442)
!2144 = !DILocation(line: 0, scope: !2132)
!2145 = !DILocation(line: 327, column: 10, scope: !2132)
!2146 = !DILocation(line: 327, column: 3, scope: !2132)
!2147 = distinct !DISubprogram(name: "strtoumax", scope: !2133, file: !2133, line: 336, type: !2148, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2152)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!2150, !1893, !2139, !442}
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2137, line: 102, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1945, line: 73, baseType: !467)
!2152 = !{!2153, !2154, !2155}
!2153 = !DILocalVariable(name: "nptr", arg: 1, scope: !2147, file: !2133, line: 336, type: !1893)
!2154 = !DILocalVariable(name: "endptr", arg: 2, scope: !2147, file: !2133, line: 336, type: !2139)
!2155 = !DILocalVariable(name: "base", arg: 3, scope: !2147, file: !2133, line: 336, type: !442)
!2156 = !DILocation(line: 0, scope: !2147)
!2157 = !DILocation(line: 339, column: 10, scope: !2147)
!2158 = !DILocation(line: 339, column: 3, scope: !2147)
!2159 = distinct !DISubprogram(name: "wcstoimax", scope: !2133, file: !2133, line: 348, type: !2160, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!2136, !2162, !2166, !442}
!2162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2133, line: 34, baseType: !442)
!2166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2167)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "nptr", arg: 1, scope: !2159, file: !2133, line: 348, type: !2162)
!2171 = !DILocalVariable(name: "endptr", arg: 2, scope: !2159, file: !2133, line: 348, type: !2166)
!2172 = !DILocalVariable(name: "base", arg: 3, scope: !2159, file: !2133, line: 348, type: !442)
!2173 = !DILocation(line: 0, scope: !2159)
!2174 = !DILocation(line: 351, column: 10, scope: !2159)
!2175 = !DILocation(line: 351, column: 3, scope: !2159)
!2176 = distinct !DISubprogram(name: "wcstoumax", scope: !2133, file: !2133, line: 362, type: !2177, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2150, !2162, !2166, !442}
!2179 = !{!2180, !2181, !2182}
!2180 = !DILocalVariable(name: "nptr", arg: 1, scope: !2176, file: !2133, line: 362, type: !2162)
!2181 = !DILocalVariable(name: "endptr", arg: 2, scope: !2176, file: !2133, line: 362, type: !2166)
!2182 = !DILocalVariable(name: "base", arg: 3, scope: !2176, file: !2133, line: 362, type: !442)
!2183 = !DILocation(line: 0, scope: !2176)
!2184 = !DILocation(line: 365, column: 10, scope: !2176)
!2185 = !DILocation(line: 365, column: 3, scope: !2176)
!2186 = distinct !DISubprogram(name: "stat", scope: !2187, file: !2187, line: 453, type: !2188, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!442, !447, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2192, line: 46, size: 1152, elements: !2193)
!2192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2193 = !{!2194, !2196, !2198, !2200, !2202, !2204, !2206, !2207, !2208, !2209, !2211, !2213, !2221, !2222, !2223}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2191, file: !2192, line: 48, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1945, line: 145, baseType: !467)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2191, file: !2192, line: 53, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1945, line: 148, baseType: !467)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2191, file: !2192, line: 61, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1945, line: 151, baseType: !467)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2191, file: !2192, line: 62, baseType: !2201, size: 32, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1945, line: 150, baseType: !7)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2191, file: !2192, line: 64, baseType: !2203, size: 32, offset: 224)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1945, line: 146, baseType: !7)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2191, file: !2192, line: 65, baseType: !2205, size: 32, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1945, line: 147, baseType: !7)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2191, file: !2192, line: 67, baseType: !442, size: 32, offset: 288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2191, file: !2192, line: 69, baseType: !2195, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2191, file: !2192, line: 74, baseType: !1944, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2191, file: !2192, line: 78, baseType: !2210, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1945, line: 174, baseType: !484)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2191, file: !2192, line: 80, baseType: !2212, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1945, line: 179, baseType: !484)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2191, file: !2192, line: 91, baseType: !2214, size: 128, offset: 576)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2215, line: 10, size: 128, elements: !2216)
!2215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2216 = !{!2217, !2219}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2214, file: !2215, line: 12, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1945, line: 160, baseType: !484)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2214, file: !2215, line: 16, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1945, line: 196, baseType: !484)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2191, file: !2192, line: 92, baseType: !2214, size: 128, offset: 704)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2191, file: !2192, line: 93, baseType: !2214, size: 128, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2191, file: !2192, line: 106, baseType: !2224, size: 192, offset: 960)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2220, size: 192, elements: !641)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "__path", arg: 1, scope: !2186, file: !2187, line: 453, type: !447)
!2227 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2186, file: !2187, line: 453, type: !2190)
!2228 = !DILocation(line: 0, scope: !2186)
!2229 = !DILocation(line: 455, column: 10, scope: !2186)
!2230 = !DILocation(line: 455, column: 3, scope: !2186)
!2231 = distinct !DISubprogram(name: "lstat", scope: !2187, file: !2187, line: 460, type: !2188, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233, !2234}
!2233 = !DILocalVariable(name: "__path", arg: 1, scope: !2231, file: !2187, line: 460, type: !447)
!2234 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2231, file: !2187, line: 460, type: !2190)
!2235 = !DILocation(line: 0, scope: !2231)
!2236 = !DILocation(line: 462, column: 10, scope: !2231)
!2237 = !DILocation(line: 462, column: 3, scope: !2231)
!2238 = distinct !DISubprogram(name: "fstat", scope: !2187, file: !2187, line: 467, type: !2239, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!442, !442, !2190}
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "__fd", arg: 1, scope: !2238, file: !2187, line: 467, type: !442)
!2243 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2238, file: !2187, line: 467, type: !2190)
!2244 = !DILocation(line: 0, scope: !2238)
!2245 = !DILocation(line: 469, column: 10, scope: !2238)
!2246 = !DILocation(line: 469, column: 3, scope: !2238)
!2247 = distinct !DISubprogram(name: "fstatat", scope: !2187, file: !2187, line: 474, type: !2248, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!442, !442, !447, !2190, !442}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "__fd", arg: 1, scope: !2247, file: !2187, line: 474, type: !442)
!2252 = !DILocalVariable(name: "__filename", arg: 2, scope: !2247, file: !2187, line: 474, type: !447)
!2253 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2247, file: !2187, line: 474, type: !2190)
!2254 = !DILocalVariable(name: "__flag", arg: 4, scope: !2247, file: !2187, line: 474, type: !442)
!2255 = !DILocation(line: 0, scope: !2247)
!2256 = !DILocation(line: 477, column: 10, scope: !2247)
!2257 = !DILocation(line: 477, column: 3, scope: !2247)
!2258 = distinct !DISubprogram(name: "mknod", scope: !2187, file: !2187, line: 483, type: !2259, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!442, !447, !2201, !2195}
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "__path", arg: 1, scope: !2258, file: !2187, line: 483, type: !447)
!2263 = !DILocalVariable(name: "__mode", arg: 2, scope: !2258, file: !2187, line: 483, type: !2201)
!2264 = !DILocalVariable(name: "__dev", arg: 3, scope: !2258, file: !2187, line: 483, type: !2195)
!2265 = !DILocation(line: 0, scope: !2258)
!2266 = !DILocation(line: 485, column: 10, scope: !2258)
!2267 = !DILocation(line: 485, column: 3, scope: !2258)
!2268 = distinct !DISubprogram(name: "mknodat", scope: !2187, file: !2187, line: 491, type: !2269, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!442, !442, !447, !2201, !2195}
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "__fd", arg: 1, scope: !2268, file: !2187, line: 491, type: !442)
!2273 = !DILocalVariable(name: "__path", arg: 2, scope: !2268, file: !2187, line: 491, type: !447)
!2274 = !DILocalVariable(name: "__mode", arg: 3, scope: !2268, file: !2187, line: 491, type: !2201)
!2275 = !DILocalVariable(name: "__dev", arg: 4, scope: !2268, file: !2187, line: 491, type: !2195)
!2276 = !DILocation(line: 0, scope: !2268)
!2277 = !DILocation(line: 494, column: 10, scope: !2268)
!2278 = !DILocation(line: 494, column: 3, scope: !2268)
!2279 = distinct !DISubprogram(name: "stat64", scope: !2187, file: !2187, line: 502, type: !2280, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!442, !447, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2192, line: 119, size: 1152, elements: !2284)
!2284 = !{!2285, !2286, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2298, !2299, !2300, !2301}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2283, file: !2192, line: 121, baseType: !2195, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2283, file: !2192, line: 123, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1945, line: 149, baseType: !467)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2283, file: !2192, line: 124, baseType: !2199, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2283, file: !2192, line: 125, baseType: !2201, size: 32, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2283, file: !2192, line: 132, baseType: !2203, size: 32, offset: 224)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2283, file: !2192, line: 133, baseType: !2205, size: 32, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2283, file: !2192, line: 135, baseType: !442, size: 32, offset: 288)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2283, file: !2192, line: 136, baseType: !2195, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2283, file: !2192, line: 137, baseType: !1944, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2283, file: !2192, line: 143, baseType: !2210, size: 64, offset: 448)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2283, file: !2192, line: 144, baseType: !2297, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1945, line: 180, baseType: !484)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2283, file: !2192, line: 152, baseType: !2214, size: 128, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2283, file: !2192, line: 153, baseType: !2214, size: 128, offset: 704)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2283, file: !2192, line: 154, baseType: !2214, size: 128, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2283, file: !2192, line: 164, baseType: !2224, size: 192, offset: 960)
!2302 = !{!2303, !2304}
!2303 = !DILocalVariable(name: "__path", arg: 1, scope: !2279, file: !2187, line: 502, type: !447)
!2304 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2279, file: !2187, line: 502, type: !2282)
!2305 = !DILocation(line: 0, scope: !2279)
!2306 = !DILocation(line: 504, column: 10, scope: !2279)
!2307 = !DILocation(line: 504, column: 3, scope: !2279)
!2308 = distinct !DISubprogram(name: "lstat64", scope: !2187, file: !2187, line: 509, type: !2280, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "__path", arg: 1, scope: !2308, file: !2187, line: 509, type: !447)
!2311 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2308, file: !2187, line: 509, type: !2282)
!2312 = !DILocation(line: 0, scope: !2308)
!2313 = !DILocation(line: 511, column: 10, scope: !2308)
!2314 = !DILocation(line: 511, column: 3, scope: !2308)
!2315 = distinct !DISubprogram(name: "fstat64", scope: !2187, file: !2187, line: 516, type: !2316, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!442, !442, !2282}
!2318 = !{!2319, !2320}
!2319 = !DILocalVariable(name: "__fd", arg: 1, scope: !2315, file: !2187, line: 516, type: !442)
!2320 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2315, file: !2187, line: 516, type: !2282)
!2321 = !DILocation(line: 0, scope: !2315)
!2322 = !DILocation(line: 518, column: 10, scope: !2315)
!2323 = !DILocation(line: 518, column: 3, scope: !2315)
!2324 = distinct !DISubprogram(name: "fstatat64", scope: !2187, file: !2187, line: 523, type: !2325, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!442, !442, !447, !2282, !442}
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DILocalVariable(name: "__fd", arg: 1, scope: !2324, file: !2187, line: 523, type: !442)
!2329 = !DILocalVariable(name: "__filename", arg: 2, scope: !2324, file: !2187, line: 523, type: !447)
!2330 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2324, file: !2187, line: 523, type: !2282)
!2331 = !DILocalVariable(name: "__flag", arg: 4, scope: !2324, file: !2187, line: 523, type: !442)
!2332 = !DILocation(line: 0, scope: !2324)
!2333 = !DILocation(line: 526, column: 10, scope: !2324)
!2334 = !DILocation(line: 526, column: 3, scope: !2324)
!2335 = distinct !DISubprogram(name: "thread_through_all_blocks", scope: !3, file: !3, line: 1032, type: !2336, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!441, !441}
!2338 = !{!2339, !2340, !2341, !2342, !2350, !2351, !2352, !2358}
!2339 = !DILocalVariable(name: "may_peel_loop_headers", arg: 1, scope: !2335, file: !3, line: 1032, type: !441)
!2340 = !DILocalVariable(name: "retval", scope: !2335, file: !3, line: 1034, type: !441)
!2341 = !DILocalVariable(name: "i", scope: !2335, file: !3, line: 1035, type: !7)
!2342 = !DILocalVariable(name: "bi", scope: !2335, file: !3, line: 1036, type: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !453, line: 218, baseType: !2344)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !453, line: 203, size: 256, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2344, file: !453, line: 206, baseType: !456, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2344, file: !453, line: 209, baseType: !456, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2344, file: !453, line: 212, baseType: !7, size: 32, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2344, file: !453, line: 217, baseType: !466, size: 64, offset: 192)
!2350 = !DILocalVariable(name: "threaded_blocks", scope: !2335, file: !3, line: 1037, type: !449)
!2351 = !DILocalVariable(name: "loop", scope: !2335, file: !3, line: 1038, type: !538)
!2352 = !DILocalVariable(name: "li", scope: !2335, file: !3, line: 1039, type: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !378, line: 515, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 508, size: 128, elements: !2355)
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2354, file: !378, line: 511, baseType: !1853, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2354, file: !378, line: 514, baseType: !7, size: 32, offset: 64)
!2358 = !DILocalVariable(name: "bb", scope: !2359, file: !3, line: 1058, type: !980)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1057, column: 5)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 1056, column: 3)
!2361 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1056, column: 3)
!2362 = !DILocation(line: 0, scope: !2335)
!2363 = !DILocation(line: 1035, column: 3, scope: !2335)
!2364 = !DILocation(line: 1036, column: 3, scope: !2335)
!2365 = !DILocation(line: 1038, column: 3, scope: !2335)
!2366 = !DILocation(line: 1039, column: 3, scope: !2335)
!2367 = !DILocation(line: 1042, column: 3, scope: !2335)
!2368 = !DILocation(line: 1044, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1044, column: 7)
!2370 = !DILocation(line: 1044, column: 22, scope: !2369)
!2371 = !DILocation(line: 1044, column: 7, scope: !2335)
!2372 = !DILocation(line: 1047, column: 21, scope: !2335)
!2373 = !DILocation(line: 1048, column: 3, scope: !2335)
!2374 = !DILocation(line: 1050, column: 3, scope: !2335)
!2375 = !DILocation(line: 1052, column: 3, scope: !2335)
!2376 = !DILocation(line: 1056, column: 3, scope: !2361)
!2377 = !DILocation(line: 1056, column: 3, scope: !2360)
!2378 = !DILocation(line: 1058, column: 24, scope: !2359)
!2379 = !DILocation(line: 0, scope: !2359)
!2380 = !DILocation(line: 1060, column: 11, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1060, column: 11)
!2382 = !DILocation(line: 1060, column: 34, scope: !2381)
!2383 = !DILocation(line: 1060, column: 11, scope: !2359)
!2384 = !DILocation(line: 1061, column: 12, scope: !2381)
!2385 = !DILocation(line: 1061, column: 9, scope: !2381)
!2386 = !DILocation(line: 1061, column: 2, scope: !2381)
!2387 = distinct !{!2387, !2376, !2388}
!2388 = !DILocation(line: 1062, column: 5, scope: !2361)
!2389 = !DILocation(line: 1067, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1067, column: 3)
!2391 = !DILocation(line: 1067, column: 3, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 1067, column: 3)
!2393 = !DILocation(line: 1069, column: 18, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1069, column: 11)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1068, column: 5)
!2396 = !DILocation(line: 1069, column: 12, scope: !2394)
!2397 = !DILocation(line: 1070, column: 4, scope: !2394)
!2398 = !DILocation(line: 1070, column: 53, scope: !2394)
!2399 = !DILocation(line: 1070, column: 8, scope: !2394)
!2400 = !DILocation(line: 1069, column: 11, scope: !2395)
!2401 = !DILocation(line: 1073, column: 45, scope: !2395)
!2402 = !DILocation(line: 1073, column: 17, scope: !2395)
!2403 = !DILocation(line: 1073, column: 14, scope: !2395)
!2404 = !DILocation(line: 1074, column: 5, scope: !2395)
!2405 = distinct !{!2405, !2389, !2406}
!2406 = !DILocation(line: 1074, column: 5, scope: !2390)
!2407 = !DILocation(line: 1076, column: 29, scope: !2335)
!2408 = !DILocation(line: 1077, column: 21, scope: !2335)
!2409 = !DILocation(line: 1077, column: 8, scope: !2335)
!2410 = !DILocation(line: 1076, column: 3, scope: !2335)
!2411 = !DILocation(line: 1079, column: 3, scope: !2335)
!2412 = !DILocation(line: 1081, column: 3, scope: !2335)
!2413 = !DILocation(line: 1083, column: 3, scope: !2335)
!2414 = !DILocation(line: 1084, column: 18, scope: !2335)
!2415 = !DILocation(line: 1086, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1086, column: 7)
!2417 = !DILocation(line: 1086, column: 7, scope: !2335)
!2418 = !DILocation(line: 1087, column: 5, scope: !2416)
!2419 = !DILocation(line: 1090, column: 1, scope: !2335)
!2420 = distinct !DISubprogram(name: "mark_threaded_blocks", scope: !3, file: !3, line: 978, type: !2421, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !449}
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2437, !2441}
!2424 = !DILocalVariable(name: "threaded_blocks", arg: 1, scope: !2420, file: !3, line: 978, type: !449)
!2425 = !DILocalVariable(name: "i", scope: !2420, file: !3, line: 980, type: !7)
!2426 = !DILocalVariable(name: "bi", scope: !2420, file: !3, line: 981, type: !2343)
!2427 = !DILocalVariable(name: "tmp", scope: !2420, file: !3, line: 982, type: !449)
!2428 = !DILocalVariable(name: "bb", scope: !2420, file: !3, line: 983, type: !980)
!2429 = !DILocalVariable(name: "e", scope: !2420, file: !3, line: 984, type: !512)
!2430 = !DILocalVariable(name: "ei", scope: !2420, file: !3, line: 985, type: !2431)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2432, file: !135, line: 680, baseType: !7, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2432, file: !135, line: 681, baseType: !2436, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2437 = !DILocalVariable(name: "e", scope: !2438, file: !3, line: 989, type: !512)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 988, column: 5)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 987, column: 3)
!2440 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 987, column: 3)
!2441 = !DILocalVariable(name: "e2", scope: !2438, file: !3, line: 990, type: !512)
!2442 = !DILocation(line: 0, scope: !2420)
!2443 = !DILocation(line: 980, column: 3, scope: !2420)
!2444 = !DILocation(line: 981, column: 3, scope: !2420)
!2445 = !DILocation(line: 982, column: 16, scope: !2420)
!2446 = !DILocation(line: 984, column: 3, scope: !2420)
!2447 = !DILocation(line: 985, column: 3, scope: !2420)
!2448 = !DILocation(line: 987, column: 8, scope: !2440)
!2449 = !DILocation(line: 0, scope: !2440)
!2450 = !DILocation(line: 987, column: 19, scope: !2439)
!2451 = !DILocation(line: 987, column: 17, scope: !2439)
!2452 = !DILocation(line: 987, column: 3, scope: !2440)
!2453 = !DILocation(line: 989, column: 16, scope: !2438)
!2454 = !DILocation(line: 0, scope: !2438)
!2455 = !DILocation(line: 990, column: 17, scope: !2438)
!2456 = !DILocation(line: 992, column: 10, scope: !2438)
!2457 = !DILocation(line: 992, column: 14, scope: !2438)
!2458 = !DILocation(line: 993, column: 31, scope: !2438)
!2459 = !DILocation(line: 993, column: 37, scope: !2438)
!2460 = !DILocation(line: 993, column: 7, scope: !2438)
!2461 = !DILocation(line: 987, column: 56, scope: !2439)
!2462 = !DILocation(line: 987, column: 3, scope: !2439)
!2463 = distinct !{!2463, !2452, !2464}
!2464 = !DILocation(line: 994, column: 5, scope: !2440)
!2465 = !DILocation(line: 998, column: 37, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 998, column: 7)
!2467 = !DILocation(line: 998, column: 7, scope: !2466)
!2468 = !DILocation(line: 998, column: 7, scope: !2420)
!2469 = !DILocation(line: 1000, column: 7, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1000, column: 7)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 999, column: 5)
!2472 = !DILocation(line: 0, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1006, column: 8)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1005, column: 6)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1003, column: 8)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1001, column: 2)
!2477 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1000, column: 7)
!2478 = !DILocation(line: 0, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1006, column: 8)
!2480 = !DILocation(line: 1000, column: 7, scope: !2477)
!2481 = !DILocation(line: 1002, column: 9, scope: !2476)
!2482 = !DILocation(line: 1003, column: 8, scope: !2475)
!2483 = !DILocation(line: 1003, column: 31, scope: !2475)
!2484 = !DILocation(line: 1004, column: 8, scope: !2475)
!2485 = !DILocation(line: 1004, column: 12, scope: !2475)
!2486 = !DILocation(line: 1003, column: 8, scope: !2476)
!2487 = !DILocation(line: 1006, column: 8, scope: !2473)
!2488 = !DILocation(line: 1006, column: 8, scope: !2479)
!2489 = !DILocation(line: 1007, column: 9, scope: !2479)
!2490 = !DILocation(line: 1007, column: 12, scope: !2479)
!2491 = !DILocation(line: 1007, column: 16, scope: !2479)
!2492 = distinct !{!2492, !2487, !2493}
!2493 = !DILocation(line: 1007, column: 18, scope: !2473)
!2494 = !DILocation(line: 1010, column: 39, scope: !2475)
!2495 = !DILocation(line: 1010, column: 6, scope: !2475)
!2496 = distinct !{!2496, !2469, !2497}
!2497 = !DILocation(line: 1011, column: 2, scope: !2470)
!2498 = !DILocation(line: 1014, column: 5, scope: !2466)
!2499 = !DILocation(line: 1016, column: 3, scope: !2420)
!2500 = !DILocation(line: 1017, column: 1, scope: !2420)
!2501 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !453, file: !453, line: 224, type: !2502, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !2504, !2505, !7, !2508}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !450, line: 48, baseType: !2506)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DILocalVariable(name: "bi", arg: 1, scope: !2501, file: !453, line: 224, type: !2504)
!2511 = !DILocalVariable(name: "map", arg: 2, scope: !2501, file: !453, line: 224, type: !2505)
!2512 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2501, file: !453, line: 225, type: !7)
!2513 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2501, file: !453, line: 225, type: !2508)
!2514 = !DILocation(line: 0, scope: !2501)
!2515 = !DILocation(line: 227, column: 19, scope: !2501)
!2516 = !DILocation(line: 227, column: 12, scope: !2501)
!2517 = !DILocation(line: 228, column: 7, scope: !2501)
!2518 = !DILocation(line: 228, column: 12, scope: !2501)
!2519 = !DILocation(line: 0, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !453, line: 233, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2501, file: !453, line: 232, column: 5)
!2522 = !DILocation(line: 231, column: 3, scope: !2501)
!2523 = !DILocation(line: 233, column: 12, scope: !2520)
!2524 = !DILocation(line: 233, column: 11, scope: !2521)
!2525 = !DILocation(line: 235, column: 13, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !453, line: 234, column: 2)
!2527 = !DILocation(line: 236, column: 4, scope: !2526)
!2528 = !DILocation(line: 239, column: 11, scope: !2521)
!2529 = distinct !{!2529, !2522, !2530}
!2530 = !DILocation(line: 242, column: 5, scope: !2501)
!2531 = !DILocation(line: 245, column: 11, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2501, file: !453, line: 245, column: 7)
!2533 = !DILocation(line: 245, column: 17, scope: !2532)
!2534 = !DILocation(line: 245, column: 22, scope: !2532)
!2535 = !DILocation(line: 245, column: 7, scope: !2501)
!2536 = !DILocation(line: 246, column: 27, scope: !2532)
!2537 = !DILocation(line: 246, column: 32, scope: !2532)
!2538 = !DILocation(line: 246, column: 5, scope: !2532)
!2539 = !DILocation(line: 249, column: 7, scope: !2501)
!2540 = !DILocation(line: 249, column: 15, scope: !2501)
!2541 = !DILocation(line: 250, column: 14, scope: !2501)
!2542 = !DILocation(line: 251, column: 7, scope: !2501)
!2543 = !DILocation(line: 251, column: 12, scope: !2501)
!2544 = !DILocation(line: 257, column: 16, scope: !2501)
!2545 = !DILocation(line: 257, column: 13, scope: !2501)
!2546 = !DILocation(line: 259, column: 11, scope: !2501)
!2547 = !DILocation(line: 260, column: 1, scope: !2501)
!2548 = distinct !DISubprogram(name: "bmp_iter_set", scope: !453, file: !453, line: 393, type: !2549, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!441, !2504, !2508}
!2551 = !{!2552, !2553, !2554}
!2552 = !DILocalVariable(name: "bi", arg: 1, scope: !2548, file: !453, line: 393, type: !2504)
!2553 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2548, file: !453, line: 393, type: !2508)
!2554 = !DILabel(scope: !2555, name: "next_bit", file: !453, line: 398)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !453, line: 397, column: 5)
!2556 = distinct !DILexicalBlock(scope: !2548, file: !453, line: 396, column: 7)
!2557 = !DILocation(line: 0, scope: !2548)
!2558 = !DILocation(line: 396, column: 11, scope: !2556)
!2559 = !DILocation(line: 396, column: 7, scope: !2556)
!2560 = !DILocation(line: 396, column: 7, scope: !2548)
!2561 = !DILocation(line: 419, column: 15, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !453, line: 418, column: 2)
!2563 = distinct !DILexicalBlock(scope: !2548, file: !453, line: 415, column: 5)
!2564 = !DILocation(line: 399, column: 7, scope: !2555)
!2565 = !DILocation(line: 398, column: 5, scope: !2555)
!2566 = !DILocation(line: 399, column: 20, scope: !2555)
!2567 = !DILocation(line: 399, column: 25, scope: !2555)
!2568 = !DILocation(line: 399, column: 14, scope: !2555)
!2569 = !DILocation(line: 401, column: 13, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2555, file: !453, line: 400, column: 2)
!2571 = !DILocation(line: 402, column: 12, scope: !2570)
!2572 = distinct !{!2572, !2564, !2573}
!2573 = !DILocation(line: 403, column: 2, scope: !2555)
!2574 = !DILocation(line: 410, column: 15, scope: !2548)
!2575 = !DILocation(line: 410, column: 42, scope: !2548)
!2576 = !DILocation(line: 411, column: 26, scope: !2548)
!2577 = !DILocation(line: 410, column: 11, scope: !2548)
!2578 = !DILocation(line: 412, column: 7, scope: !2548)
!2579 = !DILocation(line: 412, column: 14, scope: !2548)
!2580 = !DILocation(line: 0, scope: !2563)
!2581 = !DILocation(line: 414, column: 3, scope: !2548)
!2582 = !DILocation(line: 417, column: 7, scope: !2563)
!2583 = !DILocation(line: 417, column: 18, scope: !2563)
!2584 = !DILocation(line: 417, column: 26, scope: !2563)
!2585 = !DILocation(line: 419, column: 13, scope: !2562)
!2586 = !DILocation(line: 420, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2562, file: !453, line: 420, column: 8)
!2588 = !DILocation(line: 420, column: 8, scope: !2562)
!2589 = !DILocation(line: 422, column: 12, scope: !2562)
!2590 = !DILocation(line: 423, column: 15, scope: !2562)
!2591 = distinct !{!2591, !2582, !2592}
!2592 = !DILocation(line: 424, column: 2, scope: !2563)
!2593 = !DILocation(line: 427, column: 28, scope: !2563)
!2594 = !DILocation(line: 427, column: 16, scope: !2563)
!2595 = !DILocation(line: 428, column: 12, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2563, file: !453, line: 428, column: 11)
!2597 = !DILocation(line: 428, column: 11, scope: !2563)
!2598 = !DILocation(line: 430, column: 27, scope: !2563)
!2599 = !DILocation(line: 430, column: 32, scope: !2563)
!2600 = !DILocation(line: 430, column: 15, scope: !2563)
!2601 = !DILocation(line: 431, column: 19, scope: !2563)
!2602 = distinct !{!2602, !2581, !2603}
!2603 = !DILocation(line: 432, column: 5, scope: !2548)
!2604 = !DILocation(line: 433, column: 1, scope: !2548)
!2605 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !2606, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2610)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!980, !2608, !7}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!2610 = !{!2611, !2612}
!2611 = !DILocalVariable(name: "vec_", arg: 1, scope: !2605, file: !135, line: 281, type: !2608)
!2612 = !DILocalVariable(name: "ix_", arg: 2, scope: !2605, file: !135, line: 281, type: !7)
!2613 = !DILocation(line: 0, scope: !2605)
!2614 = !DILocation(line: 281, column: 1, scope: !2605)
!2615 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !2616, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2620)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!7, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!2620 = !{!2621}
!2621 = !DILocalVariable(name: "vec_", arg: 1, scope: !2615, file: !135, line: 150, type: !2618)
!2622 = !DILocation(line: 0, scope: !2615)
!2623 = !DILocation(line: 150, column: 1, scope: !2615)
!2624 = distinct !DISubprogram(name: "thread_block", scope: !3, file: !3, line: 518, type: !2625, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!441, !980, !441}
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636}
!2628 = !DILocalVariable(name: "bb", arg: 1, scope: !2624, file: !3, line: 518, type: !980)
!2629 = !DILocalVariable(name: "noloop_only", arg: 2, scope: !2624, file: !3, line: 518, type: !441)
!2630 = !DILocalVariable(name: "e", scope: !2624, file: !3, line: 522, type: !512)
!2631 = !DILocalVariable(name: "e2", scope: !2624, file: !3, line: 522, type: !512)
!2632 = !DILocalVariable(name: "ei", scope: !2624, file: !3, line: 523, type: !2431)
!2633 = !DILocalVariable(name: "local_info", scope: !2624, file: !3, line: 524, type: !1848)
!2634 = !DILocalVariable(name: "loop", scope: !2624, file: !3, line: 525, type: !538)
!2635 = !DILocalVariable(name: "all", scope: !2624, file: !3, line: 529, type: !441)
!2636 = !DILocalVariable(name: "e", scope: !2637, file: !3, line: 586, type: !512)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 585, column: 5)
!2638 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 584, column: 7)
!2639 = !DILocation(line: 0, scope: !2624)
!2640 = !DILocation(line: 522, column: 3, scope: !2624)
!2641 = !DILocation(line: 523, column: 3, scope: !2624)
!2642 = !DILocation(line: 524, column: 3, scope: !2624)
!2643 = !DILocation(line: 525, column: 27, scope: !2624)
!2644 = !DILocation(line: 535, column: 35, scope: !2624)
!2645 = !DILocation(line: 535, column: 22, scope: !2624)
!2646 = !DILocation(line: 535, column: 20, scope: !2624)
!2647 = !DILocation(line: 543, column: 13, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 543, column: 7)
!2649 = !DILocation(line: 543, column: 20, scope: !2648)
!2650 = !DILocation(line: 543, column: 7, scope: !2624)
!2651 = !DILocation(line: 545, column: 11, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 544, column: 5)
!2653 = !DILocation(line: 545, column: 9, scope: !2652)
!2654 = !DILocation(line: 546, column: 22, scope: !2652)
!2655 = !DILocation(line: 548, column: 11, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 548, column: 11)
!2657 = !DILocation(line: 548, column: 14, scope: !2656)
!2658 = !DILocation(line: 548, column: 17, scope: !2656)
!2659 = !DILocation(line: 548, column: 11, scope: !2652)
!2660 = !DILocation(line: 550, column: 17, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 549, column: 2)
!2662 = !DILocation(line: 551, column: 10, scope: !2661)
!2663 = !DILocation(line: 551, column: 16, scope: !2661)
!2664 = !DILocation(line: 552, column: 2, scope: !2661)
!2665 = !DILocation(line: 557, column: 3, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 557, column: 3)
!2667 = !DILocation(line: 0, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 557, column: 3)
!2669 = !DILocation(line: 0, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 561, column: 11)
!2671 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 558, column: 5)
!2672 = !DILocation(line: 529, column: 8, scope: !2624)
!2673 = !DILocation(line: 557, column: 3, scope: !2668)
!2674 = !DILocation(line: 559, column: 19, scope: !2671)
!2675 = !DILocation(line: 559, column: 22, scope: !2671)
!2676 = !DILocation(line: 561, column: 12, scope: !2670)
!2677 = !DILocation(line: 564, column: 4, scope: !2670)
!2678 = !DILocation(line: 572, column: 43, scope: !2671)
!2679 = !DILocation(line: 572, column: 49, scope: !2671)
!2680 = !DILocation(line: 573, column: 15, scope: !2671)
!2681 = !DILocation(line: 572, column: 7, scope: !2671)
!2682 = !DILocation(line: 577, column: 36, scope: !2671)
!2683 = !DILocation(line: 577, column: 7, scope: !2671)
!2684 = !DILocation(line: 578, column: 5, scope: !2671)
!2685 = distinct !{!2685, !2665, !2686}
!2686 = !DILocation(line: 578, column: 5, scope: !2666)
!2687 = !DILocation(line: 584, column: 7, scope: !2638)
!2688 = !DILocation(line: 565, column: 21, scope: !2670)
!2689 = !DILocation(line: 565, column: 34, scope: !2670)
!2690 = !DILocation(line: 565, column: 14, scope: !2670)
!2691 = !DILocation(line: 566, column: 8, scope: !2670)
!2692 = !DILocation(line: 566, column: 12, scope: !2670)
!2693 = !DILocation(line: 561, column: 11, scope: !2671)
!2694 = !DILocation(line: 572, column: 40, scope: !2671)
!2695 = !DILocation(line: 0, scope: !2671)
!2696 = !DILocation(line: 573, column: 32, scope: !2671)
!2697 = !DILocation(line: 573, column: 29, scope: !2671)
!2698 = !DILocation(line: 584, column: 7, scope: !2624)
!2699 = !DILocation(line: 586, column: 23, scope: !2637)
!2700 = !DILocation(line: 586, column: 42, scope: !2637)
!2701 = !DILocation(line: 0, scope: !2637)
!2702 = !DILocation(line: 587, column: 7, scope: !2637)
!2703 = !DILocation(line: 587, column: 53, scope: !2637)
!2704 = !DILocation(line: 587, column: 70, scope: !2637)
!2705 = !DILocation(line: 588, column: 5, scope: !2637)
!2706 = !DILocation(line: 591, column: 3, scope: !2624)
!2707 = !DILocation(line: 602, column: 14, scope: !2624)
!2708 = !DILocation(line: 602, column: 29, scope: !2624)
!2709 = !DILocation(line: 603, column: 14, scope: !2624)
!2710 = !DILocation(line: 603, column: 17, scope: !2624)
!2711 = !DILocation(line: 604, column: 14, scope: !2624)
!2712 = !DILocation(line: 604, column: 29, scope: !2624)
!2713 = !DILocation(line: 605, column: 18, scope: !2624)
!2714 = !DILocation(line: 605, column: 3, scope: !2624)
!2715 = !DILocation(line: 612, column: 18, scope: !2624)
!2716 = !DILocation(line: 612, column: 3, scope: !2624)
!2717 = !DILocation(line: 618, column: 18, scope: !2624)
!2718 = !DILocation(line: 618, column: 3, scope: !2624)
!2719 = !DILocation(line: 621, column: 16, scope: !2624)
!2720 = !DILocation(line: 621, column: 3, scope: !2624)
!2721 = !DILocation(line: 622, column: 20, scope: !2624)
!2722 = !DILocation(line: 625, column: 21, scope: !2624)
!2723 = !DILocation(line: 626, column: 1, scope: !2624)
!2724 = !DILocation(line: 625, column: 3, scope: !2624)
!2725 = distinct !DISubprogram(name: "bmp_iter_next", scope: !453, file: !453, line: 382, type: !2726, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !2504, !2508}
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "bi", arg: 1, scope: !2725, file: !453, line: 382, type: !2504)
!2730 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2725, file: !453, line: 382, type: !2508)
!2731 = !DILocation(line: 0, scope: !2725)
!2732 = !DILocation(line: 384, column: 7, scope: !2725)
!2733 = !DILocation(line: 384, column: 12, scope: !2725)
!2734 = !DILocation(line: 385, column: 11, scope: !2725)
!2735 = !DILocation(line: 386, column: 1, scope: !2725)
!2736 = distinct !DISubprogram(name: "fel_init", scope: !378, file: !378, line: 535, type: !2737, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2741)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !2739, !2740, !7}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747}
!2742 = !DILocalVariable(name: "li", arg: 1, scope: !2736, file: !378, line: 535, type: !2739)
!2743 = !DILocalVariable(name: "loop", arg: 2, scope: !2736, file: !378, line: 535, type: !2740)
!2744 = !DILocalVariable(name: "flags", arg: 3, scope: !2736, file: !378, line: 535, type: !7)
!2745 = !DILocalVariable(name: "aloop", scope: !2736, file: !378, line: 537, type: !538)
!2746 = !DILocalVariable(name: "i", scope: !2736, file: !378, line: 538, type: !7)
!2747 = !DILocalVariable(name: "mn", scope: !2736, file: !378, line: 539, type: !442)
!2748 = !DILocation(line: 0, scope: !2736)
!2749 = !DILocation(line: 541, column: 7, scope: !2736)
!2750 = !DILocation(line: 541, column: 11, scope: !2736)
!2751 = !DILocation(line: 542, column: 8, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2736, file: !378, line: 542, column: 7)
!2753 = !DILocation(line: 542, column: 7, scope: !2736)
!2754 = !DILocation(line: 544, column: 11, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2752, file: !378, line: 543, column: 5)
!2756 = !DILocation(line: 544, column: 20, scope: !2755)
!2757 = !DILocation(line: 545, column: 13, scope: !2755)
!2758 = !DILocation(line: 546, column: 7, scope: !2755)
!2759 = !DILocation(line: 549, column: 18, scope: !2736)
!2760 = !DILocation(line: 549, column: 7, scope: !2736)
!2761 = !DILocation(line: 549, column: 16, scope: !2736)
!2762 = !DILocation(line: 0, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !378, line: 560, column: 12)
!2764 = distinct !DILexicalBlock(scope: !2736, file: !378, line: 552, column: 7)
!2765 = !DILocation(line: 563, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !378, line: 563, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2763, file: !378, line: 561, column: 5)
!2768 = !DILocation(line: 564, column: 5, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !378, line: 563, column: 7)
!2770 = !DILocation(line: 564, column: 12, scope: !2769)
!2771 = !DILocation(line: 564, column: 18, scope: !2769)
!2772 = !DILocation(line: 568, column: 7, scope: !2767)
!2773 = !DILocation(line: 565, column: 20, scope: !2769)
!2774 = !DILocation(line: 563, column: 7, scope: !2769)
!2775 = distinct !{!2775, !2765, !2776}
!2776 = !DILocation(line: 566, column: 2, scope: !2766)
!2777 = !DILocation(line: 570, column: 8, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !378, line: 570, column: 8)
!2779 = distinct !DILexicalBlock(scope: !2767, file: !378, line: 569, column: 2)
!2780 = !DILocation(line: 570, column: 15, scope: !2778)
!2781 = !DILocation(line: 570, column: 19, scope: !2778)
!2782 = !DILocation(line: 570, column: 8, scope: !2779)
!2783 = !DILocation(line: 571, column: 6, scope: !2778)
!2784 = !DILocation(line: 573, column: 15, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2779, file: !378, line: 573, column: 8)
!2786 = !DILocation(line: 573, column: 8, scope: !2785)
!2787 = !DILocation(line: 573, column: 8, scope: !2779)
!2788 = !DILocation(line: 575, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !378, line: 575, column: 8)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !378, line: 574, column: 6)
!2791 = !DILocation(line: 576, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !378, line: 575, column: 8)
!2793 = !DILocation(line: 576, column: 13, scope: !2792)
!2794 = !DILocation(line: 576, column: 19, scope: !2792)
!2795 = !DILocation(line: 575, column: 8, scope: !2789)
!2796 = !DILocation(line: 577, column: 21, scope: !2792)
!2797 = !DILocation(line: 575, column: 8, scope: !2792)
!2798 = distinct !{!2798, !2795, !2799}
!2799 = !DILocation(line: 578, column: 3, scope: !2789)
!2800 = !DILocation(line: 580, column: 14, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2785, file: !378, line: 580, column: 13)
!2802 = !DILocation(line: 580, column: 13, scope: !2785)
!2803 = !DILocation(line: 583, column: 14, scope: !2801)
!2804 = distinct !{!2804, !2772, !2805}
!2805 = !DILocation(line: 584, column: 2, scope: !2767)
!2806 = !DILocation(line: 608, column: 3, scope: !2736)
!2807 = !DILocation(line: 609, column: 1, scope: !2736)
!2808 = distinct !DISubprogram(name: "thread_through_loop_header", scope: !3, file: !3, line: 759, type: !2809, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!441, !538, !441}
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2825}
!2812 = !DILocalVariable(name: "loop", arg: 1, scope: !2808, file: !3, line: 759, type: !538)
!2813 = !DILocalVariable(name: "may_peel_loop_headers", arg: 2, scope: !2808, file: !3, line: 759, type: !441)
!2814 = !DILocalVariable(name: "header", scope: !2808, file: !3, line: 761, type: !980)
!2815 = !DILocalVariable(name: "e", scope: !2808, file: !3, line: 762, type: !512)
!2816 = !DILocalVariable(name: "tgt_edge", scope: !2808, file: !3, line: 762, type: !512)
!2817 = !DILocalVariable(name: "latch", scope: !2808, file: !3, line: 762, type: !512)
!2818 = !DILocalVariable(name: "ei", scope: !2808, file: !3, line: 763, type: !2431)
!2819 = !DILocalVariable(name: "tgt_bb", scope: !2808, file: !3, line: 764, type: !980)
!2820 = !DILocalVariable(name: "atgt_bb", scope: !2808, file: !3, line: 764, type: !980)
!2821 = !DILocalVariable(name: "domst", scope: !2808, file: !3, line: 765, type: !434)
!2822 = !DILocalVariable(name: "new_preheader", scope: !2823, file: !3, line: 923, type: !980)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 922, column: 5)
!2824 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 911, column: 7)
!2825 = !DILabel(scope: !2808, name: "fail", file: !3, line: 955)
!2826 = !DILocation(line: 0, scope: !2808)
!2827 = !DILocation(line: 761, column: 30, scope: !2808)
!2828 = !DILocation(line: 762, column: 3, scope: !2808)
!2829 = !DILocation(line: 762, column: 29, scope: !2808)
!2830 = !DILocation(line: 763, column: 3, scope: !2808)
!2831 = !DILocation(line: 833, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 833, column: 7)
!2833 = !DILocation(line: 833, column: 7, scope: !2808)
!2834 = !DILocation(line: 836, column: 14, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 836, column: 7)
!2836 = !DILocation(line: 836, column: 7, scope: !2835)
!2837 = !DILocation(line: 836, column: 7, scope: !2808)
!2838 = !DILocation(line: 839, column: 26, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 837, column: 5)
!2840 = !DILocation(line: 840, column: 5, scope: !2839)
!2841 = !DILocation(line: 841, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 841, column: 12)
!2843 = !DILocation(line: 842, column: 5, scope: !2842)
!2844 = !DILocation(line: 842, column: 36, scope: !2842)
!2845 = !DILocation(line: 842, column: 9, scope: !2842)
!2846 = !DILocation(line: 841, column: 12, scope: !2835)
!2847 = !DILocation(line: 848, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 848, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 845, column: 5)
!2850 = !DILocation(line: 0, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 848, column: 7)
!2852 = !DILocation(line: 0, scope: !2849)
!2853 = !DILocation(line: 846, column: 14, scope: !2849)
!2854 = !DILocation(line: 848, column: 7, scope: !2851)
!2855 = !DILocation(line: 850, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 850, column: 8)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 849, column: 2)
!2858 = !DILocation(line: 850, column: 12, scope: !2856)
!2859 = !DILocation(line: 850, column: 8, scope: !2857)
!2860 = !DILocation(line: 852, column: 14, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 852, column: 12)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 851, column: 6)
!2863 = !DILocation(line: 852, column: 12, scope: !2862)
!2864 = !DILocation(line: 862, column: 24, scope: !2857)
!2865 = !DILocation(line: 863, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 863, column: 8)
!2867 = !DILocation(line: 863, column: 8, scope: !2857)
!2868 = !DILocation(line: 867, column: 20, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 867, column: 13)
!2870 = !DILocation(line: 867, column: 13, scope: !2866)
!2871 = distinct !{!2871, !2847, !2872}
!2872 = !DILocation(line: 869, column: 2, scope: !2848)
!2873 = !DILocation(line: 871, column: 12, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 871, column: 11)
!2875 = !DILocation(line: 871, column: 11, scope: !2849)
!2876 = !DILocation(line: 878, column: 27, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 878, column: 11)
!2878 = !DILocation(line: 878, column: 18, scope: !2877)
!2879 = !DILocation(line: 879, column: 4, scope: !2877)
!2880 = !DILocation(line: 879, column: 7, scope: !2877)
!2881 = !DILocation(line: 878, column: 11, scope: !2849)
!2882 = !DILocation(line: 0, scope: !2835)
!2883 = !DILocation(line: 885, column: 11, scope: !2808)
!2884 = !DILocation(line: 886, column: 7, scope: !2808)
!2885 = !DILocation(line: 892, column: 20, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 889, column: 5)
!2887 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 888, column: 7)
!2888 = !DILocation(line: 893, column: 13, scope: !2886)
!2889 = !DILocation(line: 893, column: 19, scope: !2886)
!2890 = !DILocation(line: 894, column: 14, scope: !2886)
!2891 = !DILocation(line: 894, column: 7, scope: !2886)
!2892 = !DILocation(line: 897, column: 15, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 897, column: 7)
!2894 = !DILocation(line: 897, column: 28, scope: !2893)
!2895 = !DILocation(line: 897, column: 35, scope: !2893)
!2896 = !DILocation(line: 897, column: 7, scope: !2808)
!2897 = !DILocation(line: 902, column: 11, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 902, column: 11)
!2899 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 898, column: 5)
!2900 = !DILocation(line: 902, column: 38, scope: !2898)
!2901 = !DILocation(line: 902, column: 11, scope: !2899)
!2902 = !DILocation(line: 904, column: 39, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 903, column: 2)
!2904 = !DILocation(line: 904, column: 13, scope: !2903)
!2905 = !DILocation(line: 905, column: 4, scope: !2903)
!2906 = !DILocation(line: 908, column: 11, scope: !2898)
!2907 = !DILocation(line: 911, column: 14, scope: !2824)
!2908 = !DILocation(line: 911, column: 7, scope: !2824)
!2909 = !DILocation(line: 911, column: 7, scope: !2808)
!2910 = !DILocation(line: 914, column: 21, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 912, column: 5)
!2912 = !DILocation(line: 914, column: 13, scope: !2911)
!2913 = !DILocation(line: 914, column: 19, scope: !2911)
!2914 = !DILocation(line: 915, column: 7, scope: !2911)
!2915 = !DILocation(line: 916, column: 20, scope: !2911)
!2916 = !DILocation(line: 919, column: 7, scope: !2911)
!2917 = !DILocation(line: 920, column: 5, scope: !2911)
!2918 = !DILocation(line: 928, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 928, column: 7)
!2920 = !DILocation(line: 0, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 928, column: 7)
!2922 = !DILocation(line: 928, column: 7, scope: !2921)
!2923 = !DILocation(line: 930, column: 8, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 930, column: 8)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 929, column: 2)
!2926 = !DILocation(line: 930, column: 11, scope: !2924)
!2927 = !DILocation(line: 930, column: 8, scope: !2925)
!2928 = distinct !{!2928, !2918, !2929}
!2929 = !DILocation(line: 932, column: 2, scope: !2919)
!2930 = !DILocation(line: 936, column: 28, scope: !2823)
!2931 = !DILocation(line: 936, column: 7, scope: !2823)
!2932 = !DILocation(line: 938, column: 7, scope: !2823)
!2933 = !DILocation(line: 939, column: 7, scope: !2823)
!2934 = !DILocation(line: 940, column: 23, scope: !2823)
!2935 = !DILocation(line: 940, column: 26, scope: !2823)
!2936 = !DILocation(line: 0, scope: !2823)
!2937 = !DILocation(line: 945, column: 13, scope: !2823)
!2938 = !DILocation(line: 945, column: 19, scope: !2823)
!2939 = !DILocation(line: 946, column: 21, scope: !2823)
!2940 = !DILocation(line: 946, column: 19, scope: !2823)
!2941 = !DILocation(line: 947, column: 35, scope: !2823)
!2942 = !DILocation(line: 947, column: 20, scope: !2823)
!2943 = !DILocation(line: 948, column: 15, scope: !2823)
!2944 = !DILocation(line: 949, column: 29, scope: !2823)
!2945 = !DILocation(line: 949, column: 20, scope: !2823)
!2946 = !DILocation(line: 950, column: 28, scope: !2823)
!2947 = !DILocation(line: 950, column: 19, scope: !2823)
!2948 = !DILocation(line: 957, column: 3, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 957, column: 3)
!2950 = !DILocation(line: 955, column: 1, scope: !2808)
!2951 = !DILocation(line: 0, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 957, column: 3)
!2953 = !DILocation(line: 957, column: 3, scope: !2952)
!2954 = !DILocation(line: 959, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 958, column: 5)
!2956 = !DILocation(line: 959, column: 10, scope: !2955)
!2957 = !DILocation(line: 959, column: 14, scope: !2955)
!2958 = distinct !{!2958, !2948, !2959}
!2959 = !DILocation(line: 960, column: 5, scope: !2949)
!2960 = !DILocation(line: 962, column: 1, scope: !2808)
!2961 = distinct !DISubprogram(name: "fel_next", scope: !378, file: !378, line: 518, type: !2962, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !2739, !2740}
!2964 = !{!2965, !2966, !2967}
!2965 = !DILocalVariable(name: "li", arg: 1, scope: !2961, file: !378, line: 518, type: !2739)
!2966 = !DILocalVariable(name: "loop", arg: 2, scope: !2961, file: !378, line: 518, type: !2740)
!2967 = !DILocalVariable(name: "anum", scope: !2961, file: !378, line: 520, type: !442)
!2968 = !DILocation(line: 0, scope: !2961)
!2969 = !DILocation(line: 520, column: 3, scope: !2961)
!2970 = !DILocation(line: 522, column: 3, scope: !2961)
!2971 = !DILocation(line: 522, column: 10, scope: !2961)
!2972 = !DILocation(line: 524, column: 14, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2961, file: !378, line: 523, column: 5)
!2974 = !DILocation(line: 525, column: 25, scope: !2973)
!2975 = !DILocation(line: 525, column: 15, scope: !2973)
!2976 = !DILocation(line: 525, column: 13, scope: !2973)
!2977 = !DILocation(line: 526, column: 11, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2973, file: !378, line: 526, column: 11)
!2979 = !DILocation(line: 526, column: 11, scope: !2973)
!2980 = distinct !{!2980, !2970, !2981}
!2981 = !DILocation(line: 528, column: 5, scope: !2961)
!2982 = !DILocation(line: 530, column: 3, scope: !2961)
!2983 = !DILocation(line: 531, column: 9, scope: !2961)
!2984 = !DILocation(line: 532, column: 1, scope: !2961)
!2985 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !135, file: !135, line: 152, type: !2986, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "vec_", arg: 1, scope: !2985, file: !135, line: 152, type: !2988)
!2991 = !DILocation(line: 0, scope: !2985)
!2992 = !DILocation(line: 152, column: 1, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !135, line: 152, column: 1)
!2994 = !DILocation(line: 152, column: 1, scope: !2985)
!2995 = distinct !DISubprogram(name: "loops_state_set", scope: !378, file: !378, line: 479, type: !2996, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !7}
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "flags", arg: 1, scope: !2995, file: !378, line: 479, type: !7)
!3000 = !DILocation(line: 0, scope: !2995)
!3001 = !DILocation(line: 481, column: 3, scope: !2995)
!3002 = !DILocation(line: 481, column: 18, scope: !2995)
!3003 = !DILocation(line: 481, column: 24, scope: !2995)
!3004 = !DILocation(line: 482, column: 1, scope: !2995)
!3005 = distinct !DISubprogram(name: "register_jump_thread", scope: !3, file: !3, line: 1101, type: !3006, scopeLine: 1102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !512, !512}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "e", arg: 1, scope: !3005, file: !3, line: 1101, type: !512)
!3010 = !DILocalVariable(name: "e2", arg: 2, scope: !3005, file: !3, line: 1101, type: !512)
!3011 = !DILocation(line: 0, scope: !3005)
!3012 = !DILocation(line: 1103, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1103, column: 7)
!3014 = !DILocation(line: 1103, column: 22, scope: !3013)
!3015 = !DILocation(line: 1103, column: 7, scope: !3005)
!3016 = !DILocation(line: 1104, column: 22, scope: !3013)
!3017 = !DILocation(line: 1104, column: 20, scope: !3013)
!3018 = !DILocation(line: 1104, column: 5, scope: !3013)
!3019 = !DILocation(line: 1106, column: 3, scope: !3005)
!3020 = !DILocation(line: 1107, column: 3, scope: !3005)
!3021 = !DILocation(line: 1108, column: 1, scope: !3005)
!3022 = distinct !DISubprogram(name: "VEC_edge_heap_alloc", scope: !135, file: !135, line: 152, type: !3023, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!1870, !442}
!3025 = !{!3026}
!3026 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3022, file: !135, line: 152, type: !442)
!3027 = !DILocation(line: 0, scope: !3022)
!3028 = !DILocation(line: 152, column: 1, scope: !3022)
!3029 = distinct !DISubprogram(name: "VEC_edge_heap_safe_push", scope: !135, file: !135, line: 152, type: !3030, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!3032, !2988, !512}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "vec_", arg: 1, scope: !3029, file: !135, line: 152, type: !2988)
!3035 = !DILocalVariable(name: "obj_", arg: 2, scope: !3029, file: !135, line: 152, type: !512)
!3036 = !DILocation(line: 0, scope: !3029)
!3037 = !DILocation(line: 152, column: 1, scope: !3029)
!3038 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !3039, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!512, !2618, !7}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "vec_", arg: 1, scope: !3038, file: !135, line: 150, type: !2618)
!3043 = !DILocalVariable(name: "ix_", arg: 2, scope: !3038, file: !135, line: 150, type: !7)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 150, column: 1, scope: !3038)
!3046 = distinct !DISubprogram(name: "redirection_block_p", scope: !3, file: !3, line: 473, type: !3047, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!441, !980}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "bb", arg: 1, scope: !3046, file: !3, line: 473, type: !980)
!3051 = !DILocalVariable(name: "gsi", scope: !3046, file: !3, line: 475, type: !3052)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !391, line: 265, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 254, size: 192, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3053, file: !391, line: 257, baseType: !1011, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3053, file: !391, line: 263, baseType: !1087, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3053, file: !391, line: 264, baseType: !980, size: 64, offset: 128)
!3058 = !DILocation(line: 0, scope: !3046)
!3059 = !DILocation(line: 475, column: 3, scope: !3046)
!3060 = !DILocation(line: 478, column: 9, scope: !3046)
!3061 = !DILocation(line: 479, column: 3, scope: !3046)
!3062 = !DILocation(line: 479, column: 11, scope: !3046)
!3063 = !DILocation(line: 480, column: 10, scope: !3046)
!3064 = !DILocation(line: 480, column: 27, scope: !3046)
!3065 = !DILocation(line: 480, column: 14, scope: !3046)
!3066 = !DILocation(line: 480, column: 43, scope: !3046)
!3067 = !DILocation(line: 481, column: 7, scope: !3046)
!3068 = !DILocation(line: 481, column: 27, scope: !3046)
!3069 = !DILocation(line: 481, column: 10, scope: !3046)
!3070 = !DILocation(line: 482, column: 14, scope: !3046)
!3071 = !DILocation(line: 482, column: 31, scope: !3046)
!3072 = !DILocation(line: 482, column: 17, scope: !3046)
!3073 = !DILocation(line: 483, column: 5, scope: !3046)
!3074 = distinct !{!3074, !3061, !3075}
!3075 = !DILocation(line: 483, column: 19, scope: !3046)
!3076 = !DILocation(line: 486, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 486, column: 7)
!3078 = !DILocation(line: 486, column: 7, scope: !3046)
!3079 = !DILocation(line: 490, column: 10, scope: !3046)
!3080 = !DILocation(line: 491, column: 10, scope: !3046)
!3081 = !DILocation(line: 491, column: 27, scope: !3046)
!3082 = !DILocation(line: 491, column: 14, scope: !3046)
!3083 = !DILocation(line: 491, column: 43, scope: !3046)
!3084 = !DILocation(line: 492, column: 14, scope: !3046)
!3085 = !DILocation(line: 492, column: 30, scope: !3046)
!3086 = !DILocation(line: 492, column: 17, scope: !3046)
!3087 = !DILocation(line: 492, column: 46, scope: !3046)
!3088 = !DILocation(line: 493, column: 14, scope: !3046)
!3089 = !DILocation(line: 493, column: 30, scope: !3046)
!3090 = !DILocation(line: 493, column: 17, scope: !3046)
!3091 = !DILocation(line: 493, column: 46, scope: !3046)
!3092 = !DILocation(line: 490, column: 3, scope: !3046)
!3093 = !DILocation(line: 494, column: 1, scope: !3046)
!3094 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !3095, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!2431, !2436}
!3097 = !{!3098, !3099}
!3098 = !DILocalVariable(name: "ev", arg: 1, scope: !3094, file: !135, line: 696, type: !2436)
!3099 = !DILocalVariable(name: "i", scope: !3094, file: !135, line: 698, type: !2431)
!3100 = !DILocation(line: 0, scope: !3094)
!3101 = !DILocation(line: 700, column: 5, scope: !3094)
!3102 = !DILocation(line: 700, column: 11, scope: !3094)
!3103 = !DILocation(line: 701, column: 5, scope: !3094)
!3104 = !DILocation(line: 701, column: 15, scope: !3094)
!3105 = !DILocation(line: 703, column: 3, scope: !3094)
!3106 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !3107, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!441, !2431, !3032}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "ei", arg: 1, scope: !3106, file: !135, line: 771, type: !2431)
!3111 = !DILocalVariable(name: "p", arg: 2, scope: !3106, file: !135, line: 771, type: !3032)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 773, column: 8, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !135, line: 773, column: 7)
!3115 = !DILocation(line: 773, column: 7, scope: !3106)
!3116 = !DILocation(line: 775, column: 12, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !135, line: 774, column: 5)
!3118 = !DILocation(line: 776, column: 7, scope: !3117)
!3119 = !DILocation(line: 781, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3114, file: !135, line: 779, column: 5)
!3121 = !DILocation(line: 0, scope: !3114)
!3122 = !DILocation(line: 783, column: 1, scope: !3106)
!3123 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !3124, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3127)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !3126}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "i", arg: 1, scope: !3123, file: !135, line: 736, type: !3126)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocation(line: 738, column: 3, scope: !3123)
!3131 = !DILocation(line: 739, column: 11, scope: !3123)
!3132 = !DILocation(line: 740, column: 1, scope: !3123)
!3133 = distinct !DISubprogram(name: "gsi_start_bb", scope: !391, file: !391, line: 4418, type: !3134, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!3052, !980}
!3136 = !{!3137, !3138, !3139}
!3137 = !DILocalVariable(name: "bb", arg: 1, scope: !3133, file: !391, line: 4418, type: !980)
!3138 = !DILocalVariable(name: "i", scope: !3133, file: !391, line: 4420, type: !3052)
!3139 = !DILocalVariable(name: "seq", scope: !3133, file: !391, line: 4421, type: !1087)
!3140 = !DILocation(line: 0, scope: !3133)
!3141 = !DILocation(line: 4420, column: 24, scope: !3133)
!3142 = !DILocation(line: 4423, column: 9, scope: !3133)
!3143 = !DILocation(line: 4424, column: 11, scope: !3133)
!3144 = !DILocation(line: 4424, column: 5, scope: !3133)
!3145 = !DILocation(line: 4424, column: 9, scope: !3133)
!3146 = !DILocation(line: 4425, column: 5, scope: !3133)
!3147 = !DILocation(line: 4425, column: 9, scope: !3133)
!3148 = !DILocation(line: 4426, column: 5, scope: !3133)
!3149 = !DILocation(line: 4426, column: 8, scope: !3133)
!3150 = !DILocation(line: 4429, column: 1, scope: !3133)
!3151 = distinct !DISubprogram(name: "gsi_end_p", scope: !391, file: !391, line: 4467, type: !3152, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!441, !3052}
!3154 = !{!3155}
!3155 = !DILocalVariable(name: "i", arg: 1, scope: !3151, file: !391, line: 4467, type: !3052)
!3156 = !DILocation(line: 4467, column: 33, scope: !3151)
!3157 = !DILocation(line: 4469, column: 12, scope: !3151)
!3158 = !DILocation(line: 4469, column: 16, scope: !3151)
!3159 = !DILocation(line: 4469, column: 10, scope: !3151)
!3160 = !DILocation(line: 4469, column: 3, scope: !3151)
!3161 = distinct !DISubprogram(name: "gimple_code", scope: !391, file: !391, line: 1052, type: !3162, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3167)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!390, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !450, line: 60, baseType: !3165)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "g", arg: 1, scope: !3161, file: !391, line: 1052, type: !3164)
!3169 = !DILocation(line: 0, scope: !3161)
!3170 = !DILocation(line: 1054, column: 20, scope: !3161)
!3171 = !DILocation(line: 1054, column: 3, scope: !3161)
!3172 = distinct !DISubprogram(name: "gsi_stmt", scope: !391, file: !391, line: 4501, type: !3173, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!1016, !3052}
!3175 = !{!3176}
!3176 = !DILocalVariable(name: "i", arg: 1, scope: !3172, file: !391, line: 4501, type: !3052)
!3177 = !DILocation(line: 4501, column: 32, scope: !3172)
!3178 = !DILocation(line: 4503, column: 12, scope: !3172)
!3179 = !DILocation(line: 4503, column: 17, scope: !3172)
!3180 = !DILocation(line: 4503, column: 3, scope: !3172)
!3181 = distinct !DISubprogram(name: "is_gimple_debug", scope: !391, file: !391, line: 3249, type: !3182, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!441, !3164}
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "gs", arg: 1, scope: !3181, file: !391, line: 3249, type: !3164)
!3186 = !DILocation(line: 0, scope: !3181)
!3187 = !DILocation(line: 3251, column: 10, scope: !3181)
!3188 = !DILocation(line: 3251, column: 27, scope: !3181)
!3189 = !DILocation(line: 3251, column: 3, scope: !3181)
!3190 = distinct !DISubprogram(name: "gimple_nop_p", scope: !391, file: !391, line: 4304, type: !3182, scopeLine: 4305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3191)
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "g", arg: 1, scope: !3190, file: !391, line: 4304, type: !3164)
!3193 = !DILocation(line: 0, scope: !3190)
!3194 = !DILocation(line: 4306, column: 10, scope: !3190)
!3195 = !DILocation(line: 4306, column: 26, scope: !3190)
!3196 = !DILocation(line: 4306, column: 3, scope: !3190)
!3197 = distinct !DISubprogram(name: "gsi_next", scope: !391, file: !391, line: 4485, type: !3198, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3201)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3200}
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "i", arg: 1, scope: !3197, file: !391, line: 4485, type: !3200)
!3203 = !DILocation(line: 0, scope: !3197)
!3204 = !DILocation(line: 4487, column: 15, scope: !3197)
!3205 = !DILocation(line: 4487, column: 20, scope: !3197)
!3206 = !DILocation(line: 4487, column: 10, scope: !3197)
!3207 = !DILocation(line: 4488, column: 1, scope: !3197)
!3208 = distinct !DISubprogram(name: "bb_seq", scope: !391, file: !391, line: 237, type: !3209, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3211)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!1087, !1867}
!3211 = !{!3212}
!3212 = !DILocalVariable(name: "bb", arg: 1, scope: !3208, file: !391, line: 237, type: !1867)
!3213 = !DILocation(line: 0, scope: !3208)
!3214 = !DILocation(line: 239, column: 17, scope: !3208)
!3215 = !DILocation(line: 239, column: 23, scope: !3208)
!3216 = !DILocation(line: 239, column: 33, scope: !3208)
!3217 = !DILocation(line: 239, column: 43, scope: !3208)
!3218 = !DILocation(line: 239, column: 36, scope: !3208)
!3219 = !DILocation(line: 239, column: 10, scope: !3208)
!3220 = !DILocation(line: 239, column: 68, scope: !3208)
!3221 = !DILocation(line: 239, column: 3, scope: !3208)
!3222 = distinct !DISubprogram(name: "gimple_seq_first", scope: !391, file: !391, line: 159, type: !3223, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3228)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!1011, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !450, line: 67, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!3228 = !{!3229}
!3229 = !DILocalVariable(name: "s", arg: 1, scope: !3222, file: !391, line: 159, type: !3225)
!3230 = !DILocation(line: 0, scope: !3222)
!3231 = !DILocation(line: 161, column: 10, scope: !3222)
!3232 = !DILocation(line: 161, column: 17, scope: !3222)
!3233 = !DILocation(line: 161, column: 3, scope: !3222)
!3234 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !3235, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!441, !2431}
!3237 = !{!3238}
!3238 = !DILocalVariable(name: "i", arg: 1, scope: !3234, file: !135, line: 721, type: !2431)
!3239 = !DILocation(line: 723, column: 22, scope: !3234)
!3240 = !DILocation(line: 723, column: 19, scope: !3234)
!3241 = !DILocation(line: 723, column: 10, scope: !3234)
!3242 = !DILocation(line: 723, column: 3, scope: !3234)
!3243 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !3244, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!512, !2431}
!3246 = !{!3247}
!3247 = !DILocalVariable(name: "i", arg: 1, scope: !3243, file: !135, line: 752, type: !2431)
!3248 = !DILocation(line: 754, column: 10, scope: !3243)
!3249 = !DILocation(line: 754, column: 3, scope: !3243)
!3250 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !3251, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!521, !2431}
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "i", arg: 1, scope: !3250, file: !135, line: 685, type: !2431)
!3255 = !DILocation(line: 687, column: 3, scope: !3250)
!3256 = !DILocation(line: 688, column: 10, scope: !3250)
!3257 = !DILocation(line: 688, column: 3, scope: !3250)
!3258 = distinct !DISubprogram(name: "redirection_data_hash", scope: !3, file: !3, line: 224, type: !1233, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3259)
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3258, file: !3, line: 224, type: !853)
!3261 = !DILocalVariable(name: "e", scope: !3258, file: !3, line: 226, type: !512)
!3262 = !DILocation(line: 0, scope: !3258)
!3263 = !DILocation(line: 226, column: 50, scope: !3258)
!3264 = !DILocation(line: 227, column: 13, scope: !3258)
!3265 = !DILocation(line: 227, column: 19, scope: !3258)
!3266 = !DILocation(line: 227, column: 3, scope: !3258)
!3267 = distinct !DISubprogram(name: "redirection_data_eq", scope: !3, file: !3, line: 231, type: !1239, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3268 = !{!3269, !3270, !3271, !3272}
!3269 = !DILocalVariable(name: "p1", arg: 1, scope: !3267, file: !3, line: 231, type: !853)
!3270 = !DILocalVariable(name: "p2", arg: 2, scope: !3267, file: !3, line: 231, type: !853)
!3271 = !DILocalVariable(name: "e1", scope: !3267, file: !3, line: 233, type: !512)
!3272 = !DILocalVariable(name: "e2", scope: !3267, file: !3, line: 234, type: !512)
!3273 = !DILocation(line: 0, scope: !3267)
!3274 = !DILocation(line: 233, column: 52, scope: !3267)
!3275 = !DILocation(line: 234, column: 52, scope: !3267)
!3276 = !DILocation(line: 236, column: 13, scope: !3267)
!3277 = !DILocation(line: 236, column: 3, scope: !3267)
!3278 = distinct !DISubprogram(name: "lookup_redirection_data", scope: !3, file: !3, line: 246, type: !3279, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!1846, !512, !512, !429}
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287}
!3282 = !DILocalVariable(name: "e", arg: 1, scope: !3278, file: !3, line: 246, type: !512)
!3283 = !DILocalVariable(name: "incoming_edge", arg: 2, scope: !3278, file: !3, line: 246, type: !512)
!3284 = !DILocalVariable(name: "insert", arg: 3, scope: !3278, file: !3, line: 246, type: !429)
!3285 = !DILocalVariable(name: "slot", scope: !3278, file: !3, line: 248, type: !1247)
!3286 = !DILocalVariable(name: "elt", scope: !3278, file: !3, line: 249, type: !1846)
!3287 = !DILocalVariable(name: "el", scope: !3288, file: !3, line: 293, type: !1840)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 292, column: 2)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 291, column: 11)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 281, column: 5)
!3291 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 271, column: 7)
!3292 = !DILocation(line: 0, scope: !3278)
!3293 = !DILocation(line: 253, column: 9, scope: !3278)
!3294 = !DILocation(line: 254, column: 8, scope: !3278)
!3295 = !DILocation(line: 254, column: 22, scope: !3278)
!3296 = !DILocation(line: 255, column: 8, scope: !3278)
!3297 = !DILocation(line: 255, column: 18, scope: !3278)
!3298 = !DILocation(line: 256, column: 8, scope: !3278)
!3299 = !DILocation(line: 256, column: 25, scope: !3278)
!3300 = !DILocation(line: 257, column: 8, scope: !3278)
!3301 = !DILocation(line: 257, column: 23, scope: !3278)
!3302 = !DILocation(line: 259, column: 26, scope: !3278)
!3303 = !DILocation(line: 259, column: 10, scope: !3278)
!3304 = !DILocation(line: 263, column: 12, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 263, column: 7)
!3306 = !DILocation(line: 263, column: 7, scope: !3278)
!3307 = !DILocation(line: 265, column: 7, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 264, column: 5)
!3309 = !DILocation(line: 266, column: 7, scope: !3308)
!3310 = !DILocation(line: 271, column: 7, scope: !3291)
!3311 = !DILocation(line: 271, column: 13, scope: !3291)
!3312 = !DILocation(line: 271, column: 7, scope: !3278)
!3313 = !DILocation(line: 273, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 272, column: 5)
!3315 = !DILocation(line: 274, column: 29, scope: !3314)
!3316 = !DILocation(line: 274, column: 27, scope: !3314)
!3317 = !DILocation(line: 275, column: 28, scope: !3314)
!3318 = !DILocation(line: 275, column: 30, scope: !3314)
!3319 = !DILocation(line: 276, column: 12, scope: !3314)
!3320 = !DILocation(line: 276, column: 28, scope: !3314)
!3321 = !DILocation(line: 276, column: 33, scope: !3314)
!3322 = !DILocation(line: 277, column: 7, scope: !3314)
!3323 = !DILocation(line: 284, column: 7, scope: !3290)
!3324 = !DILocation(line: 287, column: 41, scope: !3290)
!3325 = !DILocation(line: 291, column: 11, scope: !3289)
!3326 = !DILocation(line: 291, column: 11, scope: !3290)
!3327 = !DILocation(line: 293, column: 27, scope: !3288)
!3328 = !DILocation(line: 0, scope: !3288)
!3329 = !DILocation(line: 294, column: 20, scope: !3288)
!3330 = !DILocation(line: 294, column: 8, scope: !3288)
!3331 = !DILocation(line: 294, column: 13, scope: !3288)
!3332 = !DILocation(line: 295, column: 8, scope: !3288)
!3333 = !DILocation(line: 295, column: 10, scope: !3288)
!3334 = !DILocation(line: 296, column: 24, scope: !3288)
!3335 = !DILocation(line: 297, column: 2, scope: !3288)
!3336 = !DILocation(line: 301, column: 1, scope: !3278)
!3337 = distinct !DISubprogram(name: "create_duplicates", scope: !3, file: !3, line: 339, type: !3338, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!442, !1247, !446}
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "slot", arg: 1, scope: !3337, file: !3, line: 339, type: !1247)
!3342 = !DILocalVariable(name: "data", arg: 2, scope: !3337, file: !3, line: 339, type: !446)
!3343 = !DILocalVariable(name: "rd", scope: !3337, file: !3, line: 341, type: !1846)
!3344 = !DILocalVariable(name: "local_info", scope: !3337, file: !3, line: 342, type: !1847)
!3345 = !DILocation(line: 0, scope: !3337)
!3346 = !DILocation(line: 341, column: 61, scope: !3337)
!3347 = !DILocation(line: 346, column: 11, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 346, column: 7)
!3349 = !DILocation(line: 346, column: 7, scope: !3348)
!3350 = !DILocation(line: 346, column: 7, scope: !3337)
!3351 = !DILocation(line: 351, column: 19, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 351, column: 7)
!3353 = !DILocation(line: 351, column: 34, scope: !3352)
!3354 = !DILocation(line: 351, column: 7, scope: !3337)
!3355 = !DILocation(line: 353, column: 47, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 352, column: 5)
!3357 = !DILocation(line: 353, column: 7, scope: !3356)
!3358 = !DILocation(line: 354, column: 40, scope: !3356)
!3359 = !DILocation(line: 354, column: 34, scope: !3356)
!3360 = !DILocation(line: 359, column: 5, scope: !3356)
!3361 = !DILocation(line: 362, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 361, column: 5)
!3363 = !DILocation(line: 366, column: 7, scope: !3362)
!3364 = !DILocation(line: 371, column: 1, scope: !3337)
!3365 = distinct !DISubprogram(name: "fixup_template_block", scope: !3, file: !3, line: 378, type: !3338, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3366)
!3366 = !{!3367, !3368, !3369, !3370}
!3367 = !DILocalVariable(name: "slot", arg: 1, scope: !3365, file: !3, line: 378, type: !1247)
!3368 = !DILocalVariable(name: "data", arg: 2, scope: !3365, file: !3, line: 378, type: !446)
!3369 = !DILocalVariable(name: "rd", scope: !3365, file: !3, line: 380, type: !1846)
!3370 = !DILocalVariable(name: "local_info", scope: !3365, file: !3, line: 381, type: !1847)
!3371 = !DILocation(line: 0, scope: !3365)
!3372 = !DILocation(line: 380, column: 61, scope: !3365)
!3373 = !DILocation(line: 385, column: 11, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 385, column: 7)
!3375 = !DILocation(line: 385, column: 7, scope: !3374)
!3376 = !DILocation(line: 385, column: 21, scope: !3374)
!3377 = !DILocation(line: 385, column: 53, scope: !3374)
!3378 = !DILocation(line: 385, column: 38, scope: !3374)
!3379 = !DILocation(line: 385, column: 7, scope: !3365)
!3380 = !DILocation(line: 387, column: 7, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 386, column: 5)
!3382 = !DILocation(line: 388, column: 7, scope: !3381)
!3383 = !DILocation(line: 392, column: 1, scope: !3365)
!3384 = distinct !DISubprogram(name: "redirect_edges", scope: !3, file: !3, line: 398, type: !3338, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3396}
!3386 = !DILocalVariable(name: "slot", arg: 1, scope: !3384, file: !3, line: 398, type: !1247)
!3387 = !DILocalVariable(name: "data", arg: 2, scope: !3384, file: !3, line: 398, type: !446)
!3388 = !DILocalVariable(name: "rd", scope: !3384, file: !3, line: 400, type: !1846)
!3389 = !DILocalVariable(name: "local_info", scope: !3384, file: !3, line: 401, type: !1847)
!3390 = !DILocalVariable(name: "next", scope: !3384, file: !3, line: 402, type: !1840)
!3391 = !DILocalVariable(name: "el", scope: !3384, file: !3, line: 402, type: !1840)
!3392 = !DILocalVariable(name: "e", scope: !3393, file: !3, line: 408, type: !512)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 407, column: 5)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 406, column: 3)
!3395 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 406, column: 3)
!3396 = !DILocalVariable(name: "e2", scope: !3397, file: !3, line: 424, type: !512)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 423, column: 2)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 422, column: 11)
!3399 = !DILocation(line: 0, scope: !3384)
!3400 = !DILocation(line: 400, column: 61, scope: !3384)
!3401 = !DILocation(line: 406, column: 17, scope: !3395)
!3402 = !DILocation(line: 0, scope: !3398)
!3403 = !DILocation(line: 0, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 441, column: 8)
!3405 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 440, column: 2)
!3406 = !DILocation(line: 0, scope: !3405)
!3407 = !DILocation(line: 406, column: 8, scope: !3395)
!3408 = !DILocation(line: 0, scope: !3395)
!3409 = !DILocation(line: 406, column: 3, scope: !3395)
!3410 = !DILocation(line: 408, column: 20, scope: !3393)
!3411 = !DILocation(line: 0, scope: !3393)
!3412 = !DILocation(line: 413, column: 18, scope: !3393)
!3413 = !DILocation(line: 414, column: 7, scope: !3393)
!3414 = !DILocation(line: 418, column: 10, scope: !3393)
!3415 = !DILocation(line: 418, column: 14, scope: !3393)
!3416 = !DILocation(line: 420, column: 38, scope: !3393)
!3417 = !DILocation(line: 422, column: 15, scope: !3398)
!3418 = !DILocation(line: 422, column: 11, scope: !3398)
!3419 = !DILocation(line: 422, column: 11, scope: !3393)
!3420 = !DILocation(line: 426, column: 18, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 426, column: 8)
!3422 = !DILocation(line: 426, column: 22, scope: !3421)
!3423 = !DILocation(line: 426, column: 33, scope: !3421)
!3424 = !DILocation(line: 426, column: 8, scope: !3397)
!3425 = !DILocation(line: 428, column: 11, scope: !3421)
!3426 = !DILocation(line: 428, column: 16, scope: !3421)
!3427 = !DILocation(line: 428, column: 26, scope: !3421)
!3428 = !DILocation(line: 428, column: 32, scope: !3421)
!3429 = !DILocation(line: 428, column: 54, scope: !3421)
!3430 = !DILocation(line: 427, column: 6, scope: !3421)
!3431 = !DILocation(line: 430, column: 8, scope: !3397)
!3432 = !DILocation(line: 430, column: 31, scope: !3397)
!3433 = !DILocation(line: 430, column: 19, scope: !3397)
!3434 = !DILocation(line: 430, column: 25, scope: !3397)
!3435 = !DILocation(line: 431, column: 32, scope: !3397)
!3436 = !DILocation(line: 431, column: 8, scope: !3397)
!3437 = !DILocation(line: 431, column: 19, scope: !3397)
!3438 = !DILocation(line: 431, column: 29, scope: !3397)
!3439 = !DILocation(line: 432, column: 46, scope: !3397)
!3440 = !DILocation(line: 432, column: 4, scope: !3397)
!3441 = !DILocation(line: 432, column: 34, scope: !3397)
!3442 = !DILocation(line: 432, column: 40, scope: !3397)
!3443 = !DILocation(line: 435, column: 42, scope: !3397)
!3444 = !DILocation(line: 435, column: 9, scope: !3397)
!3445 = !DILocation(line: 0, scope: !3397)
!3446 = !DILocation(line: 436, column: 4, scope: !3397)
!3447 = !DILocation(line: 437, column: 4, scope: !3397)
!3448 = !DILocation(line: 438, column: 2, scope: !3397)
!3449 = !DILocation(line: 441, column: 18, scope: !3404)
!3450 = !DILocation(line: 441, column: 22, scope: !3404)
!3451 = !DILocation(line: 441, column: 33, scope: !3404)
!3452 = !DILocation(line: 441, column: 8, scope: !3405)
!3453 = !DILocation(line: 443, column: 11, scope: !3404)
!3454 = !DILocation(line: 443, column: 16, scope: !3404)
!3455 = !DILocation(line: 443, column: 26, scope: !3404)
!3456 = !DILocation(line: 443, column: 32, scope: !3404)
!3457 = !DILocation(line: 443, column: 51, scope: !3404)
!3458 = !DILocation(line: 443, column: 55, scope: !3404)
!3459 = !DILocation(line: 442, column: 6, scope: !3404)
!3460 = !DILocation(line: 447, column: 52, scope: !3405)
!3461 = !DILocation(line: 448, column: 16, scope: !3405)
!3462 = !DILocation(line: 448, column: 31, scope: !3405)
!3463 = !DILocation(line: 447, column: 4, scope: !3405)
!3464 = !DILocation(line: 451, column: 34, scope: !3405)
!3465 = !DILocation(line: 451, column: 4, scope: !3405)
!3466 = !DILocation(line: 451, column: 39, scope: !3405)
!3467 = !DILocation(line: 452, column: 6, scope: !3405)
!3468 = !DILocation(line: 453, column: 34, scope: !3405)
!3469 = !DILocation(line: 453, column: 4, scope: !3405)
!3470 = !DILocation(line: 453, column: 39, scope: !3405)
!3471 = !DILocation(line: 453, column: 45, scope: !3405)
!3472 = !DILocation(line: 456, column: 31, scope: !3405)
!3473 = !DILocation(line: 456, column: 16, scope: !3405)
!3474 = !DILocation(line: 456, column: 20, scope: !3405)
!3475 = !DILocation(line: 456, column: 26, scope: !3405)
!3476 = !DILocation(line: 457, column: 32, scope: !3405)
!3477 = !DILocation(line: 457, column: 16, scope: !3405)
!3478 = !DILocation(line: 457, column: 20, scope: !3405)
!3479 = !DILocation(line: 457, column: 30, scope: !3405)
!3480 = !DILocation(line: 406, column: 3, scope: !3394)
!3481 = distinct !{!3481, !3409, !3482}
!3482 = !DILocation(line: 459, column: 5, scope: !3395)
!3483 = !DILocation(line: 462, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 462, column: 7)
!3485 = !DILocation(line: 462, column: 7, scope: !3484)
!3486 = !DILocation(line: 462, column: 7, scope: !3384)
!3487 = !DILocation(line: 463, column: 17, scope: !3484)
!3488 = !DILocation(line: 463, column: 32, scope: !3484)
!3489 = !DILocation(line: 463, column: 5, scope: !3484)
!3490 = !DILocation(line: 465, column: 3, scope: !3384)
!3491 = distinct !DISubprogram(name: "create_block_for_threading", scope: !3, file: !3, line: 203, type: !3492, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !980, !1846}
!3494 = !{!3495, !3496}
!3495 = !DILocalVariable(name: "bb", arg: 1, scope: !3491, file: !3, line: 203, type: !980)
!3496 = !DILocalVariable(name: "rd", arg: 2, scope: !3491, file: !3, line: 203, type: !1846)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 207, column: 19, scope: !3491)
!3499 = !DILocation(line: 207, column: 7, scope: !3491)
!3500 = !DILocation(line: 207, column: 17, scope: !3491)
!3501 = !DILocation(line: 210, column: 18, scope: !3491)
!3502 = !DILocation(line: 210, column: 28, scope: !3491)
!3503 = !DILocation(line: 211, column: 7, scope: !3491)
!3504 = !DILocation(line: 211, column: 18, scope: !3491)
!3505 = !DILocation(line: 211, column: 24, scope: !3491)
!3506 = !DILocation(line: 219, column: 43, scope: !3491)
!3507 = !DILocation(line: 219, column: 3, scope: !3491)
!3508 = !DILocation(line: 220, column: 1, scope: !3491)
!3509 = distinct !DISubprogram(name: "create_edge_and_update_destination_phis", scope: !3, file: !3, line: 311, type: !3510, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !1846}
!3512 = !{!3513, !3514, !3515, !3516, !3520, !3521}
!3513 = !DILocalVariable(name: "rd", arg: 1, scope: !3509, file: !3, line: 311, type: !1846)
!3514 = !DILocalVariable(name: "e", scope: !3509, file: !3, line: 313, type: !512)
!3515 = !DILocalVariable(name: "gsi", scope: !3509, file: !3, line: 314, type: !3052)
!3516 = !DILocalVariable(name: "phi", scope: !3517, file: !3, line: 327, type: !1016)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 326, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 325, column: 3)
!3519 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 325, column: 3)
!3520 = !DILocalVariable(name: "locus", scope: !3517, file: !3, line: 328, type: !692)
!3521 = !DILocalVariable(name: "indx", scope: !3517, file: !3, line: 329, type: !442)
!3522 = !DILocation(line: 0, scope: !3509)
!3523 = !DILocation(line: 313, column: 27, scope: !3509)
!3524 = !DILocation(line: 313, column: 42, scope: !3509)
!3525 = !DILocation(line: 313, column: 57, scope: !3509)
!3526 = !DILocation(line: 313, column: 12, scope: !3509)
!3527 = !DILocation(line: 314, column: 3, scope: !3509)
!3528 = !DILocation(line: 316, column: 3, scope: !3509)
!3529 = !DILocation(line: 317, column: 6, scope: !3509)
!3530 = !DILocation(line: 317, column: 18, scope: !3509)
!3531 = !DILocation(line: 318, column: 18, scope: !3509)
!3532 = !DILocation(line: 318, column: 29, scope: !3509)
!3533 = !DILocation(line: 318, column: 6, scope: !3509)
!3534 = !DILocation(line: 318, column: 12, scope: !3509)
!3535 = !DILocation(line: 319, column: 16, scope: !3509)
!3536 = !DILocation(line: 319, column: 31, scope: !3509)
!3537 = !DILocation(line: 319, column: 6, scope: !3509)
!3538 = !DILocation(line: 319, column: 10, scope: !3509)
!3539 = !DILocation(line: 325, column: 14, scope: !3519)
!3540 = !DILocation(line: 325, column: 33, scope: !3519)
!3541 = !DILocation(line: 325, column: 8, scope: !3519)
!3542 = !DILocation(line: 325, column: 41, scope: !3518)
!3543 = !DILocation(line: 325, column: 40, scope: !3518)
!3544 = !DILocation(line: 325, column: 3, scope: !3519)
!3545 = !DILocation(line: 327, column: 20, scope: !3517)
!3546 = !DILocation(line: 0, scope: !3517)
!3547 = !DILocation(line: 329, column: 22, scope: !3517)
!3548 = !DILocation(line: 329, column: 37, scope: !3517)
!3549 = !DILocation(line: 331, column: 45, scope: !3517)
!3550 = !DILocation(line: 331, column: 15, scope: !3517)
!3551 = !DILocation(line: 332, column: 25, scope: !3517)
!3552 = !DILocation(line: 332, column: 7, scope: !3517)
!3553 = !DILocation(line: 325, column: 58, scope: !3518)
!3554 = !DILocation(line: 325, column: 3, scope: !3518)
!3555 = distinct !{!3555, !3544, !3556}
!3556 = !DILocation(line: 333, column: 5, scope: !3519)
!3557 = !DILocation(line: 334, column: 1, scope: !3509)
!3558 = distinct !DISubprogram(name: "remove_ctrl_stmt_and_useless_edges", scope: !3, file: !3, line: 170, type: !3559, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !980, !980}
!3561 = !{!3562, !3563, !3564, !3565, !3566}
!3562 = !DILocalVariable(name: "bb", arg: 1, scope: !3558, file: !3, line: 170, type: !980)
!3563 = !DILocalVariable(name: "dest_bb", arg: 2, scope: !3558, file: !3, line: 170, type: !980)
!3564 = !DILocalVariable(name: "gsi", scope: !3558, file: !3, line: 172, type: !3052)
!3565 = !DILocalVariable(name: "e", scope: !3558, file: !3, line: 173, type: !512)
!3566 = !DILocalVariable(name: "ei", scope: !3558, file: !3, line: 174, type: !2431)
!3567 = !DILocation(line: 0, scope: !3558)
!3568 = !DILocation(line: 172, column: 3, scope: !3558)
!3569 = !DILocation(line: 174, column: 3, scope: !3558)
!3570 = !DILocation(line: 176, column: 9, scope: !3558)
!3571 = !DILocation(line: 183, column: 8, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 183, column: 7)
!3573 = !DILocation(line: 184, column: 7, scope: !3572)
!3574 = !DILocation(line: 184, column: 10, scope: !3572)
!3575 = !DILocation(line: 185, column: 7, scope: !3572)
!3576 = !DILocation(line: 185, column: 24, scope: !3572)
!3577 = !DILocation(line: 185, column: 11, scope: !3572)
!3578 = !DILocation(line: 185, column: 40, scope: !3572)
!3579 = !DILocation(line: 186, column: 4, scope: !3572)
!3580 = !DILocation(line: 186, column: 20, scope: !3572)
!3581 = !DILocation(line: 186, column: 7, scope: !3572)
!3582 = !DILocation(line: 186, column: 36, scope: !3572)
!3583 = !DILocation(line: 187, column: 4, scope: !3572)
!3584 = !DILocation(line: 187, column: 20, scope: !3572)
!3585 = !DILocation(line: 187, column: 7, scope: !3572)
!3586 = !DILocation(line: 187, column: 36, scope: !3572)
!3587 = !DILocation(line: 183, column: 7, scope: !3558)
!3588 = !DILocation(line: 188, column: 5, scope: !3572)
!3589 = !DILocation(line: 190, column: 13, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 190, column: 3)
!3591 = !DILocation(line: 0, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 190, column: 3)
!3593 = !DILocation(line: 190, column: 8, scope: !3590)
!3594 = !DILocation(line: 190, column: 40, scope: !3592)
!3595 = !DILocation(line: 190, column: 3, scope: !3590)
!3596 = !DILocation(line: 192, column: 14, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 192, column: 11)
!3598 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 191, column: 5)
!3599 = !DILocation(line: 192, column: 19, scope: !3597)
!3600 = !DILocation(line: 192, column: 11, scope: !3598)
!3601 = !DILocation(line: 193, column: 2, scope: !3597)
!3602 = !DILocation(line: 195, column: 2, scope: !3597)
!3603 = !DILocation(line: 190, column: 3, scope: !3592)
!3604 = distinct !{!3604, !3595, !3605}
!3605 = !DILocation(line: 196, column: 5, scope: !3590)
!3606 = !DILocation(line: 197, column: 1, scope: !3558)
!3607 = distinct !DISubprogram(name: "gsi_last_bb", scope: !391, file: !391, line: 4450, type: !3134, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3608)
!3608 = !{!3609, !3610, !3611}
!3609 = !DILocalVariable(name: "bb", arg: 1, scope: !3607, file: !391, line: 4450, type: !980)
!3610 = !DILocalVariable(name: "i", scope: !3607, file: !391, line: 4452, type: !3052)
!3611 = !DILocalVariable(name: "seq", scope: !3607, file: !391, line: 4453, type: !1087)
!3612 = !DILocation(line: 0, scope: !3607)
!3613 = !DILocation(line: 4452, column: 24, scope: !3607)
!3614 = !DILocation(line: 4455, column: 9, scope: !3607)
!3615 = !DILocation(line: 4456, column: 11, scope: !3607)
!3616 = !DILocation(line: 4456, column: 5, scope: !3607)
!3617 = !DILocation(line: 4456, column: 9, scope: !3607)
!3618 = !DILocation(line: 4457, column: 5, scope: !3607)
!3619 = !DILocation(line: 4457, column: 9, scope: !3607)
!3620 = !DILocation(line: 4458, column: 5, scope: !3607)
!3621 = !DILocation(line: 4458, column: 8, scope: !3607)
!3622 = !DILocation(line: 4461, column: 1, scope: !3607)
!3623 = distinct !DISubprogram(name: "ei_safe_edge", scope: !135, file: !135, line: 761, type: !3244, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3624)
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "i", arg: 1, scope: !3623, file: !135, line: 761, type: !2431)
!3626 = !DILocation(line: 763, column: 11, scope: !3623)
!3627 = !DILocation(line: 763, column: 10, scope: !3623)
!3628 = !DILocation(line: 763, column: 26, scope: !3623)
!3629 = !DILocation(line: 763, column: 3, scope: !3623)
!3630 = distinct !DISubprogram(name: "gimple_seq_last", scope: !391, file: !391, line: 178, type: !3223, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3631 = !{!3632}
!3632 = !DILocalVariable(name: "s", arg: 1, scope: !3630, file: !391, line: 178, type: !3225)
!3633 = !DILocation(line: 0, scope: !3630)
!3634 = !DILocation(line: 180, column: 10, scope: !3630)
!3635 = !DILocation(line: 180, column: 17, scope: !3630)
!3636 = !DILocation(line: 180, column: 3, scope: !3630)
!3637 = distinct !DISubprogram(name: "gimple_phi_arg_location", scope: !3638, file: !3638, line: 475, type: !3639, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3641)
!3638 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!692, !1016, !1163}
!3641 = !{!3642, !3643}
!3642 = !DILocalVariable(name: "gs", arg: 1, scope: !3637, file: !3638, line: 475, type: !1016)
!3643 = !DILocalVariable(name: "i", arg: 2, scope: !3637, file: !3638, line: 475, type: !1163)
!3644 = !DILocation(line: 0, scope: !3637)
!3645 = !DILocation(line: 477, column: 30, scope: !3637)
!3646 = !DILocation(line: 477, column: 10, scope: !3637)
!3647 = !DILocation(line: 477, column: 34, scope: !3637)
!3648 = !DILocation(line: 477, column: 3, scope: !3637)
!3649 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !3638, file: !3638, line: 450, type: !3650, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!570, !1016, !1163}
!3652 = !{!3653, !3654, !3655}
!3653 = !DILocalVariable(name: "gs", arg: 1, scope: !3649, file: !3638, line: 450, type: !1016)
!3654 = !DILocalVariable(name: "index", arg: 2, scope: !3649, file: !3638, line: 450, type: !1163)
!3655 = !DILocalVariable(name: "pd", scope: !3649, file: !3638, line: 452, type: !3656)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!3657 = !DILocation(line: 0, scope: !3649)
!3658 = !DILocation(line: 452, column: 46, scope: !3649)
!3659 = !DILocation(line: 452, column: 26, scope: !3649)
!3660 = !DILocation(line: 453, column: 33, scope: !3649)
!3661 = !DILocation(line: 453, column: 10, scope: !3649)
!3662 = !DILocation(line: 453, column: 3, scope: !3649)
!3663 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !391, file: !391, line: 3100, type: !3664, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!3656, !1016, !7}
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "gs", arg: 1, scope: !3663, file: !391, line: 3100, type: !1016)
!3668 = !DILocalVariable(name: "index", arg: 2, scope: !3663, file: !391, line: 3100, type: !7)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocation(line: 3103, column: 3, scope: !3663)
!3671 = !DILocation(line: 3104, column: 12, scope: !3663)
!3672 = !DILocation(line: 3104, column: 3, scope: !3663)
!3673 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3638, file: !3638, line: 427, type: !3674, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3679)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!570, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1047, line: 30, baseType: !3677)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !151, line: 1893, baseType: !1058)
!3679 = !{!3680}
!3680 = !DILocalVariable(name: "use", arg: 1, scope: !3673, file: !3638, line: 427, type: !3676)
!3681 = !DILocation(line: 0, scope: !3673)
!3682 = !DILocation(line: 429, column: 17, scope: !3673)
!3683 = !DILocation(line: 429, column: 10, scope: !3673)
!3684 = !DILocation(line: 429, column: 3, scope: !3673)
!3685 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !3686, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!512, !1867}
!3688 = !{!3689}
!3689 = !DILocalVariable(name: "bb", arg: 1, scope: !3685, file: !135, line: 643, type: !1867)
!3690 = !DILocation(line: 0, scope: !3685)
!3691 = !DILocation(line: 645, column: 3, scope: !3685)
!3692 = !DILocation(line: 646, column: 10, scope: !3685)
!3693 = !DILocation(line: 646, column: 3, scope: !3685)
!3694 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !3695, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!441, !1867}
!3697 = !{!3698}
!3698 = !DILocalVariable(name: "bb", arg: 1, scope: !3694, file: !135, line: 626, type: !1867)
!3699 = !DILocation(line: 0, scope: !3694)
!3700 = !DILocation(line: 628, column: 10, scope: !3694)
!3701 = !DILocation(line: 628, column: 33, scope: !3694)
!3702 = !DILocation(line: 628, column: 3, scope: !3694)
!3703 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1855, file: !1855, line: 32, type: !3704, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!1853, !442}
!3706 = !{!3707}
!3707 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3703, file: !1855, line: 32, type: !442)
!3708 = !DILocation(line: 0, scope: !3703)
!3709 = !DILocation(line: 32, column: 1, scope: !3703)
!3710 = distinct !DISubprogram(name: "number_of_loops", scope: !378, file: !378, line: 459, type: !3711, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!7}
!3713 = !DILocation(line: 461, column: 8, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3710, file: !378, line: 461, column: 7)
!3715 = !DILocation(line: 461, column: 7, scope: !3710)
!3716 = !DILocation(line: 464, column: 10, scope: !3710)
!3717 = !DILocation(line: 464, column: 3, scope: !3710)
!3718 = !DILocation(line: 0, scope: !3710)
!3719 = !DILocation(line: 465, column: 1, scope: !3710)
!3720 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !378, file: !378, line: 85, type: !3721, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3725)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!442, !3723, !7, !2740}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!3725 = !{!3726, !3727, !3728}
!3726 = !DILocalVariable(name: "vec_", arg: 1, scope: !3720, file: !378, line: 85, type: !3723)
!3727 = !DILocalVariable(name: "ix_", arg: 2, scope: !3720, file: !378, line: 85, type: !7)
!3728 = !DILocalVariable(name: "ptr", arg: 3, scope: !3720, file: !378, line: 85, type: !2740)
!3729 = !DILocation(line: 0, scope: !3720)
!3730 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1855, file: !1855, line: 31, type: !3731, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3733, !3734, !442}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!3735 = !{!3736, !3737, !3738}
!3736 = !DILocalVariable(name: "vec_", arg: 1, scope: !3730, file: !1855, line: 31, type: !3734)
!3737 = !DILocalVariable(name: "obj_", arg: 2, scope: !3730, file: !1855, line: 31, type: !442)
!3738 = !DILocalVariable(name: "slot_", scope: !3730, file: !1855, line: 31, type: !3733)
!3739 = !DILocation(line: 0, scope: !3730)
!3740 = !DILocation(line: 31, column: 1, scope: !3730)
!3741 = distinct !DISubprogram(name: "loop_outer", scope: !378, file: !378, line: 434, type: !3742, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!538, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "loop", arg: 1, scope: !3741, file: !378, line: 434, type: !3744)
!3748 = !DILocalVariable(name: "n", scope: !3741, file: !378, line: 436, type: !7)
!3749 = !DILocation(line: 0, scope: !3741)
!3750 = !DILocation(line: 436, column: 16, scope: !3741)
!3751 = !DILocation(line: 438, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3741, file: !378, line: 438, column: 7)
!3753 = !DILocation(line: 438, column: 7, scope: !3741)
!3754 = !DILocation(line: 441, column: 10, scope: !3741)
!3755 = !DILocation(line: 441, column: 3, scope: !3741)
!3756 = !DILocation(line: 442, column: 1, scope: !3741)
!3757 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !378, file: !378, line: 85, type: !3758, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!7, !3723}
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "vec_", arg: 1, scope: !3757, file: !378, line: 85, type: !3723)
!3762 = !DILocation(line: 0, scope: !3757)
!3763 = !DILocation(line: 85, column: 1, scope: !3757)
!3764 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !378, file: !378, line: 85, type: !3765, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!565, !3723, !7}
!3767 = !{!3768, !3769}
!3768 = !DILocalVariable(name: "vec_", arg: 1, scope: !3764, file: !378, line: 85, type: !3723)
!3769 = !DILocalVariable(name: "ix_", arg: 2, scope: !3764, file: !378, line: 85, type: !7)
!3770 = !DILocation(line: 0, scope: !3764)
!3771 = !DILocation(line: 85, column: 1, scope: !3764)
!3772 = distinct !DISubprogram(name: "determine_bb_domination_status", scope: !3, file: !3, line: 702, type: !3773, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!434, !538, !980}
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3776 = !DILocalVariable(name: "loop", arg: 1, scope: !3772, file: !3, line: 702, type: !538)
!3777 = !DILocalVariable(name: "bb", arg: 2, scope: !3772, file: !3, line: 702, type: !980)
!3778 = !DILocalVariable(name: "bblocks", scope: !3772, file: !3, line: 704, type: !1866)
!3779 = !DILocalVariable(name: "nblocks", scope: !3772, file: !3, line: 705, type: !7)
!3780 = !DILocalVariable(name: "i", scope: !3772, file: !3, line: 705, type: !7)
!3781 = !DILocalVariable(name: "bb_reachable", scope: !3772, file: !3, line: 706, type: !441)
!3782 = !DILocalVariable(name: "ei", scope: !3772, file: !3, line: 707, type: !2431)
!3783 = !DILocalVariable(name: "e", scope: !3772, file: !3, line: 708, type: !512)
!3784 = !DILocation(line: 0, scope: !3772)
!3785 = !DILocation(line: 707, column: 3, scope: !3772)
!3786 = !DILocation(line: 708, column: 3, scope: !3772)
!3787 = !DILocation(line: 728, column: 19, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 728, column: 7)
!3789 = !DILocation(line: 728, column: 10, scope: !3788)
!3790 = !DILocation(line: 728, column: 7, scope: !3772)
!3791 = !DILocation(line: 734, column: 13, scope: !3772)
!3792 = !DILocation(line: 735, column: 24, scope: !3772)
!3793 = !DILocation(line: 735, column: 16, scope: !3772)
!3794 = !DILocation(line: 736, column: 39, scope: !3772)
!3795 = !DILocation(line: 737, column: 20, scope: !3772)
!3796 = !DILocation(line: 737, column: 31, scope: !3772)
!3797 = !DILocation(line: 736, column: 13, scope: !3772)
!3798 = !DILocation(line: 0, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 739, column: 5)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 738, column: 3)
!3801 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 738, column: 3)
!3802 = !DILocation(line: 0, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 739, column: 5)
!3804 = !DILocation(line: 738, column: 17, scope: !3800)
!3805 = !DILocation(line: 738, column: 8, scope: !3801)
!3806 = !DILocation(line: 0, scope: !3801)
!3807 = !DILocation(line: 706, column: 8, scope: !3772)
!3808 = !DILocation(line: 738, column: 3, scope: !3801)
!3809 = !DILocation(line: 739, column: 5, scope: !3799)
!3810 = !DILocation(line: 739, column: 5, scope: !3803)
!3811 = !DILocation(line: 741, column: 6, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 741, column: 6)
!3813 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 740, column: 7)
!3814 = !DILocation(line: 741, column: 9, scope: !3812)
!3815 = !DILocation(line: 741, column: 22, scope: !3812)
!3816 = !DILocation(line: 741, column: 13, scope: !3812)
!3817 = !DILocation(line: 741, column: 6, scope: !3813)
!3818 = !DILocation(line: 743, column: 6, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 742, column: 4)
!3820 = !DILocation(line: 744, column: 6, scope: !3819)
!3821 = !DILocation(line: 746, column: 13, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 746, column: 6)
!3823 = !DILocation(line: 746, column: 6, scope: !3813)
!3824 = distinct !{!3824, !3809, !3825}
!3825 = !DILocation(line: 748, column: 7, scope: !3799)
!3826 = !DILocation(line: 738, column: 29, scope: !3800)
!3827 = !DILocation(line: 738, column: 3, scope: !3800)
!3828 = distinct !{!3828, !3808, !3829}
!3829 = !DILocation(line: 748, column: 7, scope: !3801)
!3830 = !DILocation(line: 750, column: 3, scope: !3772)
!3831 = !DILocation(line: 751, column: 11, scope: !3772)
!3832 = !DILocation(line: 751, column: 3, scope: !3772)
!3833 = !DILocation(line: 752, column: 1, scope: !3772)
!3834 = distinct !DISubprogram(name: "thread_single_edge", scope: !3, file: !3, line: 633, type: !3835, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!980, !512}
!3837 = !{!3838, !3839, !3840, !3841}
!3838 = !DILocalVariable(name: "e", arg: 1, scope: !3834, file: !3, line: 633, type: !512)
!3839 = !DILocalVariable(name: "bb", scope: !3834, file: !3, line: 635, type: !980)
!3840 = !DILocalVariable(name: "eto", scope: !3834, file: !3, line: 636, type: !512)
!3841 = !DILocalVariable(name: "rd", scope: !3834, file: !3, line: 637, type: !1835)
!3842 = !DILocation(line: 0, scope: !3834)
!3843 = !DILocation(line: 635, column: 23, scope: !3834)
!3844 = !DILocation(line: 636, column: 24, scope: !3834)
!3845 = !DILocation(line: 637, column: 3, scope: !3834)
!3846 = !DILocation(line: 639, column: 10, scope: !3834)
!3847 = !DILocation(line: 641, column: 34, scope: !3834)
!3848 = !DILocation(line: 643, column: 7, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 643, column: 7)
!3850 = !DILocation(line: 643, column: 7, scope: !3834)
!3851 = !DILocation(line: 647, column: 52, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 644, column: 5)
!3853 = !DILocation(line: 647, column: 7, scope: !3852)
!3854 = !DILocation(line: 650, column: 12, scope: !3852)
!3855 = !DILocation(line: 650, column: 18, scope: !3852)
!3856 = !DILocation(line: 651, column: 18, scope: !3852)
!3857 = !DILocation(line: 653, column: 7, scope: !3852)
!3858 = !DILocation(line: 657, column: 40, scope: !3834)
!3859 = !DILocation(line: 657, column: 63, scope: !3834)
!3860 = !DILocation(line: 657, column: 3, scope: !3834)
!3861 = !DILocation(line: 659, column: 6, scope: !3834)
!3862 = !DILocation(line: 659, column: 20, scope: !3834)
!3863 = !DILocation(line: 661, column: 3, scope: !3834)
!3864 = !DILocation(line: 662, column: 3, scope: !3834)
!3865 = !DILocation(line: 664, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 664, column: 7)
!3867 = !DILocation(line: 664, column: 17, scope: !3866)
!3868 = !DILocation(line: 664, column: 21, scope: !3866)
!3869 = !DILocation(line: 664, column: 32, scope: !3866)
!3870 = !DILocation(line: 664, column: 7, scope: !3834)
!3871 = !DILocation(line: 666, column: 10, scope: !3866)
!3872 = !DILocation(line: 666, column: 15, scope: !3866)
!3873 = !DILocation(line: 666, column: 25, scope: !3866)
!3874 = !DILocation(line: 666, column: 31, scope: !3866)
!3875 = !DILocation(line: 666, column: 41, scope: !3866)
!3876 = !DILocation(line: 666, column: 52, scope: !3866)
!3877 = !DILocation(line: 665, column: 5, scope: !3866)
!3878 = !DILocation(line: 668, column: 28, scope: !3834)
!3879 = !DILocation(line: 668, column: 6, scope: !3834)
!3880 = !DILocation(line: 668, column: 17, scope: !3834)
!3881 = !DILocation(line: 668, column: 23, scope: !3834)
!3882 = !DILocation(line: 669, column: 29, scope: !3834)
!3883 = !DILocation(line: 669, column: 17, scope: !3834)
!3884 = !DILocation(line: 669, column: 27, scope: !3834)
!3885 = !DILocation(line: 670, column: 47, scope: !3834)
!3886 = !DILocation(line: 670, column: 3, scope: !3834)
!3887 = !DILocation(line: 670, column: 36, scope: !3834)
!3888 = !DILocation(line: 670, column: 42, scope: !3834)
!3889 = !DILocation(line: 671, column: 35, scope: !3834)
!3890 = !DILocation(line: 671, column: 3, scope: !3834)
!3891 = !DILocation(line: 672, column: 3, scope: !3834)
!3892 = !DILocation(line: 674, column: 13, scope: !3834)
!3893 = !DILocation(line: 674, column: 3, scope: !3834)
!3894 = !DILocation(line: 675, column: 1, scope: !3834)
!3895 = distinct !DISubprogram(name: "single_succ", scope: !135, file: !135, line: 663, type: !3896, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!980, !1867}
!3898 = !{!3899}
!3899 = !DILocalVariable(name: "bb", arg: 1, scope: !3895, file: !135, line: 663, type: !1867)
!3900 = !DILocation(line: 0, scope: !3895)
!3901 = !DILocation(line: 665, column: 10, scope: !3895)
!3902 = !DILocation(line: 665, column: 33, scope: !3895)
!3903 = !DILocation(line: 665, column: 3, scope: !3895)
!3904 = distinct !DISubprogram(name: "dbds_continue_enumeration_p", scope: !3, file: !3, line: 682, type: !3905, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!441, !1867, !853}
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "bb", arg: 1, scope: !3904, file: !3, line: 682, type: !1867)
!3909 = !DILocalVariable(name: "stop", arg: 2, scope: !3904, file: !3, line: 682, type: !853)
!3910 = !DILocation(line: 0, scope: !3904)
!3911 = !DILocation(line: 684, column: 17, scope: !3904)
!3912 = !DILocation(line: 684, column: 14, scope: !3904)
!3913 = !DILocation(line: 685, column: 4, scope: !3904)
!3914 = !DILocation(line: 684, column: 10, scope: !3904)
!3915 = !DILocation(line: 684, column: 3, scope: !3904)
!3916 = distinct !DISubprogram(name: "single_pred_p", scope: !135, file: !135, line: 634, type: !3695, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3917)
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "bb", arg: 1, scope: !3916, file: !135, line: 634, type: !1867)
!3919 = !DILocation(line: 0, scope: !3916)
!3920 = !DILocation(line: 636, column: 10, scope: !3916)
!3921 = !DILocation(line: 636, column: 33, scope: !3916)
!3922 = !DILocation(line: 636, column: 3, scope: !3916)
!3923 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1855, file: !1855, line: 31, type: !3924, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3928)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!442, !3926, !7, !3733}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!3928 = !{!3929, !3930, !3931}
!3929 = !DILocalVariable(name: "vec_", arg: 1, scope: !3923, file: !1855, line: 31, type: !3926)
!3930 = !DILocalVariable(name: "ix_", arg: 2, scope: !3923, file: !1855, line: 31, type: !7)
!3931 = !DILocalVariable(name: "ptr", arg: 3, scope: !3923, file: !1855, line: 31, type: !3733)
!3932 = !DILocation(line: 0, scope: !3923)
!3933 = !DILocation(line: 31, column: 1, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3923, file: !1855, line: 31, column: 1)
!3935 = !DILocation(line: 31, column: 1, scope: !3923)
!3936 = !DILocation(line: 31, column: 1, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !1855, line: 31, column: 1)
!3938 = !DILocation(line: 31, column: 1, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3934, file: !1855, line: 31, column: 1)
!3940 = !DILocation(line: 0, scope: !3934)
!3941 = distinct !DISubprogram(name: "get_loop", scope: !378, file: !378, line: 417, type: !3942, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!538, !7}
!3944 = !{!3945}
!3945 = !DILocalVariable(name: "num", arg: 1, scope: !3941, file: !378, line: 417, type: !7)
!3946 = !DILocation(line: 0, scope: !3941)
!3947 = !DILocation(line: 419, column: 10, scope: !3941)
!3948 = !DILocation(line: 419, column: 3, scope: !3941)
!3949 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1855, file: !1855, line: 32, type: !3950, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3953)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{null, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!3953 = !{!3954}
!3954 = !DILocalVariable(name: "vec_", arg: 1, scope: !3949, file: !1855, line: 32, type: !3952)
!3955 = !DILocation(line: 0, scope: !3949)
!3956 = !DILocation(line: 32, column: 1, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3949, file: !1855, line: 32, column: 1)
!3958 = !DILocation(line: 32, column: 1, scope: !3949)
!3959 = distinct !DISubprogram(name: "VEC_edge_heap_reserve", scope: !135, file: !135, line: 152, type: !3960, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!442, !2988, !442}
!3962 = !{!3963, !3964, !3965}
!3963 = !DILocalVariable(name: "vec_", arg: 1, scope: !3959, file: !135, line: 152, type: !2988)
!3964 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3959, file: !135, line: 152, type: !442)
!3965 = !DILocalVariable(name: "extend", scope: !3959, file: !135, line: 152, type: !442)
!3966 = !DILocation(line: 0, scope: !3959)
!3967 = !DILocation(line: 152, column: 1, scope: !3959)
!3968 = !DILocation(line: 152, column: 1, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3959, file: !135, line: 152, column: 1)
!3970 = distinct !DISubprogram(name: "VEC_edge_base_quick_push", scope: !135, file: !135, line: 150, type: !3971, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3974)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!3032, !3973, !512}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!3974 = !{!3975, !3976, !3977}
!3975 = !DILocalVariable(name: "vec_", arg: 1, scope: !3970, file: !135, line: 150, type: !3973)
!3976 = !DILocalVariable(name: "obj_", arg: 2, scope: !3970, file: !135, line: 150, type: !512)
!3977 = !DILocalVariable(name: "slot_", scope: !3970, file: !135, line: 150, type: !3032)
!3978 = !DILocation(line: 0, scope: !3970)
!3979 = !DILocation(line: 150, column: 1, scope: !3970)
!3980 = distinct !DISubprogram(name: "VEC_edge_base_space", scope: !135, file: !135, line: 150, type: !3981, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!442, !3973, !442}
!3983 = !{!3984, !3985}
!3984 = !DILocalVariable(name: "vec_", arg: 1, scope: !3980, file: !135, line: 150, type: !3973)
!3985 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3980, file: !135, line: 150, type: !442)
!3986 = !DILocation(line: 0, scope: !3980)
!3987 = !DILocation(line: 150, column: 1, scope: !3980)
