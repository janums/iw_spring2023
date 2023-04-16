; ModuleID = 'lto-wpa-fixup.bc'
source_filename = "lto-wpa-fixup.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
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
%struct.lto_file_decl_data = type { %struct.lto_in_decl_state*, %struct.lto_in_decl_state*, %struct.lto_cgraph_encoder_d*, %struct.htab*, i8*, i8, %struct.htab*, %struct.htab* }
%struct.lto_in_decl_state = type { [7 x %struct.lto_tree_ref_table], %union.tree_node* }
%struct.lto_tree_ref_table = type { %union.tree_node**, i32 }
%struct.lto_cgraph_encoder_d = type { %struct.pointer_map_t*, %struct.VEC_cgraph_node_ptr_heap* }
%struct.VEC_cgraph_node_ptr_heap = type { %struct.VEC_cgraph_node_ptr_base }
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
%struct.cgraph_node_set_iterator = type { %struct.cgraph_node_set_def*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.lto_simple_output_block = type { i32, %struct.lto_out_decl_state*, %struct.lto_output_stream* }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], %struct.lto_cgraph_encoder_d*, %union.tree_node* }
%struct.lto_tree_ref_encoder = type { %struct.htab*, i32, %struct.VEC_tree_heap* }
%struct.lto_output_stream = type { %struct.lto_char_ptr_base*, %struct.lto_char_ptr_base*, i8*, i32, i32, i32 }
%struct.lto_char_ptr_base = type { i8* }
%struct.lto_input_block = type { i8*, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@lto_nothrow_fndecls = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !0
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@.str = private unnamed_addr constant [16 x i8] c"lto-wpa-fixup.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"lto_wpa_fixup\00", align 1
@pass_ipa_lto_wpa_fixup = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_wpa_fixup, i32 ()* null, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 1 }, void ()* null, void (%struct.cgraph_node_set_def*)* @lto_output_wpa_fixup, void ()* @lto_input_wpa_fixup, void (%struct.cgraph_node*)* null, void (%struct.cgraph_node*, %union.gimple_statement_d**)* null, i32 0, i32 (%struct.cgraph_node*)* null, void (%struct.varpool_node*)* null }, align 8, !dbg !1909
@flag_ltrans = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2189, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2190, metadata !DIExpression()), !dbg !2191
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2192
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2193
  ret i32 %call, !dbg !2194
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2195 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2199
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2256, metadata !DIExpression()), !dbg !2257
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2258
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2258
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2258
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2258
  %cmp = icmp uge i8* %0, %1, !dbg !2258
  %conv1 = zext i1 %cmp to i64, !dbg !2258
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2258
  %tobool = icmp eq i64 %expval, 0, !dbg !2258
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2258

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2258
  br label %cond.end, !dbg !2258

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2258
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2258
  %2 = load i8, i8* %0, align 1, !dbg !2258
  %conv3 = zext i8 %2 to i32, !dbg !2258
  br label %cond.end, !dbg !2258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2258
  ret i32 %cond, !dbg !2259
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2260 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2262, metadata !DIExpression()), !dbg !2263
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2264
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2264
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2264
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2264
  %cmp = icmp uge i8* %0, %1, !dbg !2264
  %conv1 = zext i1 %cmp to i64, !dbg !2264
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2264
  %tobool = icmp eq i64 %expval, 0, !dbg !2264
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2264

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2264
  br label %cond.end, !dbg !2264

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2264
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2264
  %2 = load i8, i8* %0, align 1, !dbg !2264
  %conv3 = zext i8 %2 to i32, !dbg !2264
  br label %cond.end, !dbg !2264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2264
  ret i32 %cond, !dbg !2265
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2266 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2267
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2267
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2267
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2267
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2267
  %cmp = icmp uge i8* %1, %2, !dbg !2267
  %conv1 = zext i1 %cmp to i64, !dbg !2267
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2267
  %tobool = icmp eq i64 %expval, 0, !dbg !2267
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2267

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2267
  br label %cond.end, !dbg !2267

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2267
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2267
  %3 = load i8, i8* %1, align 1, !dbg !2267
  %conv3 = zext i8 %3 to i32, !dbg !2267
  br label %cond.end, !dbg !2267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2267
  ret i32 %cond, !dbg !2268
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2273, metadata !DIExpression()), !dbg !2274
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2275
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2276
  ret i32 %call, !dbg !2277
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2283, metadata !DIExpression()), !dbg !2284
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2285
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2285
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2285
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2285
  %cmp = icmp uge i8* %0, %1, !dbg !2285
  %conv1 = zext i1 %cmp to i64, !dbg !2285
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2285
  %tobool = icmp eq i64 %expval, 0, !dbg !2285
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2285

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2285
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2285
  br label %cond.end, !dbg !2285

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2285
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2285
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2285
  store i8 %conv2, i8* %0, align 1, !dbg !2285
  %conv6 = and i32 %__c, 255, !dbg !2285
  br label %cond.end, !dbg !2285

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2285
  ret i32 %cond, !dbg !2286
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2287 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2290, metadata !DIExpression()), !dbg !2291
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2292
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2292
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2292
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2292
  %cmp = icmp uge i8* %0, %1, !dbg !2292
  %conv1 = zext i1 %cmp to i64, !dbg !2292
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2292
  %tobool = icmp eq i64 %expval, 0, !dbg !2292
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2292

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2292
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2292
  br label %cond.end, !dbg !2292

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2292
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2292
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2292
  store i8 %conv2, i8* %0, align 1, !dbg !2292
  %conv6 = and i32 %__c, 255, !dbg !2292
  br label %cond.end, !dbg !2292

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2292
  ret i32 %cond, !dbg !2293
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2296, metadata !DIExpression()), !dbg !2297
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2298
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2298
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2298
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2298
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2298
  %cmp = icmp uge i8* %1, %2, !dbg !2298
  %conv1 = zext i1 %cmp to i64, !dbg !2298
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2298
  %tobool = icmp eq i64 %expval, 0, !dbg !2298
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2298

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2298
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2298
  br label %cond.end, !dbg !2298

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2298
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2298
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2298
  store i8 %conv4, i8* %1, align 1, !dbg !2298
  %conv6 = and i32 %__c, 255, !dbg !2298
  br label %cond.end, !dbg !2298

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2298
  ret i32 %cond, !dbg !2299
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2308, metadata !DIExpression()), !dbg !2309
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2310
  ret i64 %call, !dbg !2311
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2312 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2314, metadata !DIExpression()), !dbg !2315
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2316
  %0 = load i32, i32* %_flags, align 8, !dbg !2316
  %and = lshr i32 %0, 4, !dbg !2316
  %and.lobit = and i32 %and, 1, !dbg !2316
  ret i32 %and.lobit, !dbg !2317
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2318 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2320, metadata !DIExpression()), !dbg !2321
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2322
  %0 = load i32, i32* %_flags, align 8, !dbg !2322
  %and = lshr i32 %0, 5, !dbg !2322
  %and.lobit = and i32 %and, 1, !dbg !2322
  ret i32 %and.lobit, !dbg !2323
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2324 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2327, metadata !DIExpression()), !dbg !2328
  %__c.off = add i32 %__c, 128, !dbg !2329
  %0 = icmp ult i32 %__c.off, 384, !dbg !2329
  br i1 %0, label %cond.true, label %cond.end, !dbg !2329

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2330
  %1 = load i32*, i32** %call, align 8, !dbg !2331
  %idxprom = sext i32 %__c to i64, !dbg !2332
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2332
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2332
  br label %cond.end, !dbg !2333

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2333
  ret i32 %cond, !dbg !2334
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2335 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2337, metadata !DIExpression()), !dbg !2338
  %__c.off = add i32 %__c, 128, !dbg !2339
  %0 = icmp ult i32 %__c.off, 384, !dbg !2339
  br i1 %0, label %cond.true, label %cond.end, !dbg !2339

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2340
  %1 = load i32*, i32** %call, align 8, !dbg !2341
  %idxprom = sext i32 %__c to i64, !dbg !2342
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2342
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2342
  br label %cond.end, !dbg !2343

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2343
  ret i32 %cond, !dbg !2344
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2352
  %conv = trunc i64 %call to i32, !dbg !2353
  ret i32 %conv, !dbg !2354
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2355 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2359, metadata !DIExpression()), !dbg !2360
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2361
  ret i64 %call, !dbg !2362
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2363 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2368, metadata !DIExpression()), !dbg !2369
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2370
  ret i64 %call, !dbg !2371
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2372 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2378, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2379, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2380, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2381, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2382, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 0, metadata !2383, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2384, metadata !DIExpression()), !dbg !2388
  br label %while.cond, !dbg !2389

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2390
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2384, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2383, metadata !DIExpression()), !dbg !2388
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2391
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2389

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2392
  %div = lshr i64 %add, 1, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %div, metadata !2385, metadata !DIExpression()), !dbg !2388
  %mul = mul i64 %div, %__size, !dbg !2395
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2386, metadata !DIExpression()), !dbg !2388
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %call, metadata !2387, metadata !DIExpression()), !dbg !2388
  %cmp1 = icmp slt i32 %call, 0, !dbg !2398
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2400

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2401
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2403

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2383, metadata !DIExpression()), !dbg !2388
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2388
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2384, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2383, metadata !DIExpression()), !dbg !2388
  br label %while.cond, !dbg !2389, !llvm.loop !2405

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2388
  ret i8* %retval.0, !dbg !2407
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2408 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2414, metadata !DIExpression()), !dbg !2415
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2416
  ret double %call, !dbg !2417
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2427, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %base, metadata !2429, metadata !DIExpression()), !dbg !2430
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2431
  ret i64 %call, !dbg !2432
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2433 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %base, metadata !2441, metadata !DIExpression()), !dbg !2442
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2443
  ret i64 %call, !dbg !2444
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %base, metadata !2458, metadata !DIExpression()), !dbg !2459
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2460
  ret i64 %call, !dbg !2461
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2462 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %base, metadata !2468, metadata !DIExpression()), !dbg !2469
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2470
  ret i64 %call, !dbg !2471
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2472 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2513, metadata !DIExpression()), !dbg !2514
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2515
  ret i32 %call, !dbg !2516
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2517 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2520, metadata !DIExpression()), !dbg !2521
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2522
  ret i32 %call, !dbg !2523
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2524 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2529, metadata !DIExpression()), !dbg !2530
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2531
  ret i32 %call, !dbg !2532
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2533 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2540, metadata !DIExpression()), !dbg !2541
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2542
  ret i32 %call, !dbg !2543
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2544 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2552
  ret i32 %call, !dbg !2553
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2554 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2561, metadata !DIExpression()), !dbg !2562
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2561, metadata !DIExpression(DW_OP_deref)), !dbg !2562
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2563
  ret i32 %call, !dbg !2564
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2565 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2589, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2590, metadata !DIExpression()), !dbg !2591
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2592
  ret i32 %call, !dbg !2593
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2594 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2597, metadata !DIExpression()), !dbg !2598
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2599
  ret i32 %call, !dbg !2600
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2601 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2605, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2606, metadata !DIExpression()), !dbg !2607
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2608
  ret i32 %call, !dbg !2609
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2610 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2614, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2617, metadata !DIExpression()), !dbg !2618
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2619
  ret i32 %call, !dbg !2620
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_fixup_nothrow_decls() local_unnamed_addr #4 !dbg !2621 {
entry:
  %0 = load i32, i32* @flag_wpa, align 4, !dbg !2627
  %tobool = icmp eq i32 %0, 0, !dbg !2627
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2629
  %tobool1 = icmp ne %struct.bitmap_head_def* %1, null, !dbg !2629
  %or.cond = and i1 %tobool, %tobool1, !dbg !2630
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !2630

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !2631

for.cond:                                         ; preds = %for.inc22, %if.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.inc22 ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2623, metadata !DIExpression()), !dbg !2634
  %tobool2 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !2635
  br i1 %tobool2, label %cleanup.cont.loopexit, label %for.body, !dbg !2635

for.body:                                         ; preds = %for.cond
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2636
  %3 = bitcast %struct.cgraph_node* %node.0 to %struct.tree_decl_minimal**, !dbg !2639
  %4 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %3, align 8, !dbg !2639
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %4, i64 0, i32 2, !dbg !2639
  %5 = load i32, i32* %uid, align 4, !dbg !2639
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %2, i32 %5) #6, !dbg !2640
  %tobool3 = icmp eq i32 %call, 0, !dbg !2640
  br i1 %tobool3, label %for.inc22, label %if.then4, !dbg !2641

if.then4:                                         ; preds = %for.body
  %6 = bitcast %struct.cgraph_node* %node.0 to i64**, !dbg !2642
  %7 = load i64*, i64** %6, align 8, !dbg !2642
  %bf.load = load i64, i64* %7, align 8, !dbg !2642
  %bf.cast1 = and i64 %bf.load, 33554432, !dbg !2642
  %tobool6 = icmp eq i64 %bf.cast1, 0, !dbg !2642
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !2642

cond.true:                                        ; preds = %if.then4
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2642
  br label %cond.end, !dbg !2642

cond.end:                                         ; preds = %if.then4, %cond.true
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 2, !dbg !2644
  br label %for.cond7, !dbg !2646

for.cond7:                                        ; preds = %for.inc, %cond.end
  %edge.0.in = phi %struct.cgraph_edge** [ %callers, %cond.end ], [ %next_caller, %for.inc ]
  %edge.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in, align 8, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !2624, metadata !DIExpression()), !dbg !2634
  %tobool8 = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !2648
  br i1 %tobool8, label %for.inc22.loopexit, label %for.body9, !dbg !2648

for.body9:                                        ; preds = %for.cond7
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 1, !dbg !2649
  %8 = bitcast %struct.cgraph_node** %caller to %struct.tree_function_decl***, !dbg !2649
  %9 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %8, align 8, !dbg !2649
  %10 = load %struct.tree_function_decl*, %struct.tree_function_decl** %9, align 8, !dbg !2649
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %10, i64 0, i32 1, !dbg !2649
  %11 = load %struct.function*, %struct.function** %f, align 8, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.function* %11, metadata !2625, metadata !DIExpression()), !dbg !2634
  %call_stmt11 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 7, !dbg !2652
  %12 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt11, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %12, metadata !2626, metadata !DIExpression()), !dbg !2634
  %tobool12 = icmp eq %union.gimple_statement_d* %12, null, !dbg !2653
  br i1 %tobool12, label %cond.true13, label %cond.end15, !dbg !2653

cond.true13:                                      ; preds = %for.body9
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2653
  br label %cond.end15, !dbg !2653

cond.end15:                                       ; preds = %for.body9, %cond.true13
  %call17 = tail call i32 @lookup_stmt_eh_lp_fn(%struct.function* %11, %union.gimple_statement_d* %12) #6, !dbg !2654
  %cmp = icmp eq i32 %call17, 0, !dbg !2656
  br i1 %cmp, label %for.inc, label %if.then18, !dbg !2657

if.then18:                                        ; preds = %cond.end15
  %call19 = tail call zeroext i8 @remove_stmt_from_eh_lp_fn(%struct.function* %11, %union.gimple_statement_d* %12) #6, !dbg !2658
  br label %for.inc, !dbg !2658

for.inc:                                          ; preds = %cond.end15, %if.then18
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 4, !dbg !2659
  br label %for.cond7, !dbg !2660, !llvm.loop !2661

for.inc22.loopexit:                               ; preds = %for.cond7
  br label %for.inc22, !dbg !2663

for.inc22:                                        ; preds = %for.inc22.loopexit, %for.body
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !2663
  br label %for.cond, !dbg !2664, !llvm.loop !2665

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2667

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2667
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i32 @lookup_stmt_eh_lp_fn(%struct.function*, %union.gimple_statement_d*) local_unnamed_addr #1

declare dso_local zeroext i8 @remove_stmt_from_eh_lp_fn(%struct.function*, %union.gimple_statement_d*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lto_mark_nothrow_fndecl(%union.tree_node* %fndecl) local_unnamed_addr #4 !dbg !2668 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !2672, metadata !DIExpression()), !dbg !2673
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2674
  %bf.load = load i64, i64* %0, align 8, !dbg !2674
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2674
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2674
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2674

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2674
  br label %cond.end, !dbg !2674

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2675
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !2675
  br i1 %tobool, label %if.then, label %if.end, !dbg !2677

if.then:                                          ; preds = %cond.end
  %call = tail call %struct.bitmap_head_def* @lto_bitmap_alloc() #6, !dbg !2678
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2679
  br label %if.end, !dbg !2680

if.end:                                           ; preds = %cond.end, %if.then
  %2 = phi %struct.bitmap_head_def* [ %1, %cond.end ], [ %call, %if.then ], !dbg !2681
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2682
  %3 = load i32, i32* %uid, align 4, !dbg !2682
  %call1 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %2, i32 %3) #6, !dbg !2683
  ret void, !dbg !2684
}

declare dso_local %struct.bitmap_head_def* @lto_bitmap_alloc() local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_wpa_fixup() #4 !dbg !2685 {
entry:
  %0 = load i32, i32* @flag_wpa, align 4, !dbg !2686
  %1 = load i32, i32* @flag_ltrans, align 4, !dbg !2687
  %2 = or i32 %0, %1, !dbg !2688
  %3 = icmp eq i32 %2, 0, !dbg !2688
  br i1 %3, label %land.end, label %land.rhs, !dbg !2688

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i8 @gate_lto_out() #6, !dbg !2689
  %tobool2 = icmp ne i8 %call, 0, !dbg !2690
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %4 = phi i8 [ %phitmp, %land.rhs ], [ 0, %entry ]
  ret i8 %4, !dbg !2691
}

; Function Attrs: nounwind uwtable
define internal void @lto_output_wpa_fixup(%struct.cgraph_node_set_def* %set) #4 !dbg !2692 {
entry:
  %csi = alloca %struct.cgraph_node_set_iterator, align 8
  %decls = alloca %struct.VEC_tree_heap*, align 8
  %tmp = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2697, metadata !DIExpression()), !dbg !2747
  %0 = bitcast %struct.cgraph_node_set_iterator* %csi to i8*, !dbg !2748
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2748
  %1 = bitcast %struct.VEC_tree_heap** %decls to i8*, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2738, metadata !DIExpression()), !dbg !2747
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %decls, align 8, !dbg !2750
  %call = tail call %struct.lto_simple_output_block* @lto_create_simple_output_block(i32 8) #6, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.lto_simple_output_block* %call, metadata !2698, metadata !DIExpression()), !dbg !2747
  %call1 = tail call %struct.bitmap_head_def* @lto_bitmap_alloc() #6, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !2737, metadata !DIExpression()), !dbg !2747
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2753
  %tobool = icmp eq %struct.bitmap_head_def* %2, null, !dbg !2753
  br i1 %tobool, label %if.end41, label %if.then, !dbg !2754

if.then:                                          ; preds = %entry
  %3 = bitcast %struct.cgraph_node_set_iterator* %tmp to i8*, !dbg !2755
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2755
  %call2 = tail call fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) #8, !dbg !2755
  %4 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 0, !dbg !2755
  %5 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call2, 0, !dbg !2755
  store %struct.cgraph_node_set_def* %5, %struct.cgraph_node_set_def** %4, align 8, !dbg !2755
  %6 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %tmp, i64 0, i32 1, !dbg !2755
  %7 = extractvalue { %struct.cgraph_node_set_def*, i32 } %call2, 1, !dbg !2755
  store i32 %7, i32* %6, align 8, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2755
  %8 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 0, !dbg !2756
  %9 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !2756
  br label %for.cond, !dbg !2757

