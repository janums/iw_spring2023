; ModuleID = 'lto-streamer.bc'
source_filename = "lto-streamer.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.lto_stats_d = type { i64, i64, i64, i64, i64, [10 x i64], i64, [188 x i64], i64, i64, i64, i64 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitpack_d = type { i64, i64, %struct.VEC_bitpack_word_t_heap* }
%struct.VEC_bitpack_word_t_heap = type { %struct.VEC_bitpack_word_t_base }
%struct.VEC_bitpack_word_t_base = type { i32, i32, [1 x i64] }
%struct.lto_streamer_cache_d = type { %struct.htab*, i32, %struct.VEC_tree_gc*, %struct.VEC_unsigned_heap* }
%struct.VEC_unsigned_heap = type { %struct.VEC_unsigned_base }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.tree_int_map = type { %struct.tree_map_base, i32 }
%struct.tree_map_base = type { %union.tree_node* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.pointer_set_t = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_code_name = external dso_local local_unnamed_addr constant [0 x i8*], align 8
@gimple_code_name = external dso_local local_unnamed_addr constant [0 x i8*], align 8
@.str = private unnamed_addr constant [9 x i8] c"LTO_null\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LTO_bb0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LTO_bb1\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LTO_eh_region\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"LTO_function\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"LTO_eh_table\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"LTO_ert_cleanup\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"LTO_ert_try\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"LTO_ert_allowed_exceptions\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"LTO_ert_must_not_throw\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"LTO_tree_pickle_reference\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"LTO_field_decl_ref\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"LTO_function_decl_ref\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"LTO_label_decl_ref\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"LTO_namespace_decl_ref\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"LTO_result_decl_ref\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"LTO_ssa_name_ref\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"LTO_type_decl_ref\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"LTO_type_ref\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"LTO_global_decl_ref\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"LTO_UNKNOWN\00", align 1
@lto_obstack_initialized = internal unnamed_addr global i1 false, align 1, !dbg !0
@lto_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !1581
@.str.21 = private unnamed_addr constant [15 x i8] c"lto-streamer.c\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c".gnu.lto_\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c".statics\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c".decls\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c".cgraph\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c".jmpfuncs\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c".pureconst\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c".reference\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c".wpa_fixup\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c".opts\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"bytecode stream: unexpected LTO section %s\00", align 1
@flag_lto = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"LTO\00", align 1
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"WPA\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"LTRANS\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [15 x i8] c"%s statistics\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"[%s] # of input files: %lu\0A\00", align 1
@lto_stats = common dso_local local_unnamed_addr global %struct.lto_stats_d zeroinitializer, align 8, !dbg !1559
@.str.39 = private unnamed_addr constant [35 x i8] c"[%s] # of input cgraph nodes: %lu\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"[%s] # of function bodies: %lu\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"[%s] # of '%s' objects read: %lu\0A\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"[%s] Compression: %lu output bytes, %lu compressed bytes\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c" (ratio: %f)\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"[%s] # of output files: %lu\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"[%s] # of output cgraph nodes: %lu\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"[%s] # callgraph partitions: %lu\0A\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"[%s] Compression: %lu input bytes, %lu uncompressed bytes\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"[%s] Size of mmap'd section %s: %lu bytes\0A\00", align 1
@lto_section_name = external dso_local local_unnamed_addr global [0 x i8*], align 8
@flag_generate_lto = external dso_local local_unnamed_addr global i32, align 4
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@.str.51 = private unnamed_addr constant [79 x i8] c"bytecode stream generated with LTO version %d.%d instead of the expected %d.%d\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1
@global_trees = external dso_local global [131 x %union.tree_node*], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@integer_types = external dso_local global [11 x %union.tree_node*], align 16
@sizetype_tab = external dso_local global [4 x %union.tree_node*], align 16
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1588 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1602, metadata !DIExpression()), !dbg !1603
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1604
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1605
  ret i32 %call, !dbg !1606
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1607 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1611
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1612
  ret i32 %call, !dbg !1613
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1614 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1669, metadata !DIExpression()), !dbg !1670
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1671
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1671
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1671
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1671
  %cmp = icmp uge i8* %0, %1, !dbg !1671
  %conv1 = zext i1 %cmp to i64, !dbg !1671
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1671
  %tobool = icmp eq i64 %expval, 0, !dbg !1671
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1671

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1671
  br label %cond.end, !dbg !1671

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1671
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1671
  %2 = load i8, i8* %0, align 1, !dbg !1671
  %conv3 = zext i8 %2 to i32, !dbg !1671
  br label %cond.end, !dbg !1671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1671
  ret i32 %cond, !dbg !1672
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1673 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1675, metadata !DIExpression()), !dbg !1676
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1677
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1677
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1677
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1677
  %cmp = icmp uge i8* %0, %1, !dbg !1677
  %conv1 = zext i1 %cmp to i64, !dbg !1677
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1677
  %tobool = icmp eq i64 %expval, 0, !dbg !1677
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1677

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1677
  br label %cond.end, !dbg !1677

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1677
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1677
  %2 = load i8, i8* %0, align 1, !dbg !1677
  %conv3 = zext i8 %2 to i32, !dbg !1677
  br label %cond.end, !dbg !1677

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1677
  ret i32 %cond, !dbg !1678
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1679 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1680
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1680
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1680
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1680
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1680
  %cmp = icmp uge i8* %1, %2, !dbg !1680
  %conv1 = zext i1 %cmp to i64, !dbg !1680
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1680
  %tobool = icmp eq i64 %expval, 0, !dbg !1680
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1680

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1680
  br label %cond.end, !dbg !1680

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1680
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1680
  %3 = load i8, i8* %1, align 1, !dbg !1680
  %conv3 = zext i8 %3 to i32, !dbg !1680
  br label %cond.end, !dbg !1680

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1680
  ret i32 %cond, !dbg !1681
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1686, metadata !DIExpression()), !dbg !1687
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1688
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1689
  ret i32 %call, !dbg !1690
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1691 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1696, metadata !DIExpression()), !dbg !1697
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1698
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1698
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1698
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1698
  %cmp = icmp uge i8* %0, %1, !dbg !1698
  %conv1 = zext i1 %cmp to i64, !dbg !1698
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1698
  %tobool = icmp eq i64 %expval, 0, !dbg !1698
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1698

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1698
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1698
  br label %cond.end, !dbg !1698

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1698
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1698
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1698
  store i8 %conv2, i8* %0, align 1, !dbg !1698
  %conv6 = and i32 %__c, 255, !dbg !1698
  br label %cond.end, !dbg !1698

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1698
  ret i32 %cond, !dbg !1699
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1700 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1702, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1703, metadata !DIExpression()), !dbg !1704
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1705
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1705
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1705
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1705
  %cmp = icmp uge i8* %0, %1, !dbg !1705
  %conv1 = zext i1 %cmp to i64, !dbg !1705
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1705
  %tobool = icmp eq i64 %expval, 0, !dbg !1705
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1705

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1705
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1705
  br label %cond.end, !dbg !1705

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1705
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1705
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1705
  store i8 %conv2, i8* %0, align 1, !dbg !1705
  %conv6 = and i32 %__c, 255, !dbg !1705
  br label %cond.end, !dbg !1705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1705
  ret i32 %cond, !dbg !1706
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1707 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1709, metadata !DIExpression()), !dbg !1710
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1711
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1711
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1711
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1711
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1711
  %cmp = icmp uge i8* %1, %2, !dbg !1711
  %conv1 = zext i1 %cmp to i64, !dbg !1711
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1711
  %tobool = icmp eq i64 %expval, 0, !dbg !1711
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1711

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1711
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1711
  br label %cond.end, !dbg !1711

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1711
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1711
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1711
  store i8 %conv4, i8* %1, align 1, !dbg !1711
  %conv6 = and i32 %__c, 255, !dbg !1711
  br label %cond.end, !dbg !1711

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1711
  ret i32 %cond, !dbg !1712
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1719, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1720, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1721, metadata !DIExpression()), !dbg !1722
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1723
  ret i64 %call, !dbg !1724
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1725 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1727, metadata !DIExpression()), !dbg !1728
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1729
  %0 = load i32, i32* %_flags, align 8, !dbg !1729
  %and = lshr i32 %0, 4, !dbg !1729
  %and.lobit = and i32 %and, 1, !dbg !1729
  ret i32 %and.lobit, !dbg !1730
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1731 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1733, metadata !DIExpression()), !dbg !1734
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1735
  %0 = load i32, i32* %_flags, align 8, !dbg !1735
  %and = lshr i32 %0, 5, !dbg !1735
  %and.lobit = and i32 %and, 1, !dbg !1735
  ret i32 %and.lobit, !dbg !1736
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1737 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1740, metadata !DIExpression()), !dbg !1741
  %__c.off = add i32 %__c, 128, !dbg !1742
  %0 = icmp ult i32 %__c.off, 384, !dbg !1742
  br i1 %0, label %cond.true, label %cond.end, !dbg !1742

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1743
  %1 = load i32*, i32** %call, align 8, !dbg !1744
  %idxprom = sext i32 %__c to i64, !dbg !1745
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1745
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1745
  br label %cond.end, !dbg !1746

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1746
  ret i32 %cond, !dbg !1747
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1748 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1750, metadata !DIExpression()), !dbg !1751
  %__c.off = add i32 %__c, 128, !dbg !1752
  %0 = icmp ult i32 %__c.off, 384, !dbg !1752
  br i1 %0, label %cond.true, label %cond.end, !dbg !1752

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1753
  %1 = load i32*, i32** %call, align 8, !dbg !1754
  %idxprom = sext i32 %__c to i64, !dbg !1755
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1755
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1755
  br label %cond.end, !dbg !1756

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1756
  ret i32 %cond, !dbg !1757
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1758 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1763, metadata !DIExpression()), !dbg !1764
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1765
  %conv = trunc i64 %call to i32, !dbg !1766
  ret i32 %conv, !dbg !1767
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1768 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1772, metadata !DIExpression()), !dbg !1773
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1774
  ret i64 %call, !dbg !1775
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1776 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1781, metadata !DIExpression()), !dbg !1782
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1783
  ret i64 %call, !dbg !1784
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1785 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1791, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1792, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1793, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1794, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1795, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1796, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1797, metadata !DIExpression()), !dbg !1801
  br label %while.cond, !dbg !1802

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1803
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1796, metadata !DIExpression()), !dbg !1801
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1804
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1802

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1805
  %div = lshr i64 %add, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %div, metadata !1798, metadata !DIExpression()), !dbg !1801
  %mul = mul i64 %div, %__size, !dbg !1808
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1809
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1799, metadata !DIExpression()), !dbg !1801
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %call, metadata !1800, metadata !DIExpression()), !dbg !1801
  %cmp1 = icmp slt i32 %call, 0, !dbg !1811
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1813

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1814
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1816

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1796, metadata !DIExpression()), !dbg !1801
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1801
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1797, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1796, metadata !DIExpression()), !dbg !1801
  br label %while.cond, !dbg !1802, !llvm.loop !1818

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1801
  ret i8* %retval.0, !dbg !1820
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1827, metadata !DIExpression()), !dbg !1828
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1829
  ret double %call, !dbg !1830
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1831 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1840, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1841, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %base, metadata !1842, metadata !DIExpression()), !dbg !1843
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1844
  ret i64 %call, !dbg !1845
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1846 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1853, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %base, metadata !1854, metadata !DIExpression()), !dbg !1855
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1856
  ret i64 %call, !dbg !1857
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1858 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1869, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %base, metadata !1871, metadata !DIExpression()), !dbg !1872
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1873
  ret i64 %call, !dbg !1874
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %base, metadata !1881, metadata !DIExpression()), !dbg !1882
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1883
  ret i64 %call, !dbg !1884
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1927, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1928, metadata !DIExpression()), !dbg !1929
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1930
  ret i32 %call, !dbg !1931
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1934, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1935, metadata !DIExpression()), !dbg !1936
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1937
  ret i32 %call, !dbg !1938
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1939 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1943, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1944, metadata !DIExpression()), !dbg !1945
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1946
  ret i32 %call, !dbg !1947
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1948 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1952, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1953, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1955, metadata !DIExpression()), !dbg !1956
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1957
  ret i32 %call, !dbg !1958
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1959 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1963, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1964, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1965, metadata !DIExpression()), !dbg !1966
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1965, metadata !DIExpression(DW_OP_deref)), !dbg !1966
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1967
  ret i32 %call, !dbg !1968
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1969 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1973, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1976, metadata !DIExpression()), !dbg !1977
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1976, metadata !DIExpression(DW_OP_deref)), !dbg !1977
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1978
  ret i32 %call, !dbg !1979
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1980 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2005, metadata !DIExpression()), !dbg !2006
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2007
  ret i32 %call, !dbg !2008
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2009 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2012, metadata !DIExpression()), !dbg !2013
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2014
  ret i32 %call, !dbg !2015
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2021, metadata !DIExpression()), !dbg !2022
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2023
  ret i32 %call, !dbg !2024
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2025 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2029, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2032, metadata !DIExpression()), !dbg !2033
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2034
  ret i32 %call, !dbg !2035
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @lto_tag_name(i32 %tag) local_unnamed_addr #5 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2040, metadata !DIExpression()), !dbg !2041
  %call = tail call fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 %tag) #7, !dbg !2042
  %tobool = icmp eq i8 %call, 0, !dbg !2042
  br i1 %tobool, label %if.end, label %if.then, !dbg !2044

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @lto_tag_to_tree_code(i32 %tag) #7, !dbg !2045
  %idxprom = zext i32 %call1 to i64, !dbg !2047
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %idxprom, !dbg !2047
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !2047
  br label %return, !dbg !2048

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 %tag) #7, !dbg !2049
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2049
  br i1 %tobool3, label %if.end8, label %if.then4, !dbg !2051

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @lto_tag_to_gimple_code(i32 %tag) #7, !dbg !2052
  %idxprom6 = zext i32 %call5 to i64, !dbg !2054
  %arrayidx7 = getelementptr inbounds [0 x i8*], [0 x i8*]* @gimple_code_name, i64 0, i64 %idxprom6, !dbg !2054
  %1 = load i8*, i8** %arrayidx7, align 8, !dbg !2054
  br label %return, !dbg !2055

if.end8:                                          ; preds = %if.end
  switch i32 %tag, label %sw.default [
    i32 0, label %return
    i32 224, label %sw.bb9
    i32 225, label %sw.bb10
    i32 226, label %sw.bb11
    i32 228, label %sw.bb12
    i32 229, label %sw.bb13
    i32 230, label %sw.bb14
    i32 231, label %sw.bb15
    i32 232, label %sw.bb16
    i32 233, label %sw.bb17
    i32 236, label %sw.bb18
    i32 238, label %sw.bb19
    i32 239, label %sw.bb20
    i32 240, label %sw.bb21
    i32 241, label %sw.bb22
    i32 242, label %sw.bb23
    i32 243, label %sw.bb24
    i32 244, label %sw.bb25
    i32 245, label %sw.bb26
    i32 248, label %sw.bb27
  ], !dbg !2056

sw.bb9:                                           ; preds = %if.end8
  br label %return, !dbg !2057

sw.bb10:                                          ; preds = %if.end8
  br label %return, !dbg !2059

sw.bb11:                                          ; preds = %if.end8
  br label %return, !dbg !2060

sw.bb12:                                          ; preds = %if.end8
  br label %return, !dbg !2061

sw.bb13:                                          ; preds = %if.end8
  br label %return, !dbg !2062

sw.bb14:                                          ; preds = %if.end8
  br label %return, !dbg !2063

sw.bb15:                                          ; preds = %if.end8
  br label %return, !dbg !2064

sw.bb16:                                          ; preds = %if.end8
  br label %return, !dbg !2065

sw.bb17:                                          ; preds = %if.end8
  br label %return, !dbg !2066

sw.bb18:                                          ; preds = %if.end8
  br label %return, !dbg !2067

sw.bb19:                                          ; preds = %if.end8
  br label %return, !dbg !2068

sw.bb20:                                          ; preds = %if.end8
  br label %return, !dbg !2069

sw.bb21:                                          ; preds = %if.end8
  br label %return, !dbg !2070

sw.bb22:                                          ; preds = %if.end8
  br label %return, !dbg !2071

sw.bb23:                                          ; preds = %if.end8
  br label %return, !dbg !2072

sw.bb24:                                          ; preds = %if.end8
  br label %return, !dbg !2073

sw.bb25:                                          ; preds = %if.end8
  br label %return, !dbg !2074

sw.bb26:                                          ; preds = %if.end8
  br label %return, !dbg !2075

sw.bb27:                                          ; preds = %if.end8
  br label %return, !dbg !2076

sw.default:                                       ; preds = %if.end8
  br label %return, !dbg !2077

return:                                           ; preds = %if.end8, %sw.default, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %if.then4, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ %1, %if.then4 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), %sw.bb27 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %sw.bb26 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), %sw.bb25 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %sw.bb21 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), %sw.bb20 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %if.end8 ], !dbg !2041
  ret i8* %retval.0, !dbg !2078
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 %tag) unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2083, metadata !DIExpression()), !dbg !2084
  %tag.off = add i32 %tag, -1, !dbg !2085
  %0 = icmp ult i32 %tag.off, 188, !dbg !2085
  %conv = zext i1 %0 to i8, !dbg !2086
  ret i8 %conv, !dbg !2087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lto_tag_to_tree_code(i32 %tag) unnamed_addr #0 !dbg !2088 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2092, metadata !DIExpression()), !dbg !2093
  %call = tail call fastcc zeroext i8 @lto_tag_is_tree_code_p(i32 %tag) #7, !dbg !2094
  %tobool = icmp eq i8 %call, 0, !dbg !2094
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2094

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 926, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2094
  br label %cond.end, !dbg !2094

cond.end:                                         ; preds = %entry, %cond.true
  %sub = add i32 %tag, -1, !dbg !2095
  ret i32 %sub, !dbg !2096
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 %tag) unnamed_addr #0 !dbg !2097 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2099, metadata !DIExpression()), !dbg !2100
  %tag.off = add i32 %tag, -189, !dbg !2101
  %0 = icmp ult i32 %tag.off, 35, !dbg !2101
  %conv = zext i1 %0 to i8, !dbg !2102
  ret i8 %conv, !dbg !2103
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lto_tag_to_gimple_code(i32 %tag) unnamed_addr #0 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2108, metadata !DIExpression()), !dbg !2109
  %call = tail call fastcc zeroext i8 @lto_tag_is_gimple_code_p(i32 %tag) #7, !dbg !2110
  %tobool = icmp eq i8 %call, 0, !dbg !2110
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2110

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i32 907, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2110
  br label %cond.end, !dbg !2110

cond.end:                                         ; preds = %entry, %cond.true
  %sub1 = add i32 %tag, -189, !dbg !2111
  ret i32 %sub1, !dbg !2112
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @lto_bitmap_alloc() local_unnamed_addr #5 !dbg !2113 {
entry:
  %.b = load i1, i1* @lto_obstack_initialized, align 1, !dbg !2116
  br i1 %.b, label %if.end, label %if.then, !dbg !2118

if.then:                                          ; preds = %entry
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* nonnull @lto_obstack) #6, !dbg !2119
  store i1 true, i1* @lto_obstack_initialized, align 1, !dbg !2121
  br label %if.end, !dbg !2122

if.end:                                           ; preds = %entry, %if.then
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* nonnull @lto_obstack) #6, !dbg !2123
  ret %struct.bitmap_head_def* %call, !dbg !2124
}

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lto_bitmap_free(%struct.bitmap_head_def* %b) local_unnamed_addr #5 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2129, metadata !DIExpression()), !dbg !2130
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %b) #6, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2129, metadata !DIExpression()), !dbg !2130
  ret void, !dbg !2132
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @lto_get_section_name(i32 %section_type, i8* %name) local_unnamed_addr #5 !dbg !2133 {
entry:
  call void @llvm.dbg.value(metadata i32 %section_type, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %name, metadata !2138, metadata !DIExpression()), !dbg !2139
  switch i32 %section_type, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 7, label %sw.bb5
    i32 0, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
    i32 6, label %sw.bb15
    i32 8, label %sw.bb17
    i32 9, label %sw.bb19
  ], !dbg !2140

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i8* %name, null, !dbg !2141
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2141

cond.true:                                        ; preds = %sw.bb
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2141
  br label %cond.end, !dbg !2141

cond.end:                                         ; preds = %sw.bb, %cond.true
  %0 = load i8, i8* %name, align 1, !dbg !2143
  %cmp1 = icmp eq i8 %0, 42, !dbg !2145
  %incdec.ptr = getelementptr inbounds i8, i8* %name, i64 1, !dbg !2146
  %spec.select = select i1 %cmp1, i8* %incdec.ptr, i8* %name, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !2138, metadata !DIExpression()), !dbg !2139
  %call = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* %spec.select, i8* null) #6, !dbg !2148
  br label %return, !dbg !2149

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* null) #6, !dbg !2150
  br label %return, !dbg !2151

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* null) #6, !dbg !2152
  br label %return, !dbg !2153

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* null) #6, !dbg !2154
  br label %return, !dbg !2155

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* null) #6, !dbg !2156
  br label %return, !dbg !2157

sw.bb11:                                          ; preds = %entry
  %call12 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8* null) #6, !dbg !2158
  br label %return, !dbg !2159

sw.bb13:                                          ; preds = %entry
  %call14 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* null) #6, !dbg !2160
  br label %return, !dbg !2161

sw.bb15:                                          ; preds = %entry
  %call16 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* null) #6, !dbg !2162
  br label %return, !dbg !2163

sw.bb17:                                          ; preds = %entry
  %call18 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* null) #6, !dbg !2164
  br label %return, !dbg !2165

sw.bb19:                                          ; preds = %entry
  %call20 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* null) #6, !dbg !2166
  br label %return, !dbg !2167

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), i8* %name) #6, !dbg !2168
  br label %return, !dbg !2169

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %cond.end
  %retval.0 = phi i8* [ null, %sw.default ], [ %call20, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call, %cond.end ], !dbg !2139
  ret i8* %retval.0, !dbg !2170
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #2

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @print_lto_report() local_unnamed_addr #5 !dbg !2171 {
entry:
  %0 = load i32, i32* @flag_lto, align 4, !dbg !2190
  %tobool = icmp eq i32 %0, 0, !dbg !2191
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !2191

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* @flag_wpa, align 4, !dbg !2192
  %tobool1 = icmp eq i32 %1, 0, !dbg !2193
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), !dbg !2193
  br label %cond.end, !dbg !2191

cond.end:                                         ; preds = %entry, %cond.false
  %cond2 = phi i8* [ %cond, %cond.false ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), %entry ], !dbg !2191
  call void @llvm.dbg.value(metadata i8* %cond2, metadata !2175, metadata !DIExpression()), !dbg !2194
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2195
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %cond2) #6, !dbg !2196
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2197
  %4 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 2), align 8, !dbg !2198
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i8* %cond2, i64 %4) #6, !dbg !2199
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2200
  %6 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 0), align 8, !dbg !2201
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0), i8* %cond2, i64 %6) #6, !dbg !2202
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2203
  %8 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 6), align 8, !dbg !2204
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i8* %cond2, i64 %8) #6, !dbg !2205
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2206
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* %cond2) #6, !dbg !2207
  tail call void @print_gimple_types_stats() #6, !dbg !2208
  call void @llvm.dbg.value(metadata i32 0, metadata !2176, metadata !DIExpression()), !dbg !2194
  br label %for.cond, !dbg !2209

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ 0, %cond.end ], !dbg !2211
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2176, metadata !DIExpression()), !dbg !2194
  %exitcond3 = icmp eq i64 %indvars.iv1, 188, !dbg !2212
  br i1 %exitcond3, label %for.end, label %for.body, !dbg !2214

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 7, i64 %indvars.iv1, !dbg !2215
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2215
  %tobool7 = icmp eq i64 %10, 0, !dbg !2215
  br i1 %tobool7, label %for.inc, label %if.then, !dbg !2217

if.then:                                          ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2218
  %arrayidx9 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %indvars.iv1, !dbg !2219
  %12 = load i8*, i8** %arrayidx9, align 8, !dbg !2219
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i8* %cond2, i8* %12, i64 %10) #6, !dbg !2220
  br label %for.inc, !dbg !2220

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i32 undef, metadata !2176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2194
  br label %for.cond, !dbg !2222, !llvm.loop !2223

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* @flag_lto, align 4, !dbg !2225
  %tobool13 = icmp eq i32 %13, 0, !dbg !2225
  br i1 %tobool13, label %if.end23, label %if.then14, !dbg !2226

if.then14:                                        ; preds = %for.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2227
  %15 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 8), align 8, !dbg !2228
  %16 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 9), align 8, !dbg !2229
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.43, i64 0, i64 0), i8* %cond2, i64 %15, i64 %16) #6, !dbg !2230
  %17 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 8), align 8, !dbg !2231
  %cmp16 = icmp eq i64 %17, 0, !dbg !2232
  br i1 %cmp16, label %if.end21, label %if.then17, !dbg !2233

if.then17:                                        ; preds = %if.then14
  %18 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 9), align 8, !dbg !2234
  %conv = uitofp i64 %18 to float, !dbg !2235
  call void @llvm.dbg.value(metadata float %conv, metadata !2177, metadata !DIExpression()), !dbg !2236
  %conv18 = uitofp i64 %17 to float, !dbg !2237
  call void @llvm.dbg.value(metadata float %conv18, metadata !2183, metadata !DIExpression()), !dbg !2236
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2238
  %div = fdiv float %conv, %conv18, !dbg !2239
  %conv19 = fpext float %div to double, !dbg !2240
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), double %conv19) #6, !dbg !2241
  br label %if.end21, !dbg !2242

if.end21:                                         ; preds = %if.then14, %if.then17
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2243
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2244
  br label %if.end23, !dbg !2245

if.end23:                                         ; preds = %for.end, %if.end21
  %21 = load i32, i32* @flag_wpa, align 4, !dbg !2246
  %tobool24 = icmp eq i32 %21, 0, !dbg !2246
  br i1 %tobool24, label %if.end42, label %if.then25, !dbg !2247

if.then25:                                        ; preds = %if.end23
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2248
  %23 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 3), align 8, !dbg !2249
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i8* %cond2, i64 %23) #6, !dbg !2250
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2251
  %25 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 1), align 8, !dbg !2252
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i8* %cond2, i64 %25) #6, !dbg !2253
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2254
  %27 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 4), align 8, !dbg !2255
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i8* %cond2, i64 %27) #6, !dbg !2256
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2257
  %29 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 10), align 8, !dbg !2258
  %30 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 11), align 8, !dbg !2259
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.49, i64 0, i64 0), i8* %cond2, i64 %29, i64 %30) #6, !dbg !2260
  %31 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 10), align 8, !dbg !2261
  %cmp30 = icmp eq i64 %31, 0, !dbg !2262
  br i1 %cmp30, label %if.end40, label %if.then32, !dbg !2263

if.then32:                                        ; preds = %if.then25
  %32 = load i64, i64* getelementptr inbounds (%struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 11), align 8, !dbg !2264
  %conv34 = uitofp i64 %32 to float, !dbg !2265
  call void @llvm.dbg.value(metadata float %conv34, metadata !2184, metadata !DIExpression()), !dbg !2266
  %conv36 = uitofp i64 %31 to float, !dbg !2267
  call void @llvm.dbg.value(metadata float %conv36, metadata !2189, metadata !DIExpression()), !dbg !2266
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2268
  %div37 = fdiv float %conv34, %conv36, !dbg !2269
  %conv38 = fpext float %div37 to double, !dbg !2270
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), double %conv38) #6, !dbg !2271
  br label %if.end40, !dbg !2272

if.end40:                                         ; preds = %if.then25, %if.then32
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2273
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2274
  br label %if.end42, !dbg !2275

if.end42:                                         ; preds = %if.end23, %if.end40
  call void @llvm.dbg.value(metadata i32 0, metadata !2176, metadata !DIExpression()), !dbg !2194
  br label %for.cond43, !dbg !2276

for.cond43:                                       ; preds = %for.body46, %if.end42
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %if.end42 ], !dbg !2278
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2176, metadata !DIExpression()), !dbg !2194
  %exitcond = icmp eq i64 %indvars.iv, 10, !dbg !2279
  br i1 %exitcond, label %for.end54, label %for.body46, !dbg !2281

for.body46:                                       ; preds = %for.cond43
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2282
  %arrayidx48 = getelementptr inbounds [0 x i8*], [0 x i8*]* @lto_section_name, i64 0, i64 %indvars.iv, !dbg !2283
  %36 = load i8*, i8** %arrayidx48, align 8, !dbg !2283
  %arrayidx50 = getelementptr inbounds %struct.lto_stats_d, %struct.lto_stats_d* @lto_stats, i64 0, i32 5, i64 %indvars.iv, !dbg !2284
  %37 = load i64, i64* %arrayidx50, align 8, !dbg !2284
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i8* %cond2, i8* %36, i64 %37) #6, !dbg !2285
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2286
  call void @llvm.dbg.value(metadata i32 undef, metadata !2176, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2194
  br label %for.cond43, !dbg !2287, !llvm.loop !2288

for.end54:                                        ; preds = %for.cond43
  ret void, !dbg !2290
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_types_stats() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.bitpack_d* @bitpack_create() local_unnamed_addr #5 !dbg !2291 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 24) #6, !dbg !2294
  %0 = bitcast i8* %call to %struct.bitpack_d*, !dbg !2294
  ret %struct.bitpack_d* %0, !dbg !2295
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bitpack_delete(%struct.bitpack_d* %bp) local_unnamed_addr #5 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %bp, metadata !2300, metadata !DIExpression()), !dbg !2301
  %values = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 2, !dbg !2302
  tail call fastcc void @VEC_bitpack_word_t_heap_free(%struct.VEC_bitpack_word_t_heap** nonnull %values) #7, !dbg !2302
  %0 = bitcast %struct.bitpack_d* %bp to i8*, !dbg !2303
  tail call void @free(i8* %0) #6, !dbg !2304
  ret void, !dbg !2305
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_bitpack_word_t_heap_free(%struct.VEC_bitpack_word_t_heap** %vec_) unnamed_addr #0 !dbg !2306 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_heap** %vec_, metadata !2311, metadata !DIExpression()), !dbg !2312
  %0 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %vec_, align 8, !dbg !2313
  %tobool = icmp eq %struct.VEC_bitpack_word_t_heap* %0, null, !dbg !2313
  br i1 %tobool, label %if.end, label %if.then, !dbg !2315

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_bitpack_word_t_heap* %0 to i8*, !dbg !2315
  tail call void @free(i8* nonnull %1) #6, !dbg !2313
  br label %if.end, !dbg !2313

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_bitpack_word_t_heap* null, %struct.VEC_bitpack_word_t_heap** %vec_, align 8, !dbg !2315
  ret void, !dbg !2315
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bp_pack_value(%struct.bitpack_d* %bp, i64 %val, i32 %nbits) local_unnamed_addr #5 !dbg !2316 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %bp, metadata !2320, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %val, metadata !2321, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %nbits, metadata !2322, metadata !DIExpression()), !dbg !2325
  %nbits.off = add i32 %nbits, -1, !dbg !2326
  %0 = icmp ult i32 %nbits.off, 64, !dbg !2326
  br i1 %0, label %cond.end, label %cond.true, !dbg !2326

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2326
  br label %cond.end, !dbg !2326

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @bp_get_next_word(%struct.bitpack_d* %bp, i32 %nbits) #7, !dbg !2327
  call void @llvm.dbg.value(metadata i32 %call, metadata !2323, metadata !DIExpression()), !dbg !2325
  %values = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 2, !dbg !2328
  %1 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %values, align 8, !dbg !2328
  %tobool = icmp eq %struct.VEC_bitpack_word_t_heap* %1, null, !dbg !2328
  br i1 %tobool, label %cond.end5, label %cond.true2, !dbg !2328

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %1, i64 0, i32 0, !dbg !2328
  br label %cond.end5, !dbg !2328

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_bitpack_word_t_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2328
  %call7 = tail call fastcc i32 @VEC_bitpack_word_t_base_length(%struct.VEC_bitpack_word_t_base* %cond6) #7, !dbg !2328
  %cmp8 = icmp ult i32 %call, %call7, !dbg !2330
  br i1 %cmp8, label %if.end, label %if.then, !dbg !2331

if.then:                                          ; preds = %cond.end5
  %2 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %values, align 8, !dbg !2332
  %tobool10 = icmp eq %struct.VEC_bitpack_word_t_heap* %2, null, !dbg !2332
  br i1 %tobool10, label %cond.end15, label %cond.true11, !dbg !2332

cond.true11:                                      ; preds = %if.then
  %base13 = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %2, i64 0, i32 0, !dbg !2332
  br label %cond.end15, !dbg !2332

cond.end15:                                       ; preds = %if.then, %cond.true11
  %cond16 = phi %struct.VEC_bitpack_word_t_base* [ %base13, %cond.true11 ], [ null, %if.then ], !dbg !2332
  %call17 = tail call fastcc i32 @VEC_bitpack_word_t_base_length(%struct.VEC_bitpack_word_t_base* %cond16) #7, !dbg !2332
  %add = add i32 %call17, 1, !dbg !2332
  %cmp18 = icmp ult i32 %call, %add, !dbg !2332
  br i1 %cmp18, label %cond.end21, label %cond.true19, !dbg !2332

cond.true19:                                      ; preds = %cond.end15
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2332
  br label %cond.end21, !dbg !2332

cond.end21:                                       ; preds = %cond.end15, %cond.true19
  %call24 = tail call fastcc i64* @VEC_bitpack_word_t_heap_safe_push(%struct.VEC_bitpack_word_t_heap** nonnull %values, i64 0) #7, !dbg !2334
  br label %if.end, !dbg !2335

if.end:                                           ; preds = %cond.end5, %cond.end21
  %3 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %values, align 8, !dbg !2336
  %tobool26 = icmp eq %struct.VEC_bitpack_word_t_heap* %3, null, !dbg !2336
  br i1 %tobool26, label %cond.end31, label %cond.true27, !dbg !2336

cond.true27:                                      ; preds = %if.end
  %base29 = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %3, i64 0, i32 0, !dbg !2336
  br label %cond.end31, !dbg !2336

cond.end31:                                       ; preds = %if.end, %cond.true27
  %cond32 = phi %struct.VEC_bitpack_word_t_base* [ %base29, %cond.true27 ], [ null, %if.end ], !dbg !2336
  %call33 = tail call fastcc i64 @VEC_bitpack_word_t_base_index(%struct.VEC_bitpack_word_t_base* %cond32, i32 %call) #7, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %call33, metadata !2324, metadata !DIExpression()), !dbg !2325
  %first_unused_bit = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 1, !dbg !2337
  %4 = load i64, i64* %first_unused_bit, align 8, !dbg !2337
  %conv = zext i32 %nbits to i64, !dbg !2337
  %add34 = add i64 %4, %conv, !dbg !2337
  %cmp35 = icmp ult i64 %add34, 65, !dbg !2337
  br i1 %cmp35, label %cond.end39, label %cond.true37, !dbg !2337

cond.true37:                                      ; preds = %cond.end31
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2337
  %.pre = load i64, i64* %first_unused_bit, align 8, !dbg !2338
  br label %cond.end39, !dbg !2337

cond.end39:                                       ; preds = %cond.end31, %cond.true37
  %5 = phi i64 [ %4, %cond.end31 ], [ %.pre, %cond.true37 ], !dbg !2338
  %shl = shl i64 %val, %5, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2321, metadata !DIExpression()), !dbg !2325
  %or = or i64 %call33, %shl, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %or, metadata !2324, metadata !DIExpression()), !dbg !2325
  %6 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %values, align 8, !dbg !2341
  %tobool43 = icmp eq %struct.VEC_bitpack_word_t_heap* %6, null, !dbg !2341
  br i1 %tobool43, label %cond.end48, label %cond.true44, !dbg !2341

cond.true44:                                      ; preds = %cond.end39
  %base46 = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %6, i64 0, i32 0, !dbg !2341
  br label %cond.end48, !dbg !2341

cond.end48:                                       ; preds = %cond.end39, %cond.true44
  %cond49 = phi %struct.VEC_bitpack_word_t_base* [ %base46, %cond.true44 ], [ null, %cond.end39 ], !dbg !2341
  %call50 = tail call fastcc i64 @VEC_bitpack_word_t_base_replace(%struct.VEC_bitpack_word_t_base* %cond49, i32 %call, i64 %or) #7, !dbg !2341
  %num_bits = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 0, !dbg !2342
  %7 = load i64, i64* %num_bits, align 8, !dbg !2343
  %add52 = add i64 %7, %conv, !dbg !2343
  store i64 %add52, i64* %num_bits, align 8, !dbg !2343
  %8 = load i64, i64* %first_unused_bit, align 8, !dbg !2344
  %add55 = add i64 %8, %conv, !dbg !2344
  store i64 %add55, i64* %first_unused_bit, align 8, !dbg !2344
  ret void, !dbg !2345
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @bp_get_next_word(%struct.bitpack_d* %bp, i32 %nbits) unnamed_addr #0 !dbg !2346 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %bp, metadata !2350, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 %nbits, metadata !2351, metadata !DIExpression()), !dbg !2354
  %num_bits = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 0, !dbg !2355
  %0 = load i64, i64* %num_bits, align 8, !dbg !2355
  %div = lshr i64 %0, 6, !dbg !2356
  %conv = trunc i64 %div to i32, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2353, metadata !DIExpression()), !dbg !2354
  %first_unused_bit = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 1, !dbg !2358
  %1 = load i64, i64* %first_unused_bit, align 8, !dbg !2359
  %rem = and i64 %1, 63, !dbg !2359
  store i64 %rem, i64* %first_unused_bit, align 8, !dbg !2359
  %2 = trunc i64 %rem to i32, !dbg !2360
  %3 = add i32 %2, %nbits, !dbg !2360
  %conv3 = add i32 %3, -1, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !2352, metadata !DIExpression()), !dbg !2354
  %cmp = icmp ugt i32 %conv3, 63, !dbg !2361
  br i1 %cmp, label %if.then, label %if.end, !dbg !2363

if.then:                                          ; preds = %entry
  %inc = add i32 %conv, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2353, metadata !DIExpression()), !dbg !2354
  %sub6 = sub nuw nsw i64 64, %rem, !dbg !2366
  %add8 = add i64 %0, %sub6, !dbg !2367
  store i64 %add8, i64* %num_bits, align 8, !dbg !2367
  store i64 0, i64* %first_unused_bit, align 8, !dbg !2368
  br label %if.end, !dbg !2369

if.end:                                           ; preds = %if.then, %entry
  %ix.0 = phi i32 [ %inc, %if.then ], [ %conv, %entry ], !dbg !2354
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !2353, metadata !DIExpression()), !dbg !2354
  ret i32 %ix.0, !dbg !2370
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_length(%struct.VEC_bitpack_word_t_base* %vec_) unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_base* %vec_, metadata !2377, metadata !DIExpression()), !dbg !2378
  %tobool = icmp eq %struct.VEC_bitpack_word_t_base* %vec_, null, !dbg !2379
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2379

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 0, !dbg !2379
  %0 = load i32, i32* %num, align 8, !dbg !2379
  br label %cond.end, !dbg !2379

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2379
  ret i32 %cond, !dbg !2379
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64* @VEC_bitpack_word_t_heap_safe_push(%struct.VEC_bitpack_word_t_heap** %vec_, i64 %obj_) unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_heap** %vec_, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2387, metadata !DIExpression()), !dbg !2388
  %call = tail call fastcc i32 @VEC_bitpack_word_t_heap_reserve(%struct.VEC_bitpack_word_t_heap** %vec_, i32 1) #7, !dbg !2389
  %0 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %vec_, align 8, !dbg !2389
  %tobool = icmp eq %struct.VEC_bitpack_word_t_heap* %0, null, !dbg !2389
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2389

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %0, i64 0, i32 0, !dbg !2389
  br label %cond.end, !dbg !2389

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_bitpack_word_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2389
  %call1 = tail call fastcc i64* @VEC_bitpack_word_t_base_quick_push(%struct.VEC_bitpack_word_t_base* %cond, i64 0) #7, !dbg !2389
  ret i64* %call1, !dbg !2389
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @VEC_bitpack_word_t_base_index(%struct.VEC_bitpack_word_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2390 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_base* %vec_, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2395, metadata !DIExpression()), !dbg !2396
  br label %land.end, !dbg !2397

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2397
  %arrayidx = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2397
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2397
  ret i64 %0, !dbg !2397
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @VEC_bitpack_word_t_base_replace(%struct.VEC_bitpack_word_t_base* %vec_, i32 %ix_, i64 %obj_) unnamed_addr #0 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_base* %vec_, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %obj_, metadata !2405, metadata !DIExpression()), !dbg !2407
  %idxprom = zext i32 %ix_ to i64, !dbg !2408
  %arrayidx = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2408
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %0, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i64 %obj_, i64* %arrayidx, align 8, !dbg !2408
  ret i64 %0, !dbg !2408
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bp_unpack_value(%struct.bitpack_d* %bp, i32 %nbits) local_unnamed_addr #5 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitpack_d* %bp, metadata !2413, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %nbits, metadata !2414, metadata !DIExpression()), !dbg !2419
  %nbits.off = add i32 %nbits, -1, !dbg !2420
  %0 = icmp ult i32 %nbits.off, 64, !dbg !2420
  br i1 %0, label %cond.end, label %cond.true, !dbg !2420

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2420
  br label %cond.end, !dbg !2420

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call fastcc i32 @bp_get_next_word(%struct.bitpack_d* %bp, i32 %nbits) #7, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %call, metadata !2418, metadata !DIExpression()), !dbg !2419
  %values = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 2, !dbg !2422
  %1 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %values, align 8, !dbg !2422
  %tobool = icmp eq %struct.VEC_bitpack_word_t_heap* %1, null, !dbg !2422
  br i1 %tobool, label %cond.end5, label %cond.true2, !dbg !2422

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %1, i64 0, i32 0, !dbg !2422
  br label %cond.end5, !dbg !2422

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_bitpack_word_t_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2422
  %call7 = tail call fastcc i64 @VEC_bitpack_word_t_base_index(%struct.VEC_bitpack_word_t_base* %cond6, i32 %call) #7, !dbg !2422
  call void @llvm.dbg.value(metadata i64 %call7, metadata !2416, metadata !DIExpression()), !dbg !2419
  %cmp8 = icmp eq i32 %nbits, 64, !dbg !2423
  %sh_prom = zext i32 %nbits to i64, !dbg !2424
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !2424
  %sub = xor i64 %notmask, -1, !dbg !2424
  %cond12 = select i1 %cmp8, i64 -1, i64 %sub, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %cond12, metadata !2417, metadata !DIExpression()), !dbg !2419
  %first_unused_bit = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 1, !dbg !2425
  %2 = load i64, i64* %first_unused_bit, align 8, !dbg !2425
  %shr = lshr i64 %call7, %2, !dbg !2426
  call void @llvm.dbg.value(metadata i64 %shr, metadata !2416, metadata !DIExpression()), !dbg !2419
  %and = and i64 %shr, %cond12, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %and, metadata !2415, metadata !DIExpression()), !dbg !2419
  %num_bits = getelementptr inbounds %struct.bitpack_d, %struct.bitpack_d* %bp, i64 0, i32 0, !dbg !2428
  %3 = load i64, i64* %num_bits, align 8, !dbg !2429
  %add = add i64 %3, %sh_prom, !dbg !2429
  store i64 %add, i64* %num_bits, align 8, !dbg !2429
  %add15 = add i64 %2, %sh_prom, !dbg !2430
  store i64 %add15, i64* %first_unused_bit, align 8, !dbg !2430
  ret i64 %and, !dbg !2431
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_streamer_cache_insert(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* %ix_p, i32* %offset_p) local_unnamed_addr #5 !dbg !2432 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2438, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32* %ix_p, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32* %offset_p, metadata !2441, metadata !DIExpression()), !dbg !2442
  %call = tail call fastcc zeroext i8 @lto_streamer_cache_insert_1(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* %ix_p, i32* %offset_p, i8 zeroext 1) #7, !dbg !2443
  ret i8 %call, !dbg !2444
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @lto_streamer_cache_insert_1(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* %ix_p, i32* %offset_p, i8 zeroext %insert_at_next_slot_p) unnamed_addr #5 !dbg !2445 {
entry:
  %d_entry = alloca %struct.tree_int_map, align 8
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2449, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2450, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32* %ix_p, metadata !2451, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32* %offset_p, metadata !2452, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8 %insert_at_next_slot_p, metadata !2453, metadata !DIExpression()), !dbg !2460
  %0 = bitcast %struct.tree_int_map* %d_entry to i8*, !dbg !2461
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2461
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !2462
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2462

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2462
  br label %cond.end, !dbg !2462

cond.end:                                         ; preds = %entry, %cond.true
  %from = getelementptr inbounds %struct.tree_int_map, %struct.tree_int_map* %d_entry, i64 0, i32 0, i32 0, !dbg !2463
  store %union.tree_node* %t, %union.tree_node** %from, align 8, !dbg !2464
  %node_map = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 0, !dbg !2465
  %1 = load %struct.htab*, %struct.htab** %node_map, align 8, !dbg !2465
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 1) #6, !dbg !2466
  call void @llvm.dbg.value(metadata i8** %call, metadata !2454, metadata !DIExpression()), !dbg !2460
  %2 = load i8*, i8** %call, align 8, !dbg !2467
  %cmp = icmp eq i8* %2, null, !dbg !2469
  br i1 %cmp, label %if.then, label %if.else12, !dbg !2470

if.then:                                          ; preds = %cond.end
  %tobool2 = icmp eq i8 %insert_at_next_slot_p, 0, !dbg !2471
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2474

if.then3:                                         ; preds = %if.then
  %next_slot = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 1, !dbg !2475
  %3 = load i32, i32* %next_slot, align 8, !dbg !2476
  %inc = add i32 %3, 1, !dbg !2476
  store i32 %inc, i32* %next_slot, align 8, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %3, metadata !2457, metadata !DIExpression()), !dbg !2460
  br label %if.end, !dbg !2477

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* %ix_p, align 4, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %4, metadata !2457, metadata !DIExpression()), !dbg !2460
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %ix.0 = phi i32 [ %3, %if.then3 ], [ %4, %if.else ], !dbg !2479
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !2457, metadata !DIExpression()), !dbg !2460
  %call4 = call i8* @xcalloc(i64 1, i64 16) #6, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %call4, metadata !2456, metadata !DIExpression()), !dbg !2460
  %from6 = bitcast i8* %call4 to %union.tree_node**, !dbg !2481
  store %union.tree_node* %t, %union.tree_node** %from6, align 8, !dbg !2482
  %to = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2483
  %5 = bitcast i8* %to to i32*, !dbg !2483
  store i32 %ix.0, i32* %5, align 8, !dbg !2484
  store i8* %call4, i8** %call, align 8, !dbg !2485
  %tobool7 = icmp eq i32* %offset_p, null, !dbg !2486
  br i1 %tobool7, label %cond.end10, label %cond.true8, !dbg !2486

cond.true8:                                       ; preds = %if.end
  %6 = load i32, i32* %offset_p, align 4, !dbg !2487
  br label %cond.end10, !dbg !2486

cond.end10:                                       ; preds = %if.end, %cond.true8
  %cond11 = phi i32 [ %6, %cond.true8 ], [ -1, %if.end ], !dbg !2486
  call void @llvm.dbg.value(metadata i32 %cond11, metadata !2458, metadata !DIExpression()), !dbg !2460
  call fastcc void @lto_streamer_cache_add_to_node_array(%struct.lto_streamer_cache_d* %cache, i32 %ix.0, %union.tree_node* %t, i32 %cond11) #7, !dbg !2488
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2460
  br label %if.end32, !dbg !2489

if.else12:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8* %2, metadata !2456, metadata !DIExpression()), !dbg !2460
  %to13 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2490
  %7 = bitcast i8* %to13 to i32*, !dbg !2490
  %8 = load i32, i32* %7, align 8, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %8, metadata !2457, metadata !DIExpression()), !dbg !2460
  %offsets = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 3, !dbg !2492
  %9 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %offsets, align 8, !dbg !2492
  %tobool14 = icmp eq %struct.VEC_unsigned_heap* %9, null, !dbg !2492
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !2492

cond.true15:                                      ; preds = %if.else12
  %base17 = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %9, i64 0, i32 0, !dbg !2492
  br label %cond.end19, !dbg !2492

cond.end19:                                       ; preds = %if.else12, %cond.true15
  %cond20 = phi %struct.VEC_unsigned_base* [ %base17, %cond.true15 ], [ null, %if.else12 ], !dbg !2492
  %call21 = call fastcc i32 @VEC_unsigned_base_index(%struct.VEC_unsigned_base* %cond20, i32 %8) #7, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2458, metadata !DIExpression()), !dbg !2460
  %tobool22 = icmp eq i8 %insert_at_next_slot_p, 0, !dbg !2493
  br i1 %tobool22, label %land.lhs.true, label %if.end32, !dbg !2495

land.lhs.true:                                    ; preds = %cond.end19
  %10 = load i32, i32* %ix_p, align 4, !dbg !2496
  %cmp23 = icmp eq i32 %8, %10, !dbg !2497
  br i1 %cmp23, label %if.end32, label %if.then24, !dbg !2498

if.then24:                                        ; preds = %land.lhs.true
  %call25 = call fastcc zeroext i8 @lto_stream_as_builtin_p(%union.tree_node* %t) #7, !dbg !2499
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2499
  br i1 %tobool26, label %cond.true27, label %cond.end29, !dbg !2499

cond.true27:                                      ; preds = %if.then24
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2499
  br label %cond.end29, !dbg !2499

cond.end29:                                       ; preds = %if.then24, %cond.true27
  %11 = load i32, i32* %ix_p, align 4, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %11, metadata !2457, metadata !DIExpression()), !dbg !2460
  call fastcc void @lto_streamer_cache_add_to_node_array(%struct.lto_streamer_cache_d* %cache, i32 %11, %union.tree_node* %t, i32 -1) #7, !dbg !2502
  br label %if.end32, !dbg !2503

if.end32:                                         ; preds = %land.lhs.true, %cond.end19, %cond.end29, %cond.end10
  %ix.2 = phi i32 [ %ix.0, %cond.end10 ], [ %8, %cond.end19 ], [ %11, %cond.end29 ], [ %8, %land.lhs.true ], !dbg !2504
  %offset.0 = phi i32 [ %cond11, %cond.end10 ], [ %call21, %cond.end19 ], [ %call21, %cond.end29 ], [ %call21, %land.lhs.true ], !dbg !2504
  %existed_p.0 = phi i8 [ 0, %cond.end10 ], [ 1, %cond.end19 ], [ 1, %cond.end29 ], [ 1, %land.lhs.true ], !dbg !2504
  call void @llvm.dbg.value(metadata i8 %existed_p.0, metadata !2459, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %ix.2, metadata !2457, metadata !DIExpression()), !dbg !2460
  %tobool33 = icmp eq i32* %ix_p, null, !dbg !2505
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2507

if.then34:                                        ; preds = %if.end32
  store i32 %ix.2, i32* %ix_p, align 4, !dbg !2508
  br label %if.end35, !dbg !2509

if.end35:                                         ; preds = %if.end32, %if.then34
  %tobool36 = icmp eq i32* %offset_p, null, !dbg !2510
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2512

if.then37:                                        ; preds = %if.end35
  store i32 %offset.0, i32* %offset_p, align 4, !dbg !2513
  br label %if.end38, !dbg !2514

if.end38:                                         ; preds = %if.end35, %if.then37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2515
  ret i8 %existed_p.0, !dbg !2516
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_streamer_cache_insert_at(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32 %ix) local_unnamed_addr #5 !dbg !2517 {
entry:
  %ix.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %ix, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i32 %ix, i32* %ix.addr, align 4
  call void @llvm.dbg.value(metadata i32* %ix.addr, metadata !2523, metadata !DIExpression(DW_OP_deref)), !dbg !2524
  %call = call fastcc zeroext i8 @lto_streamer_cache_insert_1(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* nonnull %ix.addr, i32* null, i8 zeroext 0) #7, !dbg !2525
  ret i8 %call, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lto_streamer_cache_lookup(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* %ix_p) local_unnamed_addr #5 !dbg !2527 {
entry:
  %d_slot = alloca %struct.tree_int_map, align 8
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2531, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2532, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32* %ix_p, metadata !2533, metadata !DIExpression()), !dbg !2538
  %0 = bitcast %struct.tree_int_map* %d_slot to i8*, !dbg !2539
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2539
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !2540
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2540

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 605, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2540
  br label %cond.end, !dbg !2540

cond.end:                                         ; preds = %entry, %cond.true
  %from = getelementptr inbounds %struct.tree_int_map, %struct.tree_int_map* %d_slot, i64 0, i32 0, i32 0, !dbg !2541
  store %union.tree_node* %t, %union.tree_node** %from, align 8, !dbg !2542
  %node_map = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 0, !dbg !2543
  %1 = load %struct.htab*, %struct.htab** %node_map, align 8, !dbg !2543
  %call = call i8** @htab_find_slot(%struct.htab* %1, i8* nonnull %0, i32 0) #6, !dbg !2544
  call void @llvm.dbg.value(metadata i8** %call, metadata !2534, metadata !DIExpression()), !dbg !2538
  %cmp = icmp eq i8** %call, null, !dbg !2545
  br i1 %cmp, label %if.end, label %if.else, !dbg !2547

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8 1, metadata !2536, metadata !DIExpression()), !dbg !2538
  %2 = bitcast i8** %call to %struct.tree_int_map**, !dbg !2548
  %3 = load %struct.tree_int_map*, %struct.tree_int_map** %2, align 8, !dbg !2548
  %to = getelementptr inbounds %struct.tree_int_map, %struct.tree_int_map* %3, i64 0, i32 1, !dbg !2550
  %4 = load i32, i32* %to, align 8, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %4, metadata !2537, metadata !DIExpression()), !dbg !2538
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  %retval1.0 = phi i8 [ 1, %if.else ], [ 0, %cond.end ], !dbg !2551
  %ix.0 = phi i32 [ %4, %if.else ], [ -1, %cond.end ], !dbg !2551
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %retval1.0, metadata !2536, metadata !DIExpression()), !dbg !2538
  %tobool2 = icmp eq i32* %ix_p, null, !dbg !2552
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2554

if.then3:                                         ; preds = %if.end
  store i32 %ix.0, i32* %ix_p, align 4, !dbg !2555
  br label %if.end4, !dbg !2556

if.end4:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2557
  ret i8 %retval1.0, !dbg !2558
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lto_streamer_cache_get(%struct.lto_streamer_cache_d* %cache, i32 %ix) local_unnamed_addr #5 !dbg !2559 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %ix, metadata !2564, metadata !DIExpression()), !dbg !2565
  %tobool = icmp eq %struct.lto_streamer_cache_d* %cache, null, !dbg !2566
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2566

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 632, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2566
  br label %cond.end, !dbg !2566

cond.end:                                         ; preds = %entry, %cond.true
  %nodes = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 2, !dbg !2567
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %nodes, align 8, !dbg !2567
  %tobool1 = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2567
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2567

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2567
  br label %cond.end5, !dbg !2567

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_tree_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2567
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond6) #7, !dbg !2567
  %cmp = icmp ugt i32 %call, %ix, !dbg !2569
  br i1 %cmp, label %if.end, label %return, !dbg !2570

if.end:                                           ; preds = %cond.end5
  %1 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %nodes, align 8, !dbg !2571
  %tobool8 = icmp eq %struct.VEC_tree_gc* %1, null, !dbg !2571
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !2571

cond.true9:                                       ; preds = %if.end
  %base11 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %1, i64 0, i32 0, !dbg !2571
  br label %cond.end13, !dbg !2571

cond.end13:                                       ; preds = %if.end, %cond.true9
  %cond14 = phi %struct.VEC_tree_base* [ %base11, %cond.true9 ], [ null, %if.end ], !dbg !2571
  %call15 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond14, i32 %ix) #7, !dbg !2571
  br label %return, !dbg !2572

return:                                           ; preds = %cond.end5, %cond.end13
  %retval.0 = phi %union.tree_node* [ %call15, %cond.end13 ], [ null, %cond.end5 ], !dbg !2565
  ret %union.tree_node* %retval.0, !dbg !2573
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2574 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2580, metadata !DIExpression()), !dbg !2581
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2582
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2582

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2582
  %0 = load i32, i32* %num, align 8, !dbg !2582
  br label %cond.end, !dbg !2582

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2582
  ret i32 %cond, !dbg !2582
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2583 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2588, metadata !DIExpression()), !dbg !2589
  br label %land.end, !dbg !2590

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2590
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2590
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2590
  ret %union.tree_node* %0, !dbg !2590
}

; Function Attrs: nounwind uwtable
define dso_local %struct.lto_streamer_cache_d* @lto_streamer_cache_create() local_unnamed_addr #5 !dbg !2591 {
entry:
  %common_nodes = alloca %struct.VEC_tree_heap*, align 8
  %node = alloca %union.tree_node*, align 8
  %0 = bitcast %struct.VEC_tree_heap** %common_nodes to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2599
  %1 = bitcast %union.tree_node** %node to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2600
  %call = tail call i8* @xcalloc(i64 1, i64 32) #6, !dbg !2601
  %2 = bitcast i8* %call to %struct.lto_streamer_cache_d*, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %2, metadata !2595, metadata !DIExpression()), !dbg !2602
  %call1 = tail call %struct.htab* @htab_create(i64 101, i32 (i8*)* nonnull @tree_map_base_hash, i32 (i8*, i8*)* nonnull @tree_map_base_eq, void (i8*)* null) #6, !dbg !2603
  %node_map = bitcast i8* %call to %struct.htab**, !dbg !2604
  store %struct.htab* %call1, %struct.htab** %node_map, align 8, !dbg !2605
  %call2 = tail call fastcc %struct.VEC_tree_heap* @lto_get_common_nodes() #7, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %call2, metadata !2596, metadata !DIExpression()), !dbg !2602
  store %struct.VEC_tree_heap* %call2, %struct.VEC_tree_heap** %common_nodes, align 8, !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2602
  br label %for.cond, !dbg !2608

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.VEC_tree_heap* [ %call2, %entry ], [ %.pre, %for.body ], !dbg !2610
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2612
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2597, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %3, metadata !2596, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %3, metadata !2596, metadata !DIExpression()), !dbg !2602
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, !dbg !2610
  call void @llvm.dbg.value(metadata %union.tree_node** %node, metadata !2598, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  %call3 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %base, i32 %i.0, %union.tree_node** nonnull %node) #7, !dbg !2610
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2613
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2613

for.body:                                         ; preds = %for.cond
  %4 = load %union.tree_node*, %union.tree_node** %node, align 8, !dbg !2614
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2598, metadata !DIExpression()), !dbg !2602
  call fastcc void @preload_common_node(%struct.lto_streamer_cache_d* %2, %union.tree_node* %4) #7, !dbg !2615
  %inc = add i32 %i.0, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2597, metadata !DIExpression()), !dbg !2602
  %.pre = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %common_nodes, align 8, !dbg !2610
  br label %for.cond, !dbg !2617, !llvm.loop !2618

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %common_nodes, metadata !2596, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %common_nodes) #7, !dbg !2620
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2621
  ret %struct.lto_streamer_cache_d* %2, !dbg !2622
}

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

declare dso_local i32 @tree_map_base_hash(i8*) #2

declare dso_local i32 @tree_map_base_eq(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @lto_get_common_nodes() unnamed_addr #5 !dbg !2623 {
entry:
  %common_nodes = alloca %struct.VEC_tree_heap*, align 8
  %0 = bitcast %struct.VEC_tree_heap** %common_nodes to i8*, !dbg !2635
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2628, metadata !DIExpression()), !dbg !2636
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %common_nodes, align 8, !dbg !2637
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 56), align 16, !dbg !2638
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !2638
  br i1 %tobool, label %if.else, label %if.then, !dbg !2639

if.then:                                          ; preds = %entry
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2640
  %2 = bitcast i32* %str to i8**, !dbg !2640
  %3 = load i8*, i8** %2, align 8, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %3, metadata !2632, metadata !DIExpression()), !dbg !2641
  %call = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !2642
  %cmp = icmp eq i32 %call, 0, !dbg !2642
  br i1 %cmp, label %if.end, label %cond.true, !dbg !2642

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 691, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2642
  br label %if.end, !dbg !2642

if.else:                                          ; preds = %entry
  %call1 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #6, !dbg !2643
  store %union.tree_node* %call1, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 56), align 16, !dbg !2644
  br label %if.end

if.end:                                           ; preds = %cond.true, %if.then, %if.else
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 43), align 8, !dbg !2645
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2645
  %cmp2 = icmp eq %union.tree_node* %4, %5, !dbg !2645
  br i1 %cmp2, label %cond.end5, label %cond.true3, !dbg !2645

cond.true3:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 696, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2645
  br label %cond.end5, !dbg !2645

cond.end5:                                        ; preds = %if.end, %cond.true3
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 48), align 16, !dbg !2646
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2646
  %cmp7 = icmp eq %union.tree_node* %6, %7, !dbg !2646
  %8 = bitcast %union.tree_node* %6 to %struct.tree_type*, !dbg !2646
  br i1 %cmp7, label %cond.end10, label %cond.true8, !dbg !2646

cond.true8:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 704, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2646
  %.pre = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 48) to %struct.tree_type**), align 16, !dbg !2647
  %.pre1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2647
  br label %cond.end10, !dbg !2646

cond.end10:                                       ; preds = %cond.end5, %cond.true8
  %9 = phi %union.tree_node* [ %6, %cond.end5 ], [ %.pre1, %cond.true8 ], !dbg !2647
  %10 = phi %struct.tree_type* [ %8, %cond.end5 ], [ %.pre, %cond.true8 ], !dbg !2647
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i64 0, i32 16, !dbg !2647
  %11 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !2647
  %cmp12 = icmp eq %union.tree_node* %11, %9, !dbg !2647
  br i1 %cmp12, label %cond.end15, label %cond.true13, !dbg !2647

cond.true13:                                      ; preds = %cond.end10
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 705, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2647
  br label %cond.end15, !dbg !2647

cond.end15:                                       ; preds = %cond.end10, %cond.true13
  %call17 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call17, metadata !2629, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 1, metadata !2627, metadata !DIExpression()), !dbg !2636
  br label %for.cond, !dbg !2649

for.cond:                                         ; preds = %for.body, %cond.end15
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.body ], [ 1, %cond.end15 ], !dbg !2651
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2627, metadata !DIExpression()), !dbg !2636
  %exitcond7 = icmp eq i64 %indvars.iv5, 11, !dbg !2652
  br i1 %exitcond7, label %for.cond19.preheader, label %for.body, !dbg !2654

for.cond19.preheader:                             ; preds = %for.cond
  br label %for.cond19, !dbg !2655

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 %indvars.iv5, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %common_nodes, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2636
  call fastcc void @lto_record_common_node(%union.tree_node** nonnull %arrayidx, %struct.VEC_tree_heap** nonnull %common_nodes, %struct.pointer_set_t* %call17) #7, !dbg !2658
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i32 undef, metadata !2627, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2636
  br label %for.cond, !dbg !2660, !llvm.loop !2661

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %indvars.iv2 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next3, %for.body21 ], !dbg !2663
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !2627, metadata !DIExpression()), !dbg !2636
  %exitcond4 = icmp eq i64 %indvars.iv2, 4, !dbg !2664
  br i1 %exitcond4, label %for.cond27.preheader, label %for.body21, !dbg !2655

for.cond27.preheader:                             ; preds = %for.cond19
  br label %for.cond27, !dbg !2666

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds [4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %indvars.iv2, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %common_nodes, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2636
  call fastcc void @lto_record_common_node(%union.tree_node** nonnull %arrayidx23, %struct.VEC_tree_heap** nonnull %common_nodes, %struct.pointer_set_t* %call17) #7, !dbg !2669
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i32 undef, metadata !2627, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2636
  br label %for.cond19, !dbg !2671, !llvm.loop !2672

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next, %for.body29 ], !dbg !2674
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2627, metadata !DIExpression()), !dbg !2636
  %exitcond = icmp eq i64 %indvars.iv, 131, !dbg !2675
  br i1 %exitcond, label %for.end34, label %for.body29, !dbg !2666

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds [131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 %indvars.iv, !dbg !2677
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %common_nodes, metadata !2628, metadata !DIExpression(DW_OP_deref)), !dbg !2636
  call fastcc void @lto_record_common_node(%union.tree_node** nonnull %arrayidx31, %struct.VEC_tree_heap** nonnull %common_nodes, %struct.pointer_set_t* %call17) #7, !dbg !2678
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2679
  call void @llvm.dbg.value(metadata i32 undef, metadata !2627, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2636
  br label %for.cond27, !dbg !2680, !llvm.loop !2681

for.end34:                                        ; preds = %for.cond27
  call void @pointer_set_destroy(%struct.pointer_set_t* %call17) #6, !dbg !2683
  %12 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %common_nodes, align 8, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %12, metadata !2628, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2685
  ret %struct.VEC_tree_heap* %12, !dbg !2686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node** %ptr) unnamed_addr #0 !dbg !2687 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata %union.tree_node** %ptr, metadata !2693, metadata !DIExpression()), !dbg !2694
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2695
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2695

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2695
  %0 = load i32, i32* %num, align 8, !dbg !2695
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2695
  br i1 %cmp, label %if.then, label %if.else, !dbg !2697

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2698
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2698
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2698
  br label %return, !dbg !2698

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2700

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ null, %if.else ], [ %1, %if.then ], !dbg !2702
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2702
  store %union.tree_node* %storemerge, %union.tree_node** %ptr, align 8, !dbg !2702
  ret i32 %retval.0, !dbg !2697
}