for.cond:                                         ; preds = %for.inc39, %if.then
  %10 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %8, align 8, !dbg !2758
  %11 = load i32, i32* %9, align 8, !dbg !2758
  %call3 = call fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %10, i32 %11) #8, !dbg !2758
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2759
  br i1 %tobool4, label %for.body, label %if.end41.loopexit, !dbg !2760

for.body:                                         ; preds = %for.cond
  %12 = load %struct.cgraph_node_set_def*, %struct.cgraph_node_set_def** %8, align 8, !dbg !2761
  %13 = load i32, i32* %9, align 8, !dbg !2761
  %call5 = call fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %12, i32 %13) #8, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call5, metadata !2746, metadata !DIExpression()), !dbg !2762
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call5, i64 0, i32 0, !dbg !2763
  %14 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2763
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2736, metadata !DIExpression()), !dbg !2747
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2764
  %15 = load i32, i32* %uid, align 4, !dbg !2764
  %call6 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call1, i32 %15) #6, !dbg !2766
  %tobool7 = icmp eq i32 %call6, 0, !dbg !2766
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !2767

if.then8:                                         ; preds = %for.body
  %16 = load i32, i32* %uid, align 4, !dbg !2768
  %call11 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call1, i32 %16) #6, !dbg !2770
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2771
  %18 = load i32, i32* %uid, align 4, !dbg !2773
  %call14 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %17, i32 %18) #6, !dbg !2774
  %tobool15 = icmp eq i32 %call14, 0, !dbg !2774
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !2775

if.then16:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %decls, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  %call17 = call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %decls, %union.tree_node* %14) #8, !dbg !2776
  br label %if.end18, !dbg !2776

if.end18:                                         ; preds = %if.then8, %for.body, %if.then16
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call5, i64 0, i32 1, !dbg !2777
  br label %for.cond19, !dbg !2779

for.cond19:                                       ; preds = %for.inc, %if.end18
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %if.end18 ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !2741, metadata !DIExpression()), !dbg !2762
  %tobool20 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !2781
  br i1 %tobool20, label %for.inc39, label %for.body21, !dbg !2781

for.body21:                                       ; preds = %for.cond19
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !2782
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !2782
  %decl22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i64 0, i32 0, !dbg !2785
  %20 = load %union.tree_node*, %union.tree_node** %decl22, align 8, !dbg !2785
  call void @llvm.dbg.value(metadata %union.tree_node* %20, metadata !2736, metadata !DIExpression()), !dbg !2747
  %uid24 = getelementptr inbounds %union.tree_node, %union.tree_node* %20, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2786
  %21 = load i32, i32* %uid24, align 4, !dbg !2786
  %call25 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call1, i32 %21) #6, !dbg !2788
  %tobool26 = icmp eq i32 %call25, 0, !dbg !2788
  br i1 %tobool26, label %if.then27, label %for.inc, !dbg !2789

if.then27:                                        ; preds = %for.body21
  %22 = load i32, i32* %uid24, align 4, !dbg !2790
  %call30 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call1, i32 %22) #6, !dbg !2792
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @lto_nothrow_fndecls, align 8, !dbg !2793
  %24 = load i32, i32* %uid24, align 4, !dbg !2795
  %call33 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %23, i32 %24) #6, !dbg !2796
  %tobool34 = icmp eq i32 %call33, 0, !dbg !2796
  br i1 %tobool34, label %for.inc, label %if.then35, !dbg !2797

if.then35:                                        ; preds = %if.then27
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %decls, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  %call36 = call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %decls, %union.tree_node* %20) #8, !dbg !2798
  br label %for.inc, !dbg !2798

for.inc:                                          ; preds = %if.then27, %for.body21, %if.then35
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !2799
  br label %for.cond19, !dbg !2800, !llvm.loop !2801

for.inc39:                                        ; preds = %for.cond19
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2730, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  call fastcc void @csi_next(%struct.cgraph_node_set_iterator* nonnull %csi) #8, !dbg !2803
  br label %for.cond, !dbg !2804, !llvm.loop !2805

if.end41.loopexit:                                ; preds = %for.cond
  %.pre = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %decls, align 8, !dbg !2807
  br label %if.end41, !dbg !2807

if.end41:                                         ; preds = %if.end41.loopexit, %entry
  %25 = phi %struct.VEC_tree_heap* [ %.pre, %if.end41.loopexit ], [ null, %entry ], !dbg !2807
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %25, metadata !2738, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %25, metadata !2738, metadata !DIExpression()), !dbg !2747
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %25, i64 0, i32 0, !dbg !2807
  %call43 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #8, !dbg !2807
  %conv = zext i32 %call43 to i64, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2740, metadata !DIExpression()), !dbg !2747
  %main_stream = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 2, !dbg !2808
  %26 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2808
  call void @lto_output_uleb128_stream(%struct.lto_output_stream* %26, i64 %conv) #6, !dbg !2809
  call void @llvm.dbg.value(metadata i64 0, metadata !2739, metadata !DIExpression()), !dbg !2747
  %decl_state = getelementptr inbounds %struct.lto_simple_output_block, %struct.lto_simple_output_block* %call, i64 0, i32 1, !dbg !2810
  br label %for.cond44, !dbg !2814

for.cond44:                                       ; preds = %for.body46, %if.end41
  %i.0 = phi i64 [ 0, %if.end41 ], [ %inc, %for.body46 ], !dbg !2815
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2739, metadata !DIExpression()), !dbg !2747
  %exitcond = icmp eq i64 %i.0, %conv, !dbg !2816
  br i1 %exitcond, label %for.end57, label %for.body46, !dbg !2817

for.body46:                                       ; preds = %for.cond44
  %27 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %decls, align 8, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %27, metadata !2738, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %27, metadata !2738, metadata !DIExpression()), !dbg !2747
  %base49 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %27, i64 0, i32 0, !dbg !2818
  %conv53 = trunc i64 %i.0 to i32, !dbg !2818
  %call54 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %base49, i32 %conv53) #8, !dbg !2818
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !2736, metadata !DIExpression()), !dbg !2747
  %28 = load %struct.lto_out_decl_state*, %struct.lto_out_decl_state** %decl_state, align 8, !dbg !2819
  %29 = load %struct.lto_output_stream*, %struct.lto_output_stream** %main_stream, align 8, !dbg !2820
  call void @lto_output_fn_decl_index(%struct.lto_out_decl_state* %28, %struct.lto_output_stream* %29, %union.tree_node* %call54) #6, !dbg !2821
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2739, metadata !DIExpression()), !dbg !2747
  br label %for.cond44, !dbg !2823, !llvm.loop !2824

for.end57:                                        ; preds = %for.cond44
  call void @lto_destroy_simple_output_block(%struct.lto_simple_output_block* %call) #6, !dbg !2826
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %decls, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2747
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %decls) #8, !dbg !2827
  call void @lto_bitmap_free(%struct.bitmap_head_def* %call1) #6, !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2829
  ret void, !dbg !2829
}

; Function Attrs: nounwind uwtable
define internal void @lto_input_wpa_fixup() #4 !dbg !2830 {
entry:
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %call = tail call %struct.lto_file_decl_data** @lto_get_file_decl_data() #6, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data** %call, metadata !2832, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 0, metadata !2835, metadata !DIExpression()), !dbg !2847
  %0 = load i32, i32* @flag_ltrans, align 4, !dbg !2848
  %tobool = icmp eq i32 %0, 0, !dbg !2848
  br i1 %tobool, label %cleanup.cont, label %while.cond.preheader, !dbg !2850

while.cond.preheader:                             ; preds = %entry
  %1 = bitcast i8** %data to i8*, !dbg !2851
  %2 = bitcast i64* %len to i8*, !dbg !2851
  br label %while.cond, !dbg !2852

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next, %while.body ], !dbg !2847
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2835, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2847
  %arrayidx = getelementptr inbounds %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %call, i64 %indvars.iv, !dbg !2853
  %3 = load %struct.lto_file_decl_data*, %struct.lto_file_decl_data** %arrayidx, align 8, !dbg !2853
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %3, metadata !2834, metadata !DIExpression()), !dbg !2847
  %tobool1 = icmp eq %struct.lto_file_decl_data* %3, null, !dbg !2852
  br i1 %tobool1, label %cleanup.cont.loopexit, label %while.body, !dbg !2852

while.body:                                       ; preds = %while.cond
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i32 undef, metadata !2835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2856
  call void @llvm.dbg.value(metadata i8** %data, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  call void @llvm.dbg.value(metadata i64* %len, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  %call2 = call %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data* nonnull %3, i32 8, i8** nonnull %data, i64* nonnull %len) #6, !dbg !2857
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %call2, metadata !2839, metadata !DIExpression()), !dbg !2851
  call fastcc void @lto_input_wpa_fixup_1(%struct.lto_file_decl_data* nonnull %3, %struct.lto_input_block* %call2) #8, !dbg !2858
  %4 = load i8*, i8** %data, align 8, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %4, metadata !2836, metadata !DIExpression()), !dbg !2851
  %5 = load i64, i64* %len, align 8, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %5, metadata !2838, metadata !DIExpression()), !dbg !2851
  call void @lto_destroy_simple_input_block(%struct.lto_file_decl_data* nonnull %3, i32 8, %struct.lto_input_block* %call2, i8* %4, i64 %5) #6, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2862
  br label %while.cond, !dbg !2852, !llvm.loop !2863

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !2864

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !2864
}

declare dso_local zeroext i8 @gate_lto_out() local_unnamed_addr #1

declare dso_local %struct.lto_simple_output_block* @lto_create_simple_output_block(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.cgraph_node_set_def*, i32 } @csi_start(%struct.cgraph_node_set_def* %set) unnamed_addr #0 !dbg !2865 {
entry:
  %retval = alloca %struct.cgraph_node_set_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_def* %set, metadata !2869, metadata !DIExpression()), !dbg !2871
  %set1 = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 0, !dbg !2872
  store %struct.cgraph_node_set_def* %set, %struct.cgraph_node_set_def** %set1, align 8, !dbg !2873
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %retval, i64 0, i32 1, !dbg !2874
  store i32 0, i32* %index, align 8, !dbg !2875
  %0 = bitcast %struct.cgraph_node_set_iterator* %retval to { %struct.cgraph_node_set_def*, i32 }*, !dbg !2876
  %1 = load { %struct.cgraph_node_set_def*, i32 }, { %struct.cgraph_node_set_def*, i32 }* %0, align 8, !dbg !2876
  ret { %struct.cgraph_node_set_def*, i32 } %1, !dbg !2876
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @csi_end_p(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !2877 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !2882
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2882
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !2882
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2882

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !2882
  br label %cond.end, !dbg !2882

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2882
  %call = tail call fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %cond) #8, !dbg !2882
  %cmp = icmp ule i32 %call, %csi.coerce1, !dbg !2883
  %conv3 = zext i1 %cmp to i8, !dbg !2884
  ret i8 %conv3, !dbg !2885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @csi_node(%struct.cgraph_node_set_def* %csi.coerce0, i32 %csi.coerce1) unnamed_addr #0 !dbg !2886 {
entry:
  %nodes = getelementptr inbounds %struct.cgraph_node_set_def, %struct.cgraph_node_set_def* %csi.coerce0, i64 0, i32 1, !dbg !2891
  %0 = load %struct.VEC_cgraph_node_ptr_gc*, %struct.VEC_cgraph_node_ptr_gc** %nodes, align 8, !dbg !2891
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_gc* %0, null, !dbg !2891
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2891

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_cgraph_node_ptr_gc, %struct.VEC_cgraph_node_ptr_gc* %0, i64 0, i32 0, !dbg !2891
  br label %cond.end, !dbg !2891

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_cgraph_node_ptr_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2891
  %call = tail call fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %cond, i32 %csi.coerce1) #8, !dbg !2891
  ret %struct.cgraph_node* %call, !dbg !2892
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2893 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2899, metadata !DIExpression()), !dbg !2900
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #8, !dbg !2901
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2901
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2901
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2901

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2901
  br label %cond.end, !dbg !2901

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2901
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #8, !dbg !2901
  ret %union.tree_node** %call1, !dbg !2901
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @csi_next(%struct.cgraph_node_set_iterator* %csi) unnamed_addr #0 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node_set_iterator* %csi, metadata !2907, metadata !DIExpression()), !dbg !2908
  %index = getelementptr inbounds %struct.cgraph_node_set_iterator, %struct.cgraph_node_set_iterator* %csi, i64 0, i32 1, !dbg !2909
  %0 = load i32, i32* %index, align 8, !dbg !2910
  %inc = add i32 %0, 1, !dbg !2910
  store i32 %inc, i32* %index, align 8, !dbg !2910
  ret void, !dbg !2911
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2918, metadata !DIExpression()), !dbg !2919
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2920
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2920

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2920
  %0 = load i32, i32* %num, align 8, !dbg !2920
  br label %cond.end, !dbg !2920

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2920
  ret i32 %cond, !dbg !2920
}

declare dso_local void @lto_output_uleb128_stream(%struct.lto_output_stream*, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2921 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2926, metadata !DIExpression()), !dbg !2927
  br label %land.end, !dbg !2928

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2928
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2928
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2928
  ret %union.tree_node* %0, !dbg !2928
}

declare dso_local void @lto_output_fn_decl_index(%struct.lto_out_decl_state*, %struct.lto_output_stream*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @lto_destroy_simple_output_block(%struct.lto_simple_output_block*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2933, metadata !DIExpression()), !dbg !2934
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2935
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2935
  br i1 %tobool, label %if.end, label %if.then, !dbg !2937

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2937
  tail call void @free(i8* nonnull %1) #6, !dbg !2935
  br label %if.end, !dbg !2935

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2937
  ret void, !dbg !2937
}

declare dso_local void @lto_bitmap_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_node_ptr_base_length(%struct.VEC_cgraph_node_ptr_base* %vec_) unnamed_addr #0 !dbg !2938 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2944, metadata !DIExpression()), !dbg !2945
  %tobool = icmp eq %struct.VEC_cgraph_node_ptr_base* %vec_, null, !dbg !2946
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2946

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 0, !dbg !2946
  %0 = load i32, i32* %num, align 8, !dbg !2946
  br label %cond.end, !dbg !2946

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2946
  ret i32 %cond, !dbg !2946
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.cgraph_node* @VEC_cgraph_node_ptr_base_index(%struct.VEC_cgraph_node_ptr_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_node_ptr_base* %vec_, metadata !2951, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2952, metadata !DIExpression()), !dbg !2953
  br label %land.end, !dbg !2954

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2954
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, %struct.VEC_cgraph_node_ptr_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2954
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !2954
  ret %struct.cgraph_node* %0, !dbg !2954
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2955 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2959, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32 1, metadata !2960, metadata !DIExpression()), !dbg !2962
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2963
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2963
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2963

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2963
  br label %cond.end, !dbg !2963

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2963
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #8, !dbg !2963
  %tobool1 = icmp eq i32 %call, 0, !dbg !2963
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2961, metadata !DIExpression()), !dbg !2962
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2963

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !2964
  %2 = load i8*, i8** %1, align 8, !dbg !2964
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !2964
  store i8* %call3, i8** %1, align 8, !dbg !2964
  br label %if.end, !dbg !2964

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2963
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2966 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2972, metadata !DIExpression()), !dbg !2974
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2975
  %0 = load i32, i32* %num1, align 8, !dbg !2975
  %inc = add i32 %0, 1, !dbg !2975
  store i32 %inc, i32* %num1, align 8, !dbg !2975
  %idxprom = zext i32 %0 to i64, !dbg !2975
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2975
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !2973, metadata !DIExpression()), !dbg !2974
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2975
  ret %union.tree_node** %arrayidx, !dbg !2975
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2976 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 1, metadata !2981, metadata !DIExpression()), !dbg !2982
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2983
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2983

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !2983
  %0 = load i32, i32* %alloc, align 4, !dbg !2983
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2983
  %1 = load i32, i32* %num, align 8, !dbg !2983
  %cmp1 = icmp ne i32 %0, %1, !dbg !2983
  %phitmp = zext i1 %cmp1 to i32, !dbg !2983
  br label %cond.end, !dbg !2983

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2983

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2983
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local %struct.lto_file_decl_data** @lto_get_file_decl_data() local_unnamed_addr #1

declare dso_local %struct.lto_input_block* @lto_create_simple_input_block(%struct.lto_file_decl_data*, i32, i8**, i64*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @lto_input_wpa_fixup_1(%struct.lto_file_decl_data* %file_data, %struct.lto_input_block* %ib) unnamed_addr #4 !dbg !2984 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %file_data, metadata !2988, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata %struct.lto_input_block* %ib, metadata !2989, metadata !DIExpression()), !dbg !2994
  %call = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %call, metadata !2991, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 0, metadata !2990, metadata !DIExpression()), !dbg !2994
  br label %for.cond, !dbg !2996

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !2998
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2990, metadata !DIExpression()), !dbg !2994
  %exitcond = icmp eq i64 %i.0, %call, !dbg !2999
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3001

for.body:                                         ; preds = %for.cond
  %call1 = tail call i64 @lto_input_uleb128(%struct.lto_input_block* %ib) #6, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2992, metadata !DIExpression()), !dbg !2994
  %conv = trunc i64 %call1 to i32, !dbg !3004
  %call2 = tail call fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %file_data, i32 %conv) #8, !dbg !3005
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2993, metadata !DIExpression()), !dbg !2994
  tail call void @lto_mark_nothrow_fndecl(%union.tree_node* %call2) #8, !dbg !3006
  %inc = add i64 %i.0, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2990, metadata !DIExpression()), !dbg !2994
  br label %for.cond, !dbg !3008, !llvm.loop !3009

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3011
}

declare dso_local void @lto_destroy_simple_input_block(%struct.lto_file_decl_data*, i32, %struct.lto_input_block*, i8*, i64) local_unnamed_addr #1