; Function Attrs: nounwind uwtable
define internal fastcc void @preload_common_node(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t) unnamed_addr #5 !dbg !2703 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2707, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2708, metadata !DIExpression()), !dbg !2712
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !2713
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2713

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 732, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2713
  br label %cond.end, !dbg !2713

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call zeroext i8 @lto_streamer_cache_insert(%struct.lto_streamer_cache_d* %cache, %union.tree_node* %t, i32* null, i32* null) #7, !dbg !2714
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2715
  %bf.load = load i64, i64* %0, align 8, !dbg !2715
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2716
  %cmp = icmp eq i64 %bf.cast1, 16, !dbg !2716
  br i1 %cmp, label %if.then, label %if.end, !dbg !2717

if.then:                                          ; preds = %cond.end
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2718
  %1 = bitcast i32* %values to %union.tree_node**, !dbg !2718
  br label %for.cond, !dbg !2720

for.cond:                                         ; preds = %for.body, %if.then
  %f.0.in = phi %union.tree_node** [ %1, %if.then ], [ %chain, %for.body ]
  %f.0 = load %union.tree_node*, %union.tree_node** %f.0.in, align 8, !dbg !2721
  call void @llvm.dbg.value(metadata %union.tree_node* %f.0, metadata !2709, metadata !DIExpression()), !dbg !2722
  %tobool1 = icmp eq %union.tree_node* %f.0, null, !dbg !2723
  br i1 %tobool1, label %if.end.loopexit, label %for.body, !dbg !2723

for.body:                                         ; preds = %for.cond
  tail call fastcc void @preload_common_node(%struct.lto_streamer_cache_d* %cache, %union.tree_node* nonnull %f.0) #7, !dbg !2724
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %f.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2726
  br label %for.cond, !dbg !2727, !llvm.loop !2728

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2730

if.end:                                           ; preds = %if.end.loopexit, %cond.end
  ret void, !dbg !2730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2731 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2736, metadata !DIExpression()), !dbg !2737
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2738
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2738
  br i1 %tobool, label %if.end, label %if.then, !dbg !2740

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2740
  tail call void @free(i8* nonnull %1) #6, !dbg !2738
  br label %if.end, !dbg !2738

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2740
  ret void, !dbg !2740
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_streamer_cache_delete(%struct.lto_streamer_cache_d* %c) local_unnamed_addr #5 !dbg !2741 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %c, metadata !2745, metadata !DIExpression()), !dbg !2746
  %cmp = icmp eq %struct.lto_streamer_cache_d* %c, null, !dbg !2747
  br i1 %cmp, label %return, label %if.end, !dbg !2749

if.end:                                           ; preds = %entry
  %node_map = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %c, i64 0, i32 0, !dbg !2750
  %0 = load %struct.htab*, %struct.htab** %node_map, align 8, !dbg !2750
  tail call void @htab_delete(%struct.htab* %0) #6, !dbg !2751
  %nodes = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %c, i64 0, i32 2, !dbg !2752
  tail call fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** nonnull %nodes) #7, !dbg !2752
  %offsets = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %c, i64 0, i32 3, !dbg !2753
  tail call fastcc void @VEC_unsigned_heap_free(%struct.VEC_unsigned_heap** nonnull %offsets) #7, !dbg !2753
  %1 = bitcast %struct.lto_streamer_cache_d* %c to i8*, !dbg !2754
  tail call void @free(i8* nonnull %1) #6, !dbg !2755
  br label %return, !dbg !2756

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !2756
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** %vec_) unnamed_addr #0 !dbg !2757 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2764
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2764
  br i1 %tobool, label %if.end, label %if.then, !dbg !2766

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_gc* %0 to i8*, !dbg !2766
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2764
  br label %if.end, !dbg !2764

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_gc* null, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2766
  ret void, !dbg !2766
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_unsigned_heap_free(%struct.VEC_unsigned_heap** %vec_) unnamed_addr #0 !dbg !2767 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_heap** %vec_, metadata !2772, metadata !DIExpression()), !dbg !2773
  %0 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !2774
  %tobool = icmp eq %struct.VEC_unsigned_heap* %0, null, !dbg !2774
  br i1 %tobool, label %if.end, label %if.then, !dbg !2776

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_unsigned_heap* %0 to i8*, !dbg !2776
  tail call void @free(i8* nonnull %1) #6, !dbg !2774
  br label %if.end, !dbg !2774

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_unsigned_heap* null, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !2776
  ret void, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_streamer_init() local_unnamed_addr #5 !dbg !2777 {
entry:
  tail call fastcc void @check_handled_ts_structures() #7, !dbg !2778
  ret void, !dbg !2779
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_handled_ts_structures() unnamed_addr #5 !dbg !2780 {
entry:
  %handled_p = alloca [34 x i8], align 16
  %0 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 0, !dbg !2787
  call void @llvm.lifetime.start.p0i8(i64 34, i8* nonnull %0) #8, !dbg !2787
  call void @llvm.dbg.declare(metadata [34 x i8]* %handled_p, metadata !2782, metadata !DIExpression()), !dbg !2788
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 34) #6, !dbg !2789
  store i8 1, i8* %0, align 16, !dbg !2790
  %arrayidx1 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 1, !dbg !2791
  store i8 1, i8* %arrayidx1, align 1, !dbg !2792
  %arrayidx2 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 2, !dbg !2793
  store i8 1, i8* %arrayidx2, align 2, !dbg !2794
  %arrayidx3 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 3, !dbg !2795
  store i8 1, i8* %arrayidx3, align 1, !dbg !2796
  %arrayidx4 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 4, !dbg !2797
  store i8 1, i8* %arrayidx4, align 4, !dbg !2798
  %arrayidx5 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 5, !dbg !2799
  store i8 1, i8* %arrayidx5, align 1, !dbg !2800
  %arrayidx6 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 6, !dbg !2801
  store i8 1, i8* %arrayidx6, align 2, !dbg !2802
  %arrayidx7 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 7, !dbg !2803
  store i8 1, i8* %arrayidx7, align 1, !dbg !2804
  %arrayidx8 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 8, !dbg !2805
  store i8 1, i8* %arrayidx8, align 8, !dbg !2806
  %arrayidx9 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 9, !dbg !2807
  store i8 1, i8* %arrayidx9, align 1, !dbg !2808
  %arrayidx10 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 10, !dbg !2809
  store i8 1, i8* %arrayidx10, align 2, !dbg !2810
  %arrayidx11 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 11, !dbg !2811
  store i8 1, i8* %arrayidx11, align 1, !dbg !2812
  %arrayidx12 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 12, !dbg !2813
  store i8 1, i8* %arrayidx12, align 4, !dbg !2814
  %arrayidx13 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 13, !dbg !2815
  store i8 1, i8* %arrayidx13, align 1, !dbg !2816
  %arrayidx14 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 14, !dbg !2817
  store i8 1, i8* %arrayidx14, align 2, !dbg !2818
  %arrayidx15 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 15, !dbg !2819
  store i8 1, i8* %arrayidx15, align 1, !dbg !2820
  %arrayidx16 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 16, !dbg !2821
  store i8 1, i8* %arrayidx16, align 16, !dbg !2822
  %arrayidx17 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 17, !dbg !2823
  store i8 1, i8* %arrayidx17, align 1, !dbg !2824
  %arrayidx18 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 18, !dbg !2825
  store i8 1, i8* %arrayidx18, align 2, !dbg !2826
  %arrayidx19 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 19, !dbg !2827
  store i8 1, i8* %arrayidx19, align 1, !dbg !2828
  %arrayidx20 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 20, !dbg !2829
  store i8 1, i8* %arrayidx20, align 4, !dbg !2830
  %arrayidx21 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 21, !dbg !2831
  store i8 1, i8* %arrayidx21, align 1, !dbg !2832
  %arrayidx22 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 22, !dbg !2833
  store i8 1, i8* %arrayidx22, align 2, !dbg !2834
  %arrayidx23 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 23, !dbg !2835
  store i8 1, i8* %arrayidx23, align 1, !dbg !2836
  %arrayidx24 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 24, !dbg !2837
  store i8 1, i8* %arrayidx24, align 8, !dbg !2838
  %arrayidx25 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 25, !dbg !2839
  store i8 1, i8* %arrayidx25, align 1, !dbg !2840
  %arrayidx26 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 26, !dbg !2841
  store i8 1, i8* %arrayidx26, align 2, !dbg !2842
  %arrayidx27 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 27, !dbg !2843
  store i8 1, i8* %arrayidx27, align 1, !dbg !2844
  %arrayidx28 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 28, !dbg !2845
  store i8 1, i8* %arrayidx28, align 4, !dbg !2846
  %arrayidx29 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 29, !dbg !2847
  store i8 1, i8* %arrayidx29, align 1, !dbg !2848
  %arrayidx30 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 30, !dbg !2849
  store i8 1, i8* %arrayidx30, align 2, !dbg !2850
  %arrayidx31 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 31, !dbg !2851
  store i8 1, i8* %arrayidx31, align 1, !dbg !2852
  %arrayidx32 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 32, !dbg !2853
  store i8 1, i8* %arrayidx32, align 16, !dbg !2854
  %arrayidx33 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 33, !dbg !2855
  store i8 1, i8* %arrayidx33, align 1, !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2786, metadata !DIExpression()), !dbg !2857
  br label %for.cond, !dbg !2858

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2860
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2786, metadata !DIExpression()), !dbg !2857
  %exitcond = icmp eq i64 %indvars.iv, 34, !dbg !2861
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2863

for.body:                                         ; preds = %for.cond
  %arrayidx34 = getelementptr inbounds [34 x i8], [34 x i8]* %handled_p, i64 0, i64 %indvars.iv, !dbg !2864
  %1 = load i8, i8* %arrayidx34, align 1, !dbg !2864
  %tobool = icmp eq i8 %1, 0, !dbg !2864
  br i1 %tobool, label %cond.true, label %for.inc, !dbg !2864

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2864
  br label %for.inc, !dbg !2864

for.inc:                                          ; preds = %for.body, %cond.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i32 undef, metadata !2786, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2857
  br label %for.cond, !dbg !2866, !llvm.loop !2867

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 34, i8* nonnull %0) #8, !dbg !2869
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gate_lto_out() local_unnamed_addr #5 !dbg !2870 {
entry:
  %0 = load i32, i32* @flag_generate_lto, align 4, !dbg !2873
  %tobool = icmp eq i32 %0, 0, !dbg !2873
  br i1 %tobool, label %lor.lhs.false, label %land.rhs, !dbg !2874

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @in_lto_p, align 1, !dbg !2875
  %tobool1 = icmp eq i8 %1, 0, !dbg !2875
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !2876

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2877
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 1, i64 4, !dbg !2877
  %3 = load i32, i32* %arrayidx, align 8, !dbg !2877
  %tobool2 = icmp eq i32 %3, 0, !dbg !2877
  br i1 %tobool2, label %lor.rhs, label %lor.end, !dbg !2878

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 1, i64 5, !dbg !2879
  %4 = load i32, i32* %arrayidx4, align 4, !dbg !2879
  %tobool5 = icmp eq i32 %4, 0, !dbg !2878
  %phitmp2 = zext i1 %tobool5 to i8, !dbg !2878
  br label %lor.end, !dbg !2878

lor.end:                                          ; preds = %land.rhs, %lor.rhs
  %5 = phi i8 [ 0, %land.rhs ], [ %phitmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false, %lor.end
  %6 = phi i8 [ 0, %lor.lhs.false ], [ %5, %lor.end ]
  ret i8 %6, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local void @lto_check_version(i32 %major, i32 %minor) local_unnamed_addr #5 !dbg !2881 {
entry:
  call void @llvm.dbg.value(metadata i32 %major, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 %minor, metadata !2886, metadata !DIExpression()), !dbg !2887
  %cmp = icmp ne i32 %major, 1, !dbg !2888
  %cmp1 = icmp ne i32 %minor, 0, !dbg !2890
  %or.cond = or i1 %cmp, %cmp1, !dbg !2891
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2891

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.51, i64 0, i64 0), i32 %major, i32 %minor, i32 1, i32 0) #6, !dbg !2892
  br label %if.end, !dbg !2892

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2893
}

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitpack_word_t_heap_reserve(%struct.VEC_bitpack_word_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_heap** %vec_, metadata !2898, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 1, metadata !2899, metadata !DIExpression()), !dbg !2901
  %0 = load %struct.VEC_bitpack_word_t_heap*, %struct.VEC_bitpack_word_t_heap** %vec_, align 8, !dbg !2902
  %tobool = icmp eq %struct.VEC_bitpack_word_t_heap* %0, null, !dbg !2902
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2902

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_bitpack_word_t_heap, %struct.VEC_bitpack_word_t_heap* %0, i64 0, i32 0, !dbg !2902
  br label %cond.end, !dbg !2902

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_bitpack_word_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2902
  %call = tail call fastcc i32 @VEC_bitpack_word_t_base_space(%struct.VEC_bitpack_word_t_base* %cond, i32 1) #7, !dbg !2902
  %tobool1 = icmp eq i32 %call, 0, !dbg !2902
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2900, metadata !DIExpression()), !dbg !2901
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2902

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_bitpack_word_t_heap** %vec_ to i8**, !dbg !2903
  %2 = load i8*, i8** %1, align 8, !dbg !2903
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 8) #6, !dbg !2903
  store i8* %call3, i8** %1, align 8, !dbg !2903
  br label %if.end, !dbg !2903

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2902
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64* @VEC_bitpack_word_t_base_quick_push(%struct.VEC_bitpack_word_t_base* %vec_, i64 %obj_) unnamed_addr #0 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_base* %vec_, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 0, metadata !2910, metadata !DIExpression()), !dbg !2912
  %num1 = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 0, !dbg !2913
  %0 = load i32, i32* %num1, align 8, !dbg !2913
  %inc = add i32 %0, 1, !dbg !2913
  store i32 %inc, i32* %num1, align 8, !dbg !2913
  %idxprom = zext i32 %0 to i64, !dbg !2913
  %arrayidx = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2913
  call void @llvm.dbg.value(metadata i64* %arrayidx, metadata !2911, metadata !DIExpression()), !dbg !2912
  store i64 0, i64* %arrayidx, align 8, !dbg !2913
  ret i64* %arrayidx, !dbg !2913
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_bitpack_word_t_base_space(%struct.VEC_bitpack_word_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_bitpack_word_t_base* %vec_, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32 1, metadata !2919, metadata !DIExpression()), !dbg !2920
  %tobool = icmp eq %struct.VEC_bitpack_word_t_base* %vec_, null, !dbg !2921
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2921

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 1, !dbg !2921
  %0 = load i32, i32* %alloc, align 4, !dbg !2921
  %num = getelementptr inbounds %struct.VEC_bitpack_word_t_base, %struct.VEC_bitpack_word_t_base* %vec_, i64 0, i32 0, !dbg !2921
  %1 = load i32, i32* %num, align 8, !dbg !2921
  %cmp1 = icmp ne i32 %0, %1, !dbg !2921
  %phitmp = zext i1 %cmp1 to i32, !dbg !2921
  br label %cond.end, !dbg !2921

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2921

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2921
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_streamer_cache_add_to_node_array(%struct.lto_streamer_cache_d* %cache, i32 %ix, %union.tree_node* %t, i32 %offset) unnamed_addr #5 !dbg !2922 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_streamer_cache_d* %cache, metadata !2926, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %ix, metadata !2927, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2928, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %offset, metadata !2929, metadata !DIExpression()), !dbg !2933
  %cmp = icmp sgt i32 %ix, -1, !dbg !2934
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2934

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 455, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2934
  br label %cond.end, !dbg !2934

cond.end:                                         ; preds = %entry, %cond.true
  %nodes = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 2, !dbg !2935
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %nodes, align 8, !dbg !2935
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2935
  br i1 %tobool, label %cond.end4, label %cond.true1, !dbg !2935

cond.true1:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2935
  br label %cond.end4, !dbg !2935

cond.end4:                                        ; preds = %cond.end, %cond.true1
  %cond5 = phi %struct.VEC_tree_base* [ %base, %cond.true1 ], [ null, %cond.end ], !dbg !2935
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond5) #7, !dbg !2935
  %cmp6 = icmp sgt i32 %call, %ix, !dbg !2936
  br i1 %cmp6, label %if.end, label %if.then, !dbg !2937

if.then:                                          ; preds = %cond.end4
  %add = add nsw i32 %ix, 20, !dbg !2938
  %div = sdiv i32 %add, 4, !dbg !2939
  %add7 = add nsw i32 %div, %ix, !dbg !2940
  tail call fastcc void @VEC_tree_gc_safe_grow_cleared(%struct.VEC_tree_gc** nonnull %nodes, i32 %add7) #7, !dbg !2941
  %offsets = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 3, !dbg !2942
  tail call fastcc void @VEC_unsigned_heap_safe_grow_cleared(%struct.VEC_unsigned_heap** nonnull %offsets, i32 %add7) #7, !dbg !2942
  br label %if.end, !dbg !2943

if.end:                                           ; preds = %cond.end4, %if.then
  %1 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %nodes, align 8, !dbg !2944
  %tobool12 = icmp eq %struct.VEC_tree_gc* %1, null, !dbg !2944
  br i1 %tobool12, label %cond.end17, label %cond.true13, !dbg !2944

cond.true13:                                      ; preds = %if.end
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %1, i64 0, i32 0, !dbg !2944
  br label %cond.end17, !dbg !2944

cond.end17:                                       ; preds = %if.end, %cond.true13
  %cond18 = phi %struct.VEC_tree_base* [ %base15, %cond.true13 ], [ null, %if.end ], !dbg !2944
  %call19 = tail call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %cond18, i32 %ix, %union.tree_node* %t) #7, !dbg !2944
  %offsets20 = getelementptr inbounds %struct.lto_streamer_cache_d, %struct.lto_streamer_cache_d* %cache, i64 0, i32 3, !dbg !2945
  %2 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %offsets20, align 8, !dbg !2945
  %tobool21 = icmp eq %struct.VEC_unsigned_heap* %2, null, !dbg !2945
  br i1 %tobool21, label %cond.end26, label %cond.true22, !dbg !2945

cond.true22:                                      ; preds = %cond.end17
  %base24 = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %2, i64 0, i32 0, !dbg !2945
  br label %cond.end26, !dbg !2945

cond.end26:                                       ; preds = %cond.end17, %cond.true22
  %cond27 = phi %struct.VEC_unsigned_base* [ %base24, %cond.true22 ], [ null, %cond.end17 ], !dbg !2945
  %call28 = tail call fastcc i32 @VEC_unsigned_base_replace(%struct.VEC_unsigned_base* %cond27, i32 %ix, i32 %offset) #7, !dbg !2945
  ret void, !dbg !2946
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_unsigned_base_index(%struct.VEC_unsigned_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_base* %vec_, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2954, metadata !DIExpression()), !dbg !2955
  br label %land.end, !dbg !2956

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2956
  %arrayidx = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2956
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2956
  ret i32 %0, !dbg !2956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @lto_stream_as_builtin_p(%union.tree_node* %expr) unnamed_addr #0 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2961, metadata !DIExpression()), !dbg !2962
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2963
  %bf.load = load i64, i64* %0, align 8, !dbg !2963
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2964
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2964
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2965

land.lhs.true:                                    ; preds = %entry
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2966
  %1 = load i32, i32* %locus, align 8, !dbg !2966
  %cmp1 = icmp ult i32 %1, 2, !dbg !2966
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !2967

land.rhs:                                         ; preds = %land.lhs.true
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 5, !dbg !2968
  %bf.load2 = load i32, i32* %built_in_class, align 8, !dbg !2968
  %bf.clear3 = and i32 %bf.load2, 6144, !dbg !2968
  %cmp4 = icmp eq i32 %bf.clear3, 6144, !dbg !2969
  br i1 %cmp4, label %land.end, label %lor.rhs, !dbg !2970

lor.rhs:                                          ; preds = %land.rhs
  %cmp10 = icmp eq i32 %bf.clear3, 4096, !dbg !2971
  %phitmp = zext i1 %cmp10 to i8, !dbg !2970
  br label %land.end, !dbg !2970

land.end:                                         ; preds = %land.rhs, %lor.rhs, %land.lhs.true, %entry
  %2 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  ret i8 %2, !dbg !2972
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_safe_grow_cleared(%struct.VEC_tree_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !2973 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2978, metadata !DIExpression()), !dbg !2980
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2981
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2981
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2981

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !2981
  br label %cond.end, !dbg !2981

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2981
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %call, metadata !2979, metadata !DIExpression()), !dbg !2980
  tail call fastcc void @VEC_tree_gc_safe_grow(%struct.VEC_tree_gc** %vec_, i32 %size_) #7, !dbg !2981
  %1 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !2981
  %tobool1 = icmp eq %struct.VEC_tree_gc* %1, null, !dbg !2981
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2981

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %1, i64 0, i32 0, !dbg !2981
  br label %cond.end5, !dbg !2981

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_tree_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !2981
  %call7 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %cond6) #7, !dbg !2981
  %idxprom = sext i32 %call to i64, !dbg !2981
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call7, i64 %idxprom, !dbg !2981
  %2 = bitcast %union.tree_node** %arrayidx to i8*, !dbg !2981
  %sub = sub nsw i32 %size_, %call, !dbg !2981
  %conv = sext i32 %sub to i64, !dbg !2981
  %mul = shl nsw i64 %conv, 3, !dbg !2981
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !2981
  ret void, !dbg !2981
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow_cleared(%struct.VEC_unsigned_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2982 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_heap** %vec_, metadata !2986, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2987, metadata !DIExpression()), !dbg !2989
  %0 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !2990
  %tobool = icmp eq %struct.VEC_unsigned_heap* %0, null, !dbg !2990
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2990

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %0, i64 0, i32 0, !dbg !2990
  br label %cond.end, !dbg !2990

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_unsigned_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2990
  %call = tail call fastcc i32 @VEC_unsigned_base_length(%struct.VEC_unsigned_base* %cond) #7, !dbg !2990
  call void @llvm.dbg.value(metadata i32 %call, metadata !2988, metadata !DIExpression()), !dbg !2989
  tail call fastcc void @VEC_unsigned_heap_safe_grow(%struct.VEC_unsigned_heap** %vec_, i32 %size_) #7, !dbg !2990
  %1 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !2990
  %tobool1 = icmp eq %struct.VEC_unsigned_heap* %1, null, !dbg !2990
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2990

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %1, i64 0, i32 0, !dbg !2990
  br label %cond.end5, !dbg !2990

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_unsigned_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !2990
  %call7 = tail call fastcc i32* @VEC_unsigned_base_address(%struct.VEC_unsigned_base* %cond6) #7, !dbg !2990
  %idxprom = sext i32 %call to i64, !dbg !2990
  %arrayidx = getelementptr inbounds i32, i32* %call7, i64 %idxprom, !dbg !2990
  %2 = bitcast i32* %arrayidx to i8*, !dbg !2990
  %sub = sub nsw i32 %size_, %call, !dbg !2990
  %conv = sext i32 %sub to i64, !dbg !2990
  %mul = shl nsw i64 %conv, 2, !dbg !2990
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !2990
  ret void, !dbg !2990
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2991 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2996, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2997, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2998, metadata !DIExpression()), !dbg !3000
  %idxprom = zext i32 %ix_ to i64, !dbg !3001
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3001
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3001
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2999, metadata !DIExpression()), !dbg !3000
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3001
  ret %union.tree_node* %0, !dbg !3001
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_unsigned_base_replace(%struct.VEC_unsigned_base* %vec_, i32 %ix_, i32 %obj_) unnamed_addr #0 !dbg !3002 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_base* %vec_, metadata !3007, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3009, metadata !DIExpression()), !dbg !3011
  %idxprom = zext i32 %ix_ to i64, !dbg !3012
  %arrayidx = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3012
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3012
  call void @llvm.dbg.value(metadata i32 %0, metadata !3010, metadata !DIExpression()), !dbg !3011
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3012
  ret i32 %0, !dbg !3012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_safe_grow(%struct.VEC_tree_gc** %vec_, i32 %size_) unnamed_addr #0 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3016, metadata !DIExpression()), !dbg !3017
  %cmp = icmp sgt i32 %size_, -1, !dbg !3018
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3018

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !3018
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !3018
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3018

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !3018
  br label %cond.end, !dbg !3018

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3018
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3018
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !3018
  %tobool2 = icmp eq %struct.VEC_tree_gc* %1, null, !dbg !3018
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3018

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %1, i64 0, i32 0, i32 0, !dbg !3018
  %2 = load i32, i32* %num, align 8, !dbg !3018
  br label %cond.end11, !dbg !3018

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3018
  %sub = sub nsw i32 %size_, %cond12, !dbg !3018
  %call13 = tail call fastcc i32 @VEC_tree_gc_reserve_exact(%struct.VEC_tree_gc** %vec_, i32 %sub) #7, !dbg !3018
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !3018
  %num20 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, i32 0, !dbg !3018
  store i32 %size_, i32* %num20, align 8, !dbg !3018
  ret void, !dbg !3018
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3019 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3023, metadata !DIExpression()), !dbg !3024
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3025
  %arraydecay = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 0, !dbg !3025
  %cond = select i1 %tobool, %union.tree_node** null, %union.tree_node** %arraydecay, !dbg !3025
  ret %union.tree_node** %cond, !dbg !3025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve_exact(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !3030, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3031, metadata !DIExpression()), !dbg !3033
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !3034
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !3034
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3034

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !3034
  br label %cond.end, !dbg !3034

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3034
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 %alloc_) #7, !dbg !3034
  %tobool1 = icmp eq i32 %call, 0, !dbg !3034
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3032, metadata !DIExpression()), !dbg !3033
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3034

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_gc** %vec_ to i8**, !dbg !3035
  %2 = load i8*, i8** %1, align 8, !dbg !3035
  %call3 = tail call i8* @vec_gc_p_reserve_exact(i8* %2, i32 %alloc_) #6, !dbg !3035
  store i8* %call3, i8** %1, align 8, !dbg !3035
  br label %if.end, !dbg !3035

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3034
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3037 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3042, metadata !DIExpression()), !dbg !3043
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3044
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3044

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3044
  %0 = load i32, i32* %alloc, align 4, !dbg !3044
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3044
  %1 = load i32, i32* %num, align 8, !dbg !3044
  %sub = sub i32 %0, %1, !dbg !3044
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3044
  br label %cond.end, !dbg !3044

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3044
  br label %cond.end, !dbg !3044

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3044
  ret i32 %cond, !dbg !3044
}

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_unsigned_base_length(%struct.VEC_unsigned_base* %vec_) unnamed_addr #0 !dbg !3045 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_base* %vec_, metadata !3049, metadata !DIExpression()), !dbg !3050
  %tobool = icmp eq %struct.VEC_unsigned_base* %vec_, null, !dbg !3051
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3051

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 0, !dbg !3051
  %0 = load i32, i32* %num, align 4, !dbg !3051
  br label %cond.end, !dbg !3051

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3051
  ret i32 %cond, !dbg !3051
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow(%struct.VEC_unsigned_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3052 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_heap** %vec_, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3055, metadata !DIExpression()), !dbg !3056
  %cmp = icmp sgt i32 %size_, -1, !dbg !3057
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3057

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !3057
  %tobool = icmp eq %struct.VEC_unsigned_heap* %0, null, !dbg !3057
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3057

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %0, i64 0, i32 0, !dbg !3057
  br label %cond.end, !dbg !3057

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_unsigned_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3057
  %call = tail call fastcc i32 @VEC_unsigned_base_length(%struct.VEC_unsigned_base* %cond) #7, !dbg !3057
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !3057
  %tobool2 = icmp eq %struct.VEC_unsigned_heap* %1, null, !dbg !3057
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3057

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %1, i64 0, i32 0, i32 0, !dbg !3057
  %2 = load i32, i32* %num, align 4, !dbg !3057
  br label %cond.end11, !dbg !3057

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3057
  %sub = sub nsw i32 %size_, %cond12, !dbg !3057
  %call13 = tail call fastcc i32 @VEC_unsigned_heap_reserve_exact(%struct.VEC_unsigned_heap** %vec_, i32 %sub) #7, !dbg !3057
  %3 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !3057
  %num20 = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %3, i64 0, i32 0, i32 0, !dbg !3057
  store i32 %size_, i32* %num20, align 4, !dbg !3057
  ret void, !dbg !3057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_unsigned_base_address(%struct.VEC_unsigned_base* %vec_) unnamed_addr #0 !dbg !3058 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_base* %vec_, metadata !3062, metadata !DIExpression()), !dbg !3063
  %tobool = icmp eq %struct.VEC_unsigned_base* %vec_, null, !dbg !3064
  %arraydecay = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 2, i64 0, !dbg !3064
  %cond = select i1 %tobool, i32* null, i32* %arraydecay, !dbg !3064
  ret i32* %cond, !dbg !3064
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_unsigned_heap_reserve_exact(%struct.VEC_unsigned_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3065 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_heap** %vec_, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3070, metadata !DIExpression()), !dbg !3072
  %0 = load %struct.VEC_unsigned_heap*, %struct.VEC_unsigned_heap** %vec_, align 8, !dbg !3073
  %tobool = icmp eq %struct.VEC_unsigned_heap* %0, null, !dbg !3073
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3073

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_unsigned_heap, %struct.VEC_unsigned_heap* %0, i64 0, i32 0, !dbg !3073
  br label %cond.end, !dbg !3073

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_unsigned_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3073
  %call = tail call fastcc i32 @VEC_unsigned_base_space(%struct.VEC_unsigned_base* %cond, i32 %alloc_) #7, !dbg !3073
  %tobool1 = icmp eq i32 %call, 0, !dbg !3073
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3071, metadata !DIExpression()), !dbg !3072
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3073

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_unsigned_heap** %vec_ to i8**, !dbg !3074
  %2 = load i8*, i8** %1, align 8, !dbg !3074
  %call3 = tail call i8* @vec_heap_o_reserve_exact(i8* %2, i32 %alloc_, i64 8, i64 4) #6, !dbg !3074
  store i8* %call3, i8** %1, align 8, !dbg !3074
  br label %if.end, !dbg !3074

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3073
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_unsigned_base_space(%struct.VEC_unsigned_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_unsigned_base* %vec_, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3081, metadata !DIExpression()), !dbg !3082
  %tobool = icmp eq %struct.VEC_unsigned_base* %vec_, null, !dbg !3083
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3083

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 1, !dbg !3083
  %0 = load i32, i32* %alloc, align 4, !dbg !3083
  %num = getelementptr inbounds %struct.VEC_unsigned_base, %struct.VEC_unsigned_base* %vec_, i64 0, i32 0, !dbg !3083
  %1 = load i32, i32* %num, align 4, !dbg !3083
  %sub = sub i32 %0, %1, !dbg !3083
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3083
  br label %cond.end, !dbg !3083

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3083
  br label %cond.end, !dbg !3083

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3083
  ret i32 %cond, !dbg !3083
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_record_common_node(%union.tree_node** %nodep, %struct.VEC_tree_heap** %common_nodes, %struct.pointer_set_t* %seen_nodes) unnamed_addr #5 !dbg !3084 {
entry:
  br label %tailrecurse, !dbg !3092

tailrecurse:                                      ; preds = %if.then33, %entry
  %nodep.tr = phi %union.tree_node** [ %nodep, %entry ], [ %type, %if.then33 ]
  call void @llvm.dbg.value(metadata %union.tree_node** %nodep.tr, metadata !3088, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %common_nodes, metadata !3089, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %seen_nodes, metadata !3090, metadata !DIExpression()), !dbg !3096
  %0 = load %union.tree_node*, %union.tree_node** %nodep.tr, align 8, !dbg !3097
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3091, metadata !DIExpression()), !dbg !3096
  %cmp = icmp eq %union.tree_node* %0, null, !dbg !3098
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !3100

if.end:                                           ; preds = %tailrecurse
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3101
  %bf.load = load i64, i64* %1, align 8, !dbg !3101
  %bf.cast = and i64 %bf.load, 65535, !dbg !3101
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3101
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3101
  %cmp1 = icmp eq i32 %2, 2, !dbg !3101
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3103

if.then2:                                         ; preds = %if.end
  %call = tail call %union.tree_node* @gimple_register_type(%union.tree_node* nonnull %0) #6, !dbg !3104
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3091, metadata !DIExpression()), !dbg !3096
  store %union.tree_node* %call, %union.tree_node** %nodep.tr, align 8, !dbg !3105
  br label %if.end3, !dbg !3106