declare dso_local i64 @lto_input_uleb128(%struct.lto_input_block*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @lto_file_decl_data_get_fn_decl(%struct.lto_file_decl_data* %data, i32 %idx) unnamed_addr #0 !dbg !3012 {
entry:
  call void @llvm.dbg.value(metadata %struct.lto_file_decl_data* %data, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %idx, metadata !3017, metadata !DIExpression()), !dbg !3019
  %current_decl_state = getelementptr inbounds %struct.lto_file_decl_data, %struct.lto_file_decl_data* %data, i64 0, i32 0, !dbg !3020
  %0 = load %struct.lto_in_decl_state*, %struct.lto_in_decl_state** %current_decl_state, align 8, !dbg !3020
  call void @llvm.dbg.value(metadata %struct.lto_in_decl_state* %0, metadata !3018, metadata !DIExpression()), !dbg !3019
  %size = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 2, i32 1, !dbg !3020
  %1 = load i32, i32* %size, align 8, !dbg !3020
  %cmp = icmp ugt i32 %1, %idx, !dbg !3020
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3020

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1043, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3020
  br label %cond.end, !dbg !3020

cond.end:                                         ; preds = %entry, %cond.true
  %trees = getelementptr inbounds %struct.lto_in_decl_state, %struct.lto_in_decl_state* %0, i64 0, i32 0, i64 2, i32 0, !dbg !3020
  %2 = load %union.tree_node**, %union.tree_node*** %trees, align 8, !dbg !3020
  %idxprom = zext i32 %idx to i64, !dbg !3020
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 %idxprom, !dbg !3020
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !3020
  ret %union.tree_node* %3, !dbg !3020
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
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2172, !2173, !2174}
!llvm.ident = !{!2175}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lto_nothrow_fndecls", scope: !2, file: !3, line: 50, type: !1455, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !597, globals: !1908, nameTableKind: None)
!3 = !DIFile(filename: "lto-wpa-fixup.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !400, !407, !583}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !135, line: 39, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!137 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!156 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!157 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!158 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!159 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!160 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!161 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!162 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!163 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!164 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!165 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!166 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!167 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!168 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!169 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!170 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!171 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!172 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!173 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!174 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!175 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!176 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!177 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!179 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!180 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!181 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!182 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!183 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!184 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!185 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!186 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!187 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!188 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!189 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!190 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!191 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!192 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!193 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!195 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!196 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!197 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!198 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!199 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!200 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!201 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!202 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!203 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!204 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!205 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!206 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!207 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!208 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!209 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!210 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!211 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!212 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!213 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!214 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!215 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!216 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!217 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!218 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!219 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!220 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!221 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!222 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!223 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!226 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!232 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!233 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!234 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!235 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!236 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!237 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!238 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!239 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!240 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!241 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!242 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!243 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!244 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!245 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!246 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!247 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!248 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!249 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!250 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!251 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!252 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!253 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!254 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!255 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!256 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!257 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!258 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!259 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!260 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!261 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!262 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!263 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!264 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!265 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!266 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!267 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!268 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!269 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!271 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!272 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!273 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!274 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!275 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!276 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!277 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!278 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!279 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!280 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!281 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!282 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!283 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!284 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!285 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!286 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!287 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!288 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!289 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!302 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!303 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!304 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!305 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!306 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!322 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!323 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!324 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!325 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!326 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!327 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !330, line: 363, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !330, line: 355, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!339 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !341, line: 474, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344}
!343 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!347 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !378, line: 309, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!380 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!399 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !401, line: 104, baseType: !7, size: 32, elements: !402)
!401 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!402 = !{!403, !404, !405, !406}
!403 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!404 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!405 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!406 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !408, line: 74, baseType: !7, size: 32, elements: !409)
!408 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!410 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!579 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!580 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!581 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!582 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!583 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lto_section_type", file: !584, line: 256, baseType: !7, size: 32, elements: !585)
!584 = !DIFile(filename: "./lto-streamer.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!586 = !DIEnumerator(name: "LTO_section_decls", value: 0, isUnsigned: true)
!587 = !DIEnumerator(name: "LTO_section_function_body", value: 1, isUnsigned: true)
!588 = !DIEnumerator(name: "LTO_section_static_initializer", value: 2, isUnsigned: true)
!589 = !DIEnumerator(name: "LTO_section_cgraph", value: 3, isUnsigned: true)
!590 = !DIEnumerator(name: "LTO_section_jump_functions", value: 4, isUnsigned: true)
!591 = !DIEnumerator(name: "LTO_section_ipa_pure_const", value: 5, isUnsigned: true)
!592 = !DIEnumerator(name: "LTO_section_ipa_reference", value: 6, isUnsigned: true)
!593 = !DIEnumerator(name: "LTO_section_symtab", value: 7, isUnsigned: true)
!594 = !DIEnumerator(name: "LTO_section_wpa_fixup", value: 8, isUnsigned: true)
!595 = !DIEnumerator(name: "LTO_section_opts", value: 9, isUnsigned: true)
!596 = !DIEnumerator(name: "LTO_N_SECTION_TYPES", value: 10, isUnsigned: true)
!597 = !{!598, !599, !600, !601, !604, !605, !134, !607, !7}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!600 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !609, file: !135, line: 184, baseType: !612, size: 128)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !614)
!614 = !{!615, !616, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !613, file: !135, line: 182, baseType: !7, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !613, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !613, file: !135, line: 182, baseType: !618, size: 64, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 64, elements: !718)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !620, line: 56, baseType: !621)
!620 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !623)
!623 = !{!624, !657, !663, !676, !695, !706, !711, !720, !726, !739, !751, !789, !1247, !1275, !1292, !1293, !1298, !1307, !1313, !1318, !1322, !1326, !1559, !1606, !1612, !1618, !1625, !1638, !1652, !1669, !1681, !1703, !1718, !1890}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !622, file: !135, line: 3372, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !625, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !625, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !625, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !625, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !625, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !625, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !625, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !625, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !625, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !625, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !625, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !625, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !625, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !625, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !625, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !625, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !625, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !625, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !625, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !625, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !625, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !625, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !625, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !625, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !625, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !625, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !625, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !625, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !625, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !625, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !135, line: 3373, baseType: !658, size: 192)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !659)
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !658, file: !135, line: 403, baseType: !625, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !658, file: !135, line: 404, baseType: !619, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !135, line: 405, baseType: !619, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !622, file: !135, line: 3374, baseType: !664, size: 320)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !664, file: !135, line: 1385, baseType: !658, size: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !664, file: !135, line: 1386, baseType: !668, size: 128, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !669, line: 58, baseType: !670)
!669 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 54, size: 128, elements: !671)
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !670, file: !669, line: 56, baseType: !673, size: 64)
!673 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !670, file: !669, line: 57, baseType: !675, size: 64, offset: 64)
!675 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !622, file: !135, line: 3375, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !135, line: 1398, baseType: !658, size: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !677, file: !135, line: 1399, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !683, line: 52, size: 256, elements: !684)
!683 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!684 = !{!685, !686, !687, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !682, file: !683, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !682, file: !683, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !682, file: !683, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !682, file: !683, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !682, file: !683, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !682, file: !683, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !682, file: !683, line: 62, baseType: !692, size: 192, offset: 64)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 192, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 3)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !622, file: !135, line: 3376, baseType: !696, size: 256)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !696, file: !135, line: 1409, baseType: !658, size: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !696, file: !135, line: 1410, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !702, line: 27, size: 192, elements: !703)
!702 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !701, file: !702, line: 29, baseType: !668, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !701, file: !702, line: 30, baseType: !5, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !622, file: !135, line: 3377, baseType: !707, size: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !707, file: !135, line: 1438, baseType: !658, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !707, file: !135, line: 1439, baseType: !619, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !622, file: !135, line: 3378, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !135, line: 1419, baseType: !658, size: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !712, file: !135, line: 1420, baseType: !600, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !712, file: !135, line: 1421, baseType: !717, size: 8, offset: 224)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 8, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 1)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !622, file: !135, line: 3379, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !721, file: !135, line: 1429, baseType: !658, size: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !721, file: !135, line: 1430, baseType: !619, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !721, file: !135, line: 1431, baseType: !619, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !622, file: !135, line: 3380, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !727, file: !135, line: 1461, baseType: !658, size: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !727, file: !135, line: 1462, baseType: !731, size: 128, offset: 192)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !732, line: 31, size: 128, elements: !733)
!732 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!733 = !{!734, !737, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !731, file: !732, line: 32, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !731, file: !732, line: 33, baseType: !7, size: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !731, file: !732, line: 34, baseType: !7, size: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !622, file: !135, line: 3381, baseType: !740, size: 384)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !741)
!741 = !{!742, !743, !748, !749, !750}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !740, file: !135, line: 2508, baseType: !658, size: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !740, file: !135, line: 2509, baseType: !744, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !745, line: 58, baseType: !746)
!745 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !747, line: 44, baseType: !7)
!747 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !740, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !740, file: !135, line: 2511, baseType: !619, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !740, file: !135, line: 2512, baseType: !619, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !622, file: !135, line: 3382, baseType: !752, size: 896)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !135, line: 2653, baseType: !740, size: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !752, file: !135, line: 2654, baseType: !619, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !752, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !752, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !752, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !752, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !752, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !752, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !752, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !752, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !752, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !752, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !752, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !752, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !752, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !752, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !752, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !752, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !752, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !752, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !752, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !752, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !752, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !752, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !752, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !752, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !752, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !752, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !752, file: !135, line: 2705, baseType: !619, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !752, file: !135, line: 2706, baseType: !619, size: 64, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !752, file: !135, line: 2707, baseType: !619, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !752, file: !135, line: 2708, baseType: !619, size: 64, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !752, file: !135, line: 2711, baseType: !787, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !622, file: !135, line: 3383, baseType: !790, size: 960)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !790, file: !135, line: 2757, baseType: !752, size: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !790, file: !135, line: 2758, baseType: !794, size: 64, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !620, line: 50, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !797, line: 240, size: 384, elements: !798)
!797 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !796, file: !797, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !796, file: !797, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !796, file: !797, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !796, file: !797, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !796, file: !797, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !796, file: !797, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !796, file: !797, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !796, file: !797, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !796, file: !797, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !796, file: !797, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !796, file: !797, line: 321, baseType: !810, size: 320, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !797, line: 315, size: 320, elements: !811)
!811 = !{!812, !1214, !1216, !1245, !1246}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !810, file: !797, line: 316, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 64, elements: !718)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !797, line: 183, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !797, line: 166, size: 64, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !829, !830, !842, !845, !905, !906, !1191, !1204, !1211}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !815, file: !797, line: 168, baseType: !600, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !815, file: !797, line: 169, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !815, file: !797, line: 170, baseType: !605, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !815, file: !797, line: 171, baseType: !794, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !815, file: !797, line: 172, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !620, line: 53, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !797, line: 359, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !824, file: !797, line: 360, baseType: !600, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !824, file: !797, line: 361, baseType: !828, size: 64, offset: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 64, elements: !718)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !815, file: !797, line: 173, baseType: !5, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !815, file: !797, line: 174, baseType: !831, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !797, line: 133, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 115, size: 32, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !832, file: !797, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !832, file: !797, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !832, file: !797, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !832, file: !797, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !832, file: !797, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !832, file: !797, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !832, file: !797, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !832, file: !797, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !815, file: !797, line: 175, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !797, line: 175, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !815, file: !797, line: 176, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !848, line: 75, size: 256, elements: !849)
!848 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !{!850, !864, !865, !866}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !847, file: !848, line: 76, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !848, line: 68, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !848, line: 63, size: 320, elements: !854)
!854 = !{!855, !857, !858, !859}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !848, line: 64, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !853, file: !848, line: 65, baseType: !856, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !853, file: !848, line: 66, baseType: !7, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !853, file: !848, line: 67, baseType: !860, size: 128, offset: 192)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 128, elements: !862)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !848, line: 29, baseType: !673)
!862 = !{!863}
!863 = !DISubrange(count: 2)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !847, file: !848, line: 77, baseType: !851, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !847, file: !848, line: 78, baseType: !7, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !847, file: !848, line: 79, baseType: !867, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !848, line: 49, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !848, line: 45, size: 832, elements: !870)
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !869, file: !848, line: 46, baseType: !856, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !869, file: !848, line: 47, baseType: !846, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !869, file: !848, line: 48, baseType: !874, size: 704, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !875, line: 164, size: 704, elements: !876)
!875 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!876 = !{!877, !878, !888, !889, !890, !891, !892, !893, !897, !901, !902, !903, !904}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !874, file: !875, line: 166, baseType: !675, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !874, file: !875, line: 167, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !875, line: 157, size: 192, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !880, file: !875, line: 159, baseType: !602, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !880, file: !875, line: 160, baseType: !879, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !880, file: !875, line: 161, baseType: !885, size: 32, offset: 128)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 32, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 4)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !874, file: !875, line: 168, baseType: !602, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !874, file: !875, line: 169, baseType: !602, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !874, file: !875, line: 170, baseType: !602, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !874, file: !875, line: 171, baseType: !675, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !874, file: !875, line: 172, baseType: !600, size: 32, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !874, file: !875, line: 176, baseType: !894, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!879, !604, !675}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !874, file: !875, line: 177, baseType: !898, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !604, !879}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !874, file: !875, line: 178, baseType: !604, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !874, file: !875, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !874, file: !875, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !874, file: !875, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !815, file: !797, line: 177, baseType: !619, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !815, file: !797, line: 178, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !909)
!909 = !{!910, !1156, !1157, !1158, !1161, !1165, !1166, !1167, !1185, !1186, !1187, !1188, !1189, !1190}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !908, file: !330, line: 219, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !913, file: !330, line: 151, baseType: !916, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !917, file: !330, line: 150, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !917, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !917, file: !330, line: 150, baseType: !922, size: 64, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 64, elements: !718)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !620, line: 108, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !926)
!926 = !{!927, !928, !929, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !925, file: !330, line: 124, baseType: !907, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !925, file: !330, line: 125, baseType: !907, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !925, file: !330, line: 131, baseType: !930, size: 64, offset: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !931)
!931 = !{!932, !1147}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !930, file: !330, line: 129, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !620, line: 66, baseType: !934)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !936, line: 143, size: 192, elements: !937)
!936 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!937 = !{!938, !1145, !1146}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !935, file: !936, line: 145, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !620, line: 69, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !936, line: 136, size: 192, elements: !942)
!942 = !{!943, !1143, !1144}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !941, file: !936, line: 137, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !620, line: 58, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !936, line: 737, size: 768, elements: !947)
!947 = !{!948, !965, !998, !1004, !1009, !1014, !1021, !1027, !1033, !1038, !1052, !1057, !1063, !1068, !1078, !1083, !1101, !1108, !1115, !1121, !1126, !1132, !1138}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !946, file: !936, line: 738, baseType: !949, size: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !936, line: 271, size: 256, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !949, file: !936, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !949, file: !936, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !949, file: !936, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !949, file: !936, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !949, file: !936, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !949, file: !936, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !949, file: !936, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !949, file: !936, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !949, file: !936, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !949, file: !936, line: 312, baseType: !7, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !949, file: !936, line: 316, baseType: !744, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !949, file: !936, line: 319, baseType: !7, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !949, file: !936, line: 323, baseType: !907, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !949, file: !936, line: 327, baseType: !619, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !946, file: !936, line: 739, baseType: !966, size: 448)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !936, line: 350, size: 448, elements: !967)
!967 = !{!968, !997}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !966, file: !936, line: 353, baseType: !969, size: 384)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !936, line: 333, size: 384, elements: !970)
!970 = !{!971, !972, !980}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !969, file: !936, line: 336, baseType: !949, size: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !969, file: !936, line: 343, baseType: !973, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !975, line: 37, size: 128, elements: !976)
!975 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !975, line: 39, baseType: !973, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !974, file: !975, line: 40, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !969, file: !936, line: 344, baseType: !981, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !975, line: 45, size: 320, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !975, line: 47, baseType: !981, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !982, file: !975, line: 48, baseType: !986, size: 256, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !987)
!987 = !{!988, !990, !991, !996}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !986, file: !135, line: 1884, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !135, line: 1885, baseType: !989, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !986, file: !135, line: 1891, baseType: !992, size: 64, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !135, line: 1891, size: 64, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !992, file: !135, line: 1891, baseType: !944, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !992, file: !135, line: 1891, baseType: !619, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !986, file: !135, line: 1892, baseType: !979, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !966, file: !936, line: 359, baseType: !618, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !946, file: !936, line: 740, baseType: !999, size: 512)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !936, line: 365, size: 512, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !999, file: !936, line: 368, baseType: !969, size: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !999, file: !936, line: 373, baseType: !619, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !999, file: !936, line: 374, baseType: !619, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !946, file: !936, line: 741, baseType: !1005, size: 576)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !936, line: 380, size: 576, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1005, file: !936, line: 383, baseType: !999, size: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1005, file: !936, line: 389, baseType: !618, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !946, file: !936, line: 742, baseType: !1010, size: 320)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !936, line: 395, size: 320, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1010, file: !936, line: 397, baseType: !949, size: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1010, file: !936, line: 400, baseType: !933, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !946, file: !936, line: 743, baseType: !1015, size: 448)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !936, line: 406, size: 448, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1015, file: !936, line: 408, baseType: !949, size: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1015, file: !936, line: 412, baseType: !619, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1015, file: !936, line: 420, baseType: !619, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1015, file: !936, line: 423, baseType: !933, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !946, file: !936, line: 744, baseType: !1022, size: 384)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !936, line: 429, size: 384, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1022, file: !936, line: 431, baseType: !949, size: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1022, file: !936, line: 434, baseType: !619, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1022, file: !936, line: 437, baseType: !933, size: 64, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !946, file: !936, line: 745, baseType: !1028, size: 384)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !936, line: 443, size: 384, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1028, file: !936, line: 445, baseType: !949, size: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1028, file: !936, line: 449, baseType: !619, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1028, file: !936, line: 453, baseType: !933, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !946, file: !936, line: 746, baseType: !1034, size: 320)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !936, line: 459, size: 320, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1034, file: !936, line: 461, baseType: !949, size: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1034, file: !936, line: 464, baseType: !619, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !946, file: !936, line: 747, baseType: !1039, size: 768)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !936, line: 469, size: 768, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1039, file: !936, line: 471, baseType: !949, size: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1039, file: !936, line: 474, baseType: !7, size: 32, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1039, file: !936, line: 475, baseType: !7, size: 32, offset: 288)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1039, file: !936, line: 478, baseType: !619, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1039, file: !936, line: 481, baseType: !1046, size: 384, offset: 384)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 384, elements: !718)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1047, file: !135, line: 1920, baseType: !986, size: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1047, file: !135, line: 1921, baseType: !619, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1047, file: !135, line: 1922, baseType: !744, size: 32, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !946, file: !936, line: 748, baseType: !1053, size: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !936, line: 487, size: 320, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1053, file: !936, line: 490, baseType: !949, size: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1053, file: !936, line: 494, baseType: !600, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !946, file: !936, line: 749, baseType: !1058, size: 384)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !936, line: 500, size: 384, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1058, file: !936, line: 502, baseType: !949, size: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1058, file: !936, line: 506, baseType: !933, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1058, file: !936, line: 510, baseType: !933, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !946, file: !936, line: 750, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !936, line: 529, size: 320, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1064, file: !936, line: 531, baseType: !949, size: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1064, file: !936, line: 540, baseType: !933, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !946, file: !936, line: 751, baseType: !1069, size: 704)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !936, line: 546, size: 704, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1069, file: !936, line: 549, baseType: !999, size: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1069, file: !936, line: 553, baseType: !605, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1069, file: !936, line: 557, baseType: !599, size: 8, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1069, file: !936, line: 558, baseType: !599, size: 8, offset: 584)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1069, file: !936, line: 559, baseType: !599, size: 8, offset: 592)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1069, file: !936, line: 560, baseType: !599, size: 8, offset: 600)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1069, file: !936, line: 566, baseType: !618, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !946, file: !936, line: 752, baseType: !1079, size: 384)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !936, line: 571, size: 384, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1079, file: !936, line: 573, baseType: !1010, size: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1079, file: !936, line: 577, baseType: !619, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !946, file: !936, line: 753, baseType: !1084, size: 576)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !936, line: 600, size: 576, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1091, !1100}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1084, file: !936, line: 602, baseType: !1010, size: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1084, file: !936, line: 605, baseType: !619, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1084, file: !936, line: 609, baseType: !1089, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1090, line: 46, baseType: !673)
!1090 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1084, file: !936, line: 612, baseType: !1092, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !936, line: 581, size: 320, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1093, file: !936, line: 583, baseType: !134, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1093, file: !936, line: 586, baseType: !619, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1093, file: !936, line: 589, baseType: !619, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1093, file: !936, line: 592, baseType: !619, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1093, file: !936, line: 595, baseType: !619, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1084, file: !936, line: 616, baseType: !933, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !946, file: !936, line: 754, baseType: !1102, size: 512)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !936, line: 622, size: 512, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1102, file: !936, line: 624, baseType: !1010, size: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1102, file: !936, line: 628, baseType: !619, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1102, file: !936, line: 632, baseType: !619, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1102, file: !936, line: 636, baseType: !619, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !946, file: !936, line: 755, baseType: !1109, size: 704)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !936, line: 642, size: 704, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1109, file: !936, line: 644, baseType: !1102, size: 512)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1109, file: !936, line: 648, baseType: !619, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1109, file: !936, line: 652, baseType: !619, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1109, file: !936, line: 653, baseType: !619, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !946, file: !936, line: 756, baseType: !1116, size: 448)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !936, line: 663, size: 448, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1116, file: !936, line: 665, baseType: !1010, size: 320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1116, file: !936, line: 668, baseType: !619, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1116, file: !936, line: 673, baseType: !619, size: 64, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !946, file: !936, line: 757, baseType: !1122, size: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !936, line: 694, size: 384, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1122, file: !936, line: 696, baseType: !1010, size: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1122, file: !936, line: 699, baseType: !619, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !946, file: !936, line: 758, baseType: !1127, size: 384)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !936, line: 681, size: 384, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1127, file: !936, line: 683, baseType: !949, size: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1127, file: !936, line: 686, baseType: !619, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1127, file: !936, line: 689, baseType: !619, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !946, file: !936, line: 759, baseType: !1133, size: 384)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !936, line: 707, size: 384, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1133, file: !936, line: 709, baseType: !949, size: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1133, file: !936, line: 712, baseType: !619, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1133, file: !936, line: 712, baseType: !619, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !946, file: !936, line: 760, baseType: !1139, size: 320)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !936, line: 718, size: 320, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1139, file: !936, line: 720, baseType: !949, size: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1139, file: !936, line: 723, baseType: !619, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !941, file: !936, line: 138, baseType: !940, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !936, line: 139, baseType: !940, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !935, file: !936, line: 146, baseType: !939, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !935, file: !936, line: 152, baseType: !933, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !930, file: !330, line: 130, baseType: !794, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !925, file: !330, line: 134, baseType: !604, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !925, file: !330, line: 137, baseType: !619, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !925, file: !330, line: 138, baseType: !744, size: 32, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !925, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !330, line: 144, baseType: !600, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !925, file: !330, line: 145, baseType: !600, size: 32, offset: 416)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !925, file: !330, line: 146, baseType: !1155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !675)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !908, file: !330, line: 220, baseType: !911, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !908, file: !330, line: 223, baseType: !604, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !908, file: !330, line: 226, baseType: !1159, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !908, file: !330, line: 229, baseType: !1162, size: 128, offset: 256)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1163, size: 128, elements: !862)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !908, file: !330, line: 232, baseType: !907, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !908, file: !330, line: 233, baseType: !907, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !908, file: !330, line: 238, baseType: !1168, size: 64, offset: 512)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1169)
!1169 = !{!1170, !1176}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1168, file: !330, line: 236, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1172, file: !330, line: 275, baseType: !933, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1172, file: !330, line: 278, baseType: !933, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1168, file: !330, line: 237, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1178, file: !330, line: 261, baseType: !794, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1178, file: !330, line: 262, baseType: !794, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1178, file: !330, line: 266, baseType: !794, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1178, file: !330, line: 267, baseType: !794, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1178, file: !330, line: 270, baseType: !600, size: 32, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !908, file: !330, line: 241, baseType: !1155, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !908, file: !330, line: 244, baseType: !600, size: 32, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !908, file: !330, line: 247, baseType: !600, size: 32, offset: 672)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !908, file: !330, line: 250, baseType: !600, size: 32, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !908, file: !330, line: 253, baseType: !600, size: 32, offset: 736)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !330, line: 256, baseType: !600, size: 32, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !815, file: !797, line: 179, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !797, line: 150, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !797, line: 142, size: 320, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1202, !1203}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1194, file: !797, line: 144, baseType: !619, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1194, file: !797, line: 145, baseType: !794, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1194, file: !797, line: 146, baseType: !794, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1194, file: !797, line: 147, baseType: !1200, size: 32, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1201, line: 31, baseType: !600)
!1201 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1194, file: !797, line: 148, baseType: !7, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1194, file: !797, line: 149, baseType: !599, size: 8, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !815, file: !797, line: 180, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !797, line: 162, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !797, line: 159, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1207, file: !797, line: 160, baseType: !619, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1207, file: !797, line: 161, baseType: !675, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !815, file: !797, line: 181, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !797, line: 181, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !810, file: !797, line: 317, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 64, elements: !718)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !810, file: !797, line: 318, baseType: !1217, size: 320)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !797, line: 188, size: 320, elements: !1218)
!1218 = !{!1219, !1221, !1244}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1217, file: !797, line: 190, baseType: !1220, size: 192)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 192, elements: !693)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1217, file: !797, line: 193, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !797, line: 206, size: 320, elements: !1224)
!1224 = !{!1225, !1229, !1230, !1231, !1243}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1223, file: !797, line: 208, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !620, line: 62, baseType: !1228)
!1228 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !620, line: 61, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1223, file: !797, line: 211, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1223, file: !797, line: 214, baseType: !675, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1223, file: !797, line: 224, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !797, line: 202, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !797, line: 202, size: 128, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1234, file: !797, line: 202, baseType: !1237, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !797, line: 200, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !797, line: 200, size: 128, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1238, file: !797, line: 200, baseType: !7, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1238, file: !797, line: 200, baseType: !7, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1238, file: !797, line: 200, baseType: !828, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1223, file: !797, line: 234, baseType: !1232, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1217, file: !797, line: 197, baseType: !675, size: 64, offset: 256)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !810, file: !797, line: 319, baseType: !682, size: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !810, file: !797, line: 320, baseType: !701, size: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !622, file: !135, line: 3384, baseType: !1248, size: 1472)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1249)
!1249 = !{!1250, !1271, !1272, !1273, !1274}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1248, file: !135, line: 3115, baseType: !1251, size: 1216)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1251, file: !135, line: 2985, baseType: !790, size: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1251, file: !135, line: 2986, baseType: !619, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1251, file: !135, line: 2987, baseType: !619, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1251, file: !135, line: 2988, baseType: !619, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1251, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1251, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1251, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1251, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1251, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1251, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1251, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1251, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1251, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1251, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1251, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1251, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1251, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1251, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1248, file: !135, line: 3117, baseType: !619, size: 64, offset: 1216)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1248, file: !135, line: 3119, baseType: !619, size: 64, offset: 1280)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1248, file: !135, line: 3121, baseType: !619, size: 64, offset: 1344)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1248, file: !135, line: 3123, baseType: !619, size: 64, offset: 1408)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !622, file: !135, line: 3385, baseType: !1276, size: 1088)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1276, file: !135, line: 2875, baseType: !790, size: 960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1276, file: !135, line: 2876, baseType: !794, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1276, file: !135, line: 2877, baseType: !1281, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1283, line: 172, size: 128, elements: !1284)
!1283 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1282, file: !1283, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1282, file: !1283, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1282, file: !1283, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1282, file: !1283, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1282, file: !1283, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1282, file: !1283, line: 195, baseType: !7, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1282, file: !1283, line: 199, baseType: !619, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !622, file: !135, line: 3386, baseType: !1251, size: 1216)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !622, file: !135, line: 3387, baseType: !1294, size: 1280)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1294, file: !135, line: 3094, baseType: !1251, size: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1294, file: !135, line: 3095, baseType: !1281, size: 64, offset: 1216)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !622, file: !135, line: 3388, baseType: !1299, size: 1216)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1299, file: !135, line: 2825, baseType: !752, size: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1299, file: !135, line: 2827, baseType: !619, size: 64, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1299, file: !135, line: 2828, baseType: !619, size: 64, offset: 960)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1299, file: !135, line: 2829, baseType: !619, size: 64, offset: 1024)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1299, file: !135, line: 2830, baseType: !619, size: 64, offset: 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1299, file: !135, line: 2831, baseType: !619, size: 64, offset: 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !622, file: !135, line: 3389, baseType: !1308, size: 1024)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1308, file: !135, line: 2851, baseType: !790, size: 960)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1308, file: !135, line: 2852, baseType: !600, size: 32, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1308, file: !135, line: 2853, baseType: !600, size: 32, offset: 992)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !622, file: !135, line: 3390, baseType: !1314, size: 1024)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1314, file: !135, line: 2858, baseType: !790, size: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1314, file: !135, line: 2859, baseType: !1281, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !622, file: !135, line: 3391, baseType: !1319, size: 960)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !135, line: 2863, baseType: !790, size: 960)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !622, file: !135, line: 3392, baseType: !1323, size: 1472)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1323, file: !135, line: 3305, baseType: !1248, size: 1472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !622, file: !135, line: 3393, baseType: !1327, size: 1792)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1328)
!1328 = !{!1329, !1330, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !135, line: 3249, baseType: !1248, size: 1472)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1327, file: !135, line: 3251, baseType: !1331, size: 64, offset: 1472)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1333, line: 463, size: 1152, elements: !1334)
!1333 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1334 = !{!1335, !1338, !1369, !1370, !1479, !1482, !1483, !1484, !1485, !1486, !1487, !1511, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1332, file: !1333, line: 464, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1333, line: 464, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1332, file: !1333, line: 467, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1341)
!1341 = !{!1342, !1344, !1345, !1358, !1359, !1360, !1361, !1362, !1363, !1365, !1367, !1368}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1340, file: !330, line: 377, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !620, line: 111, baseType: !907)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1340, file: !330, line: 378, baseType: !1343, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1340, file: !330, line: 381, baseType: !1346, size: 64, offset: 128)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1348, file: !330, line: 282, baseType: !1351, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1353)
!1353 = !{!1354, !1355, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1352, file: !330, line: 281, baseType: !7, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1352, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1352, file: !330, line: 281, baseType: !1357, size: 64, offset: 64)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 64, elements: !718)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1340, file: !330, line: 384, baseType: !600, size: 32, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1340, file: !330, line: 387, baseType: !600, size: 32, offset: 224)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1340, file: !330, line: 390, baseType: !600, size: 32, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1340, file: !330, line: 394, baseType: !1346, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1340, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1340, file: !330, line: 399, baseType: !1364, size: 64, offset: 416)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !862)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1340, file: !330, line: 402, baseType: !1366, size: 64, offset: 480)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !862)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1340, file: !330, line: 406, baseType: !600, size: 32, offset: 544)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1340, file: !330, line: 409, baseType: !600, size: 32, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1332, file: !1333, line: 470, baseType: !934, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1332, file: !1333, line: 473, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1283, line: 39, size: 1152, elements: !1373)
!1373 = !{!1374, !1424, !1437, !1443, !1444, !1456, !1457, !1461, !1462, !1463, !1464, !1465}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1372, file: !1283, line: 41, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1376, line: 144, baseType: !1377)
!1376 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1376, line: 100, size: 896, elements: !1379)
!1379 = !{!1380, !1388, !1393, !1398, !1400, !1401, !1402, !1403, !1404, !1405, !1410, !1412, !1413, !1418, !1423}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1378, file: !1376, line: 102, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1376, line: 52, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1376, line: 47, baseType: !7)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1378, file: !1376, line: 105, baseType: !1389, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1376, line: 59, baseType: !1390)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!600, !1386, !1386}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1378, file: !1376, line: 108, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1376, line: 63, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !604}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1378, file: !1376, line: 111, baseType: !1399, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1378, file: !1376, line: 114, baseType: !1089, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1378, file: !1376, line: 117, baseType: !1089, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1378, file: !1376, line: 120, baseType: !1089, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1378, file: !1376, line: 124, baseType: !7, size: 32, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1378, file: !1376, line: 128, baseType: !7, size: 32, offset: 480)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1378, file: !1376, line: 131, baseType: !1406, size: 64, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1376, line: 75, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!604, !1089, !1089}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1378, file: !1376, line: 132, baseType: !1411, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1376, line: 78, baseType: !1395)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1378, file: !1376, line: 135, baseType: !604, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1378, file: !1376, line: 136, baseType: !1414, size: 64, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1376, line: 82, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!604, !604, !1089, !1089}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1378, file: !1376, line: 137, baseType: !1419, size: 64, offset: 768)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1376, line: 83, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !604, !604}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1378, file: !1376, line: 141, baseType: !7, size: 32, offset: 832)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1372, file: !1283, line: 48, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !936, line: 35, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !936, line: 35, size: 128, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1427, file: !936, line: 35, baseType: !1430, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !936, line: 33, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !936, line: 33, size: 128, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1431, file: !936, line: 33, baseType: !7, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1431, file: !936, line: 33, baseType: !7, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1431, file: !936, line: 33, baseType: !1436, size: 64, offset: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 64, elements: !718)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1372, file: !1283, line: 51, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1441)
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1440, file: !135, line: 183, baseType: !612, size: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1372, file: !1283, line: 54, baseType: !619, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1372, file: !1283, line: 57, baseType: !1445, size: 128, offset: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1446, line: 31, size: 128, elements: !1447)
!1446 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1445, file: !1446, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1445, file: !1446, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1445, file: !1446, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1445, file: !1446, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1445, file: !1446, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1445, file: !1446, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1445, file: !1446, line: 56, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !620, line: 47, baseType: !846)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1372, file: !1283, line: 60, baseType: !1445, size: 128, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1372, file: !1283, line: 64, baseType: !1458, size: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1460, line: 33, flags: DIFlagFwdDecl)
!1460 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1372, file: !1283, line: 67, baseType: !619, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1372, file: !1283, line: 73, baseType: !1375, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1372, file: !1283, line: 77, baseType: !1455, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1372, file: !1283, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1372, file: !1283, line: 82, baseType: !1466, size: 320, offset: 832)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !975, line: 62, size: 320, elements: !1467)
!1467 = !{!1468, !1474, !1475, !1476, !1477, !1478}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1466, file: !975, line: 63, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !975, line: 56, size: 128, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1470, file: !975, line: 57, baseType: !1469, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1470, file: !975, line: 58, baseType: !717, size: 8, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1466, file: !975, line: 64, baseType: !7, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1466, file: !975, line: 66, baseType: !7, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1466, file: !975, line: 68, baseType: !599, size: 8, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1466, file: !975, line: 70, baseType: !973, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1466, file: !975, line: 71, baseType: !981, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1332, file: !1333, line: 476, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1333, line: 476, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1332, file: !1333, line: 479, baseType: !1375, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1332, file: !1333, line: 484, baseType: !619, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1332, file: !1333, line: 488, baseType: !619, size: 64, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1332, file: !1333, line: 493, baseType: !619, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1332, file: !1333, line: 496, baseType: !619, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1332, file: !1333, line: 501, baseType: !1488, size: 64, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1490)
!1490 = !{!1491, !1494, !1495, !1496, !1497, !1499, !1500, !1505, !1506, !1507, !1508, !1509, !1510}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1489, file: !341, line: 2356, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1489, file: !341, line: 2357, baseType: !605, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1489, file: !341, line: 2358, baseType: !600, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1489, file: !341, line: 2359, baseType: !600, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1489, file: !341, line: 2360, baseType: !1498, size: 128, offset: 192)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 128, elements: !886)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1489, file: !341, line: 2364, baseType: !600, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1489, file: !341, line: 2367, baseType: !1501, size: 128, offset: 384)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1501, file: !341, line: 2351, baseType: !794, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1501, file: !341, line: 2352, baseType: !675, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1489, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1489, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1489, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1489, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1489, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1489, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1332, file: !1333, line: 504, baseType: !1512, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1333, line: 504, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1332, file: !1333, line: 507, baseType: !1375, size: 64, offset: 768)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1332, file: !1333, line: 510, baseType: !600, size: 32, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1332, file: !1333, line: 513, baseType: !600, size: 32, offset: 864)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1332, file: !1333, line: 516, baseType: !744, size: 32, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1332, file: !1333, line: 519, baseType: !744, size: 32, offset: 928)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1332, file: !1333, line: 522, baseType: !7, size: 32, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1332, file: !1333, line: 523, baseType: !7, size: 32, offset: 992)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1332, file: !1333, line: 528, baseType: !605, size: 64, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1332, file: !1333, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1332, file: !1333, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1332, file: !1333, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1332, file: !1333, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1332, file: !1333, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1332, file: !1333, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1332, file: !1333, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1332, file: !1333, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1332, file: !1333, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1332, file: !1333, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1332, file: !1333, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1332, file: !1333, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1332, file: !1333, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1332, file: !1333, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1332, file: !1333, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1332, file: !1333, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1327, file: !135, line: 3254, baseType: !619, size: 64, offset: 1536)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1327, file: !135, line: 3257, baseType: !619, size: 64, offset: 1600)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1327, file: !135, line: 3258, baseType: !619, size: 64, offset: 1664)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1327, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1327, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1327, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1327, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1327, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1327, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1327, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1327, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1327, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1327, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1327, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1327, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1327, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1327, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1327, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1327, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1327, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1327, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !135, line: 3394, baseType: !1560, size: 1344)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1560, file: !135, line: 2280, baseType: !658, size: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1560, file: !135, line: 2281, baseType: !619, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1560, file: !135, line: 2282, baseType: !619, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1560, file: !135, line: 2283, baseType: !619, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1560, file: !135, line: 2284, baseType: !619, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1560, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1560, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1560, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1560, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1560, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1560, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1560, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1560, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1560, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1560, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1560, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1560, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1560, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1560, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1560, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1560, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1560, file: !135, line: 2306, baseType: !1200, size: 32, offset: 544)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1560, file: !135, line: 2307, baseType: !619, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1560, file: !135, line: 2308, baseType: !619, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1560, file: !135, line: 2314, baseType: !1588, size: 64, offset: 704)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1588, file: !135, line: 2310, baseType: !600, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1588, file: !135, line: 2311, baseType: !605, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1588, file: !135, line: 2312, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1560, file: !135, line: 2315, baseType: !619, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1560, file: !135, line: 2316, baseType: !619, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1560, file: !135, line: 2317, baseType: !619, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1560, file: !135, line: 2318, baseType: !619, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1560, file: !135, line: 2319, baseType: !619, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1560, file: !135, line: 2320, baseType: !619, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1560, file: !135, line: 2321, baseType: !619, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1560, file: !135, line: 2322, baseType: !619, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1560, file: !135, line: 2324, baseType: !1604, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !622, file: !135, line: 3395, baseType: !1607, size: 320)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1608)
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1607, file: !135, line: 1470, baseType: !658, size: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1607, file: !135, line: 1471, baseType: !619, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1607, file: !135, line: 1472, baseType: !619, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !622, file: !135, line: 3396, baseType: !1613, size: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1614)
!1614 = !{!1615, !1616, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1613, file: !135, line: 1483, baseType: !658, size: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1613, file: !135, line: 1484, baseType: !600, size: 32, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1613, file: !135, line: 1485, baseType: !618, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !622, file: !135, line: 3397, baseType: !1619, size: 384)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1619, file: !135, line: 1830, baseType: !658, size: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1619, file: !135, line: 1831, baseType: !744, size: 32, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1619, file: !135, line: 1832, baseType: !619, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1619, file: !135, line: 1835, baseType: !618, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !622, file: !135, line: 3398, baseType: !1626, size: 704)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1637}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1626, file: !135, line: 1899, baseType: !658, size: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1626, file: !135, line: 1902, baseType: !619, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1626, file: !135, line: 1905, baseType: !944, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1626, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1626, file: !135, line: 1911, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1283, line: 117, size: 128, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1634, file: !1283, line: 120, baseType: !1445, size: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1626, file: !135, line: 1914, baseType: !986, size: 256, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !622, file: !135, line: 3399, baseType: !1639, size: 704)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1639, file: !135, line: 2009, baseType: !658, size: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1639, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1639, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1639, file: !135, line: 2014, baseType: !744, size: 32, offset: 224)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1639, file: !135, line: 2016, baseType: !619, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1639, file: !135, line: 2017, baseType: !1438, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1639, file: !135, line: 2019, baseType: !619, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1639, file: !135, line: 2020, baseType: !619, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1639, file: !135, line: 2021, baseType: !619, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1639, file: !135, line: 2022, baseType: !619, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1639, file: !135, line: 2023, baseType: !619, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !622, file: !135, line: 3400, baseType: !1653, size: 832)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1653, file: !135, line: 2431, baseType: !658, size: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1653, file: !135, line: 2433, baseType: !619, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1653, file: !135, line: 2434, baseType: !619, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1653, file: !135, line: 2435, baseType: !619, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1653, file: !135, line: 2436, baseType: !619, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1653, file: !135, line: 2437, baseType: !1438, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1653, file: !135, line: 2438, baseType: !619, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1653, file: !135, line: 2440, baseType: !619, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1653, file: !135, line: 2441, baseType: !619, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1653, file: !135, line: 2443, baseType: !1665, size: 128, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1666, file: !135, line: 182, baseType: !612, size: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !622, file: !135, line: 3401, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1671)
!1671 = !{!1672, !1673, !1680}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1670, file: !135, line: 3329, baseType: !658, size: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1670, file: !135, line: 3330, baseType: !1674, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1675, file: !135, line: 3322, baseType: !1674, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1675, file: !135, line: 3323, baseType: !1674, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1675, file: !135, line: 3324, baseType: !619, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1670, file: !135, line: 3331, baseType: !1674, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !622, file: !135, line: 3402, baseType: !1682, size: 256)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1682, file: !135, line: 1541, baseType: !658, size: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1682, file: !135, line: 1542, baseType: !1686, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1688, file: !135, line: 1538, baseType: !1691, size: 192)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1692)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1693)
!1693 = !{!1694, !1695, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1692, file: !135, line: 1537, baseType: !7, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1692, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1692, file: !135, line: 1537, baseType: !1697, size: 128, offset: 64)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1698, size: 128, elements: !718)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1699, file: !135, line: 1533, baseType: !619, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1699, file: !135, line: 1534, baseType: !619, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !622, file: !135, line: 3403, baseType: !1704, size: 512)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1715, !1716, !1717}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1704, file: !135, line: 1939, baseType: !658, size: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1704, file: !135, line: 1940, baseType: !744, size: 32, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1704, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1704, file: !135, line: 1946, baseType: !1710, size: 32, offset: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1711)
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1710, file: !135, line: 1943, baseType: !363, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1710, file: !135, line: 1944, baseType: !370, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1710, file: !135, line: 1945, baseType: !134, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1704, file: !135, line: 1950, baseType: !933, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1704, file: !135, line: 1951, baseType: !933, size: 64, offset: 384)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1704, file: !135, line: 1953, baseType: !618, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !622, file: !135, line: 3404, baseType: !1719, size: 1664)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1719, file: !135, line: 3338, baseType: !658, size: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1719, file: !135, line: 3341, baseType: !1723, size: 1472, offset: 192)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1724, line: 410, size: 1472, elements: !1725)
!1724 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1723, file: !1724, line: 412, baseType: !600, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1723, file: !1724, line: 413, baseType: !600, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1723, file: !1724, line: 414, baseType: !600, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1723, file: !1724, line: 415, baseType: !600, size: 32, offset: 96)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1723, file: !1724, line: 416, baseType: !600, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1723, file: !1724, line: 417, baseType: !600, size: 32, offset: 160)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1723, file: !1724, line: 418, baseType: !599, size: 8, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1723, file: !1724, line: 419, baseType: !599, size: 8, offset: 200)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1723, file: !1724, line: 420, baseType: !1735, size: 8, offset: 208)
!1735 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1723, file: !1724, line: 421, baseType: !1735, size: 8, offset: 216)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1723, file: !1724, line: 422, baseType: !1735, size: 8, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1723, file: !1724, line: 423, baseType: !1735, size: 8, offset: 232)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1723, file: !1724, line: 424, baseType: !1735, size: 8, offset: 240)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1723, file: !1724, line: 425, baseType: !1735, size: 8, offset: 248)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1723, file: !1724, line: 426, baseType: !1735, size: 8, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1723, file: !1724, line: 427, baseType: !1735, size: 8, offset: 264)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1723, file: !1724, line: 428, baseType: !1735, size: 8, offset: 272)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1723, file: !1724, line: 429, baseType: !1735, size: 8, offset: 280)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1723, file: !1724, line: 430, baseType: !1735, size: 8, offset: 288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1723, file: !1724, line: 431, baseType: !1735, size: 8, offset: 296)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1723, file: !1724, line: 432, baseType: !1735, size: 8, offset: 304)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1723, file: !1724, line: 433, baseType: !1735, size: 8, offset: 312)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1723, file: !1724, line: 434, baseType: !1735, size: 8, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1723, file: !1724, line: 435, baseType: !1735, size: 8, offset: 328)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1723, file: !1724, line: 436, baseType: !1735, size: 8, offset: 336)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1723, file: !1724, line: 437, baseType: !1735, size: 8, offset: 344)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1723, file: !1724, line: 438, baseType: !1735, size: 8, offset: 352)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1723, file: !1724, line: 439, baseType: !1735, size: 8, offset: 360)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1723, file: !1724, line: 440, baseType: !1735, size: 8, offset: 368)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1723, file: !1724, line: 441, baseType: !1735, size: 8, offset: 376)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1723, file: !1724, line: 442, baseType: !1735, size: 8, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1723, file: !1724, line: 443, baseType: !1735, size: 8, offset: 392)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1723, file: !1724, line: 444, baseType: !1735, size: 8, offset: 400)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1723, file: !1724, line: 445, baseType: !1735, size: 8, offset: 408)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1723, file: !1724, line: 446, baseType: !1735, size: 8, offset: 416)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1723, file: !1724, line: 447, baseType: !1735, size: 8, offset: 424)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1723, file: !1724, line: 448, baseType: !1735, size: 8, offset: 432)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1723, file: !1724, line: 449, baseType: !1735, size: 8, offset: 440)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1723, file: !1724, line: 450, baseType: !1735, size: 8, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1723, file: !1724, line: 451, baseType: !1735, size: 8, offset: 456)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1723, file: !1724, line: 452, baseType: !1735, size: 8, offset: 464)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1723, file: !1724, line: 453, baseType: !1735, size: 8, offset: 472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1723, file: !1724, line: 454, baseType: !1735, size: 8, offset: 480)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1723, file: !1724, line: 455, baseType: !1735, size: 8, offset: 488)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1723, file: !1724, line: 456, baseType: !1735, size: 8, offset: 496)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1723, file: !1724, line: 457, baseType: !1735, size: 8, offset: 504)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1723, file: !1724, line: 458, baseType: !1735, size: 8, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1723, file: !1724, line: 459, baseType: !1735, size: 8, offset: 520)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1723, file: !1724, line: 460, baseType: !1735, size: 8, offset: 528)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1723, file: !1724, line: 461, baseType: !1735, size: 8, offset: 536)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1723, file: !1724, line: 462, baseType: !1735, size: 8, offset: 544)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1723, file: !1724, line: 463, baseType: !1735, size: 8, offset: 552)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1723, file: !1724, line: 464, baseType: !1735, size: 8, offset: 560)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1723, file: !1724, line: 465, baseType: !1735, size: 8, offset: 568)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1723, file: !1724, line: 466, baseType: !1735, size: 8, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1723, file: !1724, line: 467, baseType: !1735, size: 8, offset: 584)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1723, file: !1724, line: 468, baseType: !1735, size: 8, offset: 592)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1723, file: !1724, line: 469, baseType: !1735, size: 8, offset: 600)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1723, file: !1724, line: 470, baseType: !1735, size: 8, offset: 608)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1723, file: !1724, line: 471, baseType: !1735, size: 8, offset: 616)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1723, file: !1724, line: 472, baseType: !1735, size: 8, offset: 624)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1723, file: !1724, line: 473, baseType: !1735, size: 8, offset: 632)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1723, file: !1724, line: 474, baseType: !1735, size: 8, offset: 640)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1723, file: !1724, line: 475, baseType: !1735, size: 8, offset: 648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1723, file: !1724, line: 476, baseType: !1735, size: 8, offset: 656)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1723, file: !1724, line: 477, baseType: !1735, size: 8, offset: 664)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1723, file: !1724, line: 478, baseType: !1735, size: 8, offset: 672)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1723, file: !1724, line: 479, baseType: !1735, size: 8, offset: 680)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1723, file: !1724, line: 480, baseType: !1735, size: 8, offset: 688)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1723, file: !1724, line: 481, baseType: !1735, size: 8, offset: 696)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1723, file: !1724, line: 482, baseType: !1735, size: 8, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1723, file: !1724, line: 483, baseType: !1735, size: 8, offset: 712)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1723, file: !1724, line: 484, baseType: !1735, size: 8, offset: 720)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1723, file: !1724, line: 485, baseType: !1735, size: 8, offset: 728)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1723, file: !1724, line: 486, baseType: !1735, size: 8, offset: 736)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1723, file: !1724, line: 487, baseType: !1735, size: 8, offset: 744)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1723, file: !1724, line: 488, baseType: !1735, size: 8, offset: 752)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1723, file: !1724, line: 489, baseType: !1735, size: 8, offset: 760)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1723, file: !1724, line: 490, baseType: !1735, size: 8, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1723, file: !1724, line: 491, baseType: !1735, size: 8, offset: 776)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1723, file: !1724, line: 492, baseType: !1735, size: 8, offset: 784)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1723, file: !1724, line: 493, baseType: !1735, size: 8, offset: 792)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1723, file: !1724, line: 494, baseType: !1735, size: 8, offset: 800)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1723, file: !1724, line: 495, baseType: !1735, size: 8, offset: 808)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1723, file: !1724, line: 496, baseType: !1735, size: 8, offset: 816)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1723, file: !1724, line: 497, baseType: !1735, size: 8, offset: 824)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1723, file: !1724, line: 498, baseType: !1735, size: 8, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1723, file: !1724, line: 499, baseType: !1735, size: 8, offset: 840)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1723, file: !1724, line: 500, baseType: !1735, size: 8, offset: 848)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1723, file: !1724, line: 501, baseType: !1735, size: 8, offset: 856)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1723, file: !1724, line: 502, baseType: !1735, size: 8, offset: 864)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1723, file: !1724, line: 503, baseType: !1735, size: 8, offset: 872)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1723, file: !1724, line: 504, baseType: !1735, size: 8, offset: 880)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1723, file: !1724, line: 505, baseType: !1735, size: 8, offset: 888)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1723, file: !1724, line: 506, baseType: !1735, size: 8, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1723, file: !1724, line: 507, baseType: !1735, size: 8, offset: 904)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1723, file: !1724, line: 508, baseType: !1735, size: 8, offset: 912)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1723, file: !1724, line: 509, baseType: !1735, size: 8, offset: 920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1723, file: !1724, line: 510, baseType: !1735, size: 8, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1723, file: !1724, line: 511, baseType: !1735, size: 8, offset: 936)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1723, file: !1724, line: 512, baseType: !1735, size: 8, offset: 944)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1723, file: !1724, line: 513, baseType: !1735, size: 8, offset: 952)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1723, file: !1724, line: 514, baseType: !1735, size: 8, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1723, file: !1724, line: 515, baseType: !1735, size: 8, offset: 968)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1723, file: !1724, line: 516, baseType: !1735, size: 8, offset: 976)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1723, file: !1724, line: 517, baseType: !1735, size: 8, offset: 984)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1723, file: !1724, line: 518, baseType: !1735, size: 8, offset: 992)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1723, file: !1724, line: 519, baseType: !1735, size: 8, offset: 1000)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1723, file: !1724, line: 520, baseType: !1735, size: 8, offset: 1008)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1723, file: !1724, line: 521, baseType: !1735, size: 8, offset: 1016)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1723, file: !1724, line: 522, baseType: !1735, size: 8, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1723, file: !1724, line: 523, baseType: !1735, size: 8, offset: 1032)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1723, file: !1724, line: 524, baseType: !1735, size: 8, offset: 1040)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1723, file: !1724, line: 525, baseType: !1735, size: 8, offset: 1048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1723, file: !1724, line: 526, baseType: !1735, size: 8, offset: 1056)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1723, file: !1724, line: 527, baseType: !1735, size: 8, offset: 1064)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1723, file: !1724, line: 528, baseType: !1735, size: 8, offset: 1072)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1723, file: !1724, line: 529, baseType: !1735, size: 8, offset: 1080)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1723, file: !1724, line: 530, baseType: !1735, size: 8, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1723, file: !1724, line: 531, baseType: !1735, size: 8, offset: 1096)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1723, file: !1724, line: 532, baseType: !1735, size: 8, offset: 1104)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1723, file: !1724, line: 533, baseType: !1735, size: 8, offset: 1112)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1723, file: !1724, line: 534, baseType: !1735, size: 8, offset: 1120)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1723, file: !1724, line: 535, baseType: !1735, size: 8, offset: 1128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1723, file: !1724, line: 536, baseType: !1735, size: 8, offset: 1136)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1723, file: !1724, line: 537, baseType: !1735, size: 8, offset: 1144)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1723, file: !1724, line: 538, baseType: !1735, size: 8, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1723, file: !1724, line: 539, baseType: !1735, size: 8, offset: 1160)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1723, file: !1724, line: 540, baseType: !1735, size: 8, offset: 1168)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1723, file: !1724, line: 541, baseType: !1735, size: 8, offset: 1176)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1723, file: !1724, line: 542, baseType: !1735, size: 8, offset: 1184)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1723, file: !1724, line: 543, baseType: !1735, size: 8, offset: 1192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1723, file: !1724, line: 544, baseType: !1735, size: 8, offset: 1200)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1723, file: !1724, line: 545, baseType: !1735, size: 8, offset: 1208)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1723, file: !1724, line: 546, baseType: !1735, size: 8, offset: 1216)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1723, file: !1724, line: 547, baseType: !1735, size: 8, offset: 1224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1723, file: !1724, line: 548, baseType: !1735, size: 8, offset: 1232)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1723, file: !1724, line: 549, baseType: !1735, size: 8, offset: 1240)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1723, file: !1724, line: 550, baseType: !1735, size: 8, offset: 1248)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1723, file: !1724, line: 551, baseType: !1735, size: 8, offset: 1256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1723, file: !1724, line: 552, baseType: !1735, size: 8, offset: 1264)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1723, file: !1724, line: 553, baseType: !1735, size: 8, offset: 1272)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1723, file: !1724, line: 554, baseType: !1735, size: 8, offset: 1280)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1723, file: !1724, line: 555, baseType: !1735, size: 8, offset: 1288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1723, file: !1724, line: 556, baseType: !1735, size: 8, offset: 1296)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1723, file: !1724, line: 557, baseType: !1735, size: 8, offset: 1304)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1723, file: !1724, line: 558, baseType: !1735, size: 8, offset: 1312)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1723, file: !1724, line: 559, baseType: !1735, size: 8, offset: 1320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1723, file: !1724, line: 560, baseType: !1735, size: 8, offset: 1328)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1723, file: !1724, line: 561, baseType: !1735, size: 8, offset: 1336)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1723, file: !1724, line: 562, baseType: !1735, size: 8, offset: 1344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1723, file: !1724, line: 563, baseType: !1735, size: 8, offset: 1352)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1723, file: !1724, line: 564, baseType: !1735, size: 8, offset: 1360)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1723, file: !1724, line: 565, baseType: !1735, size: 8, offset: 1368)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1723, file: !1724, line: 566, baseType: !1735, size: 8, offset: 1376)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1723, file: !1724, line: 567, baseType: !1735, size: 8, offset: 1384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1723, file: !1724, line: 568, baseType: !1735, size: 8, offset: 1392)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1723, file: !1724, line: 569, baseType: !1735, size: 8, offset: 1400)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1723, file: !1724, line: 570, baseType: !1735, size: 8, offset: 1408)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1723, file: !1724, line: 571, baseType: !1735, size: 8, offset: 1416)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1723, file: !1724, line: 572, baseType: !1735, size: 8, offset: 1424)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1723, file: !1724, line: 573, baseType: !1735, size: 8, offset: 1432)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1723, file: !1724, line: 574, baseType: !1735, size: 8, offset: 1440)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !622, file: !135, line: 3405, baseType: !1891, size: 384)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1891, file: !135, line: 3353, baseType: !658, size: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1891, file: !135, line: 3356, baseType: !1895, size: 192, offset: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1724, line: 578, size: 192, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1895, file: !1724, line: 580, baseType: !600, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1895, file: !1724, line: 581, baseType: !600, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1895, file: !1724, line: 582, baseType: !600, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1895, file: !1724, line: 583, baseType: !600, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1895, file: !1724, line: 584, baseType: !599, size: 8, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1895, file: !1724, line: 585, baseType: !599, size: 8, offset: 136)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1895, file: !1724, line: 586, baseType: !599, size: 8, offset: 144)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1895, file: !1724, line: 587, baseType: !599, size: 8, offset: 152)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1895, file: !1724, line: 588, baseType: !599, size: 8, offset: 160)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1895, file: !1724, line: 589, baseType: !599, size: 8, offset: 168)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1895, file: !1724, line: 590, baseType: !599, size: 8, offset: 176)
!1908 = !{!1909, !0}
!1909 = !DIGlobalVariableExpression(var: !1910, expr: !DIExpression())
!1910 = distinct !DIGlobalVariable(name: "pass_ipa_lto_wpa_fixup", scope: !2, file: !3, line: 256, type: !1911, isLocal: false, isDefinition: true)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !401, line: 173, size: 1152, elements: !1912)
!1912 = !{!1913, !1937, !1941, !2138, !2139, !2143, !2148, !2149, !2153}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1911, file: !401, line: 175, baseType: !1914, size: 640)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !401, line: 114, size: 640, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1922, !1926, !1928, !1929, !1930, !1932, !1933, !1934, !1935, !1936}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1914, file: !401, line: 117, baseType: !400, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1914, file: !401, line: 121, baseType: !605, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1914, file: !401, line: 125, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!599}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1914, file: !401, line: 130, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!7}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1914, file: !401, line: 133, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1914, file: !401, line: 136, baseType: !1927, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1914, file: !401, line: 139, baseType: !600, size: 32, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1914, file: !401, line: 143, baseType: !1931, size: 32, offset: 416)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !408, line: 80, baseType: !407)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1914, file: !401, line: 146, baseType: !7, size: 32, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1914, file: !401, line: 147, baseType: !7, size: 32, offset: 480)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1914, file: !401, line: 148, baseType: !7, size: 32, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1914, file: !401, line: 151, baseType: !7, size: 32, offset: 544)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1914, file: !401, line: 152, baseType: !7, size: 32, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !1911, file: !401, line: 179, baseType: !1938, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !1911, file: !401, line: 182, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !378, line: 276, size: 192, elements: !1947)
!1947 = !{!1948, !1949, !2137}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !1946, file: !378, line: 278, baseType: !1375, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1946, file: !378, line: 279, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !378, line: 272, baseType: !1952)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !378, line: 272, size: 128, elements: !1953)
!1953 = !{!1954}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1952, file: !378, line: 272, baseType: !1955, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !378, line: 270, baseType: !1956)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !378, line: 270, size: 128, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1956, file: !378, line: 270, baseType: !7, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1956, file: !378, line: 270, baseType: !7, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1956, file: !378, line: 270, baseType: !1961, size: 64, offset: 64)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1962, size: 64, elements: !718)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !378, line: 268, baseType: !1963)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !378, line: 181, size: 2496, elements: !1965)
!1965 = !{!1966, !1967, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2020, !2074, !2084, !2088, !2114, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1964, file: !378, line: 182, baseType: !619, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !1964, file: !378, line: 183, baseType: !1968, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !378, line: 314, size: 768, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1982, !1983, !1984, !1985, !1987, !1988, !1989}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1969, file: !378, line: 316, baseType: !1155, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1969, file: !378, line: 317, baseType: !1963, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !1969, file: !378, line: 318, baseType: !1963, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !1969, file: !378, line: 319, baseType: !1968, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !1969, file: !378, line: 320, baseType: !1968, size: 64, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !1969, file: !378, line: 321, baseType: !1968, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !1969, file: !378, line: 322, baseType: !1968, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !1969, file: !378, line: 323, baseType: !944, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1969, file: !378, line: 324, baseType: !604, size: 64, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !1969, file: !378, line: 327, baseType: !1981, size: 32, offset: 576)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !378, line: 312, baseType: !377)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !1969, file: !378, line: 330, baseType: !7, size: 32, offset: 608)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1969, file: !378, line: 334, baseType: !600, size: 32, offset: 640)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1969, file: !378, line: 336, baseType: !600, size: 32, offset: 672)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1969, file: !378, line: 338, baseType: !1986, size: 16, offset: 704)
!1986 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !1969, file: !378, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !1969, file: !378, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !1969, file: !378, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !1964, file: !378, line: 184, baseType: !1968, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1964, file: !378, line: 185, baseType: !1963, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1964, file: !378, line: 186, baseType: !1963, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1964, file: !378, line: 188, baseType: !1963, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1964, file: !378, line: 190, baseType: !1963, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !1964, file: !378, line: 192, baseType: !1963, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !1964, file: !378, line: 194, baseType: !1963, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !1964, file: !378, line: 196, baseType: !1963, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !1964, file: !378, line: 197, baseType: !1963, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !1964, file: !378, line: 198, baseType: !1963, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !1964, file: !378, line: 199, baseType: !1963, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !1964, file: !378, line: 202, baseType: !1963, size: 64, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !1964, file: !378, line: 204, baseType: !1963, size: 64, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !1964, file: !378, line: 207, baseType: !1375, size: 64, offset: 960)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1964, file: !378, line: 209, baseType: !604, size: 64, offset: 1024)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !1964, file: !378, line: 214, baseType: !2006, size: 64, offset: 1088)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1333, line: 177, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1333, line: 177, size: 128, elements: !2009)
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2008, file: !1333, line: 177, baseType: !2011, size: 128)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1333, line: 176, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1333, line: 176, size: 128, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2012, file: !1333, line: 176, baseType: !7, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2012, file: !1333, line: 176, baseType: !7, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2012, file: !1333, line: 176, baseType: !2017, size: 64, offset: 64)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2018, size: 64, elements: !718)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1333, line: 174, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1964, file: !378, line: 216, baseType: !2021, size: 320, offset: 1152)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !378, line: 88, size: 320, elements: !2022)
!2022 = !{!2023, !2058, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2021, file: !378, line: 90, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !584, line: 540, size: 512, elements: !2026)
!2026 = !{!2027, !2040, !2041, !2053, !2054, !2055, !2056, !2057}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "current_decl_state", scope: !2025, file: !584, line: 543, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_in_decl_state", file: !584, line: 502, size: 960, elements: !2030)
!2030 = !{!2031, !2039}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2029, file: !584, line: 505, baseType: !2032, size: 896)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 896, elements: !2037)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_table", file: !584, line: 473, size: 128, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2033, file: !584, line: 476, baseType: !979, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2033, file: !584, line: 479, baseType: !7, size: 32, offset: 64)
!2037 = !{!2038}
!2038 = !DISubrange(count: 7)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2029, file: !584, line: 509, baseType: !619, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl_state", scope: !2025, file: !584, line: 547, baseType: !2028, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2025, file: !584, line: 550, baseType: !2042, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "lto_cgraph_encoder_t", file: !584, line: 470, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_cgraph_encoder_d", file: !584, line: 461, size: 128, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2044, file: !584, line: 464, baseType: !1458, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2044, file: !584, line: 467, baseType: !2048, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_heap", file: !378, line: 271, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_heap", file: !378, line: 271, size: 128, elements: !2051)
!2051 = !{!2052}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2050, file: !378, line: 271, baseType: !1955, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl_states", scope: !2025, file: !584, line: 553, baseType: !1375, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !2025, file: !584, line: 556, baseType: !605, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "needs_ltrans_p", scope: !2025, file: !584, line: 559, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "section_hash_table", scope: !2025, file: !584, line: 562, baseType: !1375, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "renaming_hash_table", scope: !2025, file: !584, line: 565, baseType: !1375, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2021, file: !378, line: 92, baseType: !2059, size: 192, offset: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !378, line: 57, size: 192, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2059, file: !378, line: 60, baseType: !675, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2059, file: !378, line: 63, baseType: !600, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2059, file: !378, line: 65, baseType: !600, size: 32, offset: 96)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2059, file: !378, line: 67, baseType: !600, size: 32, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2059, file: !378, line: 69, baseType: !600, size: 32, offset: 160)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2021, file: !378, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2021, file: !378, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2021, file: !378, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2021, file: !378, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2021, file: !378, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2021, file: !378, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2021, file: !378, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2021, file: !378, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1964, file: !378, line: 217, baseType: !2075, size: 320, offset: 1472)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !378, line: 126, size: 320, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2075, file: !378, line: 128, baseType: !675, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2075, file: !378, line: 130, baseType: !675, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2075, file: !378, line: 134, baseType: !1963, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2075, file: !378, line: 137, baseType: !600, size: 32, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2075, file: !378, line: 138, baseType: !600, size: 32, offset: 224)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2075, file: !378, line: 141, baseType: !600, size: 32, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2075, file: !378, line: 144, baseType: !599, size: 8, offset: 288)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1964, file: !378, line: 218, baseType: !2085, size: 32, offset: 1792)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !378, line: 150, size: 32, elements: !2086)
!2086 = !{!2087}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2085, file: !378, line: 151, baseType: !7, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !1964, file: !378, line: 219, baseType: !2089, size: 192, offset: 1856)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !378, line: 171, size: 192, elements: !2090)
!2090 = !{!2091, !2112, !2113}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2089, file: !378, line: 173, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !378, line: 169, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !378, line: 169, size: 128, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2094, file: !378, line: 169, baseType: !2097, size: 128)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !378, line: 168, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !378, line: 168, size: 128, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2098, file: !378, line: 168, baseType: !7, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2098, file: !378, line: 168, baseType: !7, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2098, file: !378, line: 168, baseType: !2103, size: 64, offset: 64)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2104, size: 64, elements: !718)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !378, line: 167, baseType: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !378, line: 156, size: 192, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2106, file: !378, line: 159, baseType: !619, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2106, file: !378, line: 161, baseType: !619, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2106, file: !378, line: 163, baseType: !599, size: 8, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2106, file: !378, line: 165, baseType: !599, size: 8, offset: 136)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2089, file: !378, line: 174, baseType: !1455, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2089, file: !378, line: 175, baseType: !1455, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !1964, file: !378, line: 220, baseType: !2115, size: 256, offset: 2048)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !378, line: 74, size: 256, elements: !2116)
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2115, file: !378, line: 76, baseType: !675, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2115, file: !378, line: 77, baseType: !675, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2115, file: !378, line: 78, baseType: !619, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2115, file: !378, line: 79, baseType: !599, size: 8, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2115, file: !378, line: 80, baseType: !599, size: 8, offset: 200)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2115, file: !378, line: 82, baseType: !599, size: 8, offset: 208)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1964, file: !378, line: 223, baseType: !1155, size: 64, offset: 2304)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1964, file: !378, line: 225, baseType: !600, size: 32, offset: 2368)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !1964, file: !378, line: 227, baseType: !600, size: 32, offset: 2400)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1964, file: !378, line: 231, baseType: !600, size: 32, offset: 2432)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !1964, file: !378, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !1964, file: !378, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !1964, file: !378, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !1964, file: !378, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !1964, file: !378, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !1964, file: !378, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !1964, file: !378, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1964, file: !378, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !1964, file: !378, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !1964, file: !378, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1946, file: !378, line: 280, baseType: !604, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !1911, file: !401, line: 187, baseType: !1938, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !1911, file: !401, line: 188, baseType: !2140, size: 64, offset: 832)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !1963}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !1911, file: !401, line: 191, baseType: !2144, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{null, !1963, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !1911, file: !401, line: 195, baseType: !7, size: 32, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !1911, file: !401, line: 196, baseType: !2150, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!7, !1963}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !1911, file: !401, line: 197, baseType: !2154, size: 64, offset: 1088)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{null, !2157}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !378, line: 358, size: 320, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2158, file: !378, line: 359, baseType: !619, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2158, file: !378, line: 361, baseType: !2157, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2158, file: !378, line: 363, baseType: !2157, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2158, file: !378, line: 366, baseType: !2157, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2158, file: !378, line: 368, baseType: !600, size: 32, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2158, file: !378, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2158, file: !378, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2158, file: !378, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2158, file: !378, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2158, file: !378, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2158, file: !378, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2158, file: !378, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2172 = !{i32 2, !"Dwarf Version", i32 4}
!2173 = !{i32 2, !"Debug Info Version", i32 3}
!2174 = !{i32 1, !"wchar_size", i32 4}
!2175 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2176 = distinct !DISubprogram(name: "vprintf", scope: !2177, file: !2177, line: 39, type: !2178, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!600, !2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !605)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2182, file: !3, baseType: !7, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2182, file: !3, baseType: !7, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2182, file: !3, baseType: !604, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2182, file: !3, baseType: !604, size: 64, offset: 128)
!2188 = !{!2189, !2190}
!2189 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2176, file: !2177, line: 39, type: !2180)
!2190 = !DILocalVariable(name: "__arg", arg: 2, scope: !2176, file: !2177, line: 39, type: !2181)
!2191 = !DILocation(line: 0, scope: !2176)
!2192 = !DILocation(line: 41, column: 20, scope: !2176)
!2193 = !DILocation(line: 41, column: 10, scope: !2176)
!2194 = !DILocation(line: 41, column: 3, scope: !2176)
!2195 = distinct !DISubprogram(name: "getchar", scope: !2177, file: !2177, line: 47, type: !2196, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!600}
!2198 = !{}
!2199 = !DILocation(line: 49, column: 16, scope: !2195)
!2200 = !DILocation(line: 49, column: 10, scope: !2195)
!2201 = !DILocation(line: 49, column: 3, scope: !2195)
!2202 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2177, file: !2177, line: 56, type: !2203, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!600, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2207, line: 7, baseType: !2208)
!2207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2209, line: 49, size: 1728, elements: !2210)
!2209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2226, !2228, !2229, !2230, !2233, !2234, !2235, !2236, !2239, !2241, !2244, !2247, !2248, !2249, !2250, !2251}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2208, file: !2209, line: 51, baseType: !600, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2208, file: !2209, line: 54, baseType: !602, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2208, file: !2209, line: 55, baseType: !602, size: 64, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2208, file: !2209, line: 56, baseType: !602, size: 64, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2208, file: !2209, line: 57, baseType: !602, size: 64, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2208, file: !2209, line: 58, baseType: !602, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2208, file: !2209, line: 59, baseType: !602, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2208, file: !2209, line: 60, baseType: !602, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2208, file: !2209, line: 61, baseType: !602, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2208, file: !2209, line: 64, baseType: !602, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2208, file: !2209, line: 65, baseType: !602, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2208, file: !2209, line: 66, baseType: !602, size: 64, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2208, file: !2209, line: 68, baseType: !2224, size: 64, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2209, line: 36, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2208, file: !2209, line: 70, baseType: !2227, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2208, file: !2209, line: 72, baseType: !600, size: 32, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2208, file: !2209, line: 73, baseType: !600, size: 32, offset: 928)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2208, file: !2209, line: 74, baseType: !2231, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2232, line: 152, baseType: !675)
!2232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2208, file: !2209, line: 77, baseType: !1986, size: 16, offset: 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2208, file: !2209, line: 78, baseType: !1735, size: 8, offset: 1040)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2208, file: !2209, line: 79, baseType: !717, size: 8, offset: 1048)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2208, file: !2209, line: 81, baseType: !2237, size: 64, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2209, line: 43, baseType: null)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2208, file: !2209, line: 89, baseType: !2240, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2232, line: 153, baseType: !675)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2208, file: !2209, line: 91, baseType: !2242, size: 64, offset: 1216)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2209, line: 37, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2208, file: !2209, line: 92, baseType: !2245, size: 64, offset: 1280)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2209, line: 38, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2208, file: !2209, line: 93, baseType: !2227, size: 64, offset: 1344)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2208, file: !2209, line: 94, baseType: !604, size: 64, offset: 1408)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2208, file: !2209, line: 95, baseType: !1089, size: 64, offset: 1472)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2208, file: !2209, line: 96, baseType: !600, size: 32, offset: 1536)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2208, file: !2209, line: 98, baseType: !2252, size: 160, offset: 1568)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 160, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 20)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "__fp", arg: 1, scope: !2202, file: !2177, line: 56, type: !2205)
!2257 = !DILocation(line: 0, scope: !2202)
!2258 = !DILocation(line: 58, column: 10, scope: !2202)
!2259 = !DILocation(line: 58, column: 3, scope: !2202)
!2260 = distinct !DISubprogram(name: "getc_unlocked", scope: !2177, file: !2177, line: 66, type: !2203, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2261 = !{!2262}
!2262 = !DILocalVariable(name: "__fp", arg: 1, scope: !2260, file: !2177, line: 66, type: !2205)
!2263 = !DILocation(line: 0, scope: !2260)
!2264 = !DILocation(line: 68, column: 10, scope: !2260)
!2265 = !DILocation(line: 68, column: 3, scope: !2260)
!2266 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2177, file: !2177, line: 73, type: !2196, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2267 = !DILocation(line: 75, column: 10, scope: !2266)
!2268 = !DILocation(line: 75, column: 3, scope: !2266)
!2269 = distinct !DISubprogram(name: "putchar", scope: !2177, file: !2177, line: 82, type: !2270, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!600, !600}
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "__c", arg: 1, scope: !2269, file: !2177, line: 82, type: !600)
!2274 = !DILocation(line: 0, scope: !2269)
!2275 = !DILocation(line: 84, column: 21, scope: !2269)
!2276 = !DILocation(line: 84, column: 10, scope: !2269)
!2277 = !DILocation(line: 84, column: 3, scope: !2269)
!2278 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2177, file: !2177, line: 91, type: !2279, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!600, !600, !2205}
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "__c", arg: 1, scope: !2278, file: !2177, line: 91, type: !600)
!2283 = !DILocalVariable(name: "__stream", arg: 2, scope: !2278, file: !2177, line: 91, type: !2205)
!2284 = !DILocation(line: 0, scope: !2278)
!2285 = !DILocation(line: 93, column: 10, scope: !2278)
!2286 = !DILocation(line: 93, column: 3, scope: !2278)
!2287 = distinct !DISubprogram(name: "putc_unlocked", scope: !2177, file: !2177, line: 101, type: !2279, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "__c", arg: 1, scope: !2287, file: !2177, line: 101, type: !600)
!2290 = !DILocalVariable(name: "__stream", arg: 2, scope: !2287, file: !2177, line: 101, type: !2205)
!2291 = !DILocation(line: 0, scope: !2287)
!2292 = !DILocation(line: 103, column: 10, scope: !2287)
!2293 = !DILocation(line: 103, column: 3, scope: !2287)
!2294 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2177, file: !2177, line: 108, type: !2270, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "__c", arg: 1, scope: !2294, file: !2177, line: 108, type: !600)
!2297 = !DILocation(line: 0, scope: !2294)
!2298 = !DILocation(line: 110, column: 10, scope: !2294)
!2299 = !DILocation(line: 110, column: 3, scope: !2294)
!2300 = distinct !DISubprogram(name: "getline", scope: !2177, file: !2177, line: 118, type: !2301, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2303, !601, !2304, !2205}
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2232, line: 193, baseType: !675)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2300, file: !2177, line: 118, type: !601)
!2307 = !DILocalVariable(name: "__n", arg: 2, scope: !2300, file: !2177, line: 118, type: !2304)
!2308 = !DILocalVariable(name: "__stream", arg: 3, scope: !2300, file: !2177, line: 118, type: !2205)
!2309 = !DILocation(line: 0, scope: !2300)
!2310 = !DILocation(line: 120, column: 10, scope: !2300)
!2311 = !DILocation(line: 120, column: 3, scope: !2300)
!2312 = distinct !DISubprogram(name: "feof_unlocked", scope: !2177, file: !2177, line: 128, type: !2203, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "__stream", arg: 1, scope: !2312, file: !2177, line: 128, type: !2205)
!2315 = !DILocation(line: 0, scope: !2312)
!2316 = !DILocation(line: 130, column: 10, scope: !2312)
!2317 = !DILocation(line: 130, column: 3, scope: !2312)
!2318 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2177, file: !2177, line: 135, type: !2203, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "__stream", arg: 1, scope: !2318, file: !2177, line: 135, type: !2205)
!2321 = !DILocation(line: 0, scope: !2318)
!2322 = !DILocation(line: 137, column: 10, scope: !2318)
!2323 = !DILocation(line: 137, column: 3, scope: !2318)
!2324 = distinct !DISubprogram(name: "tolower", scope: !2325, file: !2325, line: 207, type: !2270, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2325 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2326 = !{!2327}
!2327 = !DILocalVariable(name: "__c", arg: 1, scope: !2324, file: !2325, line: 207, type: !600)
!2328 = !DILocation(line: 0, scope: !2324)
!2329 = !DILocation(line: 209, column: 22, scope: !2324)
!2330 = !DILocation(line: 209, column: 39, scope: !2324)
!2331 = !DILocation(line: 209, column: 38, scope: !2324)
!2332 = !DILocation(line: 209, column: 37, scope: !2324)
!2333 = !DILocation(line: 209, column: 10, scope: !2324)
!2334 = !DILocation(line: 209, column: 3, scope: !2324)
!2335 = distinct !DISubprogram(name: "toupper", scope: !2325, file: !2325, line: 213, type: !2270, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "__c", arg: 1, scope: !2335, file: !2325, line: 213, type: !600)
!2338 = !DILocation(line: 0, scope: !2335)
!2339 = !DILocation(line: 215, column: 22, scope: !2335)
!2340 = !DILocation(line: 215, column: 39, scope: !2335)
!2341 = !DILocation(line: 215, column: 38, scope: !2335)
!2342 = !DILocation(line: 215, column: 37, scope: !2335)
!2343 = !DILocation(line: 215, column: 10, scope: !2335)
!2344 = !DILocation(line: 215, column: 3, scope: !2335)
!2345 = distinct !DISubprogram(name: "atoi", scope: !2346, file: !2346, line: 361, type: !2347, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2349)
!2346 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!600, !605}
!2349 = !{!2350}
!2350 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2345, file: !2346, line: 361, type: !605)
!2351 = !DILocation(line: 0, scope: !2345)
!2352 = !DILocation(line: 363, column: 16, scope: !2345)
!2353 = !DILocation(line: 363, column: 10, scope: !2345)
!2354 = !DILocation(line: 363, column: 3, scope: !2345)
!2355 = distinct !DISubprogram(name: "atol", scope: !2346, file: !2346, line: 366, type: !2356, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!675, !605}
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2355, file: !2346, line: 366, type: !605)
!2360 = !DILocation(line: 0, scope: !2355)
!2361 = !DILocation(line: 368, column: 10, scope: !2355)
!2362 = !DILocation(line: 368, column: 3, scope: !2355)
!2363 = distinct !DISubprogram(name: "atoll", scope: !2346, file: !2346, line: 373, type: !2364, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2367)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!2366, !605}
!2366 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2367 = !{!2368}
!2368 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2363, file: !2346, line: 373, type: !605)
!2369 = !DILocation(line: 0, scope: !2363)
!2370 = !DILocation(line: 375, column: 10, scope: !2363)
!2371 = !DILocation(line: 375, column: 3, scope: !2363)
!2372 = distinct !DISubprogram(name: "bsearch", scope: !2373, file: !2373, line: 20, type: !2374, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!604, !1386, !1386, !1089, !1089, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2346, line: 808, baseType: !1390)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2378 = !DILocalVariable(name: "__key", arg: 1, scope: !2372, file: !2373, line: 20, type: !1386)
!2379 = !DILocalVariable(name: "__base", arg: 2, scope: !2372, file: !2373, line: 20, type: !1386)
!2380 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2372, file: !2373, line: 20, type: !1089)
!2381 = !DILocalVariable(name: "__size", arg: 4, scope: !2372, file: !2373, line: 20, type: !1089)
!2382 = !DILocalVariable(name: "__compar", arg: 5, scope: !2372, file: !2373, line: 21, type: !2376)
!2383 = !DILocalVariable(name: "__l", scope: !2372, file: !2373, line: 23, type: !1089)
!2384 = !DILocalVariable(name: "__u", scope: !2372, file: !2373, line: 23, type: !1089)
!2385 = !DILocalVariable(name: "__idx", scope: !2372, file: !2373, line: 23, type: !1089)
!2386 = !DILocalVariable(name: "__p", scope: !2372, file: !2373, line: 24, type: !1386)
!2387 = !DILocalVariable(name: "__comparison", scope: !2372, file: !2373, line: 25, type: !600)
!2388 = !DILocation(line: 0, scope: !2372)
!2389 = !DILocation(line: 29, column: 3, scope: !2372)
!2390 = !DILocation(line: 27, column: 7, scope: !2372)
!2391 = !DILocation(line: 29, column: 14, scope: !2372)
!2392 = !DILocation(line: 31, column: 20, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2372, file: !2373, line: 30, column: 5)
!2394 = !DILocation(line: 31, column: 27, scope: !2393)
!2395 = !DILocation(line: 32, column: 56, scope: !2393)
!2396 = !DILocation(line: 32, column: 47, scope: !2393)
!2397 = !DILocation(line: 33, column: 22, scope: !2393)
!2398 = !DILocation(line: 34, column: 24, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !2373, line: 34, column: 11)
!2400 = !DILocation(line: 34, column: 11, scope: !2393)
!2401 = !DILocation(line: 36, column: 29, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !2373, line: 36, column: 16)
!2403 = !DILocation(line: 36, column: 16, scope: !2399)
!2404 = !DILocation(line: 37, column: 14, scope: !2402)
!2405 = distinct !{!2405, !2389, !2406}
!2406 = !DILocation(line: 40, column: 5, scope: !2372)
!2407 = !DILocation(line: 43, column: 1, scope: !2372)
!2408 = distinct !DISubprogram(name: "atof", scope: !2409, file: !2409, line: 25, type: !2410, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2409 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!2412, !605}
!2412 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2408, file: !2409, line: 25, type: !605)
!2415 = !DILocation(line: 0, scope: !2408)
!2416 = !DILocation(line: 27, column: 10, scope: !2408)
!2417 = !DILocation(line: 27, column: 3, scope: !2408)
!2418 = distinct !DISubprogram(name: "strtoimax", scope: !2419, file: !2419, line: 324, type: !2420, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2419 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!2422, !2180, !2425, !600}
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2423, line: 101, baseType: !2424)
!2423 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2232, line: 72, baseType: !675)
!2425 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !601)
!2426 = !{!2427, !2428, !2429}
!2427 = !DILocalVariable(name: "nptr", arg: 1, scope: !2418, file: !2419, line: 324, type: !2180)
!2428 = !DILocalVariable(name: "endptr", arg: 2, scope: !2418, file: !2419, line: 324, type: !2425)
!2429 = !DILocalVariable(name: "base", arg: 3, scope: !2418, file: !2419, line: 324, type: !600)
!2430 = !DILocation(line: 0, scope: !2418)
!2431 = !DILocation(line: 327, column: 10, scope: !2418)
!2432 = !DILocation(line: 327, column: 3, scope: !2418)
!2433 = distinct !DISubprogram(name: "strtoumax", scope: !2419, file: !2419, line: 336, type: !2434, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2438)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!2436, !2180, !2425, !600}
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2423, line: 102, baseType: !2437)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2232, line: 73, baseType: !673)
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "nptr", arg: 1, scope: !2433, file: !2419, line: 336, type: !2180)
!2440 = !DILocalVariable(name: "endptr", arg: 2, scope: !2433, file: !2419, line: 336, type: !2425)
!2441 = !DILocalVariable(name: "base", arg: 3, scope: !2433, file: !2419, line: 336, type: !600)
!2442 = !DILocation(line: 0, scope: !2433)
!2443 = !DILocation(line: 339, column: 10, scope: !2433)
!2444 = !DILocation(line: 339, column: 3, scope: !2433)
!2445 = distinct !DISubprogram(name: "wcstoimax", scope: !2419, file: !2419, line: 348, type: !2446, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2422, !2448, !2452, !600}
!2448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2449)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2419, line: 34, baseType: !600)
!2452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "nptr", arg: 1, scope: !2445, file: !2419, line: 348, type: !2448)
!2457 = !DILocalVariable(name: "endptr", arg: 2, scope: !2445, file: !2419, line: 348, type: !2452)
!2458 = !DILocalVariable(name: "base", arg: 3, scope: !2445, file: !2419, line: 348, type: !600)
!2459 = !DILocation(line: 0, scope: !2445)
!2460 = !DILocation(line: 351, column: 10, scope: !2445)
!2461 = !DILocation(line: 351, column: 3, scope: !2445)
!2462 = distinct !DISubprogram(name: "wcstoumax", scope: !2419, file: !2419, line: 362, type: !2463, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2436, !2448, !2452, !600}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "nptr", arg: 1, scope: !2462, file: !2419, line: 362, type: !2448)
!2467 = !DILocalVariable(name: "endptr", arg: 2, scope: !2462, file: !2419, line: 362, type: !2452)
!2468 = !DILocalVariable(name: "base", arg: 3, scope: !2462, file: !2419, line: 362, type: !600)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 365, column: 10, scope: !2462)
!2471 = !DILocation(line: 365, column: 3, scope: !2462)
!2472 = distinct !DISubprogram(name: "stat", scope: !2473, file: !2473, line: 453, type: !2474, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2511)
!2473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!600, !605, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2478, line: 46, size: 1152, elements: !2479)
!2478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2479 = !{!2480, !2482, !2484, !2486, !2488, !2490, !2492, !2493, !2494, !2495, !2497, !2499, !2507, !2508, !2509}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2477, file: !2478, line: 48, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2232, line: 145, baseType: !673)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2477, file: !2478, line: 53, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2232, line: 148, baseType: !673)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2477, file: !2478, line: 61, baseType: !2485, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2232, line: 151, baseType: !673)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2477, file: !2478, line: 62, baseType: !2487, size: 32, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2232, line: 150, baseType: !7)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2477, file: !2478, line: 64, baseType: !2489, size: 32, offset: 224)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2232, line: 146, baseType: !7)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2477, file: !2478, line: 65, baseType: !2491, size: 32, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2232, line: 147, baseType: !7)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2477, file: !2478, line: 67, baseType: !600, size: 32, offset: 288)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2477, file: !2478, line: 69, baseType: !2481, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2477, file: !2478, line: 74, baseType: !2231, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2477, file: !2478, line: 78, baseType: !2496, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2232, line: 174, baseType: !675)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2477, file: !2478, line: 80, baseType: !2498, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2232, line: 179, baseType: !675)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2477, file: !2478, line: 91, baseType: !2500, size: 128, offset: 576)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2501, line: 10, size: 128, elements: !2502)
!2501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2502 = !{!2503, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2500, file: !2501, line: 12, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2232, line: 160, baseType: !675)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2500, file: !2501, line: 16, baseType: !2506, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2232, line: 196, baseType: !675)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2477, file: !2478, line: 92, baseType: !2500, size: 128, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2477, file: !2478, line: 93, baseType: !2500, size: 128, offset: 832)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2477, file: !2478, line: 106, baseType: !2510, size: 192, offset: 960)
!2510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2506, size: 192, elements: !693)
!2511 = !{!2512, !2513}
!2512 = !DILocalVariable(name: "__path", arg: 1, scope: !2472, file: !2473, line: 453, type: !605)
!2513 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2472, file: !2473, line: 453, type: !2476)
!2514 = !DILocation(line: 0, scope: !2472)
!2515 = !DILocation(line: 455, column: 10, scope: !2472)
!2516 = !DILocation(line: 455, column: 3, scope: !2472)
!2517 = distinct !DISubprogram(name: "lstat", scope: !2473, file: !2473, line: 460, type: !2474, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2518)
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "__path", arg: 1, scope: !2517, file: !2473, line: 460, type: !605)
!2520 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2517, file: !2473, line: 460, type: !2476)
!2521 = !DILocation(line: 0, scope: !2517)
!2522 = !DILocation(line: 462, column: 10, scope: !2517)
!2523 = !DILocation(line: 462, column: 3, scope: !2517)
!2524 = distinct !DISubprogram(name: "fstat", scope: !2473, file: !2473, line: 467, type: !2525, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!600, !600, !2476}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "__fd", arg: 1, scope: !2524, file: !2473, line: 467, type: !600)
!2529 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2524, file: !2473, line: 467, type: !2476)
!2530 = !DILocation(line: 0, scope: !2524)
!2531 = !DILocation(line: 469, column: 10, scope: !2524)
!2532 = !DILocation(line: 469, column: 3, scope: !2524)
!2533 = distinct !DISubprogram(name: "fstatat", scope: !2473, file: !2473, line: 474, type: !2534, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!600, !600, !605, !2476, !600}
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DILocalVariable(name: "__fd", arg: 1, scope: !2533, file: !2473, line: 474, type: !600)
!2538 = !DILocalVariable(name: "__filename", arg: 2, scope: !2533, file: !2473, line: 474, type: !605)
!2539 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2533, file: !2473, line: 474, type: !2476)
!2540 = !DILocalVariable(name: "__flag", arg: 4, scope: !2533, file: !2473, line: 474, type: !600)
!2541 = !DILocation(line: 0, scope: !2533)
!2542 = !DILocation(line: 477, column: 10, scope: !2533)
!2543 = !DILocation(line: 477, column: 3, scope: !2533)
!2544 = distinct !DISubprogram(name: "mknod", scope: !2473, file: !2473, line: 483, type: !2545, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!600, !605, !2487, !2481}
!2547 = !{!2548, !2549, !2550}
!2548 = !DILocalVariable(name: "__path", arg: 1, scope: !2544, file: !2473, line: 483, type: !605)
!2549 = !DILocalVariable(name: "__mode", arg: 2, scope: !2544, file: !2473, line: 483, type: !2487)
!2550 = !DILocalVariable(name: "__dev", arg: 3, scope: !2544, file: !2473, line: 483, type: !2481)
!2551 = !DILocation(line: 0, scope: !2544)
!2552 = !DILocation(line: 485, column: 10, scope: !2544)
!2553 = !DILocation(line: 485, column: 3, scope: !2544)
!2554 = distinct !DISubprogram(name: "mknodat", scope: !2473, file: !2473, line: 491, type: !2555, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!600, !600, !605, !2487, !2481}
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DILocalVariable(name: "__fd", arg: 1, scope: !2554, file: !2473, line: 491, type: !600)
!2559 = !DILocalVariable(name: "__path", arg: 2, scope: !2554, file: !2473, line: 491, type: !605)
!2560 = !DILocalVariable(name: "__mode", arg: 3, scope: !2554, file: !2473, line: 491, type: !2487)
!2561 = !DILocalVariable(name: "__dev", arg: 4, scope: !2554, file: !2473, line: 491, type: !2481)
!2562 = !DILocation(line: 0, scope: !2554)
!2563 = !DILocation(line: 494, column: 10, scope: !2554)
!2564 = !DILocation(line: 494, column: 3, scope: !2554)
!2565 = distinct !DISubprogram(name: "stat64", scope: !2473, file: !2473, line: 502, type: !2566, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2588)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!600, !605, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2478, line: 119, size: 1152, elements: !2570)
!2570 = !{!2571, !2572, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2584, !2585, !2586, !2587}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2569, file: !2478, line: 121, baseType: !2481, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2569, file: !2478, line: 123, baseType: !2573, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2232, line: 149, baseType: !673)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2569, file: !2478, line: 124, baseType: !2485, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2569, file: !2478, line: 125, baseType: !2487, size: 32, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2569, file: !2478, line: 132, baseType: !2489, size: 32, offset: 224)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2569, file: !2478, line: 133, baseType: !2491, size: 32, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2569, file: !2478, line: 135, baseType: !600, size: 32, offset: 288)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2569, file: !2478, line: 136, baseType: !2481, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2569, file: !2478, line: 137, baseType: !2231, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2569, file: !2478, line: 143, baseType: !2496, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2569, file: !2478, line: 144, baseType: !2583, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2232, line: 180, baseType: !675)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2569, file: !2478, line: 152, baseType: !2500, size: 128, offset: 576)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2569, file: !2478, line: 153, baseType: !2500, size: 128, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2569, file: !2478, line: 154, baseType: !2500, size: 128, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2569, file: !2478, line: 164, baseType: !2510, size: 192, offset: 960)
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "__path", arg: 1, scope: !2565, file: !2473, line: 502, type: !605)
!2590 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2565, file: !2473, line: 502, type: !2568)
!2591 = !DILocation(line: 0, scope: !2565)
!2592 = !DILocation(line: 504, column: 10, scope: !2565)
!2593 = !DILocation(line: 504, column: 3, scope: !2565)
!2594 = distinct !DISubprogram(name: "lstat64", scope: !2473, file: !2473, line: 509, type: !2566, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2595)
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "__path", arg: 1, scope: !2594, file: !2473, line: 509, type: !605)
!2597 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2594, file: !2473, line: 509, type: !2568)
!2598 = !DILocation(line: 0, scope: !2594)
!2599 = !DILocation(line: 511, column: 10, scope: !2594)
!2600 = !DILocation(line: 511, column: 3, scope: !2594)
!2601 = distinct !DISubprogram(name: "fstat64", scope: !2473, file: !2473, line: 516, type: !2602, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!600, !600, !2568}
!2604 = !{!2605, !2606}
!2605 = !DILocalVariable(name: "__fd", arg: 1, scope: !2601, file: !2473, line: 516, type: !600)
!2606 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2601, file: !2473, line: 516, type: !2568)
!2607 = !DILocation(line: 0, scope: !2601)
!2608 = !DILocation(line: 518, column: 10, scope: !2601)
!2609 = !DILocation(line: 518, column: 3, scope: !2601)
!2610 = distinct !DISubprogram(name: "fstatat64", scope: !2473, file: !2473, line: 523, type: !2611, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!600, !600, !605, !2568, !600}
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DILocalVariable(name: "__fd", arg: 1, scope: !2610, file: !2473, line: 523, type: !600)
!2615 = !DILocalVariable(name: "__filename", arg: 2, scope: !2610, file: !2473, line: 523, type: !605)
!2616 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2610, file: !2473, line: 523, type: !2568)
!2617 = !DILocalVariable(name: "__flag", arg: 4, scope: !2610, file: !2473, line: 523, type: !600)
!2618 = !DILocation(line: 0, scope: !2610)
!2619 = !DILocation(line: 526, column: 10, scope: !2610)
!2620 = !DILocation(line: 526, column: 3, scope: !2610)
!2621 = distinct !DISubprogram(name: "lto_fixup_nothrow_decls", scope: !3, file: !3, line: 91, type: !1939, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2622)
!2622 = !{!2623, !2624, !2625, !2626}
!2623 = !DILocalVariable(name: "node", scope: !2621, file: !3, line: 93, type: !1963)
!2624 = !DILocalVariable(name: "edge", scope: !2621, file: !3, line: 94, type: !1968)
!2625 = !DILocalVariable(name: "caller_function", scope: !2621, file: !3, line: 95, type: !1331)
!2626 = !DILocalVariable(name: "call_stmt", scope: !2621, file: !3, line: 96, type: !944)
!2627 = !DILocation(line: 99, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 99, column: 7)
!2629 = !DILocation(line: 99, column: 20, scope: !2628)
!2630 = !DILocation(line: 99, column: 16, scope: !2628)
!2631 = !DILocation(line: 103, column: 8, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 103, column: 3)
!2633 = !DILocation(line: 0, scope: !2632)
!2634 = !DILocation(line: 0, scope: !2621)
!2635 = !DILocation(line: 103, column: 3, scope: !2632)
!2636 = !DILocation(line: 104, column: 23, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 104, column: 9)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 103, column: 3)
!2639 = !DILocation(line: 104, column: 44, scope: !2637)
!2640 = !DILocation(line: 104, column: 9, scope: !2637)
!2641 = !DILocation(line: 104, column: 9, scope: !2638)
!2642 = !DILocation(line: 106, column: 2, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 105, column: 7)
!2644 = !DILocation(line: 107, column: 20, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 107, column: 2)
!2646 = !DILocation(line: 107, column: 7, scope: !2645)
!2647 = !DILocation(line: 0, scope: !2645)
!2648 = !DILocation(line: 107, column: 2, scope: !2645)
!2649 = !DILocation(line: 109, column: 24, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 108, column: 4)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 107, column: 2)
!2652 = !DILocation(line: 110, column: 24, scope: !2650)
!2653 = !DILocation(line: 111, column: 6, scope: !2650)
!2654 = !DILocation(line: 112, column: 10, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 112, column: 10)
!2656 = !DILocation(line: 112, column: 60, scope: !2655)
!2657 = !DILocation(line: 112, column: 10, scope: !2650)
!2658 = !DILocation(line: 113, column: 8, scope: !2655)
!2659 = !DILocation(line: 107, column: 48, scope: !2651)
!2660 = !DILocation(line: 107, column: 2, scope: !2651)
!2661 = distinct !{!2661, !2648, !2662}
!2662 = !DILocation(line: 114, column: 4, scope: !2645)
!2663 = !DILocation(line: 103, column: 48, scope: !2638)
!2664 = !DILocation(line: 103, column: 3, scope: !2638)
!2665 = distinct !{!2665, !2635, !2666}
!2666 = !DILocation(line: 115, column: 7, scope: !2632)
!2667 = !DILocation(line: 116, column: 1, scope: !2621)
!2668 = distinct !DISubprogram(name: "lto_mark_nothrow_fndecl", scope: !3, file: !3, line: 121, type: !2669, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !619}
!2671 = !{!2672}
!2672 = !DILocalVariable(name: "fndecl", arg: 1, scope: !2668, file: !3, line: 121, type: !619)
!2673 = !DILocation(line: 0, scope: !2668)
!2674 = !DILocation(line: 123, column: 3, scope: !2668)
!2675 = !DILocation(line: 124, column: 8, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 124, column: 7)
!2677 = !DILocation(line: 124, column: 7, scope: !2668)
!2678 = !DILocation(line: 125, column: 27, scope: !2676)
!2679 = !DILocation(line: 125, column: 25, scope: !2676)
!2680 = !DILocation(line: 125, column: 5, scope: !2676)
!2681 = !DILocation(line: 127, column: 19, scope: !2668)
!2682 = !DILocation(line: 127, column: 40, scope: !2668)
!2683 = !DILocation(line: 127, column: 3, scope: !2668)
!2684 = !DILocation(line: 128, column: 1, scope: !2668)
!2685 = distinct !DISubprogram(name: "gate_wpa_fixup", scope: !3, file: !3, line: 251, type: !1920, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2686 = !DILocation(line: 253, column: 11, scope: !2685)
!2687 = !DILocation(line: 253, column: 23, scope: !2685)
!2688 = !DILocation(line: 253, column: 20, scope: !2685)
!2689 = !DILocation(line: 253, column: 39, scope: !2685)
!2690 = !DILocation(line: 253, column: 36, scope: !2685)
!2691 = !DILocation(line: 253, column: 3, scope: !2685)
!2692 = distinct !DISubprogram(name: "lto_output_wpa_fixup", scope: !3, file: !3, line: 135, type: !2693, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2696)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set", file: !378, line: 283, baseType: !1945)
!2696 = !{!2697, !2698, !2730, !2736, !2737, !2738, !2739, !2740, !2741, !2746}
!2697 = !DILocalVariable(name: "set", arg: 1, scope: !2692, file: !3, line: 135, type: !2695)
!2698 = !DILocalVariable(name: "ob", scope: !2692, file: !3, line: 137, type: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_simple_output_block", file: !584, line: 614, size: 192, elements: !2701)
!2701 = !{!2702, !2703, !2716}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "section_type", scope: !2700, file: !584, line: 616, baseType: !583, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "decl_state", scope: !2700, file: !584, line: 617, baseType: !2704, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_out_decl_state", file: !584, line: 517, size: 1472, elements: !2706)
!2706 = !{!2707, !2714, !2715}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !2705, file: !584, line: 521, baseType: !2708, size: 1344)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 1344, elements: !2037)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_tree_ref_encoder", file: !584, line: 493, size: 192, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tree_hash_table", scope: !2709, file: !584, line: 495, baseType: !1375, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !2709, file: !584, line: 496, baseType: !7, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "trees", scope: !2709, file: !584, line: 497, baseType: !607, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "cgraph_node_encoder", scope: !2705, file: !584, line: 524, baseType: !2042, size: 64, offset: 1344)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fn_decl", scope: !2705, file: !584, line: 528, baseType: !619, size: 64, offset: 1408)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "main_stream", scope: !2700, file: !584, line: 620, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_output_stream", file: !584, line: 577, size: 320, elements: !2719)
!2719 = !{!2720, !2725, !2726, !2727, !2728, !2729}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "first_block", scope: !2718, file: !584, line: 580, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_char_ptr_base", file: !584, line: 568, size: 64, elements: !2723)
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2722, file: !584, line: 570, baseType: !602, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "current_block", scope: !2718, file: !584, line: 583, baseType: !2721, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "current_pointer", scope: !2718, file: !584, line: 586, baseType: !602, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "left_in_block", scope: !2718, file: !584, line: 589, baseType: !7, size: 32, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2718, file: !584, line: 592, baseType: !7, size: 32, offset: 224)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !2718, file: !584, line: 595, baseType: !7, size: 32, offset: 256)
!2730 = !DILocalVariable(name: "csi", scope: !2692, file: !3, line: 138, type: !2731)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_set_iterator", file: !378, line: 305, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 301, size: 128, elements: !2733)
!2733 = !{!2734, !2735}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2732, file: !378, line: 303, baseType: !2695, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2732, file: !378, line: 304, baseType: !7, size: 32, offset: 64)
!2736 = !DILocalVariable(name: "fndecl", scope: !2692, file: !3, line: 139, type: !619)
!2737 = !DILocalVariable(name: "seen_decls", scope: !2692, file: !3, line: 140, type: !1455)
!2738 = !DILocalVariable(name: "decls", scope: !2692, file: !3, line: 141, type: !607)
!2739 = !DILocalVariable(name: "i", scope: !2692, file: !3, line: 142, type: !673)
!2740 = !DILocalVariable(name: "count", scope: !2692, file: !3, line: 142, type: !673)
!2741 = !DILocalVariable(name: "e", scope: !2742, file: !3, line: 154, type: !1968)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 153, column: 7)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 152, column: 5)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 152, column: 5)
!2745 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 151, column: 7)
!2746 = !DILocalVariable(name: "n", scope: !2742, file: !3, line: 155, type: !1963)
!2747 = !DILocation(line: 0, scope: !2692)
!2748 = !DILocation(line: 138, column: 3, scope: !2692)
!2749 = !DILocation(line: 141, column: 3, scope: !2692)
!2750 = !DILocation(line: 141, column: 20, scope: !2692)
!2751 = !DILocation(line: 144, column: 8, scope: !2692)
!2752 = !DILocation(line: 150, column: 16, scope: !2692)
!2753 = !DILocation(line: 151, column: 7, scope: !2745)
!2754 = !DILocation(line: 151, column: 7, scope: !2692)
!2755 = !DILocation(line: 152, column: 16, scope: !2744)
!2756 = !DILocation(line: 0, scope: !2743)
!2757 = !DILocation(line: 152, column: 10, scope: !2744)
!2758 = !DILocation(line: 152, column: 34, scope: !2743)
!2759 = !DILocation(line: 152, column: 33, scope: !2743)
!2760 = !DILocation(line: 152, column: 5, scope: !2744)
!2761 = !DILocation(line: 157, column: 6, scope: !2742)
!2762 = !DILocation(line: 0, scope: !2742)
!2763 = !DILocation(line: 158, column: 14, scope: !2742)
!2764 = !DILocation(line: 161, column: 33, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 161, column: 6)
!2766 = !DILocation(line: 161, column: 7, scope: !2765)
!2767 = !DILocation(line: 161, column: 6, scope: !2742)
!2768 = !DILocation(line: 163, column: 35, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 162, column: 4)
!2770 = !DILocation(line: 163, column: 6, scope: !2769)
!2771 = !DILocation(line: 164, column: 24, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 164, column: 10)
!2773 = !DILocation(line: 164, column: 45, scope: !2772)
!2774 = !DILocation(line: 164, column: 10, scope: !2772)
!2775 = !DILocation(line: 164, column: 10, scope: !2769)
!2776 = !DILocation(line: 165, column: 8, scope: !2772)
!2777 = !DILocation(line: 173, column: 14, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 173, column: 2)
!2779 = !DILocation(line: 173, column: 7, scope: !2778)
!2780 = !DILocation(line: 0, scope: !2778)
!2781 = !DILocation(line: 173, column: 2, scope: !2778)
!2782 = !DILocation(line: 175, column: 18, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 174, column: 4)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 173, column: 2)
!2785 = !DILocation(line: 175, column: 26, scope: !2783)
!2786 = !DILocation(line: 176, column: 37, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 176, column: 10)
!2788 = !DILocation(line: 176, column: 11, scope: !2787)
!2789 = !DILocation(line: 176, column: 10, scope: !2783)
!2790 = !DILocation(line: 178, column: 32, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 177, column: 8)
!2792 = !DILocation(line: 178, column: 3, scope: !2791)
!2793 = !DILocation(line: 179, column: 21, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 179, column: 7)
!2795 = !DILocation(line: 179, column: 42, scope: !2794)
!2796 = !DILocation(line: 179, column: 7, scope: !2794)
!2797 = !DILocation(line: 179, column: 7, scope: !2791)
!2798 = !DILocation(line: 180, column: 5, scope: !2794)
!2799 = !DILocation(line: 173, column: 33, scope: !2784)
!2800 = !DILocation(line: 173, column: 2, scope: !2784)
!2801 = distinct !{!2801, !2781, !2802}
!2802 = !DILocation(line: 182, column: 4, scope: !2778)
!2803 = !DILocation(line: 152, column: 51, scope: !2743)
!2804 = !DILocation(line: 152, column: 5, scope: !2743)
!2805 = distinct !{!2805, !2760, !2806}
!2806 = !DILocation(line: 183, column: 7, scope: !2744)
!2807 = !DILocation(line: 186, column: 11, scope: !2692)
!2808 = !DILocation(line: 187, column: 34, scope: !2692)
!2809 = !DILocation(line: 187, column: 3, scope: !2692)
!2810 = !DILocation(line: 0, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 189, column: 5)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 188, column: 3)
!2813 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 188, column: 3)
!2814 = !DILocation(line: 188, column: 8, scope: !2813)
!2815 = !DILocation(line: 0, scope: !2813)
!2816 = !DILocation(line: 188, column: 17, scope: !2812)
!2817 = !DILocation(line: 188, column: 3, scope: !2813)
!2818 = !DILocation(line: 190, column: 16, scope: !2811)
!2819 = !DILocation(line: 191, column: 37, scope: !2811)
!2820 = !DILocation(line: 191, column: 53, scope: !2811)
!2821 = !DILocation(line: 191, column: 7, scope: !2811)
!2822 = !DILocation(line: 188, column: 27, scope: !2812)
!2823 = !DILocation(line: 188, column: 3, scope: !2812)
!2824 = distinct !{!2824, !2817, !2825}
!2825 = !DILocation(line: 192, column: 5, scope: !2813)
!2826 = !DILocation(line: 195, column: 3, scope: !2692)
!2827 = !DILocation(line: 196, column: 3, scope: !2692)
!2828 = !DILocation(line: 197, column: 3, scope: !2692)
!2829 = !DILocation(line: 198, column: 1, scope: !2692)
!2830 = distinct !DISubprogram(name: "lto_input_wpa_fixup", scope: !3, file: !3, line: 223, type: !1939, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2831 = !{!2832, !2834, !2835, !2836, !2838, !2839}
!2832 = !DILocalVariable(name: "file_data_vec", scope: !2830, file: !3, line: 225, type: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2834 = !DILocalVariable(name: "file_data", scope: !2830, file: !3, line: 227, type: !2024)
!2835 = !DILocalVariable(name: "i", scope: !2830, file: !3, line: 228, type: !600)
!2836 = !DILocalVariable(name: "data", scope: !2837, file: !3, line: 236, type: !605)
!2837 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 235, column: 5)
!2838 = !DILocalVariable(name: "len", scope: !2837, file: !3, line: 237, type: !1089)
!2839 = !DILocalVariable(name: "ib", scope: !2837, file: !3, line: 238, type: !2840)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lto_input_block", file: !584, line: 363, size: 128, elements: !2842)
!2842 = !{!2843, !2844, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2841, file: !584, line: 365, baseType: !605, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2841, file: !584, line: 366, baseType: !7, size: 32, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2841, file: !584, line: 367, baseType: !7, size: 32, offset: 96)
!2846 = !DILocation(line: 226, column: 7, scope: !2830)
!2847 = !DILocation(line: 0, scope: !2830)
!2848 = !DILocation(line: 231, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 231, column: 7)
!2850 = !DILocation(line: 231, column: 7, scope: !2830)
!2851 = !DILocation(line: 0, scope: !2837)
!2852 = !DILocation(line: 234, column: 3, scope: !2830)
!2853 = !DILocation(line: 234, column: 23, scope: !2830)
!2854 = !DILocation(line: 234, column: 38, scope: !2830)
!2855 = !DILocation(line: 236, column: 7, scope: !2837)
!2856 = !DILocation(line: 237, column: 7, scope: !2837)
!2857 = !DILocation(line: 239, column: 4, scope: !2837)
!2858 = !DILocation(line: 242, column: 7, scope: !2837)
!2859 = !DILocation(line: 244, column: 11, scope: !2837)
!2860 = !DILocation(line: 244, column: 17, scope: !2837)
!2861 = !DILocation(line: 243, column: 7, scope: !2837)
!2862 = !DILocation(line: 245, column: 5, scope: !2830)
!2863 = distinct !{!2863, !2852, !2862}
!2864 = !DILocation(line: 246, column: 1, scope: !2830)
!2865 = distinct !DISubprogram(name: "csi_start", scope: !378, file: !378, line: 668, type: !2866, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!2731, !2695}
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "set", arg: 1, scope: !2865, file: !378, line: 668, type: !2695)
!2870 = !DILocalVariable(name: "csi", scope: !2865, file: !378, line: 670, type: !2731)
!2871 = !DILocation(line: 0, scope: !2865)
!2872 = !DILocation(line: 672, column: 7, scope: !2865)
!2873 = !DILocation(line: 672, column: 11, scope: !2865)
!2874 = !DILocation(line: 673, column: 7, scope: !2865)
!2875 = !DILocation(line: 673, column: 13, scope: !2865)
!2876 = !DILocation(line: 674, column: 3, scope: !2865)
!2877 = distinct !DISubprogram(name: "csi_end_p", scope: !378, file: !378, line: 647, type: !2878, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!599, !2731}
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "csi", arg: 1, scope: !2877, file: !378, line: 647, type: !2731)
!2882 = !DILocation(line: 649, column: 23, scope: !2877)
!2883 = !DILocation(line: 649, column: 20, scope: !2877)
!2884 = !DILocation(line: 649, column: 10, scope: !2877)
!2885 = !DILocation(line: 649, column: 3, scope: !2877)
!2886 = distinct !DISubprogram(name: "csi_node", scope: !378, file: !378, line: 661, type: !2887, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!1963, !2731}
!2889 = !{!2890}
!2890 = !DILocalVariable(name: "csi", arg: 1, scope: !2886, file: !378, line: 661, type: !2731)
!2891 = !DILocation(line: 663, column: 10, scope: !2886)
!2892 = !DILocation(line: 663, column: 3, scope: !2886)
!2893 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !135, file: !135, line: 184, type: !2894, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2897)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!979, !2896, !619}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "vec_", arg: 1, scope: !2893, file: !135, line: 184, type: !2896)
!2899 = !DILocalVariable(name: "obj_", arg: 2, scope: !2893, file: !135, line: 184, type: !619)
!2900 = !DILocation(line: 0, scope: !2893)
!2901 = !DILocation(line: 184, column: 1, scope: !2893)
!2902 = distinct !DISubprogram(name: "csi_next", scope: !378, file: !378, line: 654, type: !2903, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "csi", arg: 1, scope: !2902, file: !378, line: 654, type: !2905)
!2908 = !DILocation(line: 0, scope: !2902)
!2909 = !DILocation(line: 656, column: 8, scope: !2902)
!2910 = !DILocation(line: 656, column: 13, scope: !2902)
!2911 = !DILocation(line: 657, column: 1, scope: !2902)
!2912 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !2913, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!7, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!2917 = !{!2918}
!2918 = !DILocalVariable(name: "vec_", arg: 1, scope: !2912, file: !135, line: 182, type: !2915)
!2919 = !DILocation(line: 0, scope: !2912)
!2920 = !DILocation(line: 182, column: 1, scope: !2912)
!2921 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !135, file: !135, line: 182, type: !2922, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!619, !2915, !7}
!2924 = !{!2925, !2926}
!2925 = !DILocalVariable(name: "vec_", arg: 1, scope: !2921, file: !135, line: 182, type: !2915)
!2926 = !DILocalVariable(name: "ix_", arg: 2, scope: !2921, file: !135, line: 182, type: !7)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 182, column: 1, scope: !2921)
!2929 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !2930, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2896}
!2932 = !{!2933}
!2933 = !DILocalVariable(name: "vec_", arg: 1, scope: !2929, file: !135, line: 184, type: !2896)
!2934 = !DILocation(line: 0, scope: !2929)
!2935 = !DILocation(line: 184, column: 1, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2929, file: !135, line: 184, column: 1)
!2937 = !DILocation(line: 184, column: 1, scope: !2929)
!2938 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_length", scope: !378, file: !378, line: 270, type: !2939, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2943)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!7, !2941}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "vec_", arg: 1, scope: !2938, file: !378, line: 270, type: !2941)
!2945 = !DILocation(line: 0, scope: !2938)
!2946 = !DILocation(line: 270, column: 1, scope: !2938)
!2947 = distinct !DISubprogram(name: "VEC_cgraph_node_ptr_base_index", scope: !378, file: !378, line: 270, type: !2948, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!1962, !2941, !7}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "vec_", arg: 1, scope: !2947, file: !378, line: 270, type: !2941)
!2952 = !DILocalVariable(name: "ix_", arg: 2, scope: !2947, file: !378, line: 270, type: !7)
!2953 = !DILocation(line: 0, scope: !2947)
!2954 = !DILocation(line: 270, column: 1, scope: !2947)
!2955 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !135, file: !135, line: 184, type: !2956, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!600, !2896, !600}
!2958 = !{!2959, !2960, !2961}
!2959 = !DILocalVariable(name: "vec_", arg: 1, scope: !2955, file: !135, line: 184, type: !2896)
!2960 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2955, file: !135, line: 184, type: !600)
!2961 = !DILocalVariable(name: "extend", scope: !2955, file: !135, line: 184, type: !600)
!2962 = !DILocation(line: 0, scope: !2955)
!2963 = !DILocation(line: 184, column: 1, scope: !2955)
!2964 = !DILocation(line: 184, column: 1, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2955, file: !135, line: 184, column: 1)
!2966 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !135, file: !135, line: 182, type: !2967, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!979, !2969, !619}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!2970 = !{!2971, !2972, !2973}
!2971 = !DILocalVariable(name: "vec_", arg: 1, scope: !2966, file: !135, line: 182, type: !2969)
!2972 = !DILocalVariable(name: "obj_", arg: 2, scope: !2966, file: !135, line: 182, type: !619)
!2973 = !DILocalVariable(name: "slot_", scope: !2966, file: !135, line: 182, type: !979)
!2974 = !DILocation(line: 0, scope: !2966)
!2975 = !DILocation(line: 182, column: 1, scope: !2966)
!2976 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !2977, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!600, !2969, !600}
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "vec_", arg: 1, scope: !2976, file: !135, line: 182, type: !2969)
!2981 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2976, file: !135, line: 182, type: !600)
!2982 = !DILocation(line: 0, scope: !2976)
!2983 = !DILocation(line: 182, column: 1, scope: !2976)
!2984 = distinct !DISubprogram(name: "lto_input_wpa_fixup_1", scope: !3, file: !3, line: 205, type: !2985, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2024, !2840}
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993}
!2988 = !DILocalVariable(name: "file_data", arg: 1, scope: !2984, file: !3, line: 205, type: !2024)
!2989 = !DILocalVariable(name: "ib", arg: 2, scope: !2984, file: !3, line: 206, type: !2840)
!2990 = !DILocalVariable(name: "i", scope: !2984, file: !3, line: 208, type: !673)
!2991 = !DILocalVariable(name: "count", scope: !2984, file: !3, line: 208, type: !673)
!2992 = !DILocalVariable(name: "decl_index", scope: !2984, file: !3, line: 208, type: !673)
!2993 = !DILocalVariable(name: "fndecl", scope: !2984, file: !3, line: 209, type: !619)
!2994 = !DILocation(line: 0, scope: !2984)
!2995 = !DILocation(line: 211, column: 11, scope: !2984)
!2996 = !DILocation(line: 212, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 212, column: 3)
!2998 = !DILocation(line: 0, scope: !2997)
!2999 = !DILocation(line: 212, column: 17, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 212, column: 3)
!3001 = !DILocation(line: 212, column: 3, scope: !2997)
!3002 = !DILocation(line: 214, column: 20, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 213, column: 5)
!3004 = !DILocation(line: 215, column: 59, scope: !3003)
!3005 = !DILocation(line: 215, column: 16, scope: !3003)
!3006 = !DILocation(line: 216, column: 7, scope: !3003)
!3007 = !DILocation(line: 212, column: 27, scope: !3000)
!3008 = !DILocation(line: 212, column: 3, scope: !3000)
!3009 = distinct !{!3009, !3001, !3010}
!3010 = !DILocation(line: 217, column: 5, scope: !2997)
!3011 = !DILocation(line: 218, column: 1, scope: !2984)
!3012 = distinct !DISubprogram(name: "lto_file_decl_data_get_fn_decl", scope: !584, file: !584, line: 1043, type: !3013, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!619, !2024, !7}
!3015 = !{!3016, !3017, !3018}
!3016 = !DILocalVariable(name: "data", arg: 1, scope: !3012, file: !584, line: 1043, type: !2024)
!3017 = !DILocalVariable(name: "idx", arg: 2, scope: !3012, file: !584, line: 1043, type: !7)
!3018 = !DILocalVariable(name: "state", scope: !3012, file: !584, line: 1043, type: !2028)
!3019 = !DILocation(line: 0, scope: !3012)
!3020 = !DILocation(line: 1043, column: 1, scope: !3012)