if.end3:                                          ; preds = %if.then2, %if.end
  %node.0 = phi %union.tree_node* [ %call, %if.then2 ], [ %0, %if.end ], !dbg !3096
  call void @llvm.dbg.value(metadata %union.tree_node* %node.0, metadata !3091, metadata !DIExpression()), !dbg !3096
  %3 = bitcast %union.tree_node* %node.0 to i8*, !dbg !3107
  %call4 = tail call i32 @pointer_set_insert(%struct.pointer_set_t* %seen_nodes, i8* %3) #6, !dbg !3109
  %tobool = icmp eq i32 %call4, 0, !dbg !3109
  br i1 %tobool, label %if.end6, label %cleanup.cont, !dbg !3110

if.end6:                                          ; preds = %if.end3
  %call7 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %common_nodes, %union.tree_node* %node.0) #7, !dbg !3111
  %call8 = tail call zeroext i8 @tree_node_can_be_shared(%union.tree_node* %node.0) #6, !dbg !3112
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3112
  br i1 %tobool9, label %cleanup.cont, label %if.then10, !dbg !3113

if.then10:                                        ; preds = %if.end6
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %node.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3114
  %bf.load12 = load i64, i64* %4, align 8, !dbg !3114
  %bf.cast141 = and i64 %bf.load12, 65535, !dbg !3114
  %cmp15 = icmp eq i64 %bf.cast141, 10, !dbg !3114
  br i1 %cmp15, label %if.then33, label %lor.lhs.false, !dbg !3114

lor.lhs.false:                                    ; preds = %if.then10
  %cmp20 = icmp eq i64 %bf.cast141, 12, !dbg !3114
  br i1 %cmp20, label %if.then33, label %lor.lhs.false21, !dbg !3115

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %5 = or i64 %bf.cast141, 2, !dbg !3116
  %6 = icmp eq i64 %5, 15, !dbg !3116
  br i1 %6, label %if.then33, label %cleanup.cont, !dbg !3116

if.then33:                                        ; preds = %lor.lhs.false21, %lor.lhs.false, %if.then10
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %node.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3117
  br label %tailrecurse, !dbg !3092

cleanup.cont:                                     ; preds = %lor.lhs.false21, %if.end6, %if.end3, %tailrecurse
  ret void, !dbg !3118
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local %union.tree_node* @gimple_register_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @pointer_set_insert(%struct.pointer_set_t*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3119 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3124, metadata !DIExpression()), !dbg !3125
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !3126
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3126
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3126
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3126

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3126
  br label %cond.end, !dbg !3126

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3126
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !3126
  ret %union.tree_node** %call1, !dbg !3126
}

declare dso_local zeroext i8 @tree_node_can_be_shared(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3127 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3131, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i32 1, metadata !3132, metadata !DIExpression()), !dbg !3134
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3135
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3135
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3135

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3135
  br label %cond.end, !dbg !3135

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3135
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !3135
  %tobool1 = icmp eq i32 %call, 0, !dbg !3135
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3133, metadata !DIExpression()), !dbg !3134
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3135

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3136
  %2 = load i8*, i8** %1, align 8, !dbg !3136
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3136
  store i8* %call3, i8** %1, align 8, !dbg !3136
  br label %if.end, !dbg !3136

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3135
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !3138 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !3143, metadata !DIExpression()), !dbg !3145
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3146
  %0 = load i32, i32* %num1, align 8, !dbg !3146
  %inc = add i32 %0, 1, !dbg !3146
  store i32 %inc, i32* %num1, align 8, !dbg !3146
  %idxprom = zext i32 %0 to i64, !dbg !3146
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3146
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !3144, metadata !DIExpression()), !dbg !3145
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !3146
  ret %union.tree_node** %arrayidx, !dbg !3146
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1584, !1585, !1586}
!llvm.ident = !{!1587}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "lto_obstack_initialized", scope: !2, file: !3, line: 43, type: !320, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !318, globals: !1555, nameTableKind: None)
!3 = !DIFile(filename: "lto-streamer.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !36, !231, !237, !242, !247, !265, !272, !279}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "LTO_tags", file: !6, line: 175, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!9 = !DIEnumerator(name: "LTO_null", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LTO_bb0", value: 224, isUnsigned: true)
!11 = !DIEnumerator(name: "LTO_bb1", value: 225, isUnsigned: true)
!12 = !DIEnumerator(name: "LTO_eh_region", value: 226, isUnsigned: true)
!13 = !DIEnumerator(name: "LTO_builtin_decl", value: 227, isUnsigned: true)
!14 = !DIEnumerator(name: "LTO_function", value: 228, isUnsigned: true)
!15 = !DIEnumerator(name: "LTO_eh_table", value: 229, isUnsigned: true)
!16 = !DIEnumerator(name: "LTO_ert_cleanup", value: 230, isUnsigned: true)
!17 = !DIEnumerator(name: "LTO_ert_try", value: 231, isUnsigned: true)
!18 = !DIEnumerator(name: "LTO_ert_allowed_exceptions", value: 232, isUnsigned: true)
!19 = !DIEnumerator(name: "LTO_ert_must_not_throw", value: 233, isUnsigned: true)
!20 = !DIEnumerator(name: "LTO_eh_landing_pad", value: 234, isUnsigned: true)
!21 = !DIEnumerator(name: "LTO_eh_catch", value: 235, isUnsigned: true)
!22 = !DIEnumerator(name: "LTO_tree_pickle_reference", value: 236, isUnsigned: true)
!23 = !DIEnumerator(name: "LTO_var_decl_alias", value: 237, isUnsigned: true)
!24 = !DIEnumerator(name: "LTO_field_decl_ref", value: 238, isUnsigned: true)
!25 = !DIEnumerator(name: "LTO_function_decl_ref", value: 239, isUnsigned: true)
!26 = !DIEnumerator(name: "LTO_label_decl_ref", value: 240, isUnsigned: true)
!27 = !DIEnumerator(name: "LTO_namespace_decl_ref", value: 241, isUnsigned: true)
!28 = !DIEnumerator(name: "LTO_result_decl_ref", value: 242, isUnsigned: true)
!29 = !DIEnumerator(name: "LTO_ssa_name_ref", value: 243, isUnsigned: true)
!30 = !DIEnumerator(name: "LTO_type_decl_ref", value: 244, isUnsigned: true)
!31 = !DIEnumerator(name: "LTO_type_ref", value: 245, isUnsigned: true)
!32 = !DIEnumerator(name: "LTO_const_decl_ref", value: 246, isUnsigned: true)
!33 = !DIEnumerator(name: "LTO_imported_decl_ref", value: 247, isUnsigned: true)
!34 = !DIEnumerator(name: "LTO_global_decl_ref", value: 248, isUnsigned: true)
!35 = !DIEnumerator(name: "LTO_NUM_TAGS", value: 249, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !37, line: 39, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!39 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!68 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!69 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!70 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!71 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!72 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!74 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!75 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!76 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!77 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!78 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!79 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!80 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!81 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!82 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!83 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!84 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!85 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!86 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!87 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!88 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!89 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!90 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!91 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!92 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!93 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!94 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!95 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!96 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!97 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!98 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!99 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!100 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!101 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!102 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!103 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!104 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!105 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!106 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!107 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!108 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!109 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!110 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!111 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!112 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!113 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!114 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!115 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!116 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!117 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!118 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!121 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!122 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!123 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!124 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!125 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!126 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!127 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!130 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!131 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!136 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!137 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!138 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!139 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!140 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!141 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!142 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!143 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!144 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!145 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!146 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!147 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!148 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!149 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!150 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!151 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!152 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!153 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!154 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!155 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!156 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!157 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!158 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!159 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!160 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!161 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!162 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!163 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!164 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!165 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!166 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!167 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!168 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!169 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!170 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!171 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!172 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!173 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!174 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!175 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!176 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!177 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!178 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!179 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!180 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!181 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!182 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!183 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!184 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!185 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!186 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!187 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!189 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!190 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!191 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!203 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!204 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!206 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!207 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!208 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!209 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!210 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!224 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!225 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!226 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!227 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!228 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!229 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!230 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !232, line: 363, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!233 = !{!234, !235, !236}
!234 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!235 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!236 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !232, line: 355, baseType: !7, size: 32, elements: !238)
!238 = !{!239, !240, !241}
!239 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!240 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!241 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !243, line: 474, baseType: !7, size: 32, elements: !244)
!243 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!244 = !{!245, !246}
!245 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!246 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !37, line: 280, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!249 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!250 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!251 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!252 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!253 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!254 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!255 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!256 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!257 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!258 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!259 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!260 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!261 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!262 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!263 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!264 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !37, line: 1817, baseType: !7, size: 32, elements: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!268 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!269 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!270 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!271 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !37, line: 1805, baseType: !7, size: 32, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!275 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!276 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!277 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!278 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !280, line: 51, baseType: !7, size: 32, elements: !281)
!280 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!282 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!283 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!284 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!285 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!286 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!287 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!288 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!289 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!290 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!291 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!292 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!293 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!294 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!295 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!296 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!297 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!298 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!299 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!300 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!301 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!302 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!303 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!304 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!305 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!306 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!307 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!308 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!309 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!310 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!311 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!312 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!313 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!314 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!315 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!316 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!317 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!318 = !{!319, !320, !321, !322, !325, !326, !328, !391, !392, !412, !415, !7, !422, !1530, !36, !279, !400, !1052, !1537, !528, !1550}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!321 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !329, line: 47, baseType: !330)
!329 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !332, line: 75, size: 256, elements: !333)
!332 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!333 = !{!334, !349, !350, !351}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !331, file: !332, line: 76, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !332, line: 68, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !332, line: 63, size: 320, elements: !338)
!338 = !{!339, !341, !342, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !332, line: 64, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !337, file: !332, line: 65, baseType: !340, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !337, file: !332, line: 66, baseType: !7, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !337, file: !332, line: 67, baseType: !344, size: 128, offset: 192)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 128, elements: !347)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !332, line: 29, baseType: !346)
!346 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!347 = !{!348}
!348 = !DISubrange(count: 2)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !331, file: !332, line: 77, baseType: !335, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !331, file: !332, line: 78, baseType: !7, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !331, file: !332, line: 79, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !332, line: 49, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !332, line: 45, size: 832, elements: !355)
!355 = !{!356, !357, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !354, file: !332, line: 46, baseType: !340, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !354, file: !332, line: 47, baseType: !330, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !354, file: !332, line: 48, baseType: !359, size: 704, offset: 128)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !360, line: 164, size: 704, elements: !361)
!360 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!361 = !{!362, !364, !374, !375, !376, !377, !378, !379, !383, !387, !388, !389, !390}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !359, file: !360, line: 166, baseType: !363, size: 64)
!363 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !359, file: !360, line: 167, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !360, line: 157, size: 192, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !366, file: !360, line: 159, baseType: !323, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !366, file: !360, line: 160, baseType: !365, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !366, file: !360, line: 161, baseType: !371, size: 32, offset: 128)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 32, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 4)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !359, file: !360, line: 168, baseType: !323, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !359, file: !360, line: 169, baseType: !323, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !359, file: !360, line: 170, baseType: !323, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !359, file: !360, line: 171, baseType: !363, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !359, file: !360, line: 172, baseType: !321, size: 32, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !359, file: !360, line: 176, baseType: !380, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!365, !325, !363}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !359, file: !360, line: 177, baseType: !384, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !325, !365}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !359, file: !360, line: 178, baseType: !325, size: 64, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !359, file: !360, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !359, file: !360, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !359, file: !360, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!391 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitpack_d", file: !6, line: 156, size: 192, elements: !394)
!394 = !{!395, !398, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "num_bits", scope: !393, file: !6, line: 159, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !397, line: 46, baseType: !346)
!397 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused_bit", scope: !393, file: !6, line: 165, baseType: !396, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !393, file: !6, line: 168, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_heap", file: !6, line: 154, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_heap", file: !6, line: 154, size: 128, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !402, file: !6, line: 154, baseType: !405, size: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_bitpack_word_t_base", file: !6, line: 153, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_bitpack_word_t_base", file: !6, line: 153, size: 128, elements: !407)
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !406, file: !6, line: 153, baseType: !7, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !406, file: !6, line: 153, baseType: !7, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !406, file: !6, line: 153, baseType: !411, size: 64, offset: 64)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 64, elements: !413)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitpack_word_t", file: !6, line: 152, baseType: !346)
!413 = !{!414}
!414 = !DISubrange(count: 1)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_map", file: !37, line: 5290, size: 128, elements: !417)
!417 = !{!418, !1529}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !416, file: !37, line: 5291, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_map_base", file: !37, line: 5267, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !419, file: !37, line: 5268, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !329, line: 56, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !37, line: 3371, size: 1792, elements: !425)
!425 = !{!426, !459, !465, !476, !483, !490, !495, !502, !508, !521, !533, !571, !579, !607, !624, !625, !630, !639, !645, !650, !654, !658, !1178, !1227, !1233, !1239, !1246, !1259, !1273, !1290, !1302, !1324, !1339, !1511}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !424, file: !37, line: 3372, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !37, line: 360, size: 64, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !427, file: !37, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !427, file: !37, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !427, file: !37, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !427, file: !37, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !427, file: !37, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !427, file: !37, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !427, file: !37, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !427, file: !37, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !427, file: !37, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !427, file: !37, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !427, file: !37, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !427, file: !37, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !427, file: !37, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !427, file: !37, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !427, file: !37, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !427, file: !37, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !427, file: !37, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !427, file: !37, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !427, file: !37, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !427, file: !37, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !427, file: !37, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !427, file: !37, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !427, file: !37, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !427, file: !37, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !427, file: !37, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !427, file: !37, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !427, file: !37, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !427, file: !37, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !427, file: !37, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !427, file: !37, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !424, file: !37, line: 3373, baseType: !460, size: 192)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !37, line: 402, size: 192, elements: !461)
!461 = !{!462, !463, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !460, file: !37, line: 403, baseType: !427, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !460, file: !37, line: 404, baseType: !422, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !37, line: 405, baseType: !422, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !424, file: !37, line: 3374, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !37, line: 1384, size: 320, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !466, file: !37, line: 1385, baseType: !460, size: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !466, file: !37, line: 1386, baseType: !470, size: 128, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !471, line: 58, baseType: !472)
!471 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 54, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !472, file: !471, line: 56, baseType: !346, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !472, file: !471, line: 57, baseType: !363, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !424, file: !37, line: 3375, baseType: !477, size: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !37, line: 1397, size: 256, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !477, file: !37, line: 1398, baseType: !460, size: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !477, file: !37, line: 1399, baseType: !481, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !37, line: 1392, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !424, file: !37, line: 3376, baseType: !484, size: 256)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !37, line: 1408, size: 256, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !484, file: !37, line: 1409, baseType: !460, size: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !484, file: !37, line: 1410, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !37, line: 1403, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !424, file: !37, line: 3377, baseType: !491, size: 256)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !37, line: 1437, size: 256, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !491, file: !37, line: 1438, baseType: !460, size: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !491, file: !37, line: 1439, baseType: !422, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !424, file: !37, line: 3378, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !37, line: 1418, size: 256, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !37, line: 1419, baseType: !460, size: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !496, file: !37, line: 1420, baseType: !321, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !496, file: !37, line: 1421, baseType: !501, size: 8, offset: 224)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 8, elements: !413)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !424, file: !37, line: 3379, baseType: !503, size: 320)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !37, line: 1428, size: 320, elements: !504)
!504 = !{!505, !506, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !503, file: !37, line: 1429, baseType: !460, size: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !503, file: !37, line: 1430, baseType: !422, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !503, file: !37, line: 1431, baseType: !422, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !424, file: !37, line: 3380, baseType: !509, size: 320)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !37, line: 1460, size: 320, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !509, file: !37, line: 1461, baseType: !460, size: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !509, file: !37, line: 1462, baseType: !513, size: 128, offset: 192)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !514, line: 31, size: 128, elements: !515)
!514 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!515 = !{!516, !519, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !513, file: !514, line: 32, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !513, file: !514, line: 33, baseType: !7, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !513, file: !514, line: 34, baseType: !7, size: 32, offset: 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !424, file: !37, line: 3381, baseType: !522, size: 384)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !37, line: 2507, size: 384, elements: !523)
!523 = !{!524, !525, !530, !531, !532}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !522, file: !37, line: 2508, baseType: !460, size: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !522, file: !37, line: 2509, baseType: !526, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !527, line: 58, baseType: !528)
!527 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !529, line: 44, baseType: !7)
!529 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !522, file: !37, line: 2510, baseType: !7, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !522, file: !37, line: 2511, baseType: !422, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !522, file: !37, line: 2512, baseType: !422, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !424, file: !37, line: 3382, baseType: !534, size: 896)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !37, line: 2652, size: 896, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !534, file: !37, line: 2653, baseType: !522, size: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !37, line: 2654, baseType: !422, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !534, file: !37, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !534, file: !37, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !534, file: !37, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !534, file: !37, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !534, file: !37, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !534, file: !37, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !534, file: !37, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !534, file: !37, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !534, file: !37, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !534, file: !37, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !534, file: !37, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !534, file: !37, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !534, file: !37, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !534, file: !37, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !534, file: !37, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !534, file: !37, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !534, file: !37, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !534, file: !37, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !534, file: !37, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !534, file: !37, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !534, file: !37, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !534, file: !37, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !534, file: !37, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !534, file: !37, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !534, file: !37, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !534, file: !37, line: 2703, baseType: !7, size: 32, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !534, file: !37, line: 2705, baseType: !422, size: 64, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !534, file: !37, line: 2706, baseType: !422, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !534, file: !37, line: 2707, baseType: !422, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !534, file: !37, line: 2708, baseType: !422, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !534, file: !37, line: 2711, baseType: !569, size: 64, offset: 832)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !37, line: 2711, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !424, file: !37, line: 3383, baseType: !572, size: 960)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !37, line: 2756, size: 960, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !572, file: !37, line: 2757, baseType: !534, size: 896)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !572, file: !37, line: 2758, baseType: !576, size: 64, offset: 896)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !329, line: 50, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !329, line: 49, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !424, file: !37, line: 3384, baseType: !580, size: 1472)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !37, line: 3114, size: 1472, elements: !581)
!581 = !{!582, !603, !604, !605, !606}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !37, line: 3115, baseType: !583, size: 1216)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !37, line: 2984, size: 1216, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !583, file: !37, line: 2985, baseType: !572, size: 960)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !583, file: !37, line: 2986, baseType: !422, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !583, file: !37, line: 2987, baseType: !422, size: 64, offset: 1024)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !583, file: !37, line: 2988, baseType: !422, size: 64, offset: 1088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !583, file: !37, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !583, file: !37, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !583, file: !37, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !583, file: !37, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !583, file: !37, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !583, file: !37, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !583, file: !37, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !583, file: !37, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !583, file: !37, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !583, file: !37, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !583, file: !37, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !583, file: !37, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !583, file: !37, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !583, file: !37, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !580, file: !37, line: 3117, baseType: !422, size: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !580, file: !37, line: 3119, baseType: !422, size: 64, offset: 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !580, file: !37, line: 3121, baseType: !422, size: 64, offset: 1344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !580, file: !37, line: 3123, baseType: !422, size: 64, offset: 1408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !424, file: !37, line: 3385, baseType: !608, size: 1088)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !37, line: 2874, size: 1088, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !37, line: 2875, baseType: !572, size: 960)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !608, file: !37, line: 2876, baseType: !576, size: 64, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !608, file: !37, line: 2877, baseType: !613, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !615, line: 172, size: 128, elements: !616)
!615 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!616 = !{!617, !618, !619, !620, !621, !622, !623}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !614, file: !615, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !614, file: !615, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !614, file: !615, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !614, file: !615, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !614, file: !615, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !614, file: !615, line: 195, baseType: !7, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !614, file: !615, line: 199, baseType: !422, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !424, file: !37, line: 3386, baseType: !583, size: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !424, file: !37, line: 3387, baseType: !626, size: 1280)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !37, line: 3093, size: 1280, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !626, file: !37, line: 3094, baseType: !583, size: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !626, file: !37, line: 3095, baseType: !613, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !424, file: !37, line: 3388, baseType: !631, size: 1216)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !37, line: 2824, size: 1216, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !631, file: !37, line: 2825, baseType: !534, size: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !631, file: !37, line: 2827, baseType: !422, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !631, file: !37, line: 2828, baseType: !422, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !631, file: !37, line: 2829, baseType: !422, size: 64, offset: 1024)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !631, file: !37, line: 2830, baseType: !422, size: 64, offset: 1088)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !631, file: !37, line: 2831, baseType: !422, size: 64, offset: 1152)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !424, file: !37, line: 3389, baseType: !640, size: 1024)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !37, line: 2850, size: 1024, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !640, file: !37, line: 2851, baseType: !572, size: 960)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !640, file: !37, line: 2852, baseType: !321, size: 32, offset: 960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !640, file: !37, line: 2853, baseType: !321, size: 32, offset: 992)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !424, file: !37, line: 3390, baseType: !646, size: 1024)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !37, line: 2857, size: 1024, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !37, line: 2858, baseType: !572, size: 960)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !646, file: !37, line: 2859, baseType: !613, size: 64, offset: 960)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !424, file: !37, line: 3391, baseType: !651, size: 960)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !37, line: 2862, size: 960, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !651, file: !37, line: 2863, baseType: !572, size: 960)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !424, file: !37, line: 3392, baseType: !655, size: 1472)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !37, line: 3304, size: 1472, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !655, file: !37, line: 3305, baseType: !580, size: 1472)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !424, file: !37, line: 3393, baseType: !659, size: 1792)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !37, line: 3248, size: 1792, elements: !660)
!660 = !{!661, !662, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !659, file: !37, line: 3249, baseType: !580, size: 1472)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !659, file: !37, line: 3251, baseType: !663, size: 64, offset: 1472)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !665, line: 463, size: 1152, elements: !666)
!665 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!666 = !{!667, !670, !983, !984, !1098, !1101, !1102, !1103, !1104, !1105, !1106, !1130, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !664, file: !665, line: 464, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !665, line: 464, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !664, file: !665, line: 467, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !232, line: 374, size: 640, elements: !673)
!673 = !{!674, !958, !959, !972, !973, !974, !975, !976, !977, !979, !981, !982}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !672, file: !232, line: 377, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !329, line: 111, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !232, line: 217, size: 832, elements: !678)
!678 = !{!679, !923, !924, !925, !928, !932, !933, !934, !952, !953, !954, !955, !956, !957}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !677, file: !232, line: 219, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !232, line: 151, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !232, line: 151, size: 128, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !682, file: !232, line: 151, baseType: !685, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !232, line: 150, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !232, line: 150, size: 128, elements: !687)
!687 = !{!688, !689, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !686, file: !232, line: 150, baseType: !7, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !686, file: !232, line: 150, baseType: !7, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !686, file: !232, line: 150, baseType: !691, size: 64, offset: 64)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 64, elements: !413)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !329, line: 108, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !232, line: 122, size: 512, elements: !695)
!695 = !{!696, !697, !698, !915, !916, !917, !918, !919, !920, !921}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !694, file: !232, line: 124, baseType: !676, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !694, file: !232, line: 125, baseType: !676, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !694, file: !232, line: 131, baseType: !699, size: 64, offset: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !232, line: 128, size: 64, elements: !700)
!700 = !{!701, !914}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !699, file: !232, line: 129, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !329, line: 66, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !280, line: 143, size: 192, elements: !705)
!705 = !{!706, !912, !913}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !704, file: !280, line: 145, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !329, line: 69, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !280, line: 136, size: 192, elements: !710)
!710 = !{!711, !910, !911}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !709, file: !280, line: 137, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !329, line: 58, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !280, line: 737, size: 768, elements: !715)
!715 = !{!716, !733, !767, !773, !778, !783, !790, !796, !802, !807, !821, !826, !832, !837, !847, !852, !868, !875, !882, !888, !893, !899, !905}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !714, file: !280, line: 738, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !280, line: 271, size: 256, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !717, file: !280, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !717, file: !280, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !717, file: !280, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !717, file: !280, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !717, file: !280, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !717, file: !280, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !717, file: !280, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !717, file: !280, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !717, file: !280, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !280, line: 312, baseType: !7, size: 32, offset: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !717, file: !280, line: 316, baseType: !526, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !717, file: !280, line: 319, baseType: !7, size: 32, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !717, file: !280, line: 323, baseType: !676, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !717, file: !280, line: 327, baseType: !422, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !714, file: !280, line: 739, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !280, line: 350, size: 448, elements: !735)
!735 = !{!736, !765}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !734, file: !280, line: 353, baseType: !737, size: 384)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !280, line: 333, size: 384, elements: !738)
!738 = !{!739, !740, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !737, file: !280, line: 336, baseType: !717, size: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !737, file: !280, line: 343, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !743, line: 37, size: 128, elements: !744)
!743 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !743, line: 39, baseType: !741, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !742, file: !743, line: 40, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !737, file: !280, line: 344, baseType: !749, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !743, line: 45, size: 320, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !743, line: 47, baseType: !749, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !750, file: !743, line: 48, baseType: !754, size: 256, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !37, line: 1883, size: 256, elements: !755)
!755 = !{!756, !758, !759, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !754, file: !37, line: 1884, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !37, line: 1885, baseType: !757, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !754, file: !37, line: 1891, baseType: !760, size: 64, offset: 128)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !37, line: 1891, size: 64, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !760, file: !37, line: 1891, baseType: !712, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !760, file: !37, line: 1891, baseType: !422, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !754, file: !37, line: 1892, baseType: !747, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !734, file: !280, line: 359, baseType: !766, size: 64, offset: 384)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 64, elements: !413)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !714, file: !280, line: 740, baseType: !768, size: 512)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !280, line: 365, size: 512, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !768, file: !280, line: 368, baseType: !737, size: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !768, file: !280, line: 373, baseType: !422, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !768, file: !280, line: 374, baseType: !422, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !714, file: !280, line: 741, baseType: !774, size: 576)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !280, line: 380, size: 576, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !774, file: !280, line: 383, baseType: !768, size: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !774, file: !280, line: 389, baseType: !766, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !714, file: !280, line: 742, baseType: !779, size: 320)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !280, line: 395, size: 320, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !779, file: !280, line: 397, baseType: !717, size: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !779, file: !280, line: 400, baseType: !702, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !714, file: !280, line: 743, baseType: !784, size: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !280, line: 406, size: 448, elements: !785)
!785 = !{!786, !787, !788, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !784, file: !280, line: 408, baseType: !717, size: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !784, file: !280, line: 412, baseType: !422, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !784, file: !280, line: 420, baseType: !422, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !784, file: !280, line: 423, baseType: !702, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !714, file: !280, line: 744, baseType: !791, size: 384)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !280, line: 429, size: 384, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !791, file: !280, line: 431, baseType: !717, size: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !791, file: !280, line: 434, baseType: !422, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !791, file: !280, line: 437, baseType: !702, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !714, file: !280, line: 745, baseType: !797, size: 384)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !280, line: 443, size: 384, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !797, file: !280, line: 445, baseType: !717, size: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !797, file: !280, line: 449, baseType: !422, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !797, file: !280, line: 453, baseType: !702, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !714, file: !280, line: 746, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !280, line: 459, size: 320, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !803, file: !280, line: 461, baseType: !717, size: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !803, file: !280, line: 464, baseType: !422, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !714, file: !280, line: 747, baseType: !808, size: 768)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !280, line: 469, size: 768, elements: !809)
!809 = !{!810, !811, !812, !813, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !808, file: !280, line: 471, baseType: !717, size: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !808, file: !280, line: 474, baseType: !7, size: 32, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !808, file: !280, line: 475, baseType: !7, size: 32, offset: 288)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !808, file: !280, line: 478, baseType: !422, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !808, file: !280, line: 481, baseType: !815, size: 384, offset: 384)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 384, elements: !413)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !37, line: 1917, size: 384, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !816, file: !37, line: 1920, baseType: !754, size: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !816, file: !37, line: 1921, baseType: !422, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !816, file: !37, line: 1922, baseType: !526, size: 32, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !714, file: !280, line: 748, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !280, line: 487, size: 320, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !822, file: !280, line: 490, baseType: !717, size: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !822, file: !280, line: 494, baseType: !321, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !714, file: !280, line: 749, baseType: !827, size: 384)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !280, line: 500, size: 384, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !827, file: !280, line: 502, baseType: !717, size: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !827, file: !280, line: 506, baseType: !702, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !827, file: !280, line: 510, baseType: !702, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !714, file: !280, line: 750, baseType: !833, size: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !280, line: 529, size: 320, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !833, file: !280, line: 531, baseType: !717, size: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !833, file: !280, line: 540, baseType: !702, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !714, file: !280, line: 751, baseType: !838, size: 704)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !280, line: 546, size: 704, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !838, file: !280, line: 549, baseType: !768, size: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !838, file: !280, line: 553, baseType: !326, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !838, file: !280, line: 557, baseType: !320, size: 8, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !838, file: !280, line: 558, baseType: !320, size: 8, offset: 584)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !838, file: !280, line: 559, baseType: !320, size: 8, offset: 592)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !838, file: !280, line: 560, baseType: !320, size: 8, offset: 600)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !838, file: !280, line: 566, baseType: !766, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !714, file: !280, line: 752, baseType: !848, size: 384)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !280, line: 571, size: 384, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !848, file: !280, line: 573, baseType: !779, size: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !848, file: !280, line: 577, baseType: !422, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !714, file: !280, line: 753, baseType: !853, size: 576)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !280, line: 600, size: 576, elements: !854)
!854 = !{!855, !856, !857, !858, !867}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !853, file: !280, line: 602, baseType: !779, size: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !853, file: !280, line: 605, baseType: !422, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !853, file: !280, line: 609, baseType: !396, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !853, file: !280, line: 612, baseType: !859, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !280, line: 581, size: 320, elements: !861)
!861 = !{!862, !863, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !860, file: !280, line: 583, baseType: !36, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !860, file: !280, line: 586, baseType: !422, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !860, file: !280, line: 589, baseType: !422, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !860, file: !280, line: 592, baseType: !422, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !860, file: !280, line: 595, baseType: !422, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !853, file: !280, line: 616, baseType: !702, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !714, file: !280, line: 754, baseType: !869, size: 512)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !280, line: 622, size: 512, elements: !870)
!870 = !{!871, !872, !873, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !869, file: !280, line: 624, baseType: !779, size: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !869, file: !280, line: 628, baseType: !422, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !869, file: !280, line: 632, baseType: !422, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !869, file: !280, line: 636, baseType: !422, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !714, file: !280, line: 755, baseType: !876, size: 704)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !280, line: 642, size: 704, elements: !877)
!877 = !{!878, !879, !880, !881}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !876, file: !280, line: 644, baseType: !869, size: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !876, file: !280, line: 648, baseType: !422, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !876, file: !280, line: 652, baseType: !422, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !876, file: !280, line: 653, baseType: !422, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !714, file: !280, line: 756, baseType: !883, size: 448)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !280, line: 663, size: 448, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !883, file: !280, line: 665, baseType: !779, size: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !883, file: !280, line: 668, baseType: !422, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !883, file: !280, line: 673, baseType: !422, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !714, file: !280, line: 757, baseType: !889, size: 384)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !280, line: 694, size: 384, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !889, file: !280, line: 696, baseType: !779, size: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !889, file: !280, line: 699, baseType: !422, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !714, file: !280, line: 758, baseType: !894, size: 384)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !280, line: 681, size: 384, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !894, file: !280, line: 683, baseType: !717, size: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !894, file: !280, line: 686, baseType: !422, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !894, file: !280, line: 689, baseType: !422, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !714, file: !280, line: 759, baseType: !900, size: 384)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !280, line: 707, size: 384, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !900, file: !280, line: 709, baseType: !717, size: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !900, file: !280, line: 712, baseType: !422, size: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !900, file: !280, line: 712, baseType: !422, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !714, file: !280, line: 760, baseType: !906, size: 320)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !280, line: 718, size: 320, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !906, file: !280, line: 720, baseType: !717, size: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !906, file: !280, line: 723, baseType: !422, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !709, file: !280, line: 138, baseType: !708, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !280, line: 139, baseType: !708, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !704, file: !280, line: 146, baseType: !707, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !704, file: !280, line: 152, baseType: !702, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !699, file: !232, line: 130, baseType: !576, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !694, file: !232, line: 134, baseType: !325, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !694, file: !232, line: 137, baseType: !422, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !694, file: !232, line: 138, baseType: !526, size: 32, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !694, file: !232, line: 142, baseType: !7, size: 32, offset: 352)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !232, line: 144, baseType: !321, size: 32, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !694, file: !232, line: 145, baseType: !321, size: 32, offset: 416)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !694, file: !232, line: 146, baseType: !922, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !232, line: 119, baseType: !363)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !677, file: !232, line: 220, baseType: !680, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !677, file: !232, line: 223, baseType: !325, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !677, file: !232, line: 226, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !232, line: 185, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !677, file: !232, line: 229, baseType: !929, size: 128, offset: 256)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !930, size: 128, elements: !347)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !232, line: 229, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !677, file: !232, line: 232, baseType: !676, size: 64, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !677, file: !232, line: 233, baseType: !676, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !677, file: !232, line: 238, baseType: !935, size: 64, offset: 512)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !232, line: 235, size: 64, elements: !936)
!936 = !{!937, !943}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !935, file: !232, line: 236, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !232, line: 273, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !939, file: !232, line: 275, baseType: !702, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !939, file: !232, line: 278, baseType: !702, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !935, file: !232, line: 237, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !232, line: 259, size: 320, elements: !946)
!946 = !{!947, !948, !949, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !945, file: !232, line: 261, baseType: !576, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !945, file: !232, line: 262, baseType: !576, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !945, file: !232, line: 266, baseType: !576, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !945, file: !232, line: 267, baseType: !576, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !945, file: !232, line: 270, baseType: !321, size: 32, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !232, line: 241, baseType: !922, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !677, file: !232, line: 244, baseType: !321, size: 32, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !677, file: !232, line: 247, baseType: !321, size: 32, offset: 672)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !677, file: !232, line: 250, baseType: !321, size: 32, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !677, file: !232, line: 253, baseType: !321, size: 32, offset: 736)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !232, line: 256, baseType: !321, size: 32, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !672, file: !232, line: 378, baseType: !675, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !672, file: !232, line: 381, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !232, line: 282, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !232, line: 282, size: 128, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !962, file: !232, line: 282, baseType: !965, size: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !232, line: 281, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !232, line: 281, size: 128, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !966, file: !232, line: 281, baseType: !7, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !966, file: !232, line: 281, baseType: !7, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !966, file: !232, line: 281, baseType: !971, size: 64, offset: 64)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 64, elements: !413)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !672, file: !232, line: 384, baseType: !321, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !672, file: !232, line: 387, baseType: !321, size: 32, offset: 224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !672, file: !232, line: 390, baseType: !321, size: 32, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !672, file: !232, line: 394, baseType: !960, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !672, file: !232, line: 396, baseType: !231, size: 32, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !672, file: !232, line: 399, baseType: !978, size: 64, offset: 416)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 64, elements: !347)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !672, file: !232, line: 402, baseType: !980, size: 64, offset: 480)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !347)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !672, file: !232, line: 406, baseType: !321, size: 32, offset: 544)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !672, file: !232, line: 409, baseType: !321, size: 32, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !664, file: !665, line: 470, baseType: !703, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !664, file: !665, line: 473, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !615, line: 39, size: 1152, elements: !987)
!987 = !{!988, !1038, !1051, !1063, !1064, !1075, !1076, !1080, !1081, !1082, !1083, !1084}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !986, file: !615, line: 41, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !990, line: 144, baseType: !991)
!990 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !990, line: 100, size: 896, elements: !993)
!993 = !{!994, !1002, !1007, !1012, !1014, !1015, !1016, !1017, !1018, !1019, !1024, !1026, !1027, !1032, !1037}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !992, file: !990, line: 102, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !990, line: 52, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !990, line: 47, baseType: !7)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !992, file: !990, line: 105, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !990, line: 59, baseType: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!321, !1000, !1000}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !992, file: !990, line: 108, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !990, line: 63, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !325}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !992, file: !990, line: 111, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !990, line: 114, baseType: !396, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !992, file: !990, line: 117, baseType: !396, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !992, file: !990, line: 120, baseType: !396, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !992, file: !990, line: 124, baseType: !7, size: 32, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !992, file: !990, line: 128, baseType: !7, size: 32, offset: 480)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !992, file: !990, line: 131, baseType: !1020, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !990, line: 75, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!325, !396, !396}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !992, file: !990, line: 132, baseType: !1025, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !990, line: 78, baseType: !1009)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !992, file: !990, line: 135, baseType: !325, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !992, file: !990, line: 136, baseType: !1028, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !990, line: 82, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!325, !325, !396, !396}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !992, file: !990, line: 137, baseType: !1033, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !990, line: 83, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !325, !325}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !992, file: !990, line: 141, baseType: !7, size: 32, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !986, file: !615, line: 48, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !280, line: 35, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !280, line: 35, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1041, file: !280, line: 35, baseType: !1044, size: 128)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !280, line: 33, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !280, line: 33, size: 128, elements: !1046)
!1046 = !{!1047, !1048, !1049}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1045, file: !280, line: 33, baseType: !7, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1045, file: !280, line: 33, baseType: !7, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1045, file: !280, line: 33, baseType: !1050, size: 64, offset: 64)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 64, elements: !413)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !986, file: !615, line: 51, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !37, line: 183, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !37, line: 183, size: 128, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1054, file: !37, line: 183, baseType: !1057, size: 128)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !37, line: 182, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !37, line: 182, size: 128, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1058, file: !37, line: 182, baseType: !7, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1058, file: !37, line: 182, baseType: !7, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1058, file: !37, line: 182, baseType: !766, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !986, file: !615, line: 54, baseType: !422, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !986, file: !615, line: 57, baseType: !1065, size: 128, offset: 256)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1066, line: 31, size: 128, elements: !1067)
!1066 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1065, file: !1066, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1065, file: !1066, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1065, file: !1066, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1065, file: !1066, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1065, file: !1066, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1065, file: !1066, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1065, file: !1066, line: 56, baseType: !328, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !986, file: !615, line: 60, baseType: !1065, size: 128, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !986, file: !615, line: 64, baseType: !1077, size: 64, offset: 512)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1079, line: 33, flags: DIFlagFwdDecl)
!1079 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !986, file: !615, line: 67, baseType: !422, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !986, file: !615, line: 73, baseType: !989, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !986, file: !615, line: 77, baseType: !328, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !986, file: !615, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !986, file: !615, line: 82, baseType: !1085, size: 320, offset: 832)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !743, line: 62, size: 320, elements: !1086)
!1086 = !{!1087, !1093, !1094, !1095, !1096, !1097}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1085, file: !743, line: 63, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !743, line: 56, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !743, line: 57, baseType: !1088, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1089, file: !743, line: 58, baseType: !501, size: 8, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1085, file: !743, line: 64, baseType: !7, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1085, file: !743, line: 66, baseType: !7, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1085, file: !743, line: 68, baseType: !320, size: 8, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1085, file: !743, line: 70, baseType: !741, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1085, file: !743, line: 71, baseType: !749, size: 64, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !664, file: !665, line: 476, baseType: !1099, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !665, line: 476, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !664, file: !665, line: 479, baseType: !989, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !664, file: !665, line: 484, baseType: !422, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !664, file: !665, line: 488, baseType: !422, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !664, file: !665, line: 493, baseType: !422, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !664, file: !665, line: 496, baseType: !422, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !664, file: !665, line: 501, baseType: !1107, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !243, line: 2355, size: 576, elements: !1109)
!1109 = !{!1110, !1113, !1114, !1115, !1116, !1118, !1119, !1124, !1125, !1126, !1127, !1128, !1129}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1108, file: !243, line: 2356, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !243, line: 2356, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1108, file: !243, line: 2357, baseType: !326, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1108, file: !243, line: 2358, baseType: !321, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1108, file: !243, line: 2359, baseType: !321, size: 32, offset: 160)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1108, file: !243, line: 2360, baseType: !1117, size: 128, offset: 192)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 128, elements: !372)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1108, file: !243, line: 2364, baseType: !321, size: 32, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1108, file: !243, line: 2367, baseType: !1120, size: 128, offset: 384)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !243, line: 2349, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1120, file: !243, line: 2351, baseType: !576, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1120, file: !243, line: 2352, baseType: !363, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1108, file: !243, line: 2371, baseType: !242, size: 32, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1108, file: !243, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1108, file: !243, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1108, file: !243, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1108, file: !243, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1108, file: !243, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !664, file: !665, line: 504, baseType: !1131, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !665, line: 504, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !664, file: !665, line: 507, baseType: !989, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !664, file: !665, line: 510, baseType: !321, size: 32, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !664, file: !665, line: 513, baseType: !321, size: 32, offset: 864)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !664, file: !665, line: 516, baseType: !526, size: 32, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !664, file: !665, line: 519, baseType: !526, size: 32, offset: 928)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !664, file: !665, line: 522, baseType: !7, size: 32, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !664, file: !665, line: 523, baseType: !7, size: 32, offset: 992)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !664, file: !665, line: 528, baseType: !326, size: 64, offset: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !664, file: !665, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !664, file: !665, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !664, file: !665, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !664, file: !665, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !664, file: !665, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !664, file: !665, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !664, file: !665, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !664, file: !665, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !664, file: !665, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !664, file: !665, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !664, file: !665, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !664, file: !665, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !664, file: !665, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !664, file: !665, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !664, file: !665, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !664, file: !665, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !659, file: !37, line: 3254, baseType: !422, size: 64, offset: 1536)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !659, file: !37, line: 3257, baseType: !422, size: 64, offset: 1600)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !659, file: !37, line: 3258, baseType: !422, size: 64, offset: 1664)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !659, file: !37, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !659, file: !37, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !659, file: !37, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !659, file: !37, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !659, file: !37, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !659, file: !37, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !659, file: !37, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !659, file: !37, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !659, file: !37, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !659, file: !37, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !659, file: !37, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !659, file: !37, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !659, file: !37, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !659, file: !37, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !659, file: !37, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !659, file: !37, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !659, file: !37, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !659, file: !37, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !37, line: 3394, baseType: !1179, size: 1344)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !37, line: 2279, size: 1344, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1206, !1207, !1208, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1179, file: !37, line: 2280, baseType: !460, size: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1179, file: !37, line: 2281, baseType: !422, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1179, file: !37, line: 2282, baseType: !422, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1179, file: !37, line: 2283, baseType: !422, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1179, file: !37, line: 2284, baseType: !422, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1179, file: !37, line: 2285, baseType: !7, size: 32, offset: 448)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1179, file: !37, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1179, file: !37, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1179, file: !37, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1179, file: !37, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1179, file: !37, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1179, file: !37, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1179, file: !37, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1179, file: !37, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1179, file: !37, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1179, file: !37, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1179, file: !37, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1179, file: !37, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1179, file: !37, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1179, file: !37, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1179, file: !37, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1179, file: !37, line: 2305, baseType: !7, size: 32, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1179, file: !37, line: 2306, baseType: !1204, size: 32, offset: 544)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1205, line: 31, baseType: !321)
!1205 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1179, file: !37, line: 2307, baseType: !422, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1179, file: !37, line: 2308, baseType: !422, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1179, file: !37, line: 2314, baseType: !1209, size: 64, offset: 704)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !37, line: 2309, size: 64, elements: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1209, file: !37, line: 2310, baseType: !321, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1209, file: !37, line: 2311, baseType: !326, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1209, file: !37, line: 2312, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !37, line: 2277, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1179, file: !37, line: 2315, baseType: !422, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1179, file: !37, line: 2316, baseType: !422, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1179, file: !37, line: 2317, baseType: !422, size: 64, offset: 896)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1179, file: !37, line: 2318, baseType: !422, size: 64, offset: 960)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1179, file: !37, line: 2319, baseType: !422, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1179, file: !37, line: 2320, baseType: !422, size: 64, offset: 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1179, file: !37, line: 2321, baseType: !422, size: 64, offset: 1152)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1179, file: !37, line: 2322, baseType: !422, size: 64, offset: 1216)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1179, file: !37, line: 2324, baseType: !1225, size: 64, offset: 1280)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !37, line: 2324, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !424, file: !37, line: 3395, baseType: !1228, size: 320)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !37, line: 1469, size: 320, elements: !1229)
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1228, file: !37, line: 1470, baseType: !460, size: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1228, file: !37, line: 1471, baseType: !422, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1228, file: !37, line: 1472, baseType: !422, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !424, file: !37, line: 3396, baseType: !1234, size: 320)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !37, line: 1482, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1234, file: !37, line: 1483, baseType: !460, size: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1234, file: !37, line: 1484, baseType: !321, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1234, file: !37, line: 1485, baseType: !766, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !424, file: !37, line: 3397, baseType: !1240, size: 384)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !37, line: 1829, size: 384, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1240, file: !37, line: 1830, baseType: !460, size: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1240, file: !37, line: 1831, baseType: !526, size: 32, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1240, file: !37, line: 1832, baseType: !422, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1240, file: !37, line: 1835, baseType: !766, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !424, file: !37, line: 3398, baseType: !1247, size: 704)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !37, line: 1898, size: 704, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1258}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1247, file: !37, line: 1899, baseType: !460, size: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1247, file: !37, line: 1902, baseType: !422, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1247, file: !37, line: 1905, baseType: !712, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1247, file: !37, line: 1908, baseType: !7, size: 32, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1247, file: !37, line: 1911, baseType: !1254, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !615, line: 117, size: 128, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1255, file: !615, line: 120, baseType: !1065, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1247, file: !37, line: 1914, baseType: !754, size: 256, offset: 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !424, file: !37, line: 3399, baseType: !1260, size: 704)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !37, line: 2008, size: 704, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !37, line: 2009, baseType: !460, size: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1260, file: !37, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1260, file: !37, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1260, file: !37, line: 2014, baseType: !526, size: 32, offset: 224)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1260, file: !37, line: 2016, baseType: !422, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1260, file: !37, line: 2017, baseType: !1052, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1260, file: !37, line: 2019, baseType: !422, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1260, file: !37, line: 2020, baseType: !422, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1260, file: !37, line: 2021, baseType: !422, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1260, file: !37, line: 2022, baseType: !422, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1260, file: !37, line: 2023, baseType: !422, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !424, file: !37, line: 3400, baseType: !1274, size: 832)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !37, line: 2430, size: 832, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1274, file: !37, line: 2431, baseType: !460, size: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1274, file: !37, line: 2433, baseType: !422, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1274, file: !37, line: 2434, baseType: !422, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1274, file: !37, line: 2435, baseType: !422, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1274, file: !37, line: 2436, baseType: !422, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1274, file: !37, line: 2437, baseType: !1052, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1274, file: !37, line: 2438, baseType: !422, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1274, file: !37, line: 2440, baseType: !422, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1274, file: !37, line: 2441, baseType: !422, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1274, file: !37, line: 2443, baseType: !1286, size: 128, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !37, line: 182, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !37, line: 182, size: 128, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1287, file: !37, line: 182, baseType: !1057, size: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !424, file: !37, line: 3401, baseType: !1291, size: 320)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !37, line: 3327, size: 320, elements: !1292)
!1292 = !{!1293, !1294, !1301}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1291, file: !37, line: 3329, baseType: !460, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1291, file: !37, line: 3330, baseType: !1295, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !37, line: 3320, size: 192, elements: !1297)
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1296, file: !37, line: 3322, baseType: !1295, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1296, file: !37, line: 3323, baseType: !1295, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1296, file: !37, line: 3324, baseType: !422, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1291, file: !37, line: 3331, baseType: !1295, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !424, file: !37, line: 3402, baseType: !1303, size: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !37, line: 1540, size: 256, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1303, file: !37, line: 1541, baseType: !460, size: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1303, file: !37, line: 1542, baseType: !1307, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !37, line: 1538, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !37, line: 1538, size: 192, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1309, file: !37, line: 1538, baseType: !1312, size: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !37, line: 1537, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !37, line: 1537, size: 192, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1313, file: !37, line: 1537, baseType: !7, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1313, file: !37, line: 1537, baseType: !7, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1313, file: !37, line: 1537, baseType: !1318, size: 128, offset: 64)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 128, elements: !413)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !37, line: 1535, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !37, line: 1532, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1320, file: !37, line: 1533, baseType: !422, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1320, file: !37, line: 1534, baseType: !422, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !424, file: !37, line: 3403, baseType: !1325, size: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !37, line: 1938, size: 512, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1336, !1337, !1338}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1325, file: !37, line: 1939, baseType: !460, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1325, file: !37, line: 1940, baseType: !526, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1325, file: !37, line: 1941, baseType: !247, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1325, file: !37, line: 1946, baseType: !1331, size: 32, offset: 256)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !37, line: 1942, size: 32, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1331, file: !37, line: 1943, baseType: !265, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1331, file: !37, line: 1944, baseType: !272, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1331, file: !37, line: 1945, baseType: !36, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1325, file: !37, line: 1950, baseType: !702, size: 64, offset: 320)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1325, file: !37, line: 1951, baseType: !702, size: 64, offset: 384)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1325, file: !37, line: 1953, baseType: !766, size: 64, offset: 448)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !424, file: !37, line: 3404, baseType: !1340, size: 1664)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !37, line: 3337, size: 1664, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1340, file: !37, line: 3338, baseType: !460, size: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1340, file: !37, line: 3341, baseType: !1344, size: 1472, offset: 192)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1345, line: 410, size: 1472, elements: !1346)
!1345 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1344, file: !1345, line: 412, baseType: !321, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1344, file: !1345, line: 413, baseType: !321, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1344, file: !1345, line: 414, baseType: !321, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1344, file: !1345, line: 415, baseType: !321, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1344, file: !1345, line: 416, baseType: !321, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1344, file: !1345, line: 417, baseType: !321, size: 32, offset: 160)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1344, file: !1345, line: 418, baseType: !320, size: 8, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1344, file: !1345, line: 419, baseType: !320, size: 8, offset: 200)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1344, file: !1345, line: 420, baseType: !1356, size: 8, offset: 208)
!1356 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1344, file: !1345, line: 421, baseType: !1356, size: 8, offset: 216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1344, file: !1345, line: 422, baseType: !1356, size: 8, offset: 224)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1344, file: !1345, line: 423, baseType: !1356, size: 8, offset: 232)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1344, file: !1345, line: 424, baseType: !1356, size: 8, offset: 240)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1344, file: !1345, line: 425, baseType: !1356, size: 8, offset: 248)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1344, file: !1345, line: 426, baseType: !1356, size: 8, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1344, file: !1345, line: 427, baseType: !1356, size: 8, offset: 264)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1344, file: !1345, line: 428, baseType: !1356, size: 8, offset: 272)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1344, file: !1345, line: 429, baseType: !1356, size: 8, offset: 280)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1344, file: !1345, line: 430, baseType: !1356, size: 8, offset: 288)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1344, file: !1345, line: 431, baseType: !1356, size: 8, offset: 296)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1344, file: !1345, line: 432, baseType: !1356, size: 8, offset: 304)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1344, file: !1345, line: 433, baseType: !1356, size: 8, offset: 312)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1344, file: !1345, line: 434, baseType: !1356, size: 8, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1344, file: !1345, line: 435, baseType: !1356, size: 8, offset: 328)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1344, file: !1345, line: 436, baseType: !1356, size: 8, offset: 336)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1344, file: !1345, line: 437, baseType: !1356, size: 8, offset: 344)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1344, file: !1345, line: 438, baseType: !1356, size: 8, offset: 352)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1344, file: !1345, line: 439, baseType: !1356, size: 8, offset: 360)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1344, file: !1345, line: 440, baseType: !1356, size: 8, offset: 368)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1344, file: !1345, line: 441, baseType: !1356, size: 8, offset: 376)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1344, file: !1345, line: 442, baseType: !1356, size: 8, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1344, file: !1345, line: 443, baseType: !1356, size: 8, offset: 392)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1344, file: !1345, line: 444, baseType: !1356, size: 8, offset: 400)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1344, file: !1345, line: 445, baseType: !1356, size: 8, offset: 408)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1344, file: !1345, line: 446, baseType: !1356, size: 8, offset: 416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1344, file: !1345, line: 447, baseType: !1356, size: 8, offset: 424)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1344, file: !1345, line: 448, baseType: !1356, size: 8, offset: 432)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1344, file: !1345, line: 449, baseType: !1356, size: 8, offset: 440)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1344, file: !1345, line: 450, baseType: !1356, size: 8, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1344, file: !1345, line: 451, baseType: !1356, size: 8, offset: 456)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1344, file: !1345, line: 452, baseType: !1356, size: 8, offset: 464)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1344, file: !1345, line: 453, baseType: !1356, size: 8, offset: 472)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1344, file: !1345, line: 454, baseType: !1356, size: 8, offset: 480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1344, file: !1345, line: 455, baseType: !1356, size: 8, offset: 488)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1344, file: !1345, line: 456, baseType: !1356, size: 8, offset: 496)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1344, file: !1345, line: 457, baseType: !1356, size: 8, offset: 504)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1344, file: !1345, line: 458, baseType: !1356, size: 8, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1344, file: !1345, line: 459, baseType: !1356, size: 8, offset: 520)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1344, file: !1345, line: 460, baseType: !1356, size: 8, offset: 528)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1344, file: !1345, line: 461, baseType: !1356, size: 8, offset: 536)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1344, file: !1345, line: 462, baseType: !1356, size: 8, offset: 544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1344, file: !1345, line: 463, baseType: !1356, size: 8, offset: 552)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1344, file: !1345, line: 464, baseType: !1356, size: 8, offset: 560)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1344, file: !1345, line: 465, baseType: !1356, size: 8, offset: 568)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1344, file: !1345, line: 466, baseType: !1356, size: 8, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1344, file: !1345, line: 467, baseType: !1356, size: 8, offset: 584)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1344, file: !1345, line: 468, baseType: !1356, size: 8, offset: 592)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1344, file: !1345, line: 469, baseType: !1356, size: 8, offset: 600)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1344, file: !1345, line: 470, baseType: !1356, size: 8, offset: 608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1344, file: !1345, line: 471, baseType: !1356, size: 8, offset: 616)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1344, file: !1345, line: 472, baseType: !1356, size: 8, offset: 624)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1344, file: !1345, line: 473, baseType: !1356, size: 8, offset: 632)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1344, file: !1345, line: 474, baseType: !1356, size: 8, offset: 640)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1344, file: !1345, line: 475, baseType: !1356, size: 8, offset: 648)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1344, file: !1345, line: 476, baseType: !1356, size: 8, offset: 656)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1344, file: !1345, line: 477, baseType: !1356, size: 8, offset: 664)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1344, file: !1345, line: 478, baseType: !1356, size: 8, offset: 672)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1344, file: !1345, line: 479, baseType: !1356, size: 8, offset: 680)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1344, file: !1345, line: 480, baseType: !1356, size: 8, offset: 688)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1344, file: !1345, line: 481, baseType: !1356, size: 8, offset: 696)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1344, file: !1345, line: 482, baseType: !1356, size: 8, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1344, file: !1345, line: 483, baseType: !1356, size: 8, offset: 712)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1344, file: !1345, line: 484, baseType: !1356, size: 8, offset: 720)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1344, file: !1345, line: 485, baseType: !1356, size: 8, offset: 728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1344, file: !1345, line: 486, baseType: !1356, size: 8, offset: 736)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1344, file: !1345, line: 487, baseType: !1356, size: 8, offset: 744)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1344, file: !1345, line: 488, baseType: !1356, size: 8, offset: 752)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1344, file: !1345, line: 489, baseType: !1356, size: 8, offset: 760)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1344, file: !1345, line: 490, baseType: !1356, size: 8, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1344, file: !1345, line: 491, baseType: !1356, size: 8, offset: 776)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1344, file: !1345, line: 492, baseType: !1356, size: 8, offset: 784)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1344, file: !1345, line: 493, baseType: !1356, size: 8, offset: 792)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1344, file: !1345, line: 494, baseType: !1356, size: 8, offset: 800)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1344, file: !1345, line: 495, baseType: !1356, size: 8, offset: 808)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1344, file: !1345, line: 496, baseType: !1356, size: 8, offset: 816)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1344, file: !1345, line: 497, baseType: !1356, size: 8, offset: 824)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1344, file: !1345, line: 498, baseType: !1356, size: 8, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1344, file: !1345, line: 499, baseType: !1356, size: 8, offset: 840)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1344, file: !1345, line: 500, baseType: !1356, size: 8, offset: 848)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1344, file: !1345, line: 501, baseType: !1356, size: 8, offset: 856)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1344, file: !1345, line: 502, baseType: !1356, size: 8, offset: 864)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1344, file: !1345, line: 503, baseType: !1356, size: 8, offset: 872)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1344, file: !1345, line: 504, baseType: !1356, size: 8, offset: 880)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1344, file: !1345, line: 505, baseType: !1356, size: 8, offset: 888)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1344, file: !1345, line: 506, baseType: !1356, size: 8, offset: 896)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1344, file: !1345, line: 507, baseType: !1356, size: 8, offset: 904)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1344, file: !1345, line: 508, baseType: !1356, size: 8, offset: 912)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1344, file: !1345, line: 509, baseType: !1356, size: 8, offset: 920)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1344, file: !1345, line: 510, baseType: !1356, size: 8, offset: 928)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1344, file: !1345, line: 511, baseType: !1356, size: 8, offset: 936)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1344, file: !1345, line: 512, baseType: !1356, size: 8, offset: 944)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1344, file: !1345, line: 513, baseType: !1356, size: 8, offset: 952)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1344, file: !1345, line: 514, baseType: !1356, size: 8, offset: 960)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1344, file: !1345, line: 515, baseType: !1356, size: 8, offset: 968)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1344, file: !1345, line: 516, baseType: !1356, size: 8, offset: 976)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1344, file: !1345, line: 517, baseType: !1356, size: 8, offset: 984)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1344, file: !1345, line: 518, baseType: !1356, size: 8, offset: 992)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1344, file: !1345, line: 519, baseType: !1356, size: 8, offset: 1000)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1344, file: !1345, line: 520, baseType: !1356, size: 8, offset: 1008)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1344, file: !1345, line: 521, baseType: !1356, size: 8, offset: 1016)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1344, file: !1345, line: 522, baseType: !1356, size: 8, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1344, file: !1345, line: 523, baseType: !1356, size: 8, offset: 1032)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1344, file: !1345, line: 524, baseType: !1356, size: 8, offset: 1040)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1344, file: !1345, line: 525, baseType: !1356, size: 8, offset: 1048)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1344, file: !1345, line: 526, baseType: !1356, size: 8, offset: 1056)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1344, file: !1345, line: 527, baseType: !1356, size: 8, offset: 1064)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1344, file: !1345, line: 528, baseType: !1356, size: 8, offset: 1072)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1344, file: !1345, line: 529, baseType: !1356, size: 8, offset: 1080)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1344, file: !1345, line: 530, baseType: !1356, size: 8, offset: 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1344, file: !1345, line: 531, baseType: !1356, size: 8, offset: 1096)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1344, file: !1345, line: 532, baseType: !1356, size: 8, offset: 1104)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1344, file: !1345, line: 533, baseType: !1356, size: 8, offset: 1112)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1344, file: !1345, line: 534, baseType: !1356, size: 8, offset: 1120)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1344, file: !1345, line: 535, baseType: !1356, size: 8, offset: 1128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1344, file: !1345, line: 536, baseType: !1356, size: 8, offset: 1136)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1344, file: !1345, line: 537, baseType: !1356, size: 8, offset: 1144)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1344, file: !1345, line: 538, baseType: !1356, size: 8, offset: 1152)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1344, file: !1345, line: 539, baseType: !1356, size: 8, offset: 1160)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1344, file: !1345, line: 540, baseType: !1356, size: 8, offset: 1168)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1344, file: !1345, line: 541, baseType: !1356, size: 8, offset: 1176)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1344, file: !1345, line: 542, baseType: !1356, size: 8, offset: 1184)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1344, file: !1345, line: 543, baseType: !1356, size: 8, offset: 1192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1344, file: !1345, line: 544, baseType: !1356, size: 8, offset: 1200)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1344, file: !1345, line: 545, baseType: !1356, size: 8, offset: 1208)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1344, file: !1345, line: 546, baseType: !1356, size: 8, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1344, file: !1345, line: 547, baseType: !1356, size: 8, offset: 1224)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1344, file: !1345, line: 548, baseType: !1356, size: 8, offset: 1232)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1344, file: !1345, line: 549, baseType: !1356, size: 8, offset: 1240)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1344, file: !1345, line: 550, baseType: !1356, size: 8, offset: 1248)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1344, file: !1345, line: 551, baseType: !1356, size: 8, offset: 1256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1344, file: !1345, line: 552, baseType: !1356, size: 8, offset: 1264)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1344, file: !1345, line: 553, baseType: !1356, size: 8, offset: 1272)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1344, file: !1345, line: 554, baseType: !1356, size: 8, offset: 1280)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1344, file: !1345, line: 555, baseType: !1356, size: 8, offset: 1288)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1344, file: !1345, line: 556, baseType: !1356, size: 8, offset: 1296)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1344, file: !1345, line: 557, baseType: !1356, size: 8, offset: 1304)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1344, file: !1345, line: 558, baseType: !1356, size: 8, offset: 1312)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1344, file: !1345, line: 559, baseType: !1356, size: 8, offset: 1320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1344, file: !1345, line: 560, baseType: !1356, size: 8, offset: 1328)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1344, file: !1345, line: 561, baseType: !1356, size: 8, offset: 1336)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1344, file: !1345, line: 562, baseType: !1356, size: 8, offset: 1344)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1344, file: !1345, line: 563, baseType: !1356, size: 8, offset: 1352)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1344, file: !1345, line: 564, baseType: !1356, size: 8, offset: 1360)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1344, file: !1345, line: 565, baseType: !1356, size: 8, offset: 1368)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1344, file: !1345, line: 566, baseType: !1356, size: 8, offset: 1376)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1344, file: !1345, line: 567, baseType: !1356, size: 8, offset: 1384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1344, file: !1345, line: 568, baseType: !1356, size: 8, offset: 1392)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1344, file: !1345, line: 569, baseType: !1356, size: 8, offset: 1400)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1344, file: !1345, line: 570, baseType: !1356, size: 8, offset: 1408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1344, file: !1345, line: 571, baseType: !1356, size: 8, offset: 1416)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1344, file: !1345, line: 572, baseType: !1356, size: 8, offset: 1424)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1344, file: !1345, line: 573, baseType: !1356, size: 8, offset: 1432)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1344, file: !1345, line: 574, baseType: !1356, size: 8, offset: 1440)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !424, file: !37, line: 3405, baseType: !1512, size: 384)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !37, line: 3352, size: 384, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1512, file: !37, line: 3353, baseType: !460, size: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1512, file: !37, line: 3356, baseType: !1516, size: 192, offset: 192)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1345, line: 578, size: 192, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1516, file: !1345, line: 580, baseType: !321, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1516, file: !1345, line: 581, baseType: !321, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1516, file: !1345, line: 582, baseType: !321, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1516, file: !1345, line: 583, baseType: !321, size: 32, offset: 96)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1516, file: !1345, line: 584, baseType: !320, size: 8, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1516, file: !1345, line: 585, baseType: !320, size: 8, offset: 136)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1516, file: !1345, line: 586, baseType: !320, size: 8, offset: 144)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1516, file: !1345, line: 587, baseType: !320, size: 8, offset: 152)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1516, file: !1345, line: 588, baseType: !320, size: 8, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1516, file: !1345, line: 589, baseType: !320, size: 8, offset: 168)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1516, file: !1345, line: 590, baseType: !320, size: 8, offset: 176)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !416, file: !37, line: 5292, baseType: !7, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_streamer_cache_d", file: !6, line: 346, size: 256, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "node_map", scope: !1531, file: !6, line: 349, baseType: !989, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "next_slot", scope: !1531, file: !6, line: 352, baseType: !7, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1531, file: !6, line: 355, baseType: !1052, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !1531, file: !6, line: 358, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_unsigned_heap", file: !1539, line: 35, baseType: !1540)
!1539 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_unsigned_heap", file: !1539, line: 35, size: 96, elements: !1541)
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1540, file: !1539, line: 35, baseType: !1543, size: 96)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_unsigned_base", file: !1539, line: 34, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_unsigned_base", file: !1539, line: 34, size: 96, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1544, file: !1539, line: 34, baseType: !7, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1544, file: !1539, line: 34, baseType: !7, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1544, file: !1539, line: 34, baseType: !1549, size: 32, offset: 64)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !413)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !37, line: 184, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !37, line: 184, size: 128, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1552, file: !37, line: 184, baseType: !1057, size: 128)
!1555 = !{!1556, !1559, !1581, !1583}
!1556 = !DIGlobalVariableExpression(var: !1557, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!1557 = distinct !DIGlobalVariable(name: "BITS_PER_BITPACK_WORD", scope: !2, file: !6, line: 150, type: !1558, isLocal: true, isDefinition: true)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1559 = !DIGlobalVariableExpression(var: !1560, expr: !DIExpression())
!1560 = distinct !DIGlobalVariable(name: "lto_stats", scope: !2, file: !3, line: 38, type: !1561, isLocal: false, isDefinition: true)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_stats_d", file: !6, line: 444, size: 13312, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1572, !1573, !1577, !1578, !1579, !1580}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "num_input_cgraph_nodes", scope: !1561, file: !6, line: 446, baseType: !346, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "num_output_cgraph_nodes", scope: !1561, file: !6, line: 447, baseType: !346, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "num_input_files", scope: !1561, file: !6, line: 448, baseType: !346, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "num_output_files", scope: !1561, file: !6, line: 449, baseType: !346, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "num_cgraph_partitions", scope: !1561, file: !6, line: 450, baseType: !346, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "section_size", scope: !1561, file: !6, line: 451, baseType: !1569, size: 640, offset: 320)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 640, elements: !1570)
!1570 = !{!1571}
!1571 = !DISubrange(count: 10)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "num_function_bodies", scope: !1561, file: !6, line: 452, baseType: !346, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "num_trees", scope: !1561, file: !6, line: 453, baseType: !1574, size: 12032, offset: 1024)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 12032, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 188)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "num_output_il_bytes", scope: !1561, file: !6, line: 454, baseType: !346, size: 64, offset: 13056)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "num_compressed_il_bytes", scope: !1561, file: !6, line: 455, baseType: !346, size: 64, offset: 13120)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "num_input_il_bytes", scope: !1561, file: !6, line: 456, baseType: !346, size: 64, offset: 13184)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "num_uncompressed_il_bytes", scope: !1561, file: !6, line: 457, baseType: !346, size: 64, offset: 13248)
!1581 = !DIGlobalVariableExpression(var: !1582, expr: !DIExpression())
!1582 = distinct !DIGlobalVariable(name: "lto_obstack", scope: !2, file: !3, line: 42, type: !353, isLocal: true, isDefinition: true)
!1583 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1584 = !{i32 2, !"Dwarf Version", i32 4}
!1585 = !{i32 2, !"Debug Info Version", i32 3}
!1586 = !{i32 1, !"wchar_size", i32 4}
!1587 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1588 = distinct !DISubprogram(name: "vprintf", scope: !1589, file: !1589, line: 39, type: !1590, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1600)
!1589 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!321, !1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !326)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1594, file: !3, baseType: !7, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1594, file: !3, baseType: !7, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1594, file: !3, baseType: !325, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1594, file: !3, baseType: !325, size: 64, offset: 128)
!1600 = !{!1601, !1602}
!1601 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1588, file: !1589, line: 39, type: !1592)
!1602 = !DILocalVariable(name: "__arg", arg: 2, scope: !1588, file: !1589, line: 39, type: !1593)
!1603 = !DILocation(line: 0, scope: !1588)
!1604 = !DILocation(line: 41, column: 20, scope: !1588)
!1605 = !DILocation(line: 41, column: 10, scope: !1588)
!1606 = !DILocation(line: 41, column: 3, scope: !1588)
!1607 = distinct !DISubprogram(name: "getchar", scope: !1589, file: !1589, line: 47, type: !1608, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!321}
!1610 = !{}
!1611 = !DILocation(line: 49, column: 16, scope: !1607)
!1612 = !DILocation(line: 49, column: 10, scope: !1607)
!1613 = !DILocation(line: 49, column: 3, scope: !1607)
!1614 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1589, file: !1589, line: 56, type: !1615, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!321, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1619, line: 7, baseType: !1620)
!1619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1621, line: 49, size: 1728, elements: !1622)
!1621 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1638, !1640, !1641, !1642, !1645, !1647, !1648, !1649, !1652, !1654, !1657, !1660, !1661, !1662, !1663, !1664}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1620, file: !1621, line: 51, baseType: !321, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1620, file: !1621, line: 54, baseType: !323, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1620, file: !1621, line: 55, baseType: !323, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1620, file: !1621, line: 56, baseType: !323, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1620, file: !1621, line: 57, baseType: !323, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1620, file: !1621, line: 58, baseType: !323, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1620, file: !1621, line: 59, baseType: !323, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1620, file: !1621, line: 60, baseType: !323, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1620, file: !1621, line: 61, baseType: !323, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1620, file: !1621, line: 64, baseType: !323, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1620, file: !1621, line: 65, baseType: !323, size: 64, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1620, file: !1621, line: 66, baseType: !323, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1620, file: !1621, line: 68, baseType: !1636, size: 64, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1621, line: 36, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1620, file: !1621, line: 70, baseType: !1639, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1620, file: !1621, line: 72, baseType: !321, size: 32, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1620, file: !1621, line: 73, baseType: !321, size: 32, offset: 928)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1620, file: !1621, line: 74, baseType: !1643, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1644, line: 152, baseType: !363)
!1644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1620, file: !1621, line: 77, baseType: !1646, size: 16, offset: 1024)
!1646 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1620, file: !1621, line: 78, baseType: !1356, size: 8, offset: 1040)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1620, file: !1621, line: 79, baseType: !501, size: 8, offset: 1048)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1620, file: !1621, line: 81, baseType: !1650, size: 64, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1621, line: 43, baseType: null)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1620, file: !1621, line: 89, baseType: !1653, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1644, line: 153, baseType: !363)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1620, file: !1621, line: 91, baseType: !1655, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1621, line: 37, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1620, file: !1621, line: 92, baseType: !1658, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1621, line: 38, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1620, file: !1621, line: 93, baseType: !1639, size: 64, offset: 1344)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1620, file: !1621, line: 94, baseType: !325, size: 64, offset: 1408)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1620, file: !1621, line: 95, baseType: !396, size: 64, offset: 1472)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1620, file: !1621, line: 96, baseType: !321, size: 32, offset: 1536)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1620, file: !1621, line: 98, baseType: !1665, size: 160, offset: 1568)
!1665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 160, elements: !1666)
!1666 = !{!1667}
!1667 = !DISubrange(count: 20)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "__fp", arg: 1, scope: !1614, file: !1589, line: 56, type: !1617)
!1670 = !DILocation(line: 0, scope: !1614)
!1671 = !DILocation(line: 58, column: 10, scope: !1614)
!1672 = !DILocation(line: 58, column: 3, scope: !1614)
!1673 = distinct !DISubprogram(name: "getc_unlocked", scope: !1589, file: !1589, line: 66, type: !1615, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "__fp", arg: 1, scope: !1673, file: !1589, line: 66, type: !1617)
!1676 = !DILocation(line: 0, scope: !1673)
!1677 = !DILocation(line: 68, column: 10, scope: !1673)
!1678 = !DILocation(line: 68, column: 3, scope: !1673)
!1679 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1589, file: !1589, line: 73, type: !1608, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1680 = !DILocation(line: 75, column: 10, scope: !1679)
!1681 = !DILocation(line: 75, column: 3, scope: !1679)
!1682 = distinct !DISubprogram(name: "putchar", scope: !1589, file: !1589, line: 82, type: !1683, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!321, !321}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "__c", arg: 1, scope: !1682, file: !1589, line: 82, type: !321)
!1687 = !DILocation(line: 0, scope: !1682)
!1688 = !DILocation(line: 84, column: 21, scope: !1682)
!1689 = !DILocation(line: 84, column: 10, scope: !1682)
!1690 = !DILocation(line: 84, column: 3, scope: !1682)
!1691 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1589, file: !1589, line: 91, type: !1692, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!321, !321, !1617}
!1694 = !{!1695, !1696}
!1695 = !DILocalVariable(name: "__c", arg: 1, scope: !1691, file: !1589, line: 91, type: !321)
!1696 = !DILocalVariable(name: "__stream", arg: 2, scope: !1691, file: !1589, line: 91, type: !1617)
!1697 = !DILocation(line: 0, scope: !1691)
!1698 = !DILocation(line: 93, column: 10, scope: !1691)
!1699 = !DILocation(line: 93, column: 3, scope: !1691)
!1700 = distinct !DISubprogram(name: "putc_unlocked", scope: !1589, file: !1589, line: 101, type: !1692, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1701 = !{!1702, !1703}
!1702 = !DILocalVariable(name: "__c", arg: 1, scope: !1700, file: !1589, line: 101, type: !321)
!1703 = !DILocalVariable(name: "__stream", arg: 2, scope: !1700, file: !1589, line: 101, type: !1617)
!1704 = !DILocation(line: 0, scope: !1700)
!1705 = !DILocation(line: 103, column: 10, scope: !1700)
!1706 = !DILocation(line: 103, column: 3, scope: !1700)
!1707 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1589, file: !1589, line: 108, type: !1683, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "__c", arg: 1, scope: !1707, file: !1589, line: 108, type: !321)
!1710 = !DILocation(line: 0, scope: !1707)
!1711 = !DILocation(line: 110, column: 10, scope: !1707)
!1712 = !DILocation(line: 110, column: 3, scope: !1707)
!1713 = distinct !DISubprogram(name: "getline", scope: !1589, file: !1589, line: 118, type: !1714, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1718)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!1716, !322, !1717, !1617}
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1644, line: 193, baseType: !363)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1718 = !{!1719, !1720, !1721}
!1719 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1713, file: !1589, line: 118, type: !322)
!1720 = !DILocalVariable(name: "__n", arg: 2, scope: !1713, file: !1589, line: 118, type: !1717)
!1721 = !DILocalVariable(name: "__stream", arg: 3, scope: !1713, file: !1589, line: 118, type: !1617)
!1722 = !DILocation(line: 0, scope: !1713)
!1723 = !DILocation(line: 120, column: 10, scope: !1713)
!1724 = !DILocation(line: 120, column: 3, scope: !1713)
!1725 = distinct !DISubprogram(name: "feof_unlocked", scope: !1589, file: !1589, line: 128, type: !1615, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1726)
!1726 = !{!1727}
!1727 = !DILocalVariable(name: "__stream", arg: 1, scope: !1725, file: !1589, line: 128, type: !1617)
!1728 = !DILocation(line: 0, scope: !1725)
!1729 = !DILocation(line: 130, column: 10, scope: !1725)
!1730 = !DILocation(line: 130, column: 3, scope: !1725)
!1731 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1589, file: !1589, line: 135, type: !1615, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1732)
!1732 = !{!1733}
!1733 = !DILocalVariable(name: "__stream", arg: 1, scope: !1731, file: !1589, line: 135, type: !1617)
!1734 = !DILocation(line: 0, scope: !1731)
!1735 = !DILocation(line: 137, column: 10, scope: !1731)
!1736 = !DILocation(line: 137, column: 3, scope: !1731)
!1737 = distinct !DISubprogram(name: "tolower", scope: !1738, file: !1738, line: 207, type: !1683, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1738 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1739 = !{!1740}
!1740 = !DILocalVariable(name: "__c", arg: 1, scope: !1737, file: !1738, line: 207, type: !321)
!1741 = !DILocation(line: 0, scope: !1737)
!1742 = !DILocation(line: 209, column: 22, scope: !1737)
!1743 = !DILocation(line: 209, column: 39, scope: !1737)
!1744 = !DILocation(line: 209, column: 38, scope: !1737)
!1745 = !DILocation(line: 209, column: 37, scope: !1737)
!1746 = !DILocation(line: 209, column: 10, scope: !1737)
!1747 = !DILocation(line: 209, column: 3, scope: !1737)
!1748 = distinct !DISubprogram(name: "toupper", scope: !1738, file: !1738, line: 213, type: !1683, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1749)
!1749 = !{!1750}
!1750 = !DILocalVariable(name: "__c", arg: 1, scope: !1748, file: !1738, line: 213, type: !321)
!1751 = !DILocation(line: 0, scope: !1748)
!1752 = !DILocation(line: 215, column: 22, scope: !1748)
!1753 = !DILocation(line: 215, column: 39, scope: !1748)
!1754 = !DILocation(line: 215, column: 38, scope: !1748)
!1755 = !DILocation(line: 215, column: 37, scope: !1748)
!1756 = !DILocation(line: 215, column: 10, scope: !1748)
!1757 = !DILocation(line: 215, column: 3, scope: !1748)
!1758 = distinct !DISubprogram(name: "atoi", scope: !1759, file: !1759, line: 361, type: !1760, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1762)
!1759 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!321, !326}
!1762 = !{!1763}
!1763 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1758, file: !1759, line: 361, type: !326)
!1764 = !DILocation(line: 0, scope: !1758)
!1765 = !DILocation(line: 363, column: 16, scope: !1758)
!1766 = !DILocation(line: 363, column: 10, scope: !1758)
!1767 = !DILocation(line: 363, column: 3, scope: !1758)
!1768 = distinct !DISubprogram(name: "atol", scope: !1759, file: !1759, line: 366, type: !1769, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!363, !326}
!1771 = !{!1772}
!1772 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1768, file: !1759, line: 366, type: !326)
!1773 = !DILocation(line: 0, scope: !1768)
!1774 = !DILocation(line: 368, column: 10, scope: !1768)
!1775 = !DILocation(line: 368, column: 3, scope: !1768)
!1776 = distinct !DISubprogram(name: "atoll", scope: !1759, file: !1759, line: 373, type: !1777, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1780)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1779, !326}
!1779 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1780 = !{!1781}
!1781 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1776, file: !1759, line: 373, type: !326)
!1782 = !DILocation(line: 0, scope: !1776)
!1783 = !DILocation(line: 375, column: 10, scope: !1776)
!1784 = !DILocation(line: 375, column: 3, scope: !1776)
!1785 = distinct !DISubprogram(name: "bsearch", scope: !1786, file: !1786, line: 20, type: !1787, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!325, !1000, !1000, !396, !396, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1759, line: 808, baseType: !1004)
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1791 = !DILocalVariable(name: "__key", arg: 1, scope: !1785, file: !1786, line: 20, type: !1000)
!1792 = !DILocalVariable(name: "__base", arg: 2, scope: !1785, file: !1786, line: 20, type: !1000)
!1793 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1785, file: !1786, line: 20, type: !396)
!1794 = !DILocalVariable(name: "__size", arg: 4, scope: !1785, file: !1786, line: 20, type: !396)
!1795 = !DILocalVariable(name: "__compar", arg: 5, scope: !1785, file: !1786, line: 21, type: !1789)
!1796 = !DILocalVariable(name: "__l", scope: !1785, file: !1786, line: 23, type: !396)
!1797 = !DILocalVariable(name: "__u", scope: !1785, file: !1786, line: 23, type: !396)
!1798 = !DILocalVariable(name: "__idx", scope: !1785, file: !1786, line: 23, type: !396)
!1799 = !DILocalVariable(name: "__p", scope: !1785, file: !1786, line: 24, type: !1000)
!1800 = !DILocalVariable(name: "__comparison", scope: !1785, file: !1786, line: 25, type: !321)
!1801 = !DILocation(line: 0, scope: !1785)
!1802 = !DILocation(line: 29, column: 3, scope: !1785)
!1803 = !DILocation(line: 27, column: 7, scope: !1785)
!1804 = !DILocation(line: 29, column: 14, scope: !1785)
!1805 = !DILocation(line: 31, column: 20, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1785, file: !1786, line: 30, column: 5)
!1807 = !DILocation(line: 31, column: 27, scope: !1806)
!1808 = !DILocation(line: 32, column: 56, scope: !1806)
!1809 = !DILocation(line: 32, column: 47, scope: !1806)
!1810 = !DILocation(line: 33, column: 22, scope: !1806)
!1811 = !DILocation(line: 34, column: 24, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !1786, line: 34, column: 11)
!1813 = !DILocation(line: 34, column: 11, scope: !1806)
!1814 = !DILocation(line: 36, column: 29, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1812, file: !1786, line: 36, column: 16)
!1816 = !DILocation(line: 36, column: 16, scope: !1812)
!1817 = !DILocation(line: 37, column: 14, scope: !1815)
!1818 = distinct !{!1818, !1802, !1819}
!1819 = !DILocation(line: 40, column: 5, scope: !1785)
!1820 = !DILocation(line: 43, column: 1, scope: !1785)
!1821 = distinct !DISubprogram(name: "atof", scope: !1822, file: !1822, line: 25, type: !1823, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1822 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1825, !326}
!1825 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1826 = !{!1827}
!1827 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1821, file: !1822, line: 25, type: !326)
!1828 = !DILocation(line: 0, scope: !1821)
!1829 = !DILocation(line: 27, column: 10, scope: !1821)
!1830 = !DILocation(line: 27, column: 3, scope: !1821)
!1831 = distinct !DISubprogram(name: "strtoimax", scope: !1832, file: !1832, line: 324, type: !1833, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1832 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !1592, !1838, !321}
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1836, line: 101, baseType: !1837)
!1836 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1644, line: 72, baseType: !363)
!1838 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!1839 = !{!1840, !1841, !1842}
!1840 = !DILocalVariable(name: "nptr", arg: 1, scope: !1831, file: !1832, line: 324, type: !1592)
!1841 = !DILocalVariable(name: "endptr", arg: 2, scope: !1831, file: !1832, line: 324, type: !1838)
!1842 = !DILocalVariable(name: "base", arg: 3, scope: !1831, file: !1832, line: 324, type: !321)
!1843 = !DILocation(line: 0, scope: !1831)
!1844 = !DILocation(line: 327, column: 10, scope: !1831)
!1845 = !DILocation(line: 327, column: 3, scope: !1831)
!1846 = distinct !DISubprogram(name: "strtoumax", scope: !1832, file: !1832, line: 336, type: !1847, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1849, !1592, !1838, !321}
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1836, line: 102, baseType: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1644, line: 73, baseType: !346)
!1851 = !{!1852, !1853, !1854}
!1852 = !DILocalVariable(name: "nptr", arg: 1, scope: !1846, file: !1832, line: 336, type: !1592)
!1853 = !DILocalVariable(name: "endptr", arg: 2, scope: !1846, file: !1832, line: 336, type: !1838)
!1854 = !DILocalVariable(name: "base", arg: 3, scope: !1846, file: !1832, line: 336, type: !321)
!1855 = !DILocation(line: 0, scope: !1846)
!1856 = !DILocation(line: 339, column: 10, scope: !1846)
!1857 = !DILocation(line: 339, column: 3, scope: !1846)
!1858 = distinct !DISubprogram(name: "wcstoimax", scope: !1832, file: !1832, line: 348, type: !1859, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1835, !1861, !1865, !321}
!1861 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1832, line: 34, baseType: !321)
!1865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1868 = !{!1869, !1870, !1871}
!1869 = !DILocalVariable(name: "nptr", arg: 1, scope: !1858, file: !1832, line: 348, type: !1861)
!1870 = !DILocalVariable(name: "endptr", arg: 2, scope: !1858, file: !1832, line: 348, type: !1865)
!1871 = !DILocalVariable(name: "base", arg: 3, scope: !1858, file: !1832, line: 348, type: !321)
!1872 = !DILocation(line: 0, scope: !1858)
!1873 = !DILocation(line: 351, column: 10, scope: !1858)
!1874 = !DILocation(line: 351, column: 3, scope: !1858)
!1875 = distinct !DISubprogram(name: "wcstoumax", scope: !1832, file: !1832, line: 362, type: !1876, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1849, !1861, !1865, !321}
!1878 = !{!1879, !1880, !1881}
!1879 = !DILocalVariable(name: "nptr", arg: 1, scope: !1875, file: !1832, line: 362, type: !1861)
!1880 = !DILocalVariable(name: "endptr", arg: 2, scope: !1875, file: !1832, line: 362, type: !1865)
!1881 = !DILocalVariable(name: "base", arg: 3, scope: !1875, file: !1832, line: 362, type: !321)
!1882 = !DILocation(line: 0, scope: !1875)
!1883 = !DILocation(line: 365, column: 10, scope: !1875)
!1884 = !DILocation(line: 365, column: 3, scope: !1875)
!1885 = distinct !DISubprogram(name: "stat", scope: !1886, file: !1886, line: 453, type: !1887, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1886 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!321, !326, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1891, line: 46, size: 1152, elements: !1892)
!1891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1892 = !{!1893, !1895, !1897, !1899, !1901, !1903, !1905, !1906, !1907, !1908, !1910, !1912, !1920, !1921, !1922}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1890, file: !1891, line: 48, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1644, line: 145, baseType: !346)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1890, file: !1891, line: 53, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1644, line: 148, baseType: !346)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1890, file: !1891, line: 61, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1644, line: 151, baseType: !346)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1890, file: !1891, line: 62, baseType: !1900, size: 32, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1644, line: 150, baseType: !7)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1890, file: !1891, line: 64, baseType: !1902, size: 32, offset: 224)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1644, line: 146, baseType: !7)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1890, file: !1891, line: 65, baseType: !1904, size: 32, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1644, line: 147, baseType: !7)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1890, file: !1891, line: 67, baseType: !321, size: 32, offset: 288)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1890, file: !1891, line: 69, baseType: !1894, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1890, file: !1891, line: 74, baseType: !1643, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1890, file: !1891, line: 78, baseType: !1909, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1644, line: 174, baseType: !363)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1890, file: !1891, line: 80, baseType: !1911, size: 64, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1644, line: 179, baseType: !363)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1890, file: !1891, line: 91, baseType: !1913, size: 128, offset: 576)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1914, line: 10, size: 128, elements: !1915)
!1914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1915 = !{!1916, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1913, file: !1914, line: 12, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1644, line: 160, baseType: !363)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1913, file: !1914, line: 16, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1644, line: 196, baseType: !363)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1890, file: !1891, line: 92, baseType: !1913, size: 128, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1890, file: !1891, line: 93, baseType: !1913, size: 128, offset: 832)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1890, file: !1891, line: 106, baseType: !1923, size: 192, offset: 960)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 192, elements: !1924)
!1924 = !{!1925}
!1925 = !DISubrange(count: 3)
!1926 = !{!1927, !1928}
!1927 = !DILocalVariable(name: "__path", arg: 1, scope: !1885, file: !1886, line: 453, type: !326)
!1928 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1885, file: !1886, line: 453, type: !1889)
!1929 = !DILocation(line: 0, scope: !1885)
!1930 = !DILocation(line: 455, column: 10, scope: !1885)
!1931 = !DILocation(line: 455, column: 3, scope: !1885)
!1932 = distinct !DISubprogram(name: "lstat", scope: !1886, file: !1886, line: 460, type: !1887, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1933 = !{!1934, !1935}
!1934 = !DILocalVariable(name: "__path", arg: 1, scope: !1932, file: !1886, line: 460, type: !326)
!1935 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1932, file: !1886, line: 460, type: !1889)
!1936 = !DILocation(line: 0, scope: !1932)
!1937 = !DILocation(line: 462, column: 10, scope: !1932)
!1938 = !DILocation(line: 462, column: 3, scope: !1932)
!1939 = distinct !DISubprogram(name: "fstat", scope: !1886, file: !1886, line: 467, type: !1940, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!321, !321, !1889}
!1942 = !{!1943, !1944}
!1943 = !DILocalVariable(name: "__fd", arg: 1, scope: !1939, file: !1886, line: 467, type: !321)
!1944 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1939, file: !1886, line: 467, type: !1889)
!1945 = !DILocation(line: 0, scope: !1939)
!1946 = !DILocation(line: 469, column: 10, scope: !1939)
!1947 = !DILocation(line: 469, column: 3, scope: !1939)
!1948 = distinct !DISubprogram(name: "fstatat", scope: !1886, file: !1886, line: 474, type: !1949, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!321, !321, !326, !1889, !321}
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DILocalVariable(name: "__fd", arg: 1, scope: !1948, file: !1886, line: 474, type: !321)
!1953 = !DILocalVariable(name: "__filename", arg: 2, scope: !1948, file: !1886, line: 474, type: !326)
!1954 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1948, file: !1886, line: 474, type: !1889)
!1955 = !DILocalVariable(name: "__flag", arg: 4, scope: !1948, file: !1886, line: 474, type: !321)
!1956 = !DILocation(line: 0, scope: !1948)
!1957 = !DILocation(line: 477, column: 10, scope: !1948)
!1958 = !DILocation(line: 477, column: 3, scope: !1948)
!1959 = distinct !DISubprogram(name: "mknod", scope: !1886, file: !1886, line: 483, type: !1960, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!321, !326, !1900, !1894}
!1962 = !{!1963, !1964, !1965}
!1963 = !DILocalVariable(name: "__path", arg: 1, scope: !1959, file: !1886, line: 483, type: !326)
!1964 = !DILocalVariable(name: "__mode", arg: 2, scope: !1959, file: !1886, line: 483, type: !1900)
!1965 = !DILocalVariable(name: "__dev", arg: 3, scope: !1959, file: !1886, line: 483, type: !1894)
!1966 = !DILocation(line: 0, scope: !1959)
!1967 = !DILocation(line: 485, column: 10, scope: !1959)
!1968 = !DILocation(line: 485, column: 3, scope: !1959)
!1969 = distinct !DISubprogram(name: "mknodat", scope: !1886, file: !1886, line: 491, type: !1970, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!321, !321, !326, !1900, !1894}
!1972 = !{!1973, !1974, !1975, !1976}
!1973 = !DILocalVariable(name: "__fd", arg: 1, scope: !1969, file: !1886, line: 491, type: !321)
!1974 = !DILocalVariable(name: "__path", arg: 2, scope: !1969, file: !1886, line: 491, type: !326)
!1975 = !DILocalVariable(name: "__mode", arg: 3, scope: !1969, file: !1886, line: 491, type: !1900)
!1976 = !DILocalVariable(name: "__dev", arg: 4, scope: !1969, file: !1886, line: 491, type: !1894)
!1977 = !DILocation(line: 0, scope: !1969)
!1978 = !DILocation(line: 494, column: 10, scope: !1969)
!1979 = !DILocation(line: 494, column: 3, scope: !1969)
!1980 = distinct !DISubprogram(name: "stat64", scope: !1886, file: !1886, line: 502, type: !1981, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!321, !326, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1891, line: 119, size: 1152, elements: !1985)
!1985 = !{!1986, !1987, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1999, !2000, !2001, !2002}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1984, file: !1891, line: 121, baseType: !1894, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1984, file: !1891, line: 123, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1644, line: 149, baseType: !346)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1984, file: !1891, line: 124, baseType: !1898, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1984, file: !1891, line: 125, baseType: !1900, size: 32, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1984, file: !1891, line: 132, baseType: !1902, size: 32, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1984, file: !1891, line: 133, baseType: !1904, size: 32, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1984, file: !1891, line: 135, baseType: !321, size: 32, offset: 288)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1984, file: !1891, line: 136, baseType: !1894, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1984, file: !1891, line: 137, baseType: !1643, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1984, file: !1891, line: 143, baseType: !1909, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1984, file: !1891, line: 144, baseType: !1998, size: 64, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1644, line: 180, baseType: !363)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1984, file: !1891, line: 152, baseType: !1913, size: 128, offset: 576)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1984, file: !1891, line: 153, baseType: !1913, size: 128, offset: 704)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1984, file: !1891, line: 154, baseType: !1913, size: 128, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1984, file: !1891, line: 164, baseType: !1923, size: 192, offset: 960)
!2003 = !{!2004, !2005}
!2004 = !DILocalVariable(name: "__path", arg: 1, scope: !1980, file: !1886, line: 502, type: !326)
!2005 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1980, file: !1886, line: 502, type: !1983)
!2006 = !DILocation(line: 0, scope: !1980)
!2007 = !DILocation(line: 504, column: 10, scope: !1980)
!2008 = !DILocation(line: 504, column: 3, scope: !1980)
!2009 = distinct !DISubprogram(name: "lstat64", scope: !1886, file: !1886, line: 509, type: !1981, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "__path", arg: 1, scope: !2009, file: !1886, line: 509, type: !326)
!2012 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2009, file: !1886, line: 509, type: !1983)
!2013 = !DILocation(line: 0, scope: !2009)
!2014 = !DILocation(line: 511, column: 10, scope: !2009)
!2015 = !DILocation(line: 511, column: 3, scope: !2009)
!2016 = distinct !DISubprogram(name: "fstat64", scope: !1886, file: !1886, line: 516, type: !2017, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!321, !321, !1983}
!2019 = !{!2020, !2021}
!2020 = !DILocalVariable(name: "__fd", arg: 1, scope: !2016, file: !1886, line: 516, type: !321)
!2021 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2016, file: !1886, line: 516, type: !1983)
!2022 = !DILocation(line: 0, scope: !2016)
!2023 = !DILocation(line: 518, column: 10, scope: !2016)
!2024 = !DILocation(line: 518, column: 3, scope: !2016)
!2025 = distinct !DISubprogram(name: "fstatat64", scope: !1886, file: !1886, line: 523, type: !2026, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!321, !321, !326, !1983, !321}
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DILocalVariable(name: "__fd", arg: 1, scope: !2025, file: !1886, line: 523, type: !321)
!2030 = !DILocalVariable(name: "__filename", arg: 2, scope: !2025, file: !1886, line: 523, type: !326)
!2031 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2025, file: !1886, line: 523, type: !1983)
!2032 = !DILocalVariable(name: "__flag", arg: 4, scope: !2025, file: !1886, line: 523, type: !321)
!2033 = !DILocation(line: 0, scope: !2025)
!2034 = !DILocation(line: 526, column: 10, scope: !2025)
!2035 = !DILocation(line: 526, column: 3, scope: !2025)
!2036 = distinct !DISubprogram(name: "lto_tag_name", scope: !3, file: !3, line: 49, type: !2037, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!326, !5}
!2039 = !{!2040}
!2040 = !DILocalVariable(name: "tag", arg: 1, scope: !2036, file: !3, line: 49, type: !5)
!2041 = !DILocation(line: 0, scope: !2036)
!2042 = !DILocation(line: 51, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 51, column: 7)
!2044 = !DILocation(line: 51, column: 7, scope: !2036)
!2045 = !DILocation(line: 55, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 52, column: 5)
!2047 = !DILocation(line: 55, column: 14, scope: !2046)
!2048 = !DILocation(line: 55, column: 7, scope: !2046)
!2049 = !DILocation(line: 58, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 58, column: 7)
!2051 = !DILocation(line: 58, column: 7, scope: !2036)
!2052 = !DILocation(line: 62, column: 31, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 59, column: 5)
!2054 = !DILocation(line: 62, column: 14, scope: !2053)
!2055 = !DILocation(line: 62, column: 7, scope: !2053)
!2056 = !DILocation(line: 65, column: 3, scope: !2036)
!2057 = !DILocation(line: 70, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 66, column: 5)
!2059 = !DILocation(line: 72, column: 7, scope: !2058)
!2060 = !DILocation(line: 74, column: 7, scope: !2058)
!2061 = !DILocation(line: 76, column: 7, scope: !2058)
!2062 = !DILocation(line: 78, column: 7, scope: !2058)
!2063 = !DILocation(line: 80, column: 7, scope: !2058)
!2064 = !DILocation(line: 82, column: 7, scope: !2058)
!2065 = !DILocation(line: 84, column: 7, scope: !2058)
!2066 = !DILocation(line: 86, column: 7, scope: !2058)
!2067 = !DILocation(line: 88, column: 7, scope: !2058)
!2068 = !DILocation(line: 90, column: 7, scope: !2058)
!2069 = !DILocation(line: 92, column: 7, scope: !2058)
!2070 = !DILocation(line: 94, column: 7, scope: !2058)
!2071 = !DILocation(line: 96, column: 7, scope: !2058)
!2072 = !DILocation(line: 98, column: 7, scope: !2058)
!2073 = !DILocation(line: 100, column: 7, scope: !2058)
!2074 = !DILocation(line: 102, column: 7, scope: !2058)
!2075 = !DILocation(line: 104, column: 7, scope: !2058)
!2076 = !DILocation(line: 106, column: 7, scope: !2058)
!2077 = !DILocation(line: 108, column: 7, scope: !2058)
!2078 = !DILocation(line: 110, column: 1, scope: !2036)
!2079 = distinct !DISubprogram(name: "lto_tag_is_tree_code_p", scope: !6, file: !6, line: 878, type: !2080, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!320, !5}
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "tag", arg: 1, scope: !2079, file: !6, line: 878, type: !5)
!2084 = !DILocation(line: 0, scope: !2079)
!2085 = !DILocation(line: 880, column: 25, scope: !2079)
!2086 = !DILocation(line: 880, column: 10, scope: !2079)
!2087 = !DILocation(line: 880, column: 3, scope: !2079)
!2088 = distinct !DISubprogram(name: "lto_tag_to_tree_code", scope: !6, file: !6, line: 924, type: !2089, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!36, !5}
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "tag", arg: 1, scope: !2088, file: !6, line: 924, type: !5)
!2093 = !DILocation(line: 0, scope: !2088)
!2094 = !DILocation(line: 926, column: 3, scope: !2088)
!2095 = !DILocation(line: 927, column: 43, scope: !2088)
!2096 = !DILocation(line: 927, column: 3, scope: !2088)
!2097 = distinct !DISubprogram(name: "lto_tag_is_gimple_code_p", scope: !6, file: !6, line: 886, type: !2080, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "tag", arg: 1, scope: !2097, file: !6, line: 886, type: !5)
!2100 = !DILocation(line: 0, scope: !2097)
!2101 = !DILocation(line: 889, column: 3, scope: !2097)
!2102 = !DILocation(line: 888, column: 10, scope: !2097)
!2103 = !DILocation(line: 888, column: 3, scope: !2097)
!2104 = distinct !DISubprogram(name: "lto_tag_to_gimple_code", scope: !6, file: !6, line: 905, type: !2105, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!279, !5}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "tag", arg: 1, scope: !2104, file: !6, line: 905, type: !5)
!2109 = !DILocation(line: 0, scope: !2104)
!2110 = !DILocation(line: 907, column: 3, scope: !2104)
!2111 = !DILocation(line: 908, column: 62, scope: !2104)
!2112 = !DILocation(line: 908, column: 3, scope: !2104)
!2113 = distinct !DISubprogram(name: "lto_bitmap_alloc", scope: !3, file: !3, line: 116, type: !2114, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!328}
!2116 = !DILocation(line: 118, column: 8, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 118, column: 7)
!2118 = !DILocation(line: 118, column: 7, scope: !2113)
!2119 = !DILocation(line: 120, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 119, column: 5)
!2121 = !DILocation(line: 121, column: 31, scope: !2120)
!2122 = !DILocation(line: 122, column: 5, scope: !2120)
!2123 = !DILocation(line: 123, column: 10, scope: !2113)
!2124 = !DILocation(line: 123, column: 3, scope: !2113)
!2125 = distinct !DISubprogram(name: "lto_bitmap_free", scope: !3, file: !3, line: 129, type: !2126, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !328}
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "b", arg: 1, scope: !2125, file: !3, line: 129, type: !328)
!2130 = !DILocation(line: 0, scope: !2125)
!2131 = !DILocation(line: 131, column: 3, scope: !2125)
!2132 = !DILocation(line: 132, column: 1, scope: !2125)
!2133 = distinct !DISubprogram(name: "lto_get_section_name", scope: !3, file: !3, line: 141, type: !2134, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!323, !321, !326}
!2136 = !{!2137, !2138}
!2137 = !DILocalVariable(name: "section_type", arg: 1, scope: !2133, file: !3, line: 141, type: !321)
!2138 = !DILocalVariable(name: "name", arg: 2, scope: !2133, file: !3, line: 141, type: !326)
!2139 = !DILocation(line: 0, scope: !2133)
!2140 = !DILocation(line: 143, column: 3, scope: !2133)
!2141 = !DILocation(line: 146, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 144, column: 5)
!2143 = !DILocation(line: 147, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 147, column: 11)
!2145 = !DILocation(line: 147, column: 19, scope: !2144)
!2146 = !DILocation(line: 148, column: 6, scope: !2144)
!2147 = !DILocation(line: 147, column: 11, scope: !2142)
!2148 = !DILocation(line: 149, column: 14, scope: !2142)
!2149 = !DILocation(line: 149, column: 7, scope: !2142)
!2150 = !DILocation(line: 152, column: 14, scope: !2142)
!2151 = !DILocation(line: 152, column: 7, scope: !2142)
!2152 = !DILocation(line: 155, column: 14, scope: !2142)
!2153 = !DILocation(line: 155, column: 7, scope: !2142)
!2154 = !DILocation(line: 158, column: 14, scope: !2142)
!2155 = !DILocation(line: 158, column: 7, scope: !2142)
!2156 = !DILocation(line: 161, column: 14, scope: !2142)
!2157 = !DILocation(line: 161, column: 7, scope: !2142)
!2158 = !DILocation(line: 164, column: 14, scope: !2142)
!2159 = !DILocation(line: 164, column: 7, scope: !2142)
!2160 = !DILocation(line: 167, column: 14, scope: !2142)
!2161 = !DILocation(line: 167, column: 7, scope: !2142)
!2162 = !DILocation(line: 170, column: 14, scope: !2142)
!2163 = !DILocation(line: 170, column: 7, scope: !2142)
!2164 = !DILocation(line: 173, column: 14, scope: !2142)
!2165 = !DILocation(line: 173, column: 7, scope: !2142)
!2166 = !DILocation(line: 176, column: 14, scope: !2142)
!2167 = !DILocation(line: 176, column: 7, scope: !2142)
!2168 = !DILocation(line: 179, column: 7, scope: !2142)
!2169 = !DILocation(line: 182, column: 5, scope: !2133)
!2170 = !DILocation(line: 184, column: 1, scope: !2133)
!2171 = distinct !DISubprogram(name: "print_lto_report", scope: !3, file: !3, line: 190, type: !2172, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null}
!2174 = !{!2175, !2176, !2177, !2183, !2184, !2189}
!2175 = !DILocalVariable(name: "s", scope: !2171, file: !3, line: 192, type: !326)
!2176 = !DILocalVariable(name: "i", scope: !2171, file: !3, line: 193, type: !7)
!2177 = !DILocalVariable(name: "dividend", scope: !2178, file: !3, line: 225, type: !2182)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 224, column: 2)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 223, column: 11)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 217, column: 5)
!2181 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 216, column: 7)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2183 = !DILocalVariable(name: "divisor", scope: !2178, file: !3, line: 226, type: !2182)
!2184 = !DILocalVariable(name: "dividend", scope: !2185, file: !3, line: 253, type: !2182)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 252, column: 2)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 251, column: 11)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 233, column: 5)
!2188 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 232, column: 7)
!2189 = !DILocalVariable(name: "divisor", scope: !2185, file: !3, line: 254, type: !2182)
!2190 = !DILocation(line: 192, column: 20, scope: !2171)
!2191 = !DILocation(line: 192, column: 19, scope: !2171)
!2192 = !DILocation(line: 192, column: 41, scope: !2171)
!2193 = !DILocation(line: 192, column: 40, scope: !2171)
!2194 = !DILocation(line: 0, scope: !2171)
!2195 = !DILocation(line: 195, column: 12, scope: !2171)
!2196 = !DILocation(line: 195, column: 3, scope: !2171)
!2197 = !DILocation(line: 196, column: 12, scope: !2171)
!2198 = !DILocation(line: 197, column: 53, scope: !2171)
!2199 = !DILocation(line: 196, column: 3, scope: !2171)
!2200 = !DILocation(line: 199, column: 12, scope: !2171)
!2201 = !DILocation(line: 201, column: 15, scope: !2171)
!2202 = !DILocation(line: 199, column: 3, scope: !2171)
!2203 = !DILocation(line: 203, column: 12, scope: !2171)
!2204 = !DILocation(line: 205, column: 15, scope: !2171)
!2205 = !DILocation(line: 203, column: 3, scope: !2171)
!2206 = !DILocation(line: 207, column: 12, scope: !2171)
!2207 = !DILocation(line: 207, column: 3, scope: !2171)
!2208 = !DILocation(line: 208, column: 3, scope: !2171)
!2209 = !DILocation(line: 210, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 210, column: 3)
!2211 = !DILocation(line: 0, scope: !2210)
!2212 = !DILocation(line: 210, column: 17, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 210, column: 3)
!2214 = !DILocation(line: 210, column: 3, scope: !2210)
!2215 = !DILocation(line: 211, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 211, column: 9)
!2217 = !DILocation(line: 211, column: 9, scope: !2213)
!2218 = !DILocation(line: 212, column: 16, scope: !2216)
!2219 = !DILocation(line: 214, column: 9, scope: !2216)
!2220 = !DILocation(line: 212, column: 7, scope: !2216)
!2221 = !DILocation(line: 210, column: 36, scope: !2213)
!2222 = !DILocation(line: 210, column: 3, scope: !2213)
!2223 = distinct !{!2223, !2214, !2224}
!2224 = !DILocation(line: 214, column: 50, scope: !2210)
!2225 = !DILocation(line: 216, column: 7, scope: !2181)
!2226 = !DILocation(line: 216, column: 7, scope: !2171)
!2227 = !DILocation(line: 218, column: 16, scope: !2180)
!2228 = !DILocation(line: 221, column: 19, scope: !2180)
!2229 = !DILocation(line: 222, column: 19, scope: !2180)
!2230 = !DILocation(line: 218, column: 7, scope: !2180)
!2231 = !DILocation(line: 223, column: 21, scope: !2179)
!2232 = !DILocation(line: 223, column: 41, scope: !2179)
!2233 = !DILocation(line: 223, column: 11, scope: !2180)
!2234 = !DILocation(line: 225, column: 45, scope: !2178)
!2235 = !DILocation(line: 225, column: 27, scope: !2178)
!2236 = !DILocation(line: 0, scope: !2178)
!2237 = !DILocation(line: 226, column: 26, scope: !2178)
!2238 = !DILocation(line: 227, column: 13, scope: !2178)
!2239 = !DILocation(line: 227, column: 46, scope: !2178)
!2240 = !DILocation(line: 227, column: 37, scope: !2178)
!2241 = !DILocation(line: 227, column: 4, scope: !2178)
!2242 = !DILocation(line: 228, column: 2, scope: !2178)
!2243 = !DILocation(line: 229, column: 16, scope: !2180)
!2244 = !DILocation(line: 229, column: 7, scope: !2180)
!2245 = !DILocation(line: 230, column: 5, scope: !2180)
!2246 = !DILocation(line: 232, column: 7, scope: !2188)
!2247 = !DILocation(line: 232, column: 7, scope: !2171)
!2248 = !DILocation(line: 234, column: 16, scope: !2187)
!2249 = !DILocation(line: 236, column: 19, scope: !2187)
!2250 = !DILocation(line: 234, column: 7, scope: !2187)
!2251 = !DILocation(line: 238, column: 16, scope: !2187)
!2252 = !DILocation(line: 240, column: 19, scope: !2187)
!2253 = !DILocation(line: 238, column: 7, scope: !2187)
!2254 = !DILocation(line: 242, column: 16, scope: !2187)
!2255 = !DILocation(line: 244, column: 19, scope: !2187)
!2256 = !DILocation(line: 242, column: 7, scope: !2187)
!2257 = !DILocation(line: 246, column: 16, scope: !2187)
!2258 = !DILocation(line: 249, column: 19, scope: !2187)
!2259 = !DILocation(line: 250, column: 19, scope: !2187)
!2260 = !DILocation(line: 246, column: 7, scope: !2187)
!2261 = !DILocation(line: 251, column: 21, scope: !2186)
!2262 = !DILocation(line: 251, column: 40, scope: !2186)
!2263 = !DILocation(line: 251, column: 11, scope: !2187)
!2264 = !DILocation(line: 253, column: 45, scope: !2185)
!2265 = !DILocation(line: 253, column: 27, scope: !2185)
!2266 = !DILocation(line: 0, scope: !2185)
!2267 = !DILocation(line: 254, column: 26, scope: !2185)
!2268 = !DILocation(line: 255, column: 13, scope: !2185)
!2269 = !DILocation(line: 255, column: 46, scope: !2185)
!2270 = !DILocation(line: 255, column: 37, scope: !2185)
!2271 = !DILocation(line: 255, column: 4, scope: !2185)
!2272 = !DILocation(line: 256, column: 2, scope: !2185)
!2273 = !DILocation(line: 257, column: 16, scope: !2187)
!2274 = !DILocation(line: 257, column: 7, scope: !2187)
!2275 = !DILocation(line: 258, column: 5, scope: !2187)
!2276 = !DILocation(line: 260, column: 8, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 260, column: 3)
!2278 = !DILocation(line: 0, scope: !2277)
!2279 = !DILocation(line: 260, column: 17, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 260, column: 3)
!2281 = !DILocation(line: 260, column: 3, scope: !2277)
!2282 = !DILocation(line: 261, column: 14, scope: !2280)
!2283 = !DILocation(line: 263, column: 7, scope: !2280)
!2284 = !DILocation(line: 263, column: 28, scope: !2280)
!2285 = !DILocation(line: 261, column: 5, scope: !2280)
!2286 = !DILocation(line: 260, column: 41, scope: !2280)
!2287 = !DILocation(line: 260, column: 3, scope: !2280)
!2288 = distinct !{!2288, !2281, !2289}
!2289 = !DILocation(line: 263, column: 53, scope: !2277)
!2290 = !DILocation(line: 264, column: 1, scope: !2171)
!2291 = distinct !DISubprogram(name: "bitpack_create", scope: !3, file: !3, line: 270, type: !2292, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!392}
!2294 = !DILocation(line: 272, column: 10, scope: !2291)
!2295 = !DILocation(line: 272, column: 3, scope: !2291)
!2296 = distinct !DISubprogram(name: "bitpack_delete", scope: !3, file: !3, line: 279, type: !2297, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !392}
!2299 = !{!2300}
!2300 = !DILocalVariable(name: "bp", arg: 1, scope: !2296, file: !3, line: 279, type: !392)
!2301 = !DILocation(line: 0, scope: !2296)
!2302 = !DILocation(line: 281, column: 3, scope: !2296)
!2303 = !DILocation(line: 282, column: 9, scope: !2296)
!2304 = !DILocation(line: 282, column: 3, scope: !2296)
!2305 = !DILocation(line: 283, column: 1, scope: !2296)
!2306 = distinct !DISubprogram(name: "VEC_bitpack_word_t_heap_free", scope: !6, file: !6, line: 154, type: !2307, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!2310 = !{!2311}
!2311 = !DILocalVariable(name: "vec_", arg: 1, scope: !2306, file: !6, line: 154, type: !2309)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 154, column: 1, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2306, file: !6, line: 154, column: 1)
!2315 = !DILocation(line: 154, column: 1, scope: !2306)
!2316 = distinct !DISubprogram(name: "bp_pack_value", scope: !3, file: !3, line: 318, type: !2317, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !392, !412, !7}
!2319 = !{!2320, !2321, !2322, !2323, !2324}
!2320 = !DILocalVariable(name: "bp", arg: 1, scope: !2316, file: !3, line: 318, type: !392)
!2321 = !DILocalVariable(name: "val", arg: 2, scope: !2316, file: !3, line: 318, type: !412)
!2322 = !DILocalVariable(name: "nbits", arg: 3, scope: !2316, file: !3, line: 318, type: !7)
!2323 = !DILocalVariable(name: "ix", scope: !2316, file: !3, line: 320, type: !7)
!2324 = !DILocalVariable(name: "word", scope: !2316, file: !3, line: 321, type: !412)
!2325 = !DILocation(line: 0, scope: !2316)
!2326 = !DILocation(line: 324, column: 3, scope: !2316)
!2327 = !DILocation(line: 327, column: 8, scope: !2316)
!2328 = !DILocation(line: 328, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 328, column: 7)
!2330 = !DILocation(line: 328, column: 10, scope: !2329)
!2331 = !DILocation(line: 328, column: 7, scope: !2316)
!2332 = !DILocation(line: 334, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 329, column: 5)
!2334 = !DILocation(line: 335, column: 7, scope: !2333)
!2335 = !DILocation(line: 336, column: 5, scope: !2333)
!2336 = !DILocation(line: 339, column: 10, scope: !2316)
!2337 = !DILocation(line: 343, column: 3, scope: !2316)
!2338 = !DILocation(line: 344, column: 15, scope: !2316)
!2339 = !DILocation(line: 344, column: 7, scope: !2316)
!2340 = !DILocation(line: 347, column: 8, scope: !2316)
!2341 = !DILocation(line: 350, column: 3, scope: !2316)
!2342 = !DILocation(line: 351, column: 7, scope: !2316)
!2343 = !DILocation(line: 351, column: 16, scope: !2316)
!2344 = !DILocation(line: 352, column: 24, scope: !2316)
!2345 = !DILocation(line: 353, column: 1, scope: !2316)
!2346 = distinct !DISubprogram(name: "bp_get_next_word", scope: !3, file: !3, line: 290, type: !2347, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!7, !392, !7}
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DILocalVariable(name: "bp", arg: 1, scope: !2346, file: !3, line: 290, type: !392)
!2351 = !DILocalVariable(name: "nbits", arg: 2, scope: !2346, file: !3, line: 290, type: !7)
!2352 = !DILocalVariable(name: "last", scope: !2346, file: !3, line: 292, type: !7)
!2353 = !DILocalVariable(name: "ix", scope: !2346, file: !3, line: 292, type: !7)
!2354 = !DILocation(line: 0, scope: !2346)
!2355 = !DILocation(line: 296, column: 12, scope: !2346)
!2356 = !DILocation(line: 296, column: 21, scope: !2346)
!2357 = !DILocation(line: 296, column: 8, scope: !2346)
!2358 = !DILocation(line: 302, column: 7, scope: !2346)
!2359 = !DILocation(line: 302, column: 24, scope: !2346)
!2360 = !DILocation(line: 303, column: 10, scope: !2346)
!2361 = !DILocation(line: 304, column: 12, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 304, column: 7)
!2363 = !DILocation(line: 304, column: 7, scope: !2346)
!2364 = !DILocation(line: 306, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 305, column: 5)
!2366 = !DILocation(line: 307, column: 46, scope: !2365)
!2367 = !DILocation(line: 307, column: 20, scope: !2365)
!2368 = !DILocation(line: 308, column: 28, scope: !2365)
!2369 = !DILocation(line: 309, column: 5, scope: !2365)
!2370 = !DILocation(line: 311, column: 3, scope: !2346)
!2371 = distinct !DISubprogram(name: "VEC_bitpack_word_t_base_length", scope: !6, file: !6, line: 153, type: !2372, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!7, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2376 = !{!2377}
!2377 = !DILocalVariable(name: "vec_", arg: 1, scope: !2371, file: !6, line: 153, type: !2374)
!2378 = !DILocation(line: 0, scope: !2371)
!2379 = !DILocation(line: 153, column: 1, scope: !2371)
!2380 = distinct !DISubprogram(name: "VEC_bitpack_word_t_heap_safe_push", scope: !6, file: !6, line: 154, type: !2381, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!2383, !2309, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "vec_", arg: 1, scope: !2380, file: !6, line: 154, type: !2309)
!2387 = !DILocalVariable(name: "obj_", arg: 2, scope: !2380, file: !6, line: 154, type: !2384)
!2388 = !DILocation(line: 0, scope: !2380)
!2389 = !DILocation(line: 154, column: 1, scope: !2380)
!2390 = distinct !DISubprogram(name: "VEC_bitpack_word_t_base_index", scope: !6, file: !6, line: 153, type: !2391, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!412, !2374, !7}
!2393 = !{!2394, !2395}
!2394 = !DILocalVariable(name: "vec_", arg: 1, scope: !2390, file: !6, line: 153, type: !2374)
!2395 = !DILocalVariable(name: "ix_", arg: 2, scope: !2390, file: !6, line: 153, type: !7)
!2396 = !DILocation(line: 0, scope: !2390)
!2397 = !DILocation(line: 153, column: 1, scope: !2390)
!2398 = distinct !DISubprogram(name: "VEC_bitpack_word_t_base_replace", scope: !6, file: !6, line: 153, type: !2399, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2402)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!412, !2401, !7, !412}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "vec_", arg: 1, scope: !2398, file: !6, line: 153, type: !2401)
!2404 = !DILocalVariable(name: "ix_", arg: 2, scope: !2398, file: !6, line: 153, type: !7)
!2405 = !DILocalVariable(name: "obj_", arg: 3, scope: !2398, file: !6, line: 153, type: !412)
!2406 = !DILocalVariable(name: "old_obj_", scope: !2398, file: !6, line: 153, type: !412)
!2407 = !DILocation(line: 0, scope: !2398)
!2408 = !DILocation(line: 153, column: 1, scope: !2398)
!2409 = distinct !DISubprogram(name: "bp_unpack_value", scope: !3, file: !3, line: 359, type: !2410, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!412, !392, !7}
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418}
!2413 = !DILocalVariable(name: "bp", arg: 1, scope: !2409, file: !3, line: 359, type: !392)
!2414 = !DILocalVariable(name: "nbits", arg: 2, scope: !2409, file: !3, line: 359, type: !7)
!2415 = !DILocalVariable(name: "val", scope: !2409, file: !3, line: 361, type: !412)
!2416 = !DILocalVariable(name: "word", scope: !2409, file: !3, line: 361, type: !412)
!2417 = !DILocalVariable(name: "mask", scope: !2409, file: !3, line: 361, type: !412)
!2418 = !DILocalVariable(name: "ix", scope: !2409, file: !3, line: 362, type: !7)
!2419 = !DILocation(line: 0, scope: !2409)
!2420 = !DILocation(line: 365, column: 3, scope: !2409)
!2421 = !DILocation(line: 368, column: 8, scope: !2409)
!2422 = !DILocation(line: 369, column: 10, scope: !2409)
!2423 = !DILocation(line: 372, column: 17, scope: !2409)
!2424 = !DILocation(line: 372, column: 10, scope: !2409)
!2425 = !DILocation(line: 378, column: 16, scope: !2409)
!2426 = !DILocation(line: 378, column: 8, scope: !2409)
!2427 = !DILocation(line: 381, column: 14, scope: !2409)
!2428 = !DILocation(line: 384, column: 7, scope: !2409)
!2429 = !DILocation(line: 384, column: 16, scope: !2409)
!2430 = !DILocation(line: 385, column: 24, scope: !2409)
!2431 = !DILocation(line: 387, column: 3, scope: !2409)
!2432 = distinct !DISubprogram(name: "lto_streamer_cache_insert", scope: !3, file: !3, line: 574, type: !2433, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!320, !1530, !422, !2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "cache", arg: 1, scope: !2432, file: !3, line: 574, type: !1530)
!2439 = !DILocalVariable(name: "t", arg: 2, scope: !2432, file: !3, line: 574, type: !422)
!2440 = !DILocalVariable(name: "ix_p", arg: 3, scope: !2432, file: !3, line: 575, type: !2435)
!2441 = !DILocalVariable(name: "offset_p", arg: 4, scope: !2432, file: !3, line: 575, type: !2436)
!2442 = !DILocation(line: 0, scope: !2432)
!2443 = !DILocation(line: 577, column: 10, scope: !2432)
!2444 = !DILocation(line: 577, column: 3, scope: !2432)
!2445 = distinct !DISubprogram(name: "lto_streamer_cache_insert_1", scope: !3, file: !3, line: 481, type: !2446, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!320, !1530, !422, !2435, !2436, !320}
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2449 = !DILocalVariable(name: "cache", arg: 1, scope: !2445, file: !3, line: 481, type: !1530)
!2450 = !DILocalVariable(name: "t", arg: 2, scope: !2445, file: !3, line: 482, type: !422)
!2451 = !DILocalVariable(name: "ix_p", arg: 3, scope: !2445, file: !3, line: 482, type: !2435)
!2452 = !DILocalVariable(name: "offset_p", arg: 4, scope: !2445, file: !3, line: 482, type: !2436)
!2453 = !DILocalVariable(name: "insert_at_next_slot_p", arg: 5, scope: !2445, file: !3, line: 483, type: !320)
!2454 = !DILocalVariable(name: "slot", scope: !2445, file: !3, line: 485, type: !1013)
!2455 = !DILocalVariable(name: "d_entry", scope: !2445, file: !3, line: 486, type: !416)
!2456 = !DILocalVariable(name: "entry", scope: !2445, file: !3, line: 486, type: !415)
!2457 = !DILocalVariable(name: "ix", scope: !2445, file: !3, line: 487, type: !321)
!2458 = !DILocalVariable(name: "offset", scope: !2445, file: !3, line: 488, type: !7)
!2459 = !DILocalVariable(name: "existed_p", scope: !2445, file: !3, line: 489, type: !320)
!2460 = !DILocation(line: 0, scope: !2445)
!2461 = !DILocation(line: 486, column: 3, scope: !2445)
!2462 = !DILocation(line: 491, column: 3, scope: !2445)
!2463 = !DILocation(line: 493, column: 16, scope: !2445)
!2464 = !DILocation(line: 493, column: 21, scope: !2445)
!2465 = !DILocation(line: 494, column: 33, scope: !2445)
!2466 = !DILocation(line: 494, column: 10, scope: !2445)
!2467 = !DILocation(line: 495, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 495, column: 7)
!2469 = !DILocation(line: 495, column: 13, scope: !2468)
!2470 = !DILocation(line: 495, column: 7, scope: !2445)
!2471 = !DILocation(line: 498, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 498, column: 11)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 496, column: 5)
!2474 = !DILocation(line: 498, column: 11, scope: !2473)
!2475 = !DILocation(line: 499, column: 14, scope: !2472)
!2476 = !DILocation(line: 499, column: 23, scope: !2472)
!2477 = !DILocation(line: 499, column: 2, scope: !2472)
!2478 = !DILocation(line: 501, column: 7, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2472)
!2480 = !DILocation(line: 503, column: 15, scope: !2473)
!2481 = !DILocation(line: 504, column: 19, scope: !2473)
!2482 = !DILocation(line: 504, column: 24, scope: !2473)
!2483 = !DILocation(line: 505, column: 14, scope: !2473)
!2484 = !DILocation(line: 505, column: 17, scope: !2473)
!2485 = !DILocation(line: 506, column: 13, scope: !2473)
!2486 = !DILocation(line: 509, column: 16, scope: !2473)
!2487 = !DILocation(line: 509, column: 29, scope: !2473)
!2488 = !DILocation(line: 511, column: 7, scope: !2473)
!2489 = !DILocation(line: 515, column: 5, scope: !2473)
!2490 = !DILocation(line: 519, column: 25, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 517, column: 5)
!2492 = !DILocation(line: 520, column: 16, scope: !2491)
!2493 = !DILocation(line: 522, column: 12, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 522, column: 11)
!2495 = !DILocation(line: 522, column: 34, scope: !2494)
!2496 = !DILocation(line: 522, column: 43, scope: !2494)
!2497 = !DILocation(line: 522, column: 40, scope: !2494)
!2498 = !DILocation(line: 522, column: 11, scope: !2491)
!2499 = !DILocation(line: 536, column: 4, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 523, column: 2)
!2501 = !DILocation(line: 537, column: 9, scope: !2500)
!2502 = !DILocation(line: 542, column: 4, scope: !2500)
!2503 = !DILocation(line: 543, column: 2, scope: !2500)
!2504 = !DILocation(line: 0, scope: !2468)
!2505 = !DILocation(line: 549, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 549, column: 7)
!2507 = !DILocation(line: 549, column: 7, scope: !2445)
!2508 = !DILocation(line: 550, column: 11, scope: !2506)
!2509 = !DILocation(line: 550, column: 5, scope: !2506)
!2510 = !DILocation(line: 552, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 552, column: 7)
!2512 = !DILocation(line: 552, column: 7, scope: !2445)
!2513 = !DILocation(line: 553, column: 15, scope: !2511)
!2514 = !DILocation(line: 553, column: 5, scope: !2511)
!2515 = !DILocation(line: 556, column: 1, scope: !2445)
!2516 = !DILocation(line: 555, column: 3, scope: !2445)
!2517 = distinct !DISubprogram(name: "lto_streamer_cache_insert_at", scope: !3, file: !3, line: 585, type: !2518, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!320, !1530, !422, !321}
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "cache", arg: 1, scope: !2517, file: !3, line: 585, type: !1530)
!2522 = !DILocalVariable(name: "t", arg: 2, scope: !2517, file: !3, line: 586, type: !422)
!2523 = !DILocalVariable(name: "ix", arg: 3, scope: !2517, file: !3, line: 586, type: !321)
!2524 = !DILocation(line: 0, scope: !2517)
!2525 = !DILocation(line: 588, column: 10, scope: !2517)
!2526 = !DILocation(line: 588, column: 3, scope: !2517)
!2527 = distinct !DISubprogram(name: "lto_streamer_cache_lookup", scope: !3, file: !3, line: 597, type: !2528, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!320, !1530, !422, !2435}
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2531 = !DILocalVariable(name: "cache", arg: 1, scope: !2527, file: !3, line: 597, type: !1530)
!2532 = !DILocalVariable(name: "t", arg: 2, scope: !2527, file: !3, line: 597, type: !422)
!2533 = !DILocalVariable(name: "ix_p", arg: 3, scope: !2527, file: !3, line: 598, type: !2435)
!2534 = !DILocalVariable(name: "slot", scope: !2527, file: !3, line: 600, type: !1013)
!2535 = !DILocalVariable(name: "d_slot", scope: !2527, file: !3, line: 601, type: !416)
!2536 = !DILocalVariable(name: "retval", scope: !2527, file: !3, line: 602, type: !320)
!2537 = !DILocalVariable(name: "ix", scope: !2527, file: !3, line: 603, type: !321)
!2538 = !DILocation(line: 0, scope: !2527)
!2539 = !DILocation(line: 601, column: 3, scope: !2527)
!2540 = !DILocation(line: 605, column: 3, scope: !2527)
!2541 = !DILocation(line: 607, column: 15, scope: !2527)
!2542 = !DILocation(line: 607, column: 20, scope: !2527)
!2543 = !DILocation(line: 608, column: 33, scope: !2527)
!2544 = !DILocation(line: 608, column: 10, scope: !2527)
!2545 = !DILocation(line: 609, column: 12, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 609, column: 7)
!2547 = !DILocation(line: 609, column: 7, scope: !2527)
!2548 = !DILocation(line: 617, column: 43, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 615, column: 5)
!2550 = !DILocation(line: 617, column: 51, scope: !2549)
!2551 = !DILocation(line: 0, scope: !2546)
!2552 = !DILocation(line: 620, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 620, column: 7)
!2554 = !DILocation(line: 620, column: 7, scope: !2527)
!2555 = !DILocation(line: 621, column: 11, scope: !2553)
!2556 = !DILocation(line: 621, column: 5, scope: !2553)
!2557 = !DILocation(line: 624, column: 1, scope: !2527)
!2558 = !DILocation(line: 623, column: 3, scope: !2527)
!2559 = distinct !DISubprogram(name: "lto_streamer_cache_get", scope: !3, file: !3, line: 630, type: !2560, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!422, !1530, !321}
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "cache", arg: 1, scope: !2559, file: !3, line: 630, type: !1530)
!2564 = !DILocalVariable(name: "ix", arg: 2, scope: !2559, file: !3, line: 630, type: !321)
!2565 = !DILocation(line: 0, scope: !2559)
!2566 = !DILocation(line: 632, column: 3, scope: !2559)
!2567 = !DILocation(line: 637, column: 24, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 637, column: 7)
!2569 = !DILocation(line: 637, column: 21, scope: !2568)
!2570 = !DILocation(line: 637, column: 7, scope: !2559)
!2571 = !DILocation(line: 640, column: 10, scope: !2559)
!2572 = !DILocation(line: 640, column: 3, scope: !2559)
!2573 = !DILocation(line: 641, column: 1, scope: !2559)
!2574 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !37, file: !37, line: 182, type: !2575, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!7, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1057)
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "vec_", arg: 1, scope: !2574, file: !37, line: 182, type: !2577)
!2581 = !DILocation(line: 0, scope: !2574)
!2582 = !DILocation(line: 182, column: 1, scope: !2574)
!2583 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !37, file: !37, line: 182, type: !2584, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!422, !2577, !7}
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "vec_", arg: 1, scope: !2583, file: !37, line: 182, type: !2577)
!2588 = !DILocalVariable(name: "ix_", arg: 2, scope: !2583, file: !37, line: 182, type: !7)
!2589 = !DILocation(line: 0, scope: !2583)
!2590 = !DILocation(line: 182, column: 1, scope: !2583)
!2591 = distinct !DISubprogram(name: "lto_streamer_cache_create", scope: !3, file: !3, line: 754, type: !2592, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!1530}
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DILocalVariable(name: "cache", scope: !2591, file: !3, line: 756, type: !1530)
!2596 = !DILocalVariable(name: "common_nodes", scope: !2591, file: !3, line: 757, type: !1550)
!2597 = !DILocalVariable(name: "i", scope: !2591, file: !3, line: 758, type: !7)
!2598 = !DILocalVariable(name: "node", scope: !2591, file: !3, line: 759, type: !422)
!2599 = !DILocation(line: 757, column: 3, scope: !2591)
!2600 = !DILocation(line: 759, column: 3, scope: !2591)
!2601 = !DILocation(line: 761, column: 11, scope: !2591)
!2602 = !DILocation(line: 0, scope: !2591)
!2603 = !DILocation(line: 763, column: 21, scope: !2591)
!2604 = !DILocation(line: 763, column: 10, scope: !2591)
!2605 = !DILocation(line: 763, column: 19, scope: !2591)
!2606 = !DILocation(line: 768, column: 18, scope: !2591)
!2607 = !DILocation(line: 768, column: 16, scope: !2591)
!2608 = !DILocation(line: 770, column: 8, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 770, column: 3)
!2610 = !DILocation(line: 770, column: 15, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 770, column: 3)
!2612 = !DILocation(line: 0, scope: !2609)
!2613 = !DILocation(line: 770, column: 3, scope: !2609)
!2614 = !DILocation(line: 771, column: 33, scope: !2611)
!2615 = !DILocation(line: 771, column: 5, scope: !2611)
!2616 = !DILocation(line: 770, column: 59, scope: !2611)
!2617 = !DILocation(line: 770, column: 3, scope: !2611)
!2618 = distinct !{!2618, !2613, !2619}
!2619 = !DILocation(line: 771, column: 37, scope: !2609)
!2620 = !DILocation(line: 773, column: 3, scope: !2591)
!2621 = !DILocation(line: 776, column: 1, scope: !2591)
!2622 = !DILocation(line: 775, column: 3, scope: !2591)
!2623 = distinct !DISubprogram(name: "lto_get_common_nodes", scope: !3, file: !3, line: 679, type: !2624, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!1550}
!2626 = !{!2627, !2628, !2629, !2632}
!2627 = !DILocalVariable(name: "i", scope: !2623, file: !3, line: 681, type: !7)
!2628 = !DILocalVariable(name: "common_nodes", scope: !2623, file: !3, line: 682, type: !1550)
!2629 = !DILocalVariable(name: "seen_nodes", scope: !2623, file: !3, line: 683, type: !2630)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !37, line: 5199, flags: DIFlagFwdDecl)
!2632 = !DILocalVariable(name: "main_name", scope: !2633, file: !3, line: 690, type: !326)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 689, column: 5)
!2634 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 688, column: 7)
!2635 = !DILocation(line: 682, column: 3, scope: !2623)
!2636 = !DILocation(line: 0, scope: !2623)
!2637 = !DILocation(line: 682, column: 19, scope: !2623)
!2638 = !DILocation(line: 688, column: 7, scope: !2634)
!2639 = !DILocation(line: 688, column: 7, scope: !2623)
!2640 = !DILocation(line: 690, column: 31, scope: !2633)
!2641 = !DILocation(line: 0, scope: !2633)
!2642 = !DILocation(line: 691, column: 7, scope: !2633)
!2643 = !DILocation(line: 694, column: 28, scope: !2634)
!2644 = !DILocation(line: 694, column: 26, scope: !2634)
!2645 = !DILocation(line: 696, column: 3, scope: !2623)
!2646 = !DILocation(line: 704, column: 3, scope: !2623)
!2647 = !DILocation(line: 705, column: 3, scope: !2623)
!2648 = !DILocation(line: 707, column: 16, scope: !2623)
!2649 = !DILocation(line: 711, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 711, column: 3)
!2651 = !DILocation(line: 0, scope: !2650)
!2652 = !DILocation(line: 711, column: 31, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 711, column: 3)
!2654 = !DILocation(line: 711, column: 3, scope: !2650)
!2655 = !DILocation(line: 714, column: 3, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 714, column: 3)
!2657 = !DILocation(line: 712, column: 30, scope: !2653)
!2658 = !DILocation(line: 712, column: 5, scope: !2653)
!2659 = !DILocation(line: 711, column: 44, scope: !2653)
!2660 = !DILocation(line: 711, column: 3, scope: !2653)
!2661 = distinct !{!2661, !2654, !2662}
!2662 = !DILocation(line: 712, column: 73, scope: !2650)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 714, column: 17, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 714, column: 3)
!2666 = !DILocation(line: 717, column: 3, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 717, column: 3)
!2668 = !DILocation(line: 715, column: 30, scope: !2665)
!2669 = !DILocation(line: 715, column: 5, scope: !2665)
!2670 = !DILocation(line: 714, column: 36, scope: !2665)
!2671 = !DILocation(line: 714, column: 3, scope: !2665)
!2672 = distinct !{!2672, !2655, !2673}
!2673 = !DILocation(line: 715, column: 72, scope: !2656)
!2674 = !DILocation(line: 0, scope: !2667)
!2675 = !DILocation(line: 717, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 717, column: 3)
!2677 = !DILocation(line: 718, column: 30, scope: !2676)
!2678 = !DILocation(line: 718, column: 5, scope: !2676)
!2679 = !DILocation(line: 717, column: 28, scope: !2676)
!2680 = !DILocation(line: 717, column: 3, scope: !2676)
!2681 = distinct !{!2681, !2666, !2682}
!2682 = !DILocation(line: 718, column: 72, scope: !2667)
!2683 = !DILocation(line: 720, column: 3, scope: !2623)
!2684 = !DILocation(line: 722, column: 10, scope: !2623)
!2685 = !DILocation(line: 723, column: 1, scope: !2623)
!2686 = !DILocation(line: 722, column: 3, scope: !2623)
!2687 = distinct !DISubprogram(name: "VEC_tree_base_iterate", scope: !37, file: !37, line: 182, type: !2688, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!321, !2577, !7, !747}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "vec_", arg: 1, scope: !2687, file: !37, line: 182, type: !2577)
!2692 = !DILocalVariable(name: "ix_", arg: 2, scope: !2687, file: !37, line: 182, type: !7)
!2693 = !DILocalVariable(name: "ptr", arg: 3, scope: !2687, file: !37, line: 182, type: !747)
!2694 = !DILocation(line: 0, scope: !2687)
!2695 = !DILocation(line: 182, column: 1, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2687, file: !37, line: 182, column: 1)
!2697 = !DILocation(line: 182, column: 1, scope: !2687)
!2698 = !DILocation(line: 182, column: 1, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2696, file: !37, line: 182, column: 1)
!2700 = !DILocation(line: 182, column: 1, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !37, line: 182, column: 1)
!2702 = !DILocation(line: 0, scope: !2696)
!2703 = distinct !DISubprogram(name: "preload_common_node", scope: !3, file: !3, line: 730, type: !2704, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !1530, !422}
!2706 = !{!2707, !2708, !2709}
!2707 = !DILocalVariable(name: "cache", arg: 1, scope: !2703, file: !3, line: 730, type: !1530)
!2708 = !DILocalVariable(name: "t", arg: 2, scope: !2703, file: !3, line: 730, type: !422)
!2709 = !DILocalVariable(name: "f", scope: !2710, file: !3, line: 743, type: !422)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 742, column: 4)
!2711 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 741, column: 6)
!2712 = !DILocation(line: 0, scope: !2703)
!2713 = !DILocation(line: 732, column: 3, scope: !2703)
!2714 = !DILocation(line: 734, column: 3, scope: !2703)
!2715 = !DILocation(line: 741, column: 6, scope: !2711)
!2716 = !DILocation(line: 741, column: 20, scope: !2711)
!2717 = !DILocation(line: 741, column: 6, scope: !2703)
!2718 = !DILocation(line: 745, column: 15, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 745, column: 6)
!2720 = !DILocation(line: 745, column: 11, scope: !2719)
!2721 = !DILocation(line: 0, scope: !2719)
!2722 = !DILocation(line: 0, scope: !2710)
!2723 = !DILocation(line: 745, column: 6, scope: !2719)
!2724 = !DILocation(line: 746, column: 8, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 745, column: 6)
!2726 = !DILocation(line: 745, column: 39, scope: !2725)
!2727 = !DILocation(line: 745, column: 6, scope: !2725)
!2728 = distinct !{!2728, !2723, !2729}
!2729 = !DILocation(line: 746, column: 37, scope: !2719)
!2730 = !DILocation(line: 748, column: 1, scope: !2703)
!2731 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !37, file: !37, line: 184, type: !2732, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{null, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!2735 = !{!2736}
!2736 = !DILocalVariable(name: "vec_", arg: 1, scope: !2731, file: !37, line: 184, type: !2734)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 184, column: 1, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2731, file: !37, line: 184, column: 1)
!2740 = !DILocation(line: 184, column: 1, scope: !2731)
!2741 = distinct !DISubprogram(name: "lto_streamer_cache_delete", scope: !3, file: !3, line: 782, type: !2742, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !1530}
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "c", arg: 1, scope: !2741, file: !3, line: 782, type: !1530)
!2746 = !DILocation(line: 0, scope: !2741)
!2747 = !DILocation(line: 784, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 784, column: 7)
!2749 = !DILocation(line: 784, column: 7, scope: !2741)
!2750 = !DILocation(line: 787, column: 19, scope: !2741)
!2751 = !DILocation(line: 787, column: 3, scope: !2741)
!2752 = !DILocation(line: 788, column: 3, scope: !2741)
!2753 = !DILocation(line: 789, column: 3, scope: !2741)
!2754 = !DILocation(line: 790, column: 9, scope: !2741)
!2755 = !DILocation(line: 790, column: 3, scope: !2741)
!2756 = !DILocation(line: 791, column: 1, scope: !2741)
!2757 = distinct !DISubprogram(name: "VEC_tree_gc_free", scope: !37, file: !37, line: 183, type: !2758, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2761)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!2761 = !{!2762}
!2762 = !DILocalVariable(name: "vec_", arg: 1, scope: !2757, file: !37, line: 183, type: !2760)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocation(line: 183, column: 1, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !37, line: 183, column: 1)
!2766 = !DILocation(line: 183, column: 1, scope: !2757)
!2767 = distinct !DISubprogram(name: "VEC_unsigned_heap_free", scope: !1539, file: !1539, line: 35, type: !2768, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!2771 = !{!2772}
!2772 = !DILocalVariable(name: "vec_", arg: 1, scope: !2767, file: !1539, line: 35, type: !2770)
!2773 = !DILocation(line: 0, scope: !2767)
!2774 = !DILocation(line: 35, column: 1, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !1539, line: 35, column: 1)
!2776 = !DILocation(line: 35, column: 1, scope: !2767)
!2777 = distinct !DISubprogram(name: "lto_streamer_init", scope: !3, file: !3, line: 797, type: !2172, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!2778 = !DILocation(line: 803, column: 3, scope: !2777)
!2779 = !DILocation(line: 804, column: 1, scope: !2777)
!2780 = distinct !DISubprogram(name: "check_handled_ts_structures", scope: !3, file: !3, line: 396, type: !2172, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2781 = !{!2782, !2786}
!2782 = !DILocalVariable(name: "handled_p", scope: !2780, file: !3, line: 398, type: !2783)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 272, elements: !2784)
!2784 = !{!2785}
!2785 = !DISubrange(count: 34)
!2786 = !DILocalVariable(name: "i", scope: !2780, file: !3, line: 399, type: !7)
!2787 = !DILocation(line: 398, column: 3, scope: !2780)
!2788 = !DILocation(line: 398, column: 8, scope: !2780)
!2789 = !DILocation(line: 401, column: 3, scope: !2780)
!2790 = !DILocation(line: 405, column: 22, scope: !2780)
!2791 = !DILocation(line: 406, column: 3, scope: !2780)
!2792 = !DILocation(line: 406, column: 24, scope: !2780)
!2793 = !DILocation(line: 407, column: 3, scope: !2780)
!2794 = !DILocation(line: 407, column: 25, scope: !2780)
!2795 = !DILocation(line: 408, column: 3, scope: !2780)
!2796 = !DILocation(line: 408, column: 26, scope: !2780)
!2797 = !DILocation(line: 409, column: 3, scope: !2780)
!2798 = !DILocation(line: 409, column: 27, scope: !2780)
!2799 = !DILocation(line: 410, column: 3, scope: !2780)
!2800 = !DILocation(line: 410, column: 24, scope: !2780)
!2801 = !DILocation(line: 411, column: 3, scope: !2780)
!2802 = !DILocation(line: 411, column: 24, scope: !2780)
!2803 = !DILocation(line: 412, column: 3, scope: !2780)
!2804 = !DILocation(line: 412, column: 25, scope: !2780)
!2805 = !DILocation(line: 413, column: 3, scope: !2780)
!2806 = !DILocation(line: 413, column: 28, scope: !2780)
!2807 = !DILocation(line: 414, column: 3, scope: !2780)
!2808 = !DILocation(line: 414, column: 30, scope: !2780)
!2809 = !DILocation(line: 415, column: 3, scope: !2780)
!2810 = !DILocation(line: 415, column: 29, scope: !2780)
!2811 = !DILocation(line: 416, column: 3, scope: !2780)
!2812 = !DILocation(line: 416, column: 27, scope: !2780)
!2813 = !DILocation(line: 417, column: 3, scope: !2780)
!2814 = !DILocation(line: 417, column: 33, scope: !2780)
!2815 = !DILocation(line: 418, column: 3, scope: !2780)
!2816 = !DILocation(line: 418, column: 31, scope: !2780)
!2817 = !DILocation(line: 419, column: 3, scope: !2780)
!2818 = !DILocation(line: 419, column: 28, scope: !2780)
!2819 = !DILocation(line: 420, column: 3, scope: !2780)
!2820 = !DILocation(line: 420, column: 26, scope: !2780)
!2821 = !DILocation(line: 421, column: 3, scope: !2780)
!2822 = !DILocation(line: 421, column: 27, scope: !2780)
!2823 = !DILocation(line: 422, column: 3, scope: !2780)
!2824 = !DILocation(line: 422, column: 28, scope: !2780)
!2825 = !DILocation(line: 423, column: 3, scope: !2780)
!2826 = !DILocation(line: 423, column: 29, scope: !2780)
!2827 = !DILocation(line: 424, column: 3, scope: !2780)
!2828 = !DILocation(line: 424, column: 28, scope: !2780)
!2829 = !DILocation(line: 425, column: 3, scope: !2780)
!2830 = !DILocation(line: 425, column: 27, scope: !2780)
!2831 = !DILocation(line: 426, column: 3, scope: !2780)
!2832 = !DILocation(line: 426, column: 31, scope: !2780)
!2833 = !DILocation(line: 427, column: 3, scope: !2780)
!2834 = !DILocation(line: 427, column: 22, scope: !2780)
!2835 = !DILocation(line: 428, column: 3, scope: !2780)
!2836 = !DILocation(line: 428, column: 22, scope: !2780)
!2837 = !DILocation(line: 429, column: 3, scope: !2780)
!2838 = !DILocation(line: 429, column: 21, scope: !2780)
!2839 = !DILocation(line: 430, column: 3, scope: !2780)
!2840 = !DILocation(line: 430, column: 21, scope: !2780)
!2841 = !DILocation(line: 431, column: 3, scope: !2780)
!2842 = !DILocation(line: 431, column: 26, scope: !2780)
!2843 = !DILocation(line: 432, column: 3, scope: !2780)
!2844 = !DILocation(line: 432, column: 23, scope: !2780)
!2845 = !DILocation(line: 433, column: 3, scope: !2780)
!2846 = !DILocation(line: 433, column: 23, scope: !2780)
!2847 = !DILocation(line: 434, column: 3, scope: !2780)
!2848 = !DILocation(line: 434, column: 32, scope: !2780)
!2849 = !DILocation(line: 435, column: 3, scope: !2780)
!2850 = !DILocation(line: 435, column: 29, scope: !2780)
!2851 = !DILocation(line: 436, column: 3, scope: !2780)
!2852 = !DILocation(line: 436, column: 28, scope: !2780)
!2853 = !DILocation(line: 437, column: 3, scope: !2780)
!2854 = !DILocation(line: 437, column: 30, scope: !2780)
!2855 = !DILocation(line: 438, column: 3, scope: !2780)
!2856 = !DILocation(line: 438, column: 31, scope: !2780)
!2857 = !DILocation(line: 0, scope: !2780)
!2858 = !DILocation(line: 443, column: 8, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 443, column: 3)
!2860 = !DILocation(line: 0, scope: !2859)
!2861 = !DILocation(line: 443, column: 17, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 443, column: 3)
!2863 = !DILocation(line: 443, column: 3, scope: !2859)
!2864 = !DILocation(line: 444, column: 5, scope: !2862)
!2865 = !DILocation(line: 443, column: 34, scope: !2862)
!2866 = !DILocation(line: 443, column: 3, scope: !2862)
!2867 = distinct !{!2867, !2863, !2868}
!2868 = !DILocation(line: 444, column: 5, scope: !2859)
!2869 = !DILocation(line: 445, column: 1, scope: !2780)
!2870 = distinct !DISubprogram(name: "gate_lto_out", scope: !3, file: !3, line: 810, type: !2871, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!320}
!2873 = !DILocation(line: 812, column: 12, scope: !2870)
!2874 = !DILocation(line: 812, column: 30, scope: !2870)
!2875 = !DILocation(line: 812, column: 33, scope: !2870)
!2876 = !DILocation(line: 814, column: 4, scope: !2870)
!2877 = !DILocation(line: 814, column: 9, scope: !2870)
!2878 = !DILocation(line: 814, column: 20, scope: !2870)
!2879 = !DILocation(line: 814, column: 23, scope: !2870)
!2880 = !DILocation(line: 812, column: 3, scope: !2870)
!2881 = distinct !DISubprogram(name: "lto_check_version", scope: !3, file: !3, line: 862, type: !2882, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !321, !321}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "major", arg: 1, scope: !2881, file: !3, line: 862, type: !321)
!2886 = !DILocalVariable(name: "minor", arg: 2, scope: !2881, file: !3, line: 862, type: !321)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 864, column: 13, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 864, column: 7)
!2890 = !DILocation(line: 864, column: 43, scope: !2889)
!2891 = !DILocation(line: 864, column: 34, scope: !2889)
!2892 = !DILocation(line: 865, column: 5, scope: !2889)
!2893 = !DILocation(line: 869, column: 1, scope: !2881)
!2894 = distinct !DISubprogram(name: "VEC_bitpack_word_t_heap_reserve", scope: !6, file: !6, line: 154, type: !2895, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!321, !2309, !321}
!2897 = !{!2898, !2899, !2900}
!2898 = !DILocalVariable(name: "vec_", arg: 1, scope: !2894, file: !6, line: 154, type: !2309)
!2899 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2894, file: !6, line: 154, type: !321)
!2900 = !DILocalVariable(name: "extend", scope: !2894, file: !6, line: 154, type: !321)
!2901 = !DILocation(line: 0, scope: !2894)
!2902 = !DILocation(line: 154, column: 1, scope: !2894)
!2903 = !DILocation(line: 154, column: 1, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2894, file: !6, line: 154, column: 1)
!2905 = distinct !DISubprogram(name: "VEC_bitpack_word_t_base_quick_push", scope: !6, file: !6, line: 153, type: !2906, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!2383, !2401, !412}
!2908 = !{!2909, !2910, !2911}
!2909 = !DILocalVariable(name: "vec_", arg: 1, scope: !2905, file: !6, line: 153, type: !2401)
!2910 = !DILocalVariable(name: "obj_", arg: 2, scope: !2905, file: !6, line: 153, type: !412)
!2911 = !DILocalVariable(name: "slot_", scope: !2905, file: !6, line: 153, type: !2383)
!2912 = !DILocation(line: 0, scope: !2905)
!2913 = !DILocation(line: 153, column: 1, scope: !2905)
!2914 = distinct !DISubprogram(name: "VEC_bitpack_word_t_base_space", scope: !6, file: !6, line: 153, type: !2915, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!321, !2401, !321}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "vec_", arg: 1, scope: !2914, file: !6, line: 153, type: !2401)
!2919 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2914, file: !6, line: 153, type: !321)
!2920 = !DILocation(line: 0, scope: !2914)
!2921 = !DILocation(line: 153, column: 1, scope: !2914)
!2922 = distinct !DISubprogram(name: "lto_streamer_cache_add_to_node_array", scope: !3, file: !3, line: 452, type: !2923, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !1530, !321, !422, !7}
!2925 = !{!2926, !2927, !2928, !2929, !2930}
!2926 = !DILocalVariable(name: "cache", arg: 1, scope: !2922, file: !3, line: 452, type: !1530)
!2927 = !DILocalVariable(name: "ix", arg: 2, scope: !2922, file: !3, line: 453, type: !321)
!2928 = !DILocalVariable(name: "t", arg: 3, scope: !2922, file: !3, line: 453, type: !422)
!2929 = !DILocalVariable(name: "offset", arg: 4, scope: !2922, file: !3, line: 453, type: !7)
!2930 = !DILocalVariable(name: "sz", scope: !2931, file: !3, line: 460, type: !396)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 459, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 458, column: 7)
!2933 = !DILocation(line: 0, scope: !2922)
!2934 = !DILocation(line: 455, column: 3, scope: !2922)
!2935 = !DILocation(line: 458, column: 19, scope: !2932)
!2936 = !DILocation(line: 458, column: 10, scope: !2932)
!2937 = !DILocation(line: 458, column: 7, scope: !2922)
!2938 = !DILocation(line: 460, column: 28, scope: !2931)
!2939 = !DILocation(line: 460, column: 34, scope: !2931)
!2940 = !DILocation(line: 460, column: 22, scope: !2931)
!2941 = !DILocation(line: 461, column: 7, scope: !2931)
!2942 = !DILocation(line: 462, column: 7, scope: !2931)
!2943 = !DILocation(line: 463, column: 5, scope: !2931)
!2944 = !DILocation(line: 465, column: 3, scope: !2922)
!2945 = !DILocation(line: 466, column: 3, scope: !2922)
!2946 = !DILocation(line: 467, column: 1, scope: !2922)
!2947 = distinct !DISubprogram(name: "VEC_unsigned_base_index", scope: !1539, file: !1539, line: 34, type: !2948, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2952)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!7, !2950, !7}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "vec_", arg: 1, scope: !2947, file: !1539, line: 34, type: !2950)
!2954 = !DILocalVariable(name: "ix_", arg: 2, scope: !2947, file: !1539, line: 34, type: !7)
!2955 = !DILocation(line: 0, scope: !2947)
!2956 = !DILocation(line: 34, column: 1, scope: !2947)
!2957 = distinct !DISubprogram(name: "lto_stream_as_builtin_p", scope: !6, file: !6, line: 1010, type: !2958, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!320, !422}
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "expr", arg: 1, scope: !2957, file: !6, line: 1010, type: !422)
!2962 = !DILocation(line: 0, scope: !2957)
!2963 = !DILocation(line: 1012, column: 11, scope: !2957)
!2964 = !DILocation(line: 1012, column: 28, scope: !2957)
!2965 = !DILocation(line: 1013, column: 4, scope: !2957)
!2966 = !DILocation(line: 1013, column: 7, scope: !2957)
!2967 = !DILocation(line: 1014, column: 4, scope: !2957)
!2968 = !DILocation(line: 1014, column: 8, scope: !2957)
!2969 = !DILocation(line: 1014, column: 35, scope: !2957)
!2970 = !DILocation(line: 1015, column: 8, scope: !2957)
!2971 = !DILocation(line: 1015, column: 38, scope: !2957)
!2972 = !DILocation(line: 1012, column: 3, scope: !2957)
!2973 = distinct !DISubprogram(name: "VEC_tree_gc_safe_grow_cleared", scope: !37, file: !37, line: 183, type: !2974, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2760, !321}
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "vec_", arg: 1, scope: !2973, file: !37, line: 183, type: !2760)
!2978 = !DILocalVariable(name: "size_", arg: 2, scope: !2973, file: !37, line: 183, type: !321)
!2979 = !DILocalVariable(name: "oldsize", scope: !2973, file: !37, line: 183, type: !321)
!2980 = !DILocation(line: 0, scope: !2973)
!2981 = !DILocation(line: 183, column: 1, scope: !2973)
!2982 = distinct !DISubprogram(name: "VEC_unsigned_heap_safe_grow_cleared", scope: !1539, file: !1539, line: 35, type: !2983, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2770, !321}
!2985 = !{!2986, !2987, !2988}
!2986 = !DILocalVariable(name: "vec_", arg: 1, scope: !2982, file: !1539, line: 35, type: !2770)
!2987 = !DILocalVariable(name: "size_", arg: 2, scope: !2982, file: !1539, line: 35, type: !321)
!2988 = !DILocalVariable(name: "oldsize", scope: !2982, file: !1539, line: 35, type: !321)
!2989 = !DILocation(line: 0, scope: !2982)
!2990 = !DILocation(line: 35, column: 1, scope: !2982)
!2991 = distinct !DISubprogram(name: "VEC_tree_base_replace", scope: !37, file: !37, line: 182, type: !2992, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2995)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!422, !2994, !7, !422}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DILocalVariable(name: "vec_", arg: 1, scope: !2991, file: !37, line: 182, type: !2994)
!2997 = !DILocalVariable(name: "ix_", arg: 2, scope: !2991, file: !37, line: 182, type: !7)
!2998 = !DILocalVariable(name: "obj_", arg: 3, scope: !2991, file: !37, line: 182, type: !422)
!2999 = !DILocalVariable(name: "old_obj_", scope: !2991, file: !37, line: 182, type: !422)
!3000 = !DILocation(line: 0, scope: !2991)
!3001 = !DILocation(line: 182, column: 1, scope: !2991)
!3002 = distinct !DISubprogram(name: "VEC_unsigned_base_replace", scope: !1539, file: !1539, line: 34, type: !3003, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3006)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!7, !3005, !7, !7}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!3006 = !{!3007, !3008, !3009, !3010}
!3007 = !DILocalVariable(name: "vec_", arg: 1, scope: !3002, file: !1539, line: 34, type: !3005)
!3008 = !DILocalVariable(name: "ix_", arg: 2, scope: !3002, file: !1539, line: 34, type: !7)
!3009 = !DILocalVariable(name: "obj_", arg: 3, scope: !3002, file: !1539, line: 34, type: !7)
!3010 = !DILocalVariable(name: "old_obj_", scope: !3002, file: !1539, line: 34, type: !7)
!3011 = !DILocation(line: 0, scope: !3002)
!3012 = !DILocation(line: 34, column: 1, scope: !3002)
!3013 = distinct !DISubprogram(name: "VEC_tree_gc_safe_grow", scope: !37, file: !37, line: 183, type: !2974, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "vec_", arg: 1, scope: !3013, file: !37, line: 183, type: !2760)
!3016 = !DILocalVariable(name: "size_", arg: 2, scope: !3013, file: !37, line: 183, type: !321)
!3017 = !DILocation(line: 0, scope: !3013)
!3018 = !DILocation(line: 183, column: 1, scope: !3013)
!3019 = distinct !DISubprogram(name: "VEC_tree_base_address", scope: !37, file: !37, line: 182, type: !3020, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!747, !2994}
!3022 = !{!3023}
!3023 = !DILocalVariable(name: "vec_", arg: 1, scope: !3019, file: !37, line: 182, type: !2994)
!3024 = !DILocation(line: 0, scope: !3019)
!3025 = !DILocation(line: 182, column: 1, scope: !3019)
!3026 = distinct !DISubprogram(name: "VEC_tree_gc_reserve_exact", scope: !37, file: !37, line: 183, type: !3027, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!321, !2760, !321}
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "vec_", arg: 1, scope: !3026, file: !37, line: 183, type: !2760)
!3031 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3026, file: !37, line: 183, type: !321)
!3032 = !DILocalVariable(name: "extend", scope: !3026, file: !37, line: 183, type: !321)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocation(line: 183, column: 1, scope: !3026)
!3035 = !DILocation(line: 183, column: 1, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3026, file: !37, line: 183, column: 1)
!3037 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !37, file: !37, line: 182, type: !3038, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!321, !2994, !321}
!3040 = !{!3041, !3042}
!3041 = !DILocalVariable(name: "vec_", arg: 1, scope: !3037, file: !37, line: 182, type: !2994)
!3042 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3037, file: !37, line: 182, type: !321)
!3043 = !DILocation(line: 0, scope: !3037)
!3044 = !DILocation(line: 182, column: 1, scope: !3037)
!3045 = distinct !DISubprogram(name: "VEC_unsigned_base_length", scope: !1539, file: !1539, line: 34, type: !3046, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!7, !2950}
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "vec_", arg: 1, scope: !3045, file: !1539, line: 34, type: !2950)
!3050 = !DILocation(line: 0, scope: !3045)
!3051 = !DILocation(line: 34, column: 1, scope: !3045)
!3052 = distinct !DISubprogram(name: "VEC_unsigned_heap_safe_grow", scope: !1539, file: !1539, line: 35, type: !2983, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3053)
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "vec_", arg: 1, scope: !3052, file: !1539, line: 35, type: !2770)
!3055 = !DILocalVariable(name: "size_", arg: 2, scope: !3052, file: !1539, line: 35, type: !321)
!3056 = !DILocation(line: 0, scope: !3052)
!3057 = !DILocation(line: 35, column: 1, scope: !3052)
!3058 = distinct !DISubprogram(name: "VEC_unsigned_base_address", scope: !1539, file: !1539, line: 34, type: !3059, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!2436, !3005}
!3061 = !{!3062}
!3062 = !DILocalVariable(name: "vec_", arg: 1, scope: !3058, file: !1539, line: 34, type: !3005)
!3063 = !DILocation(line: 0, scope: !3058)
!3064 = !DILocation(line: 34, column: 1, scope: !3058)
!3065 = distinct !DISubprogram(name: "VEC_unsigned_heap_reserve_exact", scope: !1539, file: !1539, line: 35, type: !3066, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!321, !2770, !321}
!3068 = !{!3069, !3070, !3071}
!3069 = !DILocalVariable(name: "vec_", arg: 1, scope: !3065, file: !1539, line: 35, type: !2770)
!3070 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3065, file: !1539, line: 35, type: !321)
!3071 = !DILocalVariable(name: "extend", scope: !3065, file: !1539, line: 35, type: !321)
!3072 = !DILocation(line: 0, scope: !3065)
!3073 = !DILocation(line: 35, column: 1, scope: !3065)
!3074 = !DILocation(line: 35, column: 1, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3065, file: !1539, line: 35, column: 1)
!3076 = distinct !DISubprogram(name: "VEC_unsigned_base_space", scope: !1539, file: !1539, line: 34, type: !3077, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!321, !3005, !321}
!3079 = !{!3080, !3081}
!3080 = !DILocalVariable(name: "vec_", arg: 1, scope: !3076, file: !1539, line: 34, type: !3005)
!3081 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3076, file: !1539, line: 34, type: !321)
!3082 = !DILocation(line: 0, scope: !3076)
!3083 = !DILocation(line: 34, column: 1, scope: !3076)
!3084 = distinct !DISubprogram(name: "lto_record_common_node", scope: !3, file: !3, line: 648, type: !3085, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !747, !2734, !2630}
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DILocalVariable(name: "nodep", arg: 1, scope: !3084, file: !3, line: 648, type: !747)
!3089 = !DILocalVariable(name: "common_nodes", arg: 2, scope: !3084, file: !3, line: 648, type: !2734)
!3090 = !DILocalVariable(name: "seen_nodes", arg: 3, scope: !3084, file: !3, line: 649, type: !2630)
!3091 = !DILocalVariable(name: "node", scope: !3084, file: !3, line: 651, type: !422)
!3092 = !DILocation(line: 670, column: 2, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 667, column: 11)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 666, column: 5)
!3095 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 665, column: 7)
!3096 = !DILocation(line: 0, scope: !3084)
!3097 = !DILocation(line: 651, column: 15, scope: !3084)
!3098 = !DILocation(line: 653, column: 12, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 653, column: 7)
!3100 = !DILocation(line: 653, column: 7, scope: !3084)
!3101 = !DILocation(line: 656, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 656, column: 7)
!3103 = !DILocation(line: 656, column: 7, scope: !3084)
!3104 = !DILocation(line: 657, column: 21, scope: !3102)
!3105 = !DILocation(line: 657, column: 12, scope: !3102)
!3106 = !DILocation(line: 657, column: 5, scope: !3102)
!3107 = !DILocation(line: 660, column: 39, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 660, column: 7)
!3109 = !DILocation(line: 660, column: 7, scope: !3108)
!3110 = !DILocation(line: 660, column: 7, scope: !3084)
!3111 = !DILocation(line: 663, column: 3, scope: !3084)
!3112 = !DILocation(line: 665, column: 7, scope: !3095)
!3113 = !DILocation(line: 665, column: 7, scope: !3084)
!3114 = !DILocation(line: 667, column: 11, scope: !3093)
!3115 = !DILocation(line: 668, column: 4, scope: !3093)
!3116 = !DILocation(line: 669, column: 4, scope: !3093)
!3117 = !DILocation(line: 670, column: 27, scope: !3093)
!3118 = !DILocation(line: 672, column: 1, scope: !3084)
!3119 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !37, file: !37, line: 184, type: !3120, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!747, !2734, !422}
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "vec_", arg: 1, scope: !3119, file: !37, line: 184, type: !2734)
!3124 = !DILocalVariable(name: "obj_", arg: 2, scope: !3119, file: !37, line: 184, type: !422)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 184, column: 1, scope: !3119)
!3127 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !37, file: !37, line: 184, type: !3128, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!321, !2734, !321}
!3130 = !{!3131, !3132, !3133}
!3131 = !DILocalVariable(name: "vec_", arg: 1, scope: !3127, file: !37, line: 184, type: !2734)
!3132 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3127, file: !37, line: 184, type: !321)
!3133 = !DILocalVariable(name: "extend", scope: !3127, file: !37, line: 184, type: !321)
!3134 = !DILocation(line: 0, scope: !3127)
!3135 = !DILocation(line: 184, column: 1, scope: !3127)
!3136 = !DILocation(line: 184, column: 1, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3127, file: !37, line: 184, column: 1)
!3138 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !37, file: !37, line: 182, type: !3139, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!747, !2994, !422}
!3141 = !{!3142, !3143, !3144}
!3142 = !DILocalVariable(name: "vec_", arg: 1, scope: !3138, file: !37, line: 182, type: !2994)
!3143 = !DILocalVariable(name: "obj_", arg: 2, scope: !3138, file: !37, line: 182, type: !422)
!3144 = !DILocalVariable(name: "slot_", scope: !3138, file: !37, line: 182, type: !747)
!3145 = !DILocation(line: 0, scope: !3138)
!3146 = !DILocation(line: 182, column: 1, scope: !3138)
